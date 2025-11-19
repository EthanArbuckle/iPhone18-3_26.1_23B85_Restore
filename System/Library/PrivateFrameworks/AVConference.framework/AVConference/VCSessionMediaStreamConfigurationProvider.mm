@interface VCSessionMediaStreamConfigurationProvider
+ (BOOL)audioConfig:(_VCMediaStreamConfigurationProviderAudio *)a3 supportsDeviceClass:(int64_t)a4;
+ (BOOL)isAudioStreamOnDemand:(_VCMediaStreamConfigurationProviderAudio *)a3 isLowestQualityAudio:(BOOL)a4;
+ (BOOL)isVideoStreamOnDemand:(_VCMediaStreamConfigurationProviderVideo *)a3;
+ (unsigned)maxStreamIDCountFromStreamIndex:(unsigned int)a3;
+ (void)addCodecConfigurationToStreamConfig:(id)a3 codecType:(int64_t)a4 preferredMode:(int)a5 isV2Codec:(BOOL)a6;
+ (void)configureAudioStreams:(id)a3 withCodecConfiguration:(_VCMediaStreamConfigurationProviderAudio *)a4 payloadsVersion:(unsigned int)a5;
+ (void)fixAudioStreamConfigurations;
+ (void)setUpCodecConfig:(id)a3 payload:(int)a4 preferredMode:(int)a5;
+ (void)setUpV2CodecConfig:(id)a3 payload:(int)a4 preferredMode:(int)a5;
- (BOOL)initializeAudioStreamWithConfig:(_VCMediaStreamConfigurationProviderAudio *)a3 maxIDSStreamIDCount:(unsigned int)a4 supportedAudioRules:(id)a5 isLowestQualityAudio:(BOOL)a6;
- (BOOL)initializeAudioStreamsWithSupportedRules:(id)a3;
- (BOOL)initializeStreamsWithSupportedAudioRules:(id)a3;
- (BOOL)initializeVideoStreamWithConfig:(_VCMediaStreamConfigurationProviderVideo *)a3 streamIndex:(unsigned int)a4;
- (BOOL)initializeVideoStreamWithDefaults;
- (BOOL)initializeVideoStreams;
- (VCSessionMediaStreamConfigurationProvider)initWithStreamIDGenerator:(id)a3 sessionMode:(int64_t)a4 supportedAudioRules:(id)a5;
- (id)audioRuleCollectionWithAudioConfig:(_VCMediaStreamConfigurationProviderAudio *)a3 supportedAudioRules:(id)a4;
- (int)streamPayloadFromProviderConfig:(_VCMediaStreamConfigurationProviderVideo *)a3;
- (void)audioStreamConfigs:(_VCMediaStreamConfigurationProviderAudio *)a3 configCount:(unsigned int *)a4;
- (void)dealloc;
- (void)initializeVideoStreamWithDefaults;
- (void)initializeVideoStreams;
@end

@implementation VCSessionMediaStreamConfigurationProvider

- (VCSessionMediaStreamConfigurationProvider)initWithStreamIDGenerator:(id)a3 sessionMode:(int64_t)a4 supportedAudioRules:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VCSessionMediaStreamConfigurationProvider;
  v8 = [(VCSessionMediaStreamConfigurationProvider *)&v14 init];
  v9 = v8;
  if (v8)
  {
    _audioStreamConfigurationsCount = 0;
    v8->_sessionMode = a4;
    v10 = a3;
    v9->_streamIDGenerator = v10;
    if (v10)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v9->_audioStreamConfigurations = v11;
      if (v11)
      {
        v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v9->_videoStreamConfigurations = v12;
        if (v12)
        {
          if ([(VCSessionMediaStreamConfigurationProvider *)v9 initializeStreamsWithSupportedAudioRules:a5])
          {
            return v9;
          }

          [VCSessionMediaStreamConfigurationProvider initWithStreamIDGenerator:v9 sessionMode:? supportedAudioRules:?];
        }

        else
        {
          [VCSessionMediaStreamConfigurationProvider initWithStreamIDGenerator:v9 sessionMode:? supportedAudioRules:?];
        }
      }

      else
      {
        [VCSessionMediaStreamConfigurationProvider initWithStreamIDGenerator:v9 sessionMode:? supportedAudioRules:?];
      }
    }

    else
    {
      [VCSessionMediaStreamConfigurationProvider initWithStreamIDGenerator:v9 sessionMode:? supportedAudioRules:?];
    }

    return 0;
  }

  return v9;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCSessionMediaStreamConfigurationProvider;
  [(VCSessionMediaStreamConfigurationProvider *)&v3 dealloc];
}

- (BOOL)initializeStreamsWithSupportedAudioRules:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (![(VCSessionMediaStreamConfigurationProvider *)self initializeAudioStreamsWithSupportedRules:a3])
  {
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCSessionMediaStreamConfigurationProvider *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_25;
      }

      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      v4 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v4)
      {
        return v4;
      }

      v12 = 136316162;
      v13 = v7;
      v14 = 2080;
      v15 = "[VCSessionMediaStreamConfigurationProvider initializeStreamsWithSupportedAudioRules:]";
      v16 = 1024;
      v17 = 420;
      v18 = 2112;
      v19 = v5;
      v20 = 2048;
      v21 = self;
      v9 = " [%s] %s:%d %@(%p) Audio Stream initialization failed";
LABEL_24:
      _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, v9, &v12, 0x30u);
      goto LABEL_25;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v4 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v4)
      {
        return v4;
      }

      [VCSessionMediaStreamConfigurationProvider initializeStreamsWithSupportedAudioRules:];
    }

