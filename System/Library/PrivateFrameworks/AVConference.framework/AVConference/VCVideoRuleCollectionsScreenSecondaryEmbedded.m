@interface VCVideoRuleCollectionsScreenSecondaryEmbedded
+ (id)sharedInstance;
- (BOOL)setupH264Rules;
- (BOOL)setupHEVCRules;
- (BOOL)setupRules;
- (VCVideoRuleCollectionsScreenSecondaryEmbedded)initWithHardwareSettings:(id)a3;
- (void)initSupportedPayloads;
- (void)selectPreferredRule:(id)a3 screenSize:(CGSize)a4;
- (void)setupH264Rules;
- (void)setupHEVCRules;
@end

@implementation VCVideoRuleCollectionsScreenSecondaryEmbedded

+ (id)sharedInstance
{
  if (sharedInstance_token_8 != -1)
  {
    +[VCVideoRuleCollectionsScreenSecondaryEmbedded sharedInstance];
  }

  return sharedInstance__videoRulesCollection_1;
}

VCVideoRuleCollectionsScreenSecondaryEmbedded *__63__VCVideoRuleCollectionsScreenSecondaryEmbedded_sharedInstance__block_invoke()
{
  result = [[VCVideoRuleCollectionsScreenSecondaryEmbedded alloc] initWithHardwareSettings:+[VCHardwareSettingsEmbedded sharedInstance]];
  sharedInstance__videoRulesCollection_1 = result;
  return result;
}

- (VCVideoRuleCollectionsScreenSecondaryEmbedded)initWithHardwareSettings:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCVideoRuleCollectionsScreenSecondaryEmbedded;
  v4 = [(VCVideoRuleCollections *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_hardwareSettings = a3;
    [(VCVideoRuleCollectionsScreenSecondaryEmbedded *)v4 initSupportedPayloads];
    if (![(VCVideoRuleCollectionsScreenSecondaryEmbedded *)v5 setupRules]|| ([(VCHardwareSettingsEmbeddedProtocol *)v5->_hardwareSettings isPixelFormatAvailable]& 1) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCVideoRuleCollectionsScreenSecondaryEmbedded initWithHardwareSettings:v6];
        }
      }

      return 0;
    }
  }

  return v5;
}

- (void)initSupportedPayloads
{
  v3 = [(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings deviceClass];
  if (v3 == 8 || v3 == 3)
  {
    [(VCVideoRuleCollections *)self addSupportedPayload:123];

    [(VCVideoRuleCollections *)self addSupportedPayload:100];
  }
}

- (void)selectPreferredRule:(id)a3 screenSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v31 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v28;
    v11 = 1.0;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        if (width == [v13 iWidth])
        {
          v14 = [v13 iHeight];
          if (height == v14)
          {
            LODWORD(v14) = 1.0;
            v17 = v13;
            goto LABEL_22;
          }
        }

        v15 = height * [v13 iWidth];
        if (v15 == width * [v13 iHeight] && (!v9 || objc_msgSend(v9, "compare:", v13) == -1))
        {
          v11 = 0.0;
          v9 = v13;
        }

        v16 = vabdd_f64(([v13 iWidth] / objc_msgSend(v13, "iHeight")), width / height);
        if (v16 < v11 || v16 == v11 && (!v9 || [v9 compare:v13] == -1))
        {
          v11 = v16;
          v9 = v13;
        }
      }

      v8 = [a3 countByEnumeratingWithState:&v27 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    if (v9)
    {
      LODWORD(v14) = 1.0;
      v17 = v9;
LABEL_22:
      [v17 setFPref:v14];
      return;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315650;
      v21 = v18;
      v22 = 2080;
      v23 = "[VCVideoRuleCollectionsScreenSecondaryEmbedded selectPreferredRule:screenSize:]";
      v24 = 1024;
      v25 = 184;
      _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Secondary Screen rules: Could not find a preferred video rule", &v20, 0x1Cu);
    }
  }
}

- (BOOL)setupRules
{
  v3 = [(VCVideoRuleCollectionsScreenSecondaryEmbedded *)self setupH264Rules];
  if (v3)
  {

    LOBYTE(v3) = [(VCVideoRuleCollectionsScreenSecondaryEmbedded *)self setupHEVCRules];
  }

  return v3;
}

