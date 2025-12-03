@interface VCMediaNegotiator
+ (BOOL)addMediaConfigurationsToLocalConfiguration:(id)configuration withBlob:(id)blob;
+ (BOOL)initializeLocalConfiguration:(id)configuration negotiationData:(id)data deviceRole:(int)role preferredAudioPayload:(int)payload;
+ (BOOL)validateLocalConfiguration:(id)configuration;
+ (BOOL)validateMultiwayAudioStreamConfigurations:(id)configurations;
+ (BOOL)validateMultiwayVideoStreamConfigurations:(id)configurations;
+ (id)localConfigurationWithData:(id)data deviceRole:(int)role preferredAudioPayload:(int)payload;
+ (id)negotiatedFeaturesStringWithLocalFeaturesString:(id)string remoteFeaturesString:(id)featuresString;
+ (id)negotiationBlobFromData:(id)data;
+ (id)newCompressedBlob:(id)blob;
+ (id)newDecompressedBlob:(id)blob;
+ (id)streamGroupIDsWithMediaBlob:(id)blob;
+ (int64_t)preferredCipherSuiteFromSet:(id)set;
+ (unsigned)mappedRemoteQualityIndexForQualityIndex:(unsigned int)index;
+ (void)dumpBlob:(id)blob prefix:(id)prefix force:(BOOL)force;
- (BOOL)addBandwidthSettingsForMediaBlob:(id)blob arbiterMode:(unsigned __int8)mode connectionType:(int)type maxBitrate:(unsigned int)bitrate;
- (BOOL)isCellular16x9EncodeCapable;
- (BOOL)isNegotiationModeForScreenShare:(int64_t)share;
- (BOOL)isNegotiationModeValid:(int64_t)valid;
- (BOOL)isVideoStreamSupported:(int)supported;
- (BOOL)negotiateAudioDTXPayload:(id)payload;
- (BOOL)negotiateAudioPrimaryPayload:(id)payload microphoneConfiguration:(id)configuration;
- (BOOL)negotiateAudioREDPayload:(id)payload microphoneConfiguration:(id)configuration;
- (BOOL)negotiateAudioSettings:(id)settings;
- (BOOL)negotiateCaptionsWithCaptionsSettings:(id)settings;
- (BOOL)negotiateFaceTimeSettings:(id)settings;
- (BOOL)negotiateHDRMode:(id)mode videoResults:(id)results;
- (BOOL)negotiateMediaEncryptionWithRemoteSettings:(id)settings;
- (BOOL)negotiateMomentsWithMomentsSettings:(id)settings;
- (BOOL)negotiateMultiwayAudioStreams:(id)streams;
- (BOOL)negotiateMultiwayVideoStreams:(id)streams;
- (BOOL)negotiateScreenSettings:(id)settings;
- (BOOL)negotiateVideoSettings:(id)settings;
- (BOOL)processParameterSets:(id)sets videoResults:(id)results;
- (BOOL)processPixelFormats:(id)formats videoResults:(id)results;
- (BOOL)processRemoteNegotiationData:(id)data;
- (BOOL)processResponseBlob:(id)blob;
- (BOOL)selectBestScreenRule:(id)rule preferredPayloadOrder:(id)order;
- (BOOL)selectBestVideoRuleForTransport:(unsigned __int8)transport payload:(int)payload encodingType:(unsigned __int8)type localVideoRuleCollection:(id)collection remoteVideoSettings:(id)settings negotiatedVideoSettings:(id)videoSettings isScreen:(BOOL)screen;
- (BOOL)setUpMediaEncryptionForMediaBlob:(id)blob isResponse:(BOOL)response;
- (BOOL)setupAudioWithNegotiatedSettings:(id)settings;
- (BOOL)setupBandwidthSettingsForMediaBlob:(id)blob;
- (BOOL)setupScreenWithNegotiatedSettings:(id)settings;
- (BOOL)setupVideoWithNegotiatedSettings:(id)settings;
- (VCMediaNegotiator)initWithLocalSettings:(id)settings;
- (VCMediaNegotiator)initWithMode:(int64_t)mode localSettings:(id)settings;
- (id)getPreferredScreenPayloadList;
- (id)localeWithMediaBlobLanguage:(int)language;
- (id)negotiationData;
- (id)newResponseBlob;
- (id)newStreamConfigFromMultiwayAudioStream:(id)stream;
- (id)newStreamConfigFromMultiwayVideoStream:(id)stream;
- (id)newStreamGroupCodecConfigForPayload:(int)payload;
- (id)selectVideoFeatureString:(id)string selectedPayload:(int)payload videoConfiguration:(id)configuration;
- (int)mediaBlobLanguageWithLocale:(id)locale;
- (void)dealloc;
- (void)negotiateAudioAllowRecording:(id)recording microphoneConfiguration:(id)configuration;
- (void)negotiateAudioSecondaryPayloads:(id)payloads microphoneConfiguration:(id)configuration;
- (void)negotiateAudioUseSBR:(id)r;
- (void)negotiateRTCPFB:(id)b negotiatedVideoSettings:(id)settings;
- (void)negotiateTilesPerFrame:(id)frame negotiatedSettings:(id)settings;
- (void)negotiationData;
- (void)newResponseBlob;
- (void)processCustomResolution:(id)resolution cameraRuleCollections:(id)collections videoNegotiationSettings:(id)settings;
- (void)saveRemoteBandwidthSettingsWithMediaBlob:(id)blob;
- (void)setupCaptionsForMediaBlob:(id)blob;
- (void)setupFaceTimeSettingsForMediaBlob:(id)blob isResponse:(BOOL)response;
- (void)setupMomentsForMediaBlob:(id)blob;
- (void)setupMultiwayAudioStreamsForMediaBlob:(id)blob;
- (void)setupMultiwayVideoStreamsForMediaBlob:(id)blob;
@end

@implementation VCMediaNegotiator

- (VCMediaNegotiator)initWithLocalSettings:(id)settings
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCMediaNegotiator;
  v4 = [(VCMediaNegotiatorBase *)&v7 initWithLocalSettings:?];
  if (v4)
  {
    if ([VCMediaNegotiator validateLocalConfiguration:settings])
    {
      v5 = objc_alloc_init(VCMediaNegotiatorResultsCaptions);
      v4->_negotiatedCaptionsSettings = v5;
      if (v5)
      {
        v4->_isCellular16x9Capable = [(VCMediaNegotiator *)v4 isCellular16x9EncodeCapable];
        return v4;
      }

      [VCMediaNegotiator initWithLocalSettings:];
    }

    else
    {
      [VCMediaNegotiator initWithLocalSettings:];
    }

    return 0;
  }

  return v4;
}

- (VCMediaNegotiator)initWithMode:(int64_t)mode localSettings:(id)settings
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCMediaNegotiator;
  v5 = [(VCMediaNegotiatorBase *)&v8 initWithLocalSettings:settings];
  v6 = v5;
  if (v5)
  {
    v5->_negotiationMode = mode;
    if (![(VCMediaNegotiator *)v5 isNegotiationModeValid:mode])
    {

      return 0;
    }
  }

  return v6;
}

- (BOOL)isCellular16x9EncodeCapable
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = [-[VCMediaNegotiatorLocalConfiguration mediaConfigurationForMediaType:](self->super._localSettings mediaConfigurationForMediaType:{2), "videoRuleCollections"}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  supportedPayloads = [v2 supportedPayloads];
  v4 = [supportedPayloads countByEnumeratingWithState:&v35 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v36;
    v21 = *v36;
    v22 = supportedPayloads;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v36 != v6)
        {
          objc_enumerationMutation(supportedPayloads);
        }

        v8 = [v2 getVideoRulesForTransport:2 payload:objc_msgSend(*(*(&v35 + 1) + 8 * i) encodingType:{"unsignedIntValue", v21), 1}];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v30 objects:v29 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v31;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v31 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v30 + 1) + 8 * j);
              iWidth = [v13 iWidth];
              if ([v13 iHeight] * iWidth == 130560)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v18 = VRTraceErrorLogLevelToCSTR();
                  v19 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    v24 = v18;
                    v25 = 2080;
                    v26 = "[VCMediaNegotiator isCellular16x9EncodeCapable]";
                    v27 = 1024;
                    v28 = 106;
                    _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Capable of streaming 16x9 cellular!", buf, 0x1Cu);
                  }
                }

                LOBYTE(v17) = 1;
                return v17;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v30 objects:v29 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v6 = v21;
        supportedPayloads = v22;
      }

      v5 = [v22 countByEnumeratingWithState:&v35 objects:v34 count:16];
    }

    while (v5);
  }

  if (VRTraceGetErrorLogLevelForModule() < 7)
  {
    goto LABEL_19;
  }

  v15 = VRTraceErrorLogLevelToCSTR();
  v16 = *MEMORY[0x1E6986650];
  v17 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    *buf = 136315650;
    v24 = v15;
    v25 = 2080;
    v26 = "[VCMediaNegotiator isCellular16x9EncodeCapable]";
    v27 = 1024;
    v28 = 111;
    _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Not capable of streaming 16x9 cellular!", buf, 0x1Cu);
LABEL_19:
    LOBYTE(v17) = 0;
  }

  return v17;
}

- (BOOL)isNegotiationModeValid:(int64_t)valid
{
  v3 = valid - 1;
  if ((valid - 1) >= 0xF && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCMediaNegotiator isNegotiationModeValid:];
    }
  }

  return v3 < 0xF;
}

- (BOOL)isNegotiationModeForScreenShare:(int64_t)share
{
  if ((share - 1) >= 0xF)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaNegotiator isNegotiationModeForScreenShare:];
      }
    }

    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = 0x953u >> (share - 1);
  }

  return v3 & 1;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCMediaNegotiator;
  [(VCMediaNegotiatorBase *)&v3 dealloc];
}

- (id)negotiationData
{
  v3 = VCMediaStreamSendGroup;
  if (![(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings isCaller])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaNegotiator negotiationData];
      }
    }

    goto LABEL_41;
  }

  v4 = objc_alloc_init(VCMediaNegotiationBlob);
  if (!v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaNegotiator negotiationData];
      }
    }

LABEL_41:
    videoRuleCollections2 = 0;
    v21 = 0;
    v31 = 0;
    v5 = 0;
    goto LABEL_60;
  }

  v5 = v4;
  [(VCMediaNegotiationBlob *)v4 setBlobVersion:2];
  [(VCMediaNegotiationBlob *)v5 setUserAgent:@"Viceroy 1.7.0/GK"];
  [(VCMediaNegotiationBlob *)v5 setBasebandCodecSampleRate:[(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings basebandCodecSampleRate]];
  [(VCMediaNegotiationBlob *)v5 setBasebandCodec:[(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings basebandCodec]];
  [(VCMediaNegotiationBlob *)v5 setNtpTime:[(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings creationTime]];
  [(VCMediaNegotiationBlob *)v5 setMediaControlInfoVersion:[(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings mediaControlInfoVersion]];
  if ([(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings accessNetworkType])
  {
    [(VCMediaNegotiationBlob *)v5 setAccessNetworkType:[(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings accessNetworkType]];
  }

  v6 = self->_negotiationMode != 1;
  [(VCMediaNegotiationBlob *)v5 setAllowDynamicMaxBitrate:v6];
  [(VCMediaNegotiationBlob *)v5 setAllowsContentsChangeWithAspectPreservation:v6];
  if (![(VCMediaNegotiator *)self setupBandwidthSettingsForMediaBlob:v5])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaNegotiator negotiationData];
      }
    }

    goto LABEL_51;
  }

  v7 = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings mediaConfigurationForMediaType:1];
  if (v7)
  {
    v8 = [[VCMediaNegotiationBlobAudioSettings alloc] initWithAudioConfiguration:v7];
    if (v8)
    {
      v52 = v8;
      [(VCMediaNegotiationBlob *)v5 setAudioSettings:?];
      goto LABEL_10;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaNegotiator negotiationData];
      }
    }

LABEL_51:
    videoRuleCollections2 = 0;
    v21 = 0;
    v31 = 0;
    goto LABEL_60;
  }

  v52 = 0;
LABEL_10:
  v9 = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings mediaConfigurationForMediaType:2];
  videoRuleCollections = [v9 videoRuleCollections];
  v11 = VCMediaStreamSendGroup;
  v12 = &OBJC_IVAR___VCSessionMediaTypeSettings__mediaState;
  if (videoRuleCollections)
  {
    v13 = videoRuleCollections;
    v50 = [VCMediaNegotiationBlobVideoSettings alloc];
    ssrc = [v9 ssrc];
    allowRTCPFB = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings allowRTCPFB];
    videoFeatureStrings = [v9 videoFeatureStrings];
    isCellular16x9Capable = self->_isCellular16x9Capable;
    tilesPerVideoFrame = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings tilesPerVideoFrame];
    ltrpEnabled = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings ltrpEnabled];
    pixelFormats = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings pixelFormats];
    hdrModesSupported = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings hdrModesSupported];
    customVideoWidth = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings customVideoWidth];
    customVideoHeight = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings customVideoHeight];
    LOBYTE(v37) = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings enableInterleavedEncoding];
    LOBYTE(v35) = ltrpEnabled;
    v20 = [(VCMediaNegotiationBlobVideoSettings *)v50 initWithSSRC:ssrc allowRTCPFB:allowRTCPFB videoRuleCollections:v13 featureStrings:videoFeatureStrings isCellular16x9Capable:isCellular16x9Capable tilesPerFrame:tilesPerVideoFrame ltrpEnabled:v35 pixelFormats:pixelFormats hdrModesSupported:hdrModesSupported customVideoWidth:__PAIR64__(customVideoHeight customVideoHeight:customVideoWidth) enableInterleavedEncoding:v37];
    if (!v20)
    {
      v3 = VCMediaStreamSendGroup;
      v31 = v52;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaNegotiator negotiationData];
        }
      }

      videoRuleCollections2 = 0;
      v21 = 0;
      goto LABEL_60;
    }

    v21 = v20;
    [(VCMediaNegotiationBlob *)v5 setVideoSettings:v20];
    v12 = &OBJC_IVAR___VCSessionMediaTypeSettings__mediaState;
    v11 = VCMediaStreamSendGroup;
  }

  else
  {
    v21 = 0;
  }

  v22 = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings mediaConfigurationForMediaType:3];
  videoRuleCollections2 = [v22 videoRuleCollections];
  if (videoRuleCollections2)
  {
    v51 = v21;
    v49 = objc_alloc(&v11[34]);
    ssrc2 = [v22 ssrc];
    allowRTCPFB2 = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings allowRTCPFB];
    videoFeatureStrings2 = [v22 videoFeatureStrings];
    v41 = *(&self->super.super.isa + v12[93]);
    customVideoWidth2 = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings customVideoWidth];
    customVideoHeight2 = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings customVideoHeight];
    tilesPerVideoFrame2 = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings tilesPerVideoFrame];
    ltrpEnabled2 = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings ltrpEnabled];
    pixelFormats2 = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings pixelFormats];
    hdrModesSupported2 = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings hdrModesSupported];
    fecEnabled = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings fecEnabled];
    rtxEnabled = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings rtxEnabled];
    blackFrameOnClearScreenEnabled = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings blackFrameOnClearScreenEnabled];
    BYTE3(v37) = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings foveationIsSupported];
    BYTE2(v37) = blackFrameOnClearScreenEnabled;
    BYTE1(v37) = rtxEnabled;
    LOBYTE(v37) = fecEnabled;
    LOBYTE(v36) = ltrpEnabled2;
    v30 = [v49 initWithScreenSSRC:ssrc2 allowRTCPFB:allowRTCPFB2 videoRuleCollections:videoRuleCollections2 featureStrings:videoFeatureStrings2 isCellular16x9Capable:v41 customVideoWidth:customVideoWidth2 customVideoHeight:__PAIR64__(tilesPerVideoFrame2 tilesPerFrame:customVideoHeight2) ltrpEnabled:v36 pixelFormats:pixelFormats2 hdrModesSupported:hdrModesSupported2 fecEnabled:v37 rtxEnabled:? blackFrameOnClearScreenEnabled:? foveationSupported:?];
    if (!v30)
    {
      v3 = VCMediaStreamSendGroup;
      v31 = v52;
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        videoRuleCollections2 = 0;
        v33 = 0;
        v21 = v51;
        goto LABEL_61;
      }

      VRTraceErrorLogLevelToCSTR();
      v21 = v51;
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaNegotiator negotiationData];
      }

      videoRuleCollections2 = 0;
      goto LABEL_60;
    }

    videoRuleCollections2 = v30;
    [(VCMediaNegotiationBlob *)v5 setScreenSettings:v30];
    v3 = VCMediaStreamSendGroup;
    v21 = v51;
  }

  else
  {
    v3 = VCMediaStreamSendGroup;
  }

  if ([(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings captionsSenderLanguages]|| [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings captionsReceiverLanguages])
  {
    [(VCMediaNegotiator *)self setupCaptionsForMediaBlob:v5];
  }

  v31 = v52;
  if ([(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings mediaRecorderVideoCodecs]|| [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings mediaRecorderImageTypes])
  {
    [(VCMediaNegotiator *)self setupMomentsForMediaBlob:v5];
  }

  if ([(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings secureMessagingRequired]|| [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings SIPDisabled]|| [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings faceTimeSwitches]|| [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings oneToOneModeSupported]|| [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings mediaControlInfoFECFeedbackVersion]|| [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings linkProbingCapabilityVersion])
  {
    [(VCMediaNegotiator *)self setupFaceTimeSettingsForMediaBlob:v5 isResponse:0];
  }

  [(VCMediaNegotiator *)self setupMultiwayAudioStreamsForMediaBlob:v5];
  [(VCMediaNegotiator *)self setupMultiwayVideoStreamsForMediaBlob:v5];
  if ([(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings mediaEncryptionSettings]&& ![(VCMediaNegotiator *)self setUpMediaEncryptionForMediaBlob:v5 isResponse:0])
  {
LABEL_60:
    v33 = 0;
    goto LABEL_61;
  }

  v32 = [&v3[32] newCompressedBlob:{-[VCMediaNegotiationBlob data](v5, "data")}];
  if (!v32)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaNegotiator negotiationData];
      }
    }

    goto LABEL_60;
  }

  v33 = v32;
  -[VCMediaNegotiationBlob printWithTitle:blobSize:logFile:](v5, "printWithTitle:blobSize:logFile:", @"Created invite media blob", [v32 length], -[VCMediaNegotiatorLocalConfiguration callLogFile](self->super._localSettings, "callLogFile"));
LABEL_61:

  [&v3[32] dumpBlob:v33 prefix:@"mediablob_invite" force:0];
  return v33;
}