LABEL_25:
    LOBYTE(v4) = 0;
    return v4;
  }

  if (![(VCSessionMediaStreamConfigurationProvider *)self initializeVideoStreams])
  {
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCSessionMediaStreamConfigurationProvider *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_25;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      v4 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v4)
      {
        return v4;
      }

      v12 = 136316162;
      v13 = v10;
      v14 = 2080;
      v15 = "[VCSessionMediaStreamConfigurationProvider initializeStreamsWithSupportedAudioRules:]";
      v16 = 1024;
      v17 = 424;
      v18 = 2112;
      v19 = v6;
      v20 = 2048;
      v21 = self;
      v9 = " [%s] %s:%d %@(%p) Video Stream initialization failed";
      goto LABEL_24;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v4 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v4)
      {
        return v4;
      }

      [VCSessionMediaStreamConfigurationProvider initializeStreamsWithSupportedAudioRules:];
    }

    goto LABEL_25;
  }

  LOBYTE(v4) = 1;
  return v4;
}

- (BOOL)initializeVideoStreams
{
  v21 = *MEMORY[0x1E69E9840];
  if (+[VCHardwareSettings isVideoRenderingSupported])
  {
    if ([+[VCDefaults forceMultiwayHWI] sharedInstance]
    {

      LOBYTE(v3) = [(VCSessionMediaStreamConfigurationProvider *)self initializeVideoStreamWithDefaults];
    }

    else
    {
      v4 = 0;
      self->_videoStreamConfigurationsCount = 7;
      v5 = &_videoStreamConfigs;
      while ([(VCSessionMediaStreamConfigurationProvider *)self initializeVideoStreamWithConfig:v5 streamIndex:v4])
      {
        v6 = *v5;
        v5 += 6;
        self->_highestEncodingResolution = v6;
        if (++v4 >= self->_videoStreamConfigurationsCount)
        {
          goto LABEL_9;
        }
      }

      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          v3 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
          if (!v3)
          {
            return v3;
          }

          [VCSessionMediaStreamConfigurationProvider initializeVideoStreams];
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v7 = [(VCSessionMediaStreamConfigurationProvider *)self performSelector:sel_logPrefix];
        }

        else
        {
          v7 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v8 = VRTraceErrorLogLevelToCSTR();
          v9 = *MEMORY[0x1E6986650];
          v3 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
          if (!v3)
          {
            return v3;
          }

          v11 = 136316162;
          v12 = v8;
          v13 = 2080;
          v14 = "[VCSessionMediaStreamConfigurationProvider initializeVideoStreams]";
          v15 = 1024;
          v16 = 442;
          v17 = 2112;
          v18 = v7;
          v19 = 2048;
          v20 = self;
          _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to initialize video multiway stream", &v11, 0x30u);
        }
      }

      LOBYTE(v3) = 0;
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (int)streamPayloadFromProviderConfig:(_VCMediaStreamConfigurationProviderVideo *)a3
{
  v4 = +[VCVideoRuleCollectionsCamera sharedInstance];
  for (i = 1; ; ++i)
  {
    v6 = i;
    v7 = [[VCVideoRuleCollectionKey alloc] initWithPayload:a3->var6 transportType:i encodingType:1];
    v8 = [(NSMutableDictionary *)[(VCVideoRuleCollections *)v4 rules] objectForKeyedSubscript:v7];

    if (v8)
    {
      if ([v8 count])
      {
        break;
      }
    }

    if (v6 >= 2)
    {
      return 123;
    }
  }

  return a3->var6;
}

- (BOOL)initializeVideoStreamWithConfig:(_VCMediaStreamConfigurationProviderVideo *)a3 streamIndex:(unsigned int)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v6 = [(VCSessionMediaStreamConfigurationProvider *)self streamPayloadFromProviderConfig:a3, *&a4];
  var1 = a3->var1;
  if (var1 >= +[VCHardwareSettings maxMultiwayFramerateSupported])
  {
    var1 = +[VCHardwareSettings maxMultiwayFramerateSupported];
  }

  var0 = a3->var0;
  if (a3->var0 == 16)
  {
    if (!+[VCHardwareSettings supportsMultiway720pStream])
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 1;
      }

      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      *buf = 136315650;
      v50 = v27;
      v51 = 2080;
      v52 = "[VCSessionMediaStreamConfigurationProvider initializeVideoStreamWithConfig:streamIndex:]";
      v53 = 1024;
      v54 = 480;
      v29 = " [%s] %s:%d Device does not support 720p stream. Skipping this stream";
      goto LABEL_39;
    }

    var0 = a3->var0;
  }

  if (var0 == 20 && !+[VCHardwareSettings supportsMultiway1080pStream])
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 1;
    }

    v33 = VRTraceErrorLogLevelToCSTR();
    v28 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    *buf = 136315650;
    v50 = v33;
    v51 = 2080;
    v52 = "[VCSessionMediaStreamConfigurationProvider initializeVideoStreamWithConfig:streamIndex:]";
    v53 = 1024;
    v54 = 484;
    v29 = " [%s] %s:%d Device does not support 1080p stream. Skipping this stream";
