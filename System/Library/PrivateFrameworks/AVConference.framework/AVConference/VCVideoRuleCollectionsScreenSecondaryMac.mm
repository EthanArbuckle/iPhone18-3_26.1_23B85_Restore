@interface VCVideoRuleCollectionsScreenSecondaryMac
+ (id)sharedInstance;
- (BOOL)setupH264Rules;
- (BOOL)setupHEVCRules;
- (BOOL)setupRules;
- (VCVideoRuleCollectionsScreenSecondaryMac)initWithHardwareSettings:(id)a3;
- (void)initSupportedPayloads;
- (void)setupH264Rules;
- (void)setupHEVCRules;
@end

@implementation VCVideoRuleCollectionsScreenSecondaryMac

+ (id)sharedInstance
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  objc_sync_exit(v2);
  return 0;
}

- (VCVideoRuleCollectionsScreenSecondaryMac)initWithHardwareSettings:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCVideoRuleCollectionsScreenSecondaryMac;
  v4 = [(VCVideoRuleCollections *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_hardwareSettings = a3;
    [(VCVideoRuleCollectionsScreenSecondaryMac *)v4 initSupportedPayloads];
    if (![(VCVideoRuleCollectionsScreenSecondaryMac *)v5 setupRules]|| ([(VCHardwareSettingsMacProtocol *)v5->_hardwareSettings isPixelFormatAvailable]& 1) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCVideoRuleCollectionsScreenSecondaryMac initWithHardwareSettings:v6];
        }
      }

      return 0;
    }
  }

  return v5;
}

- (void)initSupportedPayloads
{
  [(VCVideoRuleCollections *)self addSupportedPayload:123];
  if ([(VCHardwareSettingsMacProtocol *)self->_hardwareSettings canDoHEVC])
  {

    [(VCVideoRuleCollections *)self addSupportedPayload:100];
  }
}

- (BOOL)setupRules
{
  v3 = [(VCVideoRuleCollectionsScreenSecondaryMac *)self setupH264Rules];
  if (v3)
  {

    LOBYTE(v3) = [(VCVideoRuleCollectionsScreenSecondaryMac *)self setupHEVCRules];
  }

  return v3;
}

- (BOOL)setupH264Rules
{
  v9 = *MEMORY[0x1E69E9840];
  [(VCVideoRuleCollections *)self addSupportedPayload:123];
  v3 = videoRulesForFormatList_0(&g_EncodingFormatMacWiFi, 123);
  if (v3)
  {
    [(VCVideoRuleCollections *)self addVideoRules:v3 transportType:1 payload:123 encodingType:1];
    v4 = videoRulesForFormatList_0(&g_DecodingFormatMacWiFi, 123);
    if (v4)
    {
      v5 = 1;
      [(VCVideoRuleCollections *)self addVideoRules:v4 transportType:1 payload:123 encodingType:2];
    }

    else
    {
      [(VCVideoRuleCollectionsScreenSecondaryMac *)&v7 setupH264Rules];
      v5 = v7;
    }
  }

  else
  {
    [(VCVideoRuleCollectionsScreenSecondaryMac *)&v8 setupH264Rules];
    v5 = v8;
  }

  return v5;
}

- (BOOL)setupHEVCRules
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(VCVideoRuleCollections *)self isPayloadSupported:100];
  v4 = [VCHardwareSettings isHEVCEncodeSupportedForHardwareSettingsMode:3];
  v5 = 1;
  if (v3 && v4)
  {
    v6 = videoRulesForFormatList_0(&g_EncodingFormatMacWiFi, 100);
    if (v6)
    {
      [(VCVideoRuleCollections *)self addVideoRules:v6 transportType:1 payload:100 encodingType:1];
      v7 = videoRulesForFormatList_0(&g_DecodingFormatMacWiFi, 100);
      if (v7)
      {
        v8 = v7;
        [(VCVideoRuleCollections *)self addVideoRules:v7 transportType:1 payload:100 encodingType:2];
LABEL_6:

        return v5;
      }

      [(VCVideoRuleCollectionsScreenSecondaryMac *)&v10 setupHEVCRules];
    }

    else
    {
      [(VCVideoRuleCollectionsScreenSecondaryMac *)&v10 setupHEVCRules];
    }

    v8 = v10;
    v5 = v11;
    goto LABEL_6;
  }

  return v5;
}

- (void)initWithHardwareSettings:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 86;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create screen secondary rules!", &v2, 0x1Cu);
}

- (void)setupH264Rules
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1(&dword_1DB56E000, v2, v3, " [%s] %s:%d Screen rules: No suitable rules for this device", v4, v5, v6, v7, 2u);
    }
  }

  *a1 = 0;
}

- (void)setupHEVCRules
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_16(&dword_1DB56E000, v4, v5, " [%s] %s:%d Screen rules: No suitable rules for this device", v6, v7, v8, v9, 2u);
    }
  }

  *a2 = 0;
  *a1 = 0;
}

@end