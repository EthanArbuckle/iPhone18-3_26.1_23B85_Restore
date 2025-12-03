@interface VCVideoRuleCollectionsScreen
+ (id)sharedInstance;
+ (void)addRulesForU1ToCollection:(id)collection;
+ (void)updateScreenRuleCollections:(id)collections size:(CGSize)size;
- (BOOL)setupH264Rules;
- (BOOL)setupMacDecodingOnlyRules;
- (VCVideoRuleCollectionsScreen)initWithHardwareSettings:(id)settings;
- (id)initForMacDecodingOnly;
- (void)initForMacDecodingOnly;
- (void)initSupportedPayloads;
- (void)selectPreferredRule:(id)rule screenSize:(CGSize)size;
- (void)setupH264Rules;
@end

@implementation VCVideoRuleCollectionsScreen

+ (id)sharedInstance
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (!sharedInstance__videoRulesCollection_0)
  {
    sharedInstance__videoRulesCollection_0 = [[VCVideoRuleCollectionsScreen alloc] initWithHardwareSettings:+[VCHardwareSettingsEmbedded sharedInstance]];
  }

  objc_sync_exit(v2);
  return sharedInstance__videoRulesCollection_0;
}

- (VCVideoRuleCollectionsScreen)initWithHardwareSettings:(id)settings
{
  v16 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCVideoRuleCollectionsScreen;
  v4 = [(VCVideoRuleCollections *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_hardwareSettings = settings;
    [(VCVideoRuleCollectionsScreen *)v4 initSupportedPayloads];
    if (([(VCVideoRuleCollections *)v5 isPayloadSupported:126]|| [(VCVideoRuleCollections *)v5 isPayloadSupported:123]) && ![(VCVideoRuleCollectionsScreen *)v5 setupH264Rules])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v11 = v6;
          v12 = 2080;
          v13 = "[VCVideoRuleCollectionsScreen initWithHardwareSettings:]";
          v14 = 1024;
          v15 = 292;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Screen sharing rules: Failed to create H264 rules", buf, 0x1Cu);
        }
      }

      return 0;
    }
  }

  return v5;
}

- (id)initForMacDecodingOnly
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCVideoRuleCollectionsScreen;
  v2 = [(VCVideoRuleCollections *)&v5 init];
  v3 = v2;
  if (v2 && ![(VCVideoRuleCollectionsScreen *)v2 setupMacDecodingOnlyRules])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoRuleCollectionsScreen initForMacDecodingOnly];
      }
    }

    return 0;
  }

  return v3;
}

+ (void)updateScreenRuleCollections:(id)collections size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v22 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [&unk_1F579E0E8 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = *v19;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(&unk_1F579E0E8);
      }

      intValue = [*(*(&v18 + 1) + 8 * i) intValue];
      v12 = [VCVideoRule alloc];
      *&v13 = +[VCHardwareSettings maxFrameRateSupportedScreenShare];
      v14 = [(VCVideoRule *)v12 initWithFrameWidth:width frameHeight:height frameRate:intValue payload:v13];
      if (!v14)
      {
        [VCVideoRuleCollectionsScreen updateScreenRuleCollections:collections size:?];
        return;
      }

      v15 = v14;
      v16 = [MEMORY[0x1E695DF70] arrayWithObject:v14];
      if (intValue != 100)
      {
        [collections addVideoRules:v16 transportType:1 payload:intValue encodingType:1];
LABEL_13:
        [collections addVideoRules:v16 transportType:1 payload:intValue encodingType:2];
        goto LABEL_14;
      }

      if (+[VCHardwareSettings supportsHEVCEncoding])
      {
        [collections addVideoRules:v16 transportType:1 payload:100 encodingType:1];
      }

      if (+[VCHardwareSettings supportsHEVCDecoding])
      {
        goto LABEL_13;
      }

LABEL_14:
    }

    v8 = [&unk_1F579E0E8 countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }
}

+ (void)addRulesForU1ToCollection:(id)collection
{
  [VideoUtil computeResolutionForMainDisplayWithMaxScreenPixelCount:5603328];
  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    +[VCVideoRuleCollectionsScreen addRulesForU1ToCollection:];
  }

  else
  {

    [self updateScreenRuleCollections:collection size:?];
  }
}

- (void)initSupportedPayloads
{
  deviceClass = [(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings deviceClass];
  if (deviceClass <= 8 && ((1 << deviceClass) & 0x14E) != 0)
  {

    [(VCVideoRuleCollections *)self addSupportedPayload:123];
  }
}

- (void)selectPreferredRule:(id)rule screenSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v23 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [rule countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v20;
    v11 = 1.0;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(rule);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
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

      v8 = [rule countByEnumeratingWithState:&v19 objects:v18 count:16];
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
    }
  }
}

