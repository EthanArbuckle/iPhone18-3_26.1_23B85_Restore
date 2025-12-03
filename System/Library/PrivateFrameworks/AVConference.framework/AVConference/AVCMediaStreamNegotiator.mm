@interface AVCMediaStreamNegotiator
+ (BOOL)newOptionalObject:(id *)object withClass:(Class)class withOptionalOfferInfo:(id)info parameter:(id)parameter error:(id *)error;
+ (int64_t)clientAccessNetworkType:(int)type;
- (AVCMediaStreamNegotiator)initWithMode:(int64_t)mode error:(id *)error;
- (AVCMediaStreamNegotiator)initWithMode:(int64_t)mode options:(id)options error:(id *)error;
- (AVCMediaStreamNegotiator)initWithOffer:(id)offer error:(id *)error;
- (AVCMediaStreamNegotiator)initWithOffer:(id)offer options:(id)options error:(id *)error;
- (BOOL)addLocalCallInfoBlobToOutgoingDictionary:(id)dictionary;
- (BOOL)createAnswer;
- (BOOL)createOffer;
- (BOOL)initNegotiatorLocalConfiguration:(id *)configuration options:(id)options;
- (BOOL)isNegotiatorSettingsScreenType;
- (BOOL)negotiateDirection:(id)direction error:(id *)error;
- (BOOL)processAnswerWithError:(id *)error errorReason:(id *)reason;
- (BOOL)processAnswererInitOptions:(id)options errorReason:(id *)reason;
- (BOOL)processOfferWithError:(id *)error errorReason:(id *)reason;
- (BOOL)setAnswer:(id)answer withError:(id *)error;
- (BOOL)setUpEncryptionForMediaStreamConfig:(id)config;
- (BOOL)setUpEncryptionSettingsForLocalSettings:(id)settings;
- (BOOL)setupAudioStreamConfiguration:(id)configuration errorReason:(id *)reason;
- (BOOL)setupVideoStreamConfiguration:(id)configuration errorReason:(id *)reason;
- (id)applyNegotiatedDirectionToOptions:(id)options error:(id *)error;
- (id)generateMediaStreamConfigurationWithError:(id *)error;
- (id)generateMediaStreamInitOptionsWithError:(id *)error;
- (id)supportedPixelFormats;
- (unsigned)pickBestPixelFormatFromSet:(id)set;
- (unsigned)pickBestPixelFormatFromSet:(id)set preferenceList:(unsigned int *)list count:(int)count acceptDefault:(BOOL)default;
- (void)addHDRModeSpecificSettings:(id)settings;
- (void)createAnswer;
- (void)createOffer;
- (void)dealloc;
- (void)pickBestHDRMode:(id)mode;
- (void)processOffererInitOptions:(id)options errorReason:(id *)reason;
- (void)setUpDirectionBasedPropertiesForConfiguration:(id)configuration;
@end

@implementation AVCMediaStreamNegotiator

+ (int64_t)clientAccessNetworkType:(int)type
{
  if (type == 1)
  {
    return 1;
  }

  if (type == 2)
  {
    return 2;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      +[AVCMediaStreamNegotiator(utils) clientAccessNetworkType:];
    }
  }

  return 0;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = AVCMediaStreamNegotiator;
  [(AVCMediaStreamNegotiator *)&v3 dealloc];
}

