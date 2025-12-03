@interface VCVideoRuleCollectionsImmersiveVideoEmbedded
+ (id)sharedInstance;
- (BOOL)initSupportedPayloads;
- (VCVideoRuleCollectionsImmersiveVideoEmbedded)initWithHardwareSettings:(id)settings;
@end

@implementation VCVideoRuleCollectionsImmersiveVideoEmbedded

- (VCVideoRuleCollectionsImmersiveVideoEmbedded)initWithHardwareSettings:(id)settings
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCVideoRuleCollectionsImmersiveVideoEmbedded;
  v4 = [(VCVideoRuleCollections *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_hardwareSettings = settings;
    if (![(VCVideoRuleCollectionsImmersiveVideoEmbedded *)v4 initSupportedPayloads]|| ![(VCVideoRuleCollectionsImmersiveVideo *)v5 setupMVHEVCRules])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [(VCVideoRuleCollectionsImmersiveVideoEmbedded *)v6 initWithHardwareSettings:v7];
        }
      }

      return 0;
    }
  }

  return v5;
}

+ (id)sharedInstance
{
  if (sharedInstance_token_2 != -1)
  {
    +[VCVideoRuleCollectionsImmersiveVideoEmbedded sharedInstance];
  }

  return sharedInstance__videoRulesCollections_0;
}

VCVideoRuleCollectionsImmersiveVideoEmbedded *__62__VCVideoRuleCollectionsImmersiveVideoEmbedded_sharedInstance__block_invoke()
{
  result = [[VCVideoRuleCollectionsImmersiveVideoEmbedded alloc] initWithHardwareSettings:+[VCHardwareSettingsEmbedded sharedInstance]];
  sharedInstance__videoRulesCollections_0 = result;
  return result;
}

- (BOOL)initSupportedPayloads
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[VCHardwareSettingsEmbedded supportsMVHEVCDecode];
  if (v3)
  {
    [(VCVideoRuleCollections *)self addSupportedPayload:100];
  }

  if (![(NSMutableArray *)self->super.super._supportedPayloads count]&& VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      deviceClass = [(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings deviceClass];
      v8 = 136316162;
      v9 = v4;
      v10 = 2080;
      v11 = "[VCVideoRuleCollectionsImmersiveVideoEmbedded initSupportedPayloads]";
      v12 = 1024;
      v13 = 52;
      v14 = 2048;
      v15 = deviceClass;
      v16 = 1024;
      v17 = v3;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d Empty supported payload: device classType=%ld, supportsMVHEVCDecode=%d", &v8, 0x2Cu);
    }
  }

  return v3;
}

- (void)initWithHardwareSettings:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "[VCVideoRuleCollectionsImmersiveVideoEmbedded initWithHardwareSettings:]";
  v6 = 1024;
  v7 = 23;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create immersive video rules!", &v2, 0x1Cu);
}

@end