@interface VCMediaNegotiatorBase
+ (BOOL)featureListStringsRequiredForMediaType:(unsigned __int8)type;
+ (BOOL)isU1StreamGroup:(unsigned int)group;
+ (BOOL)selectBestVideoRuleForTransport:(unsigned __int8)transport payload:(int)payload encodingType:(unsigned __int8)type videoSettings:(id)settings localVideoRuleCollection:(id)collection remoteVideoRuleCollection:(id)ruleCollection;
+ (BOOL)v1FeatureListStringsSupportedForMediaType:(unsigned __int8)type;
+ (id)getPreferredVideoPayloadList:(id)list localSupportedPayloads:(id)payloads mediaType:(unsigned __int8)type;
+ (id)negotiateVideoMaxResolutionWithEncodeRules:(id)rules decodeRules:(id)decodeRules isEncoder:(BOOL)encoder;
+ (id)newNegotiatedAudioPayloadsWithLocalPayloads:(id)payloads remotePayloads:(id)remotePayloads;
+ (id)preferredPayloadsForMediaType:(unsigned __int8)type;
+ (unsigned)featureListStringTypeForMediaType:(unsigned __int8)type;
+ (void)applyCellularPreferredRule:(id)rule;
+ (void)setupNegotiatedAudioPayloads:(id)payloads negotiatedAudioSettings:(id)settings primaryPayloadPreference:(id)preference;
- (BOOL)setUpU1MediaSettings;
- (VCMediaNegotiatorBase)initWithLocalSettings:(id)settings;
- (VCMediaNegotiatorResultsAudio)negotiatedAudioSettings;
- (VCMediaNegotiatorResultsVideo)negotiatedScreenSettings;
- (VCMediaNegotiatorResultsVideo)negotiatedVideoSettings;
- (id)negotiatedResultsForGroupID:(unsigned int)d;
- (id)negotiatedResultsForGroupID:(unsigned int)d localU1Config:(id)config remoteU1Config:(id)u1Config;
- (id)negotiatedStreamGroupConfigForGroupID:(unsigned int)d negotiatedStreamGroupConfigs:(id)configs;
- (void)dealloc;
- (void)setUpU1MediaSettings;
@end

@implementation VCMediaNegotiatorBase

- (BOOL)setUpU1MediaSettings
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  self->_negotiatedU1MediaSettings = v3;
  if (v3)
  {
    v4 = [[VCMediaNegotiatorResultsAudio alloc] initWithACC24ForU1Enabled:[(VCMediaNegotiatorLocalConfiguration *)self->_localSettings enableACC24ForU1]];
    if (v4)
    {
      v5 = v4;
      [(NSMutableDictionary *)self->_negotiatedU1MediaSettings setObject:v4 forKeyedSubscript:&unk_1F5798058];

      v6 = objc_alloc_init(VCMediaNegotiatorResultsVideo);
      if (v6)
      {
        v7 = v6;
        [(NSMutableDictionary *)self->_negotiatedU1MediaSettings setObject:v6 forKeyedSubscript:&unk_1F5798070];

        v8 = objc_alloc_init(VCMediaNegotiatorResultsVideo);
        if (v8)
        {
          v9 = v8;
          [(NSMutableDictionary *)self->_negotiatedU1MediaSettings setObject:v8 forKeyedSubscript:&unk_1F5798088];

          return 1;
        }

        else
        {
          [VCMediaNegotiatorBase setUpU1MediaSettings];
          return v11;
        }
      }

      else
      {
        [VCMediaNegotiatorBase setUpU1MediaSettings];
        return v12;
      }
    }

    else
    {
      [VCMediaNegotiatorBase setUpU1MediaSettings];
      return v13;
    }
  }

  else
  {
    [VCMediaNegotiatorBase setUpU1MediaSettings];
    return v14;
  }
}