- (BOOL)initNegotiatorLocalConfiguration:(id *)configuration options:(id)options
{
  [(AVCMediaStreamNegotiator *)self refreshLoggingParameters];
  v7 = [[VCBitrateArbiter alloc] initWithDeviceRole:0 callLogFile:0];
  if (!v7)
  {
    featureListString = 0;
    v12 = 0;
    v8 = 0;
    v22 = 0;
    self->_errorDetailCode = 7;
    v24 = @"Failed to create bitRateArbiter";
LABEL_37:
    *configuration = v24;
    goto LABEL_20;
  }

  v8 = [[VCMediaNegotiatorLocalConfiguration alloc] initWithBitrateArbiter:v7];
  if (!v8)
  {
    featureListString = 0;
    v12 = 0;
    v22 = 0;
    self->_errorDetailCode = 7;
    v24 = @"Failed to create local config object";
    goto LABEL_37;
  }

  v9 = [AVCMediaStreamNegotiatorSettings negotiatorSettingsForMode:self->_mediaStreamMode deviceRole:self->_deviceRole options:options errorString:configuration];
  self->_negotiatorSettings = v9;
  if (!v9)
  {
    featureListString = 0;
    v12 = 0;
    v22 = 0;
    self->_errorDetailCode = 7;
    goto LABEL_20;
  }

  featureListString = [(AVCMediaStreamNegotiatorSettings *)v9 featureListString];
  if (!featureListString)
  {
    v12 = 0;
    v22 = 0;
    self->_errorDetailCode = 3;
    v24 = @"Failed to create local feature string for media negotiator";
    goto LABEL_37;
  }

  v11 = objc_alloc_init(VCMediaNegotiatorVideoConfiguration);
  if (!v11)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCMediaStreamNegotiator initNegotiatorLocalConfiguration:options:];
      }
    }

    featureListString = 0;
    v12 = 0;
    goto LABEL_35;
  }

  v12 = v11;
  if ([(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings videoRuleCollections])
  {
    localSSRC = [(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings localSSRC];
  }

  else
  {
    localSSRC = 0;
  }

  [(VCMediaNegotiatorCommonConfiguration *)v12 setSsrc:localSSRC];
  [(VCMediaNegotiatorLocalConfiguration *)v8 setMediaConfiguration:[(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings audioConfiguration] forMediaType:1];
  [(VCMediaNegotiatorLocalConfiguration *)v8 setPreferredAudioCodec:[(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings preferredAudioCodec]];
  [(VCMediaNegotiatorVideoConfiguration *)v12 setVideoRuleCollections:[(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings videoRuleCollections]];
  [(VCMediaNegotiatorLocalConfiguration *)v8 setAccessNetworkType:[(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings accessNetworkType]];
  [(VCMediaNegotiatorVideoConfiguration *)v12 setVideoFeatureStrings:featureListString];
  [(VCMediaNegotiatorLocalConfiguration *)v8 setAllowRTCPFB:0];
  [(VCMediaNegotiatorLocalConfiguration *)v8 setIsCaller:self->_deviceRole == 1];
  [(VCMediaNegotiatorLocalConfiguration *)v8 setCallLogFile:0];
  [(VCMediaNegotiatorLocalConfiguration *)v8 setBasebandCodec:0];
  [(VCMediaNegotiatorLocalConfiguration *)v8 setBasebandCodecSampleRate:0];
  videoHeight = self->_videoHeight;
  videoWidth = self->_videoWidth;
  if ([(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings shouldApply16AlignedAdjustment])
  {
    [VideoUtil compute16AlignedResolutionForNativeWidth:LODWORD(self->_videoWidth) nativeHeight:LODWORD(self->_videoHeight) maxScreenPixelCount:5603328 maxScreenEncodingSizeSupported:5603328];
    v18 = v17;
  }

  else
  {
    v16 = videoWidth;
    v18 = videoHeight;
  }

  [(VCMediaNegotiatorLocalConfiguration *)v8 setCustomVideoWidth:LODWORD(self->_dpiFactor) * v16];
  [(VCMediaNegotiatorLocalConfiguration *)v8 setCustomVideoHeight:LODWORD(self->_dpiFactor) * v18];
  [(VCMediaNegotiatorLocalConfiguration *)v8 setTilesPerVideoFrame:[(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings tilesPerFrame]];
  [(VCMediaNegotiatorLocalConfiguration *)v8 setLtrpEnabled:[(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings ltrpEnabled]];
  [(VCMediaNegotiatorLocalConfiguration *)v8 setPixelFormats:[(AVCMediaStreamNegotiator *)self supportedPixelFormats]];
  [(VCMediaNegotiatorLocalConfiguration *)v8 setFecEnabled:[(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings accessNetworkType]== 2];
  [(VCMediaNegotiatorLocalConfiguration *)v8 setRtxEnabled:0];
  [(VCMediaNegotiatorLocalConfiguration *)v8 setBlackFrameOnClearScreenEnabledDefault:[(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings blackFrameOnClearScreenEnabledDefault]];
  [(VCMediaNegotiatorLocalConfiguration *)v8 setBlackFrameOnClearScreenEnabled:[(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings blackFrameOnClearScreenEnabled]];
  [(VCMediaNegotiatorLocalConfiguration *)v8 setFoveationIsSupported:[(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings foveationIsSupported]];
  [(VCMediaNegotiatorLocalConfiguration *)v8 setEnableInterleavedEncoding:[(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings enableInterleavedEncoding]];
  if (![(AVCMediaStreamNegotiator *)self setUpEncryptionSettingsForLocalSettings:v8])
  {
    featureListString = 0;
    v22 = 0;
    self->_errorDetailCode = 7;
    v24 = @"Failed to setup encryption info";
    goto LABEL_37;
  }

  [(AVCMediaStreamNegotiator *)self addHDRModeSpecificSettings:v8];
  if (![(VCMediaNegotiatorLocalConfiguration *)v8 pixelFormats])
  {
    featureListString = 0;
    v22 = 0;
    self->_errorDetailCode = 7;
    v24 = @"Failed to obtain pixelFormat set";
    goto LABEL_37;
  }

  v19 = [(VCMediaNegotiatorVideoConfiguration *)v12 copy];
  if (!v19)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCMediaStreamNegotiator initNegotiatorLocalConfiguration:options:];
      }
    }

    featureListString = 0;
LABEL_35:
    v22 = 0;
    goto LABEL_20;
  }

  featureListString = v19;
  if ([(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings screenRuleCollections])
  {
    localSSRC2 = [(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings localSSRC];
  }

  else
  {
    localSSRC2 = 0;
  }

  [(NSDictionary *)featureListString setSsrc:localSSRC2];
  [(NSDictionary *)featureListString setVideoRuleCollections:[(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings screenRuleCollections]];
  [(VCMediaNegotiatorLocalConfiguration *)v8 setMediaConfiguration:v12 forMediaType:2];
  [(VCMediaNegotiatorLocalConfiguration *)v8 setMediaConfiguration:featureListString forMediaType:3];
  v21 = [[VCMediaNegotiator alloc] initWithMode:self->_mediaStreamMode localSettings:v8];
  self->_mediaNegotiator = v21;
  if (!v21)
  {
    v22 = 0;
    self->_errorDetailCode = 2;
    v24 = @"Failed to create VCMediaNegotiator";
    goto LABEL_37;
  }

  v22 = 1;
LABEL_20:

  return v22;
}

- (id)supportedPixelFormats
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettings *)v2 pixelFormatCollections];
}

- (void)addHDRModeSpecificSettings:(id)settings
{
  hdrModePixelFormats = [(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings hdrModePixelFormats];
  if (hdrModePixelFormats)
  {
    [settings setPixelFormats:{objc_msgSend(objc_msgSend(settings, "pixelFormats"), "setByAddingObjectsFromArray:", hdrModePixelFormats)}];
  }

  if ([(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings hdrModesSupported])
  {
    hdrModesSupported = [(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings hdrModesSupported];

    [settings setHdrModesSupported:hdrModesSupported];
  }
}

- (AVCMediaStreamNegotiator)initWithMode:(int64_t)mode options:(id)options error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *error;
      *buf = 136316162;
      *&buf[4] = v9;
      v20 = 2080;
      v21 = "[AVCMediaStreamNegotiator initWithMode:options:error:]";
      v22 = 1024;
      v23 = 241;
      v24 = 2048;
      modeCopy = mode;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d mode=%ld, error=%@", buf, 0x30u);
    }
  }

  v18.receiver = self;
  v18.super_class = AVCMediaStreamNegotiator;
  v12 = [(AVCMediaStreamNegotiator *)&v18 init];
  v13 = v12;
  if (v12)
  {
    v17 = 0;
    v12->_deviceRole = 1;
    v12->_mediaStreamMode = mode;
    *&v12->_videoHDRMode = 0u;
    *&v12->_mediaStreamAccessNetworkType = 0u;
    if (options)
    {
      [(AVCMediaStreamNegotiator *)v12 processOffererInitOptions:options errorReason:&v17];
    }

    if ([(AVCMediaStreamNegotiator *)v13 initNegotiatorLocalConfiguration:&v17 options:options])
    {
      negotiationData = [(VCMediaNegotiator *)v13->_mediaNegotiator negotiationData];
      v13->_mediaBlobCompressed = negotiationData;
      if (negotiationData)
      {
        if ([(AVCMediaStreamNegotiator *)v13 createOffer])
        {
          return v13;
        }

        [AVCMediaStreamNegotiator initWithMode:options:error:];
      }

      else
      {
        [AVCMediaStreamNegotiator initWithMode:options:error:];
      }

      errorDetailCode = *buf;
    }

    else
    {
      errorDetailCode = v13->_errorDetailCode;
      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        VRTraceErrorLogLevelToCSTR();
        if (VRTraceIsOSFaultDisabled())
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [AVCMediaStreamNegotiator initWithMode:options:error:];
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          [AVCMediaStreamNegotiator initWithMode:options:error:];
        }
      }
    }

    if (error && !*error)
    {
      [GKVoiceChatError getNSError:error code:32032 detailedCode:errorDetailCode filePath:0 description:0 reason:v17];
    }

    return 0;
  }

  return v13;
}

- (AVCMediaStreamNegotiator)initWithMode:(int64_t)mode error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *error;
      v11 = 136316162;
      v12 = v7;
      v13 = 2080;
      v14 = "[AVCMediaStreamNegotiator initWithMode:error:]";
      v15 = 1024;
      v16 = 284;
      v17 = 2048;
      modeCopy = mode;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d mode=%ld, error=%@", &v11, 0x30u);
    }
  }

  return [(AVCMediaStreamNegotiator *)self initWithMode:mode options:0 error:error];
}

- (void)processOffererInitOptions:(id)options errorReason:(id *)reason
{
  if ([options objectForKey:{@"AVCMediaStreamNegotiatorHDRMode", reason}])
  {
    self->_videoHDRMode = [objc_msgSend(options objectForKeyedSubscript:{@"AVCMediaStreamNegotiatorHDRMode", "intValue"}];
  }

  if ([options objectForKey:@"AVCMediaStreamNegotiatorTransportType"])
  {
    self->_mediaStreamTransportType = [objc_msgSend(options objectForKeyedSubscript:{@"AVCMediaStreamNegotiatorTransportType", "intValue"}];
  }

  if ([options objectForKey:@"AVCMediaStreamNegotiatorTransportProtocolType"])
  {
    self->_mediaStreamTransportProtocolType = [objc_msgSend(options objectForKeyedSubscript:{@"AVCMediaStreamNegotiatorTransportProtocolType", "intValue"}];
  }

  if ([options objectForKey:@"AVCMediaStreamNegotiatorVideoWidth"])
  {
    v6 = [options objectForKeyedSubscript:@"AVCMediaStreamNegotiatorVideoWidth"];
    self->_dpiFactor = 1;
    self->_videoWidth = [v6 intValue];
  }

  if ([options objectForKey:@"AVCMediaStreamNegotiatorVideoHeight"])
  {
    v7 = [options objectForKeyedSubscript:@"AVCMediaStreamNegotiatorVideoHeight"];
    self->_dpiFactor = 1;
    self->_videoHeight = [v7 intValue];
  }
}

- (BOOL)createOffer
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (!v5)
  {
    [(AVCMediaStreamNegotiator *)self createOffer];
    goto LABEL_10;
  }

  v2 = v5;
  v6 = *MEMORY[0x1E695E480];
  v3 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  if (!v3)
  {
LABEL_10:
    [AVCMediaStreamNegotiator createOffer];
LABEL_13:
    v9 = v11[0];
    goto LABEL_8;
  }

  v7 = CFUUIDCreateString(v6, v3);
  self->_dataSessionID = &v7->isa;
  if (!v7)
  {
    [AVCMediaStreamNegotiator createOffer];
    goto LABEL_13;
  }

  [v2 setObject:v7 forKeyedSubscript:@"avcMediaStreamOptionCallID"];
  [v2 setObject:self->_mediaBlobCompressed forKeyedSubscript:@"avcMediaStreamNegotiatorMediaBlob"];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", self->_mediaStreamMode), @"avcMediaStreamNegotiatorMode"}];
  if ([(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings shouldNegotiateDirection])
  {
    [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", -[AVCMediaStreamNegotiatorSettings mediaStreamDirection](self->_negotiatorSettings, "mediaStreamDirection")), @"avcMediaStreamNegotiatorDirection"}];
  }

  if (![(AVCMediaStreamNegotiator *)self addLocalCallInfoBlobToOutgoingDictionary:v2])
  {
    [AVCMediaStreamNegotiator createOffer];
    goto LABEL_13;
  }

  v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:v2 format:200 options:0 error:0];
  self->_offer = v8;
  v9 = v8 != 0;
LABEL_8:
  CFRelease(v3);

  return v9;
}

- (BOOL)processOfferWithError:(id *)error errorReason:(id *)reason
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AE40] propertyListWithData:self->_offer options:0 format:0 error:error];
  if (!v6)
  {
    self->_errorDetailCode = 4;
    v9 = @"Failed to deserialize media blob on answerer";
LABEL_11:
    *reason = v9;
    return v6;
  }

  v7 = v6;
  self->_mediaStreamMode = [-[NSData objectForKeyedSubscript:](v6 objectForKeyedSubscript:{@"avcMediaStreamNegotiatorMode", "intValue"}];
  self->_dataSessionID = [(NSData *)v7 objectForKeyedSubscript:@"avcMediaStreamOptionCallID"];
  v6 = [(NSData *)v7 objectForKeyedSubscript:@"avcMediaStreamNegotiatorMediaBlob"];
  self->_mediaBlobCompressed = v6;
  if (!v6)
  {
    self->_errorDetailCode = 4;
    v9 = @"Failed to extract incoming media blob on answerer";
    goto LABEL_11;
  }

  if ([AVCMediaStreamNegotiator newOptionalObject:&self->_remoteCallInfoBlob withClass:objc_opt_class() withOptionalOfferInfo:v7 parameter:@"avcMediaStreamOptionRemoteEndpointInfo" error:reason]&& (v11[0] = 0, [AVCMediaStreamNegotiator newOptionalObject:v11 withClass:objc_opt_class() withOptionalOfferInfo:v7 parameter:@"avcMediaStreamNegotiatorDirection" error:reason]) && (v8 = [(AVCMediaStreamNegotiator *)self negotiateDirection:v11[0] error:reason], v11[0], v8))
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    LOBYTE(v6) = 0;
    self->_errorDetailCode = 4;
  }

  return v6;
}

- (BOOL)processAnswererInitOptions:(id)options errorReason:(id *)reason
{
  self->_dpiFactor = 1;
  if ([options objectForKey:@"AVCMediaStreamNegotiatorVideoWidth"])
  {
    v7 = [options objectForKeyedSubscript:@"AVCMediaStreamNegotiatorVideoWidth"];
    if (!v7)
    {
      self->_errorDetailCode = 7;
      v8 = @"cannot get video width from Init options";
      goto LABEL_20;
    }

    self->_videoWidth = [v7 intValue];
  }

  if ([options objectForKey:@"AVCMediaStreamNegotiatorVideoHeight"])
  {
    v7 = [options objectForKeyedSubscript:@"AVCMediaStreamNegotiatorVideoHeight"];
    if (!v7)
    {
      self->_errorDetailCode = 7;
      v8 = @"cannot get video height from Init options";
      goto LABEL_20;
    }

    self->_videoHeight = [v7 intValue];
  }

  if ([options objectForKey:@"AVCMediaStreamNegotiatorVideoResolution"])
  {
    v7 = [options objectForKeyedSubscript:@"AVCMediaStreamNegotiatorVideoResolution"];
    if (v7)
    {
      self->_dpiFactor = [v7 intValue];
      goto LABEL_10;
    }

    self->_errorDetailCode = 7;
    v8 = @"cannot get DPI scaling facfor from Init options";
LABEL_20:
    *reason = v8;
    return v7;
  }

LABEL_10:
  if ([options objectForKey:@"AVCMediaStreamNegotiatorHDRMode"])
  {
    self->_videoHDRMode = [objc_msgSend(options objectForKeyedSubscript:{@"AVCMediaStreamNegotiatorHDRMode", "intValue"}];
  }

  if ([options objectForKey:@"AVCMediaStreamNegotiatorTransportType"])
  {
    self->_mediaStreamTransportType = [objc_msgSend(options objectForKeyedSubscript:{@"AVCMediaStreamNegotiatorTransportType", "intValue"}];
  }

  if ([options objectForKey:@"AVCMediaStreamNegotiatorTransportProtocolType"])
  {
    self->_mediaStreamTransportProtocolType = [objc_msgSend(options objectForKeyedSubscript:{@"AVCMediaStreamNegotiatorTransportProtocolType", "intValue"}];
  }

  LOBYTE(v7) = 1;
  return v7;
}

- (AVCMediaStreamNegotiator)initWithOffer:(id)offer error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *error;
      v11 = 136316162;
      v12 = v7;
      v13 = 2080;
      v14 = "[AVCMediaStreamNegotiator initWithOffer:error:]";
      v15 = 1024;
      v16 = 458;
      v17 = 2112;
      offerCopy = offer;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d offer=%@, error=%@", &v11, 0x30u);
    }
  }

  return [(AVCMediaStreamNegotiator *)self initWithOffer:offer options:0 error:error];
}

- (AVCMediaStreamNegotiator)initWithOffer:(id)offer options:(id)options error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() < 6)
  {
    goto LABEL_17;
  }

  __str = 0;
  if (offer)
  {
    v9 = [objc_msgSend(offer "description")];
    if (options)
    {
LABEL_4:
      v10 = [objc_msgSend(options "description")];
      goto LABEL_7;
    }
  }

  else
  {
    v9 = "<nil>";
    if (options)
    {
      goto LABEL_4;
    }
  }

  v10 = "<nil>";
LABEL_7:
  if (*error)
  {
    v11 = [objc_msgSend(*error "description")];
  }

  else
  {
    v11 = "<nil>";
  }

  asprintf(&__str, "offer=%s, options=%s, error=%s", v9, v10, v11);
  if (__str)
  {
    selfCopy = self;
    errorCopy = error;
    __lasts = 0;
    v12 = strtok_r(__str, "\n", &__lasts);
    v13 = MEMORY[0x1E6986650];
    do
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *v13;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *&buf[4] = v14;
          v28 = 2080;
          v29 = "[AVCMediaStreamNegotiator initWithOffer:options:error:]";
          v30 = 1024;
          v31 = 463;
          v32 = 2080;
          v33 = "";
          v34 = 2080;
          v35 = v12;
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
        }
      }

      v12 = strtok_r(0, "\n", &__lasts);
    }

    while (v12);
    free(__str);
    error = errorCopy;
    self = selfCopy;
  }