- (BOOL)processRemoteNegotiationData:(id)data
{
  v24 = *MEMORY[0x1E69E9840];
  [VCMediaNegotiator dumpBlob:data prefix:@"mediablob_invite_remote" force:0];
  if ([(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings isCaller])
  {
    [VCMediaNegotiator processRemoteNegotiationData:];
LABEL_45:
    v6 = v15;
    v7 = *buf;
    v13 = v16;
    goto LABEL_32;
  }

  v5 = [VCMediaNegotiator newDecompressedBlob:data];
  if (!v5)
  {
    [VCMediaNegotiator processRemoteNegotiationData:];
    goto LABEL_45;
  }

  v6 = v5;
  v7 = [[VCMediaNegotiationBlob alloc] initWithData:v5];
  if (!v7)
  {
    [(VCMediaNegotiator *)v6 processRemoteNegotiationData:buf, &v16];
    goto LABEL_45;
  }

  -[VCMediaNegotiationBlob printWithTitle:blobSize:logFile:](v7, "printWithTitle:blobSize:logFile:", @"Received invite media blob", [v6 length], -[VCMediaNegotiatorLocalConfiguration callLogFile](self->super._localSettings, "callLogFile"));
  [(VCMediaNegotiatorResults *)self->super._negotiatedSettings setSupportsDynamicMaxBitrate:[(VCMediaNegotiationBlob *)v7 allowDynamicMaxBitrate]];
  [(VCMediaNegotiatorResults *)self->super._negotiatedSettings setRemoteBlobVersion:[(VCMediaNegotiationBlob *)v7 blobVersion]];
  [(VCMediaNegotiatorResults *)self->super._negotiatedSettings setRemoteUserAgent:[(VCMediaNegotiationBlob *)v7 userAgent]];
  [(VCMediaNegotiatorResults *)self->super._negotiatedSettings setRemoteBasebandCodec:[(VCMediaNegotiationBlob *)v7 basebandCodec]];
  [(VCMediaNegotiatorResults *)self->super._negotiatedSettings setRemoteBasebandCodecSampleRate:[(VCMediaNegotiationBlob *)v7 basebandCodecSampleRate]];
  mediaControlInfoVersion = [(VCMediaNegotiationBlob *)v7 mediaControlInfoVersion];
  if (mediaControlInfoVersion >= 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = mediaControlInfoVersion;
  }

  [(VCMediaNegotiatorResults *)self->super._negotiatedSettings setMediaControlInfoVersion:v9];
  [(VCMediaNegotiatorResults *)self->super._negotiatedSettings setControlChannelVersion:1];
  [(VCMediaNegotiatorResults *)self->super._negotiatedSettings setAccessNetworkType:[(VCMediaNegotiationBlob *)v7 accessNetworkType]];
  [(VCMediaNegotiatorResults *)self->super._negotiatedSettings setRemoteBlobCreationTime:[(VCMediaNegotiationBlob *)v7 ntpTime]];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      mediaControlInfoVersion2 = [(VCMediaNegotiatorResults *)self->super._negotiatedSettings mediaControlInfoVersion];
      *buf = 136315906;
      *&buf[4] = v10;
      v18 = 2080;
      v19 = "[VCMediaNegotiator processRemoteNegotiationData:]";
      v20 = 1024;
      v21 = 322;
      v22 = 1024;
      v23 = mediaControlInfoVersion2 == 2;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Load switch after negotiation updatedAFRCHeaderEnabled %d", buf, 0x22u);
    }
  }

  [(VCMediaNegotiator *)self saveRemoteBandwidthSettingsWithMediaBlob:v7];
  if ([(VCMediaNegotiationBlob *)v7 faceTimeSettings]&& ![(VCMediaNegotiator *)self negotiateFaceTimeSettings:[(VCMediaNegotiationBlob *)v7 faceTimeSettings]])
  {
    [(VCMediaNegotiator *)v6 processRemoteNegotiationData:v7, &v15, buf, &v16];
    goto LABEL_45;
  }

  if (![(VCMediaNegotiationBlob *)v7 hasBlobVersion]|| ![(VCMediaNegotiationBlob *)v7 blobVersion])
  {
    [(VCMediaNegotiationBlobAudioSettings *)[(VCMediaNegotiationBlob *)v7 audioSettings] setUseSBR:0];
  }

  if ([(VCMediaNegotiationBlob *)v7 audioSettings]&& ![(VCMediaNegotiator *)self negotiateAudioSettings:[(VCMediaNegotiationBlob *)v7 audioSettings]])
  {
    [(VCMediaNegotiator *)v6 processRemoteNegotiationData:v7, &v15, buf, &v16];
    goto LABEL_45;
  }

  if ([(VCMediaNegotiationBlob *)v7 videoSettings]&& ![(VCMediaNegotiator *)self negotiateVideoSettings:[(VCMediaNegotiationBlob *)v7 videoSettings]])
  {
    [(VCMediaNegotiator *)v6 processRemoteNegotiationData:v7, &v15, buf, &v16];
    goto LABEL_45;
  }

  if ([(VCMediaNegotiationBlob *)v7 screenSettings]&& ![(VCMediaNegotiator *)self negotiateScreenSettings:[(VCMediaNegotiationBlob *)v7 screenSettings]])
  {
    [(VCMediaNegotiator *)v6 processRemoteNegotiationData:v7, &v15, buf, &v16];
    goto LABEL_45;
  }

  if ([(VCMediaNegotiationBlob *)v7 captionsSettings]&& ![(VCMediaNegotiator *)self negotiateCaptionsWithCaptionsSettings:[(VCMediaNegotiationBlob *)v7 captionsSettings]])
  {
    [(VCMediaNegotiator *)v6 processRemoteNegotiationData:v7, &v15, buf, &v16];
    goto LABEL_45;
  }

  if ([(VCMediaNegotiationBlob *)v7 momentsSettings]&& ![(VCMediaNegotiator *)self negotiateMomentsWithMomentsSettings:[(VCMediaNegotiationBlob *)v7 momentsSettings]])
  {
    [(VCMediaNegotiator *)v6 processRemoteNegotiationData:v7, &v15, buf, &v16];
    goto LABEL_45;
  }

  if ([(NSMutableArray *)[(VCMediaNegotiationBlob *)v7 multiwayAudioStreams] count]&& ![(VCMediaNegotiator *)self negotiateMultiwayAudioStreams:[(VCMediaNegotiationBlob *)v7 multiwayAudioStreams]])
  {
    [(VCMediaNegotiator *)v6 processRemoteNegotiationData:v7, &v15, buf, &v16];
    goto LABEL_45;
  }

  if ([(NSMutableArray *)[(VCMediaNegotiationBlob *)v7 multiwayVideoStreams] count]&& ![(VCMediaNegotiator *)self negotiateMultiwayVideoStreams:[(VCMediaNegotiationBlob *)v7 multiwayVideoStreams]])
  {
    [(VCMediaNegotiator *)v6 processRemoteNegotiationData:v7, &v15, buf, &v16];
    goto LABEL_45;
  }

  if ([(VCMediaNegotiationBlob *)v7 hasEncryptionSettings]&& ![(VCMediaNegotiator *)self negotiateMediaEncryptionWithRemoteSettings:[(VCMediaNegotiationBlobMediaEncryptionSettings *)[(VCMediaNegotiationBlob *)v7 encryptionSettings] mediaEncryptionSettings]])
  {
    [(VCMediaNegotiator *)v6 processRemoteNegotiationData:v7, &v15, buf, &v16];
    goto LABEL_45;
  }

  v13 = 1;
LABEL_32:

  return v13;
}

+ (id)negotiationBlobFromData:(id)data
{
  v3 = [VCMediaNegotiator newDecompressedBlob:?];
  v4 = [[VCMediaNegotiationBlob alloc] initWithData:v3];

  return v4;
}

+ (id)localConfigurationWithData:(id)data deviceRole:(int)role preferredAudioPayload:(int)payload
{
  v5 = *&payload;
  v6 = *&role;
  v8 = objc_alloc_init(VCMediaNegotiatorLocalConfiguration);
  if (!v8)
  {
    +[VCMediaNegotiator localConfigurationWithData:deviceRole:preferredAudioPayload:];
LABEL_7:
    v9 = v11;
    goto LABEL_4;
  }

  if (![VCMediaNegotiator initializeLocalConfiguration:v8 negotiationData:data deviceRole:v6 preferredAudioPayload:v5])
  {
    +[VCMediaNegotiator localConfigurationWithData:deviceRole:preferredAudioPayload:];
    goto LABEL_7;
  }

  v9 = v8;
LABEL_4:

  return v9;
}

+ (BOOL)addMediaConfigurationsToLocalConfiguration:(id)configuration withBlob:(id)blob
{
  v17 = *MEMORY[0x1E69E9840];
  videoSettings = [blob videoSettings];
  screenSettings = [blob screenSettings];
  v8 = [objc_msgSend(blob "audioSettings")];
  if (!v8)
  {
    +[VCMediaNegotiator addMediaConfigurationsToLocalConfiguration:withBlob:];
LABEL_14:
    v11 = v14;
    videoSettings = v15;
    v12 = v16;
    goto LABEL_10;
  }

  [configuration setMediaConfiguration:v8 forMediaType:1];
  if (!videoSettings)
  {
    goto LABEL_5;
  }

  v9 = [objc_msgSend(blob "videoSettings")];
  if (!v9)
  {
    +[VCMediaNegotiator addMediaConfigurationsToLocalConfiguration:withBlob:];
    goto LABEL_14;
  }

  videoSettings = v9;
  [configuration setMediaConfiguration:v9 forMediaType:2];
LABEL_5:
  if (!screenSettings)
  {
    v11 = 0;
    goto LABEL_9;
  }

  v10 = [objc_msgSend(blob "screenSettings")];
  if (!v10)
  {
    [(VCMediaNegotiator *)videoSettings addMediaConfigurationsToLocalConfiguration:&v15 withBlob:&v16];
    goto LABEL_14;
  }

  v11 = v10;
  [configuration setMediaConfiguration:v10 forMediaType:3];
LABEL_9:
  v12 = 1;
LABEL_10:

  return v12;
}

+ (BOOL)initializeLocalConfiguration:(id)configuration negotiationData:(id)data deviceRole:(int)role preferredAudioPayload:(int)payload
{
  v6 = *&payload;
  v7 = *&role;
  v64 = *MEMORY[0x1E69E9840];
  v11 = [VCMediaNegotiator negotiationBlobFromData:data];
  if (!v11)
  {
    +[VCMediaNegotiator initializeLocalConfiguration:negotiationData:deviceRole:preferredAudioPayload:];
    return v43;
  }

  v12 = v11;
  dataCopy = data;
  selfCopy = self;
  ntpTime = [v11 ntpTime];
  [configuration setDeviceRole:v7];
  [configuration setPreferredAudioCodec:v6];
  [configuration setCreationTime:ntpTime];
  [configuration setMediaControlInfoVersion:{objc_msgSend(v12, "mediaControlInfoVersion")}];
  [configuration setAllowRTCPFB:{objc_msgSend(objc_msgSend(v12, "videoSettings"), "allowRTCPFB")}];
  [configuration setIsCaller:1];
  [configuration setAccessNetworkType:{objc_msgSend(v12, "accessNetworkType")}];
  [configuration setCustomVideoWidth:{objc_msgSend(objc_msgSend(v12, "screenSettings"), "customVideoWidth")}];
  [configuration setCustomVideoHeight:{objc_msgSend(objc_msgSend(v12, "screenSettings"), "customVideoHeight")}];
  [configuration setTilesPerVideoFrame:{objc_msgSend(objc_msgSend(v12, "screenSettings"), "tilesPerFrame")}];
  [configuration setBlackFrameOnClearScreenEnabled:{objc_msgSend(objc_msgSend(v12, "screenSettings"), "blackFrameOnClearScreenEnabled")}];
  [configuration setFoveationIsSupported:{objc_msgSend(objc_msgSend(v12, "screenSettings"), "foveationSupported")}];
  [configuration setBasebandCodec:{objc_msgSend(v12, "basebandCodec")}];
  [configuration setBasebandCodecSampleRate:{objc_msgSend(v12, "basebandCodecSampleRate")}];
  [configuration setEnableInterleavedEncoding:{objc_msgSend(objc_msgSend(v12, "videoSettings"), "enableInterleavedEncoding")}];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  multiwayAudioStreams = [v12 multiwayAudioStreams];
  v15 = [multiwayAudioStreams countByEnumeratingWithState:&v60 objects:v59 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v61;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v61 != v17)
        {
          objc_enumerationMutation(multiwayAudioStreams);
        }

        newMultiwayAudioStream = [*(*(&v60 + 1) + 8 * i) newMultiwayAudioStream];
        [configuration addMultiwayAudioStream:newMultiwayAudioStream];
      }

      v16 = [multiwayAudioStreams countByEnumeratingWithState:&v60 objects:v59 count:16];
    }

    while (v16);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  multiwayVideoStreams = [v12 multiwayVideoStreams];
  v21 = [multiwayVideoStreams countByEnumeratingWithState:&v55 objects:v54 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v56;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v56 != v23)
        {
          objc_enumerationMutation(multiwayVideoStreams);
        }

        newMultiwayVideoStream = [*(*(&v55 + 1) + 8 * j) newMultiwayVideoStream];
        [configuration addMultiwayVideoStream:newMultiwayVideoStream];
      }

      v22 = [multiwayVideoStreams countByEnumeratingWithState:&v55 objects:v54 count:16];
    }

    while (v22);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v42 = v12;
  bandwidthSettings = [v12 bandwidthSettings];
  v27 = [bandwidthSettings countByEnumeratingWithState:&v50 objects:v49 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v51;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v51 != v29)
        {
          objc_enumerationMutation(bandwidthSettings);
        }

        newBandwidthConfigurations = [*(*(&v50 + 1) + 8 * k) newBandwidthConfigurations];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v32 = [newBandwidthConfigurations countByEnumeratingWithState:&v45 objects:v44 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v46;
          do
          {
            for (m = 0; m != v33; ++m)
            {
              if (*v46 != v34)
              {
                objc_enumerationMutation(newBandwidthConfigurations);
              }

              [configuration addBandwidthConfiguration:*(*(&v45 + 1) + 8 * m)];
            }

            v33 = [newBandwidthConfigurations countByEnumeratingWithState:&v45 objects:v44 count:16];
          }

          while (v33);
        }
      }

      v28 = [bandwidthSettings countByEnumeratingWithState:&v50 objects:v49 count:16];
    }

    while (v28);
  }

  v36 = [objc_msgSend(v42 "momentsSettings")];
  [configuration setMediaRecorderVideoCodecs:v36];

  v37 = [objc_msgSend(v42 "momentsSettings")];
  [configuration setMediaRecorderImageTypes:v37];

  faceTimeSettings = [v42 faceTimeSettings];
  [configuration setSIPDisabled:{objc_msgSend(faceTimeSettings, "SIPDisabled")}];
  [configuration setSecureMessagingRequired:{objc_msgSend(faceTimeSettings, "secureMessagingRequired")}];
  [configuration setFaceTimeSwitches:{objc_msgSend(faceTimeSettings, "switches")}];
  [configuration setOneToOneModeSupported:{objc_msgSend(faceTimeSettings, "oneToOneModeSupported")}];
  [configuration setMediaControlInfoFECFeedbackVersion:{objc_msgSend(faceTimeSettings, "mediaControlInfoFECFeedbackVersion")}];
  [configuration setLinkProbingCapabilityVersion:{objc_msgSend(faceTimeSettings, "linkProbingCapabilityVersion")}];
  [configuration setMediaEncryptionSettings:{objc_msgSend(objc_msgSend(v42, "encryptionSettings"), "mediaEncryptionSettings")}];
  if (([selfCopy addMediaConfigurationsToLocalConfiguration:configuration withBlob:v42] & 1) == 0)
  {
    +[VCMediaNegotiator initializeLocalConfiguration:negotiationData:deviceRole:preferredAudioPayload:];
    return v43;
  }

  [v42 printWithTitle:@"Cached invite media blob" blobSize:objc_msgSend(dataCopy logFile:{"length"), objc_msgSend(configuration, "callLogFile")}];
  return 1;
}

- (id)newResponseBlob
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = VCMediaStreamSendGroup;
  if ([(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings isCaller])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaNegotiator newResponseBlob];
      }
    }

    goto LABEL_49;
  }

  v4 = objc_alloc_init(VCMediaNegotiationBlob);
  if (!v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaNegotiator newResponseBlob];
      }
    }

LABEL_49:
    v38 = 0;
    v36 = 0;
    v26 = 0;
    v39 = 0;
    v10 = 0;
    v5 = 0;
    goto LABEL_42;
  }

  v5 = v4;
  [(VCMediaNegotiationBlob *)v4 setBlobVersion:2];
  [(VCMediaNegotiationBlob *)v5 setUserAgent:@"Viceroy 1.7.0/GK"];
  [(VCMediaNegotiationBlob *)v5 setBasebandCodecSampleRate:[(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings basebandCodecSampleRate]];
  [(VCMediaNegotiationBlob *)v5 setBasebandCodec:[(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings basebandCodec]];
  [(VCMediaNegotiationBlob *)v5 setMediaControlInfoVersion:[(VCMediaNegotiatorResults *)self->super._negotiatedSettings mediaControlInfoVersion]];
  if (self->_negotiationMode == 1)
  {
    [(VCMediaNegotiationBlob *)v5 setAllowDynamicMaxBitrate:0];
    supportsDynamicMaxBitrate = 0;
  }

  else
  {
    [(VCMediaNegotiationBlob *)v5 setAllowDynamicMaxBitrate:1];
    supportsDynamicMaxBitrate = [(VCMediaNegotiatorResults *)self->super._negotiatedSettings supportsDynamicMaxBitrate];
  }

  [(VCMediaNegotiationBlob *)v5 setAllowsContentsChangeWithAspectPreservation:supportsDynamicMaxBitrate];
  if (![(VCMediaNegotiator *)self setupBandwidthSettingsForMediaBlob:v5])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaNegotiator newResponseBlob];
      }
    }

    goto LABEL_60;
  }

  v7 = [(NSMutableDictionary *)self->super._negotiatedU1MediaSettings objectForKeyedSubscript:&unk_1F579A9B0];
  v8 = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings mediaConfigurationForMediaType:1];
  if (!v7)
  {
    v10 = 0;
LABEL_23:
    v60 = v7;
    v17 = [(NSMutableDictionary *)self->super._negotiatedU1MediaSettings objectForKeyedSubscript:&unk_1F579A9C8];
    v18 = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings mediaConfigurationForMediaType:2];
    if ([v17 isSupported])
    {
      v58 = [VCMediaNegotiationBlobVideoSettings alloc];
      ssrc = [v18 ssrc];
      isRTCPFBEnabled = [v17 isRTCPFBEnabled];
      videoRuleCollections = [v17 videoRuleCollections];
      videoFeatureStrings = [v18 videoFeatureStrings];
      isCellular16x9Capable = self->_isCellular16x9Capable;
      tilesPerVideoFrame = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings tilesPerVideoFrame];
      ltrpEnabled = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings ltrpEnabled];
      pixelFormats = [v17 pixelFormats];
      hdrModesNegotiated = [v17 hdrModesNegotiated];
      customVideoWidth = [v17 customVideoWidth];
      customVideoHeight = [v17 customVideoHeight];
      LOBYTE(v43) = [v17 enableInterleavedEncoding];
      LOBYTE(v41) = ltrpEnabled;
      v25 = [(VCMediaNegotiationBlobVideoSettings *)v58 initWithSSRC:ssrc allowRTCPFB:isRTCPFBEnabled videoRuleCollections:videoRuleCollections featureStrings:videoFeatureStrings isCellular16x9Capable:isCellular16x9Capable tilesPerFrame:tilesPerVideoFrame ltrpEnabled:v41 pixelFormats:pixelFormats hdrModesSupported:hdrModesNegotiated customVideoWidth:__PAIR64__(customVideoHeight customVideoHeight:customVideoWidth) enableInterleavedEncoding:v43];
      if (!v25)
      {
        v3 = VCMediaStreamSendGroup;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCMediaNegotiator newResponseBlob];
          }
        }

        v38 = 0;
        v36 = 0;
        v26 = 0;
        goto LABEL_41;
      }

      v26 = v25;
      [(VCMediaNegotiationBlob *)v5 setVideoSettings:v25];
    }

    else
    {
      v26 = 0;
    }

    v27 = [(NSMutableDictionary *)self->super._negotiatedU1MediaSettings objectForKeyedSubscript:&unk_1F579A9E0];
    v28 = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings mediaConfigurationForMediaType:3];
    if ([v27 isSupported])
    {
      v59 = v26;
      v57 = [VCMediaNegotiationBlobVideoSettings alloc];
      ssrc2 = [v28 ssrc];
      isRTCPFBEnabled2 = [v27 isRTCPFBEnabled];
      videoRuleCollections2 = [v27 videoRuleCollections];
      featureStrings = [v27 featureStrings];
      v47 = self->_isCellular16x9Capable;
      customVideoWidth2 = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings customVideoWidth];
      customVideoHeight2 = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings customVideoHeight];
      tilesPerFrame = [v27 tilesPerFrame];
      ltrpEnabled2 = [v27 ltrpEnabled];
      pixelFormats2 = [v27 pixelFormats];
      hdrModesNegotiated2 = [v27 hdrModesNegotiated];
      fecEnabled = [v27 fecEnabled];
      rtxEnabled = [v27 rtxEnabled];
      blackFrameOnClearScreenEnabled = [v27 blackFrameOnClearScreenEnabled];
      BYTE3(v43) = [v27 foveationIsSupported];
      BYTE2(v43) = blackFrameOnClearScreenEnabled;
      BYTE1(v43) = rtxEnabled;
      LOBYTE(v43) = fecEnabled;
      LOBYTE(v42) = ltrpEnabled2;
      v35 = [VCMediaNegotiationBlobVideoSettings initWithScreenSSRC:v57 allowRTCPFB:"initWithScreenSSRC:allowRTCPFB:videoRuleCollections:featureStrings:isCellular16x9Capable:customVideoWidth:customVideoHeight:tilesPerFrame:ltrpEnabled:pixelFormats:hdrModesSupported:fecEnabled:rtxEnabled:blackFrameOnClearScreenEnabled:foveationSupported:" videoRuleCollections:ssrc2 featureStrings:isRTCPFBEnabled2 isCellular16x9Capable:videoRuleCollections2 customVideoWidth:featureStrings customVideoHeight:v47 tilesPerFrame:customVideoWidth2 ltrpEnabled:__PAIR64__(tilesPerFrame pixelFormats:customVideoHeight2) hdrModesSupported:v42 fecEnabled:pixelFormats2 rtxEnabled:hdrModesNegotiated2 blackFrameOnClearScreenEnabled:v43 foveationSupported:?];
      if (!v35)
      {
        v3 = VCMediaStreamSendGroup;
        v26 = v59;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCMediaNegotiator newResponseBlob];
          }
        }

        v38 = 0;
        v36 = 0;
        goto LABEL_41;
      }

      v36 = v35;
      [(VCMediaNegotiationBlob *)v5 setScreenSettings:v35];
      v3 = VCMediaStreamSendGroup;
      v26 = v59;
    }

    else
    {
      v36 = 0;
      v3 = VCMediaStreamSendGroup;
    }

    if (self->_negotiatedCaptionsSettings)
    {
      [(VCMediaNegotiator *)self setupCaptionsForMediaBlob:v5];
    }

    if (self->super._negotiatedMediaRecorderSettings)
    {
      [(VCMediaNegotiator *)self setupMomentsForMediaBlob:v5];
    }

    if (self->super._negotiatedFaceTimeSettings)
    {
      [(VCMediaNegotiator *)self setupFaceTimeSettingsForMediaBlob:v5 isResponse:1];
    }

    if (self->super._negotiatedMediaEncyptionSettings)
    {
      [(VCMediaNegotiator *)self setUpMediaEncryptionForMediaBlob:v5 isResponse:1];
    }

    v37 = [&v3[32] newCompressedBlob:{-[VCMediaNegotiationBlob data](v5, "data")}];
    if (v37)
    {
      v38 = v37;
      -[VCMediaNegotiationBlob printWithTitle:blobSize:logFile:](v5, "printWithTitle:blobSize:logFile:", @"Created response media blob", [v37 length], -[VCMediaNegotiatorLocalConfiguration callLogFile](self->super._localSettings, "callLogFile"));
      self->_usePreNegotiation = 1;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaNegotiator newResponseBlob];
        }
      }

      v38 = 0;
    }

LABEL_41:
    v39 = v60;
    goto LABEL_42;
  }

  v9 = -[VCMediaNegotiatorAudioConfiguration initWithAllowAudioSwitching:allowAudioRecording:useSBR:ssrc:audioUnitNumber:]([VCMediaNegotiatorAudioConfiguration alloc], "initWithAllowAudioSwitching:allowAudioRecording:useSBR:ssrc:audioUnitNumber:", -[VCMediaNegotiationBlobAudioSettings allowSwitching](v7, "allowSwitching"), -[VCMediaNegotiationBlobAudioSettings allowRecording](v7, "allowRecording"), 1, [v8 ssrc], objc_msgSend(v8, "audioUnitNumber"));
  if (!v9)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      v38 = 0;
      v36 = 0;
      v26 = 0;
      v39 = 0;
      v10 = 0;
LABEL_75:
      v3 = VCMediaStreamSendGroup;
      goto LABEL_42;
    }

    VRTraceErrorLogLevelToCSTR();
    v3 = VCMediaStreamSendGroup;
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCMediaNegotiator newResponseBlob];
    }

