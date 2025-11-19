@interface VCVideoRuleCollectionsRemoteCameraEmbedded
+ (id)sharedInstance;
- (BOOL)initSupportedPayloads;
- (VCVideoRuleCollectionsRemoteCameraEmbedded)initWithHardwareSettings:(id)a3;
- (void)initSupportedPayloads;
@end

@implementation VCVideoRuleCollectionsRemoteCameraEmbedded

- (VCVideoRuleCollectionsRemoteCameraEmbedded)initWithHardwareSettings:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCVideoRuleCollectionsRemoteCameraEmbedded;
  v4 = [(VCVideoRuleCollections *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_hardwareSettings = a3;
    if (![(VCVideoRuleCollectionsRemoteCameraEmbedded *)v4 initSupportedPayloads]|| ![(VCVideoRuleCollectionsRemoteCamera *)v5 setupHEVCRules])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [(VCVideoRuleCollectionsRemoteCameraEmbedded *)v6 initWithHardwareSettings:v7];
        }
      }

      return 0;
    }
  }

  return v5;
}

+ (id)sharedInstance
{
  if (sharedInstance_token_0 != -1)
  {
    +[VCVideoRuleCollectionsRemoteCameraEmbedded sharedInstance];
  }

  return sharedInstance__videoRulesCollections;
}

VCVideoRuleCollectionsRemoteCameraEmbedded *__60__VCVideoRuleCollectionsRemoteCameraEmbedded_sharedInstance__block_invoke()
{
  result = [[VCVideoRuleCollectionsRemoteCameraEmbedded alloc] initWithHardwareSettings:+[VCHardwareSettingsEmbedded sharedInstance]];
  sharedInstance__videoRulesCollections = result;
  return result;
}

- (BOOL)initSupportedPayloads
{
  if ([(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings vcpSupportsHEVCEncoder])
  {
    [(VCVideoRuleCollections *)self addSupportedPayload:100];
  }

  v3 = [(NSMutableArray *)self->super.super._supportedPayloads count];
  if (!v3 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(VCVideoRuleCollectionsRemoteCameraEmbedded *)v4 initSupportedPayloads];
    }
  }

  return v3 != 0;
}

- (void)initWithHardwareSettings:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "[VCVideoRuleCollectionsRemoteCameraEmbedded initWithHardwareSettings:]";
  v6 = 1024;
  v7 = 23;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create camera rules!", &v2, 0x1Cu);
}

- (void)initSupportedPayloads
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = [*a2 deviceClass];
  v7 = [*a2 vcpSupportsHEVCEncoder];
  v8 = 136316162;
  v9 = a1;
  v10 = 2080;
  v11 = "[VCVideoRuleCollectionsRemoteCameraEmbedded initSupportedPayloads]";
  v12 = 1024;
  v13 = 49;
  v14 = 2048;
  v15 = v6;
  v16 = 1024;
  v17 = v7;
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Empty supported payload: device classType=%ld, vcpSupportsHEVCEncoder=%d", &v8, 0x2Cu);
}

@end