LABEL_17:
  v24.receiver = self;
  v24.super_class = AVCMediaStreamNegotiator;
  v16 = [(AVCMediaStreamNegotiator *)&v24 init];
  v17 = v16;
  if (v16)
  {
    __str = 0;
    v16->_mediaStreamTransportType = 0;
    v16->_mediaStreamAccessNetworkType = 0;
    v16->_videoHDRMode = 0;
    v16->_deviceRole = 2;
    v16->_offer = offer;
    if ([(AVCMediaStreamNegotiator *)v17 processOfferWithError:error errorReason:&__str])
    {
      if (options && ![(AVCMediaStreamNegotiator *)v17 processAnswererInitOptions:options errorReason:&__str])
      {
        errorDetailCode = v17->_errorDetailCode;
        if (VRTraceGetErrorLogLevelForModule() >= 2)
        {
          VRTraceErrorLogLevelToCSTR();
          if (VRTraceIsOSFaultDisabled())
          {
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [AVCMediaStreamNegotiator initWithOffer:options:error:];
            }
          }

          else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
          {
            [AVCMediaStreamNegotiator initWithOffer:options:error:];
          }
        }
      }

      else
      {
        v18 = [(AVCMediaStreamNegotiator *)v17 applyNegotiatedDirectionToOptions:options error:&__str];
        if (__str)
        {
          [AVCMediaStreamNegotiator initWithOffer:v17 options:buf error:?];
          return *buf;
        }

        if ([(AVCMediaStreamNegotiator *)v17 initNegotiatorLocalConfiguration:&__str options:v18])
        {
          if ([(VCMediaNegotiator *)v17->_mediaNegotiator processRemoteNegotiationData:v17->_mediaBlobCompressed])
          {
            newResponseBlob = [(VCMediaNegotiator *)v17->_mediaNegotiator newResponseBlob];
            v17->_mediaBlobNegotiated = newResponseBlob;
            if (newResponseBlob)
            {
              if ([(AVCMediaStreamNegotiator *)v17 createAnswer])
              {
                return v17;
              }

              [AVCMediaStreamNegotiator initWithOffer:options:error:];
            }

            else
            {
              [AVCMediaStreamNegotiator initWithOffer:options:error:];
            }
          }

          else
          {
            [AVCMediaStreamNegotiator initWithOffer:options:error:];
          }

          errorDetailCode = *buf;
        }

        else
        {
          errorDetailCode = v17->_errorDetailCode;
          if (VRTraceGetErrorLogLevelForModule() >= 2)
          {
            VRTraceErrorLogLevelToCSTR();
            if (VRTraceIsOSFaultDisabled())
            {
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                [AVCMediaStreamNegotiator initWithOffer:options:error:];
              }
            }

            else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
            {
              [AVCMediaStreamNegotiator initWithOffer:options:error:];
            }
          }
        }
      }
    }

    else
    {
      errorDetailCode = v17->_errorDetailCode;
      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        VRTraceErrorLogLevelToCSTR();
        if (VRTraceIsOSFaultDisabled())
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [AVCMediaStreamNegotiator initWithOffer:options:error:];
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          [AVCMediaStreamNegotiator initWithOffer:options:error:];
        }
      }
    }

    if (error && !*error)
    {
      [GKVoiceChatError getNSError:error code:32033 detailedCode:errorDetailCode filePath:0 description:0 reason:__str];
    }

    return 0;
  }

  return v17;
}

- (BOOL)createAnswer
{
  v10 = *MEMORY[0x1E69E9840];
  if (!self->_remoteCallInfoBlob)
  {
    v4 = 0;
    self->_answer = self->_mediaBlobNegotiated;
    v6 = 1;
    goto LABEL_6;
  }

  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (!v3)
  {
    [(AVCMediaStreamNegotiator *)&v8 createAnswer];
LABEL_9:
    v4 = v8;
    v6 = v9;
    goto LABEL_6;
  }

  v4 = v3;
  [v3 setObject:self->_mediaBlobNegotiated forKeyedSubscript:@"avcMediaStreamNegotiatorMediaBlob"];
  if (![(AVCMediaStreamNegotiator *)self addLocalCallInfoBlobToOutgoingDictionary:v4])
  {
    [(AVCMediaStreamNegotiator *)v4 createAnswer];
    goto LABEL_9;
  }

  v5 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:200 options:0 error:0];
  self->_answer = v5;
  v6 = v5 != 0;
LABEL_6:

  return v6;
}

- (BOOL)processAnswerWithError:(id *)error errorReason:(id *)reason
{
  v6 = [MEMORY[0x1E696AE40] propertyListWithData:self->_answer options:0 format:0 error:error];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 objectForKeyedSubscript:@"avcMediaStreamNegotiatorMediaBlob"];
    self->_mediaBlobNegotiated = v8;
    if (!v8)
    {
      self->_errorDetailCode = 4;
      *reason = @"Failed to extract negotiated media blob on offerer";
      return v8;
    }

    if ([v7 objectForKey:@"avcMediaStreamOptionRemoteEndpointInfo"])
    {
      self->_remoteCallInfoBlob = [v7 objectForKeyedSubscript:@"avcMediaStreamOptionRemoteEndpointInfo"];
    }
  }

  else
  {
    self->_mediaBlobNegotiated = self->_answer;
  }

  LOBYTE(v8) = 1;
  return v8;
}

- (BOOL)setAnswer:(id)answer withError:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *error;
      *buf = 136316162;
      *&buf[4] = v7;
      v14 = 2080;
      v15 = "[AVCMediaStreamNegotiator setAnswer:withError:]";
      v16 = 1024;
      v17 = 584;
      v18 = 2112;
      answerCopy = answer;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d answer=%@, error=%@", buf, 0x30u);
    }
  }

  v12 = 0;
  if (self->_deviceRole == 2)
  {
    v12 = @"Can't set answer blob on answerer";
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCMediaStreamNegotiator setAnswer:withError:];
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        [AVCMediaStreamNegotiator setAnswer:withError:];
      }
    }

    errorDetailCode = 1;
  }

  else if (answer)
  {

    self->_answer = answer;
    if ([(AVCMediaStreamNegotiator *)self processAnswerWithError:error errorReason:&v12])
    {
      return 1;
    }

    errorDetailCode = self->_errorDetailCode;
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCMediaStreamNegotiator setAnswer:withError:];
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        [AVCMediaStreamNegotiator setAnswer:withError:];
      }
    }
  }

  else
  {
    [AVCMediaStreamNegotiator setAnswer:? withError:?];
    errorDetailCode = *buf;
  }

  if (error)
  {
    if (!*error)
    {
      [GKVoiceChatError getNSError:error code:32034 detailedCode:errorDetailCode filePath:0 description:0 reason:v12];
    }
  }

  return 0;
}