LABEL_60:
    v38 = 0;
    v36 = 0;
    v26 = 0;
    v39 = 0;
    v10 = 0;
    goto LABEL_42;
  }

  v10 = v9;
  [(VCMediaNegotiatorAudioConfiguration *)v9 addAudioPayload:[(VCMediaNegotiationBlobAudioSettings *)v7 primaryPayload] isSecondary:0];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  secondaryPayloads = [(VCMediaNegotiationBlobAudioSettings *)v7 secondaryPayloads];
  v12 = [secondaryPayloads countByEnumeratingWithState:&v62 objects:v61 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v63;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v63 != v14)
        {
          objc_enumerationMutation(secondaryPayloads);
        }

        -[VCMediaNegotiatorAudioConfiguration addAudioPayload:isSecondary:](v10, "addAudioPayload:isSecondary:", [*(*(&v62 + 1) + 8 * i) intValue], 1);
      }

      v13 = [secondaryPayloads countByEnumeratingWithState:&v62 objects:v61 count:16];
    }

    while (v13);
  }

  if ([(VCMediaNegotiationBlobAudioSettings *)v7 redPayload]!= 128)
  {
    [(VCMediaNegotiatorAudioConfiguration *)v10 addAudioPayload:[(VCMediaNegotiationBlobAudioSettings *)v7 redPayload] isSecondary:1];
  }

  if ([(VCMediaNegotiationBlobAudioSettings *)v7 dtxPayload]!= 128)
  {
    [(VCMediaNegotiatorAudioConfiguration *)v10 addAudioPayload:[(VCMediaNegotiationBlobAudioSettings *)v7 dtxPayload] isSecondary:1];
  }

  v16 = [[VCMediaNegotiationBlobAudioSettings alloc] initWithAudioConfiguration:v10];
  if (v16)
  {
    v7 = v16;
    [(VCMediaNegotiationBlob *)v5 setAudioSettings:v16];
    goto LABEL_23;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    v38 = 0;
    v36 = 0;
    v26 = 0;
    v39 = 0;
    goto LABEL_75;
  }

  VRTraceErrorLogLevelToCSTR();
  v3 = VCMediaStreamSendGroup;
  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
  {
    [VCMediaNegotiator newResponseBlob];
  }

  v38 = 0;
  v36 = 0;
  v26 = 0;
  v39 = 0;
LABEL_42:

  [&v3[32] dumpBlob:v38 prefix:@"mediablob_response" force:0];
  return v38;
}

- (BOOL)processResponseBlob:(id)blob
{
  v22 = *MEMORY[0x1E69E9840];
  [VCMediaNegotiator dumpBlob:blob prefix:@"mediablob_response_remote" force:0];
  if (![(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings isCaller])
  {
    [VCMediaNegotiator processResponseBlob:];
LABEL_36:
    v6 = v13;
    v11 = v14;
    v7 = *buf;
    goto LABEL_25;
  }

  v5 = [VCMediaNegotiator newDecompressedBlob:blob];
  if (!v5)
  {
    [VCMediaNegotiator processResponseBlob:];
    goto LABEL_36;
  }

  v6 = v5;
  v7 = [[VCMediaNegotiationBlob alloc] initWithData:v5];
  if (!v7)
  {
    [(VCMediaNegotiator *)v6 processResponseBlob:&v14, buf];
    goto LABEL_36;
  }

  -[VCMediaNegotiationBlob printWithTitle:blobSize:logFile:](v7, "printWithTitle:blobSize:logFile:", @"Received response media blob", [v6 length], -[VCMediaNegotiatorLocalConfiguration callLogFile](self->super._localSettings, "callLogFile"));
  [(VCMediaNegotiatorResults *)self->super._negotiatedSettings setSupportsDynamicMaxBitrate:[(VCMediaNegotiationBlob *)v7 allowDynamicMaxBitrate]];
  [(VCMediaNegotiatorResults *)self->super._negotiatedSettings setRemoteUserAgent:[(VCMediaNegotiationBlob *)v7 userAgent]];
  [(VCMediaNegotiatorResults *)self->super._negotiatedSettings setRemoteBasebandCodec:[(VCMediaNegotiationBlob *)v7 basebandCodec]];
  [(VCMediaNegotiatorResults *)self->super._negotiatedSettings setRemoteBasebandCodecSampleRate:[(VCMediaNegotiationBlob *)v7 basebandCodecSampleRate]];
  [(VCMediaNegotiatorResults *)self->super._negotiatedSettings setAccessNetworkType:[(VCMediaNegotiationBlob *)v7 accessNetworkType]];
  [(VCMediaNegotiatorResults *)self->super._negotiatedSettings setMediaControlInfoVersion:[(VCMediaNegotiationBlob *)v7 mediaControlInfoVersion]];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      mediaControlInfoVersion = [(VCMediaNegotiatorResults *)self->super._negotiatedSettings mediaControlInfoVersion];
      *buf = 136315906;
      *&buf[4] = v8;
      v16 = 2080;
      v17 = "[VCMediaNegotiator processResponseBlob:]";
      v18 = 1024;
      v19 = 679;
      v20 = 1024;
      v21 = mediaControlInfoVersion == 2;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Load switch after negotiation updatedAFRCHeaderEnabled %d", buf, 0x22u);
    }
  }

  [(VCMediaNegotiator *)self saveRemoteBandwidthSettingsWithMediaBlob:v7];
  if (![(VCMediaNegotiationBlob *)v7 hasBlobVersion]|| ![(VCMediaNegotiationBlob *)v7 blobVersion])
  {
    [(VCMediaNegotiationBlobAudioSettings *)[(VCMediaNegotiationBlob *)v7 audioSettings] setUseSBR:0];
  }

  if ([(VCMediaNegotiationBlob *)v7 audioSettings]&& ![(VCMediaNegotiator *)self setupAudioWithNegotiatedSettings:[(VCMediaNegotiationBlob *)v7 audioSettings]])
  {
    [(VCMediaNegotiator *)v6 processResponseBlob:v7, &v13, &v14, buf];
    goto LABEL_36;
  }

  if ([(VCMediaNegotiationBlob *)v7 videoSettings]&& ![(VCMediaNegotiator *)self setupVideoWithNegotiatedSettings:[(VCMediaNegotiationBlob *)v7 videoSettings]])
  {
    [(VCMediaNegotiator *)v6 processResponseBlob:v7, &v13, &v14, buf];
    goto LABEL_36;
  }

  if ([(VCMediaNegotiationBlob *)v7 screenSettings]&& ![(VCMediaNegotiator *)self setupScreenWithNegotiatedSettings:[(VCMediaNegotiationBlob *)v7 screenSettings]])
  {
    [(VCMediaNegotiator *)v6 processResponseBlob:v7, &v13, &v14, buf];
    goto LABEL_36;
  }

  if ([(VCMediaNegotiationBlob *)v7 captionsSettings]&& ![(VCMediaNegotiator *)self negotiateCaptionsWithCaptionsSettings:[(VCMediaNegotiationBlob *)v7 captionsSettings]])
  {
    [(VCMediaNegotiator *)v6 processResponseBlob:v7, &v13, &v14, buf];
    goto LABEL_36;
  }

  if ([(VCMediaNegotiationBlob *)v7 momentsSettings]&& ![(VCMediaNegotiator *)self negotiateMomentsWithMomentsSettings:[(VCMediaNegotiationBlob *)v7 momentsSettings]])
  {
    [(VCMediaNegotiator *)v6 processResponseBlob:v7, &v13, &v14, buf];
    goto LABEL_36;
  }

  if ([(VCMediaNegotiationBlob *)v7 faceTimeSettings]&& ![(VCMediaNegotiator *)self negotiateFaceTimeSettings:[(VCMediaNegotiationBlob *)v7 faceTimeSettings]])
  {
    [(VCMediaNegotiator *)v6 processResponseBlob:v7, &v13, &v14, buf];
    goto LABEL_36;
  }

  if ([(VCMediaNegotiationBlob *)v7 hasEncryptionSettings]&& ![(VCMediaNegotiator *)self negotiateMediaEncryptionWithRemoteSettings:[(VCMediaNegotiationBlobMediaEncryptionSettings *)[(VCMediaNegotiationBlob *)v7 encryptionSettings] mediaEncryptionSettings]])
  {
    [(VCMediaNegotiator *)v6 processResponseBlob:v7, &v13, &v14, buf];
    goto LABEL_36;
  }

  v11 = 1;
  self->_usePreNegotiation = 1;
LABEL_25:

  return v11;
}

+ (id)negotiatedFeaturesStringWithLocalFeaturesString:(id)string remoteFeaturesString:(id)featuresString
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = [string componentsSeparatedByString:@";"];
  v6 = [featuresString componentsSeparatedByString:@";"];
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  if (!v8)
  {
    +[VCMediaNegotiator negotiatedFeaturesStringWithLocalFeaturesString:remoteFeaturesString:];
LABEL_21:
    v14 = v21[6];
    v19 = v21[7];
    goto LABEL_18;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = [v5 countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v5);
        }

        [v8 setObject:*(*(&v28 + 1) + 8 * i) forKeyedSubscript:{objc_msgSend(objc_msgSend(*(*(&v28 + 1) + 8 * i), "componentsSeparatedByString:", @":", "firstObject")}];
      }

      v10 = [v5 countByEnumeratingWithState:&v28 objects:v27 count:16];
    }

    while (v10);
  }

  v13 = objc_opt_new();
  if (!v13)
  {
    +[VCMediaNegotiator negotiatedFeaturesStringWithLocalFeaturesString:remoteFeaturesString:];
    goto LABEL_21;
  }

  v14 = v13;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = [v6 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v6);
        }

        [v14 setObject:*(*(&v23 + 1) + 8 * j) forKeyedSubscript:{objc_msgSend(objc_msgSend(*(*(&v23 + 1) + 8 * j), "componentsSeparatedByString:", @":", "firstObject")}];
      }

      v16 = [v6 countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v16);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __90__VCMediaNegotiator_negotiatedFeaturesStringWithLocalFeaturesString_remoteFeaturesString___block_invoke;
  v21[3] = &unk_1E85F8650;
  v21[4] = v8;
  v21[5] = v7;
  [v14 enumerateKeysAndObjectsUsingBlock:v21];
  v19 = [v7 componentsJoinedByString:@";"];
LABEL_18:

  return v19;
}

uint64_t __90__VCMediaNegotiator_negotiatedFeaturesStringWithLocalFeaturesString_remoteFeaturesString___block_invoke(uint64_t result, void *a2, uint64_t a3)
{
  if (a2)
  {
    v5 = result;
    result = [a2 length];
    if (result)
    {
      result = [*(v5 + 32) objectForKeyedSubscript:a2];
      if (result)
      {
        v6 = *(v5 + 40);

        return [v6 addObject:a3];
      }
    }
  }

  return result;
}

+ (BOOL)validateMultiwayVideoStreamConfigurations:(id)configurations
{
  v32 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [configurations countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v29;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v29 != v7)
      {
        objc_enumerationMutation(configurations);
      }

      v9 = *(*(&v28 + 1) + 8 * v8);
      if ([v9 isSubstream])
      {
        if (!v6)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v12 = VRTraceErrorLogLevelToCSTR();
            v11 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
            if (!v11)
            {
              return v11;
            }

            [(VCMediaNegotiator *)v12 validateMultiwayVideoStreamConfigurations:v9];
          }

LABEL_20:
          LOBYTE(v11) = 0;
          return v11;
        }

        ssrc = [v9 ssrc];
        if (ssrc != [v6 ssrc])
        {
          ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
          if (ErrorLogLevelForModule >= 3)
          {
            v14 = VRTraceErrorLogLevelToCSTR();
            v15 = *MEMORY[0x1E6986650];
            v11 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
            if (!v11)
            {
              return v11;
            }

            v17 = 136316162;
            v18 = v14;
            v19 = 2080;
            v20 = "+[VCMediaNegotiator validateMultiwayVideoStreamConfigurations:]";
            v21 = 1024;
            v22 = 788;
            v23 = 1024;
            ssrc2 = [v9 ssrc];
            v25 = 1024;
            ssrc3 = [v6 ssrc];
            _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d Substream ssrc[%x] doesn't match its corresponding parent stream[%x]", &v17, 0x28u);
          }

          goto LABEL_20;
        }
      }

      else
      {
        v6 = v9;
      }

      if (v5 == ++v8)
      {
        v5 = [configurations countByEnumeratingWithState:&v28 objects:v27 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  LOBYTE(v11) = 1;
  return v11;
}

+ (BOOL)validateMultiwayAudioStreamConfigurations:(id)configurations
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [configurations countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(configurations);
      }

      if ([*(*(&v11 + 1) + 8 * v7) isSubstream])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [configurations countByEnumeratingWithState:&v11 objects:v10 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v8 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v8)
      {
        return v8;
      }

      +[VCMediaNegotiator validateMultiwayAudioStreamConfigurations:];
    }

    LOBYTE(v8) = 0;
  }

  else
  {
LABEL_9:
    LOBYTE(v8) = 1;
  }

  return v8;
}

+ (BOOL)validateLocalConfiguration:(id)configuration
{
  v4 = +[VCMediaNegotiator validateMultiwayVideoStreamConfigurations:](VCMediaNegotiator, "validateMultiwayVideoStreamConfigurations:", [configuration multiwayVideoStreams]);
  if (v4)
  {
    multiwayAudioStreams = [configuration multiwayAudioStreams];

    LOBYTE(v4) = [VCMediaNegotiator validateMultiwayAudioStreamConfigurations:multiwayAudioStreams];
  }

  return v4;
}

+ (void)dumpBlob:(id)blob prefix:(id)prefix force:(BOOL)force
{
  forceCopy = force;
  v17 = *MEMORY[0x1E69E9840];
  if ([+[VCDefaults dumpMediaBlob]|| forceCopy sharedInstance]
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v8;
        v13 = 2080;
        v14 = "+[VCMediaNegotiator dumpBlob:prefix:force:]";
        v15 = 1024;
        v16 = 820;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media blob dump enabled !!", buf, 0x1Cu);
      }
    }

    uTF8String = [prefix UTF8String];
    memset(buf, 170, sizeof(buf));
    __sprintf_chk(buf, 0, 0xCuLL, "%010u", 0);
    v11 = VRLogfileAlloc(0, buf, uTF8String, ".blob", "com.apple.VideoConference.MediaBlob", 9);
    VRLogfileWrite(v11, [blob bytes], objc_msgSend(blob, "length"));
    VRLogfileFree(&v11);
  }
}

- (BOOL)addBandwidthSettingsForMediaBlob:(id)blob arbiterMode:(unsigned __int8)mode connectionType:(int)type maxBitrate:(unsigned int)bitrate
{
  v6 = *&bitrate;
  modeCopy = mode;
  v38 = *MEMORY[0x1E69E9840];
  v10 = [VCMediaNegotiationBlobBandwidthSettings bandwidthConfigurationWithArbiterMode:mode connectionType:*&type];
  if (v10)
  {
    v11 = v10;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    bandwidthSettings = [blob bandwidthSettings];
    v13 = [bandwidthSettings countByEnumeratingWithState:&v34 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(bandwidthSettings);
          }

          v17 = *(*(&v34 + 1) + 8 * i);
          if ([v17 maxBandwidth] == v6)
          {
            if (v11 < 4096)
            {
              [v17 setConfiguration:{objc_msgSend(v17, "configuration") | v11}];
            }

            else
            {
              [v17 setConfigurationExtension:{objc_msgSend(v17, "configurationExtension") | v11}];
            }

            goto LABEL_22;
          }
        }

        v14 = [bandwidthSettings countByEnumeratingWithState:&v34 objects:v33 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v18 = objc_alloc_init(VCMediaNegotiationBlobBandwidthSettings);
    if (!v18)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v10)
        {
          return v10;
        }

        v23 = 136316162;
        v24 = v20;
        v25 = 2080;
        v26 = "[VCMediaNegotiator addBandwidthSettingsForMediaBlob:arbiterMode:connectionType:maxBitrate:]";
        v27 = 1024;
        v28 = 857;
        v29 = 1024;
        typeCopy = type;
        v31 = 1024;
        v32 = modeCopy;
        _os_log_error_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create bandwidth setting: connection type=%d, operating mode=%hhu", &v23, 0x28u);
      }

      LOBYTE(v10) = 0;
      return v10;
    }

    v19 = v18;
    [(VCMediaNegotiationBlobBandwidthSettings *)v18 setMaxBandwidth:v6];
    if (v11 < 4096)
    {
      [(VCMediaNegotiationBlobBandwidthSettings *)v19 setConfiguration:[(VCMediaNegotiationBlobBandwidthSettings *)v19 configuration]| v11];
    }

    else
    {
      [(VCMediaNegotiationBlobBandwidthSettings *)v19 setConfigurationExtension:[(VCMediaNegotiationBlobBandwidthSettings *)v19 configurationExtension]| v11];
    }

    [blob addBandwidthSettings:v19];

LABEL_22:
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (BOOL)setupBandwidthSettingsForMediaBlob:(id)blob
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  bandwidthConfigurations = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings bandwidthConfigurations];
  v6 = [(NSSet *)bandwidthConfigurations countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(bandwidthConfigurations);
      }

      v10 = -[VCMediaNegotiator addBandwidthSettingsForMediaBlob:arbiterMode:connectionType:maxBitrate:](self, "addBandwidthSettingsForMediaBlob:arbiterMode:connectionType:maxBitrate:", blob, [*(*(&v13 + 1) + 8 * v9) mode], objc_msgSend(*(*(&v13 + 1) + 8 * v9), "connectionType"), objc_msgSend(*(*(&v13 + 1) + 8 * v9), "maxBandwidth"));
      if (!v10)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSSet *)bandwidthConfigurations countByEnumeratingWithState:&v13 objects:v12 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (void)saveRemoteBandwidthSettingsWithMediaBlob:(id)blob
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  bandwidthSettings = [blob bandwidthSettings];
  v5 = [bandwidthSettings countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(bandwidthSettings);
        }

        newBandwidthConfigurations = [*(*(&v11 + 1) + 8 * v8) newBandwidthConfigurations];
        [(VCMediaNegotiatorResults *)self->super._negotiatedSettings addBandwidthConfigurations:newBandwidthConfigurations];

        ++v8;
      }

      while (v6 != v8);
      v6 = [bandwidthSettings countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }
}

+ (id)newDecompressedBlob:(id)blob
{
  v20 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  [blob bytes];
  [blob length];
  if (CompressionUtils_DecompressWithZlib())
  {
    return 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v8 = v5;
      v9 = 2080;
      v10 = "+[VCMediaNegotiator newDecompressedBlob:]";
      v11 = 1024;
      v12 = 897;
      v13 = 2080;
      v14 = "+[VCMediaNegotiator newDecompressedBlob:]";
      v15 = 1024;
      v16 = [blob length];
      v17 = 1024;
      v18 = 2500;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media blob size %s: %d -> %d bytes", buf, 0x32u);
    }
  }

  return [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:__b length:2500];
}

+ (id)newCompressedBlob:(id)blob
{
  v22 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  [blob bytes];
  [blob length];
  if (CompressionUtils_CompressWithZLib())
  {
    return 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316674;
      v8 = v5;
      v9 = 2080;
      v10 = "+[VCMediaNegotiator newCompressedBlob:]";
      v11 = 1024;
      v12 = 908;
      v13 = 2080;
      v14 = "+[VCMediaNegotiator newCompressedBlob:]";
      v15 = 1024;
      v16 = [blob length];
      v17 = 1024;
      v18 = 2500;
      v19 = 2048;
      v20 = (2500 / [blob length]);
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media blob size %s: %d -> %d bytes with ratio %f", buf, 0x3Cu);
    }
  }

  return [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:__b length:2500];
}

- (void)negotiateAudioAllowRecording:(id)recording microphoneConfiguration:(id)configuration
{
  v6 = [(NSMutableDictionary *)self->super._negotiatedU1MediaSettings objectForKeyedSubscript:&unk_1F579A9B0];
  if ([configuration allowAudioRecording])
  {
    allowAudioRecording = [recording allowAudioRecording];
  }

  else
  {
    allowAudioRecording = 0;
  }

  [v6 setAllowRecording:allowAudioRecording];
}

- (void)negotiateAudioUseSBR:(id)r
{
  v4 = [(NSMutableDictionary *)self->super._negotiatedU1MediaSettings objectForKeyedSubscript:&unk_1F579A9B0];
  useSBR = [r useSBR];

  [v4 setUseSBR:useSBR];
}

- (BOOL)negotiateAudioPrimaryPayload:(id)payload microphoneConfiguration:(id)configuration
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = +[VCAudioRuleCollection getForcedPayload];
  v8 = [(NSMutableDictionary *)self->super._negotiatedU1MediaSettings objectForKeyedSubscript:&unk_1F579A9B0];
  if (v7 == 128)
  {
    audioPayloads = [configuration audioPayloads];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    audioPayloads2 = [payload audioPayloads];
    v11 = [audioPayloads2 countByEnumeratingWithState:&v25 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      v14 = 0x7FFFFFFFFFFFFFFFLL;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(audioPayloads2);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          intValue = [v16 intValue];
          if (intValue == [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings preferredAudioCodec])
          {
            v21 = v8;
            v22 = intValue;
            goto LABEL_19;
          }

          if ([audioPayloads containsObject:v16])
          {
            v18 = [&unk_1F579D218 indexOfObject:v16];
            if (v18 < v14)
            {
              v14 = v18;
            }
          }
        }

        v12 = [audioPayloads2 countByEnumeratingWithState:&v25 objects:v24 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v8 setPrimaryPayload:{objc_msgSend(objc_msgSend(&unk_1F579D218, "objectAtIndexedSubscript:", v14), "unsignedIntValue")}];
      }
    }

    LOBYTE(v19) = [v8 primaryPayload] != 128;
  }

  else
  {
    audioPayloads3 = [payload audioPayloads];
    v19 = [audioPayloads3 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v7)}];
    if (v19)
    {
      v21 = v8;
      v22 = v7;
LABEL_19:
      [v21 setPrimaryPayload:v22];
      LOBYTE(v19) = 1;
    }
  }

  return v19;
}