LABEL_39:
    _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 0x1Cu);
    return 1;
  }

  v11 = a3->var6 == 100 && v6 == 123 && var1 > 0xF;
  v12 = objc_alloc_init(VCMediaStreamMultiwayConfigVideo);
  if (!v12)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionMediaStreamConfigurationProvider initializeVideoStreamWithConfig:streamIndex:];
        }
      }

      goto LABEL_73;
    }

    if (objc_opt_respondsToSelector())
    {
      v35 = [(VCSessionMediaStreamConfigurationProvider *)self performSelector:sel_logPrefix];
    }

    else
    {
      v35 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_73;
    }

    v39 = VRTraceErrorLogLevelToCSTR();
    v40 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }

    *buf = 136316162;
    v50 = v39;
    v51 = 2080;
    v52 = "[VCSessionMediaStreamConfigurationProvider initializeVideoStreamWithConfig:streamIndex:]";
    v53 = 1024;
    v54 = 496;
    v55 = 2112;
    v56 = v35;
    v57 = 2048;
    v58 = self;
    v41 = " [%s] %s:%d %@(%p) Failed to create video multiway config";
    goto LABEL_85;
  }

  v13 = objc_alloc_init(VCSessionParticipantVideoStreamConfig);
  if (!v13)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionMediaStreamConfigurationProvider initializeVideoStreamWithConfig:streamIndex:];
        }
      }

      goto LABEL_73;
    }

    if (objc_opt_respondsToSelector())
    {
      v36 = [(VCSessionMediaStreamConfigurationProvider *)self performSelector:sel_logPrefix];
    }

    else
    {
      v36 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3 || (v42 = VRTraceErrorLogLevelToCSTR(), v40 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
LABEL_73:
      v16 = 0;
      v14 = 0;
      goto LABEL_83;
    }

    *buf = 136316162;
    v50 = v42;
    v51 = 2080;
    v52 = "[VCSessionMediaStreamConfigurationProvider initializeVideoStreamWithConfig:streamIndex:]";
    v53 = 1024;
    v54 = 499;
    v55 = 2112;
    v56 = v36;
    v57 = 2048;
    v58 = self;
    v41 = " [%s] %s:%d %@(%p) Failed to create video stream config";
LABEL_85:
    _os_log_error_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_ERROR, v41, buf, 0x30u);
    goto LABEL_73;
  }

  v14 = v13;
  v15 = objc_alloc_init(VCMediaStreamRateControlConfig);
  if (v15)
  {
    v16 = v15;
    v17 = var1 >> v11;
    v18 = [(VCIDSStreamIDGenerator *)self->_streamIDGenerator generateSSRC:1 streamID:1 repairStreamID:a3->var7 != 0 v2StreamID:0];
    [(VCMediaStreamMultiwayConfig *)v12 setSsrc:v18];
    [(VCMediaStreamMultiwayConfig *)v12 setMaxNetworkBitrate:a3->var3];
    [(VCMediaStreamMultiwayConfig *)v12 setMaxMediaBitrate:a3->var4];
    [(VCMediaStreamMultiwayConfig *)v12 setQualityIndex:a3->var5];
    [(VCMediaStreamMultiwayConfig *)v12 setIdsStreamID:WORD2(v18)];
    if (a3->var7)
    {
      [(VCMediaStreamMultiwayConfig *)v12 setRepairedStreamID:HIWORD(v18)];
      [(VCMediaStreamMultiwayConfig *)v12 setRepairedMaxNetworkBitrate:a3->var7];
    }

    [(VCMediaStreamMultiwayConfigVideo *)v12 setResolution:a3->var0];
    [(VCMediaStreamMultiwayConfigVideo *)v12 setFramerate:v17];
    [(VCMediaStreamMultiwayConfigVideo *)v12 setKeyFrameInterval:a3->var2];
    [(VCMediaStreamMultiwayConfig *)v12 setStartOnDemand:[VCSessionMediaStreamConfigurationProvider isVideoStreamOnDemand:a3]];
    [(VCMediaStreamMultiwayConfig *)v12 setNegotiationProtocolMask:a3->var9];
    [(VCMediaStreamMultiwayConfig *)v12 setRepairedFECLevel:a3->var10];
    [(VCMediaStreamMultiwayConfigVideo *)v12 addPayload:v6];
    var3 = a3->var3;
    var4 = a3->var4;
    [(VCMediaStreamConfig *)v14 setMultiwayConfig:v12];
    [(VCMediaStreamConfig *)v14 setDirection:1];
    [(VCVideoStreamConfig *)v14 setVideoResolution:a3->var0];
    [(VCVideoStreamConfig *)v14 setFramerate:v17];
    [(VCVideoStreamConfig *)v14 setKeyFrameInterval:a3->var2];
    [(VCVideoStreamConfig *)v14 setTxMinBitrate:var4];
    [(VCVideoStreamConfig *)v14 setTxMaxBitrate:a3->var4];
    [(VCVideoStreamConfig *)v14 setRxMinBitrate:var3];
    [(VCVideoStreamConfig *)v14 setRxMaxBitrate:a3->var3];
    [(VCVideoStreamConfig *)v14 setType:3];
    [(VCVideoStreamConfig *)v14 setSourceFramerate:30];
    [(VCVideoStreamConfig *)v14 setRemoteVideoInitialOrientation:0];
    [(VCMediaStreamConfig *)v14 setRateControlConfig:v16];
    [(VCVideoStreamConfig *)v14 setParameterSets:VCVideoParamaterSets_DefaultSupportedSets(v6)];
    [(VCMediaStreamConfig *)v14 setRtpTimestampRate:24000];
    [(VCMediaStreamConfig *)v14 setDefaultRemoteSSRC:[(VCIDSStreamIDGenerator *)self->_streamIDGenerator generateSSRC]];
    [(VCMediaStreamConfig *)v14 addTxPayloadType:v6 networkPayload:v6];
    [(VCMediaStreamConfig *)v14 addRxPayloadType:v6 networkPayload:v6];
    if ([(VCMediaStreamMultiwayConfig *)v12 isOneToOne])
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    v22 = [VCVideoFeatureListStringHelper newLocalFeaturesStringWithType:v21];
    if (v22)
    {
      v23 = v22;
      v48 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
      v24 = 1;
      -[VCSessionParticipantVideoStreamConfig setupRxPayloads:featureStrings:](v14, "setupRxPayloads:featureStrings:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1], v23);
      v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
      -[VCSessionParticipantVideoStreamConfig setupTxPayloads:featureStrings:](v14, "setupTxPayloads:featureStrings:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1], v23);

      [(NSMutableArray *)self->_videoStreamConfigurations addObject:v14];
      [VideoUtil sizeForVideoResolution:a3->var0];
      if (v26 == v25)
      {
        self->_isEncodingSqaures = 1;
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v30 = VRTraceErrorLogLevelToCSTR();
          v31 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v32 = a3->var0;
            *buf = 136315906;
            v50 = v30;
            v51 = 2080;
            v52 = "[VCSessionMediaStreamConfigurationProvider initializeVideoStreamWithConfig:streamIndex:]";
            v53 = 1024;
            v54 = 556;
            v55 = 1024;
            LODWORD(v56) = v32;
            _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d videoResolution is %d, not encoding squares", buf, 0x22u);
          }
        }

        v24 = 1;
      }

      goto LABEL_35;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionMediaStreamConfigurationProvider initializeVideoStreamWithConfig:streamIndex:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v38 = [(VCSessionMediaStreamConfigurationProvider *)self performSelector:sel_logPrefix];
      }

      else
      {
        v38 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v45 = VRTraceErrorLogLevelToCSTR();
        v46 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v50 = v45;
          v51 = 2080;
          v52 = "[VCSessionMediaStreamConfigurationProvider initializeVideoStreamWithConfig:streamIndex:]";
          v53 = 1024;
          v54 = 546;
          v55 = 2112;
          v56 = v38;
          v57 = 2048;
          v58 = self;
          _os_log_error_impl(&dword_1DB56E000, v46, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create featureStrings", buf, 0x30u);
        }
      }
    }
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
          [VCSessionMediaStreamConfigurationProvider initializeVideoStreamWithConfig:streamIndex:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v37 = [(VCSessionMediaStreamConfigurationProvider *)self performSelector:sel_logPrefix];
      }

      else
      {
        v37 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v43 = VRTraceErrorLogLevelToCSTR();
        v44 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v50 = v43;
          v51 = 2080;
          v52 = "[VCSessionMediaStreamConfigurationProvider initializeVideoStreamWithConfig:streamIndex:]";
          v53 = 1024;
          v54 = 502;
          v55 = 2112;
          v56 = v37;
          v57 = 2048;
          v58 = self;
          _os_log_error_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create rate control config", buf, 0x30u);
        }
      }
    }

    v16 = 0;
  }

