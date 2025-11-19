@interface VCStringUtils
+ (BOOL)convertString:(id)a3 toFourcc:(unsigned int *)a4;
+ (const)cStringFromOperatingMode:(int)a3;
+ (const)cStringFromTierPickerMode:(unsigned __int8)a3;
@end

@implementation VCStringUtils

+ (BOOL)convertString:(id)a3 toFourcc:(unsigned int *)a4
{
  v11 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([a3 length] == 4)
        {
          *a4 = CStrToFourcc([a3 UTF8String]);
          return 1;
        }

        else
        {
          [VCStringUtils convertString:a3 toFourcc:&v8];
          return v8;
        }
      }

      else
      {
        [VCStringUtils convertString:? toFourcc:?];
        return v7;
      }
    }

    else
    {
      [VCStringUtils convertString:? toFourcc:?];
      return v9;
    }
  }

  else
  {
    [VCStringUtils convertString:? toFourcc:?];
    return v10;
  }
}

+ (const)cStringFromOperatingMode:(int)a3
{
  if ((a3 - 1) > 0xB)
  {
    return "Invalid";
  }

  else
  {
    return off_1E85F8698[a3 - 1];
  }
}

+ (const)cStringFromTierPickerMode:(unsigned __int8)a3
{
  if ((a3 - 1) > 8)
  {
    return "Invalid";
  }

  else
  {
    return off_1E85F86F8[(a3 - 1)];
  }
}

+ (void)convertString:(_BYTE *)a1 toFourcc:.cold.1(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Invalid fourcc string class", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 0;
}

+ (void)convertString:(void *)a1 toFourcc:(_BYTE *)a2 .cold.2(void *a1, _BYTE *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [a1 length];
      v7 = 136316162;
      v8 = v4;
      OUTLINED_FUNCTION_0();
      v9 = 22;
      v10 = 2112;
      v11 = a1;
      v12 = 2048;
      v13 = v6;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid fourcc string=%@ length=%lu", &v7, 0x30u);
    }
  }

  *a2 = 0;
}

+ (void)convertString:(_BYTE *)a1 toFourcc:.cold.3(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d fourccString is nil", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 0;
}

+ (void)convertString:(_BYTE *)a1 toFourcc:.cold.4(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d fourcc pointer is NULL", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 0;
}

@end