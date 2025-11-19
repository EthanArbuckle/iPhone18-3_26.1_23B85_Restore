@interface VCVideoStreamConfig
+ (BOOL)validateClientDictionary:(id)a3;
+ (id)profileLevelStringForId:(unsigned int)a3;
+ (unsigned)profileLevelIdForString:(id)a3;
- (BOOL)applyVideoStreamClientDictionary:(id)a3;
- (BOOL)applyVideoStreamXPCDictionary:(id)a3;
- (VCVideoStreamConfig)initWithClientDictionary:(id)a3 xpcDictionary:(id)a4;
- (id)newTagCollectionArrayFromDescriptionArray:(id)a3 count:(unint64_t)a4;
- (int)deserializePDDecryptionContext;
- (void)addRxCodecFeatureListString:(id)a3 codecType:(int64_t)a4;
- (void)addTxBitrateTier:(id)a3;
- (void)addTxCodecFeatureListString:(id)a3 codecType:(int64_t)a4;
- (void)dealloc;
- (void)deserializePDDecryptionContext;
@end

@implementation VCVideoStreamConfig

- (VCVideoStreamConfig)initWithClientDictionary:(id)a3 xpcDictionary:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    __str = 0;
    v7 = objc_opt_class() ? [objc_msgSend(objc_opt_class() "description")] : "<nil>";
    asprintf(&__str, "%s[%p] %s", v7, self, [objc_msgSend(a3 "description")]);
    if (__str)
    {
      __lasts = 0;
      v8 = strtok_r(__str, "\n", &__lasts);
      v9 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v10 = VRTraceErrorLogLevelToCSTR();
          v11 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v24 = v10;
            v25 = 2080;
            v26 = "[VCVideoStreamConfig initWithClientDictionary:xpcDictionary:]";
            v27 = 1024;
            v28 = 195;
            v29 = 2080;
            v30 = "[VCVideoStreamConfig initWithClientDictionary:xpcDictionary:]";
            v31 = 2080;
            v32 = v8;
            _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v8 = strtok_r(0, "\n", &__lasts);
      }

      while (v8);
      free(__str);
    }
  }

  v20.receiver = self;
  v20.super_class = VCVideoStreamConfig;
  v12 = [(VCMediaStreamConfig *)&v20 initWithClientDictionary:a3 xpcDictionary:a4];
  v13 = v12;
  if (v12)
  {
    v12->_tilesPerFrame = 1;
    v12->_enableInterleavedEncoding = 0;
    v12->_txBitrateTiers = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v13->_rxCodecFeatureListStrings = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13->_txCodecFeatureListStrings = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13->_mediaStallTimeout = NAN;
    v13->_mediaStallReportRepeatInterval = NAN;
    if (a3)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        __str = 0;
        v14 = objc_opt_class() ? [objc_msgSend(objc_opt_class() "description")] : "<nil>";
        asprintf(&__str, "%s[%p] %s", v14, v13, [objc_msgSend(a3 "description")]);
        if (__str)
        {
          __lasts = 0;
          v15 = strtok_r(__str, "\n", &__lasts);
          v16 = MEMORY[0x1E6986650];
          do
          {
            if (VRTraceGetErrorLogLevelForModule() >= 6)
            {
              v17 = VRTraceErrorLogLevelToCSTR();
              v18 = *v16;
              if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316162;
                v24 = v17;
                v25 = 2080;
                v26 = "[VCVideoStreamConfig initWithClientDictionary:xpcDictionary:]";
                v27 = 1024;
                v28 = 206;
                v29 = 2080;
                v30 = "[VCVideoStreamConfig initWithClientDictionary:xpcDictionary:]";
                v31 = 2080;
                v32 = v15;
                _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
              }
            }

            v15 = strtok_r(0, "\n", &__lasts);
          }

          while (v15);
          free(__str);
        }
      }

      if (![(VCVideoStreamConfig *)v13 applyVideoStreamClientDictionary:a3])
      {
        goto LABEL_30;
      }
    }

    if (a4 && ![(VCVideoStreamConfig *)v13 applyVideoStreamXPCDictionary:a4])
    {
LABEL_30:

      return 0;
    }

    else
    {
      v13->_useVideoJitterForVideoPlayout = [GKSConnectivitySettings isFeatureEnabledForStorebagKey:@"vc-video-jitter-buffer-for-video-playout" userDefaultKey:@"UseVideoJitterForVideoPlayoutForFaceTime" featureFlagDomain:"AVConference" featureFlagName:"UseVideoJitterForVideoPlayout"];
      v13->_resetSendRTPTimestampOnStop = 1;
    }
  }

  return v13;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCVideoStreamConfig;
  [(VCMediaStreamConfig *)&v3 dealloc];
}

