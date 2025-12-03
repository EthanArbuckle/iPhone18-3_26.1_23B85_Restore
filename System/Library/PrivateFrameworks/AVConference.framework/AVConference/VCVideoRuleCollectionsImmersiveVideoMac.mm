@interface VCVideoRuleCollectionsImmersiveVideoMac
- (BOOL)initSupportedPayloads;
- (VCVideoRuleCollectionsImmersiveVideoMac)initWithHardwareSettings:(id)settings;
- (void)initSupportedPayloads;
@end

@implementation VCVideoRuleCollectionsImmersiveVideoMac

- (VCVideoRuleCollectionsImmersiveVideoMac)initWithHardwareSettings:(id)settings
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCVideoRuleCollectionsImmersiveVideoMac;
  v4 = [(VCVideoRuleCollections *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_hardwareSettings = settings;
    if (![(VCVideoRuleCollectionsImmersiveVideoMac *)v4 initSupportedPayloads]|| ![(VCVideoRuleCollectionsImmersiveVideo *)v5 setupMVHEVCRules])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [(VCVideoRuleCollectionsImmersiveVideoMac *)v6 initWithHardwareSettings:v7];
        }
      }

      return 0;
    }
  }

  return v5;
}

- (BOOL)initSupportedPayloads
{
  v3 = +[VCHardwareSettings supportsMVHEVCEncode];
  if (v3)
  {
    [(VCVideoRuleCollections *)self addSupportedPayload:100];
  }

  if (![(NSMutableArray *)self->super.super._supportedPayloads count])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [(VCVideoRuleCollectionsImmersiveVideoMac *)v4 initSupportedPayloads];
      }
    }

    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)initWithHardwareSettings:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "[VCVideoRuleCollectionsImmersiveVideoMac initWithHardwareSettings:]";
  v6 = 1024;
  v7 = 23;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create immersive video rules!", &v2, 0x1Cu);
}

- (void)initSupportedPayloads
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  selfCopy = self;
  v5 = 2080;
  v6 = "[VCVideoRuleCollectionsImmersiveVideoMac initSupportedPayloads]";
  v7 = 1024;
  v8 = 52;
  v9 = 1024;
  v10 = a2 & 1;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Empty supported payload: supportsMVHEVCEncode=%d", &v3, 0x22u);
}

@end