LABEL_83:
  v24 = 0;
LABEL_35:

  return v24;
}

- (BOOL)initializeVideoStreamWithDefaults
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = +[VideoUtil videoResolutionForWidth:height:](VideoUtil, "videoResolutionForWidth:height:", [+[VCDefaults sharedInstance](VCDefaults forceEncodeWidth], [+[VCDefaults forceEncodeHeight] sharedInstance];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v46 = v4;
      v47 = 2080;
      v48 = "[VCSessionMediaStreamConfigurationProvider initializeVideoStreamWithDefaults]";
      v49 = 1024;
      v50 = 570;
      v51 = 1024;
      *v52 = [+[VCDefaults sharedInstance](VCDefaults forceEncodeWidth];
      *&v52[4] = 1024;
      *&v52[6] = [+[VCDefaults sharedInstance](VCDefaults forceEncodeHeight];
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d force encode size width is %d, height is %d", buf, 0x28u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v46 = v6;
      v47 = 2080;
      v48 = "[VCSessionMediaStreamConfigurationProvider initializeVideoStreamWithDefaults]";
      v49 = 1024;
      v50 = 571;
      v51 = 1024;
      *v52 = v3;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d video reolution is %d", buf, 0x22u);
    }
  }

  v36 = v3;
  v37 = [+[VCDefaults sharedInstance](VCDefaults forceFramerate];
  v38 = [+[VCDefaults sharedInstance](VCDefaults forceKeyFrameInterval];
  v39 = ((1000 * [+[VCDefaults forceBitrate] sharedInstance]* 1.2);
  v40 = 1000 * [+[VCDefaults sharedInstance](VCDefaults forceBitrate];
  v41 = 125;
  v42 = [+[VCDefaults sharedInstance](VCDefaults forceVideoPayload];
  v43 = 0xAAAAAA0000000000;
  v44 = 0;
  [VideoUtil sizeForVideoResolution:v3];
  if (v9 == v8)
  {
    self->_isEncodingSqaures = 1;
  }

  self->_highestEncodingResolution = v3;
  v10 = [(VCSessionMediaStreamConfigurationProvider *)self initializeVideoStreamWithConfig:&v36 streamIndex:0xFFFFFFFFLL];
  v11 = objc_opt_class();
  if (v10)
  {
    if (v11 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v16 = [+[VCDefaults sharedInstance](VCDefaults forceVideoPayload];
          v17 = [+[VCDefaults sharedInstance](VCDefaults forceEncodeWidth];
          v18 = [+[VCDefaults sharedInstance](VCDefaults forceEncodeHeight];
          v19 = [+[VCDefaults sharedInstance](VCDefaults forceFramerate];
          v20 = [+[VCDefaults sharedInstance](VCDefaults forceBitrate];
          v21 = [+[VCDefaults sharedInstance](VCDefaults forceKeyFrameInterval];
          *buf = 136317186;
          v46 = v14;
          v47 = 2080;
          v48 = "[VCSessionMediaStreamConfigurationProvider initializeVideoStreamWithDefaults]";
          v49 = 1024;
          v50 = 591;
          v51 = 1024;
          *v52 = v16;
          *&v52[4] = 1024;
          *&v52[6] = v17;
          LOWORD(v53) = 1024;
          *(&v53 + 2) = v18;
          HIWORD(v53) = 1024;
          *v54 = v19;
          *&v54[4] = 1024;
          *v55 = v20;
          *&v55[4] = 1024;
          *v56 = v21;
          v22 = " [%s] %s:%d Created video stream config with forceHWI to initialize video a multiway stream. Stream[Codec=%d,W=%d,H=%d,fps=%d,%xkbps, %dIDR/sec]";
          v23 = v15;
          v24 = 64;
LABEL_26:
          _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [(VCSessionMediaStreamConfigurationProvider *)self performSelector:sel_logPrefix];
      }

      else
      {
        v12 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v35 = [+[VCDefaults sharedInstance](VCDefaults forceVideoPayload];
          v27 = [+[VCDefaults sharedInstance](VCDefaults forceEncodeWidth];
          v28 = [+[VCDefaults sharedInstance](VCDefaults forceEncodeHeight];
          v29 = [+[VCDefaults sharedInstance](VCDefaults forceFramerate];
          v30 = [+[VCDefaults sharedInstance](VCDefaults forceBitrate];
          v31 = [+[VCDefaults sharedInstance](VCDefaults forceKeyFrameInterval];
          *buf = 136317698;
          v46 = v25;
          v47 = 2080;
          v48 = "[VCSessionMediaStreamConfigurationProvider initializeVideoStreamWithDefaults]";
          v49 = 1024;
          v50 = 591;
          v51 = 2112;
          *v52 = v12;
          *&v52[8] = 2048;
          v53 = self;
          *v54 = 1024;
          *&v54[2] = v35;
          *v55 = 1024;
          *&v55[2] = v27;
          *v56 = 1024;
          *&v56[2] = v28;
          v57 = 1024;
          v58 = v29;
          v59 = 1024;
          v60 = v30;
          v61 = 1024;
          v62 = v31;
          v22 = " [%s] %s:%d %@(%p) Created video stream config with forceHWI to initialize video a multiway stream. Stream[Codec=%d,W=%d,H=%d,fps=%d,%xkbps, %dIDR/sec]";
          v23 = v26;
          v24 = 84;
          goto LABEL_26;
        }
      }
    }
  }

  else if (v11 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSessionMediaStreamConfigurationProvider initializeVideoStreamWithDefaults];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [(VCSessionMediaStreamConfigurationProvider *)self performSelector:sel_logPrefix];
    }

    else
    {
      v13 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v32 = VRTraceErrorLogLevelToCSTR();
      v33 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v46 = v32;
        v47 = 2080;
        v48 = "[VCSessionMediaStreamConfigurationProvider initializeVideoStreamWithDefaults]";
        v49 = 1024;
        v50 = 588;
        v51 = 2112;
        *v52 = v13;
        *&v52[8] = 2048;
        v53 = self;
        _os_log_error_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to forceHWI initialize video multiway stream", buf, 0x30u);
      }
    }
  }

  return v10;
}

+ (void)fixAudioStreamConfigurations
{
  v2 = +[VCHardwareSettings deviceClass];
  if (v2 == 8)
  {
    v3 = 31867;
  }

  else
  {
    v3 = 31334;
  }

  if (v2 == 8)
  {
    v4 = 74000;
  }

  else
  {
    v4 = 73400;
  }

  _audioStreamConfigs = v3;
  dword_1ECC72448 = v4;
  _audioStreamConfigurationsCount = v2 != 8;
}

- (void)audioStreamConfigs:(_VCMediaStreamConfigurationProviderAudio *)a3 configCount:(unsigned int *)a4
{
  +[VCSessionMediaStreamConfigurationProvider fixAudioStreamConfigurations];
  v7 = &_audioStreamConfigs;
  if (self->_sessionMode == 2)
  {
    v7 = &_spatialAudioStreamConfigs;
  }

  if ((self->_sessionMode == 2) | _audioStreamConfigurationsCount & 1)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  *a3 = v7;
  *a4 = v8;
}

+ (BOOL)audioConfig:(_VCMediaStreamConfigurationProviderAudio *)a3 supportsDeviceClass:(int64_t)a4
{
  var11 = a3->var11;
  if (!var11)
  {
    return 0;
  }

  if (a3->var12[0] == a4)
  {
    return 1;
  }

  v6 = &a3->var12[1];
  v7 = 1;
  do
  {
    v8 = v7;
    if (var11 == v7)
    {
      break;
    }

    v9 = *v6++;
    ++v7;
  }

  while (v9 != a4);
  return v8 < var11;
}

- (BOOL)initializeAudioStreamsWithSupportedRules:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v12 = 0;
  [(VCSessionMediaStreamConfigurationProvider *)self audioStreamConfigs:&v13 configCount:&v12];
  if (a3)
  {
    v5 = +[VCHardwareSettings deviceClass];
    if (v12)
    {
      v6 = v5;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      while ([VCSessionMediaStreamConfigurationProvider audioConfig:v13 + v7 supportsDeviceClass:v6])
      {
        if (*(v13 + v7 + 208) && [a3 isACC24ForGFTEnabled])
        {
          v10 = 2 * (v8 + v12);
        }

        else
        {
          v10 = v8 + v12;
        }

        if (![(VCSessionMediaStreamConfigurationProvider *)self initializeAudioStreamWithConfig:v13 + v7 maxIDSStreamIDCount:v10 supportedAudioRules:a3 isLowestQualityAudio:v8 == 0])
        {
          [(VCSessionMediaStreamConfigurationProvider *)self initializeAudioStreamsWithSupportedRules:?];
          return v14;
        }

        ++v9;
        --v8;
        v7 += 232;
        if (v9 >= v12)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  else
  {
    [(VCSessionMediaStreamConfigurationProvider *)self initializeAudioStreamsWithSupportedRules:?];
    return v14;
  }
}

+ (unsigned)maxStreamIDCountFromStreamIndex:(unsigned int)a3
{
  v4 = +[VCHardwareSettings deviceClass];
  +[VCSessionMediaStreamConfigurationProvider fixAudioStreamConfigurations];
  v5 = 0;
  v6 = &_audioStreamConfigs;
  do
  {
    if (![VCSessionMediaStreamConfigurationProvider audioConfig:v6 supportsDeviceClass:v4])
    {
      break;
    }

    ++v5;
    v7 = _audioStreamConfigurationsCount ? 2 : 3;
    v6 += 58;
  }

  while (v5 < v7);
  if (v5 >= a3)
  {
    return v5 - a3;
  }

  else
  {
    return 0;
  }
}

+ (BOOL)isAudioStreamOnDemand:(_VCMediaStreamConfigurationProviderAudio *)a3 isLowestQualityAudio:(BOOL)a4
{
  v4 = a4;
  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"forceAudioOnDemand", a3->var8);
  if (v4)
  {
    v6 = +[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings, "getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:", @"vc-low-quality-audio-stream-on-demand", @"lowQualityAudioOnDemand", [MEMORY[0x1E696AD98] numberWithBool:BoolValueForKey], 0);

    LOBYTE(BoolValueForKey) = [v6 BOOLValue];
  }

  return BoolValueForKey;
}

+ (BOOL)isVideoStreamOnDemand:(_VCMediaStreamConfigurationProviderVideo *)a3
{
  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"forceVideoOnDemand", a3->var8);
  if (a3->var5 == dword_1ECC72058)
  {
    v5 = +[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings, "getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:", @"vc-low-quality-video-stream-on-demand", @"lowQualityVideoOnDemand", [MEMORY[0x1E696AD98] numberWithBool:BoolValueForKey], 0);

    LOBYTE(BoolValueForKey) = [v5 BOOLValue];
  }

  return BoolValueForKey;
}

+ (void)setUpCodecConfig:(id)a3 payload:(int)a4 preferredMode:(int)a5
{
  v5 = *&a5;
  if ((a4 - 107) < 2)
  {
LABEL_4:
    [a3 setDtxEnabled:1];
    [a3 setSupportedModes:&unk_1F579D2A8];
    goto LABEL_6;
  }

  if (a4 != 101)
  {
    if (a4 != 111)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  [a3 setPTime:10];
LABEL_6:

  [a3 setPreferredMode:v5];
}

+ (void)setUpV2CodecConfig:(id)a3 payload:(int)a4 preferredMode:(int)a5
{
  v5 = *&a5;
  if (a4 == 113)
  {
    [a3 setNetworkPayload:113];
    [a3 setSupportedModes:&unk_1F579D2C0];
  }

  [a3 setPreferredMode:v5];
}

+ (void)configureAudioStreams:(id)a3 withCodecConfiguration:(_VCMediaStreamConfigurationProviderAudio *)a4 payloadsVersion:(unsigned int)a5
{
  if (a5 == 1)
  {
    v6 = 0;
    v7 = 32;
    v8 = 24;
  }

  else
  {
    if (a5 != 3)
    {
      return;
    }

    v6 = 1;
    v7 = 216;
    v8 = 208;
  }

  v9 = *(&a4->var0 + v8);
  if (v9)
  {
    v10 = (&a4->var2.var0 + v7);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v10 += 4;
      [VCSessionMediaStreamConfigurationProvider addCodecConfigurationToStreamConfig:a3 codecType:v11 preferredMode:v12 isV2Codec:v6];
      --v9;
    }

    while (v9);
  }
}

- (BOOL)initializeAudioStreamWithConfig:(_VCMediaStreamConfigurationProviderAudio *)a3 maxIDSStreamIDCount:(unsigned int)a4 supportedAudioRules:(id)a5 isLowestQualityAudio:(BOOL)a6
{
  v6 = a6;
  v8 = *&a4;
  v52 = *MEMORY[0x1E69E9840];
  v11 = objc_alloc_init(VCMediaStreamMultiwayConfigAudio);
  if (!v11)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionMediaStreamConfigurationProvider initializeAudioStreamWithConfig:maxIDSStreamIDCount:supportedAudioRules:isLowestQualityAudio:];
        }
      }

      goto LABEL_51;
    }

    if (objc_opt_respondsToSelector())
    {
      v29 = [(VCSessionMediaStreamConfigurationProvider *)self performSelector:sel_logPrefix];
    }

    else
    {
      v29 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_51;
    }

    v33 = VRTraceErrorLogLevelToCSTR();
    v34 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_51;
    }

    *buf = 136316162;
    v43 = v33;
    v44 = 2080;
    v45 = "[VCSessionMediaStreamConfigurationProvider initializeAudioStreamWithConfig:maxIDSStreamIDCount:supportedAudioRules:isLowestQualityAudio:]";
    v46 = 1024;
    v47 = 787;
    v48 = 2112;
    v49 = v29;
    v50 = 2048;
    v51 = self;
    v35 = " [%s] %s:%d %@(%p) Failed to create video multiway config";
    goto LABEL_63;
  }

  v12 = objc_alloc_init(VCMediaStreamRateControlConfig);
  if (!v12)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionMediaStreamConfigurationProvider initializeAudioStreamWithConfig:maxIDSStreamIDCount:supportedAudioRules:isLowestQualityAudio:];
        }
      }

      goto LABEL_51;
    }

    if (objc_opt_respondsToSelector())
    {
      v30 = [(VCSessionMediaStreamConfigurationProvider *)self performSelector:sel_logPrefix];
    }

    else
    {
      v30 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3 || (v36 = VRTraceErrorLogLevelToCSTR(), v34 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
LABEL_51:
      v13 = 0;
LABEL_52:
      v15 = 0;
LABEL_53:
      v27 = 0;
      goto LABEL_19;
    }

    *buf = 136316162;
    v43 = v36;
    v44 = 2080;
    v45 = "[VCSessionMediaStreamConfigurationProvider initializeAudioStreamWithConfig:maxIDSStreamIDCount:supportedAudioRules:isLowestQualityAudio:]";
    v46 = 1024;
    v47 = 790;
    v48 = 2112;
    v49 = v30;
    v50 = 2048;
    v51 = self;
    v35 = " [%s] %s:%d %@(%p) Failed to create rate control config";
LABEL_63:
    _os_log_error_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_ERROR, v35, buf, 0x30u);
    goto LABEL_51;
  }

  v13 = v12;
  v14 = objc_alloc_init(VCSessionParticipantAudioStreamConfig);
  if (!v14)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionMediaStreamConfigurationProvider initializeAudioStreamWithConfig:maxIDSStreamIDCount:supportedAudioRules:isLowestQualityAudio:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v31 = [(VCSessionMediaStreamConfigurationProvider *)self performSelector:sel_logPrefix];
      }

      else
      {
        v31 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v37 = VRTraceErrorLogLevelToCSTR();
        v38 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v43 = v37;
          v44 = 2080;
          v45 = "[VCSessionMediaStreamConfigurationProvider initializeAudioStreamWithConfig:maxIDSStreamIDCount:supportedAudioRules:isLowestQualityAudio:]";
          v46 = 1024;
          v47 = 793;
          v48 = 2112;
          v49 = v31;
          v50 = 2048;
          v51 = self;
          _os_log_error_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create video stream config", buf, 0x30u);
        }
      }
    }

    goto LABEL_52;
  }

  v15 = v14;
  [(VCMediaStreamConfig *)v14 setJitterBufferMode:1];
  v16 = [(VCSessionMediaStreamConfigurationProvider *)self audioRuleCollectionWithAudioConfig:a3 supportedAudioRules:a5];
  if (!v16)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionMediaStreamConfigurationProvider initializeAudioStreamWithConfig:maxIDSStreamIDCount:supportedAudioRules:isLowestQualityAudio:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v32 = [(VCSessionMediaStreamConfigurationProvider *)self performSelector:sel_logPrefix];
      }

      else
      {
        v32 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v39 = VRTraceErrorLogLevelToCSTR();
        v40 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v43 = v39;
          v44 = 2080;
          v45 = "[VCSessionMediaStreamConfigurationProvider initializeAudioStreamWithConfig:maxIDSStreamIDCount:supportedAudioRules:isLowestQualityAudio:]";
          v46 = 1024;
          v47 = 798;
          v48 = 2112;
          v49 = v32;
          v50 = 2048;
          v51 = self;
          _os_log_error_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create audio rules multiway config", buf, 0x30u);
        }
      }
    }

    goto LABEL_53;
  }

  v17 = v16;
  v41 = v13;
  [VCSessionMediaStreamConfigurationProvider configureAudioStreams:v15 withCodecConfiguration:a3 payloadsVersion:1];
  var7 = a3->var7;
  if (var7 != 128)
  {
    [(VCAudioStreamConfig *)v15 setupRedWithRxPayload:var7 txPayload:a3->var7];
  }

  if (a3->var5)
  {
    v19 = 0;
    do
    {
      [(VCAudioStreamConfig *)v15 addSupportedNumRedundantPayload:a3->var6[v19++]];
    }

    while (v19 < a3->var5);
  }

  [(VCSessionParticipantAudioStreamConfig *)v15 setAudioRules:v17];
  [(VCMediaStreamConfig *)v15 setDirection:1];
  [(VCAudioStreamConfig *)v15 setNumRedundantPayloads:LOBYTE(a3->var6[0])];
  [(VCAudioStreamConfig *)v15 setSupportsAdaptation:1];
  [(VCAudioStreamConfig *)v15 setBundlingScheme:1];
  [(VCAudioStreamConfig *)v15 setChannelCount:1];
  [(VCMediaStreamConfig *)v15 setRtpTimestampRate:24000];
  -[VCAudioStreamConfig setIsACC24ForU1Enabled:](v15, "setIsACC24ForU1Enabled:", [a5 isACC24ForU1Enabled]);
  -[VCAudioStreamConfig setIsACC24ForGFTEnabled:](v15, "setIsACC24ForGFTEnabled:", [a5 isACC24ForGFTEnabled]);
  if (a3->var13)
  {
    v20 = [a5 isACC24ForGFTEnabled];
  }

  else
  {
    v20 = 0;
  }

  v21 = [(VCIDSStreamIDGenerator *)self->_streamIDGenerator generateSSRC:1 streamID:1 repairStreamID:0 v2StreamID:v20];
  v23 = v22;
  -[VCAudioStreamConfig setIsHigherAudioREDCutoverU1Enabled:](v15, "setIsHigherAudioREDCutoverU1Enabled:", [a5 isHigherAudioREDCutoverU1Enabled]);
  [(VCMediaStreamMultiwayConfig *)v11 setSsrc:v21];
  [(VCMediaStreamMultiwayConfig *)v11 setIdsStreamID:WORD2(v21)];
  v24 = v23;
  [(VCMediaStreamMultiwayConfig *)v11 setV2StreamID:v23];
  [(VCMediaStreamMultiwayConfig *)v11 setMaxNetworkBitrate:a3->var0];
  [(VCMediaStreamMultiwayConfig *)v11 setMaxMediaBitrate:a3->var2.var1];
  *&v25 = a3->var9;
  [(VCMediaStreamMultiwayConfig *)v11 setMaxPacketsPerSecond:v25];
  [(VCMediaStreamMultiwayConfig *)v11 setQualityIndex:a3->var1];
  [(VCMediaStreamMultiwayConfig *)v11 setMaxIDSStreamIdCount:v8];
  [(VCMediaStreamMultiwayConfigAudio *)v11 setAudioRules:v17];
  [(VCMediaStreamMultiwayConfig *)v11 setRepairedMaxNetworkBitrate:a3->var0];
  [(VCMediaStreamMultiwayConfig *)v11 setStartOnDemand:[VCSessionMediaStreamConfigurationProvider isAudioStreamOnDemand:a3 isLowestQualityAudio:v6]];
  [(VCMediaStreamMultiwayConfig *)v11 setNegotiationProtocolMask:a3->var10];
  [(VCMediaStreamConfig *)v15 setMultiwayConfig:v11];
  v13 = v41;
  [(VCMediaStreamConfig *)v15 setRateControlConfig:v41];
  if (v24)
  {
    [VCSessionMediaStreamConfigurationProvider configureAudioStreams:v15 withCodecConfiguration:a3 payloadsVersion:3];
  }

  if ([+[VCDefaults forceDisableMediaEncryption] sharedInstance]
  {
    v26 = 0;
  }

  else
  {
    v26 = 3;
  }

  [(VCMediaStreamConfig *)v15 setSRTPCipherSuite:v26];
  [(NSMutableArray *)self->_audioStreamConfigurations addObject:v15];
  v27 = 1;
LABEL_19:

  return v27;
}