+ (unsigned)profileLevelIdForString:(id)a3
{
  if ([a3 isEqualToString:*MEMORY[0x1E6983EB8]])
  {
    return 4374559;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    [VCVideoStreamConfig profileLevelIdForString:v4];
  }

  return 0;
}

+ (id)profileLevelStringForId:(unsigned int)a3
{
  if (a3 == 4374559)
  {
    return *MEMORY[0x1E6983EB8];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCVideoStreamConfig profileLevelStringForId:v4];
    }
  }

  return 0;
}

- (id)newTagCollectionArrayFromDescriptionArray:(id)a3 count:(unint64_t)a4
{
  cf[1] = *MEMORY[0x1E69E9840];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4];
  if (!v6)
  {
    [VCVideoStreamConfig newTagCollectionArrayFromDescriptionArray:count:];
LABEL_18:

    return 0;
  }

  if (a4)
  {
    v7 = 0;
    v8 = *MEMORY[0x1E695E480];
    while (1)
    {
      if (!xpc_array_get_value(a3, v7))
      {
        [VCVideoStreamConfig newTagCollectionArrayFromDescriptionArray:count:];
        goto LABEL_18;
      }

      v9 = _CFXPCCreateCFObjectFromXPCObject();
      cf[0] = 0;
      v10 = CMTagCollectionCreateFromDictionary(v9, v8, cf);
      if (v10)
      {
        if ([(VCVideoStreamConfig *)v7 newTagCollectionArrayFromDescriptionArray:v10 count:v9])
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      if (!cf[0])
      {
        break;
      }

      [v6 addObject:?];
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      if (a4 == ++v7)
      {
        return v6;
      }
    }

    if ([VCVideoStreamConfig newTagCollectionArrayFromDescriptionArray:v7 count:v9])
    {
      goto LABEL_18;
    }

LABEL_17:
    CFRelease(v9);
    goto LABEL_18;
  }

  return v6;
}

