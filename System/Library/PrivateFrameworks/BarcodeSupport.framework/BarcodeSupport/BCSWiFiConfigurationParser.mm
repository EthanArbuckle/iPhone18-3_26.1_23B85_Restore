@interface BCSWiFiConfigurationParser
+ (id)parseString:(id)string;
@end

@implementation BCSWiFiConfigurationParser

+ (id)parseString:(id)string
{
  stringCopy = string;
  v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    [(BCSWiFiConfigurationParser *)v4 parseString:v5, v6, v7, v8, v9, v10, v11];
  }

  if ([stringCopy length] <= 4)
  {
    v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v12)
    {
      [(BCSWiFiConfigurationParser *)v12 parseString:v13, v14, v15, v16, v17, v18, v19];
    }

LABEL_25:
    v31 = 0;
    goto LABEL_30;
  }

  if (([stringCopy hasPrefix:@"WIFI:"] & 1) == 0)
  {
    v36 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v36)
    {
      [(BCSWiFiConfigurationParser *)v36 parseString:v37, v38, v39, v40, v41, v42, v43];
    }

    goto LABEL_25;
  }

  v20 = [[BCSKeyValueParser alloc] initWithString:stringCopy startIndex:5];
  keyValuePairs = [(BCSKeyValueParser *)v20 keyValuePairs];
  v22 = [keyValuePairs objectForKeyedSubscript:@"S"];
  if (![v22 length])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[BCSWiFiConfigurationParser parseString:];
    }

    v31 = [[BCSInvalidParsedData alloc] initWithInvalidDataType:8 invalidContents:stringCopy];
    goto LABEL_29;
  }

  v23 = [keyValuePairs objectForKeyedSubscript:@"T"];
  v24 = [keyValuePairs objectForKeyedSubscript:@"P"];
  v25 = [keyValuePairs objectForKeyedSubscript:@"H"];
  bOOLValue = [v25 BOOLValue];

  if ([v23 isEqualToString:@"WEP"])
  {
    _bcs_stringWithEnclosingDoubleQuotesRemoved = [v24 _bcs_stringWithEnclosingDoubleQuotesRemoved];

    v24 = _bcs_stringWithEnclosingDoubleQuotesRemoved;
  }

  if (v23 && ![v23 isEqualToString:@"nopass"])
  {
    if ([v23 isEqualToString:@"WEP"])
    {
      v28 = 1;
    }

    else
    {
      if (([v23 isEqualToString:@"WPA"] & 1) == 0 && (objc_msgSend(v23, "isEqualToString:", @"WPA2") & 1) == 0 && (objc_msgSend(v23, "isEqualToString:", @"WPA/WPA2") & 1) == 0 && (objc_msgSend(v23, "isEqualToString:", @"SAE") & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          +[BCSWiFiConfigurationParser parseString:];
        }

        v31 = [[BCSInvalidParsedData alloc] initWithInvalidDataType:8 invalidContents:stringCopy];
        goto LABEL_22;
      }

      v28 = 0;
    }
  }

  else
  {

    v28 = 0;
    v24 = 0;
  }

  v45 = v23;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSWiFiConfigurationParser: Successfully parsed WiFi Network configuration", buf, 2u);
  }

  v29 = v20;
  v30 = v22;
  v31 = [[BCSWiFiConfigurationData alloc] initWithSSID:v22 isWEP:v28 password:v24 isHidden:bOOLValue];
  v32 = [keyValuePairs objectForKeyedSubscript:@"AAB"];
  v33 = [keyValuePairs objectForKeyedSubscript:@"AAP"];
  v34 = [keyValuePairs objectForKeyedSubscript:@"CPT"];
  if (v32 && v33)
  {
    [(BCSInvalidParsedData *)v31 setAirplayBrokerID:v32];
    [(BCSInvalidParsedData *)v31 setAirplayBrokerPin:v33];
  }

  airplayBrokerID = [(BCSInvalidParsedData *)v31 airplayBrokerID];

  if (airplayBrokerID && v34)
  {
    [(BCSInvalidParsedData *)v31 setCaptivePortalToken:v34];
  }

  v20 = v29;
  v22 = v30;
  v23 = v45;
LABEL_22:

LABEL_29:
LABEL_30:

  return v31;
}

@end