- (id)audioRuleCollectionWithAudioConfig:(_VCMediaStreamConfigurationProviderAudio *)a3 supportedAudioRules:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v22 = objc_alloc_init(VCAudioRuleCollection);
  if (v22)
  {
    if (a3->var3)
    {
      v7 = 0;
      do
      {
        v8 = [VCPayloadUtils payloadForCodecType:a3->var4[v7].var0];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v9 = [a4 rules];
        v10 = [v9 countByEnumeratingWithState:&v29 objects:v28 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v30;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v30 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v29 + 1) + 8 * i);
              if ([v14 payload] == v8)
              {
                [(VCAudioRuleCollection *)v22 addAudioRule:v14];
                goto LABEL_14;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v29 objects:v28 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

LABEL_14:
        ++v7;
      }

      while (v7 < a3->var3);
    }

    if (a3->var7 != 128)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v15 = [a4 rules];
      v16 = [v15 countByEnumeratingWithState:&v24 objects:v23 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v25;
        while (2)
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v25 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v24 + 1) + 8 * j);
            if ([v20 payload] == a3->var7)
            {
              [(VCAudioRuleCollection *)v22 addAudioRule:v20];
              return v22;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v24 objects:v23 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  else
  {
    [VCSessionMediaStreamConfigurationProvider audioRuleCollectionWithAudioConfig:? supportedAudioRules:?];
  }

  return v22;
}