- (VCMediaNegotiatorBase)initWithLocalSettings:(id)settings
{
  v27 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = VCMediaNegotiatorBase;
  v4 = [(VCMediaNegotiatorBase *)&v16 init];
  if (v4)
  {
    settingsCopy = settings;
    v4->_localSettings = settingsCopy;
    v6 = [(VCMediaNegotiatorLocalConfiguration *)settingsCopy mediaConfigurationForMediaType:1];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        preferredAudioCodec = [(VCMediaNegotiatorLocalConfiguration *)v4->_localSettings preferredAudioCodec];
        allowAudioSwitching = [v6 allowAudioSwitching];
        *buf = 136316162;
        v18 = v7;
        v19 = 2080;
        v20 = "[VCMediaNegotiatorBase initWithLocalSettings:]";
        v21 = 1024;
        v22 = 70;
        v23 = 1024;
        v24 = preferredAudioCodec;
        v25 = 1024;
        v26 = allowAudioSwitching;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Local preferredAudioCodec=%u, allowAudioSwitching=%{BOOL}d", buf, 0x28u);
      }
    }

    v11 = objc_alloc_init(VCMediaNegotiatorResults);
    v4->_negotiatedSettings = v11;
    if (v11)
    {
      if ([(VCMediaNegotiatorBase *)v4 setUpU1MediaSettings])
      {
        v12 = objc_alloc_init(VCMediaNegotiatorResultsMediaRecorder);
        v4->_negotiatedMediaRecorderSettings = v12;
        if (v12)
        {
          v13 = objc_alloc_init(VCMediaNegotiatorResultsFaceTimeSettings);
          v4->_negotiatedFaceTimeSettings = v13;
          if (v13)
          {
            v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v4->_negotiatedStreamGroups = v14;
            if (v14)
            {
              return v4;
            }

            [VCMediaNegotiatorBase initWithLocalSettings:];
          }

          else
          {
            [VCMediaNegotiatorBase initWithLocalSettings:];
          }
        }

        else
        {
          [VCMediaNegotiatorBase initWithLocalSettings:];
        }
      }
    }

    else
    {
      [VCMediaNegotiatorBase initWithLocalSettings:];
    }

    return 0;
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCMediaNegotiatorBase;
  [(VCMediaNegotiatorBase *)&v3 dealloc];
}

- (VCMediaNegotiatorResultsAudio)negotiatedAudioSettings
{
  v2 = [(NSMutableDictionary *)self->_negotiatedU1MediaSettings objectForKeyedSubscript:&unk_1F5798058];

  return v2;
}

- (VCMediaNegotiatorResultsVideo)negotiatedVideoSettings
{
  v2 = [(NSMutableDictionary *)self->_negotiatedU1MediaSettings objectForKeyedSubscript:&unk_1F5798070];

  return v2;
}

- (VCMediaNegotiatorResultsVideo)negotiatedScreenSettings
{
  v2 = [(NSMutableDictionary *)self->_negotiatedU1MediaSettings objectForKeyedSubscript:&unk_1F5798088];

  return v2;
}

- (id)negotiatedStreamGroupConfigForGroupID:(unsigned int)d negotiatedStreamGroupConfigs:(id)configs
{
  v30 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [configs countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v27 != v8)
      {
        objc_enumerationMutation(configs);
      }

      v10 = *(*(&v26 + 1) + 8 * v9);
      if ([v10 groupID] == d)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [configs countByEnumeratingWithState:&v26 objects:v25 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315906;
        v18 = v11;
        v19 = 2080;
        v20 = "[VCMediaNegotiatorBase negotiatedStreamGroupConfigForGroupID:negotiatedStreamGroupConfigs:]";
        v21 = 1024;
        v22 = 154;
        v23 = 2080;
        v24 = FourccToCStr(d);
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Found one to one stream group for groupID=%s", &v17, 0x26u);
      }
    }

    if (v10)
    {
      return v10;
    }
  }

