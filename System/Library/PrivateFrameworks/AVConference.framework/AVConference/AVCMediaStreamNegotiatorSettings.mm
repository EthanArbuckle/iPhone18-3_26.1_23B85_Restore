@interface AVCMediaStreamNegotiatorSettings
+ (id)negotiatorSettingsForMode:(int64_t)mode deviceRole:(unsigned __int8)role options:(id)options errorString:(id *)string;
+ (id)newFilterVideoRuleCollection:(id)collection forDirection:(int64_t)direction;
+ (unint64_t)hdrModeWithNegotiatorInitOptions:(id)options;
- (AVCMediaStreamNegotiatorSettings)initWithOptions:(id)options deviceRole:(unsigned __int8)role defaultDirection:(int64_t)direction error:(id *)error;
- (BOOL)setUpDirection:(int64_t)direction withOptions:(id)options;
- (NSDictionary)featureListString;
- (int64_t)preferredAudioCodecType;
- (void)dealloc;
@end

@implementation AVCMediaStreamNegotiatorSettings

- (AVCMediaStreamNegotiatorSettings)initWithOptions:(id)options deviceRole:(unsigned __int8)role defaultDirection:(int64_t)direction error:(id *)error
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = AVCMediaStreamNegotiatorSettings;
  v8 = [(AVCMediaStreamNegotiatorSettings *)&v11 init:options];
  v9 = v8;
  if (!v8)
  {
    [AVCMediaStreamNegotiatorSettings initWithOptions:deviceRole:defaultDirection:error:];
LABEL_7:

    return 0;
  }

  if (![(AVCMediaStreamNegotiatorSettings *)v8 setUpDirection:direction withOptions:options])
  {
    [AVCMediaStreamNegotiatorSettings initWithOptions:v9 deviceRole:? defaultDirection:? error:?];
    goto LABEL_7;
  }

  v9->_localSSRC = RTPGenerateSSRC();
  v9->_tilesPerFrame = 1;
  v9->_ltrpEnabled = 1;
  v9->_bitrateArbiterMode = VCBitrateArbiter_ModeFromOperatingMode([(AVCMediaStreamNegotiatorSettings *)v9 operatingMode]);
  return v9;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = AVCMediaStreamNegotiatorSettings;
  [(AVCMediaStreamNegotiatorSettings *)&v3 dealloc];
}

- (BOOL)setUpDirection:(int64_t)direction withOptions:(id)options
{
  v10 = *MEMORY[0x1E69E9840];
  self->_mediaStreamDirection = direction;
  v5 = [options objectForKeyedSubscript:@"AVCMediaStreamNegotiatorDirection"];
  if (v5)
  {
    v6 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [AVCMediaStreamNegotiatorSettings setUpDirection:&v9 withOptions:?];
      return v9;
    }

    mediaStreamDirection = [v6 integerValue];
    self->_mediaStreamDirection = mediaStreamDirection;
  }

  else
  {
    mediaStreamDirection = self->_mediaStreamDirection;
  }

  return [AVCMediaStreamNegotiatorSettings isValidDirection:mediaStreamDirection];
}

+ (id)newFilterVideoRuleCollection:(id)collection forDirection:(int64_t)direction
{
  v5 = [collection copy];
  v6 = v5;
  v7 = direction & 0xFFFFFFFFFFFFFFFDLL;
  v8 = direction & 0xFFFFFFFFFFFFFFFELL;
  if (v7 != 1)
  {
    [v5 removeVideoRulesForEncodingType:1];
  }

  if (v8 != 2)
  {
    [v6 removeVideoRulesForEncodingType:2];
  }

  return v6;
}

- (int64_t)preferredAudioCodecType
{
  if (self->_preferredAudioCodecType)
  {
    return self->_preferredAudioCodecType;
  }

  preferredAudioCodec = [(AVCMediaStreamNegotiatorSettings *)self preferredAudioCodec];

  return [VCPayloadUtils codecTypeForPayload:preferredAudioCodec];
}

