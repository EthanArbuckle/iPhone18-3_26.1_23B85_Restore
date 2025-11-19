@interface VCDiskUtils
+ (BOOL)checkAttributesForDirectory:(id)a3;
+ (BOOL)createDefaultAttributeDirectoryIfNeeded:(id)a3;
+ (BOOL)createDefaultCacheDirectoryIfNeeded;
+ (BOOL)createDefaultLogDirectoryIfNeeded;
+ (BOOL)setAttributesForDirectory:(id)a3;
+ (id)getDefaultLogDumpPath;
@end

@implementation VCDiskUtils

+ (id)getDefaultLogDumpPath
{
  v2 = +[VCDiskUtils getCachesDirectoryPath];

  return [v2 stringByAppendingString:@"/logs/"];
}

+ (BOOL)createDefaultLogDirectoryIfNeeded
{
  v3 = [a1 getDefaultLogDumpPath];

  return [a1 createDefaultAttributeDirectoryIfNeeded:v3];
}

+ (BOOL)createDefaultCacheDirectoryIfNeeded
{
  v3 = [a1 getCachesDirectoryPath];

  return [a1 createDefaultAttributeDirectoryIfNeeded:v3];
}

+ (BOOL)createDefaultAttributeDirectoryIfNeeded:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = 0;
  if ([objc_msgSend(MEMORY[0x277CCAA08] "defaultManager")])
  {
    if ((v9 & 1) == 0)
    {
      [VCDiskUtils createDefaultAttributeDirectoryIfNeeded:a3];
      goto LABEL_16;
    }

    if (([a1 checkAttributesForDirectory:a3] & 1) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 7)
      {
        v5 = VRTraceErrorLogLevelToCSTR(7u);
        v6 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v11 = v5;
          v12 = 2080;
          v13 = "+[VCDiskUtils createDefaultAttributeDirectoryIfNeeded:]";
          v14 = 1024;
          v15 = 60;
          _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Existing logs directory exists but has invalid attributes", buf, 0x1Cu);
        }
      }

      if (([a1 setAttributesForDirectory:a3] & 1) == 0)
      {
        +[VCDiskUtils createDefaultAttributeDirectoryIfNeeded:];
LABEL_16:
        result = buf[0];
        goto LABEL_12;
      }
    }
  }

  else
  {
    if ((VCDiskUtils_CreateDirectory([a3 UTF8String]) & 1) == 0)
    {
      +[VCDiskUtils createDefaultAttributeDirectoryIfNeeded:];
      goto LABEL_16;
    }

    if (([a1 setAttributesForDirectory:a3] & 1) == 0)
    {
      +[VCDiskUtils createDefaultAttributeDirectoryIfNeeded:];
      goto LABEL_16;
    }
  }

  result = 1;
LABEL_12:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)checkAttributesForDirectory:(id)a3
{
  v11 = 0;
  v3 = [objc_msgSend(MEMORY[0x277CCAA08] "defaultManager")];
  if (v11)
  {
    [VCDiskUtils checkAttributesForDirectory:?];
    LOBYTE(v9) = v12;
  }

  else
  {
    v4 = v3;
    v5 = [objc_msgSend(v3 objectForKeyedSubscript:{*MEMORY[0x277CCA188]), "unsignedShortValue"}];
    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA168]];
    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA128]];
    if (v5 == 493)
    {
      v8 = v7;
      v9 = [v6 isEqualToString:@"mobile"];
      if (v9)
      {
        LOBYTE(v9) = [v8 isEqualToString:@"mobile"];
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

+ (BOOL)setAttributesForDirectory:(id)a3
{
  v10[3] = *MEMORY[0x277D85DE8];
  v10[2] = [MEMORY[0x277CCABA8] numberWithInt:{493, 0, *MEMORY[0x277CCA168], *MEMORY[0x277CCA128], *MEMORY[0x277CCA188], @"mobile", @"mobile"}];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:3];
  v5 = [objc_msgSend(MEMORY[0x277CCAA08] "defaultManager")];
  if ((v5 & 1) == 0)
  {
    [VCDiskUtils setAttributesForDirectory:?];
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (void)createDefaultAttributeDirectoryIfNeeded:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_6_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_4_1();
  v0 = *MEMORY[0x277D85DE8];
}

+ (void)createDefaultAttributeDirectoryIfNeeded:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_6_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_4_1();
  v0 = *MEMORY[0x277D85DE8];
}

+ (void)createDefaultAttributeDirectoryIfNeeded:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    v2 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_6_1();
      v5 = 2080;
      v6 = "+[VCDiskUtils createDefaultAttributeDirectoryIfNeeded:]";
      v7 = 1024;
      v8 = 57;
      v9 = 2112;
      v10 = a1;
      _os_log_error_impl(&dword_23D4DF000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Cannot create logs directory, file exists at path=%@", v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_4_1();
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)createDefaultAttributeDirectoryIfNeeded:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_6_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_4_1();
  v0 = *MEMORY[0x277D85DE8];
}

+ (void)checkAttributesForDirectory:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      v3 = *a1;
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_6_0();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
    }
  }

  OUTLINED_FUNCTION_4_1();
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)setAttributesForDirectory:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    v2 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      v4 = *a1;
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_8_1();
      _os_log_error_impl(&dword_23D4DF000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to set owner for logs directory, error=%@", v5, 0x26u);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end