- (BOOL)negotiateAudioDTXPayload:(id)payload
{
  v4 = [(NSMutableDictionary *)self->super._negotiatedU1MediaSettings objectForKeyedSubscript:&unk_1F579A9B0];
  if ([v4 primaryPayload] == 13)
  {
    goto LABEL_9;
  }

  if ([objc_msgSend(payload "audioPayloads")])
  {
    [v4 setDtxPayload:13];
  }

  if ([v4 dtxPayload] != 128)
  {
LABEL_9:
    LOBYTE(v5) = 1;
    return v5;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    goto LABEL_8;
  }

  VRTraceErrorLogLevelToCSTR();
  v5 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  if (v5)
  {
    [VCMediaNegotiator negotiateAudioDTXPayload:];
LABEL_8:
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)negotiateAudioREDPayload:(id)payload microphoneConfiguration:(id)configuration
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = [(NSMutableDictionary *)self->super._negotiatedU1MediaSettings objectForKeyedSubscript:&unk_1F579A9B0];
  if ([objc_msgSend(payload "audioPayloads")] && objc_msgSend(objc_msgSend(configuration, "audioPayloads"), "containsObject:", &unk_1F579AB00))
  {
    [v6 setRedPayload:20];
  }

  redPayload = [v6 redPayload];
  if (redPayload == 128 && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = v8;
      v13 = 2080;
      v14 = "[VCMediaNegotiator negotiateAudioREDPayload:microphoneConfiguration:]";
      v15 = 1024;
      v16 = 985;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RED payload not available!", &v11, 0x1Cu);
    }
  }

  return redPayload != 128;
}

- (void)negotiateAudioSecondaryPayloads:(id)payloads microphoneConfiguration:(id)configuration
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = [(NSMutableDictionary *)self->super._negotiatedU1MediaSettings objectForKeyedSubscript:&unk_1F579A9B0];
  [v7 setAllowSwitching:{objc_msgSend(configuration, "allowAudioSwitching")}];
  if (+[VCPayloadUtils isUseCaseWatchContinuity:primaryPayload:](VCPayloadUtils, "isUseCaseWatchContinuity:primaryPayload:", -[VCMediaNegotiatorLocalConfiguration deviceRole](self->super._localSettings, "deviceRole"), [v7 primaryPayload]))
  {
    [v7 setAllowSwitching:0];
  }

  if ([v7 allowSwitching])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    audioPayloads = [payloads audioPayloads];
    v9 = [audioPayloads countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(audioPayloads);
          }

          intValue = [*(*(&v18 + 1) + 8 * v12) intValue];
          if (intValue != 13 && intValue != 20)
          {
            v15 = intValue;
            if ([configuration isSecondaryPayload:intValue] && objc_msgSend(payloads, "isSecondaryPayload:", v15))
            {
              [v7 addSecondaryPayload:v15];
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v16 = [audioPayloads countByEnumeratingWithState:&v18 objects:v17 count:16];
        v10 = v16;
      }

      while (v16);
    }

    [v7 setAllowSwitching:{objc_msgSend(objc_msgSend(v7, "secondaryPayloads"), "count") != 0}];
  }
}

- (BOOL)negotiateAudioSettings:(id)settings
{
  v5 = [(NSMutableDictionary *)self->super._negotiatedU1MediaSettings objectForKeyedSubscript:&unk_1F579A9B0];
  v6 = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings mediaConfigurationForMediaType:1];
  [v5 setRemoteSSRC:{objc_msgSend(settings, "rtpSSRC")}];
  [v5 setAudioUnitModel:{objc_msgSend(settings, "audioUnitModel")}];
  newMediaNegotiatorAudioConfiguration = [settings newMediaNegotiatorAudioConfiguration];
  if (newMediaNegotiatorAudioConfiguration)
  {
    [(VCMediaNegotiator *)self negotiateAudioUseSBR:newMediaNegotiatorAudioConfiguration];
    [(VCMediaNegotiator *)self negotiateAudioAllowRecording:newMediaNegotiatorAudioConfiguration microphoneConfiguration:v6];
    if ([(VCMediaNegotiator *)self negotiateAudioPrimaryPayload:newMediaNegotiatorAudioConfiguration microphoneConfiguration:v6])
    {
      [(VCMediaNegotiator *)self negotiateAudioDTXPayload:newMediaNegotiatorAudioConfiguration];
      [(VCMediaNegotiator *)self negotiateAudioREDPayload:newMediaNegotiatorAudioConfiguration microphoneConfiguration:v6];
      [(VCMediaNegotiator *)self negotiateAudioSecondaryPayloads:newMediaNegotiatorAudioConfiguration microphoneConfiguration:v6];
      v8 = 1;
    }

    else
    {
      [VCMediaNegotiator negotiateAudioSettings:];
      v8 = v10;
    }
  }

  else
  {
    [VCMediaNegotiator negotiateAudioSettings:];
    v8 = v11;
  }

  return v8;
}

- (BOOL)setupAudioWithNegotiatedSettings:(id)settings
{
  v20 = *MEMORY[0x1E69E9840];
  newMediaNegotiatorAudioConfiguration = [settings newMediaNegotiatorAudioConfiguration];
  if (newMediaNegotiatorAudioConfiguration)
  {
    v5 = [(NSMutableDictionary *)self->super._negotiatedU1MediaSettings objectForKeyedSubscript:&unk_1F579A9B0];
    [v5 setAllowRecording:{objc_msgSend(newMediaNegotiatorAudioConfiguration, "allowAudioRecording")}];
    [v5 setAudioUnitModel:{objc_msgSend(newMediaNegotiatorAudioConfiguration, "audioUnitNumber")}];
    [v5 setRemoteSSRC:{objc_msgSend(newMediaNegotiatorAudioConfiguration, "ssrc")}];
    [v5 setUseSBR:{objc_msgSend(newMediaNegotiatorAudioConfiguration, "useSBR")}];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    audioPayloads = [newMediaNegotiatorAudioConfiguration audioPayloads];
    v7 = [audioPayloads countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(audioPayloads);
          }

          intValue = [*(*(&v16 + 1) + 8 * i) intValue];
          if ([newMediaNegotiatorAudioConfiguration isSecondaryPayload:intValue])
          {
            if (intValue == 20)
            {
              [v5 setRedPayload:20];
              v9 = 1;
            }

            else if (intValue == 13)
            {
              [v5 setDtxPayload:13];
            }

            else
            {
              [v5 addSecondaryPayload:intValue];
            }
          }

          else
          {
            [v5 setPrimaryPayload:intValue];
          }
        }

        v8 = [audioPayloads countByEnumeratingWithState:&v16 objects:v15 count:16];
      }

      while (v8);
      if (v9)
      {
        v13 = 2;
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      v13 = 1;
    }

    [v5 setAllowSwitching:{objc_msgSend(objc_msgSend(newMediaNegotiatorAudioConfiguration, "audioPayloads"), "count") > v13}];
  }

  else
  {
    [VCMediaNegotiator setupAudioWithNegotiatedSettings:];
  }

  return newMediaNegotiatorAudioConfiguration != 0;
}

- (id)selectVideoFeatureString:(id)string selectedPayload:(int)payload videoConfiguration:(id)configuration
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&payload];
  if ([objc_msgSend(configuration "videoFeatureStrings")])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    videoPayloadCollections = [string videoPayloadCollections];
    v10 = [videoPayloadCollections countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(videoPayloadCollections);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          if ([v14 payload] == payload)
          {
            v15 = [objc_msgSend(v14 "featureString")];
            goto LABEL_12;
          }
        }

        v11 = [videoPayloadCollections countByEnumeratingWithState:&v19 objects:v18 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_12:
    if ([v15 length])
    {
      return v15;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaNegotiator selectVideoFeatureString:v17 selectedPayload:v8 videoConfiguration:?];
      }
    }

    return 0;
  }
}

- (BOOL)selectBestVideoRuleForTransport:(unsigned __int8)transport payload:(int)payload encodingType:(unsigned __int8)type localVideoRuleCollection:(id)collection remoteVideoSettings:(id)settings negotiatedVideoSettings:(id)videoSettings isScreen:(BOOL)screen
{
  typeCopy = type;
  v13 = *&payload;
  transportCopy = transport;
  v48 = *MEMORY[0x1E69E9840];
  v16 = [settings newVideoRuleCollectionsForScreen:screen isCellular16x9Capable:self->_isCellular16x9Capable isLocalConfig:0];
  if (!v16)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_35;
    }

    v30 = VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    v36 = 136316418;
    v37 = v30;
    v38 = 2080;
    v39 = "[VCMediaNegotiator selectBestVideoRuleForTransport:payload:encodingType:localVideoRuleCollection:remoteVideoSettings:negotiatedVideoSettings:isScreen:]";
    v40 = 1024;
    v41 = 1115;
    v42 = 1024;
    v43 = v13;
    v44 = 1024;
    v45 = transportCopy;
    v46 = 1024;
    v47 = typeCopy;
    v32 = " [%s] %s:%d Failed to extract the remote video rules for payload=%d transport=%d encoding=%d";
    goto LABEL_34;
  }

  v17 = [collection getVideoRulesForTransport:transportCopy payload:v13 encodingType:typeCopy];
  if (!v17)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_35;
    }

    v33 = VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    v36 = 136316418;
    v37 = v33;
    v38 = 2080;
    v39 = "[VCMediaNegotiator selectBestVideoRuleForTransport:payload:encodingType:localVideoRuleCollection:remoteVideoSettings:negotiatedVideoSettings:isScreen:]";
    v40 = 1024;
    v41 = 1118;
    v42 = 1024;
    v43 = v13;
    v44 = 1024;
    v45 = transportCopy;
    v46 = 1024;
    v47 = typeCopy;
    v32 = " [%s] %s:%d No local video rules for payload=%d transport=%d encoding=%d";
    goto LABEL_34;
  }

  v18 = v17;
  if (typeCopy == 2)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  v20 = [v16 getVideoRulesForTransport:transportCopy payload:v13 encodingType:v19];
  if (!v20)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_35;
    }

    v34 = VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    v36 = 136316418;
    v37 = v34;
    v38 = 2080;
    v39 = "[VCMediaNegotiator selectBestVideoRuleForTransport:payload:encodingType:localVideoRuleCollection:remoteVideoSettings:negotiatedVideoSettings:isScreen:]";
    v40 = 1024;
    v41 = 1121;
    v42 = 1024;
    v43 = v13;
    v44 = 1024;
    v45 = transportCopy;
    v46 = 1024;
    v47 = typeCopy;
    v32 = " [%s] %s:%d No remote video rules for payload=%d transport=%d encoding=%d";
    goto LABEL_34;
  }

  if (typeCopy == 1)
  {
    v21 = v18;
  }

  else
  {
    v21 = v20;
  }

  if (typeCopy == 1)
  {
    v22 = v20;
  }

  else
  {
    v22 = v18;
  }

  v23 = [VCMediaNegotiatorBase negotiateVideoMaxResolutionWithEncodeRules:v21 decodeRules:v22 isEncoder:typeCopy == 1];
  if (!v23)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_35;
    }

    v35 = VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    v36 = 136316418;
    v37 = v35;
    v38 = 2080;
    v39 = "[VCMediaNegotiator selectBestVideoRuleForTransport:payload:encodingType:localVideoRuleCollection:remoteVideoSettings:negotiatedVideoSettings:isScreen:]";
    v40 = 1024;
    v41 = 1127;
    v42 = 1024;
    v43 = v13;
    v44 = 1024;
    v45 = transportCopy;
    v46 = 1024;
    v47 = typeCopy;
    v32 = " [%s] %s:%d No matching remote rules for payload=%d transport=%d encoding=%d";
LABEL_34:
    _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, v32, &v36, 0x2Eu);
LABEL_35:
    v28 = 0;
    goto LABEL_21;
  }

  v24 = v23;
  featureStrings = [videoSettings featureStrings];
  if (![featureStrings objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v13)}])
  {
    if (screen)
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v27 = [(VCMediaNegotiator *)self selectVideoFeatureString:settings selectedPayload:v13 videoConfiguration:[(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings mediaConfigurationForMediaType:v26]];
    if (!v27)
    {
      [VCMediaNegotiator selectBestVideoRuleForTransport:v13 payload:? encodingType:? localVideoRuleCollection:? remoteVideoSettings:? negotiatedVideoSettings:? isScreen:?];
      v28 = v36;
      goto LABEL_21;
    }

    [videoSettings addFeatureString:v27 payload:v13];
  }

  [videoSettings addVideoRules:v24 transportType:transportCopy payload:v13 encodingType:typeCopy];
  v28 = 1;
LABEL_21:

  return v28;
}

- (void)negotiateRTCPFB:(id)b negotiatedVideoSettings:(id)settings
{
  if ([(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings allowRTCPFB])
  {
    allowRTCPFB = [b allowRTCPFB];
  }

  else
  {
    allowRTCPFB = 0;
  }

  [settings setIsRTCPFBEnabled:allowRTCPFB];
}

- (void)negotiateTilesPerFrame:(id)frame negotiatedSettings:(id)settings
{
  tilesPerVideoFrame = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings tilesPerVideoFrame];
  tilesPerFrame = [frame tilesPerFrame];
  if (tilesPerVideoFrame >= tilesPerFrame)
  {
    v8 = tilesPerFrame;
  }

  else
  {
    v8 = tilesPerVideoFrame;
  }

  [settings setTilesPerFrame:v8];
}

- (BOOL)processPixelFormats:(id)formats videoResults:(id)results
{
  v6 = [VCMediaNegotiationBlobVideoSettings storePixelFormatsInBitMap:[(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings pixelFormats]];
  pixelFormats = [formats pixelFormats];
  if (v6)
  {
    v8 = pixelFormats == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return 1;
  }

  v9 = pixelFormats & v6;
  if (v9)
  {
    if (v9)
    {
      [results addPixelFormatSet:&unk_1F579AB18];
      if ((v9 & 2) == 0)
      {
LABEL_8:
        if ((v9 & 8) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_17;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_8;
    }

    [results addPixelFormatSet:&unk_1F579AB30];
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    [results addPixelFormatSet:&unk_1F579AB48];
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }

LABEL_18:
    [results addPixelFormatSet:&unk_1F579AB60];
    if ((v9 & 4) == 0)
    {
LABEL_11:
      if ((v9 & 0x20) == 0)
      {
        return 1;
      }

LABEL_12:
      [results addPixelFormatSet:&unk_1F579AB90];
      return 1;
    }

LABEL_19:
    [results addPixelFormatSet:&unk_1F579AB78];
    if ((v9 & 0x20) == 0)
    {
      return 1;
    }

    goto LABEL_12;
  }

  return 0;
}

- (BOOL)negotiateHDRMode:(id)mode videoResults:(id)results
{
  v6 = [VCMediaNegotiationBlobVideoSettings hdrModesBitmapWithSupportedModes:[(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings hdrModesSupported]];
  hdrModesSupported = [mode hdrModesSupported];
  if (v6)
  {
    v8 = hdrModesSupported == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return 1;
  }

  v9 = hdrModesSupported & v6;
  if (v9)
  {
    if (v9)
    {
      [results addNegotiatedHDRMode:&unk_1F579ABA8];
      if ((v9 & 2) == 0)
      {
LABEL_8:
        if ((v9 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_8;
    }

    [results addNegotiatedHDRMode:&unk_1F579ABC0];
    if ((v9 & 4) == 0)
    {
LABEL_9:
      if ((v9 & 8) == 0)
      {
        return 1;
      }

LABEL_10:
      [results addNegotiatedHDRMode:&unk_1F579ABF0];
      return 1;
    }

LABEL_15:
    [results addNegotiatedHDRMode:&unk_1F579ABD8];
    if ((v9 & 8) == 0)
    {
      return 1;
    }

    goto LABEL_10;
  }

  return 0;
}

- (BOOL)processParameterSets:(id)sets videoResults:(id)results
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  videoPayloadCollections = [sets videoPayloadCollections];
  v6 = [videoPayloadCollections countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(videoPayloadCollections);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if (![v10 parameterSet])
        {
LABEL_14:
          [VCMediaNegotiator processParameterSets:v10 videoResults:?];
          return v15;
        }

        parameterSet = [v10 parameterSet];
        v12 = [v10 parameterSet] & 4 | parameterSet & 1;
        v13 = v12 | ([v10 parameterSet] & 2);
        if (([v10 parameterSet] & 8) != 0)
        {
          v13 = v13 | 8;
        }

        else if (!v13)
        {
          goto LABEL_14;
        }

        [results addParameterSet:objc_msgSend(MEMORY[0x1E696AD98] payload:{"numberWithUnsignedInt:", v13), objc_msgSend(v10, "payload")}];
      }

      v7 = [videoPayloadCollections countByEnumeratingWithState:&v17 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

uint64_t __92__VCMediaNegotiator_processCustomResolution_cameraRuleCollections_videoNegotiationSettings___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  result = [a3 countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v25;
    v8 = (a1 + 32);
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        v11 = [*v8 customVideoWidth];
        if (v11 == [v10 iWidth])
        {
          v12 = [*v8 customVideoHeight];
          if (v12 == [v10 iHeight])
          {
            v13 = [*(*(a1 + 40) + 8) customVideoWidth];
            if (v13 == [v10 iWidth])
            {
              v14 = [*(*(a1 + 40) + 8) customVideoHeight];
              v15 = v14 == [v10 iHeight];
            }

            else
            {
              v15 = 0;
            }

            v16 = 1;
          }

          else
          {
            v16 = 0;
            v15 = 0;
          }
        }

        else
        {
          v16 = 0;
          v15 = 0;
        }

        v17 = [*(*(a1 + 40) + 8) customVideoWidth];
        if (v17 == [*(a1 + 32) customVideoWidth])
        {
          v18 = [*(*(a1 + 40) + 8) customVideoHeight];
          v19 = v18 == [*(a1 + 32) customVideoHeight];
        }

        else
        {
          v19 = 0;
        }

        if (v15 || v19)
        {
          v20 = (a1 + 48);
          [*(a1 + 48) setCustomVideoWidth:{objc_msgSend(*(*(a1 + 40) + 8), "customVideoWidth")}];
          v8 = (*(a1 + 40) + 8);
LABEL_25:
          result = [*v20 setCustomVideoHeight:{objc_msgSend(*v8, "customVideoHeight")}];
          *a4 = 1;
          return result;
        }

        if (v16 && ![*(*(a1 + 40) + 8) customVideoWidth] && !objc_msgSend(*(*(a1 + 40) + 8), "customVideoHeight"))
        {
          [*(a1 + 48) setCustomVideoWidth:{objc_msgSend(*(a1 + 32), "customVideoWidth")}];
          v20 = (a1 + 48);
          goto LABEL_25;
        }

        ++v9;
      }

      while (v6 != v9);
      result = [a3 countByEnumeratingWithState:&v24 objects:v23 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (BOOL)negotiateVideoSettings:(id)settings
{
  selfCopy = self;
  v70 = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableDictionary *)self->super._negotiatedU1MediaSettings objectForKeyedSubscript:&unk_1F579A9C8];
  v44 = [-[VCMediaNegotiatorLocalConfiguration mediaConfigurationForMediaType:](selfCopy->super._localSettings mediaConfigurationForMediaType:{2), "videoRuleCollections"}];
  if ([objc_msgSend(v44 "rules")])
  {
    v6 = [settings newVideoRuleCollectionsForScreen:0 isCellular16x9Capable:selfCopy->_isCellular16x9Capable isLocalConfig:0];
    v7 = v6;
    if (!v6)
    {
      [VCMediaNegotiator negotiateVideoSettings:];
      goto LABEL_69;
    }

    if ([objc_msgSend(v6 "supportedPayloads")])
    {
      [v5 setRemoteSSRC:{objc_msgSend(settings, "rtpSSRC")}];
      if ([(VCMediaNegotiator *)selfCopy processParameterSets:settings videoResults:v5])
      {
        [(VCMediaNegotiator *)selfCopy negotiateRTCPFB:settings negotiatedVideoSettings:v5];
        [(VCMediaNegotiator *)selfCopy negotiateTilesPerFrame:settings negotiatedSettings:v5];
        if ([settings ltrpEnabled])
        {
          ltrpEnabled = [(VCMediaNegotiatorLocalConfiguration *)selfCopy->super._localSettings ltrpEnabled];
        }

        else
        {
          ltrpEnabled = 0;
        }

        [v5 setLtrpEnabled:ltrpEnabled];
        if ([settings enableInterleavedEncoding])
        {
          enableInterleavedEncoding = [(VCMediaNegotiatorLocalConfiguration *)selfCopy->super._localSettings enableInterleavedEncoding];
        }

        else
        {
          enableInterleavedEncoding = 0;
        }

        [v5 setEnableInterleavedEncoding:enableInterleavedEncoding];
        v43 = +[VCMediaNegotiatorBase getPreferredVideoPayloadList:localSupportedPayloads:mediaType:](VCMediaNegotiator, "getPreferredVideoPayloadList:localSupportedPayloads:mediaType:", [v7 supportedPayloads], objc_msgSend(v44, "supportedPayloads"), 2);
        if ([v43 count])
        {
          if ([(VCMediaNegotiator *)selfCopy processPixelFormats:settings videoResults:v5])
          {
            if ([(VCMediaNegotiator *)selfCopy negotiateHDRMode:settings videoResults:v5])
            {
              v15 = [settings newVideoRuleCollectionsForScreen:0 isCellular16x9Capable:selfCopy->_isCellular16x9Capable isLocalConfig:0];
              v39 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
              if ([v44 isEncodeSupported] && objc_msgSend(v15, "isDecodeSupported"))
              {
                [v39 setObject:&unk_1F579A9B0 atIndexedSubscript:{objc_msgSend(v39, "count")}];
              }

              if ([v44 isDecodeSupported] && objc_msgSend(v15, "isEncodeSupported"))
              {
                [v39 setObject:&unk_1F579A9C8 atIndexedSubscript:{objc_msgSend(v39, "count")}];
              }

              [(VCMediaNegotiator *)selfCopy processCustomResolution:v5 cameraRuleCollections:v44 videoNegotiationSettings:settings];

              v66 = 0u;
              v67 = 0u;
              v68 = 0u;
              v69 = 0u;
              obj = [v44 supportedTransportTypes];
              v36 = [obj countByEnumeratingWithState:&v66 objects:v65 count:16];
              if (v36)
              {
                v37 = *v67;
                v34 = v7;
                do
                {
                  v16 = selfCopy;
                  settingsCopy = settings;
                  v18 = v5;
                  v19 = 0;
                  do
                  {
                    if (*v67 != v37)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v38 = v19;
                    v20 = *(*(&v66 + 1) + 8 * v19);
                    v61 = 0u;
                    v62 = 0u;
                    v63 = 0u;
                    v64 = 0u;
                    v41 = [v39 countByEnumeratingWithState:&v61 objects:v60 count:16];
                    if (v41)
                    {
                      v40 = *v62;
                      while (2)
                      {
                        for (i = 0; i != v41; ++i)
                        {
                          if (*v62 != v40)
                          {
                            objc_enumerationMutation(v39);
                          }

                          v22 = *(*(&v61 + 1) + 8 * i);
                          v56 = 0u;
                          v57 = 0u;
                          v58 = 0u;
                          v59 = 0u;
                          v23 = [v43 countByEnumeratingWithState:&v56 objects:v55 count:16];
                          if (v23)
                          {
                            v24 = v23;
                            v42 = i;
                            v25 = *v57;
                            while (2)
                            {
                              for (j = 0; j != v24; ++j)
                              {
                                if (*v57 != v25)
                                {
                                  objc_enumerationMutation(v43);
                                }

                                LOBYTE(v33) = 0;
                                if (-[VCMediaNegotiator selectBestVideoRuleForTransport:payload:encodingType:localVideoRuleCollection:remoteVideoSettings:negotiatedVideoSettings:isScreen:](v16, "selectBestVideoRuleForTransport:payload:encodingType:localVideoRuleCollection:remoteVideoSettings:negotiatedVideoSettings:isScreen:", [v20 unsignedIntValue], objc_msgSend(*(*(&v56 + 1) + 8 * j), "unsignedIntValue"), objc_msgSend(v22, "unsignedIntValue"), v44, settingsCopy, v18, v33))
                                {
                                  v27 = 1;
                                  goto LABEL_49;
                                }
                              }

                              v24 = [v43 countByEnumeratingWithState:&v56 objects:v55 count:16];
                              if (v24)
                              {
                                continue;
                              }

                              break;
                            }

                            v27 = 0;
LABEL_49:
                            i = v42;
                          }

                          else
                          {
                            v27 = 0;
                          }

                          if ([+[VCDefaults forceHWI] sharedInstance]
                          {
                            if (VRTraceGetErrorLogLevelForModule() >= 3)
                            {
                              v28 = VRTraceErrorLogLevelToCSTR();
                              v29 = *MEMORY[0x1E6986650];
                              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                              {
                                unsignedIntValue = [v20 unsignedIntValue];
                                unsignedIntValue2 = [v22 unsignedIntValue];
                                *buf = 136316162;
                                v46 = v28;
                                v47 = 2080;
                                v48 = "[VCMediaNegotiator negotiateVideoSettings:]";
                                v49 = 1024;
                                v50 = 1348;
                                v51 = 1024;
                                v52 = unsignedIntValue;
                                v53 = 1024;
                                v54 = unsignedIntValue2;
                                _os_log_error_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_ERROR, " [%s] %s:%d forceHWI enabled! No match found when select video rules for transport=%d, encoding=%d", buf, 0x28u);
                              }
                            }
                          }

                          else if ((v27 & 1) == 0)
                          {
                            [VCMediaNegotiator negotiateVideoSettings:];
                            v13 = buf[0];
                            v7 = v34;
                            goto LABEL_62;
                          }
                        }

                        v41 = [v39 countByEnumeratingWithState:&v61 objects:v60 count:16];
                        if (v41)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    v19 = v38 + 1;
                  }

                  while (v38 + 1 != v36);
                  v5 = v18;
                  v7 = v34;
                  settings = settingsCopy;
                  selfCopy = v16;
                  v36 = [obj countByEnumeratingWithState:&v66 objects:v65 count:16];
                }

                while (v36);
              }

              [v5 setIsSupported:{objc_msgSend(v39, "count") != 0}];
              v13 = 1;
              goto LABEL_62;
            }

            [VCMediaNegotiator negotiateVideoSettings:];
          }

          else
          {
            [VCMediaNegotiator negotiateVideoSettings:];
          }
        }

        else
        {
          [VCMediaNegotiator negotiateVideoSettings:];
        }
      }

      else
      {
        [VCMediaNegotiator negotiateVideoSettings:];
      }

LABEL_69:
      v13 = buf[0];
LABEL_62:

      return v13;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v46 = v11;
        v47 = 2080;
        v48 = "[VCMediaNegotiator negotiateVideoSettings:]";
        v49 = 1024;
        v50 = 1290;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Skipping negotiating video settings, as the remote device does not support video", buf, 0x1Cu);
      }
    }

    [v5 setIsSupported:0];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v46 = v9;
        v47 = 2080;
        v48 = "[VCMediaNegotiator negotiateVideoSettings:]";
        v49 = 1024;
        v50 = 1282;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Skipping negotiating video settings, as this device does not support video", buf, 0x1Cu);
      }
    }

    [v5 setIsSupported:0];
  }

  return 1;
}

- (BOOL)setupVideoWithNegotiatedSettings:(id)settings
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [settings newVideoRuleCollectionsForScreen:0 isCellular16x9Capable:self->_isCellular16x9Capable isLocalConfig:0];
  if (!v5)
  {
    [VCMediaNegotiator setupVideoWithNegotiatedSettings:];
LABEL_18:
    v7 = v16[5];
    v14 = v17;
    goto LABEL_13;
  }

  v6 = [(NSMutableDictionary *)self->super._negotiatedU1MediaSettings objectForKeyedSubscript:&unk_1F579A9C8];
  [v6 setRemoteSSRC:{objc_msgSend(settings, "rtpSSRC")}];
  [v6 setIsRTCPFBEnabled:{objc_msgSend(settings, "allowRTCPFB")}];
  [v6 setTilesPerFrame:{objc_msgSend(settings, "tilesPerFrame")}];
  [v6 setLtrpEnabled:{objc_msgSend(settings, "ltrpEnabled")}];
  [v6 setCustomVideoHeight:{objc_msgSend(settings, "customVideoHeight")}];
  [v6 setCustomVideoWidth:{objc_msgSend(settings, "customVideoWidth")}];
  [v6 setEnableInterleavedEncoding:{objc_msgSend(settings, "enableInterleavedEncoding")}];
  if (![(VCMediaNegotiator *)self processPixelFormats:settings videoResults:v6])
  {
    [VCMediaNegotiator setupVideoWithNegotiatedSettings:];
    goto LABEL_18;
  }

  if (![(VCMediaNegotiator *)self negotiateHDRMode:settings videoResults:v6])
  {
    [VCMediaNegotiator setupVideoWithNegotiatedSettings:];
    goto LABEL_18;
  }

  if (![(VCMediaNegotiator *)self processParameterSets:settings videoResults:v6])
  {
    [VCMediaNegotiator setupVideoWithNegotiatedSettings:];
    goto LABEL_18;
  }

  v7 = [settings newVideoRuleCollectionsForScreen:0 isCellular16x9Capable:self->_isCellular16x9Capable isLocalConfig:0];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  videoPayloadCollections = [settings videoPayloadCollections];
  v9 = [videoPayloadCollections countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(videoPayloadCollections);
        }

        [v6 addFeatureString:objc_msgSend(*(*(&v19 + 1) + 8 * i) payload:{"featureString"), objc_msgSend(*(*(&v19 + 1) + 8 * i), "payload")}];
      }

      v10 = [videoPayloadCollections countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v10);
  }

  rules = [v7 rules];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __54__VCMediaNegotiator_setupVideoWithNegotiatedSettings___block_invoke;
  v16[3] = &unk_1E85F6338;
  v16[4] = v6;
  [rules enumerateKeysAndObjectsUsingBlock:v16];
  v14 = 1;
  [v6 setIsSupported:1];
LABEL_13:

  return v14;
}

uint64_t __54__VCMediaNegotiator_setupVideoWithNegotiatedSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E695DF70] arrayWithArray:?];
  v5 = [a2 transportType];
  v6 = [a2 payload];
  if ([a2 encodingType] == 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  return [v3 addVideoRules:v4 transportType:v5 payload:v6 encodingType:v7];
}

