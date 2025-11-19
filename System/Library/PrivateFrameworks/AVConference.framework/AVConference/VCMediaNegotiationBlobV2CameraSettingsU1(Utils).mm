@interface VCMediaNegotiationBlobV2CameraSettingsU1(Utils)
- (void)videoRuleCollections;
@end

@implementation VCMediaNegotiationBlobV2CameraSettingsU1(Utils)

- (void)initWithSSRC:()Utils videoRuleCollections:screenSize:aspectRatioPortrait:aspectRatioLandscape:orientationMismatchAspectRatioLandscape:featureListStrings:u1AuthTagEnabled:videoFrameMetadataSupportedVersion:.cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315650;
      v5 = v2;
      OUTLINED_FUNCTION_0();
      v6 = 39;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d setupVideoRuleCollection failed", &v4, 0x1Cu);
    }
  }
}

- (void)videoRuleCollections
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate the video rules collection", v2, v3, v4, v5, v6);
    }
  }
}

- (void)setupVideoRuleCollection:()Utils featureListStrings:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 261;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate video payload", &v2, 0x1Cu);
}

@end