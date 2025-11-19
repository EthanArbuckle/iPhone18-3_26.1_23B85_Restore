@interface VCVideoRuleCollectionsScreenAirplayMac
- (BOOL)setupH264Rules;
- (BOOL)setupHEVCRules;
- (BOOL)setupRules;
- (VCVideoRuleCollectionsScreenAirplayMac)initWithHardwareSettings:(id)a3;
- (void)initSupportedPayloads;
- (void)setupH264Rules;
- (void)setupHEVCRules;
@end

@implementation VCVideoRuleCollectionsScreenAirplayMac

- (VCVideoRuleCollectionsScreenAirplayMac)initWithHardwareSettings:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCVideoRuleCollectionsScreenAirplayMac;
  v4 = [(VCVideoRuleCollections *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_hardwareSettings = a3;
    [(VCVideoRuleCollectionsScreenAirplayMac *)v4 initSupportedPayloads];
    if (![(VCVideoRuleCollectionsScreenAirplayMac *)v5 setupRules]|| ([(VCHardwareSettingsMacProtocol *)v5->_hardwareSettings isPixelFormatAvailable]& 1) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCVideoRuleCollectionsScreenAirplayMac initWithHardwareSettings:v6];
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
  v3 = [(VCVideoRuleCollectionsScreenAirplayMac *)self setupH264Rules];
  if (v3)
  {

    LOBYTE(v3) = [(VCVideoRuleCollectionsScreenAirplayMac *)self setupHEVCRules];
  }

  return v3;
}

- (BOOL)setupH264Rules
{
  v10 = *MEMORY[0x1E69E9840];
  [(VCVideoRuleCollections *)self addSupportedPayload:123];
  v3 = videoRulesForFormatList(&g_EncodingFormatMacWiFiAirplay, 123);
  if (!v3)
  {
    [(VCVideoRuleCollectionsScreenAirplayMac *)&v8 setupH264Rules];
LABEL_7:
    v5 = v8;
    v6 = v9;
    goto LABEL_4;
  }

  v4 = videoRulesForFormatList(&g_DecodingFormatMacWiFiAirplay, 123);
  if (!v4)
  {
    [(VCVideoRuleCollectionsScreenAirplayMac *)&v8 setupH264Rules];
    goto LABEL_7;
  }

  v5 = v4;
  v6 = 1;
  [(VCVideoRuleCollections *)self addVideoRules:v3 transportType:1 payload:123 encodingType:1];
  [(VCVideoRuleCollections *)self addVideoRules:v5 transportType:1 payload:123 encodingType:2];
LABEL_4:

  return v6;
}

- (BOOL)setupHEVCRules
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(VCVideoRuleCollections *)self isPayloadSupported:100];
  v4 = [VCHardwareSettings isHEVCDecodeSupportedForHardwareSettingsMode:4];
  v5 = [VCHardwareSettings isHEVCEncodeSupportedForHardwareSettingsMode:4];
  v6 = 1;
  if (v3 && (v4 || v5))
  {
    if (v5)
    {
      v7 = videoRulesForFormatList(&g_EncodingFormatMacWiFiAirplay, 100);
      if (!v7)
      {
        [(VCVideoRuleCollectionsScreenAirplayMac *)&v12 setupHEVCRules];
        goto LABEL_14;
      }

      v8 = v7;
      [(VCVideoRuleCollections *)self addVideoRules:v7 transportType:1 payload:100 encodingType:1];
      if (!v4)
      {
LABEL_6:
        v9 = 0;
LABEL_10:

        return v6;
      }
    }

    else
    {
      v8 = 0;
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    v10 = videoRulesForFormatList(&g_DecodingFormatMacWiFiAirplay, 100);
    if (v10)
    {
      v9 = v10;
      [(VCVideoRuleCollections *)self addVideoRules:v10 transportType:1 payload:100 encodingType:2];
      goto LABEL_10;
    }

    [(VCVideoRuleCollectionsScreenAirplayMac *)v8 setupHEVCRules:&v13];
LABEL_14:
    v9 = v12;
    v8 = v13;
    v6 = v14;
    goto LABEL_10;
  }

  return v6;
}

- (void)initWithHardwareSettings:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 110;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create Airplay screen rules!", &v2, 0x1Cu);
}

- (void)setupH264Rules
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_16(&dword_1DB56E000, v3, v4, " [%s] %s:%d Airplay Screen rules: No suitable H264 encode rules for this mac", v5, v6, v7, v8, 2u);
    }
  }

  *a2 = 0;
  OUTLINED_FUNCTION_20();
}

- (void)setupHEVCRules
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = v5;
      OUTLINED_FUNCTION_0();
      v9 = 171;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Airplay Screen rules: No suitable hevc encode rules for this mac", &v7, 0x1Cu);
    }
  }

  *a3 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_20();
}

@end