- (BOOL)setupH264Rules
{
  v47 = *MEMORY[0x1E69E9840];
  if (![(VCVideoRuleCollections *)self isPayloadSupported:123])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v37 = VRTraceErrorLogLevelToCSTR();
      v38 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v41 = 136315650;
        v42 = v37;
        v43 = 2080;
        v44 = "[VCVideoRuleCollectionsScreen setupH264Rules]";
        v45 = 1024;
        v46 = 406;
        _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Screen sharing rules: no H264 support", &v41, 0x1Cu);
      }
    }

    goto LABEL_116;
  }

  screenWidth = [(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings screenWidth];
  if (!screenWidth)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoRuleCollectionsScreen setupH264Rules];
      }
    }

    goto LABEL_116;
  }

  v4 = screenWidth;
  screenHeight = [(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings screenHeight];
  if (!screenHeight)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoRuleCollectionsScreen setupH264Rules];
      }
    }

    goto LABEL_116;
  }

  v6 = screenHeight;
  videoEncoderType = [(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings videoEncoderType];
  if (videoEncoderType <= 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoRuleCollectionsScreen setupH264Rules];
      }
    }

LABEL_116:
    v32 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    goto LABEL_117;
  }

  v8 = videoEncoderType;
  deviceClass = [(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings deviceClass];
  if ((deviceClass - 1) < 2)
  {
    if (v8 == 1)
    {
      v19 = 1;
      v20 = &g_WifiEncodingFormat1136x640VXE;
    }

    else if (v4 == 1136 && v6 == 640)
    {
      v19 = 1;
      v20 = &g_WifiEncodingFormat1136x640AVE;
    }

    else if (v4 == 1334 && v6 == 750)
    {
      v19 = 2;
      v20 = &g_WifiEncodingFormat1334x750AVE;
    }

    else
    {
      v20 = &g_WifiEncodingFormat1920x1080AVE;
      if (v4 == 1920 && v6 == 1080)
      {
        v19 = 3;
      }

      else if (v4 == 2436 && v6 == 1125)
      {
        v19 = 4;
        v20 = &g_WifiEncodingFormat2436x1125AVE;
      }

      else if (v4 == 2688 && v6 == 1242)
      {
        v19 = 4;
        v20 = &g_WifiEncodingFormat2436x1125AVE;
      }

      else if (v4 == 1792 && v6 == 828)
      {
        v20 = &g_WifiEncodingFormat2436x1125AVE;
        v19 = 4;
      }

      else
      {
        v19 = 3;
      }
    }

    v14 = newVideoRulesForFormatList(v20, v19);
    if (v4 == 1136 && v6 == 640)
    {
      v15 = newVideoRulesForFormatList(&g_CellEncodingFormat1136x640, 1);
      v16 = newVideoRulesForFormatList(&g_WifiDecodingFormat1136x640, 4);
      v18 = 2;
      v17 = &g_CellDecodingFormat1136x640;
    }

    else if (v4 == 1334 && v6 == 750)
    {
      v15 = newVideoRulesForFormatList(&g_CellEncodingFormat1334x750, 2);
      v16 = newVideoRulesForFormatList(&g_WifiDecodingFormat1334x750, 6);
      v18 = 3;
      v17 = &g_CellDecodingFormat1334x750;
    }

    else
    {
      v25 = v4 == 1920 && v6 == 1080;
      v26 = v25;
      v27 = &g_CellEncodingFormat1920x1080;
      if (v25)
      {
        v28 = 3;
      }

      else if (v4 == 2436 && v6 == 1125)
      {
        v28 = 4;
        v27 = &g_CellEncodingFormat2436x1125AVE;
      }

      else if (v4 == 2688 && v6 == 1242)
      {
        v28 = 4;
        v27 = &g_CellEncodingFormat2436x1125AVE;
      }

      else if (v4 == 1792 && v6 == 828)
      {
        v27 = &g_CellEncodingFormat2436x1125AVE;
        v28 = 4;
      }

      else
      {
        v28 = 3;
      }

      v15 = newVideoRulesForFormatList(v27, v28);
      v29 = &g_WifiDecodingFormat1920x1080;
      if (v26)
      {
        v30 = 8;
      }

      else if (v4 == 2436 && v6 == 1125)
      {
        v30 = 10;
        v29 = &g_WifiDecodingFormat2436x1125;
      }

      else
      {
        v30 = 10;
        if (v4 == 2688 && v6 == 1242)
        {
          v29 = &g_WifiDecodingFormat2436x1125;
        }

        else if (v4 == 1792 && v6 == 828)
        {
          v29 = &g_WifiDecodingFormat2436x1125;
          v30 = 10;
        }

        else
        {
          v30 = 8;
        }
      }

      v16 = newVideoRulesForFormatList(v29, v30);
      v17 = &g_CellDecodingFormat1920x1080;
      if (v26)
      {
        v18 = 4;
      }

      else if (v4 == 2436 && v6 == 1125)
      {
        v18 = 5;
        v17 = &g_CellDecodingFormat2436x1125;
      }

      else if (v4 == 2688 && v6 == 1242)
      {
        v18 = 5;
        v17 = &g_CellDecodingFormat2436x1125;
      }

      else if (v4 == 1792 && v6 == 828)
      {
        v17 = &g_CellDecodingFormat2436x1125;
        v18 = 5;
      }

      else
      {
        v18 = 4;
      }
    }

    goto LABEL_91;
  }

  if (deviceClass == 3 || deviceClass == 8)
  {
    if (v8 == 1)
    {
      v11 = &g_WifiEncodingFormatiPadVXE;
    }

    else
    {
      v11 = &g_WifiEncodingFormatiPadAVE;
    }

    if (v8 == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (v8 == 1)
    {
      v13 = &g_CellEncodingFormatiPadVXE;
    }

    else
    {
      v13 = &g_CellEncodingFormatiPadAVE;
    }

    v14 = newVideoRulesForFormatList(v11, v12);
    v15 = newVideoRulesForFormatList(v13, v12);
    v16 = newVideoRulesForFormatList(&g_WifiDecodingFormatiPad, 12);
    v17 = &g_CellDecodingFormatiPad;
    v18 = 6;
LABEL_91:
    v31 = newVideoRulesForFormatList(v17, v18);
    v32 = v31;
    if (v14)
    {
      v33 = v15 == 0;
    }

    else
    {
      v33 = 1;
    }

    if (!v33 && v16 != 0 && v31 != 0)
    {
      [(VCVideoRuleCollectionsScreen *)self selectPreferredRule:v14 screenSize:v4, v6];
      [(VCVideoRuleCollectionsScreen *)self selectPreferredRule:v16 screenSize:v4, v6];
      [(VCVideoRuleCollectionsScreen *)self selectPreferredRule:v15 screenSize:v4, v6];
      [(VCVideoRuleCollectionsScreen *)self selectPreferredRule:v32 screenSize:v4, v6];
      v24 = 1;
      [(VCVideoRuleCollections *)self addVideoRules:v14 transportType:1 payload:123 encodingType:1];
      [(VCVideoRuleCollections *)self addVideoRules:v16 transportType:1 payload:123 encodingType:2];
      [(VCVideoRuleCollections *)self addVideoRules:v15 transportType:2 payload:123 encodingType:1];
      [(VCVideoRuleCollections *)self addVideoRules:v32 transportType:2 payload:123 encodingType:2];
LABEL_102:

      return v24;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v39 = VRTraceErrorLogLevelToCSTR();
      v40 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v41 = 136315650;
        v42 = v39;
        v43 = 2080;
        v44 = "[VCVideoRuleCollectionsScreen setupH264Rules]";
        v45 = 1024;
        v46 = 436;
        _os_log_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Screen sharing rules: No suitable rules for this device", &v41, 0x1Cu);
      }
    }

LABEL_117:
    v24 = 0;
    goto LABEL_102;
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (ErrorLogLevelForModule >= 7)
  {
    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v41 = 136315650;
      v42 = v22;
      v43 = 2080;
      v44 = "[VCVideoRuleCollectionsScreen setupH264Rules]";
      v45 = 1024;
      v46 = 433;
      _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Device has no screen sharing rules", &v41, 0x1Cu);
    }
  }

  return 0;
}