- (id)getPreferredScreenPayloadList
{
  if ([(VCMediaNegotiator *)self isNegotiationModeValid:self->_negotiationMode])
  {
    return &unk_1F579D230;
  }

  else
  {
    return &unk_1F579D248;
  }
}

- (BOOL)negotiateScreenSettings:(id)settings
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableDictionary *)self->super._negotiatedU1MediaSettings objectForKeyedSubscript:&unk_1F579A9E0];
  v43 = [-[VCMediaNegotiatorLocalConfiguration mediaConfigurationForMediaType:](self->super._localSettings mediaConfigurationForMediaType:{3), "videoRuleCollections"}];
  if ([objc_msgSend(v43 "rules")])
  {
    selfCopy = self;
    v6 = [settings newVideoRuleCollectionsForScreen:1 isCellular16x9Capable:self->_isCellular16x9Capable isLocalConfig:0];
    v7 = v6;
    if (!v6)
    {
      v35 = 0;
      [VCMediaNegotiator negotiateScreenSettings:];
      goto LABEL_73;
    }

    if ([objc_msgSend(v6 "supportedPayloads")])
    {
      [v5 setRemoteSSRC:{objc_msgSend(settings, "rtpSSRC")}];
      if ([(VCMediaNegotiatorLocalConfiguration *)selfCopy->super._localSettings customVideoHeight]|| [(VCMediaNegotiatorLocalConfiguration *)selfCopy->super._localSettings customVideoWidth])
      {
        [v5 setCustomVideoWidth:{-[VCMediaNegotiatorLocalConfiguration customVideoWidth](selfCopy->super._localSettings, "customVideoWidth")}];
        [v5 setCustomVideoHeight:{-[VCMediaNegotiatorLocalConfiguration customVideoHeight](selfCopy->super._localSettings, "customVideoHeight")}];
      }

      v35 = v7;
      if ([(VCMediaNegotiator *)selfCopy processParameterSets:settings videoResults:v5])
      {
        [(VCMediaNegotiator *)selfCopy negotiateRTCPFB:settings negotiatedVideoSettings:v5];
        [(VCMediaNegotiator *)selfCopy negotiateTilesPerFrame:settings negotiatedSettings:v5];
        if ([settings ltrpEnabled])
        {
          ltrpEnabled = [(VCMediaNegotiatorLocalConfiguration *)selfCopy->super._localSettings ltrpEnabled];
        }

        else
        {
          ltrpEnabled = 0;
        }

        [v5 setLtrpEnabled:ltrpEnabled];
        if ([settings fecEnabled])
        {
          v14 = [(VCMediaNegotiatorResults *)selfCopy->super._negotiatedSettings accessNetworkType]== 2;
        }

        else
        {
          v14 = 0;
        }

        [v5 setFecEnabled:v14];
        if ([settings rtxEnabled])
        {
          v15 = [(VCMediaNegotiatorResults *)selfCopy->super._negotiatedSettings accessNetworkType]== 2 || [(VCMediaNegotiatorResults *)selfCopy->super._negotiatedSettings accessNetworkType]== 1;
        }

        else
        {
          v15 = 0;
        }

        [v5 setRtxEnabled:v15];
        if ([settings blackFrameOnClearScreenEnabled])
        {
          blackFrameOnClearScreenEnabled = [(VCMediaNegotiatorLocalConfiguration *)selfCopy->super._localSettings blackFrameOnClearScreenEnabled];
        }

        else
        {
          blackFrameOnClearScreenEnabled = 0;
        }

        [v5 setBlackFrameOnClearScreenEnabled:blackFrameOnClearScreenEnabled];
        if ([settings foveationSupported])
        {
          v17 = selfCopy;
          foveationIsSupported = [(VCMediaNegotiatorLocalConfiguration *)selfCopy->super._localSettings foveationIsSupported];
        }

        else
        {
          foveationIsSupported = 0;
          v17 = selfCopy;
        }

        [v5 setFoveationIsSupported:foveationIsSupported];
        obj = [(VCMediaNegotiator *)v17 getPreferredScreenPayloadList];
        if ([obj count])
        {
          if ([(VCMediaNegotiator *)v17 processPixelFormats:settings videoResults:v5])
          {
            if ([(VCMediaNegotiator *)v17 negotiateHDRMode:settings videoResults:v5])
            {
              if ([(VCMediaNegotiator *)v17 isNegotiationModeForScreenShare:v17->_negotiationMode])
              {
                v39 = [(VCMediaNegotiator *)v17 selectBestScreenRule:settings preferredPayloadOrder:obj];
              }

              else
              {
                v58 = 0u;
                v59 = 0u;
                v56 = 0u;
                v57 = 0u;
                v37 = [&unk_1F579D260 countByEnumeratingWithState:&v56 objects:v55 count:16];
                if (v37)
                {
                  v39 = 0;
                  v36 = *v57;
                  do
                  {
                    v19 = 0;
                    do
                    {
                      if (*v57 != v36)
                      {
                        objc_enumerationMutation(&unk_1F579D260);
                      }

                      v38 = v19;
                      v20 = *(*(&v56 + 1) + 8 * v19);
                      v51 = 0u;
                      v52 = 0u;
                      v53 = 0u;
                      v54 = 0u;
                      v41 = [&unk_1F579D278 countByEnumeratingWithState:&v51 objects:v50 count:16];
                      if (v41)
                      {
                        v40 = *v52;
                        do
                        {
                          for (i = 0; i != v41; ++i)
                          {
                            if (*v52 != v40)
                            {
                              objc_enumerationMutation(&unk_1F579D278);
                            }

                            v22 = *(*(&v51 + 1) + 8 * i);
                            v46 = 0u;
                            v47 = 0u;
                            v48 = 0u;
                            v49 = 0u;
                            v23 = [obj countByEnumeratingWithState:&v46 objects:v45 count:16];
                            if (v23)
                            {
                              v24 = v23;
                              v25 = *v47;
                              while (2)
                              {
                                for (j = 0; j != v24; ++j)
                                {
                                  settingsCopy = settings;
                                  if (*v47 != v25)
                                  {
                                    objc_enumerationMutation(obj);
                                  }

                                  v28 = *(*(&v46 + 1) + 8 * j);
                                  unsignedIntValue = [v20 unsignedIntValue];
                                  unsignedIntValue2 = [v28 unsignedIntValue];
                                  unsignedIntValue3 = [v22 unsignedIntValue];
                                  LOBYTE(v34) = 1;
                                  v32 = unsignedIntValue;
                                  settings = settingsCopy;
                                  if ([(VCMediaNegotiator *)selfCopy selectBestVideoRuleForTransport:v32 payload:unsignedIntValue2 encodingType:unsignedIntValue3 localVideoRuleCollection:v43 remoteVideoSettings:settingsCopy negotiatedVideoSettings:v5 isScreen:v34])
                                  {
                                    v39 = 1;
                                    goto LABEL_59;
                                  }
                                }

                                v24 = [obj countByEnumeratingWithState:&v46 objects:v45 count:16];
                                if (v24)
                                {
                                  continue;
                                }

                                break;
                              }
                            }

LABEL_59:
                            ;
                          }

                          v41 = [&unk_1F579D278 countByEnumeratingWithState:&v51 objects:v50 count:16];
                        }

                        while (v41);
                      }

                      v19 = v38 + 1;
                    }

                    while (v38 + 1 != v37);
                    v37 = [&unk_1F579D260 countByEnumeratingWithState:&v56 objects:v55 count:16];
                  }

                  while (v37);
                }

                else
                {
                  v39 = 0;
                }
              }

              [v5 setIsSupported:v39 & 1];
              v13 = 1;
              goto LABEL_66;
            }

            [VCMediaNegotiator negotiateScreenSettings:];
          }

          else
          {
            [VCMediaNegotiator negotiateScreenSettings:];
          }
        }

        else
        {
          [VCMediaNegotiator negotiateScreenSettings:];
        }
      }

      else
      {
        [VCMediaNegotiator negotiateScreenSettings:];
      }

LABEL_73:
      v13 = buf[0];
LABEL_66:

      return v13;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v61 = v11;
        v62 = 2080;
        v63 = "[VCMediaNegotiator negotiateScreenSettings:]";
        v64 = 1024;
        v65 = 1432;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Skipping negotiating screen video settings, as the remote device does not have a screen.", buf, 0x1Cu);
      }
    }

    [v5 setIsSupported:0];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v61 = v9;
        v62 = 2080;
        v63 = "[VCMediaNegotiator negotiateScreenSettings:]";
        v64 = 1024;
        v65 = 1422;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Skipping negotiating screen video settings, as this device does not have a screen.", buf, 0x1Cu);
      }
    }

    [v5 setIsSupported:0];
  }

  return 1;
}

- (BOOL)setupScreenWithNegotiatedSettings:(id)settings
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [settings newVideoRuleCollectionsForScreen:1 isCellular16x9Capable:self->_isCellular16x9Capable isLocalConfig:0];
  if (!v5)
  {
    [VCMediaNegotiator setupScreenWithNegotiatedSettings:];
LABEL_21:
    v8 = v17[5];
    v15 = v18;
    goto LABEL_16;
  }

  v6 = [(NSMutableDictionary *)self->super._negotiatedU1MediaSettings objectForKeyedSubscript:&unk_1F579A9E0];
  [v6 setRemoteSSRC:{objc_msgSend(settings, "rtpSSRC")}];
  [v6 setIsRTCPFBEnabled:{objc_msgSend(settings, "allowRTCPFB")}];
  [v6 setCustomVideoHeight:{objc_msgSend(settings, "customVideoHeight")}];
  [v6 setCustomVideoWidth:{objc_msgSend(settings, "customVideoWidth")}];
  [v6 setTilesPerFrame:{objc_msgSend(settings, "tilesPerFrame")}];
  [v6 setLtrpEnabled:{objc_msgSend(settings, "ltrpEnabled")}];
  [v6 setFecEnabled:{objc_msgSend(settings, "fecEnabled")}];
  [v6 setRtxEnabled:{objc_msgSend(settings, "rtxEnabled")}];
  if ([settings hasBlackFrameOnClearScreenEnabled])
  {
    blackFrameOnClearScreenEnabled = [settings blackFrameOnClearScreenEnabled];
  }

  else
  {
    blackFrameOnClearScreenEnabled = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings blackFrameOnClearScreenEnabledDefault];
  }

  [v6 setBlackFrameOnClearScreenEnabled:blackFrameOnClearScreenEnabled];
  [v6 setFoveationIsSupported:{objc_msgSend(settings, "foveationSupported")}];
  if (![(VCMediaNegotiator *)self processPixelFormats:settings videoResults:v6])
  {
    [VCMediaNegotiator setupScreenWithNegotiatedSettings:];
    goto LABEL_21;
  }

  if (![(VCMediaNegotiator *)self negotiateHDRMode:settings videoResults:v6])
  {
    [VCMediaNegotiator setupScreenWithNegotiatedSettings:];
    goto LABEL_21;
  }

  if (![(VCMediaNegotiator *)self processParameterSets:settings videoResults:v6])
  {
    [VCMediaNegotiator setupScreenWithNegotiatedSettings:];
    goto LABEL_21;
  }

  v8 = [settings newVideoRuleCollectionsForScreen:1 isCellular16x9Capable:self->_isCellular16x9Capable isLocalConfig:0];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  videoPayloadCollections = [settings videoPayloadCollections];
  v10 = [videoPayloadCollections countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(videoPayloadCollections);
        }

        [v6 addFeatureString:objc_msgSend(*(*(&v20 + 1) + 8 * i) payload:{"featureString"), objc_msgSend(*(*(&v20 + 1) + 8 * i), "payload")}];
      }

      v11 = [videoPayloadCollections countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v11);
  }

  rules = [v8 rules];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __55__VCMediaNegotiator_setupScreenWithNegotiatedSettings___block_invoke;
  v17[3] = &unk_1E85F6338;
  v17[4] = v6;
  [rules enumerateKeysAndObjectsUsingBlock:v17];
  v15 = 1;
  [v6 setIsSupported:1];
LABEL_16:

  return v15;
}

uint64_t __55__VCMediaNegotiator_setupScreenWithNegotiatedSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E695DF70] arrayWithArray:?];
  v5 = [a2 transportType];
  v6 = [a2 payload];
  if ([a2 encodingType] == 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  return [v3 addVideoRules:v4 transportType:v5 payload:v6 encodingType:v7];
}

- (BOOL)selectBestScreenRule:(id)rule preferredPayloadOrder:(id)order
{
  v34 = *MEMORY[0x1E69E9840];
  v22 = [(NSMutableDictionary *)self->super._negotiatedU1MediaSettings objectForKeyedSubscript:&unk_1F579A9E0];
  selfCopy = self;
  v19 = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings mediaConfigurationForMediaType:3];
  videoRuleCollections = [v19 videoRuleCollections];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = order;
  v20 = [order countByEnumeratingWithState:&v30 objects:v29 count:16];
  v8 = 0;
  if (v20)
  {
    v18 = *v31;
    do
    {
      v9 = 0;
      do
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v9;
        v10 = *(*(&v30 + 1) + 8 * v9);
        [v22 addFeatureString:+[VCMediaNegotiator negotiatedFeaturesStringWithLocalFeaturesString:remoteFeaturesString:](VCMediaNegotiator payload:{"negotiatedFeaturesStringWithLocalFeaturesString:remoteFeaturesString:", objc_msgSend(objc_msgSend(v19, "videoFeatureStrings"), "objectForKeyedSubscript:", v10), -[VCMediaNegotiator selectVideoFeatureString:selectedPayload:videoConfiguration:](selfCopy, "selectVideoFeatureString:selectedPayload:videoConfiguration:", rule, objc_msgSend(v10, "unsignedIntValue"), v19)), objc_msgSend(v10, "unsignedIntValue")}];
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v11 = [&unk_1F579D290 countByEnumeratingWithState:&v25 objects:v24 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v26;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v26 != v13)
              {
                objc_enumerationMutation(&unk_1F579D290);
              }

              LOBYTE(v16) = 1;
              v8 |= -[VCMediaNegotiator selectBestVideoRuleForTransport:payload:encodingType:localVideoRuleCollection:remoteVideoSettings:negotiatedVideoSettings:isScreen:](selfCopy, "selectBestVideoRuleForTransport:payload:encodingType:localVideoRuleCollection:remoteVideoSettings:negotiatedVideoSettings:isScreen:", [&unk_1F579A9B0 unsignedIntValue], objc_msgSend(v10, "unsignedIntValue"), objc_msgSend(*(*(&v25 + 1) + 8 * i), "unsignedIntValue"), videoRuleCollections, rule, v22, v16);
            }

            v12 = [&unk_1F579D290 countByEnumeratingWithState:&v25 objects:v24 count:16];
          }

          while (v12);
        }

        v9 = v21 + 1;
      }

      while (v21 + 1 != v20);
      v20 = [obj countByEnumeratingWithState:&v30 objects:v29 count:16];
    }

    while (v20);
  }

  return v8 & 1;
}

