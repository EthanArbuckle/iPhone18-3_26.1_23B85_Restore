@interface VCVideoRuleCollectionsScreenAirplayEmbedded
+ (id)sharedInstance;
- (BOOL)setupH264Rules;
- (BOOL)setupHEVCRules;
- (BOOL)setupRules;
- (VCVideoRuleCollectionsScreenAirplayEmbedded)initWithHardwareSettings:(id)settings;
- (void)initSupportedPayloads;
- (void)selectPreferredRule:(id)rule screenSize:(CGSize)size;
@end

@implementation VCVideoRuleCollectionsScreenAirplayEmbedded

+ (id)sharedInstance
{
  if (sharedInstance_token_5 != -1)
  {
    +[VCVideoRuleCollectionsScreenAirplayEmbedded sharedInstance];
  }

  return sharedInstance__videoRulesCollection;
}

VCVideoRuleCollectionsScreenAirplayEmbedded *__61__VCVideoRuleCollectionsScreenAirplayEmbedded_sharedInstance__block_invoke()
{
  result = [[VCVideoRuleCollectionsScreenAirplayEmbedded alloc] initWithHardwareSettings:+[VCHardwareSettingsEmbedded sharedInstance]];
  sharedInstance__videoRulesCollection = result;
  return result;
}

- (VCVideoRuleCollectionsScreenAirplayEmbedded)initWithHardwareSettings:(id)settings
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCVideoRuleCollectionsScreenAirplayEmbedded;
  v4 = [(VCVideoRuleCollections *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_hardwareSettings = settings;
    [(VCVideoRuleCollectionsScreenAirplayEmbedded *)v4 initSupportedPayloads];
    if (![(VCVideoRuleCollectionsScreenAirplayEmbedded *)v5 setupRules]|| ([(VCHardwareSettingsEmbeddedProtocol *)v5->_hardwareSettings isPixelFormatAvailable]& 1) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCVideoRuleCollectionsScreenAirplayEmbedded initWithHardwareSettings:v6];
        }
      }

      return 0;
    }
  }

  return v5;
}