- (BOOL)applyVideoStreamClientDictionary:(id)a3
{
  v5 = [VCVideoStreamConfig validateClientDictionary:?];
  if (v5)
  {
    [(NSMutableDictionary *)self->super._rxPayloadMap removeAllObjects];
    [(NSMutableDictionary *)self->super._txPayloadMap removeAllObjects];
    if ([a3 objectForKeyedSubscript:@"vcMediaStreamRxPayloadType"])
    {
      -[VCMediaStreamConfig addRxPayloadType:networkPayload:](self, "addRxPayloadType:networkPayload:", +[VCPayloadUtils payloadForCodecType:](VCPayloadUtils, "payloadForCodecType:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamRXCodecType", "integerValue"}]), objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"vcMediaStreamRxPayloadType"), "integerValue"));
    }

    if ([a3 objectForKeyedSubscript:@"vcMediaStreamTxPayloadType"])
    {
      -[VCMediaStreamConfig addTxPayloadType:networkPayload:](self, "addTxPayloadType:networkPayload:", +[VCPayloadUtils payloadForCodecType:](VCPayloadUtils, "payloadForCodecType:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamTXCodecType", "integerValue"}]), objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"vcMediaStreamTxPayloadType"), "integerValue"));
    }

    self->_framerate = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamFramerate", "integerValue"}];
    self->_txMinBitrate = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamTXMinBitrate", "integerValue"}];
    self->_txMaxBitrate = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamTXMaxBitrate", "integerValue"}];
    self->_rxMinBitrate = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamRXMinBitrate", "integerValue"}];
    self->_rxMaxBitrate = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamRXMaxBitrate", "integerValue"}];
    self->_keyFrameInterval = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamKeyFrameInterval", "integerValue"}];
    self->_remoteVideoInitialOrientation = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamRemoteVideoInitialOrientation", "integerValue"}];
    self->_enableCVO = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamEnableCVO", "BOOLValue"}];
    self->_cvoExtensionID = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamCVOExtensionID", "unsignedIntegerValue"}];
    self->_isVideoProtected = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamIsVideoProtected", "BOOLValue"}];
    self->_videoResolution = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamVideoResolution", "integerValue"}];
    self->_type = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamVideoStreamMode", "integerValue"}];
    self->_captureSourceID = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamCaptureSourceID", "integerValue"}];
    self->_shouldSendBlackFramesOnClearScreen = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamShouldSendBlackFramesOnClearScreen", "BOOLValue"}];
    self->_foveationEnabled = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamFoveationEnabled", "BOOLValue"}];
    self->_screenDisplayID = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamDisplayID", "unsignedIntegerValue"}];
    self->_tilesPerFrame = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamTilesPerFrame", "unsignedIntegerValue"}];
    self->_enableInterleavedEncoding = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamEnableInterleavedEncoding", "BOOLValue"}];
    self->_pixelFormat = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamPixelFormat", "unsignedIntegerValue"}];
    self->_ltrpEnabled = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamIsltrpEnabled", "BOOLValue"}];
    if (self->_videoResolution == 27)
    {
      self->_customWidth = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamCustomWidth", "unsignedIntegerValue"}];
      self->_customHeight = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamCustomHeight", "unsignedIntegerValue"}];
    }

    self->_hdrMode = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamHDRMode", "integerValue"}];
    v6 = [a3 objectForKeyedSubscript:@"vcRemoteDeviceName"];
    if ([v6 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}])
    {
      v7 = 0;
    }

    else
    {
      v7 = [a3 objectForKeyedSubscript:@"vcRemoteDeviceName"];
    }

    self->_remoteDeviceName = v7;
    if ([a3 objectForKeyedSubscript:@"vcMediaStreamRxCodecFeatureListString"])
    {
      v8 = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamRXCodecType", "integerValue"}];
      v9 = [a3 objectForKeyedSubscript:@"vcMediaStreamRxCodecFeatureListString"];
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_rxCodecFeatureListStrings, "setObject:forKeyedSubscript:", v9, [MEMORY[0x1E696AD98] numberWithInteger:v8]);
    }

    if ([a3 objectForKeyedSubscript:@"vcMediaStreamTxCodecFeatureListString"])
    {
      v10 = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamTXCodecType", "integerValue"}];
      v11 = [a3 objectForKeyedSubscript:@"vcMediaStreamTxCodecFeatureListString"];
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_txCodecFeatureListStrings, "setObject:forKeyedSubscript:", v11, [MEMORY[0x1E696AD98] numberWithInteger:v10]);
    }

    v12 = [a3 objectForKeyedSubscript:@"vcMediaStreamProfileLevel"];
    if ([v12 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}])
    {
      v13 = 0;
    }

    else
    {
      v13 = [a3 objectForKeyedSubscript:@"vcMediaStreamProfileLevel"];
    }

    self->_profileLevel = v13;
    self->_fecEnabled = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamIsFECEnabled", "BOOLValue"}];
    self->_rtxEnabled = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamIsRTXEnabled", "BOOLValue"}];
    self->_transportProtocolType = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamTransportProtocolType", "integerValue"}];
    v14 = [a3 objectForKeyedSubscript:@"vcMediaStreamPDEncryptionContext"];
    if ([v14 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}])
    {
      v15 = 0;
    }

    else
    {
      v15 = [a3 objectForKeyedSubscript:@"vcMediaStreamPDEncryptionContext"];
    }

    self->_pdEncryptionContext = v15;
    v16 = [a3 objectForKeyedSubscript:@"vcMediaStreamPDDecryptionContext"];
    if ([v16 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}])
    {
      self->_pdDecryptionContext = 0;
    }

    else
    {
      v17 = [a3 objectForKeyedSubscript:@"vcMediaStreamPDDecryptionContext"];
      self->_pdDecryptionContext = v17;
      if (v17 && [(VCVideoStreamConfig *)self deserializePDDecryptionContext])
      {
        LOBYTE(v5) = 0;
        return v5;
      }
    }

    videoBufferDescription = self->_videoBufferDescription;
    if (videoBufferDescription)
    {

      self->_videoBufferDescription = 0;
    }

    [a3 objectForKeyedSubscript:@"vcMediaStreamVideoBufferDescription"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [a3 objectForKeyedSubscript:@"vcMediaStreamVideoBufferDescription"];
    }

    else
    {
      v19 = 0;
    }

    self->_videoBufferDescription = v19;
    [(VCVideoStreamConfig *)self initializeParameterSets];
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)addRxCodecFeatureListString:(id)a3 codecType:(int64_t)a4
{
  rxCodecFeatureListStrings = self->_rxCodecFeatureListStrings;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a4];

  [(NSMutableDictionary *)rxCodecFeatureListStrings setObject:a3 forKeyedSubscript:v6];
}