LABEL_14:
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v15 = FourccToCStr(d);
      v17 = 136315906;
      v18 = v13;
      v19 = 2080;
      v20 = "[VCMediaNegotiatorBase negotiatedStreamGroupConfigForGroupID:negotiatedStreamGroupConfigs:]";
      v21 = 1024;
      v22 = 158;
      v23 = 2080;
      v24 = v15;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to find one to one stream group for groupID=%s", &v17, 0x26u);
    }
  }

  v10 = 0;
  return v10;
}

- (id)negotiatedResultsForGroupID:(unsigned int)d
{
  v3 = -[NSMutableDictionary objectForKeyedSubscript:](self->_negotiatedU1MediaSettings, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedChar:VCMediaNegotiatorMediaType_MediaTypeFromStreamGroupID(d)]);

  return v3;
}

+ (BOOL)featureListStringsRequiredForMediaType:(unsigned __int8)type
{
  typeCopy = type;
  v23 = *MEMORY[0x1E69E9840];
  v5 = type - 2;
  if (type - 2) < 5 && ((0x1Bu >> v5))
  {
    v6 = 0xFu >> v5;
  }

  else
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          +[VCMediaNegotiatorBase featureListStringsRequiredForMediaType:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v11 = 136316418;
          v12 = v8;
          v13 = 2080;
          v14 = "+[VCMediaNegotiatorBase featureListStringsRequiredForMediaType:]";
          v15 = 1024;
          v16 = 185;
          v17 = 2112;
          v18 = v7;
          v19 = 2048;
          selfCopy = self;
          v21 = 1024;
          v22 = typeCopy;
          _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unexpected mediaType=%hhu", &v11, 0x36u);
        }
      }
    }

    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

+ (BOOL)v1FeatureListStringsSupportedForMediaType:(unsigned __int8)type
{
  typeCopy = type;
  v23 = *MEMORY[0x1E69E9840];
  v5 = type - 2;
  if (type - 2) < 5 && ((0x1Bu >> v5))
  {
    v6 = 7u >> v5;
  }

  else
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          +[VCMediaNegotiatorBase v1FeatureListStringsSupportedForMediaType:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v11 = 136316418;
          v12 = v8;
          v13 = 2080;
          v14 = "+[VCMediaNegotiatorBase v1FeatureListStringsSupportedForMediaType:]";
          v15 = 1024;
          v16 = 207;
          v17 = 2112;
          v18 = v7;
          v19 = 2048;
          selfCopy = self;
          v21 = 1024;
          v22 = typeCopy;
          _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unexpected mediaType=%hhu", &v11, 0x36u);
        }
      }
    }

    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

+ (unsigned)featureListStringTypeForMediaType:(unsigned __int8)type
{
  v22 = *MEMORY[0x1E69E9840];
  if (type == 2)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    typeCopy = type;
    if (type == 5)
    {
      LOBYTE(v4) = 7;
    }

    else
    {
      if (type != 3)
      {
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            v4 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
            if (!v4)
            {
              return v4;
            }

            +[VCMediaNegotiatorBase featureListStringTypeForMediaType:];
          }
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v6 = [self performSelector:sel_logPrefix];
          }

          else
          {
            v6 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v7 = VRTraceErrorLogLevelToCSTR();
            v8 = *MEMORY[0x1E6986650];
            v4 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
            if (!v4)
            {
              return v4;
            }

            v10 = 136316418;
            v11 = v7;
            v12 = 2080;
            v13 = "+[VCMediaNegotiatorBase featureListStringTypeForMediaType:]";
            v14 = 1024;
            v15 = 230;
            v16 = 2112;
            v17 = v6;
            v18 = 2048;
            selfCopy = self;
            v20 = 1024;
            v21 = typeCopy;
            _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unexpected mediaType=%hhu", &v10, 0x36u);
          }
        }

        LOBYTE(v4) = 0;
        return v4;
      }

      LOBYTE(v4) = 6;
    }
  }

  return v4;
}

