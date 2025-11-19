@interface VCAggregatorUtils
+ (CGSize)sizeForVideoResolution:(int)a3;
+ (id)safeRoundOffNumber:(id)a3 toSignificantDigits:(unsigned __int8)a4;
+ (id)safeRoundOffNumber:(id)a3 toSignificantDigits:(unsigned __int8)a4 maxAllowedValue:(id)a5;
+ (id)validBitmapIndices:(unsigned int)a3 size:(int)a4;
@end

@implementation VCAggregatorUtils

+ (id)safeRoundOffNumber:(id)a3 toSignificantDigits:(unsigned __int8)a4
{
  if (a3)
  {
    v4 = a4;
    v6 = objc_alloc_init(MEMORY[0x277CCABC0]);
    [v6 setUsesSignificantDigits:1];
    [v6 setMaximumSignificantDigits:v4];
    [v6 setDecimalSeparator:@"."];
    v7 = [v6 stringFromNumber:a3];
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

+ (id)safeRoundOffNumber:(id)a3 toSignificantDigits:(unsigned __int8)a4 maxAllowedValue:(id)a5
{
  if (a3)
  {
    v6 = a4;
    v8 = objc_alloc_init(MEMORY[0x277CCABC0]);
    [v8 setUsesSignificantDigits:1];
    [v8 setMaximumSignificantDigits:v6];
    [v8 setDecimalSeparator:@"."];
    v9 = [v8 stringFromNumber:a3];

    if (v9)
    {
      v10 = objc_alloc_init(MEMORY[0x277CCABC0]);
      if ([objc_msgSend(v10 numberFromString:{v9), "compare:", a5}] == 1)
      {
        v11 = [v10 stringFromNumber:a5];
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

+ (id)validBitmapIndices:(unsigned int)a3 size:(int)a4
{
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a4];
  if (a4 >= 1)
  {
    v7 = 0;
    do
    {
      if ((a3 >> v7))
      {
        [v6 addObject:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithInt:", v7)}];
      }

      v7 = (v7 + 1);
    }

    while (a4 != v7);
  }

  return v6;
}

+ (CGSize)sizeForVideoResolution:(int)a3
{
  SizeForVideoResolution = VCAggregatorUtils_GetSizeForVideoResolution(a3);
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