- (void)addTxCodecFeatureListString:(id)a3 codecType:(int64_t)a4
{
  txCodecFeatureListStrings = self->_txCodecFeatureListStrings;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a4];

  [(NSMutableDictionary *)txCodecFeatureListStrings setObject:a3 forKeyedSubscript:v6];
}

- (void)addTxBitrateTier:(id)a3
{
  if ([a3 unsignedIntegerValue] >= self->_txMinBitrate && objc_msgSend(a3, "unsignedIntegerValue") <= self->_txMaxBitrate)
  {
    [(NSMutableOrderedSet *)self->_txBitrateTiers addObject:a3];
    txBitrateTiers = self->_txBitrateTiers;

    [(NSMutableOrderedSet *)txBitrateTiers sortUsingComparator:&__block_literal_global_76];
  }
}

- (int)deserializePDDecryptionContext
{
  CryptorFromSerializedRecipe = FigCPECryptorCreateCryptorFromSerializedRecipe();
  if (CryptorFromSerializedRecipe)
  {
    [(VCVideoStreamConfig *)self deserializePDDecryptionContext];
  }

  else
  {

    self->_pdDecryptionContext = 0;
    v4 = 0;
  }

  return CryptorFromSerializedRecipe;
}

+ (BOOL)validateClientDictionary:(id)a3
{
  v4 = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamRXCodecType", "integerValue"}];
  v5 = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamTXCodecType", "integerValue"}];
  LOBYTE(v6) = 0;
  if ((v4 & 0xFFFFFFFFFFFFFFFDLL) != 0x64 || (v5 & 0xFFFFFFFFFFFFFFFDLL) != 0x64)
  {
    return v6;
  }

  if ([objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamFramerate", "integerValue"}] < 1 || objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"vcMediaStreamTilesPerFrame"), "integerValue") < 1 || objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"vcMediaStreamEnableCVO"), "BOOLValue") && (objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"vcMediaStreamCVOExtensionID"), "unsignedIntegerValue") - 1) > 0xD)
  {
    goto LABEL_34;
  }

  if ([objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamDirection", "integerValue"}] == 2)
  {
    goto LABEL_23;
  }

  v7 = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamPixelFormat", "unsignedIntegerValue"}];
  v8 = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamHDRMode", "integerValue"}];
  switch(v7)
  {
    case 875704422:
    case 875704438:
    case 875836518:
    case 875836534:
    case 1751411059:
      if (v8)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_34;
        }

        VRTraceErrorLogLevelToCSTR();
        v6 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v6)
        {
          return v6;
        }

        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_9_0();
        v18 = 28;
        goto LABEL_33;
      }

      goto LABEL_23;
    case 2019963956:
LABEL_23:
      LOBYTE(v6) = 1;
      return v6;
    case 2016686640:
      if ((v8 - 3) <= 0xFFFFFFFD)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          v6 = OUTLINED_FUNCTION_28();
          if (v6)
          {
            OUTLINED_FUNCTION_1_1();
            OUTLINED_FUNCTION_6();
            OUTLINED_FUNCTION_2();
            v18 = 34;
LABEL_33:
            _os_log_error_impl(v13, v14, v15, v16, v17, v18);
            goto LABEL_34;
          }

          return v6;
        }

LABEL_34:
        LOBYTE(v6) = 0;
        return v6;
      }

      goto LABEL_23;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    goto LABEL_34;
  }

  VRTraceErrorLogLevelToCSTR();
  v6 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  if (v6)
  {
    FourccToCStr(v7);
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_9_0();
    v18 = 38;
    goto LABEL_33;
  }

  return v6;
}