+ (BOOL)isU1StreamGroup:(unsigned int)group
{
  result = 1;
  if (group > 1835623281)
  {
    if (group != 1835623282 && group != 1935897189)
    {
      v4 = 1937339233;
LABEL_8:
      if (group != v4)
      {
        return 0;
      }
    }
  }

  else if (group != 1650745716 && group != 1667329381)
  {
    v4 = 1718909044;
    goto LABEL_8;
  }

  return result;
}

- (id)negotiatedResultsForGroupID:(unsigned int)d localU1Config:(id)config remoteU1Config:(id)u1Config
{
  v7 = *&d;
  v18 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 136315906;
      *&v11[4] = v8;
      v12 = 2080;
      v13 = "[VCMediaNegotiatorBase negotiatedResultsForGroupID:localU1Config:remoteU1Config:]";
      v14 = 1024;
      v15 = 297;
      v16 = 2080;
      v17 = FourccToCStr(v7);
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Get negotiated results for stream group groupID=%s", v11, 0x26u);
    }
  }

  if ([objc_opt_class() isU1StreamGroup:v7])
  {
    if ([objc_opt_class() isAudioStreamGroup:v7])
    {
      return [VCMediaNegotiatorStreamGroupU1Configuration negotiatedAudioSettingsForGroupID:v7 localU1Config:config remoteU1Config:u1Config];
    }

    else
    {
      return [VCMediaNegotiatorStreamGroupU1Configuration negotiatedVideoSettingsForGroupID:v7 localU1Config:config remoteU1Config:u1Config];
    }
  }

  else
  {
    [VCMediaNegotiatorBase negotiatedResultsForGroupID:v7 localU1Config:v11 remoteU1Config:?];
    return *v11;
  }
}

+ (id)preferredPayloadsForMediaType:(unsigned __int8)type
{
  if (type - 2) < 5 && ((0x1Bu >> (type - 2)))
  {
    return qword_1E85F3ED8[(type - 2)];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      +[VCMediaNegotiatorBase preferredPayloadsForMediaType:];
    }
  }

  return 0;
}

+ (id)getPreferredVideoPayloadList:(id)list localSupportedPayloads:(id)payloads mediaType:(unsigned __int8)type
{
  typeCopy = type;
  v33 = *MEMORY[0x1E69E9840];
  if (![+[VCDefaults forceHWI] sharedInstance]
  {
    return [self preferredPayloadsForMediaType:typeCopy];
  }

  forceVideoPayload = [+[VCDefaults sharedInstance](VCDefaults forceVideoPayload];
  if (forceVideoPayload == 128)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return [self preferredPayloadsForMediaType:typeCopy];
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return [self preferredPayloadsForMediaType:typeCopy];
    }

    *buf = 136315650;
    v26 = v10;
    v27 = 2080;
    v28 = "+[VCMediaNegotiatorBase getPreferredVideoPayloadList:localSupportedPayloads:mediaType:]";
    v29 = 1024;
    v30 = 341;
    v12 = " [%s] %s:%d Video payload OVERRIDE is PL_INVALID! Ignoring ...";
    v13 = v11;
    v14 = 28;
LABEL_19:
    _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
    return [self preferredPayloadsForMediaType:typeCopy];
  }

  v15 = forceVideoPayload;
  if (([list containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", forceVideoPayload)}] & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return [self preferredPayloadsForMediaType:typeCopy];
    }

    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return [self preferredPayloadsForMediaType:typeCopy];
    }

    *buf = 136315906;
    v26 = v21;
    v27 = 2080;
    v28 = "+[VCMediaNegotiatorBase getPreferredVideoPayloadList:localSupportedPayloads:mediaType:]";
    v29 = 1024;
    v30 = 343;
    v31 = 1024;
    v32 = v15;
    v12 = " [%s] %s:%d Remote client doesn't support video OVERRIDE payload (%d). Ignoring ...";
LABEL_18:
    v13 = v22;
    v14 = 34;
    goto LABEL_19;
  }

  v16 = [payloads containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v15)}];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if ((v16 & 1) == 0)
  {
    if (ErrorLogLevelForModule < 5)
    {
      return [self preferredPayloadsForMediaType:typeCopy];
    }

    v23 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return [self preferredPayloadsForMediaType:typeCopy];
    }

    *buf = 136315906;
    v26 = v23;
    v27 = 2080;
    v28 = "+[VCMediaNegotiatorBase getPreferredVideoPayloadList:localSupportedPayloads:mediaType:]";
    v29 = 1024;
    v30 = 345;
    v31 = 1024;
    v32 = v15;
    v12 = " [%s] %s:%d Local client doesn't support video OVERRIDE payload (%d). Ignoring ...";
    goto LABEL_18;
  }

  if (ErrorLogLevelForModule >= 5)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v26 = v18;
      v27 = 2080;
      v28 = "+[VCMediaNegotiatorBase getPreferredVideoPayloadList:localSupportedPayloads:mediaType:]";
      v29 = 1024;
      v30 = 347;
      v31 = 1024;
      v32 = v15;
      _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Video payload OVERRIDE to %d", buf, 0x22u);
    }
  }

  v24 = [MEMORY[0x1E696AD98] numberWithInt:v15];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
}