- (BOOL)setupMacDecodingOnlyRules
{
  [(VCVideoRuleCollections *)self addSupportedPayload:123];
  v3 = newVideoRulesForFormatList(&g_WifiDecodingFormatiPad, 12);
  v4 = newVideoRulesForFormatList(&g_CellDecodingFormatiPad, 6);
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (!v6)
  {
    [(VCVideoRuleCollections *)self addVideoRules:v3 transportType:1 payload:123 encodingType:2];
    [(VCVideoRuleCollections *)self addVideoRules:v5 transportType:2 payload:123 encodingType:2];
  }

  return v7;
}

- (void)initForMacDecodingOnly
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Screen sharing rules: Failed to create Mac Decoding only rules", v2, v3, v4, v5, v6);
}

+ (void)updateScreenRuleCollections:(uint64_t)a1 size:.cold.1(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315906;
      v5 = v2;
      v6 = 2080;
      v7 = "+[VCVideoRuleCollectionsScreen updateScreenRuleCollections:size:]";
      v8 = 1024;
      v9 = 322;
      v10 = 2112;
      v11 = a1;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate rule for ruleCollections=%@", &v4, 0x26u);
    }
  }
}

+ (void)addRulesForU1ToCollection:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v2 = 136315650;
      v3 = v0;
      OUTLINED_FUNCTION_0();
      v4 = 338;
      _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Screen U1 settings failed to calculate resolution", &v2, 0x1Cu);
    }
  }
}

- (void)setupH264Rules
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Screen sharing rules: Could not retrieve main screen width", v2, v3, v4, v5, v6);
}

@end