- (BOOL)setupAudioStreamConfiguration:(id)configuration errorReason:(id *)reason
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = [(VCMediaNegotiatorBase *)self->_mediaNegotiator negotiatedAudioSettings:configuration];
  primaryPayload = [(VCMediaNegotiatorResultsAudio *)v6 primaryPayload];
  preferredAudioCodecType = [VCPayloadUtils codecTypeForPayload:primaryPayload];
  if (primaryPayload == [(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings preferredAudioCodec])
  {
    preferredAudioCodecType = [(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings preferredAudioCodecType];
  }

  v9 = [AVCAudioStreamConfig clientCodecTypeWithCodecType:preferredAudioCodecType];
  [configuration setRemoteSSRC:{-[VCMediaNegotiatorResultsAudio remoteSSRC](v6, "remoteSSRC")}];
  [configuration setTxPayloadType:{-[VCMediaNegotiatorResultsAudio primaryPayload](v6, "primaryPayload")}];
  [configuration setRxPayloadType:{objc_msgSend(configuration, "txPayloadType")}];
  [objc_msgSend(configuration "audio")];
  [objc_msgSend(configuration "audio")];
  [objc_msgSend(configuration "audio")];
  [objc_msgSend(configuration "audio")];
  [objc_msgSend(configuration "audio")];
  [objc_msgSend(configuration "audio")];
  v10 = [objc_msgSend(configuration "audio")];
  if (self->_remoteCallInfoBlob)
  {
    v11 = [[VCCallInfoBlob alloc] initWithData:self->_remoteCallInfoBlob];
    if ([(VCCallInfoBlob *)v11 audioDeviceUID])
    {
      [v10 setDeviceUID:{-[VCCallInfoBlob audioDeviceUID](v11, "audioDeviceUID")}];
      [v10 setDeviceName:{-[VCCallInfoBlob deviceName](v11, "deviceName")}];
      [v10 setModelUID:{-[VCCallInfoBlob deviceType](v11, "deviceType")}];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      mediaStreamMode = self->_mediaStreamMode;
      *buf = 136319234;
      v17 = v12;
      v18 = 2080;
      v19 = "[AVCMediaStreamNegotiator setupAudioStreamConfiguration:errorReason:]";
      v20 = 1024;
      v21 = 653;
      v22 = 1024;
      v23 = mediaStreamMode;
      v24 = 1024;
      v25 = [objc_msgSend(configuration "audio")];
      v26 = 1024;
      v27 = [objc_msgSend(configuration "audio")];
      v28 = 1024;
      v29 = [objc_msgSend(configuration "audio")];
      v30 = 1024;
      txPayloadType = [configuration txPayloadType];
      v32 = 1024;
      rxPayloadType = [configuration rxPayloadType];
      v34 = 1024;
      jitterBufferMode = [configuration jitterBufferMode];
      v36 = 2048;
      fixedJitterBufferSize = [configuration fixedJitterBufferSize];
      v38 = 1024;
      v39 = [objc_msgSend(configuration "audio")];
      v40 = 2048;
      v41 = [objc_msgSend(configuration "audio")];
      v42 = 2112;
      deviceUID = [v10 deviceUID];
      v44 = 2112;
      deviceName = [v10 deviceName];
      v46 = 2112;
      modelUID = [v10 modelUID];
      v48 = 1024;
      v49 = [objc_msgSend(configuration "audio")];
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Negotiated values: mediaStreamMode=%u, audioStreamMode=%u, codecType=%u, pTime=%u, txPayloadType=%u, rxPayloadType=%u, jitterBufferMode=%u, fixedJitterBufferSize=%lu, channelCount=%u, preferredMediaBitrate=%lu, deviceUID=%@, deviceName=%@, modelUID=%@, systemAudioCaptureMuteBehavior=%u", buf, 0x84u);
    }
  }

  return 1;
}

- (BOOL)isNegotiatorSettingsScreenType
{
  captureSource = [(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings captureSource];
  if ((captureSource - 2) >= 2)
  {
    return captureSource == 1;
  }

  else
  {
    return self->_mediaStreamMode == 12;
  }
}

- (BOOL)setupVideoStreamConfiguration:(id)configuration errorReason:(id *)reason
{
  v83 = *MEMORY[0x1E69E9840];
  localSettings = [(VCMediaNegotiatorBase *)self->_mediaNegotiator localSettings];
  connectionType = [(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings connectionType];
  LODWORD(localSettings) = [objc_msgSend(objc_msgSend(objc_msgSend(localSettings "bandwidthConfigurations")];
  v9 = [(VCMediaNegotiator *)self->_mediaNegotiator remoteMaxBandwidthForArbiterMode:[(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings bitrateArbiterMode] connectionType:connectionType];
  if (localSettings >= v9)
  {
    localSettings = v9;
  }

  else
  {
    localSettings = localSettings;
  }

  isNegotiatorSettingsScreenType = [(AVCMediaStreamNegotiator *)self isNegotiatorSettingsScreenType];
  mediaNegotiator = self->_mediaNegotiator;
  if (isNegotiatorSettingsScreenType)
  {
    negotiatedScreenSettings = [(VCMediaNegotiatorBase *)mediaNegotiator negotiatedScreenSettings];
  }

  else
  {
    negotiatedScreenSettings = [(VCMediaNegotiatorBase *)mediaNegotiator negotiatedVideoSettings];
  }

  v13 = negotiatedScreenSettings;
  if (negotiatedScreenSettings)
  {
    if ([(VCMediaNegotiatorResultsVideo *)negotiatedScreenSettings videoRuleCollections]&& [(VCVideoRuleCollections *)[(VCMediaNegotiatorResultsVideo *)v13 videoRuleCollections] supportedPayloads])
    {
      reasonCopy = reason;
      selfCopy = self;
      v79 = 0u;
      v80 = 0u;
      if ([configuration direction] == 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      v81 = 0uLL;
      v82 = 0uLL;
      supportedPayloads = [(VCVideoRuleCollections *)[(VCMediaNegotiatorResultsVideo *)v13 videoRuleCollections] supportedPayloads];
      v16 = [(NSMutableArray *)supportedPayloads countByEnumeratingWithState:&v79 objects:v78 count:16];
      if (!v16)
      {
        goto LABEL_23;
      }

      v17 = v16;
      v18 = *v80;
LABEL_15:
      v19 = 0;
      while (1)
      {
        if (*v80 != v18)
        {
          objc_enumerationMutation(supportedPayloads);
        }

        v20 = *(*(&v79 + 1) + 8 * v19);
        if (-[NSMutableArray containsObject:](-[VCVideoRuleCollections supportedPayloads](-[VCMediaNegotiatorResultsVideo videoRuleCollections](v13, "videoRuleCollections"), "supportedPayloads"), "containsObject:", &unk_1F579B448) && -[VCVideoRuleCollections getVideoRulesForTransport:payload:encodingType:](-[VCMediaNegotiatorResultsVideo videoRuleCollections](v13, "videoRuleCollections"), "getVideoRulesForTransport:payload:encodingType:", 1, [&unk_1F579B448 unsignedIntValue], v14))
        {
          v20 = &unk_1F579B448;
          goto LABEL_30;
        }

        if (-[VCVideoRuleCollections getVideoRulesForTransport:payload:encodingType:](-[VCMediaNegotiatorResultsVideo videoRuleCollections](v13, "videoRuleCollections"), "getVideoRulesForTransport:payload:encodingType:", 1, [v20 unsignedIntValue], v14))
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [(NSMutableArray *)supportedPayloads countByEnumeratingWithState:&v79 objects:v78 count:16];
          if (v17)
          {
            goto LABEL_15;
          }

LABEL_23:
          selfCopy->_errorDetailCode = 5;
          if (VRTraceGetErrorLogLevelForModule() >= 2)
          {
            VRTraceErrorLogLevelToCSTR();
            reason = reasonCopy;
            if (VRTraceIsOSFaultDisabled())
            {
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                [AVCMediaStreamNegotiator setupVideoStreamConfiguration:errorReason:];
              }
            }

            else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
            {
              [AVCMediaStreamNegotiator setupVideoStreamConfiguration:errorReason:];
            }

            v33 = 0;
            v36 = @"No valid payload found in the negotiated settings";
            goto LABEL_61;
          }

          v33 = 0;
          v36 = @"No valid payload found in the negotiated settings";
LABEL_60:
          reason = reasonCopy;
          goto LABEL_61;
        }
      }

      if (!v20)
      {
        goto LABEL_23;
      }

LABEL_30:
      v21 = [-[VCVideoRuleCollections getVideoRulesForTransport:payload:encodingType:](-[VCMediaNegotiatorResultsVideo videoRuleCollections](v13 "videoRuleCollections")];
      if (v21)
      {
        v22 = v21;
        iPayload = [v21 iPayload];
        v24 = [AVCMediaStreamNegotiator clientCodecTypeWithCodecType:[VCPayloadUtils codecTypeForPayload:iPayload]];
        [configuration setRemoteSSRC:{-[VCMediaNegotiatorResultsVideo remoteSSRC](v13, "remoteSSRC")}];
        [configuration setTxPayloadType:iPayload];
        [configuration setRxPayloadType:{objc_msgSend(configuration, "txPayloadType")}];
        if ([(NSSet *)[(VCMediaNegotiatorResultsVideo *)v13 hdrModesNegotiated] count])
        {
          [(AVCMediaStreamNegotiator *)selfCopy pickBestHDRMode:[(VCMediaNegotiatorResultsVideo *)v13 hdrModesNegotiated]];
        }

        if ([configuration direction] == 1 || objc_msgSend(configuration, "direction") == 3)
        {
          v25 = [(AVCMediaStreamNegotiator *)selfCopy pickBestPixelFormatFromSet:[(VCMediaNegotiatorResultsVideo *)v13 pixelFormats]];
          if (!v25)
          {
            selfCopy->_errorDetailCode = 5;
            if (VRTraceGetErrorLogLevelForModule() >= 2)
            {
              VRTraceErrorLogLevelToCSTR();
              if (VRTraceIsOSFaultDisabled())
              {
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  [AVCMediaStreamNegotiator setupVideoStreamConfiguration:errorReason:];
                }
              }

              else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
              {
                [AVCMediaStreamNegotiator setupVideoStreamConfiguration:errorReason:];
              }
            }

            v33 = 0;
            v36 = @"No valid pixel format found in the negotiated screen settings";
            goto LABEL_60;
          }

          [objc_msgSend(configuration "video")];
        }

        if (selfCopy->_mediaStreamTransportType == 2 && selfCopy->_videoHDRMode == 3)
        {
          maxBandwidth2 = 80000000;
        }

        else if ([(VCMediaNegotiatorResultsVideo *)v13 foveationIsSupported])
        {
          maxBandwidth2 = 60000000;
        }

        else
        {
          maxBandwidth2 = localSettings;
        }

        if (!selfCopy->_mediaStreamTransportProtocolType)
        {
          selfCopy->_mediaStreamTransportProtocolType = 1;
        }

        [objc_msgSend(configuration "video")];
        featureStrings = [(VCMediaNegotiatorResultsVideo *)v13 featureStrings];
        [objc_msgSend(configuration "video")];
        featureStrings2 = [(VCMediaNegotiatorResultsVideo *)v13 featureStrings];
        [objc_msgSend(configuration "video")];
        [objc_msgSend(configuration "video")];
        [v22 fRate];
        [objc_msgSend(configuration "video")];
        if ([(VCMediaNegotiatorResultsVideo *)v13 customVideoWidth])
        {
          customVideoWidth = [(VCMediaNegotiatorResultsVideo *)v13 customVideoWidth];
        }

        else
        {
          customVideoWidth = [v22 iWidth];
        }

        [objc_msgSend(configuration "video")];
        if ([(VCMediaNegotiatorResultsVideo *)v13 customVideoHeight])
        {
          customVideoHeight = [(VCMediaNegotiatorResultsVideo *)v13 customVideoHeight];
        }

        else
        {
          customVideoHeight = [v22 iHeight];
        }

        [objc_msgSend(configuration "video")];
        [objc_msgSend(configuration "video")];
        [objc_msgSend(configuration "video")];
        [objc_msgSend(configuration "video")];
        [objc_msgSend(configuration "video")];
        [objc_msgSend(configuration "video")];
        [objc_msgSend(configuration "video")];
        maxBandwidth = maxBandwidth2;
        if ([(AVCMediaStreamNegotiatorSettings *)selfCopy->_negotiatorSettings maxBandwidth]< maxBandwidth2)
        {
          maxBandwidth = [(AVCMediaStreamNegotiatorSettings *)selfCopy->_negotiatorSettings maxBandwidth];
        }

        [objc_msgSend(configuration "video")];
        [objc_msgSend(configuration "video")];
        if ([(AVCMediaStreamNegotiatorSettings *)selfCopy->_negotiatorSettings maxBandwidth]< maxBandwidth2)
        {
          maxBandwidth2 = [(AVCMediaStreamNegotiatorSettings *)selfCopy->_negotiatorSettings maxBandwidth];
        }

        [objc_msgSend(configuration "video")];
        [objc_msgSend(configuration "video")];
        v33 = 1;
        [configuration setRateAdaptationEnabled:1];
        [objc_msgSend(configuration "video")];
        [objc_msgSend(configuration "video")];
        [objc_msgSend(configuration "video")];
        [objc_msgSend(configuration "video")];
        [objc_msgSend(configuration "video")];
        [objc_msgSend(configuration "video")];
        [objc_msgSend(configuration "video")];
        [objc_msgSend(configuration "video")];
        [objc_msgSend(configuration "video")];
        [objc_msgSend(configuration "video")];
        [objc_msgSend(configuration "video")];
        [objc_msgSend(configuration "video")];
        if (VRTraceGetErrorLogLevelForModule() >= 7 && (v34 = VRTraceErrorLogLevelToCSTR(), v35 = *MEMORY[0x1E6986650], os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
        {
          *buf = 136319746;
          v41 = v34;
          v42 = 2080;
          v43 = "[AVCMediaStreamNegotiator setupVideoStreamConfiguration:errorReason:]";
          v44 = 1024;
          v45 = 775;
          v46 = 2048;
          v47 = [objc_msgSend(configuration "video")];
          v48 = 1024;
          v49 = [objc_msgSend(configuration "video")];
          v50 = 1024;
          v51 = [objc_msgSend(configuration "video")];
          v52 = 1024;
          v53 = [objc_msgSend(configuration "video")];
          v54 = 1024;
          v55 = [objc_msgSend(configuration "video")];
          v56 = 1024;
          v57 = [objc_msgSend(configuration "video")];
          v58 = 1024;
          accessNetworkType = [configuration accessNetworkType];
          v60 = 2048;
          v61 = [objc_msgSend(configuration "video")];
          v62 = 2048;
          v63 = [objc_msgSend(configuration "video")];
          v64 = 2048;
          txPayloadType = [configuration txPayloadType];
          v66 = 2048;
          v67 = [objc_msgSend(configuration "video")];
          v68 = 2048;
          v69 = [objc_msgSend(configuration "video")];
          v70 = 2048;
          v71 = [objc_msgSend(configuration "video")];
          v72 = 2080;
          v73 = [objc_msgSend(objc_msgSend(configuration "video")];
          v74 = 1024;
          v75 = [objc_msgSend(configuration "video")];
          v76 = 1024;
          v77 = [objc_msgSend(configuration "video")];
          _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Negotiated values: tilesPerFrame=%lu, ltrpEnabled=%i, fecEnabled=%i, rtxEnabled=%i, shouldSendBlackFramesOnClearScreen=%i,  transportProtocolType=%u, accessNetworkType=%u, videoWidth=%lu, videoHeight=%lu, payloadType=%lu, videoHDRMode = %lu, frameRate=%lu, maxTxBitRate=%lu, FLS=%s, foveation=%d enableInterleaving=%d", buf, 0x9Cu);
          v36 = 0;
          v33 = 1;
        }

        else
        {
          v36 = 0;
        }

        goto LABEL_60;
      }

      selfCopy->_errorDetailCode = 5;
      reason = reasonCopy;
      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        VRTraceErrorLogLevelToCSTR();
        if (VRTraceIsOSFaultDisabled())
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [AVCMediaStreamNegotiator setupVideoStreamConfiguration:errorReason:];
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          [AVCMediaStreamNegotiator setupVideoStreamConfiguration:errorReason:];
        }
      }

      v33 = 0;
      v36 = @"No valid video rules found found in the negotiated screen settings";
    }

    else
    {
      self->_errorDetailCode = 5;
      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        VRTraceErrorLogLevelToCSTR();
        if (VRTraceIsOSFaultDisabled())
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [AVCMediaStreamNegotiator setupVideoStreamConfiguration:errorReason:];
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          [AVCMediaStreamNegotiator setupVideoStreamConfiguration:errorReason:];
        }
      }

      v33 = 0;
      v36 = @"RuleCollection not correct in negotiated settings";
    }
  }

  else
  {
    self->_errorDetailCode = 5;
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCMediaStreamNegotiator setupVideoStreamConfiguration:errorReason:];
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        [AVCMediaStreamNegotiator setupVideoStreamConfiguration:errorReason:];
      }
    }

    v33 = 0;
    v36 = @"Settings not found in negotiated settings";
  }

LABEL_61:
  if (reason)
  {
    *reason = v36;
  }

  return v33;
}

- (void)setUpDirectionBasedPropertiesForConfiguration:(id)configuration
{
  direction = [configuration direction];
  v6 = direction & 0xFFFFFFFFFFFFFFFDLL;
  if ((direction & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    if ([(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings shouldSetJitterBufferMode])
    {
      jitterBufferMode = [(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings jitterBufferMode];
      [configuration setJitterBufferMode:jitterBufferMode];
      if (jitterBufferMode == 2)
      {
        [configuration setFixedJitterBufferSize:{-[AVCMediaStreamNegotiatorSettings fixedJitterBufferSize](self->_negotiatorSettings, "fixedJitterBufferSize")}];
      }
    }
  }

  if (v6 == 1)
  {
    packetExpirationTime = [(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings packetExpirationTime];

    [configuration setPacketExpirationTime:packetExpirationTime];
  }
}

- (id)generateMediaStreamConfigurationWithError:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *error;
      *v13 = 136315906;
      *&v13[4] = v5;
      v14 = 2080;
      v15 = "[AVCMediaStreamNegotiator generateMediaStreamConfigurationWithError:]";
      v16 = 1024;
      v17 = 807;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d error=%@", v13, 0x26u);
    }
  }

  *v13 = 0;
  v8 = objc_alloc_init(AVCMediaStreamConfig);
  if (!v8)
  {
    [AVCMediaStreamNegotiator generateMediaStreamConfigurationWithError:];
    goto LABEL_20;
  }

  v9 = v8;
  mediaNegotiator = self->_mediaNegotiator;
  if (self->_deviceRole == 1)
  {
    if (![(VCMediaNegotiator *)mediaNegotiator processResponseBlob:self->_mediaBlobNegotiated])
    {
      [AVCMediaStreamNegotiator generateMediaStreamConfigurationWithError:v13];
      goto LABEL_20;
    }

    self->_mediaStreamAccessNetworkType = [(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings accessNetworkType];
  }

  else if ([(VCMediaNegotiatorResults *)[(VCMediaNegotiatorBase *)mediaNegotiator negotiatedSettings] accessNetworkType])
  {
    v11 = [AVCMediaStreamNegotiator clientAccessNetworkType:[(VCMediaNegotiatorResults *)[(VCMediaNegotiatorBase *)self->_mediaNegotiator negotiatedSettings] accessNetworkType]];
    self->_mediaStreamAccessNetworkType = v11;
    [(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings setAccessNetworkType:v11];
  }

  [(AVCMediaStreamConfig *)v9 setDirection:[(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings mediaStreamDirection]];
  [(AVCMediaStreamConfig *)v9 setLocalSSRC:[(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings localSSRC]];
  [(AVCMediaStreamConfig *)v9 setAccessNetworkType:self->_mediaStreamAccessNetworkType];
  [(AVCMediaStreamConfig *)v9 setRtpTimeOutEnabled:0];
  [(AVCMediaStreamConfig *)v9 setRtpTimeOutInterval:0.0];
  [(AVCMediaStreamConfig *)v9 setRtcpEnabled:1];
  [(AVCMediaStreamConfig *)v9 setRtcpTimeOutEnabled:[(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings rtcpTimeOutEnabled]];
  [(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings rtcpTimeOutInterval];
  [(AVCMediaStreamConfig *)v9 setRtcpTimeOutInterval:?];
  [(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings rtcpSendInterval];
  [(AVCMediaStreamConfig *)v9 setRtcpSendInterval:?];
  if ([(AVCMediaStreamNegotiator *)self setUpEncryptionForMediaStreamConfig:v9])
  {
    [(AVCMediaStreamNegotiator *)self setUpDirectionBasedPropertiesForConfiguration:v9];
    if ([(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings audioConfiguration])
    {
      if ([(AVCMediaStreamNegotiator *)self setupAudioStreamConfiguration:v9 errorReason:v13])
      {
        return v9;
      }
    }

    else if ([(AVCMediaStreamNegotiator *)self setupVideoStreamConfiguration:v9 errorReason:v13])
    {
      return v9;
    }

    [AVCMediaStreamNegotiator generateMediaStreamConfigurationWithError:v13];
  }

  else
  {
    [AVCMediaStreamNegotiator generateMediaStreamConfigurationWithError:];
  }

LABEL_20:
  if (error && !*error)
  {
    [GKVoiceChatError getNSError:error code:32035 detailedCode:self->_errorDetailCode filePath:0 description:0 reason:*v13];
  }

  return 0;
}

- (BOOL)addLocalCallInfoBlobToOutgoingDictionary:(id)dictionary
{
  v28[3] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(VCCallInfoBlob);
  v6 = v5;
  if (!v5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCMediaStreamNegotiator addLocalCallInfoBlobToOutgoingDictionary:];
      }
    }

    goto LABEL_22;
  }

  [(VCCallInfoBlob *)v5 setCallID:0];
  [(VCCallInfoBlob *)v6 setClientVersion:+[VCCallInfo getVCCurrentVersion]];
  memset(v28, 170, 20);
  VCGetDeviceModelString(v28, 0x14uLL);
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v28 encoding:1];
  if (!v7)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCMediaStreamNegotiator addLocalCallInfoBlobToOutgoingDictionary:];
      }
    }

LABEL_22:
    v12 = 0;
    v10 = 0;
    v8 = 0;
LABEL_31:
    v17 = 0;
    goto LABEL_15;
  }

  v8 = v7;
  [(VCCallInfoBlob *)v6 setDeviceType:v7];
  memset(v27, 170, 20);
  VCGetSystemBuildVersionString(v27, 20);
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v27 encoding:1];
  if (!v9)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCMediaStreamNegotiator addLocalCallInfoBlobToOutgoingDictionary:];
      }
    }

    v12 = 0;
    v10 = 0;
    goto LABEL_31;
  }

  v10 = v9;
  [(VCCallInfoBlob *)v6 setOsVersion:v9];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:"2175.14.1.1" encoding:1];
  if (!v11)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCMediaStreamNegotiator addLocalCallInfoBlobToOutgoingDictionary:];
      }
    }

    v12 = 0;
    goto LABEL_31;
  }

  v12 = v11;
  [(VCCallInfoBlob *)v6 setFrameworkVersion:v11];
  if ([(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings audioDeviceUID])
  {
    [(VCCallInfoBlob *)v6 setAudioDeviceUID:[(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings audioDeviceUID]];
    v13 = VCCopyDeviceName();
    [(VCCallInfoBlob *)v6 setDeviceName:v13];
    if (v13)
    {
      CFRelease(v13);
    }
  }

  [dictionary setObject:-[VCCallInfoBlob data](v6 forKeyedSubscript:{"data"), @"avcMediaStreamOptionRemoteEndpointInfo"}];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if ([-[VCCallInfoBlob formattedText](v6 "formattedText")])
      {
        v16 = [objc_msgSend(objc_msgSend(-[VCCallInfoBlob formattedText](v6 "formattedText")];
      }

      else
      {
        v16 = "<nil>";
      }

      v19 = 136315906;
      v20 = v14;
      v21 = 2080;
      v22 = "[AVCMediaStreamNegotiator addLocalCallInfoBlobToOutgoingDictionary:]";
      v23 = 1024;
      v24 = 899;
      v25 = 2080;
      v26 = v16;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Local callInfoBlob = %s", &v19, 0x26u);
    }
  }

  v17 = 1;
LABEL_15:

  return v17;
}

- (id)generateMediaStreamInitOptionsWithError:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *error;
      v11 = 136315906;
      v12 = v5;
      v13 = 2080;
      v14 = "[AVCMediaStreamNegotiator generateMediaStreamInitOptionsWithError:]";
      v15 = 1024;
      v16 = 911;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d error=%@", &v11, 0x26u);
    }
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = v8;
  if (v8)
  {
    [v8 setObject:self->_dataSessionID forKeyedSubscript:@"avcMediaStreamOptionCallID"];
    [v9 setObject:-[AVCMediaStreamNegotiatorSettings clientName](self->_negotiatorSettings forKeyedSubscript:{"clientName"), @"avcMediaStreamOptionClientName"}];
    [v9 setObject:self->_remoteCallInfoBlob forKeyedSubscript:@"avcMediaStreamOptionRemoteEndpointInfo"];
  }

  else
  {
    [AVCMediaStreamNegotiator generateMediaStreamInitOptionsWithError:error];
  }

  return v9;
}