+ (id)negotiateVideoMaxResolutionWithEncodeRules:(id)rules decodeRules:(id)decodeRules isEncoder:(BOOL)encoder
{
  encoderCopy = encoder;
  v34 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [decodeRules reverseObjectEnumerator];
  result = [obj countByEnumeratingWithState:&v30 objects:v29 count:16];
  if (result)
  {
    v7 = result;
    v23 = 0;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        reverseObjectEnumerator = [rules reverseObjectEnumerator];
        v12 = [reverseObjectEnumerator countByEnumeratingWithState:&v25 objects:v24 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v26;
LABEL_8:
          v15 = 0;
          while (1)
          {
            if (*v26 != v14)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v16 = *(*(&v25 + 1) + 8 * v15);
            v17 = [v10 compare:v16];
            if (v17 == 1)
            {
              break;
            }

            if (!v17)
            {
              [v10 fPref];
              if (encoderCopy)
              {
                v19 = v16;
              }

              else
              {
                v19 = v10;
              }

              if (v18 != 1.0)
              {
                v20 = v23;
                if (!v23)
                {
                  v20 = v19;
                }

                v23 = v20;
                break;
              }

              return [MEMORY[0x1E695DF70] arrayWithObjects:0];
            }

            if (v13 == ++v15)
            {
              v13 = [reverseObjectEnumerator countByEnumeratingWithState:&v25 objects:v24 count:16];
              if (v13)
              {
                goto LABEL_8;
              }

              break;
            }
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v30 objects:v29 count:16];
    }

    while (v7);
    if (v23)
    {
      return [MEMORY[0x1E695DF70] arrayWithObjects:0];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

+ (BOOL)selectBestVideoRuleForTransport:(unsigned __int8)transport payload:(int)payload encodingType:(unsigned __int8)type videoSettings:(id)settings localVideoRuleCollection:(id)collection remoteVideoRuleCollection:(id)ruleCollection
{
  typeCopy = type;
  v12 = *&payload;
  transportCopy = transport;
  v58 = *MEMORY[0x1E69E9840];
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v14)
  {
    +[VCMediaNegotiatorBase selectBestVideoRuleForTransport:payload:encodingType:videoSettings:localVideoRuleCollection:remoteVideoRuleCollection:];
    v32 = buf[0];
    goto LABEL_32;
  }

  v15 = [collection getVideoRulesForTransport:transportCopy payload:v12 encodingType:typeCopy];
  if (!v15)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_44;
    }

    v34 = VRTraceErrorLogLevelToCSTR();
    v35 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_44;
    }

    *buf = 136316418;
    v47 = v34;
    v48 = 2080;
    v49 = "+[VCMediaNegotiatorBase selectBestVideoRuleForTransport:payload:encodingType:videoSettings:localVideoRuleCollection:remoteVideoRuleCollection:]";
    v50 = 1024;
    v51 = 396;
    v52 = 1024;
    v53 = v12;
    v54 = 1024;
    v55 = transportCopy;
    v56 = 1024;
    v57 = typeCopy;
    v36 = " [%s] %s:%d No local video rules for payload=%d transport=%d encoding=%d";
    goto LABEL_43;
  }

  v16 = v15;
  if (typeCopy == 2)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  v18 = [ruleCollection getVideoRulesForTransport:transportCopy payload:v12 encodingType:v17];
  if (!v18)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_44;
    }

    v37 = VRTraceErrorLogLevelToCSTR();
    v35 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_44;
    }

    *buf = 136316418;
    v47 = v37;
    v48 = 2080;
    v49 = "+[VCMediaNegotiatorBase selectBestVideoRuleForTransport:payload:encodingType:videoSettings:localVideoRuleCollection:remoteVideoRuleCollection:]";
    v50 = 1024;
    v51 = 400;
    v52 = 1024;
    v53 = v12;
    v54 = 1024;
    v55 = transportCopy;
    v56 = 1024;
    v57 = typeCopy;
    v36 = " [%s] %s:%d No remote video rules for payload=%d transport=%d encoding=%d";
    goto LABEL_43;
  }

  v19 = v18;
  p_cache = (VCAudioStreamSendGroup + 16);
  if (transportCopy == 2)
  {
    if (typeCopy == 1)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v21 = [v16 countByEnumeratingWithState:&v42 objects:v41 count:16];
      v22 = v14;
      if (v21)
      {
        v23 = v21;
        settingsCopy = settings;
        v40 = v12 | 0x200000000;
        v24 = *v43;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v43 != v24)
            {
              objc_enumerationMutation(v16);
            }

            v26 = *(*(&v42 + 1) + 8 * i);
            if ([v19 containsObject:v26 matchingComparison:{sel_compare_, settingsCopy, v40}])
            {
              [v14 addObject:v26];
            }
          }

          v23 = [v16 countByEnumeratingWithState:&v42 objects:v41 count:16];
        }

        while (v23);
        v22 = v14;
        v12 = v40;
        transportCopy = HIDWORD(v40);
        settings = settingsCopy;
      }
    }

    else
    {
      v22 = v18;
    }

    p_cache = VCAudioStreamSendGroup.cache;
    [VCMediaNegotiatorBase applyCellularPreferredRule:v22];
    v19 = v22;
  }

  if (typeCopy == 1)
  {
    v27 = v16;
  }

  else
  {
    v27 = v19;
  }

  if (typeCopy == 1)
  {
    v28 = v19;
  }

  else
  {
    v28 = v16;
  }

  v29 = [p_cache + 433 negotiateVideoMaxResolutionWithEncodeRules:v27 decodeRules:v28 isEncoder:typeCopy == 1];
  if (!v29)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_44;
    }

    v38 = VRTraceErrorLogLevelToCSTR();
    v35 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_44;
    }

    *buf = 136316418;
    v47 = v38;
    v48 = 2080;
    v49 = "+[VCMediaNegotiatorBase selectBestVideoRuleForTransport:payload:encodingType:videoSettings:localVideoRuleCollection:remoteVideoRuleCollection:]";
    v50 = 1024;
    v51 = 417;
    v52 = 1024;
    v53 = v12;
    v54 = 1024;
    v55 = transportCopy;
    v56 = 1024;
    v57 = typeCopy;
    v36 = " [%s] %s:%d No matching remote rules for payload=%d transport=%d encoding=%d";