+ (void)addCodecConfigurationToStreamConfig:(id)a3 codecType:(int64_t)a4 preferredMode:(int)a5 isV2Codec:(BOOL)a6
{
  v6 = a6;
  v32 = *MEMORY[0x1E69E9840];
  v10 = [VCPayloadUtils payloadForCodecType:a4];
  v11 = [[VCAudioStreamCodecConfig alloc] initWithCodecType:a4];
  if (v11)
  {
    [OUTLINED_FUNCTION_15_12() setUpCodecConfig:? payload:? preferredMode:?];
    if (v6)
    {
      if ([a3 isACC24ForGFTEnabled])
      {
        [OUTLINED_FUNCTION_15_12() setUpV2CodecConfig:? payload:? preferredMode:?];
        v12 = [a3 multiwayConfig];
        [v12 setEnableACC24ForGFT:1];
        [v12 addV2CodecConfiguration:v11];
      }
    }

    else
    {
      [a3 addCodecConfiguration:v11];
    }

    goto LABEL_6;
  }

  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_6;
    }

    VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_6;
    }

    OUTLINED_FUNCTION_10();
    v25 = v15;
    OUTLINED_FUNCTION_9_24();
    v26 = v16;
    LODWORD(v27) = v10;
    v17 = " [%s] %s:%d Failed to allocate codec config for payload=%d";
    v18 = v14;
    v19 = 34;