- (unsigned)pickBestPixelFormatFromSet:(id)set
{
  mediaStreamMode = self->_mediaStreamMode;
  v6 = 1;
  v7 = &AVCPixelFormatPreferenceListDefault;
  if (mediaStreamMode > 6)
  {
    if (mediaStreamMode <= 11)
    {
      v10 = mediaStreamMode == 7 || mediaStreamMode == 9;
      v8 = 1;
      if (!v10)
      {
        goto LABEL_52;
      }

      goto LABEL_17;
    }

    if (mediaStreamMode == 12)
    {
      videoHDRMode = self->_videoHDRMode;
      if (!videoHDRMode)
      {
        if (VCFeatureFlagManager_CompositorServicesHDR10PixelFormatNegotiation())
        {
          v8 = 1;
          v6 = 3;
          v7 = &AVCPixelFormatPreferenceListIPadCompanionHDR;
          goto LABEL_52;
        }

        videoHDRMode = self->_videoHDRMode;
      }

      v17 = &AVCPixelFormatPreferenceListDefault;
      if (videoHDRMode)
      {
        v18 = 1;
      }

      else
      {
        v17 = &AVCPixelFormatPreferenceListIPadCompanion;
        v18 = 2;
      }

      if (videoHDRMode == 3)
      {
        v7 = &AVCPixelFormatPreferenceListIPadCompanionHDR;
      }

      else
      {
        v7 = v17;
      }

      if (videoHDRMode == 3)
      {
        v6 = 3;
      }

      else
      {
        v6 = v18;
      }

      v8 = 1;
      goto LABEL_52;
    }

    v14 = mediaStreamMode == 15;
    v15 = AVCPixelFormatPreferenceListImmersiveVideoHDR;
  }

  else
  {
    if (mediaStreamMode <= 2)
    {
      if (mediaStreamMode != 1)
      {
        v8 = 1;
        if (mediaStreamMode == 2)
        {
          v8 = 0;
          v9 = self->_videoHDRMode;
          if (v9)
          {
            v7 = &AVCPixelFormatPreferenceListAirPlayMirroringHDR;
          }

          else
          {
            v7 = &AVCPixelFormatPreferenceListAirPlayMirroringNoHDR;
          }

          if (v9)
          {
            v6 = 2;
          }

          else
          {
            v6 = 1;
          }
        }

        goto LABEL_52;
      }

LABEL_17:
      v11 = self->_videoHDRMode;
      v12 = &AVCPixelFormatPreferenceListDefault;
      if (v11 == 3)
      {
        v12 = &AVCPixelFormatPreferenceListIPadCompanionHDR;
        v13 = 3;
      }

      else
      {
        v13 = 1;
      }

      if (v11)
      {
        v7 = v12;
      }

      else
      {
        v7 = &AVCPixelFormatPreferenceListIPadCompanion;
      }

      if (v11)
      {
        v6 = v13;
      }

      else
      {
        v6 = 2;
      }

      v8 = 1;
      goto LABEL_52;
    }

    if (mediaStreamMode == 3)
    {
      if (self->_videoHDRMode)
      {
        v7 = &AVCPixelFormatPreferenceListRemoteCameraHDR;
      }

      else
      {
        v7 = &AVCPixelFormatPreferenceListRemoteCameraSDR;
      }

      v8 = 1;
      goto LABEL_52;
    }

    v14 = mediaStreamMode == 5;
    v15 = &AVCPixelFormatPreferenceListCoreDeviceSDR;
  }

  if (v14)
  {
    v7 = v15;
  }

  v8 = 1;
  v6 = 1;
LABEL_52:

  return [(AVCMediaStreamNegotiator *)self pickBestPixelFormatFromSet:set preferenceList:v7 count:v6 acceptDefault:v8];
}