LABEL_43:
    _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, v36, buf, 0x2Eu);
LABEL_44:
    v32 = 0;
    goto LABEL_32;
  }

  [settings addVideoRules:v29 transportType:transportCopy payload:v12 encodingType:typeCopy];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v30 = VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v47 = v30;
      v48 = 2080;
      v49 = "+[VCMediaNegotiatorBase selectBestVideoRuleForTransport:payload:encodingType:videoSettings:localVideoRuleCollection:remoteVideoRuleCollection:]";
      v50 = 1024;
      v51 = 420;
      v52 = 1024;
      v53 = v12;
      v54 = 1024;
      v55 = transportCopy;
      v56 = 1024;
      v57 = typeCopy;
      _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Negotiated rules added for payloadType=%d, transportType=%d, encodingType=%d", buf, 0x2Eu);
    }
  }

  v32 = 1;
LABEL_32:

  return v32;
}

+ (void)applyCellularPreferredRule:(id)rule
{
  v25 = *MEMORY[0x1E69E9840];
  v22[0] = xmmword_1DBD45910;
  v22[1] = xmmword_1DBD45920;
  v22[2] = xmmword_1DBD45930;
  v23 = 0x24000000400;
  v24 = 15;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [rule countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v19;
    v8 = -1;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(rule);
        }

        v10 = 0;
        v11 = v8;
        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = v22 + 1;
        while ([v12 iWidth] != *(v13 - 1) || objc_msgSend(v12, "iHeight") != *v13)
        {
          ++v10;
          v13 += 3;
          if (v10 == 5)
          {
            v8 = v11;
            goto LABEL_23;
          }
        }

        if (!v6)
        {
          v8 = v10;
          goto LABEL_22;
        }

        if (v11 == v10)
        {
          [v6 fRate];
          v16 = v15;
          [v12 fRate];
          if (v16 < *&v14)
          {
            v8 = v11;
LABEL_22:
            v6 = v12;
            goto LABEL_23;
          }
        }

        if (v10 <= v11)
        {
          v8 = v11;
        }

        else
        {
          v8 = v10;
        }

        if (v11 < v10)
        {
          v6 = v12;
        }

LABEL_23:
        if (v8 == 4)
        {
          goto LABEL_26;
        }
      }

      v5 = [rule countByEnumeratingWithState:&v18 objects:v17 count:16];
      if (!v5)
      {
LABEL_26:
        if (v6)
        {
          LODWORD(v14) = 1.0;
          [v6 setFPref:v14];
        }

        return;
      }
    }
  }
}