- (void)initSupportedPayloads
{
  deviceClass = [(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings deviceClass];
  if ((deviceClass - 1) >= 4)
  {
    if (deviceClass == 6)
    {
      v4 = 123;
      goto LABEL_3;
    }

    if (deviceClass != 8)
    {
      return;
    }
  }

  [(VCVideoRuleCollections *)self addSupportedPayload:123];
  v4 = 100;
LABEL_3:

  [(VCVideoRuleCollections *)self addSupportedPayload:v4];
}

- (void)selectPreferredRule:(id)rule screenSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v31 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [rule countByEnumeratingWithState:&v27 objects:v26 count:16];
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
          objc_enumerationMutation(rule);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        if (width == [v13 iWidth])
        {
          iHeight = [v13 iHeight];
          if (height == iHeight)
          {
            LODWORD(iHeight) = 1.0;
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

      v8 = [rule countByEnumeratingWithState:&v27 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    if (v9)
    {
      LODWORD(iHeight) = 1.0;
      v17 = v9;
LABEL_22:
      [v17 setFPref:iHeight];
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
      v23 = "[VCVideoRuleCollectionsScreenAirplayEmbedded selectPreferredRule:screenSize:]";
      v24 = 1024;
      v25 = 302;
      _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Screen rules: Could not find a preferred video rule", &v20, 0x1Cu);
    }
  }
}

- (BOOL)setupRules
{
  setupH264Rules = [(VCVideoRuleCollectionsScreenAirplayEmbedded *)self setupH264Rules];
  if (setupH264Rules)
  {

    LOBYTE(setupH264Rules) = [(VCVideoRuleCollectionsScreenAirplayEmbedded *)self setupHEVCRules];
  }

  return setupH264Rules;
}

- (BOOL)setupH264Rules
{
  v35 = *MEMORY[0x1E69E9840];
  if (![(VCVideoRuleCollections *)self isPayloadSupported:123])
  {
    [(VCVideoRuleCollectionsScreenAirplayEmbedded *)&v28 setupH264Rules];
LABEL_53:
    v12 = v28;
    v11 = *buf;
    v20 = v29;
    goto LABEL_32;
  }

  v3 = 0.0;
  if ([(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings deviceClass]== 4)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 0.0;
    if ([(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings deviceClass]!= 6)
    {
      screenWidth = [(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings screenWidth];
      if (!screenWidth)
      {
        [(VCVideoRuleCollectionsScreenAirplayEmbedded *)&v28 setupH264Rules];
        goto LABEL_53;
      }

      v6 = screenWidth;
      screenHeight = [(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings screenHeight];
      if (!screenHeight)
      {
        [(VCVideoRuleCollectionsScreenAirplayEmbedded *)&v28 setupH264Rules];
        goto LABEL_53;
      }

      v4 = v6;
      v3 = screenHeight;
    }
  }

  videoEncoderType = [(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings videoEncoderType];
  if (videoEncoderType == -1)
  {
    [(VCVideoRuleCollectionsScreenAirplayEmbedded *)&v28 setupH264Rules];
    goto LABEL_53;
  }

  v9 = videoEncoderType;
  deviceClass = [(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings deviceClass];
  v11 = 0;
  if (deviceClass > 3)
  {
    if (deviceClass != 4 && deviceClass != 6)
    {
      v12 = 0;
      if (deviceClass != 8)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_19;
  }

  if (deviceClass != 1)
  {
    if (deviceClass == 2)
    {
      if (v9 == 2)
      {
        v24 = v3 == 640.0 && v4 == 1136.0;
        if (v3 == 640.0 && v4 == 1136.0)
        {
          v25 = &g_AirplayWifiEncodingFormat1136x640AVE;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
        v24 = 0;
      }

      v11 = videoRulesForFormatList_1(v25, v24, 123);
      v26 = v4 == 1136.0;
      v27 = v3 == 640.0;
      if (v27 && v26)
      {
        v16 = &g_AirplayWifiDecodingFormat1136x640;
      }

      else
      {
        v16 = 0;
      }

      if (v27 && v26)
      {
        v17 = 4;
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_26;
    }

    v12 = 0;
    if (deviceClass != 3)
    {
      goto LABEL_33;
    }

LABEL_19:
    if (v9 == 1)
    {
      v14 = &g_AirplayWifiEncodingFormatiPadVXE;
    }

    else
    {
      v14 = &g_AirplayWifiEncodingFormatiPadAVE;
    }

    if (v9 == 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    v11 = videoRulesForFormatList_1(v14, v15, 123);
    v16 = &g_AirplayWifiDecodingFormatiPad;
    v17 = 12;
LABEL_26:
    v18 = videoRulesForFormatList_1(v16, v17, 123);
    goto LABEL_27;
  }

  v11 = iPhoneWiFiScreenEncodingRules(v9, 123, v4, v3);
  v18 = iPhoneWiFiScreenDecodingRules(123, v4, v3);
LABEL_27:
  v12 = v18;
  if (v11)
  {
    v19 = v18 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    [(VCVideoRuleCollectionsScreenAirplayEmbedded *)self selectPreferredRule:v11 screenSize:v4, v3];
    [(VCVideoRuleCollectionsScreenAirplayEmbedded *)self selectPreferredRule:v12 screenSize:v4, v3];
    v20 = 1;
    [(VCVideoRuleCollections *)self addVideoRules:v11 transportType:1 payload:123 encodingType:1];
    [(VCVideoRuleCollections *)self addVideoRules:v12 transportType:1 payload:123 encodingType:2];
    goto LABEL_32;
  }

LABEL_33:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v22;
      v31 = 2080;
      v32 = "[VCVideoRuleCollectionsScreenAirplayEmbedded setupH264Rules]";
      v33 = 1024;
      v34 = 356;
      _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Screen rules: No suitable rules for this device", buf, 0x1Cu);
    }
  }

  v20 = 0;
LABEL_32:

  return v20;
}

- (BOOL)setupHEVCRules
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = [(VCVideoRuleCollections *)self isPayloadSupported:100];
  v4 = [VCHardwareSettings isHEVCDecodeSupportedForHardwareSettingsMode:4];
  v5 = [VCHardwareSettings isHEVCEncodeSupportedForHardwareSettingsMode:4];
  v6 = 1;
  if (!v3)
  {
    return v6;
  }

  v7 = v5;
  if (!v4 && !v5)
  {
    return v6;
  }

  v8 = 0.0;
  if ([(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings deviceClass]== 4)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 0.0;
    if ([(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings deviceClass]!= 6)
    {
      screenWidth = [(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings screenWidth];
      if (!screenWidth)
      {
        [(VCVideoRuleCollectionsScreenAirplayEmbedded *)&v41 setupHEVCRules];
        goto LABEL_87;
      }

      v11 = screenWidth;
      screenHeight = [(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings screenHeight];
      if (!screenHeight)
      {
        [(VCVideoRuleCollectionsScreenAirplayEmbedded *)&v41 setupHEVCRules];
        goto LABEL_87;
      }

      v9 = v11;
      v8 = screenHeight;
    }
  }

  videoEncoderType = [(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings videoEncoderType];
  if (videoEncoderType == -1)
  {
    [(VCVideoRuleCollectionsScreenAirplayEmbedded *)&v41 setupHEVCRules];
    goto LABEL_87;
  }

  v14 = videoEncoderType;
  deviceClass = [(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings deviceClass];
  if (deviceClass > 2)
  {
    switch(deviceClass)
    {
      case 8:
        goto LABEL_14;
      case 4:
        if (v4)
        {
          v20 = videoRulesForFormatList_1(&g_AirplayWifiDecodingFormatiPad, 0xCu, 100);
          if (!v20)
          {
            [(VCVideoRuleCollectionsScreenAirplayEmbedded *)&v41 setupHEVCRules];
            goto LABEL_87;
          }

          v17 = v20;
          [(VCVideoRuleCollections *)self addVideoRules:v20 transportType:1 payload:100 encodingType:2];
        }

        else
        {
          v17 = 0;
        }

        v6 = 1;
        if (v7)
        {
          if (v14 == 1)
          {
            v28 = &g_AirplayWifiEncodingFormatiPadVXE;
          }

          else
          {
            v28 = &g_AirplayWifiEncodingFormatiPadAVE;
          }

          if (v14 == 1)
          {
            v29 = 1;
          }

          else
          {
            v29 = 2;
          }

          v23 = videoRulesForFormatList_1(v28, v29, 100);
          if (!v23)
          {
            [(VCVideoRuleCollectionsScreenAirplayEmbedded *)v17 setupHEVCRules:buf];
            goto LABEL_87;
          }

LABEL_54:
          v25 = v23;
LABEL_59:
          selfCopy2 = self;
          v32 = v25;
          v33 = 1;
LABEL_60:
          [(VCVideoRuleCollections *)selfCopy2 addVideoRules:v32 transportType:1 payload:100 encodingType:v33];
          goto LABEL_75;
        }

LABEL_55:
        v25 = 0;
LABEL_75:

        return v6;
      case 3:
LABEL_14:
        if (v4)
        {
          v16 = videoRulesForFormatList_1(&g_AirplayWifiDecodingFormatiPad, 0xCu, 100);
          if (!v16)
          {
            [(VCVideoRuleCollectionsScreenAirplayEmbedded *)&v41 setupHEVCRules];
            goto LABEL_87;
          }

          v17 = v16;
          [(VCVideoRuleCollections *)self addVideoRules:v16 transportType:1 payload:100 encodingType:2];
        }

        else
        {
          v17 = 0;
        }

        v6 = 1;
        if (v7)
        {
          if (v14 == 1)
          {
            v21 = &g_AirplayWifiEncodingFormatiPadVXE;
          }

          else
          {
            v21 = &g_AirplayWifiEncodingFormatiPadAVE;
          }

          if (v14 == 1)
          {
            v22 = 1;
          }

          else
          {
            v22 = 2;
          }

          v23 = videoRulesForFormatList_1(v21, v22, 100);
          if (!v23)
          {
            [(VCVideoRuleCollectionsScreenAirplayEmbedded *)v17 setupHEVCRules:buf];
LABEL_87:
            v25 = v41;
            v17 = *buf;
            v6 = v42;
            goto LABEL_75;
          }

          goto LABEL_54;
        }

        goto LABEL_55;
    }

    goto LABEL_41;
  }

  if (deviceClass == 1)
  {
    if (v4)
    {
      v24 = iPhoneWiFiScreenDecodingRules(100, v9, v8);
      if (!v24)
      {
        [(VCVideoRuleCollectionsScreenAirplayEmbedded *)&v41 setupHEVCRules];
        goto LABEL_87;
      }

      v17 = v24;
      [(VCVideoRuleCollections *)self addVideoRules:v24 transportType:1 payload:100 encodingType:2];
      if (!v7)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v17 = 0;
      if (!v7)
      {
LABEL_40:
        v25 = 0;
LABEL_74:
        v6 = 1;
        goto LABEL_75;
      }
    }

    v30 = iPhoneWiFiScreenEncodingRules(v14, 100, v9, v8);
    if (!v30)
    {
      [(VCVideoRuleCollectionsScreenAirplayEmbedded *)v17 setupHEVCRules:buf];
      goto LABEL_87;
    }

    v25 = v30;
    v6 = 1;
    goto LABEL_59;
  }

  if (deviceClass == 2)
  {
    if (v7)
    {
      if (v14 == 2)
      {
        v18 = v8 == 640.0 && v9 == 1136.0;
        if (v8 == 640.0 && v9 == 1136.0)
        {
          v19 = &g_AirplayWifiEncodingFormat1136x640AVE;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
        v18 = 0;
      }

      v39 = videoRulesForFormatList_1(v19, v18, 100);
      if (!v39)
      {
        [(VCVideoRuleCollectionsScreenAirplayEmbedded *)&v41 setupHEVCRules];
        goto LABEL_87;
      }

      v25 = v39;
      [(VCVideoRuleCollections *)self addVideoRules:v39 transportType:1 payload:100 encodingType:1];
      if (!v4)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v25 = 0;
      if (!v4)
      {
LABEL_73:
        v17 = 0;
        goto LABEL_74;
      }
    }

    v34 = v9 == 1136.0;
    v35 = v8 == 640.0;
    if (v35 && v34)
    {
      v36 = &g_AirplayWifiDecodingFormat1136x640;
    }

    else
    {
      v36 = 0;
    }

    if (v35 && v34)
    {
      v37 = 4;
    }

    else
    {
      v37 = 0;
    }

    v38 = videoRulesForFormatList_1(v36, v37, 100);
    if (!v38)
    {
      [(VCVideoRuleCollectionsScreenAirplayEmbedded *)v25 setupHEVCRules:buf];
      goto LABEL_87;
    }

    v17 = v38;
    v6 = 1;
    selfCopy2 = self;
    v32 = v17;
    v33 = 2;
    goto LABEL_60;
  }

LABEL_41:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v26 = VRTraceErrorLogLevelToCSTR();
    v27 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v26;
      v44 = 2080;
      v45 = "[VCVideoRuleCollectionsScreenAirplayEmbedded setupHEVCRules]";
      v46 = 1024;
      v47 = 449;
      _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Device has no Airplay Screen rules", buf, 0x1Cu);
    }
  }

  return 0;
}

- (void)initWithHardwareSettings:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 242;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create H264/HEVC rules for Airplay screen!", &v2, 0x1Cu);
}

@end