- (unsigned)pickBestPixelFormatFromSet:(id)set preferenceList:(unsigned int *)list count:(int)count acceptDefault:(BOOL)default
{
  defaultCopy = default;
  v33 = *MEMORY[0x1E69E9840];
  if (count < 1)
  {
LABEL_5:
    v14 = 0;
LABEL_7:
    if (defaultCopy)
    {
      v14 = list[count - 1];
    }

    goto LABEL_9;
  }

  countCopy = count;
  listCopy = list;
  while (1)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*listCopy];
    if ([set containsObject:v13])
    {
      break;
    }

    ++listCopy;
    if (!--countCopy)
    {
      goto LABEL_5;
    }
  }

  v14 = *listCopy;

  if (!v14)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v17 = FourccToCStr(v14);
      mediaStreamMode = self->_mediaStreamMode;
      videoHDRMode = self->_videoHDRMode;
      v21 = 136316418;
      v22 = v15;
      v23 = 2080;
      v24 = "[AVCMediaStreamNegotiator pickBestPixelFormatFromSet:preferenceList:count:acceptDefault:]";
      v25 = 1024;
      v26 = 1019;
      v27 = 2080;
      v28 = v17;
      v29 = 2048;
      v30 = mediaStreamMode;
      v31 = 2048;
      v32 = videoHDRMode;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Negotiated pixelFormat=%s for mediaStreamMode=%lu in videoHDRMode=%lu", &v21, 0x3Au);
    }
  }

  return v14;
}