- (NSDictionary)featureListString
{
  v2 = [VCVideoFeatureListStringHelper newLocalFeaturesStringWithType:[(AVCMediaStreamNegotiatorSettings *)self featureListStringType]];

  return v2;
}

+ (id)negotiatorSettingsForMode:(int64_t)mode deviceRole:(unsigned __int8)role options:(id)options errorString:(id *)string
{
  if ((mode - 1) >= 0xF)
  {
    mode = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to init AVCMediaStreamNegotiatorSettings for mode=%ld", role, options, mode];
  }

  else
  {
    v8 = [objc_alloc(*off_1E85F8028[mode - 1]) initWithOptions:options deviceRole:role error:string];
    mode = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to init AVCMediaStreamNegotiatorSettings for mode=%ld", mode];
    if (v8)
    {
      goto LABEL_6;
    }
  }

  v8 = 0;
  *string = mode;
LABEL_6:

  return v8;
}

+ (unint64_t)hdrModeWithNegotiatorInitOptions:(id)options
{
  if (!options)
  {
    return 0;
  }

  result = [options objectForKeyedSubscript:@"AVCMediaStreamNegotiatorHDRMode"];
  if (result)
  {
    return [objc_msgSend(options objectForKeyedSubscript:{@"AVCMediaStreamNegotiatorHDRMode", "unsignedIntValue"}];
  }

  return result;
}

- (void)initWithOptions:(void *)a1 deviceRole:defaultDirection:error:.cold.1(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v3 = VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v12 = 136315650;
    v13 = v3;
    OUTLINED_FUNCTION_0();
    v14 = 141;
    OUTLINED_FUNCTION_2_0();
LABEL_12:
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v2 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v12 = 136316162;
      v13 = v10;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      v15 = v2;
      v16 = 2048;
      v17 = a1;
      v4 = &dword_1DB56E000;
      v7 = " [%s] %s:%d %@(%p) Failed to setup direction";
      v8 = &v12;
      v5 = v11;
      v6 = OS_LOG_TYPE_ERROR;
      v9 = 48;
      goto LABEL_12;
    }
  }
}

- (void)initWithOptions:deviceRole:defaultDirection:error:.cold.2()
{
  v16 = *MEMORY[0x1E69E9840];
  if (!objc_opt_class())
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v1 = VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v10 = 136315650;
    v11 = v1;
    OUTLINED_FUNCTION_0();
    v12 = 138;
    OUTLINED_FUNCTION_2_0();
LABEL_12:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v0 = [0 performSelector:sel_logPrefix];
  }

  else
  {
    v0 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v10 = 136316162;
      v11 = v8;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      v13 = v0;
      v14 = 2048;
      v15 = 0;
      v2 = &dword_1DB56E000;
      v5 = " [%s] %s:%d %@(%p) Failed to allocate options";
      v6 = &v10;
      v3 = v9;
      v4 = OS_LOG_TYPE_ERROR;
      v7 = 48;
      goto LABEL_12;
    }
  }
}

- (void)setUpDirection:(void *)a1 withOptions:(_BYTE *)a2 .cold.1(void *a1, _BYTE *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_10;
    }

    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v12 = 136315650;
    v13 = v5;
    OUTLINED_FUNCTION_0();
    v14 = 180;
    v7 = " [%s] %s:%d Invalid direction entry";
    v8 = v6;
    v9 = 28;
LABEL_12:
    _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, v7, &v12, v9);
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v4 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v12 = 136316162;
      v13 = v10;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      v15 = v4;
      v16 = 2048;
      v17 = a1;
      v7 = " [%s] %s:%d %@(%p) Invalid direction entry";
      v8 = v11;
      v9 = 48;
      goto LABEL_12;
    }
  }

LABEL_10:
  *a2 = 0;
}

@end