+ (id)newNegotiatedAudioPayloadsWithLocalPayloads:(id)payloads remotePayloads:(id)remotePayloads
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = [payloads mutableCopy];
  [v6 intersectSet:remotePayloads];
  if (VRTraceGetErrorLogLevelForModule() < 7)
  {
    return v6;
  }

  __str = 0;
  if (v6)
  {
    v7 = [objc_msgSend(v6 "description")];
    if (payloads)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = "<nil>";
    if (remotePayloads)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  v7 = "<nil>";
  if (!payloads)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = [objc_msgSend(payloads "description")];
  if (remotePayloads)
  {
LABEL_5:
    v9 = [objc_msgSend(remotePayloads "description")];
    goto LABEL_9;
  }

LABEL_8:
  v9 = "<nil>";
LABEL_9:
  asprintf(&__str, "Negotiated payloads=%s, localSupportedPayloads=%s, remoteSupportedPayloads=%s", v7, v8, v9);
  if (__str)
  {
    __lasts = 0;
    v10 = strtok_r(__str, "\n", &__lasts);
    v11 = MEMORY[0x1E6986650];
    do
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *v11;
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v18 = v12;
          v19 = 2080;
          v20 = "+[VCMediaNegotiatorBase newNegotiatedAudioPayloadsWithLocalPayloads:remotePayloads:]";
          v21 = 1024;
          v22 = 467;
          v23 = 2080;
          v24 = "";
          v25 = 2080;
          v26 = v10;
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
        }
      }

      v10 = strtok_r(0, "\n", &__lasts);
    }

    while (v10);
    free(__str);
  }

  return v6;
}

