@interface BCSDocomoEmailParser
+ (id)parseString:(id)string;
@end

@implementation BCSDocomoEmailParser

+ (id)parseString:(id)string
{
  stringCopy = string;
  v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    [(BCSDocomoEmailParser *)v4 parseString:v5, v6, v7, v8, v9, v10, v11];
  }

  if ([stringCopy length] > 6)
  {
    v21 = [stringCopy substringToIndex:7];
    lowercaseString = [v21 lowercaseString];

    if (([lowercaseString isEqualToString:@"matmsg:"] & 1) == 0)
    {
      v40 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v40)
      {
        [(BCSDocomoEmailParser *)v40 parseString:v41, v42, v43, v44, v45, v46, v47];
      }

      v20 = 0;
      goto LABEL_36;
    }

    v23 = [[BCSKeyValueParser alloc] initWithString:stringCopy startIndex:7];
    keyValuePairs = [(BCSKeyValueParser *)v23 keyValuePairs];
    v25 = [keyValuePairs objectForKeyedSubscript:@"TO"];
    _bcs_trimmedString = [v25 _bcs_trimmedString];

    v27 = [keyValuePairs objectForKeyedSubscript:@"SUB"];
    v28 = [keyValuePairs objectForKeyedSubscript:@"BODY"];
    v29 = [v27 length];
    v30 = [v28 length];
    v31 = [MEMORY[0x277CCAB68] stringWithString:@"mailto:"];
    if ([_bcs_trimmedString length] && objc_msgSend(_bcs_trimmedString, "_bcs_looksLikeEmailAddress"))
    {
      [v31 appendString:_bcs_trimmedString];
      v32 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v32)
      {
        [(BCSDocomoEmailParser *)v32 parseString:v33, v34, v35, v36, v37, v38, v39];
      }
    }

    else if (!(v29 | v30))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        +[BCSDocomoEmailParser parseString:];
      }

      v20 = [[BCSInvalidParsedData alloc] initWithInvalidDataType:3 invalidContents:stringCopy];
      goto LABEL_35;
    }

    if (v29 | v30)
    {
      [v31 appendString:@"?"];
      if (v29)
      {
        _bcs_urlEncodedQueryValue = [v27 _bcs_urlEncodedQueryValue];
        [v31 appendFormat:@"subject=%@", _bcs_urlEncodedQueryValue];

        v49 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
        if (v49)
        {
          [(BCSDocomoEmailParser *)v49 parseString:v50, v51, v52, v53, v54, v55, v56];
          if (v30)
          {
            goto LABEL_20;
          }
        }

        else if (v30)
        {
LABEL_20:
          [v31 appendString:@"&"];
          goto LABEL_25;
        }
      }

      else if (v30)
      {
LABEL_25:
        _bcs_urlEncodedQueryValue2 = [v28 _bcs_urlEncodedQueryValue];
        [v31 appendFormat:@"body=%@", _bcs_urlEncodedQueryValue2];

        v58 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
        if (v58)
        {
          [(BCSDocomoEmailParser *)v58 parseString:v59, v60, v61, v62, v63, v64, v65];
        }
      }
    }

    v66 = [MEMORY[0x277CBEBC0] URLWithString:v31];
    if (v66)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSDocomoEmailParser: Successfully converted matmsg data to mailto link", buf, 2u);
      }

      v67 = [[BCSParsedURLData alloc] initWithURL:v66 type:3];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        +[BCSDocomoEmailParser parseString:];
      }

      v67 = [[BCSInvalidParsedData alloc] initWithInvalidDataType:3 invalidContents:stringCopy];
    }

    v20 = v67;

LABEL_35:
LABEL_36:

    goto LABEL_37;
  }

  v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    [(BCSDocomoEmailParser *)v12 parseString:v13, v14, v15, v16, v17, v18, v19];
  }

  v20 = 0;
LABEL_37:

  return v20;
}

@end