- (void)pickBestHDRMode:(id)mode
{
  mediaStreamMode = self->_mediaStreamMode;
  if (mediaStreamMode <= 0xF)
  {
    if (((1 << mediaStreamMode) & 0x1082) == 0)
    {
      if (((1 << mediaStreamMode) & 0x8008) == 0)
      {
        return;
      }

      if ([mode containsObject:&unk_1F579B490])
      {
        v6 = 1;
        goto LABEL_8;
      }

      goto LABEL_10;
    }

    if ([mode containsObject:&unk_1F579B460])
    {
      v6 = 3;
LABEL_8:
      self->_videoHDRMode = v6;
      return;
    }

    if ([mode containsObject:&unk_1F579B478])
    {
LABEL_10:
      self->_videoHDRMode = 0;
      return;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCMediaStreamNegotiator pickBestHDRMode:];
      }
    }
  }
}

- (BOOL)setUpEncryptionSettingsForLocalSettings:(id)settings
{
  if ([(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings rtpCipherSuite]== -1 && [(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings rtcpCipherSuite]== -1)
  {
    return 1;
  }

  rtpCipherSuite = [(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings rtpCipherSuite];
  v6 = VCMediaStreamCipherSuite_EncryptionKeyLength(rtpCipherSuite);
  v7 = [MEMORY[0x1E695DF88] dataWithLength:v6];
  if (v7)
  {
    v8 = v7;
    arc4random_buf([v7 mutableBytes], v6);
    v9 = [[VCMediaNegotiatorMediaEncryptionSettings alloc] initWithSendMediaKey:v8];
    if (v9)
    {
      v10 = v9;
      if (rtpCipherSuite != -1)
      {
        [(VCMediaNegotiatorMediaEncryptionSettings *)v9 addMediaCipherSuite:rtpCipherSuite];
      }

      rtcpCipherSuite = [(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings rtcpCipherSuite];
      if (rtcpCipherSuite != -1)
      {
        [(VCMediaNegotiatorMediaEncryptionSettings *)v10 addSRTCPCipherSuite:rtcpCipherSuite];
      }

      [settings setMediaEncryptionSettings:v10];
      goto LABEL_10;
    }

    [AVCMediaStreamNegotiator setUpEncryptionSettingsForLocalSettings:];
  }

  else
  {
    [AVCMediaStreamNegotiator setUpEncryptionSettingsForLocalSettings:];
  }

  v10 = v13;
LABEL_10:

  return [settings mediaEncryptionSettings] != 0;
}

- (BOOL)setUpEncryptionForMediaStreamConfig:(id)config
{
  if ([(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings rtpCipherSuite]!= -1 || [(AVCMediaStreamNegotiatorSettings *)self->_negotiatorSettings rtcpCipherSuite]!= -1)
  {
    negotiatedMediaEncyptionSettings = [(VCMediaNegotiatorBase *)self->_mediaNegotiator negotiatedMediaEncyptionSettings];
    if ([(NSSet *)[(VCMediaNegotiatorMediaEncryptionSettings *)negotiatedMediaEncyptionSettings mediaCipherSuites] count]>= 2)
    {
      [AVCMediaStreamNegotiator setUpEncryptionForMediaStreamConfig:];
      return v8;
    }

    [config setSRTPCipherSuite:{VCMediaStreamCipherSuite_ClientCipherSuiteWithCipherSuite(objc_msgSend(-[NSSet anyObject](-[VCMediaNegotiatorMediaEncryptionSettings mediaCipherSuites](negotiatedMediaEncyptionSettings, "mediaCipherSuites"), "anyObject"), "integerValue"))}];
    if ([(NSSet *)[(VCMediaNegotiatorMediaEncryptionSettings *)negotiatedMediaEncyptionSettings srtcpCipherSuites] count]>= 2)
    {
      [AVCMediaStreamNegotiator setUpEncryptionForMediaStreamConfig:];
      return v7;
    }

    [config setSRTCPCipherSuite:{VCMediaStreamCipherSuite_ClientCipherSuiteWithCipherSuite(objc_msgSend(-[NSSet anyObject](-[VCMediaNegotiatorMediaEncryptionSettings srtcpCipherSuites](negotiatedMediaEncyptionSettings, "srtcpCipherSuites"), "anyObject"), "integerValue"))}];
    [config setReceiveMediaKey:{-[VCMediaNegotiatorMediaEncryptionSettings sendMediaKey](negotiatedMediaEncyptionSettings, "sendMediaKey")}];
    [config setSendMediaKey:{-[VCMediaNegotiatorMediaEncryptionSettings sendMediaKey](-[VCMediaNegotiatorLocalConfiguration mediaEncryptionSettings](-[VCMediaNegotiatorBase localSettings](self->_mediaNegotiator, "localSettings"), "mediaEncryptionSettings"), "sendMediaKey")}];
  }

  return 1;
}

- (BOOL)negotiateDirection:(id)direction error:(id *)error
{
  if (!direction)
  {
    v7 = 0;
LABEL_4:
    v8 = 0;
    self->_negotiatedDirection = v7;
    result = 1;
    if (!error)
    {
      return result;
    }

    goto LABEL_5;
  }

  integerValue = [direction integerValue];
  if (integerValue <= 3)
  {
    v7 = qword_1DBD4F8C0[integerValue];
    goto LABEL_4;
  }

  result = 0;
  v8 = @"Unknown direction";
  if (!error)
  {
    return result;
  }

LABEL_5:
  *error = v8;
  return result;
}

+ (BOOL)newOptionalObject:(id *)object withClass:(Class)class withOptionalOfferInfo:(id)info parameter:(id)parameter error:(id *)error
{
  v9 = [info objectForKeyedSubscript:parameter];
  if (!v9)
  {
    v12 = 0;
LABEL_4:
    result = 1;
    if (!error)
    {
      return result;
    }

    goto LABEL_5;
  }

  v10 = v9;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    v12 = 0;
    *object = v11;
    goto LABEL_4;
  }

  result = 0;
  v12 = @"Invalid class for parameter";
  if (!error)
  {
    return result;
  }

LABEL_5:
  *error = v12;
  return result;
}

- (id)applyNegotiatedDirectionToOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  negotiatedDirection = self->_negotiatedDirection;
  if (negotiatedDirection)
  {
    v8 = [options objectForKeyedSubscript:@"AVCMediaStreamNegotiatorDirection"];
    if (v8)
    {
      if ([v8 isEqualToNumber:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", self->_negotiatedDirection)}])
      {
        negotiatedDirection = 0;
      }

      else
      {
        negotiatedDirection = @"Direction mismatch";
      }
    }

    else
    {
      if (optionsCopy)
      {
        dictionary = [optionsCopy mutableCopy];
      }

      else
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
      }

      v10 = dictionary;
      if (dictionary)
      {
        [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", self->_negotiatedDirection), @"AVCMediaStreamNegotiatorDirection"}];
        negotiatedDirection = 0;
        optionsCopy = v10;
      }

      else
      {
        negotiatedDirection = @"Options allocation error";
      }
    }
  }

  if (error)
  {
    *error = negotiatedDirection;
  }

  return optionsCopy;
}

- (void)initNegotiatorLocalConfiguration:options:.cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  v5 = "[AVCMediaStreamNegotiator initNegotiatorLocalConfiguration:options:]";
  v6 = 1024;
  v7 = 203;
  v8 = 2112;
  v9 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to copy cameraConfiguration=%@", v3, 0x26u);
}

- (void)initNegotiatorLocalConfiguration:options:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initWithMode:options:error:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_19_14(v0, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_10_21(&dword_1DB56E000, v1, v2, " [%s] %s:%d %s.", v3, v4, v5, v6, v7);
}

- (void)initWithMode:options:error:.cold.2()
{
  OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_19_14(v0, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

- (void)initWithMode:options:error:.cold.3()
{
  OUTLINED_FUNCTION_24_10();
  *v1 = @"Failed to create offerer dictionary with media blob";
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_28())
      {
        [*v0 UTF8String];
        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_4_8();
        OUTLINED_FUNCTION_2();
        _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
      }
    }

    else if (OUTLINED_FUNCTION_12_5())
    {
      [*v0 UTF8String];
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_13_17(&dword_1DB56E000, v7, v8, " [%s] %s:%d %s.", v9, v10, v11, v12, v13);
    }
  }

  OUTLINED_FUNCTION_11_11(3);
}

- (void)initWithMode:options:error:.cold.4()
{
  OUTLINED_FUNCTION_24_10();
  *v1 = @"Failed to create the offerer media blob";
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_28())
      {
        [*v0 UTF8String];
        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_4_8();
        OUTLINED_FUNCTION_2();
        _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
      }
    }

    else if (OUTLINED_FUNCTION_12_5())
    {
      [*v0 UTF8String];
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_13_17(&dword_1DB56E000, v7, v8, " [%s] %s:%d %s.", v9, v10, v11, v12, v13);
    }
  }

  OUTLINED_FUNCTION_11_11(3);
}

- (void)createOffer
{
  if (objc_opt_class() == self)
  {
    VRTraceGetErrorLogLevelForModule();
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    OUTLINED_FUNCTION_28();
    *a2 = 136315650;
    *(a2 + 4) = v7;
    *(a2 + 12) = 2080;
    *(a2 + 14) = "[AVCMediaStreamNegotiator createOffer]";
    *(a2 + 22) = 1024;
    *(a2 + 24) = 320;
    v9 = " [%s] %s:%d Failed to allocate offer info";
    v10 = v8;
    v11 = a2;
    v12 = 28;
  }

  else
  {
    if (OUTLINED_FUNCTION_38_0())
    {
      v6 = OUTLINED_FUNCTION_37_0();
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    VRTraceGetErrorLogLevelForModule();
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    *a3 = 136316162;
    *(a3 + 4) = v13;
    *(a3 + 12) = 2080;
    *(a3 + 14) = "[AVCMediaStreamNegotiator createOffer]";
    *(a3 + 22) = 1024;
    *(a3 + 24) = 320;
    *(a3 + 28) = 2112;
    *(a3 + 30) = v6;
    *(a3 + 38) = 2048;
    *(a3 + 40) = self;
    v9 = " [%s] %s:%d %@(%p) Failed to allocate offer info";
    v10 = v14;
    v11 = a3;
    v12 = 48;
  }

  _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, v9, v11, v12);
  __break(1u);
}