LABEL_17:
    _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, v17, &v23, v19);
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v13 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v23 = 136316418;
      v24 = v20;
      v25 = 2080;
      OUTLINED_FUNCTION_9_24();
      v26 = 2112;
      v27 = v13;
      v28 = 2048;
      v29 = a1;
      v30 = v22;
      v31 = v10;
      v17 = " [%s] %s:%d %@(%p) Failed to allocate codec config for payload=%d";
      v18 = v21;
      v19 = 54;
      goto LABEL_17;
    }
  }

LABEL_6:
}

- (void)initWithStreamIDGenerator:(uint64_t)a1 sessionMode:supportedAudioRules:.cold.1(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithStreamIDGenerator:(uint64_t)a1 sessionMode:supportedAudioRules:.cold.2(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithStreamIDGenerator:(uint64_t)a1 sessionMode:supportedAudioRules:.cold.3(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithStreamIDGenerator:(uint64_t)a1 sessionMode:supportedAudioRules:.cold.4(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initializeStreamsWithSupportedAudioRules:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initializeStreamsWithSupportedAudioRules:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initializeVideoStreams
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initializeVideoStreamWithConfig:streamIndex:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initializeVideoStreamWithConfig:streamIndex:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initializeVideoStreamWithConfig:streamIndex:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initializeVideoStreamWithConfig:streamIndex:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initializeVideoStreamWithDefaults
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initializeAudioStreamsWithSupportedRules:(void *)a1 .cold.1(void *a1, _BYTE *a2)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_16_0();
LABEL_11:
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *a2 = 0;
}

- (void)initializeAudioStreamsWithSupportedRules:(void *)a1 .cold.2(void *a1, _BYTE *a2)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_16_0();
LABEL_11:
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *a2 = 0;
}

- (void)initializeAudioStreamWithConfig:maxIDSStreamIDCount:supportedAudioRules:isLowestQualityAudio:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initializeAudioStreamWithConfig:maxIDSStreamIDCount:supportedAudioRules:isLowestQualityAudio:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initializeAudioStreamWithConfig:maxIDSStreamIDCount:supportedAudioRules:isLowestQualityAudio:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initializeAudioStreamWithConfig:maxIDSStreamIDCount:supportedAudioRules:isLowestQualityAudio:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)audioRuleCollectionWithAudioConfig:(uint64_t)a1 supportedAudioRules:.cold.1(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

@end