- (void)setupFaceTimeSettingsForMediaBlob:(id)blob isResponse:(BOOL)response
{
  responseCopy = response;
  v27 = objc_alloc_init(VCMediaNegotiationFaceTimeSettings);
  if (responseCopy)
  {
    p_negotiatedFaceTimeSettings = &self->super._negotiatedFaceTimeSettings;
    sIPDisabled = [(VCMediaNegotiatorResultsFaceTimeSettings *)self->super._negotiatedFaceTimeSettings SIPDisabled];
    v9 = sIPDisabled;
    if (sIPDisabled)
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    secureMessagingRequired = [*p_negotiatedFaceTimeSettings secureMessagingRequired];
    v12 = secureMessagingRequired;
    [(VCMediaNegotiationFaceTimeSettings *)v27 setCapabilities:v10 | secureMessagingRequired];
    faceTimeSwitches = [*p_negotiatedFaceTimeSettings faceTimeSwitches];
    v14 = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings faceTimeSwitches]& 2 | faceTimeSwitches & 1;
    v15 = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings faceTimeSwitches]& 4;
    v16 = v14 | v15 | [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings faceTimeSwitches]& 8;
    v17 = [*p_negotiatedFaceTimeSettings faceTimeSwitches] & 0x10;
    v18 = v17 | [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings faceTimeSwitches]& 0x20;
    oneToOneModeSupported = v16 | v18 | [*p_negotiatedFaceTimeSettings faceTimeSwitches] & 0x40;
    v19 = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings faceTimeSwitches]& 0x80;
    v20 = v19 | [*p_negotiatedFaceTimeSettings faceTimeSwitches] & 0x100;
    v21 = v20 | [*p_negotiatedFaceTimeSettings faceTimeSwitches] & 0x200;
    -[VCMediaNegotiationFaceTimeSettings setSwitches:](v27, "setSwitches:", oneToOneModeSupported | v21 | -[VCMediaNegotiatorLocalConfiguration faceTimeSwitches](self->super._localSettings, "faceTimeSwitches") & 0x400 | -[VCMediaNegotiatorLocalConfiguration faceTimeSwitches](self->super._localSettings, "faceTimeSwitches") & 0x800 | -[VCMediaNegotiatorLocalConfiguration faceTimeSwitches](self->super._localSettings, "faceTimeSwitches") & 0x1000 | -[VCMediaNegotiatorLocalConfiguration faceTimeSwitches](self->super._localSettings, "faceTimeSwitches") & 0x2000 | -[VCMediaNegotiatorLocalConfiguration faceTimeSwitches](self->super._localSettings, "faceTimeSwitches") & 0x4000 | -[VCMediaNegotiatorLocalConfiguration faceTimeSwitches](self->super._localSettings, "faceTimeSwitches") & 0x8000 | -[VCMediaNegotiatorLocalConfiguration faceTimeSwitches](self->super._localSettings, "faceTimeSwitches") & 0x10000 | [*p_negotiatedFaceTimeSettings faceTimeSwitches] & 0x20000 | objc_msgSend(*p_negotiatedFaceTimeSettings, "faceTimeSwitches") & 0x40000 | objc_msgSend(*p_negotiatedFaceTimeSettings, "faceTimeSwitches") & 0x80000 | objc_msgSend(*p_negotiatedFaceTimeSettings, "faceTimeSwitches") & 0x100000 | -[VCMediaNegotiatorLocalConfiguration faceTimeSwitches](self->super._localSettings, "faceTimeSwitches") & 0x200000 | -[VCMediaNegotiatorLocalConfiguration faceTimeSwitches](self->super._localSettings, "faceTimeSwitches") & 0x400000 | -[VCMediaNegotiatorLocalConfiguration faceTimeSwitches](self->super._localSettings, "faceTimeSwitches") & 0x800000 | -[VCMediaNegotiatorLocalConfiguration faceTimeSwitches](self->super._localSettings, "faceTimeSwitches") & 0x1000000 | -[VCMediaNegotiatorLocalConfiguration faceTimeSwitches](self->super._localSettings, "faceTimeSwitches") & 0x2000000 | objc_msgSend(*p_negotiatedFaceTimeSettings, "faceTimeSwitches") & 0x4000000 | objc_msgSend(*p_negotiatedFaceTimeSettings, "faceTimeSwitches") & 0x8000000 | objc_msgSend(*p_negotiatedFaceTimeSettings, "faceTimeSwitches") & 0x10000000 | objc_msgSend(*p_negotiatedFaceTimeSettings, "faceTimeSwitches") & 0x20000000 | objc_msgSend(*p_negotiatedFaceTimeSettings, "faceTimeSwitches") & 0x40000000);
    LOBYTE(oneToOneModeSupported) = [*p_negotiatedFaceTimeSettings oneToOneModeSupported];
    if ((oneToOneModeSupported & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    [(VCMediaNegotiationFaceTimeSettings *)v27 setOneToOneModeSupported:1];
    goto LABEL_12;
  }

  p_negotiatedFaceTimeSettings = &self->super._localSettings;
  sIPDisabled2 = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings SIPDisabled];
  v9 = sIPDisabled2;
  if (sIPDisabled2)
  {
    v24 = 2;
  }

  else
  {
    v24 = 0;
  }

  secureMessagingRequired2 = [*p_negotiatedFaceTimeSettings secureMessagingRequired];
  v12 = secureMessagingRequired2;
  [(VCMediaNegotiationFaceTimeSettings *)v27 setCapabilities:v24 | secureMessagingRequired2];
  -[VCMediaNegotiationFaceTimeSettings setSwitches:](v27, "setSwitches:", [*p_negotiatedFaceTimeSettings faceTimeSwitches]);
  oneToOneModeSupported = [*p_negotiatedFaceTimeSettings oneToOneModeSupported];
  if (oneToOneModeSupported)
  {
    goto LABEL_11;
  }

LABEL_12:
  -[VCMediaNegotiationFaceTimeSettings setMediaControlInfoSubVersion:](v27, "setMediaControlInfoSubVersion:", [*p_negotiatedFaceTimeSettings mediaControlInfoFECFeedbackVersion]);
  [(VCMediaNegotiationFaceTimeSettings *)v27 setLinkProbingCapabilityVersion:[(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings linkProbingCapabilityVersion]];
  if (v9 || (v12 & 1) != 0 || ([(VCMediaNegotiationFaceTimeSettings *)v27 switches]? (v26 = 1) : (v26 = oneToOneModeSupported), (v26 & 1) != 0 || [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings mediaControlInfoFECFeedbackVersion]|| [(VCMediaNegotiationFaceTimeSettings *)v27 linkProbingCapabilityVersion]))
  {
    [blob setFaceTimeSettings:v27];
  }
}

- (BOOL)negotiateFaceTimeSettings:(id)settings
{
  v34 = *MEMORY[0x1E69E9840];
  p_negotiatedFaceTimeSettings = &self->super._negotiatedFaceTimeSettings;
  if ([settings hasCapabilities])
  {
    -[VCMediaNegotiatorResultsFaceTimeSettings setSIPDisabled:](self->super._negotiatedFaceTimeSettings, "setSIPDisabled:", -[VCMediaNegotiatorLocalConfiguration SIPDisabled](self->super._localSettings, "SIPDisabled") & (([settings capabilities] & 2) >> 1));
    capabilities = [settings capabilities];
    v7 = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings secureMessagingRequired]& capabilities;
  }

  else
  {
    [(VCMediaNegotiatorResultsFaceTimeSettings *)self->super._negotiatedFaceTimeSettings setSIPDisabled:0];
    v7 = 0;
  }

  [(VCMediaNegotiatorResultsFaceTimeSettings *)*p_negotiatedFaceTimeSettings setSecureMessagingRequired:v7];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v9 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      sIPDisabled = [(VCMediaNegotiatorResultsFaceTimeSettings *)self->super._negotiatedFaceTimeSettings SIPDisabled];
      v26 = 136315906;
      v27 = v10;
      v28 = 2080;
      v29 = "[VCMediaNegotiator negotiateFaceTimeSettings:]";
      v30 = 1024;
      v31 = 1649;
      v32 = 1024;
      v33 = sIPDisabled;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Load switch after negotiation disableSIPEnabled %d", &v26, 0x22u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      secureMessagingRequired = [(VCMediaNegotiatorResultsFaceTimeSettings *)self->super._negotiatedFaceTimeSettings secureMessagingRequired];
      v26 = 136315906;
      v27 = v13;
      v28 = 2080;
      v29 = "[VCMediaNegotiator negotiateFaceTimeSettings:]";
      v30 = 1024;
      v31 = 1650;
      v32 = 1024;
      v33 = secureMessagingRequired;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Load switch after negotiation secureMessagingEnabled %d", &v26, 0x22u);
    }
  }

  if ([settings hasSwitches])
  {
    switches = [settings switches];
  }

  else
  {
    switches = 0;
  }

  [(VCMediaNegotiatorResultsFaceTimeSettings *)self->super._negotiatedFaceTimeSettings setFaceTimeSwitches:switches];
  -[VCMediaNegotiatorResultsFaceTimeSettings setRemoteFaceTimeSwitchesAvailable:](self->super._negotiatedFaceTimeSettings, "setRemoteFaceTimeSwitchesAvailable:", [settings hasSwitches]);
  v17 = [settings hasOneToOneModeSupported] && objc_msgSend(settings, "oneToOneModeSupported") && -[VCMediaNegotiatorLocalConfiguration oneToOneModeSupported](self->super._localSettings, "oneToOneModeSupported");
  [(VCMediaNegotiatorResultsFaceTimeSettings *)self->super._negotiatedFaceTimeSettings setOneToOneModeSupported:v17];
  if ([settings hasMediaControlInfoSubVersion])
  {
    mediaControlInfoFECFeedbackVersion = [settings mediaControlInfoFECFeedbackVersion];
    mediaControlInfoFECFeedbackVersion2 = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings mediaControlInfoFECFeedbackVersion];
    if (mediaControlInfoFECFeedbackVersion >= mediaControlInfoFECFeedbackVersion2)
    {
      v20 = mediaControlInfoFECFeedbackVersion2;
    }

    else
    {
      v20 = mediaControlInfoFECFeedbackVersion;
    }
  }

  else
  {
    v20 = 0;
  }

  [(VCMediaNegotiatorResultsFaceTimeSettings *)self->super._negotiatedFaceTimeSettings setMediaControlInfoFECFeedbackVersion:v20];
  hasLinkProbingCapabilityVersion = [settings hasLinkProbingCapabilityVersion];
  if (hasLinkProbingCapabilityVersion)
  {
    LOBYTE(hasLinkProbingCapabilityVersion) = [settings linkProbingCapabilityVersion];
  }

  [(VCMediaNegotiatorResultsFaceTimeSettings *)self->super._negotiatedFaceTimeSettings setRemoteLinkProbingCapabilityVersion:hasLinkProbingCapabilityVersion];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      mediaControlInfoFECFeedbackVersion3 = [(VCMediaNegotiatorResultsFaceTimeSettings *)self->super._negotiatedFaceTimeSettings mediaControlInfoFECFeedbackVersion];
      v26 = 136315906;
      v27 = v22;
      v28 = 2080;
      v29 = "[VCMediaNegotiator negotiateFaceTimeSettings:]";
      v30 = 1024;
      v31 = 1670;
      v32 = 1024;
      v33 = mediaControlInfoFECFeedbackVersion3;
      _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Load switch after negotiation mediaControlInfoFECFeedbackVersion '%d'", &v26, 0x22u);
    }
  }

  return 1;
}

- (void)setupMomentsForMediaBlob:(id)blob
{
  if (![+[VCDefaults momentsUserPreferenceEnabled] sharedInstance]
  {
    [VCMediaNegotiator setupMomentsForMediaBlob:];
LABEL_7:
    v6 = v7;
    goto LABEL_4;
  }

  v5 = -[VCMediaNegotiationBlobMomentsSettings initWithVideoCodecs:imageTypes:capabilities:multiwayCapabilities:]([VCMediaNegotiationBlobMomentsSettings alloc], "initWithVideoCodecs:imageTypes:capabilities:multiwayCapabilities:", [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings mediaRecorderVideoCodecs], [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings mediaRecorderImageTypes], [+[VCVideoRuleCollectionsMediaRecorder sharedInstance](VCVideoRuleCollectionsMediaRecorder mediaRecorderCapabilities], [+[VCVideoRuleCollectionsMediaRecorder sharedInstance](VCVideoRuleCollectionsMediaRecorder mediaRecorderCapabilities]);
  if (!v5)
  {
    [VCMediaNegotiator setupMomentsForMediaBlob:];
    goto LABEL_7;
  }

  v6 = v5;
  [blob setMomentsSettings:v5];
LABEL_4:
}

- (BOOL)negotiateMomentsWithMomentsSettings:(id)settings
{
  if ([+[VCDefaults momentsUserPreferenceEnabled] sharedInstance]
  {
    if ([settings hasSupportedVideoCodecs] && (objc_msgSend(settings, "supportedVideoCodecs") & 2) != 0 && +[VCHardwareSettings supportsHEVCEncoding](VCHardwareSettings, "supportsHEVCEncoding"))
    {
      v5 = 100;
    }

    else
    {
      v5 = 123;
    }

    [(VCMediaNegotiatorResultsMediaRecorder *)self->super._negotiatedMediaRecorderSettings setVideoCodec:v5];
    v6 = [settings hasSupportedImageTypes] && (objc_msgSend(settings, "supportedImageTypes") & 2) != 0 && +[VCHardwareSettings supportsHEIFEncoding](VCHardwareSettings, "supportsHEIFEncoding");
    [(VCMediaNegotiatorResultsMediaRecorder *)self->super._negotiatedMediaRecorderSettings setImageType:v6];
    -[VCMediaNegotiatorResultsMediaRecorder setCapabilities:](self->super._negotiatedMediaRecorderSettings, "setCapabilities:", +[VCMediaNegotiationBlobMomentsSettings avcMomentsCapabilitiesForMultiwayMomentsCapabilities:](VCMediaNegotiationBlobMomentsSettings, "avcMomentsCapabilitiesForMultiwayMomentsCapabilities:", [settings multiwayCapabilities]));
  }

  else
  {
    [VCMediaNegotiator negotiateMomentsWithMomentsSettings:];
  }

  return 1;
}

- (void)setupMultiwayAudioStreamsForMediaBlob:(id)blob
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  multiwayAudioStreams = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings multiwayAudioStreams];
  v5 = [(NSMutableOrderedSet *)multiwayAudioStreams countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(multiwayAudioStreams);
        }

        v9 = [[VCMediaNegotiationBlobMultiwayAudioStream alloc] initWithStreamConfig:*(*(&v11 + 1) + 8 * v8)];
        [blob addMultiwayAudioStreams:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableOrderedSet *)multiwayAudioStreams countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }
}

- (BOOL)negotiateMultiwayAudioStreams:(id)streams
{
  obj = streams;
  v59 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v48 = v5;
        v49 = 2080;
        v50 = "[VCMediaNegotiator negotiateMultiwayAudioStreams:]";
        v51 = 1024;
        v52 = 1728;
        v53 = 2112;
        v54 = obj;
        v7 = " [%s] %s:%d multiwayAudioStreams=%@";
        v8 = v6;
        v9 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [(VCMediaNegotiator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v48 = v10;
        v49 = 2080;
        v50 = "[VCMediaNegotiator negotiateMultiwayAudioStreams:]";
        v51 = 1024;
        v52 = 1728;
        v53 = 2112;
        v54 = v4;
        v55 = 2048;
        selfCopy2 = self;
        v57 = 2112;
        v58 = obj;
        v7 = " [%s] %s:%d %@(%p) multiwayAudioStreams=%@";
        v8 = v11;
        v9 = 58;
        goto LABEL_11;
      }
    }
  }

  v12 = [[VCMediaNegotiatorStreamGroupConfiguration alloc] initWithGroupID:1835623282 mediaType:1936684398 subtype:0 syncGroupID:0];
  if (v12)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v13 = [(VCMediaNegotiatorStreamGroupConfiguration *)obj countByEnumeratingWithState:&v43 objects:v42 count:16];
    if (v13)
    {
      v14 = v13;
      v36 = *v44;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v44 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v16 = [(VCMediaNegotiator *)self newStreamConfigFromMultiwayAudioStream:*(*(&v43 + 1) + 8 * i), obj];
          if (!v16)
          {
            [VCMediaNegotiator negotiateMultiwayAudioStreams:];
            goto LABEL_36;
          }

          v17 = v16;
          [(VCMediaNegotiatorStreamGroupConfiguration *)v12 addStreamConfig:v16];
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          payloads = [v17 payloads];
          v19 = [payloads countByEnumeratingWithState:&v38 objects:v37 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v39;
            while (2)
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v39 != v21)
                {
                  objc_enumerationMutation(payloads);
                }

                if ([*(*(&v38 + 1) + 8 * j) integerValue] != 20)
                {
                  v23 = [(VCMediaNegotiator *)self newStreamGroupCodecConfigForPayload:?];
                  if (!v23)
                  {
                    [VCMediaNegotiator negotiateMultiwayAudioStreams:v17];
                    goto LABEL_36;
                  }

                  v24 = v23;
                  [(VCMediaNegotiatorStreamGroupConfiguration *)v12 addCodecConfig:v23];
                  [v17 addCodec:{-[VCMediaNegotiatorStreamGroupConfiguration indexOfCodecConfig:](v12, "indexOfCodecConfig:", v24)}];
                }
              }

              v20 = [payloads countByEnumeratingWithState:&v38 objects:v37 count:16];
              if (v20)
              {
                continue;
              }

              break;
            }
          }
        }

        v14 = [(VCMediaNegotiatorStreamGroupConfiguration *)obj countByEnumeratingWithState:&v43 objects:v42 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    if ([(NSOrderedSet *)[(VCMediaNegotiatorStreamGroupConfiguration *)v12 codecConfigs] count])
    {
      [(NSMutableArray *)self->super._negotiatedStreamGroups addObject:v12];
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_45;
        }

        v27 = VRTraceErrorLogLevelToCSTR();
        v28 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_45;
        }

        *buf = 136315906;
        v48 = v27;
        v49 = 2080;
        v50 = "[VCMediaNegotiator negotiateMultiwayAudioStreams:]";
        v51 = 1024;
        v52 = 1754;
        v53 = 2112;
        v54 = v12;
        v29 = " [%s] %s:%d negotiated audio streamGroupConfig=%@";
        v30 = v28;
        v31 = 38;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v25 = [(VCMediaNegotiator *)self performSelector:sel_logPrefix];
        }

        else
        {
          v25 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_45;
        }

        v32 = VRTraceErrorLogLevelToCSTR();
        v33 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_45;
        }

        *buf = 136316418;
        v48 = v32;
        v49 = 2080;
        v50 = "[VCMediaNegotiator negotiateMultiwayAudioStreams:]";
        v51 = 1024;
        v52 = 1754;
        v53 = 2112;
        v54 = v25;
        v55 = 2048;
        selfCopy2 = self;
        v57 = 2112;
        v58 = v12;
        v29 = " [%s] %s:%d %@(%p) negotiated audio streamGroupConfig=%@";
        v30 = v33;
        v31 = 58;
      }

      _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);
LABEL_45:
      v26 = 1;
      goto LABEL_46;
    }

    [VCMediaNegotiator negotiateMultiwayAudioStreams:];
  }

  else
  {
    [VCMediaNegotiator negotiateMultiwayAudioStreams:];
  }

LABEL_36:
  v26 = buf[0];
LABEL_46:

  return v26;
}

- (void)setupMultiwayVideoStreamsForMediaBlob:(id)blob
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  multiwayVideoStreams = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings multiwayVideoStreams];
  v5 = [(NSMutableOrderedSet *)multiwayVideoStreams countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(multiwayVideoStreams);
        }

        v9 = [[VCMediaNegotiationBlobMultiwayVideoStream alloc] initWithStreamConfig:*(*(&v11 + 1) + 8 * v8)];
        [blob addMultiwayVideoStream:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableOrderedSet *)multiwayVideoStreams countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }
}

- (BOOL)isVideoStreamSupported:(int)supported
{
  if (supported == 128)
  {
    return 0;
  }

  v5 = *&supported;
  v6 = +[VCHardwareSettings supportedVideoPayloads];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];

  return [v6 containsObject:v7];
}

