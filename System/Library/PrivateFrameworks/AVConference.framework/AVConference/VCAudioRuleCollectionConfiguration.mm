@interface VCAudioRuleCollectionConfiguration
- (VCAudioRuleCollectionConfiguration)init;
- (void)init;
@end

@implementation VCAudioRuleCollectionConfiguration

- (VCAudioRuleCollectionConfiguration)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCAudioRuleCollectionConfiguration;
  v2 = [(VCAudioRuleCollectionConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_aacBlockSize = 480;
    v2->_addACC24 = VCFeatureFlagManager_UseAudioCodecACC24ForU1();
    v3->_channelCount = 1;
    v3->_minBlockSize = 3;
    v3->_allowLargerBlockSizes = 1;
  }

  else
  {
    [VCAudioRuleCollectionConfiguration init];
  }

  return v3;
}

- (void)init
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v2 = 136315650;
      v3 = v0;
      v4 = 2080;
      v5 = "[VCAudioRuleCollectionConfiguration init]";
      v6 = 1024;
      v7 = 30;
      _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to super init instance", &v2, 0x1Cu);
    }
  }
}

@end