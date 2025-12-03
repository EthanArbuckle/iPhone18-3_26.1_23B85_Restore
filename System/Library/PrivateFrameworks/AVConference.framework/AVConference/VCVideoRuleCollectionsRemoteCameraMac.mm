@interface VCVideoRuleCollectionsRemoteCameraMac
- (BOOL)initSupportedPayloads;
- (VCVideoRuleCollectionsRemoteCameraMac)initWithHardwareSettings:(id)settings;
- (void)initSupportedPayloads;
@end

@implementation VCVideoRuleCollectionsRemoteCameraMac

- (VCVideoRuleCollectionsRemoteCameraMac)initWithHardwareSettings:(id)settings
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCVideoRuleCollectionsRemoteCameraMac;
  v4 = [(VCVideoRuleCollections *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_hardwareSettings = settings;
    if (![(VCVideoRuleCollectionsRemoteCameraMac *)v4 initSupportedPayloads]|| ![(VCVideoRuleCollectionsRemoteCamera *)v5 setupHEVCRules])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCVideoRuleCollectionsRemoteCameraMac initWithHardwareSettings:v6];
        }
      }

      return 0;
    }
  }

  return v5;
}

- (BOOL)initSupportedPayloads
{
  if ([(VCHardwareSettingsMacProtocol *)self->_hardwareSettings canDoHEVC])
  {
    [(VCVideoRuleCollections *)self addSupportedPayload:100];
  }

  v3 = [(NSMutableArray *)self->super.super._supportedPayloads count];
  if (!v3 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(VCVideoRuleCollectionsRemoteCameraMac *)v4 initSupportedPayloads];
    }
  }

  return v3 != 0;
}

- (void)initWithHardwareSettings:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 23;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create camera rules!", &v2, 0x1Cu);
}

- (void)initSupportedPayloads
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  selfCopy = self;
  OUTLINED_FUNCTION_0();
  v4 = 47;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d No supportedPayloads for this hardware", &v2, 0x1Cu);
}

@end