- (BOOL)negotiateMultiwayVideoStreams:(id)streams
{
  v89 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v78 = v6;
        v79 = 2080;
        v80 = "[VCMediaNegotiator negotiateMultiwayVideoStreams:]";
        v81 = 1024;
        v82 = 1782;
        v83 = 2112;
        streamsCopy = streams;
        v8 = " [%s] %s:%d multiwayVideoStreams=%@";
        v9 = v7;
        v10 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCMediaNegotiator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v78 = v11;
        v79 = 2080;
        v80 = "[VCMediaNegotiator negotiateMultiwayVideoStreams:]";
        v81 = 1024;
        v82 = 1782;
        v83 = 2112;
        streamsCopy = v5;
        v85 = 2048;
        selfCopy2 = self;
        v87 = 2112;
        streamsCopy2 = streams;
        v8 = " [%s] %s:%d %@(%p) multiwayVideoStreams=%@";
        v9 = v12;
        v10 = 58;
        goto LABEL_11;
      }
    }
  }

  if ([+[VCHardwareSettings supportedVideoPayloads](VCHardwareSettings "supportedVideoPayloads")])
  {
    obj = objc_alloc_init(MEMORY[0x1E695DF70]);
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v13 = [streams countByEnumeratingWithState:&v73 objects:v72 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v74;
      v16 = MEMORY[0x1E6986650];
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v74 != v15)
          {
            objc_enumerationMutation(streams);
          }

          v18 = *(*(&v73 + 1) + 8 * i);
          if ([v18 isSubStream])
          {
            if (VRTraceGetErrorLogLevelForModule() >= 5)
            {
              v19 = VRTraceErrorLogLevelToCSTR();
              v20 = *v16;
              if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v78 = v19;
                v79 = 2080;
                v80 = "[VCMediaNegotiator negotiateMultiwayVideoStreams:]";
                v81 = 1024;
                v82 = 1797;
                _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Error substreams not supported with stream groups", buf, 0x1Cu);
              }
            }
          }

          else
          {
            [obj addObject:v18];
          }
        }

        v14 = [streams countByEnumeratingWithState:&v73 objects:v72 count:16];
      }

      while (v14);
    }

    v21 = [[VCMediaNegotiatorStreamGroupConfiguration alloc] initWithGroupID:1667329381 mediaType:1986618469 subtype:875704438 syncGroupID:1835623282];
    if (v21)
    {
      v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v55 = [obj countByEnumeratingWithState:&v68 objects:v67 count:16];
      if (v55)
      {
        v54 = *v69;
        *&v23 = 136315650;
        v53 = v23;
        while (2)
        {
          for (j = 0; j != v55; ++j)
          {
            if (*v69 != v54)
            {
              objc_enumerationMutation(obj);
            }

            v25 = [(VCMediaNegotiator *)self newStreamConfigFromMultiwayVideoStream:*(*(&v68 + 1) + 8 * j), v53];
            if (!v25)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  [VCMediaNegotiator negotiateMultiwayVideoStreams:];
                }
              }

              goto LABEL_58;
            }

            v26 = v25;
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            payloads = [v25 payloads];
            v28 = [payloads countByEnumeratingWithState:&v63 objects:v62 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v64;
              while (2)
              {
                for (k = 0; k != v29; ++k)
                {
                  if (*v64 != v30)
                  {
                    objc_enumerationMutation(payloads);
                  }

                  v32 = -[VCMediaNegotiator newStreamGroupCodecConfigForPayload:](self, "newStreamGroupCodecConfigForPayload:", [*(*(&v63 + 1) + 8 * k) integerValue]);
                  if (!v32)
                  {
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      v39 = VRTraceErrorLogLevelToCSTR();
                      v40 = *MEMORY[0x1E6986650];
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                      {
                        *buf = v53;
                        v78 = v39;
                        v79 = 2080;
                        v80 = "[VCMediaNegotiator negotiateMultiwayVideoStreams:]";
                        v81 = 1024;
                        v82 = 1819;
                        _os_log_error_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate media blob stream group codec config", buf, 0x1Cu);
                      }
                    }

                    goto LABEL_52;
                  }

                  v33 = v32;
                  [v22 addObject:v32];
                }

                v29 = [payloads countByEnumeratingWithState:&v63 objects:v62 count:16];
                if (v29)
                {
                  continue;
                }

                break;
              }
            }

            if ([v22 count])
            {
              v60 = 0u;
              v61 = 0u;
              v58 = 0u;
              v59 = 0u;
              v34 = [v22 countByEnumeratingWithState:&v58 objects:v57 count:16];
              if (v34)
              {
                v35 = v34;
                v36 = *v59;
                do
                {
                  for (m = 0; m != v35; ++m)
                  {
                    if (*v59 != v36)
                    {
                      objc_enumerationMutation(v22);
                    }

                    v38 = *(*(&v58 + 1) + 8 * m);
                    [(VCMediaNegotiatorStreamGroupConfiguration *)v21 addCodecConfig:v38];
                    [v26 addCodec:{-[VCMediaNegotiatorStreamGroupConfiguration indexOfCodecConfig:](v21, "indexOfCodecConfig:", v38)}];
                  }

                  v35 = [v22 countByEnumeratingWithState:&v58 objects:v57 count:16];
                }

                while (v35);
              }

              [(VCMediaNegotiatorStreamGroupConfiguration *)v21 addStreamConfig:v26];
            }

LABEL_52:
            [v22 removeAllObjects];
          }

          v55 = [obj countByEnumeratingWithState:&v68 objects:v67 count:16];
          if (v55)
          {
            continue;
          }

          break;
        }
      }

LABEL_58:

      if ([(NSOrderedSet *)[(VCMediaNegotiatorStreamGroupConfiguration *)v21 streamConfigs] count])
      {
        if ([(NSOrderedSet *)[(VCMediaNegotiatorStreamGroupConfiguration *)v21 codecConfigs] count])
        {
          [(NSMutableArray *)self->super._negotiatedStreamGroups addObject:v21];
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() < 7)
            {
              goto LABEL_75;
            }

            v45 = VRTraceErrorLogLevelToCSTR();
            v46 = *MEMORY[0x1E6986650];
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_75;
            }

            *buf = 136315906;
            v78 = v45;
            v79 = 2080;
            v80 = "[VCMediaNegotiator negotiateMultiwayVideoStreams:]";
            v81 = 1024;
            v82 = 1840;
            v83 = 2112;
            streamsCopy = v21;
            v47 = " [%s] %s:%d negotiated video streamGroupConfig=%@";
            v48 = v46;
            v49 = 38;
          }

          else
          {
            if (objc_opt_respondsToSelector())
            {
              v41 = [(VCMediaNegotiator *)self performSelector:sel_logPrefix];
            }

            else
            {
              v41 = &stru_1F570E008;
            }

            if (VRTraceGetErrorLogLevelForModule() < 7)
            {
              goto LABEL_75;
            }

            v50 = VRTraceErrorLogLevelToCSTR();
            v51 = *MEMORY[0x1E6986650];
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_75;
            }

            *buf = 136316418;
            v78 = v50;
            v79 = 2080;
            v80 = "[VCMediaNegotiator negotiateMultiwayVideoStreams:]";
            v81 = 1024;
            v82 = 1840;
            v83 = 2112;
            streamsCopy = v41;
            v85 = 2048;
            selfCopy2 = self;
            v87 = 2112;
            streamsCopy2 = v21;
            v47 = " [%s] %s:%d %@(%p) negotiated video streamGroupConfig=%@";
            v48 = v51;
            v49 = 58;
          }

          _os_log_impl(&dword_1DB56E000, v48, OS_LOG_TYPE_DEFAULT, v47, buf, v49);
LABEL_75:
          v44 = 1;
LABEL_76:

          return v44;
        }

        [VCMediaNegotiator negotiateMultiwayVideoStreams:];
      }

      else
      {
        [VCMediaNegotiator negotiateMultiwayVideoStreams:];
      }
    }

    else
    {
      [VCMediaNegotiator negotiateMultiwayVideoStreams:];
    }

    v44 = buf[0];
    goto LABEL_76;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v42 = VRTraceErrorLogLevelToCSTR();
    v43 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v78 = v42;
      v79 = 2080;
      v80 = "[VCMediaNegotiator negotiateMultiwayVideoStreams:]";
      v81 = 1024;
      v82 = 1789;
      _os_log_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Skipping negotiating video streams, as this device is audio only", buf, 0x1Cu);
    }
  }

  return 1;
}

- (id)newStreamGroupCodecConfigForPayload:(int)payload
{
  v3 = *&payload;
  v4 = objc_alloc_init(VCMediaNegotiatorStreamGroupCodecConfiguration);
  if (!v4)
  {
    [VCMediaNegotiator newStreamGroupCodecConfigForPayload:];
LABEL_7:

    return 0;
  }

  [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v4 setCodecType:[VCPayloadUtils codecTypeForPayload:v3]];
  if (![(VCMediaNegotiatorStreamGroupCodecConfiguration *)v4 codecType])
  {
    [VCMediaNegotiator newStreamGroupCodecConfigForPayload:];
    goto LABEL_7;
  }

  [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v4 setRtpPayload:v3];
  [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v4 setPTime:20];
  [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v4 setCipherSuite:3];
  return v4;
}

- (id)newStreamConfigFromMultiwayAudioStream:(id)stream
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(VCMediaNegotiatorStreamGroupStreamConfiguration);
  if (v4)
  {
    newMultiwayAudioStream = [stream newMultiwayAudioStream];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    supportedAudioPayloads = [newMultiwayAudioStream supportedAudioPayloads];
    v7 = [supportedAudioPayloads countByEnumeratingWithState:&v20 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(supportedAudioPayloads);
          }

          -[VCMediaNegotiatorStreamGroupStreamConfiguration addPayload:](v4, "addPayload:", [*(*(&v20 + 1) + 8 * i) unsignedIntValue]);
        }

        v8 = [supportedAudioPayloads countByEnumeratingWithState:&v20 objects:v19 count:16];
      }

      while (v8);
    }

    -[VCMediaNegotiatorStreamGroupStreamConfiguration setSsrc:](v4, "setSsrc:", [stream ssrc]);
    -[VCMediaNegotiatorStreamGroupStreamConfiguration setStreamID:](v4, "setStreamID:", [stream streamID]);
    [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v4 setMetadata:0];
    -[VCMediaNegotiatorStreamGroupStreamConfiguration setQualityIndex:](v4, "setQualityIndex:", [stream qualityIndex]);
    hasMaxNetworkBitrate = [stream hasMaxNetworkBitrate];
    maxNetworkBitrate = 0;
    if (hasMaxNetworkBitrate)
    {
      maxNetworkBitrate = [stream maxNetworkBitrate];
    }

    [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v4 setMaxNetworkBitrate:maxNetworkBitrate];
    if ([stream hasMaxMediaBitrate])
    {
      maxMediaBitrate = [stream maxMediaBitrate];
    }

    else
    {
      maxMediaBitrate = 0;
    }

    [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v4 setMaxMediaBitrate:maxMediaBitrate];
    if ([stream hasMaxPacketsPerSecond])
    {
      [stream maxPacketsPerSecond];
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v4 setMaxPacketsPerSecond:v15];
    hasRepairedStreamID = [stream hasRepairedStreamID];
    if (hasRepairedStreamID)
    {
      LOWORD(hasRepairedStreamID) = [stream repairedStreamID];
    }

    [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v4 setRepairedStreamID:hasRepairedStreamID];
    if ([stream hasRepairedMaxNetworkBitrate])
    {
      repairedMaxNetworkBitrate = [stream repairedMaxNetworkBitrate];
    }

    else
    {
      repairedMaxNetworkBitrate = 0;
    }

    [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v4 setRepairedMaxNetworkBitrate:repairedMaxNetworkBitrate];
    [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v4 setRtpTimestampRate:24000];
    [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v4 setAudioChannelCount:1];
    [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v4 setCoordinateSystem:0];
  }

  else
  {
    [VCMediaNegotiator newStreamConfigFromMultiwayAudioStream:];
  }

  return v4;
}

+ (unsigned)mappedRemoteQualityIndexForQualityIndex:(unsigned int)index
{
  if (index == 62)
  {
    return 35;
  }

  else
  {
    return index;
  }
}

- (id)newStreamConfigFromMultiwayVideoStream:(id)stream
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(VCMediaNegotiatorStreamGroupStreamConfiguration);
  if (!v5)
  {
    [VCMediaNegotiator newStreamConfigFromMultiwayVideoStream:];
LABEL_30:

    return 0;
  }

  if ([stream metadata])
  {
    [(VCMediaNegotiator *)self newStreamConfigFromMultiwayVideoStream:stream];
    goto LABEL_30;
  }

  if ([stream metadata] >= 2)
  {
    [(VCMediaNegotiator *)self newStreamConfigFromMultiwayVideoStream:stream];
    goto LABEL_30;
  }

  v6 = +[VCMediaNegotiationBlobMultiwayVideoStream payloadForVideoPayload:](VCMediaNegotiationBlobMultiwayVideoStream, "payloadForVideoPayload:", [stream payload]);
  if (![(VCMediaNegotiator *)self isVideoStreamSupported:v6])
  {
    [VCMediaNegotiator newStreamConfigFromMultiwayVideoStream:?];
    goto LABEL_30;
  }

  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v5 addPayload:v6];
  v14[0] = 0;
  if (!+[VCMediaNegotiationBlobMultiwayVideoStream convertVideoFormat:width:height:](VCMediaNegotiationBlobMultiwayVideoStream, "convertVideoFormat:width:height:", [stream supportedVideoFormats], v14 + 4, v14))
  {
    [(VCMediaNegotiator *)self newStreamConfigFromMultiwayVideoStream:stream];
    goto LABEL_30;
  }

  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v5 setResolution:SHIDWORD(v14[0]), SLODWORD(v14[0])];
  -[VCMediaNegotiatorStreamGroupStreamConfiguration setSsrc:](v5, "setSsrc:", [stream ssrc]);
  -[VCMediaNegotiatorStreamGroupStreamConfiguration setStreamID:](v5, "setStreamID:", [stream streamID]);
  if ([stream hasMetadata])
  {
    metadata = [stream metadata];
  }

  else
  {
    metadata = 0;
  }

  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v5 setMetadata:metadata];
  -[VCMediaNegotiatorStreamGroupStreamConfiguration setQualityIndex:](v5, "setQualityIndex:", +[VCMediaNegotiator mappedRemoteQualityIndexForQualityIndex:](VCMediaNegotiator, "mappedRemoteQualityIndexForQualityIndex:", [stream qualityIndex]));
  if ([stream hasMaxNetworkBitrate])
  {
    maxNetworkBitrate = [stream maxNetworkBitrate];
  }

  else
  {
    maxNetworkBitrate = 0;
  }

  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v5 setMaxNetworkBitrate:maxNetworkBitrate];
  if ([stream hasMaxMediaBitrate])
  {
    maxMediaBitrate = [stream maxMediaBitrate];
  }

  else
  {
    maxMediaBitrate = 0;
  }

  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v5 setMaxMediaBitrate:maxMediaBitrate];
  if ([stream hasMaxPacketsPerSecond])
  {
    maxPacketsPerSecond = [stream maxPacketsPerSecond];
  }

  else
  {
    maxPacketsPerSecond = 0;
  }

  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v5 setMaxPacketsPerSecond:maxPacketsPerSecond];
  hasRepairedStreamID = [stream hasRepairedStreamID];
  if (hasRepairedStreamID)
  {
    LOWORD(hasRepairedStreamID) = [stream repairedStreamID];
  }

  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v5 setRepairedStreamID:hasRepairedStreamID];
  if ([stream hasRepairedMaxNetworkBitrate])
  {
    repairedMaxNetworkBitrate = [stream repairedMaxNetworkBitrate];
  }

  else
  {
    repairedMaxNetworkBitrate = 0;
  }

  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v5 setRepairedMaxNetworkBitrate:repairedMaxNetworkBitrate];
  -[VCMediaNegotiatorStreamGroupStreamConfiguration setFramerate:](v5, "setFramerate:", [stream frameRate]);
  -[VCMediaNegotiatorStreamGroupStreamConfiguration setKeyFrameInterval:](v5, "setKeyFrameInterval:", [stream keyFrameInterval]);
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v5 setRtpTimestampRate:24000];
  [(VCMediaNegotiatorStreamGroupStreamConfiguration *)v5 setCoordinateSystem:3];
  return v5;
}

- (int)mediaBlobLanguageWithLocale:(id)locale
{
  v3 = mediaBlobLanguageWithLocale___mapping;
  if (!mediaBlobLanguageWithLocale___mapping)
  {
    v3 = &unk_1F579E648;
    mediaBlobLanguageWithLocale___mapping = &unk_1F579E648;
  }

  v4 = [v3 objectForKey:{objc_msgSend(locale, "objectForKey:", *MEMORY[0x1E695D9B0])}];
  if (v4)
  {

    LODWORD(v4) = [v4 intValue];
  }

  return v4;
}

- (id)localeWithMediaBlobLanguage:(int)language
{
  v3 = *&language;
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = localeWithMediaBlobLanguage___mapping;
  if (!localeWithMediaBlobLanguage___mapping)
  {
    v6[0] = &unk_1F579AC38;
    v6[1] = &unk_1F579AC50;
    v7[0] = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
    v7[1] = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"zh_CN"];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
    localeWithMediaBlobLanguage___mapping = v4;
  }

  return [v4 objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v3)}];
}

- (void)setupCaptionsForMediaBlob:(id)blob
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  v6 = v5;
  if (v5)
  {
    [v5 setCanDisplayCaptions:1];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    captionsSenderLanguages = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings captionsSenderLanguages];
    v8 = [(NSSet *)captionsSenderLanguages countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      LODWORD(v10) = 0;
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(captionsSenderLanguages);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [(VCMediaNegotiator *)self mediaBlobLanguageWithLocale:v13];
          if (v13)
          {
            v15 = 0;
          }

          else
          {
            v15 = v10 == 0;
          }

          if (v15)
          {
            [VCMediaNegotiator setupCaptionsForMediaBlob:];
            goto LABEL_16;
          }

          v10 = v14 | v10;
        }

        v9 = [(NSSet *)captionsSenderLanguages countByEnumeratingWithState:&v17 objects:v16 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      if (v10)
      {
        [v6 setSenderLanguages:v10];
      }
    }

    [blob setCaptionsSettings:v6];
  }

  else
  {
    [VCMediaNegotiator setupCaptionsForMediaBlob:];
  }

LABEL_16:
}

- (BOOL)negotiateCaptionsWithCaptionsSettings:(id)settings
{
  v20 = *MEMORY[0x1E69E9840];
  -[VCMediaNegotiatorResultsCaptions setRemoteCanDisplayCaptions:](self->_negotiatedCaptionsSettings, "setRemoteCanDisplayCaptions:", [settings canDisplayCaptions]);
  [(VCMediaNegotiatorResultsCaptions *)self->_negotiatedCaptionsSettings setLocalLanguages:[(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings captionsReceiverLanguages]];
  if (![settings hasSenderLanguages])
  {
LABEL_11:
    LOBYTE(v10) = 1;
    return v10;
  }

  v5 = objc_opt_new();
  if (v5)
  {
    v6 = v5;
    v7 = 1;
    do
    {
      v8 = v7;
      if (([settings senderLanguages] & v7) != 0)
      {
        v9 = [(VCMediaNegotiator *)self localeWithMediaBlobLanguage:v8];
        if (v9)
        {
          [v6 addObject:v9];
        }
      }

      v7 = (2 * v8);
    }

    while ((v8 & 1) != 0);
    if ([v6 count])
    {
      [(VCMediaNegotiatorResultsCaptions *)self->_negotiatedCaptionsSettings setRemoteLanguages:v6];
    }

    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!v10)
    {
      return v10;
    }

    v14 = 136315650;
    v15 = v11;
    v16 = 2080;
    v17 = "[VCMediaNegotiator negotiateCaptionsWithCaptionsSettings:]";
    v18 = 1024;
    v19 = 2027;
    _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to allcoate remote languages.", &v14, 0x1Cu);
  }

  LOBYTE(v10) = 0;
  return v10;
}

+ (id)streamGroupIDsWithMediaBlob:(id)blob
{
  v3 = [VCMediaNegotiator newDecompressedBlob:?];
  if (!v3)
  {
    +[VCMediaNegotiator streamGroupIDsWithMediaBlob:];
LABEL_14:
    v4 = v8;
    v6 = v9;
    goto LABEL_10;
  }

  v4 = [[VCMediaNegotiationBlob alloc] initWithData:v3];
  if (!v4)
  {
    +[VCMediaNegotiator streamGroupIDsWithMediaBlob:];
    goto LABEL_14;
  }

  v5 = [MEMORY[0x1E695DFA8] set];
  if (!v5)
  {
    +[VCMediaNegotiator streamGroupIDsWithMediaBlob:];
    goto LABEL_14;
  }

  v6 = v5;
  if ([(NSMutableArray *)[(VCMediaNegotiationBlob *)v4 multiwayAudioStreams] count]|| [(VCMediaNegotiationBlob *)v4 hasAudioSettings])
  {
    [v6 addObject:&unk_1F579AC68];
  }

  if ([(NSMutableArray *)[(VCMediaNegotiationBlob *)v4 multiwayVideoStreams] count]|| [(VCMediaNegotiationBlob *)v4 hasVideoSettings])
  {
    [v6 addObject:&unk_1F579AC80];
  }

LABEL_10:

  return v6;
}

