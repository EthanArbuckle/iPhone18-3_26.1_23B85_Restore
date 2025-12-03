@interface VCAggregatorUtils
+ (CGSize)sizeForVideoResolution:(int)resolution;
+ (id)safeRoundOffNumber:(id)number toSignificantDigits:(unsigned __int8)digits;
+ (id)safeRoundOffNumber:(id)number toSignificantDigits:(unsigned __int8)digits maxAllowedValue:(id)value;
+ (id)validBitmapIndices:(unsigned int)indices size:(int)size;
@end

@implementation VCAggregatorUtils

+ (id)safeRoundOffNumber:(id)number toSignificantDigits:(unsigned __int8)digits
{
  if (number)
  {
    digitsCopy = digits;
    v6 = objc_alloc_init(MEMORY[0x277CCABC0]);
    [v6 setUsesSignificantDigits:1];
    [v6 setMaximumSignificantDigits:digitsCopy];
    [v6 setDecimalSeparator:@"."];
    v7 = [v6 stringFromNumber:number];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = &stru_284F80940;
    }
  }

  else
  {
    [VCAggregatorUtils safeRoundOffNumber:? toSignificantDigits:?];
    return v10;
  }

  return v8;
}

+ (id)safeRoundOffNumber:(id)number toSignificantDigits:(unsigned __int8)digits maxAllowedValue:(id)value
{
  if (number)
  {
    digitsCopy = digits;
    v8 = objc_alloc_init(MEMORY[0x277CCABC0]);
    [v8 setUsesSignificantDigits:1];
    [v8 setMaximumSignificantDigits:digitsCopy];
    [v8 setDecimalSeparator:@"."];
    v9 = [v8 stringFromNumber:number];

    if (v9)
    {
      v10 = objc_alloc_init(MEMORY[0x277CCABC0]);
      if ([objc_msgSend(v10 numberFromString:{v9), "compare:", value}] == 1)
      {
        v11 = [v10 stringFromNumber:value];
        if (v11)
        {
          v9 = v11;
        }

        else
        {
          v9 = &stru_284F80940;
        }
      }
    }

    else
    {
      return &stru_284F80940;
    }
  }

  else
  {
    [VCAggregatorUtils safeRoundOffNumber:? toSignificantDigits:? maxAllowedValue:?];
    return v13;
  }

  return v9;
}

+ (id)validBitmapIndices:(unsigned int)indices size:(int)size
{
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:size];
  if (size >= 1)
  {
    v7 = 0;
    do
    {
      if ((indices >> v7))
      {
        [v6 addObject:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithInt:", v7)}];
      }

      v7 = (v7 + 1);
    }

    while (size != v7);
  }

  return v6;
}

+ (CGSize)sizeForVideoResolution:(int)resolution
{
  SizeForVideoResolution = VCAggregatorUtils_GetSizeForVideoResolution(resolution);
  result.height = v4;
  result.width = SizeForVideoResolution;
  return result;
}

+ (void)safeRoundOffNumber:(void *)a1 toSignificantDigits:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_5(&dword_23D4DF000, v3, v4, " [%s] %s:%d Number passed is nil", v5, v6, v7, v8, 2u);
    }
  }

  *a1 = 0;
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)safeRoundOffNumber:(void *)a1 toSignificantDigits:maxAllowedValue:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_5(&dword_23D4DF000, v3, v4, " [%s] %s:%d Number passed is nil", v5, v6, v7, v8, 2u);
    }
  }

  *a1 = 0;
  v2 = *MEMORY[0x277D85DE8];
}

@end