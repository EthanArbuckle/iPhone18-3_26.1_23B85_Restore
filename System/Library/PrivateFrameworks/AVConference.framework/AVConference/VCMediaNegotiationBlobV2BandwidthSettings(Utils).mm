@interface VCMediaNegotiationBlobV2BandwidthSettings(Utils)
- (BOOL)isEqual:()Utils;
- (void)bandwidthConfigurations;
@end

@implementation VCMediaNegotiationBlobV2BandwidthSettings(Utils)

- (BOOL)isEqual:()Utils
{
  if (!a3)
  {
    return 0;
  }

  [a3 cap2G];
  if (v3 != [OUTLINED_FUNCTION_8_17() cap2G])
  {
    return 0;
  }

  [a3 cap3G];
  if (v3 != [OUTLINED_FUNCTION_8_17() cap3G])
  {
    return 0;
  }

  [a3 capLTE];
  if (v3 != [OUTLINED_FUNCTION_8_17() capLTE])
  {
    return 0;
  }

  [a3 cap5G];
  if (v3 != [OUTLINED_FUNCTION_8_17() cap5G])
  {
    return 0;
  }

  v6 = [a3 capWifi];
  return v6 == [(VCMediaNegotiationBlobV2BandwidthSettings *)self capWifi];
}

- (void)initWithBandwidthConfigurations:()Utils .cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to initialize bandwidth configurations", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithBandwidthConfigurations:()Utils .cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Nil filtered bandwidth configurations!", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithBandwidthConfigurations:()Utils .cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Nil bandwidth configurations!", v2, v3, v4, v5, v6);
    }
  }
}

- (void)bandwidthConfigurations
{
  v9 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = v4;
      OUTLINED_FUNCTION_0();
      v8 = 44;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate bandwidth configuration set", &v6, 0x1Cu);
    }
  }

  *a2 = 0;
  *a1 = 0;
}

@end