- (BOOL)setUpMediaEncryptionForMediaBlob:(id)blob isResponse:(BOOL)response
{
  responseCopy = response;
  v38 = *MEMORY[0x1E69E9840];
  mediaEncryptionSettings = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings mediaEncryptionSettings];
  if (!mediaEncryptionSettings)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaNegotiator setUpMediaEncryptionForMediaBlob:isResponse:];
        }
      }

      goto LABEL_49;
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCMediaNegotiator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v14 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_49;
    }

    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    v28 = 136316162;
    v29 = v17;
    v30 = 2080;
    v31 = "[VCMediaNegotiator setUpMediaEncryptionForMediaBlob:isResponse:]";
    v32 = 1024;
    v33 = 2083;
    v34 = 2112;
    v35 = v14;
    v36 = 2048;
    selfCopy5 = self;
    v19 = " [%s] %s:%d %@(%p) Missing local media encryption settings";
    goto LABEL_67;
  }

  if (!responseCopy)
  {
    v8 = mediaEncryptionSettings;
    goto LABEL_11;
  }

  if (!self->super._negotiatedMediaEncyptionSettings)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaNegotiator setUpMediaEncryptionForMediaBlob:isResponse:];
        }
      }

      goto LABEL_49;
    }

    if (objc_opt_respondsToSelector())
    {
      v16 = [(VCMediaNegotiator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v16 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3 || (v25 = VRTraceErrorLogLevelToCSTR(), v18 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
LABEL_49:
      v12 = 0;
      v8 = 0;
      goto LABEL_13;
    }

    v28 = 136316162;
    v29 = v25;
    v30 = 2080;
    v31 = "[VCMediaNegotiator setUpMediaEncryptionForMediaBlob:isResponse:]";
    v32 = 1024;
    v33 = 2085;
    v34 = 2112;
    v35 = v16;
    v36 = 2048;
    selfCopy5 = self;
    v19 = " [%s] %s:%d %@(%p) Missing negotiated media encryption settings";
LABEL_67:
    _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, v19, &v28, 0x30u);
    goto LABEL_49;
  }

  v8 = [[VCMediaNegotiatorMediaEncryptionSettings alloc] initWithSendMediaKey:[(VCMediaNegotiatorMediaEncryptionSettings *)mediaEncryptionSettings sendMediaKey]];
  mediaCipherSuites = [(VCMediaNegotiatorMediaEncryptionSettings *)self->super._negotiatedMediaEncyptionSettings mediaCipherSuites];
  if ([(NSSet *)mediaCipherSuites count])
  {
    if ([(NSSet *)mediaCipherSuites count]!= 1)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCMediaNegotiator setUpMediaEncryptionForMediaBlob:isResponse:];
          }
        }

        goto LABEL_65;
      }

      if (objc_opt_respondsToSelector())
      {
        v20 = [(VCMediaNegotiator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v20 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v26 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v28 = 136316162;
          v29 = v26;
          v30 = 2080;
          v31 = "[VCMediaNegotiator setUpMediaEncryptionForMediaBlob:isResponse:]";
          v32 = 1024;
          v33 = 2090;
          v34 = 2112;
          v35 = v20;
          v36 = 2048;
          selfCopy5 = self;
          v23 = " [%s] %s:%d %@(%p) Unexpected number of media cipher suites";
          goto LABEL_64;
        }
      }

LABEL_65:
      v12 = 0;
      goto LABEL_13;
    }

    -[VCMediaNegotiatorMediaEncryptionSettings addMediaCipherSuite:](v8, "addMediaCipherSuite:", [-[NSSet anyObject](mediaCipherSuites "anyObject")]);
  }

  srtcpCipherSuites = [(VCMediaNegotiatorMediaEncryptionSettings *)self->super._negotiatedMediaEncyptionSettings srtcpCipherSuites];
  if ([(NSSet *)srtcpCipherSuites count])
  {
    if ([(NSSet *)srtcpCipherSuites count]!= 1)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCMediaNegotiator setUpMediaEncryptionForMediaBlob:isResponse:];
          }
        }

        goto LABEL_65;
      }

      if (objc_opt_respondsToSelector())
      {
        v24 = [(VCMediaNegotiator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v24 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v27 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v28 = 136316162;
          v29 = v27;
          v30 = 2080;
          v31 = "[VCMediaNegotiator setUpMediaEncryptionForMediaBlob:isResponse:]";
          v32 = 1024;
          v33 = 2095;
          v34 = 2112;
          v35 = v24;
          v36 = 2048;
          selfCopy5 = self;
          v23 = " [%s] %s:%d %@(%p) Unexpected number of srtcp cipher suites";
          goto LABEL_64;
        }
      }

      goto LABEL_65;
    }

    -[VCMediaNegotiatorMediaEncryptionSettings addSRTCPCipherSuite:](v8, "addSRTCPCipherSuite:", [-[NSSet anyObject](srtcpCipherSuites "anyObject")]);
  }

LABEL_11:
  v11 = [[VCMediaNegotiationBlobMediaEncryptionSettings alloc] initWithMediaEncryptionSettings:v8];
  if (!v11)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaNegotiator setUpMediaEncryptionForMediaBlob:isResponse:];
        }
      }

      goto LABEL_65;
    }

    if (objc_opt_respondsToSelector())
    {
      v15 = [(VCMediaNegotiator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v15 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v28 = 136316162;
        v29 = v21;
        v30 = 2080;
        v31 = "[VCMediaNegotiator setUpMediaEncryptionForMediaBlob:isResponse:]";
        v32 = 1024;
        v33 = 2102;
        v34 = 2112;
        v35 = v15;
        v36 = 2048;
        selfCopy5 = self;
        v23 = " [%s] %s:%d %@(%p) Failed to allocate the media encryption blob settings";
LABEL_64:
        _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, v23, &v28, 0x30u);
        goto LABEL_65;
      }
    }

    goto LABEL_65;
  }

  v12 = v11;
  [blob setEncryptionSettings:v11];
LABEL_13:

  return [blob encryptionSettings] != 0;
}

- (BOOL)negotiateMediaEncryptionWithRemoteSettings:(id)settings
{
  v39 = *MEMORY[0x1E69E9840];
  mediaEncryptionSettings = [(VCMediaNegotiatorLocalConfiguration *)self->super._localSettings mediaEncryptionSettings];
  if (!mediaEncryptionSettings)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaNegotiator negotiateMediaEncryptionWithRemoteSettings:];
        }
      }

      goto LABEL_53;
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCMediaNegotiator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v14 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_53;
    }

    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_53;
    }

    v29 = 136316162;
    v30 = v19;
    v31 = 2080;
    v32 = "[VCMediaNegotiator negotiateMediaEncryptionWithRemoteSettings:]";
    v33 = 1024;
    v34 = 2116;
    v35 = 2112;
    v36 = v14;
    v37 = 2048;
    selfCopy5 = self;
    v21 = " [%s] %s:%d %@(%p) Missing local encryption settings";
    goto LABEL_70;
  }

  v6 = mediaEncryptionSettings;
  v7 = -[VCMediaNegotiatorMediaEncryptionSettings initWithSendMediaKey:]([VCMediaNegotiatorMediaEncryptionSettings alloc], "initWithSendMediaKey:", [settings sendMediaKey]);
  if (!v7)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaNegotiator negotiateMediaEncryptionWithRemoteSettings:];
        }
      }

      goto LABEL_53;
    }

    if (objc_opt_respondsToSelector())
    {
      v15 = [(VCMediaNegotiator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v15 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3 || (v22 = VRTraceErrorLogLevelToCSTR(), v20 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
LABEL_53:
      v8 = 0;
      goto LABEL_54;
    }

    v29 = 136316162;
    v30 = v22;
    v31 = 2080;
    v32 = "[VCMediaNegotiator negotiateMediaEncryptionWithRemoteSettings:]";
    v33 = 1024;
    v34 = 2118;
    v35 = 2112;
    v36 = v15;
    v37 = 2048;
    selfCopy5 = self;
    v21 = " [%s] %s:%d %@(%p) Failed to allocate the negotiated media encryption settings";
LABEL_70:
    _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, v21, &v29, 0x30u);
    goto LABEL_53;
  }

  v8 = v7;
  if (-[NSSet count](-[VCMediaNegotiatorMediaEncryptionSettings mediaCipherSuites](v6, "mediaCipherSuites"), "count") || [objc_msgSend(settings "mediaCipherSuites")])
  {
    v9 = [(NSSet *)[(VCMediaNegotiatorMediaEncryptionSettings *)v6 mediaCipherSuites] mutableCopy];
    [v9 intersectSet:{objc_msgSend(settings, "mediaCipherSuites")}];
    v10 = [VCMediaNegotiator preferredCipherSuiteFromSet:v9];
    if (v10 == -1)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCMediaNegotiator negotiateMediaEncryptionWithRemoteSettings:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v17 = [(VCMediaNegotiator *)self performSelector:sel_logPrefix];
        }

        else
        {
          v17 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v25 = VRTraceErrorLogLevelToCSTR();
          v26 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v29 = 136316162;
            v30 = v25;
            v31 = 2080;
            v32 = "[VCMediaNegotiator negotiateMediaEncryptionWithRemoteSettings:]";
            v33 = 1024;
            v34 = 2123;
            v35 = 2112;
            v36 = v17;
            v37 = 2048;
            selfCopy5 = self;
            _os_log_error_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to negotiate the SRTP cipher suite", &v29, 0x30u);
          }
        }
      }

      v11 = 0;
      goto LABEL_13;
    }

    [(VCMediaNegotiatorMediaEncryptionSettings *)v8 addMediaCipherSuite:v10];
  }

  else
  {
    v9 = 0;
  }

  if (!-[NSSet count](-[VCMediaNegotiatorMediaEncryptionSettings srtcpCipherSuites](v6, "srtcpCipherSuites"), "count") && ![objc_msgSend(settings "srtcpCipherSuites")])
  {
    v11 = 0;
    goto LABEL_11;
  }

  v11 = [(NSSet *)[(VCMediaNegotiatorMediaEncryptionSettings *)v6 srtcpCipherSuites] mutableCopy];
  [v11 intersectSet:{objc_msgSend(settings, "srtcpCipherSuites")}];
  v12 = [VCMediaNegotiator preferredCipherSuiteFromSet:v11];
  if (v12 != -1)
  {
    [(VCMediaNegotiatorMediaEncryptionSettings *)v8 addSRTCPCipherSuite:v12];
LABEL_11:
    if (v9 | v11)
    {
      self->super._negotiatedMediaEncyptionSettings = v8;
      goto LABEL_13;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaNegotiator negotiateMediaEncryptionWithRemoteSettings:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v16 = [(VCMediaNegotiator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v16 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v29 = 136316162;
          v30 = v23;
          v31 = 2080;
          v32 = "[VCMediaNegotiator negotiateMediaEncryptionWithRemoteSettings:]";
          v33 = 1024;
          v34 = 2133;
          v35 = 2112;
          v36 = v16;
          v37 = 2048;
          selfCopy5 = self;
          _os_log_error_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) No cipher suite found", &v29, 0x30u);
        }
      }
    }

LABEL_54:
    v11 = 0;
    v9 = 0;
    goto LABEL_13;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaNegotiator negotiateMediaEncryptionWithRemoteSettings:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v18 = [(VCMediaNegotiator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v18 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v29 = 136316162;
        v30 = v27;
        v31 = 2080;
        v32 = "[VCMediaNegotiator negotiateMediaEncryptionWithRemoteSettings:]";
        v33 = 1024;
        v34 = 2130;
        v35 = 2112;
        v36 = v18;
        v37 = 2048;
        selfCopy5 = self;
        _os_log_error_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to negotiate the SRTCP cipher suite", &v29, 0x30u);
      }
    }
  }

LABEL_13:

  return self->super._negotiatedMediaEncyptionSettings != 0;
}

+ (int64_t)preferredCipherSuiteFromSet:(id)set
{
  if ([set containsObject:&unk_1F579AC98])
  {
    return 7;
  }

  if ([set containsObject:&unk_1F579ACB0])
  {
    return 6;
  }

  return -1;
}

- (void)processCustomResolution:(id)resolution cameraRuleCollections:(id)collections videoNegotiationSettings:(id)settings
{
  v9[7] = *MEMORY[0x1E69E9840];
  if (self->_negotiationMode == 15)
  {
    rules = [collections rules];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __92__VCMediaNegotiator_processCustomResolution_cameraRuleCollections_videoNegotiationSettings___block_invoke;
    v9[3] = &unk_1E85F8678;
    v9[4] = settings;
    v9[5] = self;
    v9[6] = resolution;
    [rules enumerateKeysAndObjectsUsingBlock:v9];
  }
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
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
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
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)isNegotiationModeValid:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)isNegotiationModeForScreenShare:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)negotiationData
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create the invite blob", v2, v3, v4, v5, v6);
}

- (void)processRemoteNegotiationData:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)processRemoteNegotiationData:.cold.12()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_15();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  *v0 = 0;
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_36();
}

- (void)processRemoteNegotiationData:.cold.13()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_15();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  *v0 = 0;
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_36();
}

+ (void)negotiationBlobFromData:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

+ (void)localConfigurationWithData:deviceRole:preferredAudioPayload:.cold.1()
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

  OUTLINED_FUNCTION_20();
}

+ (void)localConfigurationWithData:deviceRole:preferredAudioPayload:.cold.2()
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

  OUTLINED_FUNCTION_20();
}

+ (void)addMediaConfigurationsToLocalConfiguration:withBlob:.cold.1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_15();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  *v0 = 0;
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_36();
}

+ (void)addMediaConfigurationsToLocalConfiguration:withBlob:.cold.3()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_15();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  *v0 = 0;
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_36();
}

+ (void)initializeLocalConfiguration:negotiationData:deviceRole:preferredAudioPayload:.cold.1()
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

+ (void)initializeLocalConfiguration:negotiationData:deviceRole:preferredAudioPayload:.cold.2()
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

- (void)newResponseBlob
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid media negotiator state: The caller tried to create the response blob", v2, v3, v4, v5, v6);
}

- (void)processResponseBlob:.cold.1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_15();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  *v0 = 0;
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_36();
}

- (void)processResponseBlob:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)processResponseBlob:.cold.11()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_15();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  *v0 = 0;
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_36();
}

+ (void)negotiatedFeaturesStringWithLocalFeaturesString:remoteFeaturesString:.cold.1()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_13_8(&dword_1DB56E000, v0, v1, " [%s] %s:%d Unable to allocate dictionary for remote feature string", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_16_7();
}

+ (void)negotiatedFeaturesStringWithLocalFeaturesString:remoteFeaturesString:.cold.2()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_13_8(&dword_1DB56E000, v0, v1, " [%s] %s:%d Unable to allocate dictionary for local feature string", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_16_7();
}

+ (void)validateMultiwayVideoStreamConfigurations:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  [a2 ssrc];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_6_23();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
}

+ (void)validateMultiwayAudioStreamConfigurations:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Unsupported audio substream !!", v2, v3, v4, v5, v6);
}

- (void)negotiateAudioDTXPayload:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d DTX payload not available!", v2, v3, v4, v5, v6);
}

- (void)negotiateAudioSettings:.cold.1()
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

- (void)negotiateAudioSettings:.cold.2()
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

- (void)setupAudioWithNegotiatedSettings:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)selectVideoFeatureString:(uint64_t)a1 selectedPayload:(void *)a2 videoConfiguration:.cold.1(uint64_t a1, void *a2)
{
  [a2 intValue];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_6_23();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
}

- (void)selectBestVideoRuleForTransport:(int)a1 payload:encodingType:localVideoRuleCollection:remoteVideoSettings:negotiatedVideoSettings:isScreen:.cold.1(int a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_10();
      v5 = v3;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      v6 = a1;
      _os_log_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to select feature string for payload=%d", v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)processParameterSets:(void *)a1 videoResults:.cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      [a1 payload];
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_23();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)negotiateVideoSettings:.cold.1()
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

- (void)negotiateVideoSettings:.cold.2()
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

- (void)negotiateVideoSettings:.cold.3()
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

- (void)negotiateVideoSettings:.cold.4()
{
  OUTLINED_FUNCTION_37();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      [v5 unsignedIntValue];
      [v3 unsignedIntValue];
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v6, v7, v8, v9, v10, 0x28u);
    }
  }

  *v1 = 1;
  OUTLINED_FUNCTION_36();
}

- (void)negotiateVideoSettings:.cold.5()
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

- (void)negotiateVideoSettings:.cold.6()
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

- (void)setupVideoWithNegotiatedSettings:.cold.1()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_13_8(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to retrieve negotiated pixel formats", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_17_11();
}

- (void)setupVideoWithNegotiatedSettings:.cold.2()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_13_8(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to negotiate HDR modes correctly", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_17_11();
}

- (void)setupVideoWithNegotiatedSettings:.cold.3()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_13_8(&dword_1DB56E000, v1, v2, " [%s] %s:%d Failed to set video parameter set", v3, v4, v5, v6, v7);
    }
  }

  *v0 = 1;
  OUTLINED_FUNCTION_20();
}

- (void)setupVideoWithNegotiatedSettings:.cold.4()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_13_8(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to extract the video rule collection from response", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_17_11();
}

- (void)negotiateScreenSettings:.cold.1()
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

- (void)negotiateScreenSettings:.cold.2()
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

- (void)negotiateScreenSettings:.cold.3()
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

- (void)negotiateScreenSettings:.cold.4()
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

- (void)negotiateScreenSettings:.cold.5()
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

- (void)setupScreenWithNegotiatedSettings:.cold.1()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_13_8(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to retrieve negotiated pixel formats", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_17_11();
}

- (void)setupScreenWithNegotiatedSettings:.cold.2()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_13_8(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to negotiate HDR modes correctly", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_17_11();
}

- (void)setupScreenWithNegotiatedSettings:.cold.3()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_13_8(&dword_1DB56E000, v1, v2, " [%s] %s:%d Failed to set screen parameter set", v3, v4, v5, v6, v7);
    }
  }

  *v0 = 1;
  OUTLINED_FUNCTION_20();
}

- (void)setupScreenWithNegotiatedSettings:.cold.4()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_13_8(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to extract the screen rule collection from response", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_17_11();
}

- (void)setupMomentsForMediaBlob:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      v2 = 1680;
      _os_log_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Moments user preference Not Enabled.", v1, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)setupMomentsForMediaBlob:.cold.2()
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

  OUTLINED_FUNCTION_20();
}

- (void)negotiateMomentsWithMomentsSettings:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      v2 = 1694;
      _os_log_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Moments user preference Not Enabled.", v1, 0x1Cu);
    }
  }
}

- (void)negotiateMultiwayAudioStreams:(void *)a1 .cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)negotiateMultiwayAudioStreams:.cold.2()
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

- (void)negotiateMultiwayAudioStreams:.cold.3()
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

- (void)negotiateMultiwayAudioStreams:.cold.4()
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

- (void)negotiateMultiwayVideoStreams:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate media blob stream group stream config", v2, v3, v4, v5, v6);
}

- (void)negotiateMultiwayVideoStreams:.cold.2()
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

- (void)negotiateMultiwayVideoStreams:.cold.3()
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

- (void)negotiateMultiwayVideoStreams:.cold.4()
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

- (void)newStreamGroupCodecConfigForPayload:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)newStreamGroupCodecConfigForPayload:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)newStreamConfigFromMultiwayAudioStream:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)newStreamConfigFromMultiwayVideoStream:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
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

    [a2 metadata];
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6_23();
    OUTLINED_FUNCTION_2();
    v8 = 34;
LABEL_11:
    _os_log_error_impl(v3, v4, v5, v6, v7, v8);
    return;
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
      [a2 metadata];
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_7_25();
      OUTLINED_FUNCTION_17_0();
      v8 = 54;
      goto LABEL_11;
    }
  }
}

- (void)newStreamConfigFromMultiwayVideoStream:(uint64_t)a1 .cold.2(uint64_t a1)
{
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

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_2();
    v6 = 34;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
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
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_7_25();
      OUTLINED_FUNCTION_17_0();
      v6 = 54;
      goto LABEL_11;
    }
  }
}

- (void)newStreamConfigFromMultiwayVideoStream:(uint64_t)a1 .cold.3(uint64_t a1, void *a2)
{
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

    [a2 supportedVideoFormats];
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6_23();
    OUTLINED_FUNCTION_2();
    v8 = 34;
LABEL_11:
    _os_log_error_impl(v3, v4, v5, v6, v7, v8);
    return;
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
      [a2 supportedVideoFormats];
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_7_25();
      OUTLINED_FUNCTION_17_0();
      v8 = 54;
      goto LABEL_11;
    }
  }
}

- (void)newStreamConfigFromMultiwayVideoStream:(uint64_t)a1 .cold.4(uint64_t a1, void *a2)
{
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

    [a2 metadata];
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6_23();
    OUTLINED_FUNCTION_2();
    v8 = 34;
LABEL_11:
    _os_log_error_impl(v3, v4, v5, v6, v7, v8);
    return;
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
      [a2 metadata];
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_7_25();
      OUTLINED_FUNCTION_17_0();
      v8 = 54;
      goto LABEL_11;
    }
  }
}

- (void)newStreamConfigFromMultiwayVideoStream:.cold.5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)setupCaptionsForMediaBlob:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      [objc_msgSend(0 objectForKey:{*MEMORY[0x1E695D9B0]), "UTF8String"}];
      OUTLINED_FUNCTION_11();
      v4 = v1;
      v5 = "[VCMediaNegotiator setupCaptionsForMediaBlob:]";
      v6 = 1024;
      OUTLINED_FUNCTION_21();
      v7 = v2;
      _os_log_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unsupported captions languages in local langauges: %s.", v3, 0x26u);
    }
  }
}

- (void)setupCaptionsForMediaBlob:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

+ (void)streamGroupIDsWithMediaBlob:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

+ (void)streamGroupIDsWithMediaBlob:.cold.2()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_30();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
    }
  }

  *v1 = 0;
  *v0 = v2;
  OUTLINED_FUNCTION_36();
}

+ (void)streamGroupIDsWithMediaBlob:.cold.3()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_13_8(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to unserialize the blob", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_16_7();
}

+ (void)streamGroupIDsWithMediaBlob:.cold.4()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_13_8(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to decompress the blob", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_16_7();
}

- (void)setUpMediaEncryptionForMediaBlob:isResponse:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Unexpected number of media cipher suites", v2, v3, v4, v5, v6);
}

- (void)setUpMediaEncryptionForMediaBlob:isResponse:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Unexpected number of srtcp cipher suites", v2, v3, v4, v5, v6);
}

- (void)setUpMediaEncryptionForMediaBlob:isResponse:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate the media encryption blob settings", v2, v3, v4, v5, v6);
}

- (void)setUpMediaEncryptionForMediaBlob:isResponse:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Missing negotiated media encryption settings", v2, v3, v4, v5, v6);
}

- (void)setUpMediaEncryptionForMediaBlob:isResponse:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Missing local media encryption settings", v2, v3, v4, v5, v6);
}

- (void)negotiateMediaEncryptionWithRemoteSettings:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to negotiate the SRTP cipher suite", v2, v3, v4, v5, v6);
}

- (void)negotiateMediaEncryptionWithRemoteSettings:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to negotiate the SRTCP cipher suite", v2, v3, v4, v5, v6);
}

- (void)negotiateMediaEncryptionWithRemoteSettings:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d No cipher suite found", v2, v3, v4, v5, v6);
}

- (void)negotiateMediaEncryptionWithRemoteSettings:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate the negotiated media encryption settings", v2, v3, v4, v5, v6);
}

- (void)negotiateMediaEncryptionWithRemoteSettings:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Missing local encryption settings", v2, v3, v4, v5, v6);
}

@end