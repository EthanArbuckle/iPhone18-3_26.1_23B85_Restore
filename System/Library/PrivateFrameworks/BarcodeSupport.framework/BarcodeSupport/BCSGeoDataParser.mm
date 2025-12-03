@interface BCSGeoDataParser
+ (id)_validateLatitudeAndLongitudeInString:(id)string range:(_NSRange)range;
+ (id)parseString:(id)string;
@end

@implementation BCSGeoDataParser

+ (id)parseString:(id)string
{
  stringCopy = string;
  v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    [(BCSGeoDataParser *)v5 parseString:v6, v7, v8, v9, v10, v11, v12];
  }

  v13 = [stringCopy length];
  if (v13 > 3)
  {
    v23 = v13;
    v24 = [stringCopy substringToIndex:4];
    lowercaseString = [v24 lowercaseString];

    if ([lowercaseString isEqualToString:@"geo:"])
    {
      v26 = [self _validateLatitudeAndLongitudeInString:stringCopy range:{4, v23 - 4}];
      if ([v26 length])
      {
        v27 = MEMORY[0x277CBEBC0];
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"http://maps.apple.com/?q=%@", v26];
        v29 = [v27 URLWithString:v28];

        v30 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
        if (v30)
        {
          [(BCSGeoDataParser *)v30 parseString:v31, v32, v33, v34, v35, v36, v37];
        }

        v22 = [[BCSParsedURLData alloc] initWithURL:v29 type:6];
      }

      else
      {
        v22 = [[BCSInvalidParsedData alloc] initWithInvalidDataType:6 invalidContents:stringCopy];
      }
    }

    else
    {
      v38 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v38)
      {
        [(BCSGeoDataParser *)v38 parseString:v39, v40, v41, v42, v43, v44, v45];
      }

      v22 = 0;
    }
  }

  else
  {
    v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v14)
    {
      [(BCSGeoDataParser *)v14 parseString:v15, v16, v17, v18, v19, v20, v21];
    }

    v22 = 0;
  }

  return v22;
}

+ (id)_validateLatitudeAndLongitudeInString:(id)string range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  if (_validateLatitudeAndLongitudeInString_range__once != -1)
  {
    +[BCSGeoDataParser _validateLatitudeAndLongitudeInString:range:];
  }

  v7 = [_validateLatitudeAndLongitudeInString_range__geoLatLongPattern firstMatchInString:stringCopy options:0 range:{location, length}];
  v8 = v7;
  if (!v7)
  {
    v22 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v22)
    {
      [(BCSGeoDataParser *)v22 _validateLatitudeAndLongitudeInString:v23 range:v24, v25, v26, v27, v28, v29];
    }

    goto LABEL_12;
  }

  v9 = [v7 rangeAtIndex:1];
  v11 = [stringCopy substringWithRange:{v9, v10}];
  [v11 doubleValue];
  v13 = v12;

  if (fabs(v13) > 90.0)
  {
    v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v14)
    {
      [(BCSGeoDataParser *)v14 _validateLatitudeAndLongitudeInString:v15 range:v16, v17, v18, v19, v20, v21];
    }

LABEL_12:
    v43 = 0;
    goto LABEL_13;
  }

  v30 = [v8 rangeAtIndex:2];
  v32 = [stringCopy substringWithRange:{v30, v31}];
  [v32 doubleValue];
  v34 = v33;

  if (fabs(v34) > 180.0)
  {
    v35 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v35)
    {
      [(BCSGeoDataParser *)v35 _validateLatitudeAndLongitudeInString:v36 range:v37, v38, v39, v40, v41, v42];
    }

    goto LABEL_12;
  }

  range = [v8 range];
  v43 = [stringCopy substringWithRange:{range, v46}];
LABEL_13:

  return v43;
}

uint64_t __64__BCSGeoDataParser__validateLatitudeAndLongitudeInString_range___block_invoke()
{
  _validateLatitudeAndLongitudeInString_range__geoLatLongPattern = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"^(-?\\d{1 options:2}(?:\\.\\d+)?) error:{(-?\\d{1, 3}(?:\\.\\d+)?)", 0, 0}];

  return MEMORY[0x2821F96F8]();
}

@end