- (BOOL)applyVideoStreamXPCDictionary:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  value = xpc_dictionary_get_value(a3, "vcMediaStreamVideoBufferDescriptionXPCArgs");
  if (!value)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        v25 = 336;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d video buffer description is nil", &v20, 0x1Cu);
      }
    }

    goto LABEL_10;
  }

  v5 = value;
  count = xpc_array_get_count(value);
  if (count)
  {
    v7 = count;
    videoBufferDescription = self->_videoBufferDescription;
    if (videoBufferDescription)
    {

      self->_videoBufferDescription = 0;
    }

    v9 = [(VCVideoStreamConfig *)self newTagCollectionArrayFromDescriptionArray:v5 count:v7];
    self->_videoBufferDescription = v9;
    if (v9)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = self->_videoBufferDescription;
          v20 = 136316162;
          v21 = v10;
          v22 = 2080;
          v23 = "[VCVideoStreamConfig applyVideoStreamXPCDictionary:]";
          v24 = 1024;
          v25 = 348;
          v26 = 2048;
          v27 = v12;
          v28 = 2048;
          v29 = v7;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _videoBufferDescription=%p with %zu of tags", &v20, 0x30u);
        }
      }

      [(VCVideoStreamConfig *)self initializeParameterSets];
LABEL_10:
      LOBYTE(v9) = 1;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      LODWORD(v9) = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v9)
      {
        return v9;
      }

      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      v25 = 339;
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v14, v15, v16, v17, v18, 0x1Cu);
    }

    LOBYTE(v9) = 0;
  }

  return v9;
}

+ (void)profileLevelIdForString:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 283;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unsupported profile level string", &v2, 0x1Cu);
}

+ (void)profileLevelStringForId:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 295;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unsupported profile level id", &v2, 0x1Cu);
}

- (BOOL)newTagCollectionArrayFromDescriptionArray:(uint64_t)a3 count:.cold.1(uint64_t a1, int a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      v10 = 317;
      v11 = 2048;
      v12 = a1;
      v13 = v8;
      v14 = a2;
      _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to get the tag collection for index=%lu with error=%d", v9, 0x2Cu);
    }
  }

  return a3 == 0;
}

- (BOOL)newTagCollectionArrayFromDescriptionArray:(uint64_t)a1 count:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      v10 = a1;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to get the tag collection for index=%lu", &v7, 0x26u);
    }
  }

  return a2 == 0;
}

- (void)newTagCollectionArrayFromDescriptionArray:count:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)newTagCollectionArrayFromDescriptionArray:count:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)deserializePDDecryptionContext
{
  v22 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return;
    }

    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_6();
    v15 = 477;
    v16 = v5;
    LODWORD(v17) = a2;
    OUTLINED_FUNCTION_2();
    v11 = 34;
LABEL_12:
    _os_log_error_impl(v6, v7, v8, v9, v10, v11);
    return;
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
    VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      v15 = 477;
      v16 = 2112;
      v17 = v4;
      v18 = 2048;
      v19 = a1;
      v20 = v13;
      v21 = a2;
      v6 = &dword_1DB56E000;
      v9 = " [%s] %s:%d %@(%p) pdDecryptionContext deserializing failed with error=%d";
      v10 = &v14;
      v7 = v12;
      v8 = OS_LOG_TYPE_ERROR;
      v11 = 54;
      goto LABEL_12;
    }
  }
}

@end