+ (void)setupNegotiatedAudioPayloads:(id)payloads negotiatedAudioSettings:(id)settings primaryPayloadPreference:(id)preference
{
  v24 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [payloads countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(payloads);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        unsignedIntValue = [v13 unsignedIntValue];
        v15 = unsignedIntValue;
        switch(unsignedIntValue)
        {
          case 0x71:
            if (![settings enableACC24ForU1])
            {
              goto LABEL_18;
            }

            break;
          case 0x14:
            [settings setRedPayload:20];
            goto LABEL_18;
          case 0xD:
            [settings setDtxPayload:13];
            goto LABEL_18;
        }

        v16 = [preference indexOfObject:v13];
        if (v16 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_13:
          [settings addSecondaryPayload:v15];
          goto LABEL_18;
        }

        v17 = v16;
        if (v11 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_17;
        }

        if (v16 < v11)
        {
          [settings addSecondaryPayload:{objc_msgSend(settings, "primaryPayload")}];
LABEL_17:
          [settings setPrimaryPayload:v15];
          v11 = v17;
          goto LABEL_18;
        }

        if (v16 > v11)
        {
          goto LABEL_13;
        }

LABEL_18:
        ++v12;
      }

      while (v9 != v12);
      v18 = [payloads countByEnumeratingWithState:&v20 objects:v19 count:16];
      v9 = v18;
    }

    while (v18);
  }
}

- (void)setUpU1MediaSettings
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)initWithLocalSettings:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate the negotiated stream groups array", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithLocalSettings:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate FaceTime settings results", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithLocalSettings:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate negotiation moments results", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithLocalSettings:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate negotiation results", v2, v3, v4, v5, v6);
    }
  }
}

+ (void)featureListStringsRequiredForMediaType:.cold.1()
{
  OUTLINED_FUNCTION_3();
  *&v3[6] = "+[VCMediaNegotiatorBase featureListStringsRequiredForMediaType:]";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Unexpected mediaType=%hhu", v2, *v3, "+[VCMediaNegotiatorBase featureListStringsRequiredForMediaType:]" >> 16, v4);
}

+ (void)v1FeatureListStringsSupportedForMediaType:.cold.1()
{
  OUTLINED_FUNCTION_3();
  *&v3[6] = "+[VCMediaNegotiatorBase v1FeatureListStringsSupportedForMediaType:]";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Unexpected mediaType=%hhu", v2, *v3, "+[VCMediaNegotiatorBase v1FeatureListStringsSupportedForMediaType:]" >> 16, v4);
}

+ (void)featureListStringTypeForMediaType:.cold.1()
{
  OUTLINED_FUNCTION_3();
  *&v3[6] = "+[VCMediaNegotiatorBase featureListStringTypeForMediaType:]";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Unexpected mediaType=%hhu", v2, *v3, "+[VCMediaNegotiatorBase featureListStringTypeForMediaType:]" >> 16, v4);
}

- (void)negotiatedResultsForGroupID:(int)a1 localU1Config:(void *)a2 remoteU1Config:.cold.1(int a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      FourccToCStr(a1);
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
    }
  }

  *a2 = 0;
}

+ (void)preferredPayloadsForMediaType:.cold.1()
{
  OUTLINED_FUNCTION_3();
  *&v3[6] = "+[VCMediaNegotiatorBase preferredPayloadsForMediaType:]";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Unexpected mediaType=%hhu", v2, *v3, "+[VCMediaNegotiatorBase preferredPayloadsForMediaType:]" >> 16, v4);
}

+ (void)selectBestVideoRuleForTransport:payload:encodingType:videoSettings:localVideoRuleCollection:remoteVideoRuleCollection:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

@end