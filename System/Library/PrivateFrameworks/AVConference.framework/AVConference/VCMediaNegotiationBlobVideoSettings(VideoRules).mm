@interface VCMediaNegotiationBlobVideoSettings(VideoRules)
- (void)newCameraConfiguration;
@end

@implementation VCMediaNegotiationBlobVideoSettings(VideoRules)

- (void)initWithSSRC:()VideoRules allowRTCPFB:videoRuleCollections:featureStrings:isCellular16x9Capable:tilesPerFrame:ltrpEnabled:pixelFormats:hdrModesSupported:customVideoWidth:customVideoHeight:enableInterleavedEncoding:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 195;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create video rules media blob entries", &v2, 0x1Cu);
}

- (void)initWithScreenSSRC:()VideoRules allowRTCPFB:videoRuleCollections:featureStrings:isCellular16x9Capable:customVideoWidth:customVideoHeight:tilesPerFrame:ltrpEnabled:pixelFormats:hdrModesSupported:fecEnabled:rtxEnabled:blackFrameOnClearScreenEnabled:foveationSupported:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 275;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create screen sharing media blob entries", &v2, 0x1Cu);
}

- (void)setVideoRuleCollections:()VideoRules featureStrings:isScreen:isCellular16x9Capable:.cold.1(uint64_t a1, void *a2)
{
  [a2 iWidth];
  [a2 iHeight];
  [a2 fRate];
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x32u);
}

- (void)setVideoRuleCollections:()VideoRules featureStrings:isScreen:isCellular16x9Capable:.cold.2(uint64_t a1, void *a2)
{
  [a2 unsignedIntValue];
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
}

- (void)newVideoRuleCollectionsForScreen:()VideoRules isCellular16x9Capable:isLocalConfig:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)newVideoRuleCollectionsForScreen:()VideoRules isCellular16x9Capable:isLocalConfig:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)newCameraConfiguration
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

- (void)newScreenConfigurationWithCameraConfiguration:()VideoRules .cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

@end