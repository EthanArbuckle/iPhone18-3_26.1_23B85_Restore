@interface VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures(Utils)
@end

@implementation VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures(Utils)

- (void)initWithPayload:()Utils encodeDecodeFeatures:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Missing encodeDecodeFeatures", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithPayload:()Utils encodeDecodeFeatures:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Missing payload", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithPayload:()Utils encodeDecodeFeatures:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to initialize", v2, v3, v4, v5, v6);
    }
  }
}

@end