- (void)initWithOffer:options:error:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_19_14(v0, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_10_21(&dword_1DB56E000, v1, v2, " [%s] %s:%d %s.", v3, v4, v5, v6, v7);
}

- (void)initWithOffer:options:error:.cold.2()
{
  OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_19_14(v0, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

- (void)initWithOffer:options:error:.cold.3()
{
  OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_19_14(v0, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_10_21(&dword_1DB56E000, v1, v2, " [%s] %s:%d %s.", v3, v4, v5, v6, v7);
}

- (void)initWithOffer:options:error:.cold.4()
{
  OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_19_14(v0, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

- (void)initWithOffer:(id *)a1 options:(uint64_t)a2 error:(void *)a3 .cold.5(id *a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
    v7 = *MEMORY[0x1E6986650];
    if (IsOSFaultDisabled)
    {
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [*a1 UTF8String];
        OUTLINED_FUNCTION_10();
        v11 = v8;
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_4_8();
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d %s.", v10, 0x26u);
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      [*a1 UTF8String];
      OUTLINED_FUNCTION_10();
      v11 = v9;
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      _os_log_fault_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_FAULT, " [%s] %s:%d %s.", v10, 0x26u);
    }
  }

  *a3 = a2;
}

- (void)initWithOffer:options:error:.cold.6()
{
  OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_19_14(v0, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_10_21(&dword_1DB56E000, v1, v2, " [%s] %s:%d %s.", v3, v4, v5, v6, v7);
}

- (void)initWithOffer:options:error:.cold.7()
{
  OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_19_14(v0, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

- (void)initWithOffer:options:error:.cold.8()
{
  OUTLINED_FUNCTION_24_10();
  *v1 = @"Failed to process incoming blob on answerer";
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_28())
      {
        [*v0 UTF8String];
        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_4_8();
        OUTLINED_FUNCTION_2();
        _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
      }
    }

    else if (OUTLINED_FUNCTION_12_5())
    {
      [*v0 UTF8String];
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_13_17(&dword_1DB56E000, v7, v8, " [%s] %s:%d %s.", v9, v10, v11, v12, v13);
    }
  }

  OUTLINED_FUNCTION_11_11(4);
}

- (void)initWithOffer:options:error:.cold.9()
{
  OUTLINED_FUNCTION_24_10();
  *v1 = @"Failed to create answer dictionary on answerer";
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_28())
      {
        [*v0 UTF8String];
        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_4_8();
        OUTLINED_FUNCTION_2();
        _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
      }
    }

    else if (OUTLINED_FUNCTION_12_5())
    {
      [*v0 UTF8String];
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_13_17(&dword_1DB56E000, v7, v8, " [%s] %s:%d %s.", v9, v10, v11, v12, v13);
    }
  }

  OUTLINED_FUNCTION_11_11(7);
}

- (void)initWithOffer:options:error:.cold.10()
{
  OUTLINED_FUNCTION_24_10();
  *v1 = @"Failed to create the response media blob on answerer";
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_28())
      {
        [*v0 UTF8String];
        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_4_8();
        OUTLINED_FUNCTION_2();
        _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
      }
    }

    else if (OUTLINED_FUNCTION_12_5())
    {
      [*v0 UTF8String];
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_13_17(&dword_1DB56E000, v7, v8, " [%s] %s:%d %s.", v9, v10, v11, v12, v13);
    }
  }

  OUTLINED_FUNCTION_11_11(3);
}

- (void)createAnswer
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    }
  }

  *a2 = 0;
  *self = 0;
}

- (void)setAnswer:withError:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_19_14(v0, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_10_21(&dword_1DB56E000, v1, v2, " [%s] %s:%d %s.", v3, v4, v5, v6, v7);
}

- (void)setAnswer:withError:.cold.2()
{
  OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_19_14(v0, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

- (void)setAnswer:(void *)a1 withError:.cold.3(void *a1)
{
  *a1 = @"Empty answer blob cannot be set on offerer";
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_28())
      {
        [@"Empty answer blob cannot be set on offerer" UTF8String];
        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_4_8();
        OUTLINED_FUNCTION_2();
        _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
      }
    }

    else if (OUTLINED_FUNCTION_12_5())
    {
      [@"Empty answer blob cannot be set on offerer" UTF8String];
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_13_17(&dword_1DB56E000, v6, v7, " [%s] %s:%d %s.", v8, v9, v10, v11, v12);
    }
  }

  OUTLINED_FUNCTION_11_11(6);
}

- (void)setAnswer:withError:.cold.4()
{
  OUTLINED_FUNCTION_11_0();
  [@"Can't set answer blob on answerer" UTF8String];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_10_21(&dword_1DB56E000, v0, v1, " [%s] %s:%d %s.", v2, v3, v4, v5, v6);
}

- (void)setAnswer:withError:.cold.5()
{
  OUTLINED_FUNCTION_11_0();
  [@"Can't set answer blob on answerer" UTF8String];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setupVideoStreamConfiguration:errorReason:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  [@"No valid pixel format found in the negotiated screen settings" UTF8String];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_10_21(&dword_1DB56E000, v0, v1, " [%s] %s:%d %s.", v2, v3, v4, v5, v6);
}

- (void)setupVideoStreamConfiguration:errorReason:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  [@"No valid pixel format found in the negotiated screen settings" UTF8String];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setupVideoStreamConfiguration:errorReason:.cold.3()
{
  OUTLINED_FUNCTION_11_0();
  [@"No valid video rules found found in the negotiated screen settings" UTF8String];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_10_21(&dword_1DB56E000, v0, v1, " [%s] %s:%d %s.", v2, v3, v4, v5, v6);
}

- (void)setupVideoStreamConfiguration:errorReason:.cold.4()
{
  OUTLINED_FUNCTION_11_0();
  [@"No valid video rules found found in the negotiated screen settings" UTF8String];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setupVideoStreamConfiguration:errorReason:.cold.5()
{
  OUTLINED_FUNCTION_11_0();
  [@"No valid payload found in the negotiated settings" UTF8String];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_10_21(&dword_1DB56E000, v0, v1, " [%s] %s:%d %s.", v2, v3, v4, v5, v6);
}

- (void)setupVideoStreamConfiguration:errorReason:.cold.6()
{
  OUTLINED_FUNCTION_11_0();
  [@"No valid payload found in the negotiated settings" UTF8String];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setupVideoStreamConfiguration:errorReason:.cold.7()
{
  OUTLINED_FUNCTION_11_0();
  [@"RuleCollection not correct in negotiated settings" UTF8String];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_10_21(&dword_1DB56E000, v0, v1, " [%s] %s:%d %s.", v2, v3, v4, v5, v6);
}

- (void)setupVideoStreamConfiguration:errorReason:.cold.8()
{
  OUTLINED_FUNCTION_11_0();
  [@"RuleCollection not correct in negotiated settings" UTF8String];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setupVideoStreamConfiguration:errorReason:.cold.9()
{
  OUTLINED_FUNCTION_11_0();
  [@"Settings not found in negotiated settings" UTF8String];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_10_21(&dword_1DB56E000, v0, v1, " [%s] %s:%d %s.", v2, v3, v4, v5, v6);
}

- (void)setupVideoStreamConfiguration:errorReason:.cold.10()
{
  OUTLINED_FUNCTION_11_0();
  [@"Settings not found in negotiated settings" UTF8String];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)generateMediaStreamConfigurationWithError:(void *)a1 .cold.1(void *a1)
{
  *a1 = @"Failed to process the response blob on the offerer";
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_34())
      {
        [@"Failed to process the response blob on the offerer" UTF8String];
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_4_8();
        OUTLINED_FUNCTION_9_0();
        _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      [@"Failed to process the response blob on the offerer" UTF8String];
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_10_21(&dword_1DB56E000, v6, v7, " [%s] %s:%d %s.", v8, v9, v10, v11, v12);
    }
  }
}

- (void)generateMediaStreamConfigurationWithError:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)generateMediaStreamConfigurationWithError:(id *)a1 .cold.3(id *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_34())
      {
        [*a1 UTF8String];
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_4_8();
        OUTLINED_FUNCTION_9_0();
        _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      [*a1 UTF8String];
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_10_21(&dword_1DB56E000, v7, v8, " [%s] %s:%d %s.", v9, v10, v11, v12, v13);
    }
  }
}

- (void)generateMediaStreamConfigurationWithError:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)addLocalCallInfoBlobToOutgoingDictionary:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)addLocalCallInfoBlobToOutgoingDictionary:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)addLocalCallInfoBlobToOutgoingDictionary:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)addLocalCallInfoBlobToOutgoingDictionary:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)generateMediaStreamInitOptionsWithError:(void *)a1 .cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() < 2)
  {
    goto LABEL_7;
  }

  VRTraceErrorLogLevelToCSTR();
  if (VRTraceIsOSFaultDisabled())
  {
    if (OUTLINED_FUNCTION_28())
    {
      [@"failed to create mediastream init options dictionary" UTF8String];
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
      if (!a1)
      {
        return;
      }

      goto LABEL_8;
    }

LABEL_7:
    if (!a1)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!OUTLINED_FUNCTION_12_5())
  {
    goto LABEL_7;
  }

  [@"failed to create mediastream init options dictionary" UTF8String];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_13_17(&dword_1DB56E000, v7, v8, " [%s] %s:%d %s.", v9, v10, v11, v12, v13);
  if (!a1)
  {
    return;
  }

LABEL_8:
  if (!*a1)
  {
    [GKVoiceChatError getNSError:a1 code:32036 detailedCode:5 filePath:0 description:0 reason:@"failed to create mediastream init options dictionary"];
  }
}

- (void)pickBestHDRMode:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setUpEncryptionSettingsForLocalSettings:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    v7 = 28;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = 0;
  OUTLINED_FUNCTION_39_0();
}

- (void)setUpEncryptionSettingsForLocalSettings:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    v7 = 28;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = 0;
  OUTLINED_FUNCTION_39_0();
}

- (void)setUpEncryptionForMediaStreamConfig:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    v6 = 28;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)setUpEncryptionForMediaStreamConfig:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    v6 = 28;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

@end