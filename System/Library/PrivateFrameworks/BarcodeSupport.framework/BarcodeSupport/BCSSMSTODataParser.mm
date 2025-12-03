@interface BCSSMSTODataParser
+ (id)parseString:(id)string;
@end

@implementation BCSSMSTODataParser

+ (id)parseString:(id)string
{
  stringCopy = string;
  v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    [(BCSSMSTODataParser *)v4 parseString:v5, v6, v7, v8, v9, v10, v11];
  }

  if ([stringCopy length] > 5)
  {
    v21 = [stringCopy substringToIndex:6];
    lowercaseString = [v21 lowercaseString];

    if ([lowercaseString isEqualToString:@"smsto:"])
    {
      v23 = [stringCopy substringFromIndex:6];
      v24 = [v23 rangeOfString:@":"];
      if (v24 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v25 = 0;
      }

      else
      {
        v34 = v24;
        v25 = [v23 substringFromIndex:v24 + 1];
        v35 = [v23 substringToIndex:v34];

        v23 = v35;
      }

      _bcs_trimmedString = [v23 _bcs_trimmedString];

      v37 = [v25 length];
      v38 = MEMORY[0x277CCACA8];
      if (v37)
      {
        _bcs_urlEncodedQueryValue = [v25 _bcs_urlEncodedQueryValue];
        v40 = [v38 stringWithFormat:@"sms:%@&body=%@", _bcs_trimmedString, _bcs_urlEncodedQueryValue];
      }

      else
      {
        v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"sms:%@", _bcs_trimmedString];
      }

      v41 = [BCSParsedURLData alloc];
      v42 = [MEMORY[0x277CBEBC0] URLWithString:v40];
      v20 = [(BCSParsedURLData *)v41 initWithURL:v42 type:5];
    }

    else
    {
      v26 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v26)
      {
        [(BCSSMSTODataParser *)v26 parseString:v27, v28, v29, v30, v31, v32, v33];
      }

      v20 = 0;
    }
  }

  else
  {
    v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v12)
    {
      [(BCSSMSTODataParser *)v12 parseString:v13, v14, v15, v16, v17, v18, v19];
    }

    v20 = 0;
  }

  return v20;
}

@end