- (BOOL)setupH264Rules
{
  v31 = *MEMORY[0x1E69E9840];
  if (![(VCVideoRuleCollections *)self isPayloadSupported:123])
  {
    [VCVideoRuleCollectionsScreenSecondaryEmbedded setupH264Rules];
    goto LABEL_38;
  }

  v3 = [(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings screenWidth];
  if (!v3)
  {
    [VCVideoRuleCollectionsScreenSecondaryEmbedded setupH264Rules];
    goto LABEL_38;
  }

  v4 = v3;
  v5 = [(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings screenHeight];
  if (!v5)
  {
    [VCVideoRuleCollectionsScreenSecondaryEmbedded setupH264Rules];
    goto LABEL_38;
  }

  v6 = v5;
  if ([(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings videoEncoderType]== -1)
  {
    [VCVideoRuleCollectionsScreenSecondaryEmbedded setupH264Rules];
    goto LABEL_38;
  }

  v7 = v4;
  v8 = v6;
  v9 = [(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings deviceClass];
  if (v9 == 8)
  {
    v11 = videoRulesForFormatList_2(&g_EncodingDecodingFormat_3K_AND_4K, 2u, 123);
    v12 = videoRulesForFormatList_2(&g_EncodingDecodingFormat_3K_AND_4K, 2u, 123);
LABEL_28:
    v18 = v12;
    if (v11 && v12)
    {
      [(VCVideoRuleCollectionsScreenSecondaryEmbedded *)self selectPreferredRule:v11 screenSize:v7, v8];
      [(VCVideoRuleCollectionsScreenSecondaryEmbedded *)self selectPreferredRule:v18 screenSize:v7, v8];
      v15 = 1;
      [(VCVideoRuleCollections *)self addVideoRules:v11 transportType:1 payload:123 encodingType:1];
      [(VCVideoRuleCollections *)self addVideoRules:v18 transportType:1 payload:123 encodingType:2];
LABEL_31:

      return v15;
    }

    [(VCVideoRuleCollectionsScreenSecondaryEmbedded *)v12 setupH264Rules:v11];
LABEL_38:
    v18 = v20;
    v11 = *buf;
    v15 = v21;
    goto LABEL_31;
  }

  if (v9 == 3)
  {
    if (v4 == 2732 && v6 == 2048)
    {
      v10 = &g_EncodingFormatiPadWiFi2732x2048;
    }

    else if (v4 == 2224 && v6 == 1668)
    {
      v10 = &g_EncodingFormatiPadWiFi2224x1668;
    }

    else if (v4 == 2388 && v6 == 1668)
    {
      v10 = &g_EncodingFormatiPadWiFi2388x1668;
    }

    else
    {
      if ((v4 != 2048 || v6 != 1536) && VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *&buf[4] = v16;
          v23 = 2080;
          v24 = "iPadWiFiScreenEncodingRules";
          v25 = 1024;
          v26 = 75;
          v27 = 2048;
          v28 = v7;
          v29 = 2048;
          v30 = v8;
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Resolution(%f x %f)  not supported. Defaulting to 2048x1536", buf, 0x30u);
        }
      }

      v10 = &g_EncodingFormatiPadWiFi2048x1536;
    }

    v11 = videoRulesForFormatList_2(v10, 1u, 123);
    v12 = iPadWiFiScreenDecodingRules(123, v7, v8);
    goto LABEL_28;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v13;
      v23 = 2080;
      v24 = "[VCVideoRuleCollectionsScreenSecondaryEmbedded setupH264Rules]";
      v25 = 1024;
      v26 = 226;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Device has no Secondary Screen rules", buf, 0x1Cu);
    }
  }

  return 0;
}

- (BOOL)setupHEVCRules
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(VCVideoRuleCollections *)self isPayloadSupported:100];
  v4 = [VCHardwareSettings isHEVCDecodeSupportedForHardwareSettingsMode:3];
  v5 = 1;
  if (v3 && v4)
  {
    v6 = [(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings screenWidth];
    if (!v6)
    {
      [VCVideoRuleCollectionsScreenSecondaryEmbedded setupHEVCRules];
      goto LABEL_22;
    }

    v7 = v6;
    v8 = [(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings screenHeight];
    if (!v8)
    {
      [VCVideoRuleCollectionsScreenSecondaryEmbedded setupHEVCRules];
      goto LABEL_22;
    }

    v9 = v8;
    if ([(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings videoEncoderType]== -1)
    {
      [VCVideoRuleCollectionsScreenSecondaryEmbedded setupHEVCRules];
      goto LABEL_22;
    }

    v10 = v7;
    v11 = [(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings deviceClass];
    if (v11 == 8)
    {
      v12 = videoRulesForFormatList_2(&g_EncodingDecodingFormat_3K_AND_4K, 2u, 100);
      goto LABEL_10;
    }

    if (v11 == 3)
    {
      v12 = iPadWiFiScreenDecodingRules(100, v7, v9);
LABEL_10:
      v13 = v12;
      if (v12)
      {
        [(VCVideoRuleCollectionsScreenSecondaryEmbedded *)self selectPreferredRule:v12 screenSize:v10, v9];
        v5 = 1;
        [(VCVideoRuleCollections *)self addVideoRules:v13 transportType:1 payload:100 encodingType:2];
LABEL_12:

        return v5;
      }

      [VCVideoRuleCollectionsScreenSecondaryEmbedded setupHEVCRules];
LABEL_22:
      v13 = *buf;
      v5 = v17;
      goto LABEL_12;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v14;
        v19 = 2080;
        v20 = "[VCVideoRuleCollectionsScreenSecondaryEmbedded setupHEVCRules]";
        v21 = 1024;
        v22 = 277;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Device has no Secondary Screen rules", buf, 0x1Cu);
      }
    }

    return 0;
  }

  return v5;
}

- (void)initWithHardwareSettings:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 125;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create rules for secondary screen!", &v2, 0x1Cu);
}

- (void)setupH264Rules
{
  OUTLINED_FUNCTION_15();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_13(&dword_1DB56E000, v0, v1, " [%s] %s:%d Secondary Screen rules: Could not retrieve main screen width", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_4();
}

- (void)setupHEVCRules
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_13_8(&dword_1DB56E000, v0, v1, " [%s] %s:%d Secondary Screen rules: Could not retrieve main screen width", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_17_11();
}

@end