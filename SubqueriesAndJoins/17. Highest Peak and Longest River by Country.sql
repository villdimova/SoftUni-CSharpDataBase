
SELECT TOP(5)
		c.CountryName,
		MAX(p.Elevation) AS HighestPeakElevation,
		MAX(r.Length)  AS LongestRiverLength
FROM Countries c 
LEFT JOIN MountainsCountries mc ON c.CountryCode=mc.CountryCode
LEFT JOIN Mountains m ON m.Id=mc.MountainId
LEFT JOIN Peaks p ON p.MountainId=m.Id
LEFT JOIN CountriesRivers cr ON c.CountryCode=cr.CountryCode
LEFT JOIN Rivers r ON r.Id=cr.RiverId
GROUP BY(c.CountryName)  
ORDER BY HighestPeakElevation DESC,LongestRiverLength DESC, c.CountryName






