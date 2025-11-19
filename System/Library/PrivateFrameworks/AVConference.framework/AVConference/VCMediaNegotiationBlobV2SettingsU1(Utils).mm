@interface VCMediaNegotiationBlobV2SettingsU1(Utils)
@end

@implementation VCMediaNegotiationBlobV2SettingsU1(Utils)

- (void)initWithU1Config:()Utils .cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to load encodeDecodeFeatures to U1 Settings", v2, v3, v4, v5, 2u);
    }
  }
}

- (void)initWithU1Config:()Utils .cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d U1 config is nil", v2, v3, v4, v5, 2u);
    }
  }
}

- (void)loadEncodeDecodeFeatures:()Utils .cold.1(uint64_t a1, void *a2, _BYTE *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [a2 objectForKeyedSubscript:a1];
      v9 = 136316162;
      v10 = v6;
      v11 = 2080;
      v12 = "[VCMediaNegotiationBlobV2SettingsU1(Utils) loadEncodeDecodeFeatures:]";
      OUTLINED_FUNCTION_4_2();
      v13 = 79;
      v14 = 2112;
      v15 = a1;
      v16 = 2112;
      v17 = v8;
      _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create encodeDecodeFeaturesBlob for rtpPayload=%@, FLS=%@", &v9, 0x30u);
    }
  }

  *a3 = 0;
}

+ (void)negotiationCipherSuiteFromMediaStreamCipherSuite:()Utils .cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "+[VCMediaNegotiationBlobV2SettingsU1(Utils) negotiationCipherSuiteFromMediaStreamCipherSuite:]";
  OUTLINED_FUNCTION_4_2();
  v7 = 143;
  v8 = 2048;
  v9 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Passing unsupported mediaStreamCipherSuite=%ld for negotiation transform.", &v3, 0x26u);
}

@end