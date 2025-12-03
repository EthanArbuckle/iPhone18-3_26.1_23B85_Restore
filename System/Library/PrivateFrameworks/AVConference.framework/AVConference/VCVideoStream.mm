@interface VCVideoStream
+ (BOOL)shouldUseRandomRTPTimestampWithType:(int64_t)type;
+ (id)capabilities;
+ (id)newFeatureListStringsWithConfiguration:(id)configuration;
- (BOOL)addRemoteEndpoint:(id)endpoint error:(id *)error;
- (BOOL)configureStreamInputCaptureSourceWithStreamInputID:(int64_t)d frameRate:(unsigned int)rate;
- (BOOL)didReceiveFirstFrame;
- (BOOL)enableRateControlFeebackInConfig:(id)config;
- (BOOL)isScreenConfig:(id)config;
- (BOOL)isTransportIPv6;
- (BOOL)onConfigureStreamWithConfiguration:(id)configuration error:(id *)error;
- (BOOL)onVideoFrame:(opaqueCMSampleBuffer *)frame frameTime:(id *)time attribute:(id *)attribute;
- (BOOL)registerForCameraCaptureWithConfig:(id)config;
- (BOOL)registerForVideoCapture;
- (BOOL)removeRemoteEndpoint:(id)endpoint error:(id *)error;
- (BOOL)setEncodingMode:(int)mode;
- (BOOL)setRTPPayloads:(int *)payloads numPayloads:(int)numPayloads withError:(id *)error;
- (BOOL)useUEPForVideoConfig:(int)config;
- (BOOL)validateStreamConfiguration:(id)configuration error:(id *)error;
- (BOOL)validateVideoStreamConfigurations:(id)configurations;
- (VCVideoStream)init;
- (VCVideoStream)initWithTransportSessionID:(unsigned int)d idsParticipantID:(unint64_t)iD ssrc:(unsigned int)ssrc streamToken:(int64_t)token logPrefix:(id)prefix;
- (__CFDictionary)getClientSpecificUserInfo;
- (__CFString)getReportingClientName;
- (__CFString)getReportingServiceName;
- (double)activeVideoStallDuration;
- (double)videoRxFrameRate;
- (id)copyOnVideoFrameBlock;
- (id)getReceiveStatsCollectorWithStreamConfig:(id)config;
- (id)getTransmitMediaControllerWithStreamConfig:(id)config;
- (id)getTransmitStatsCollectorWithStreamConfig:(id)config;
- (id)newScreenCaptureConfigForVideoConfig:(id)config;
- (id)newSensitiveContentAnalyzerForParticipant:(id)participant;
- (id)newVideoTransmitterConfigWithVideoStreamConfig:(id)config;
- (id)setLocalParticipantInfo:(id)info networkSockets:(id)sockets withError:(id *)error;
- (int)operatingModeForVideoStreamType:(int64_t)type;
- (int)pickScreenDisplayMode;
- (int)remoteCameraReportingClientType;
- (int)reportVideoStreamType;
- (int)screenSharingReportingClientType;
- (int)secondDisplayReportingClientType;
- (tagVCNACKGeneratorStoreBagsConfig)readServerPacketRetransmissionsForVideoStoreBagConfig:(SEL)config;
- (tagVCVideoReceiverConfig)videoReceiverConfigWithVideoStreamConfig:(SEL)config;
- (tagVCVideoReceiverDelegateRealtimeInstanceVTable)videoReceiverDelegateFunctions;
- (tagVCVideoStreamReceiverConfig)videoStreamReceiverConfigWithDumpID:(SEL)d reportingAgent:(unsigned int)agent;
- (unsigned)dumpIDFromCallID;
- (unsigned)getMaxTemporalBitrateForStreamIDs:(id)ds;
- (unsigned)lastDisplayedFrameRTPTimestamp;
- (unsigned)maxFramerateFromStreamConfigs:(id)configs;
- (unsigned)networkMTU;
- (unsigned)vcVideoReceiver:(id)receiver receivedTMMBR:(unsigned int)r;
- (void)addReceiverStreamConfigsToReceiverConfig:(tagVCVideoReceiverConfig *)config streamConfig:(id)streamConfig;
- (void)avConferencePreviewError:(id)error;
- (void)avConferenceScreenCaptureError:(id)error;
- (void)cameraAvailabilityDidChange:(BOOL)change;
- (void)cleanupBeforeReconfigure:(id)reconfigure;
- (void)cleaunpReceiverConfig:(tagVCVideoReceiverConfig *)config;
- (void)collectImageQueuePerformanceMetrics:(__CFDictionary *)metrics;
- (void)configureMediaStallSettingsWithConfig:(id)config;
- (void)configureReceiveBuffer:(id)buffer;
- (void)dealloc;
- (void)deregisterCurrentStreamInputCaptureSource;
- (void)deregisterForVideoCapture;
- (void)destroyVideoModules;
- (void)destroyVideoReceiver;
- (void)destroyVideoTransmitter;
- (void)didChangeThermalLevel:(int)level;
- (void)enableRedundancyController:(id)controller;
- (void)endSensitiveContentAnalyzerInterruption;
- (void)gatherRealtimeStats:(__CFDictionary *)stats;
- (void)generateKeyFrameWithFIRType:(int)type;
- (void)handleActiveConnectionChange:(id)change;
- (void)handleNWConnectionNotification:(tagVCNWConnectionNotification *)notification;
- (void)handleNWConnectionPacketEvent:(packet_id *)event eventType:(int)type;
- (void)handleTransportSessionConnectionEvent;
- (void)handleVTPSendFailedWithData:(void *)data;
- (void)initVideoTransmitter;
- (void)onPauseWithCompletionHandler:(id)handler;
- (void)onResumeWithCompletionHandler:(id)handler;
- (void)onSendRTCPPacket;
- (void)onStartWithCompletionHandler:(id)handler;
- (void)onStopWithCompletionHandler:(id)handler;
- (void)overrideConfigWithDefaults:(id)defaults;
- (void)rateAdaptation:(id)adaptation targetBitrateDidChange:(unsigned int)change rateChangeCounter:(unsigned int)counter;
- (void)redundancyController:(id)controller redundancyPercentageDidChange:(unsigned int)change;
- (void)redundancyController:(id)controller redundancyVectorDidChange:(id *)change;
- (void)reportFailedToRegisterVideoFramesFromSource:(int)source width:(int)width height:(int)height frameRate:(int)rate;
- (void)reportStreamPerfTimings;
- (void)requestLastDecodedFrame;
- (void)resetRemoteMediaStalled;
- (void)sendLastRemoteVideoFrame:(__CVBuffer *)frame;
- (void)setDidReceiveFirstFrame:(BOOL)frame;
- (void)setForceRTCPForLTRPACK:(BOOL)k;
- (void)setPeerSubscribedStreamIDs:(id)ds;
- (void)setShouldEnableFaceZoom:(BOOL)zoom;
- (void)setStreamIDs:(id)ds repairStreamIDs:(id)iDs;
- (void)setTargetStreamID:(id)d;
- (void)setTransmitterStreamIDs:(id)ds repairStreamIDs:(id)iDs;
- (void)setUpVideoTransmitterStreamConfig:(tagVCVideoTransmitterStreamConfig *)config streamIndex:(int)index transport:(id)transport streamConfig:(id)streamConfig;
- (void)setUplinkRetransmissionEnabled:(BOOL)enabled;
- (void)setVideoStreamDelegate:(id)delegate delegateFunctions:(const tagVCVideoStreamDelegateRealtimeInstanceVTable *)functions;
- (void)setupColorInfo:(id)info;
- (void)setupCompoundStreamIDsWithStreamIDs:(id)ds;
- (void)setupInternalRedundancyControllerWithStreamConfig:(id)config;
- (void)setupMultiwayVideoReceiverConfig:(tagVCVideoReceiverConfig *)config forTransportStream:(id)stream;
- (void)setupMultiwayVideoReceiverStreamSwitchInfo:(tagVCVideoReceiverStreamConfig *)info forTransportStream:(id)stream;
- (void)setupMultiwayVideoReceiverTemporalScalingConfig:(tagVCVideoReceiverStreamConfig *)config forTransportStream:(id)stream;
- (void)setupReportingAgent;
- (void)setupVideoReceiver:(id)receiver withTransmitterHandle:(tagHANDLE *)handle;
- (void)setupVideoStream;
- (void)setupVideoTransmitterConfigColorInfo:(id)info;
- (void)startRateAdaptationWithStreamConfig:(id)config;
- (void)stopRateAdaptation;
- (void)thermalLevelDidChange:(int)change;
- (void)updateShouldCacheRemoteVideoFrame;
- (void)updateSourcePlayoutTime:(const tagVCMediaTime *)time;
- (void)updateVideoConfig:(id)config;
- (void)updateVideoReceiver:(id)receiver;
- (void)updateVideoTransmitterStreamConfiguration;
- (void)vcVideoReceiver:(id)receiver didSwitchFromStreamID:(unsigned __int16)d toStreamID:(unsigned __int16)iD;
- (void)vcVideoReceiver:(id)receiver downlinkQualityDidChange:(id)change;
- (void)vcVideoReceiver:(id)receiver requestKeyFrameGenerationWithStreamID:(unsigned __int16)d firType:(int)type;
- (void)vcVideoReceiverRequestKeyFrame:(id)frame rtcpPSFBType:(unsigned int)type;
@end

@implementation VCVideoStream

- (void)overrideConfigWithDefaults:(id)defaults
{
  forceVideoStreamResolution = [+[VCDefaults sharedInstance](VCDefaults forceVideoStreamResolution];
  if (forceVideoStreamResolution <= 0xD)
  {
    [defaults setVideoResolution:forceVideoStreamResolution];
  }

  forceVideoStreamTxMaxBitrate = [+[VCDefaults sharedInstance](VCDefaults forceVideoStreamTxMaxBitrate];
  if (forceVideoStreamTxMaxBitrate >= 1)
  {
    [defaults setTxMaxBitrate:forceVideoStreamTxMaxBitrate];
  }

  forceVideoStreamTxMinBitrate = [+[VCDefaults sharedInstance](VCDefaults forceVideoStreamTxMinBitrate];
  if (forceVideoStreamTxMinBitrate >= 1)
  {
    [defaults setTxMinBitrate:forceVideoStreamTxMinBitrate];
  }

  forceVideoStreamFramerate = [+[VCDefaults sharedInstance](VCDefaults forceVideoStreamFramerate];
  if (forceVideoStreamFramerate >= 1)
  {
    [defaults setFramerate:forceVideoStreamFramerate];
  }

  forceVideoStreamKeyFrameInterval = [+[VCDefaults sharedInstance](VCDefaults forceVideoStreamKeyFrameInterval];
  if (forceVideoStreamKeyFrameInterval >= 1)
  {
    [defaults setKeyFrameInterval:forceVideoStreamKeyFrameInterval];
  }

  forceVideoStreamRxMaxBitrate = [+[VCDefaults sharedInstance](VCDefaults forceVideoStreamRxMaxBitrate];
  if (forceVideoStreamRxMaxBitrate >= 1)
  {
    [defaults setRxMaxBitrate:forceVideoStreamRxMaxBitrate];
  }

  forceVideoStreamRxMinBitrate = [+[VCDefaults sharedInstance](VCDefaults forceVideoStreamRxMinBitrate];
  if (forceVideoStreamRxMinBitrate >= 1)
  {

    [defaults setRxMinBitrate:forceVideoStreamRxMinBitrate];
  }
}

- (void)setUpVideoTransmitterStreamConfig:(tagVCVideoTransmitterStreamConfig *)config streamIndex:(int)index transport:(id)transport streamConfig:(id)streamConfig
{
  v41 = *MEMORY[0x1E69E9840];
  config->var0 = [transport rtpHandle];
  config->var3 = [streamConfig txMaxBitrate];
  config->var1 = [transport idsStreamId];
  config->var4 = [transport transmitterSframeCryptor];
  streamConfigCopy = streamConfig;
  if ([objc_msgSend(streamConfig "remoteSSRCs")])
  {
    v12 = 0;
    *&v11 = 136316418;
    v24 = v11;
    do
    {
      v13 = [objc_msgSend(objc_msgSend(objc_msgSend(transport streamConfig] + index;
      config->var5[v12] = v13;
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_13;
        }

        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        v23 = [objc_msgSend(transport "streamConfig")];
        *buf = v24;
        v27 = v21;
        v28 = 2080;
        v29 = "[VCVideoStream setUpVideoTransmitterStreamConfig:streamIndex:transport:streamConfig:]";
        v30 = 1024;
        v31 = 268;
        v32 = 1024;
        *v33 = v13;
        *&v33[4] = 1024;
        *&v33[6] = index;
        LOWORD(selfCopy) = 1024;
        *(&selfCopy + 2) = v23;
        v18 = v22;
        v19 = "VCVideoStream [%s] %s:%d Updating remoteSSRC=%u to streamIndex=%d for defaultRemoteSSRC=%u";
        v20 = 46;
      }

      else
      {
        v14 = &stru_1F570E008;
        if (objc_opt_respondsToSelector())
        {
          v14 = [(VCVideoStream *)self performSelector:sel_logPrefix];
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_13;
        }

        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        v17 = [objc_msgSend(transport "streamConfig")];
        *buf = 136316930;
        v27 = v15;
        v28 = 2080;
        v29 = "[VCVideoStream setUpVideoTransmitterStreamConfig:streamIndex:transport:streamConfig:]";
        v30 = 1024;
        v31 = 268;
        v32 = 2112;
        *v33 = v14;
        *&v33[8] = 2048;
        selfCopy = self;
        v35 = 1024;
        v36 = v13;
        v37 = 1024;
        indexCopy = index;
        v39 = 1024;
        v40 = v17;
        v18 = v16;
        v19 = "VCVideoStream [%s] %s:%d %@(%p) Updating remoteSSRC=%u to streamIndex=%d for defaultRemoteSSRC=%u";
        v20 = 66;
      }

      _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, v20);
LABEL_13:
      ++v12;
    }

    while (v12 < [objc_msgSend(streamConfigCopy "remoteSSRCs")]);
  }
}

- (id)newVideoTransmitterConfigWithVideoStreamConfig:(id)config
{
  v87 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(VCVideoTransmitterConfig);
  if ([(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] multiwayConfig] hasQualityIndex])
  {
    [(VCVideoTransmitterConfig *)v5 setQualityIndex:[(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] multiwayConfig] qualityIndex]];
  }

  -[VCVideoTransmitterConfig setVideoResolution:](v5, "setVideoResolution:", [config videoResolution]);
  [(VCVideoTransmitterConfig *)v5 setVideoSource:3];
  -[VCVideoTransmitterConfig setFramerate:](v5, "setFramerate:", [config framerate]);
  -[VCVideoTransmitterConfig setCodecType:](v5, "setCodecType:", [config primaryTxCodecType]);
  -[VCVideoTransmitterConfig setTxMaxBitrate:](v5, "setTxMaxBitrate:", [config txMaxBitrate]);
  -[VCVideoTransmitterConfig setTxMinBitrate:](v5, "setTxMinBitrate:", [config txMinBitrate]);
  -[VCVideoTransmitterConfig setKeyFrameInterval:](v5, "setKeyFrameInterval:", [config keyFrameInterval]);
  -[VCVideoTransmitterConfig setEnableCVO:](v5, "setEnableCVO:", [config enableCVO]);
  -[VCVideoTransmitterConfig setCvoExtensionID:](v5, "setCvoExtensionID:", [config cvoExtensionID]);
  -[VCVideoTransmitterConfig setRecommendedMTU:](v5, "setRecommendedMTU:", [config recommendedMTU]);
  [(VCVideoTransmitterConfig *)v5 setReportingAgent:[(VCObject *)self reportingAgent]];
  [(VCVideoTransmitterConfig *)v5 setReportingParentID:self->_reportingModuleID];
  [(VCVideoTransmitterConfig *)v5 setStatisticsCollector:[(VCVideoStream *)self getTransmitStatsCollectorWithStreamConfig:config]];
  -[VCVideoTransmitterConfig setVideoPayload:](v5, "setVideoPayload:", +[VCPayloadUtils payloadForCodecType:](VCPayloadUtils, "payloadForCodecType:", [config primaryTxCodecType]));
  -[VCVideoTransmitterConfig setEncodingMode:](v5, "setEncodingMode:", [config encodingMode]);
  -[VCVideoTransmitterConfig setEncoderUsage:](v5, "setEncoderUsage:", [config encoderUsage]);
  -[VCVideoTransmitterConfig setVideoPriorityPointer:](v5, "setVideoPriorityPointer:", [config videoPriorityPointer]);
  -[VCVideoTransmitterConfig setTilesPerFrame:](v5, "setTilesPerFrame:", [config tilesPerFrame]);
  -[VCVideoTransmitterConfig setPixelFormat:](v5, "setPixelFormat:", [config pixelFormat]);
  -[VCVideoTransmitterConfig setRemoteIDSParticipantID:](v5, "setRemoteIDSParticipantID:", [objc_msgSend(config "multiwayConfig")]);
  [(VCVideoTransmitterConfig *)v5 setMediaController:[(VCVideoStream *)self getTransmitMediaControllerWithStreamConfig:config]];
  [(VCVideoTransmitterConfig *)v5 setMediaControlInfoGenerator:[(VCMediaStream *)self mediaControlInfoGenerator]];
  [(VCVideoTransmitterConfig *)v5 setRtpTimestampRate:self->_rtpTimestampRate];
  -[VCVideoTransmitterConfig setProfileLevel:](v5, "setProfileLevel:", [config profileLevel]);
  -[VCVideoTransmitterConfig setParameterSets:](v5, "setParameterSets:", [config parameterSets]);
  -[VCVideoTransmitterConfig setForceL4SHighDataRate:](v5, "setForceL4SHighDataRate:", [config forceL4SHighDataRate]);
  -[VCVideoTransmitterConfig setTemporalScalingEnabled:](v5, "setTemporalScalingEnabled:", [config temporalScalingEnabled]);
  -[VCVideoTransmitterConfig setIsLowBandwidthSinglePacketDuplicationEnabled:](v5, "setIsLowBandwidthSinglePacketDuplicationEnabled:", [config isLowBandwidthSinglePacketDuplicationEnabled]);
  -[VCVideoTransmitterConfig setMaxEncoderPixels:](v5, "setMaxEncoderPixels:", [config maxEncoderPixels]);
  -[VCVideoTransmitterConfig setRtxEnabled:](v5, "setRtxEnabled:", [config isUplinkRetransmissionEnabled]);
  [(VCVideoTransmitterConfig *)v5 setMinKeyFrameGenerationIntervalInSeconds:0.25];
  -[VCVideoTransmitterConfig setFoveationEnabled:](v5, "setFoveationEnabled:", [config foveationEnabled]);
  -[VCVideoTransmitterConfig setStereoVideoPackingType:](v5, "setStereoVideoPackingType:", +[VideoUtil stereoVideoPackingTypeFromVideoBufferDescription:](VideoUtil, "stereoVideoPackingTypeFromVideoBufferDescription:", [config videoBufferDescription]));
  -[VCVideoTransmitterConfig setUseMultiImageEncoding:](v5, "setUseMultiImageEncoding:", +[VideoUtil isBufferDescriptionForMultiImageStream:](VideoUtil, "isBufferDescriptionForMultiImageStream:", [config videoBufferDescription]));
  -[VCVideoTransmitterConfig setEnableInterleavedEncoding:](v5, "setEnableInterleavedEncoding:", [config enableInterleavedEncoding]);
  if ([config enableInterleavedEncoding])
  {
    v6 = 4;
  }

  else
  {
    v6 = 1;
  }

  [(VCVideoTransmitterConfig *)v5 setNumberOfInterleavedEncoders:v6];
  -[VCVideoTransmitterConfig setSessionId:](v5, "setSessionId:", [objc_msgSend(config "multiwayConfig")]);
  -[VCVideoTransmitterConfig setParticipantId:](v5, "setParticipantId:", [objc_msgSend(config "multiwayConfig")]);
  -[VCVideoTransmitterConfig setStreamGroupId:](v5, "setStreamGroupId:", [objc_msgSend(config "multiwayConfig")]);
  [(VCVideoTransmitterConfig *)v5 setStreamToken:self->super._streamToken];
  [(VCVideoTransmitterConfig *)v5 setExperimentManager:self->super._experimentManager];
  -[VCVideoTransmitterConfig setLogPrefix:](v5, "setLogPrefix:", [MEMORY[0x1E696AEC0] stringWithFormat:@"parent=%p", self]);
  [(VCVideoStream *)self setupVideoTransmitterConfigColorInfo:v5];
  if (self->super._isRTTBasedFIRThrottlingEnabled)
  {
    [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-video-transmitter-minimum-key-frame-generation-interval-for-facetime" userDefaultKey:@"minimumKeyFrameGenerationIntervalFaceTime" defaultValue:&unk_1F579E4F0 isDoubleType:{1), "doubleValue"}];
    [(VCVideoTransmitterConfig *)v5 setMinKeyFrameGenerationIntervalInSeconds:?];
  }

  if ([config videoResolution] == 27)
  {
    -[VCVideoTransmitterConfig setCustomWidth:](v5, "setCustomWidth:", [config customWidth]);
    -[VCVideoTransmitterConfig setCustomHeight:](v5, "setCustomHeight:", [config customHeight]);
  }

  if ([config temporalScalingEnabled])
  {
    -[VCVideoTransmitterConfig setTxMaxBitrate:](v5, "setTxMaxBitrate:", [objc_msgSend(-[NSMutableArray lastObject](self->super._transportArray "lastObject")]);
    -[VCVideoTransmitterConfig setTxMinBitrate:](v5, "setTxMinBitrate:", [objc_msgSend(-[NSMutableArray firstObject](self->super._transportArray "firstObject")]);
    [(VCVideoTransmitterConfig *)v5 setMaxSupportedTemporalLayers:+[VCHardwareSettings maxVCPSupportedTemporalLayers]];
  }

  configCopy = config;
  if (-[NSMutableArray count](self->super._transportArray, "count") == 1 && [config temporalScalingEnabled] && objc_msgSend(objc_msgSend(config, "txBitrateTiers"), "count"))
  {
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    obj = [config txBitrateTiers];
    v7 = [obj countByEnumeratingWithState:&v83 objects:v82 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v84;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v84 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v83 + 1) + 8 * i);
          v12 = [-[NSMutableArray firstObject](self->super._transportArray "firstObject")];
          streamConfigs = [(VCVideoTransmitterConfig *)v5 streamConfigs];
          *(streamConfigs + ([(VCVideoTransmitterConfig *)v5 streamCount]<< 6)) = v12;
          LODWORD(v11) = [v11 unsignedIntValue];
          streamConfigs2 = [(VCVideoTransmitterConfig *)v5 streamConfigs];
          *(streamConfigs2 + ([(VCVideoTransmitterConfig *)v5 streamCount]<< 6) + 16) = v11;
          LOWORD(v11) = [-[NSMutableArray firstObject](self->super._transportArray "firstObject")];
          streamConfigs3 = [(VCVideoTransmitterConfig *)v5 streamConfigs];
          *(streamConfigs3 + ([(VCVideoTransmitterConfig *)v5 streamCount]<< 6) + 8) = v11;
          v16 = [-[NSMutableArray firstObject](self->super._transportArray "firstObject")];
          streamConfigs4 = [(VCVideoTransmitterConfig *)v5 streamConfigs];
          *(streamConfigs4 + ([(VCVideoTransmitterConfig *)v5 streamCount]<< 6) + 24) = v16;
          [(VCVideoTransmitterConfig *)v5 setStreamCount:[(VCVideoTransmitterConfig *)v5 streamCount]+ 1];
        }

        v8 = [obj countByEnumeratingWithState:&v83 objects:v82 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    transportArray = self->super._transportArray;
    v19 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v78 objects:v77 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v79;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v79 != v21)
          {
            objc_enumerationMutation(transportArray);
          }

          v23 = *(*(&v78 + 1) + 8 * j);
          streamConfig = [v23 streamConfig];
          v76 = 0u;
          memset(buf, 0, sizeof(buf));
          [(VCVideoStream *)self setUpVideoTransmitterStreamConfig:buf streamIndex:[(VCVideoTransmitterConfig *)v5 streamCount] transport:v23 streamConfig:streamConfig];
          streamConfigs5 = [(VCVideoTransmitterConfig *)v5 streamConfigs];
          v26 = (streamConfigs5 + ([(VCVideoTransmitterConfig *)v5 streamCount]<< 6));
          v27 = v76;
          v29 = *buf;
          v28 = *&buf[16];
          v26[2] = *&buf[32];
          v26[3] = v27;
          *v26 = v29;
          v26[1] = v28;
          [(VCVideoTransmitterConfig *)v5 setStreamCount:[(VCVideoTransmitterConfig *)v5 streamCount]+ 1];
        }

        v20 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v78 objects:v77 count:16];
      }

      while (v20);
    }
  }

  type = [configCopy type];
  if (type > 3)
  {
    if (type <= 5)
    {
      if (type != 4)
      {
        [(VCVideoTransmitterConfig *)v5 setMode:5];
        if ([configCopy tilesPerFrame] == 1)
        {
          v31 = 5;
        }

        else
        {
          v31 = 1;
        }

        [(VCVideoTransmitterConfig *)v5 setEncoderUsage:v31];
        tilesPerFrame = [configCopy tilesPerFrame];
        v33 = 0.01;
        if (tilesPerFrame == 1)
        {
          v33 = 1.0;
        }

        [(VCVideoTransmitterConfig *)v5 setMinKeyFrameGenerationIntervalInSeconds:v33];
        [(VCVideoTransmitterConfig *)v5 setIsFecGeneratorEnabled:0];
        [(VCVideoTransmitterConfig *)v5 setFecHeaderV1Enabled:0];
        -[VCVideoTransmitterConfig setFecEnabled:](v5, "setFecEnabled:", [configCopy fecEnabled]);
        -[VCVideoTransmitterConfig setRtxEnabled:](v5, "setRtxEnabled:", [configCopy rtxEnabled]);
        -[VCVideoTransmitterConfig setAccessNetworkType:](v5, "setAccessNetworkType:", [configCopy accessNetworkType]);
        [(VCVideoTransmitterConfig *)v5 setUseRateControl:1];
        [(VCVideoTransmitterConfig *)v5 setMediaControlInfoGenerator:[(VCMediaStream *)self mediaControlInfoGenerator]];
        -[VCVideoTransmitterConfig setUseInBandFec:](v5, "setUseInBandFec:", [configCopy useInBandFEC]);
        -[VCVideoTransmitterConfig setCaptureSource:](v5, "setCaptureSource:", [configCopy captureSource]);
        if ([configCopy tilesPerFrame] == 1)
        {
          -[VCVideoTransmitterConfig setMaxEncoderPixels:](v5, "setMaxEncoderPixels:", [configCopy customHeight] * objc_msgSend(configCopy, "customWidth"));
          [(VCVideoTransmitterConfig *)v5 setReinitEncoderOnFrameSizeChangeEnabled:1];
        }

        txCodecFeatureListStrings = [configCopy txCodecFeatureListStrings];
        v67[0] = MEMORY[0x1E69E9820];
        v67[1] = 3221225472;
        v67[2] = __64__VCVideoStream_newVideoTransmitterConfigWithVideoStreamConfig___block_invoke_4;
        v67[3] = &unk_1E85F9638;
        v67[4] = v5;
        v35 = v67;
        goto LABEL_97;
      }

      [(VCVideoTransmitterConfig *)v5 setEncoderBitrateAveragingInterval:150];
      goto LABEL_68;
    }

    if (type == 6)
    {
LABEL_68:
      -[VCVideoTransmitterConfig setCaptureSource:](v5, "setCaptureSource:", [configCopy captureSource]);
      goto LABEL_69;
    }

    if (type == 7)
    {
      [(VCVideoTransmitterConfig *)v5 setMinKeyFrameGenerationIntervalInSeconds:0.01];
      -[VCVideoTransmitterConfig setCaptureSource:](v5, "setCaptureSource:", [configCopy captureSource]);
      [(VCVideoTransmitterConfig *)v5 setIsIPv6:[(VCVideoStream *)self isTransportIPv6]];
      [(VCVideoTransmitterConfig *)v5 setMode:3];
      [(VCVideoTransmitterConfig *)v5 setEncoderUsage:1];
      [(VCVideoTransmitterConfig *)v5 setUseRateControl:1];
      -[VCVideoTransmitterConfig setMaxEncoderPixels:](v5, "setMaxEncoderPixels:", [configCopy customHeight] * objc_msgSend(configCopy, "customWidth"));
      txCodecFeatureListStrings = [configCopy txCodecFeatureListStrings];
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __64__VCVideoStream_newVideoTransmitterConfigWithVideoStreamConfig___block_invoke_2;
      v69[3] = &unk_1E85F9638;
      v69[4] = v5;
      v35 = v69;
LABEL_97:
      [txCodecFeatureListStrings enumerateKeysAndObjectsUsingBlock:v35];
      return v5;
    }

    goto LABEL_64;
  }

  switch(type)
  {
    case 1:
LABEL_69:
      [(VCVideoTransmitterConfig *)v5 setIsIPv6:[(VCVideoStream *)self isTransportIPv6]];
      [(VCVideoTransmitterConfig *)v5 setMode:3];
      [(VCVideoTransmitterConfig *)v5 setEncoderUsage:1];
      [(VCVideoTransmitterConfig *)v5 setMinKeyFrameGenerationIntervalInSeconds:0.01];
      [(VCVideoTransmitterConfig *)v5 setUseRateControl:1];
      txCodecFeatureListStrings = [configCopy txCodecFeatureListStrings];
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __64__VCVideoStream_newVideoTransmitterConfigWithVideoStreamConfig___block_invoke_3;
      v68[3] = &unk_1E85F9638;
      v68[4] = v5;
      v35 = v68;
      goto LABEL_97;
    case 2:
      [(VCVideoTransmitterConfig *)v5 setIsIPv6:[(VCVideoStream *)self isTransportIPv6]];
      [(VCVideoTransmitterConfig *)v5 setMode:5];
      [(VCVideoTransmitterConfig *)v5 setEncoderUsage:1];
      [(VCVideoTransmitterConfig *)v5 setMinKeyFrameGenerationIntervalInSeconds:0.01];
      [(VCVideoTransmitterConfig *)v5 setUseRateControl:1];
      [(VCVideoTransmitterConfig *)v5 setReinitEncoderOnFrameSizeChangeEnabled:1];
      [(VCVideoTransmitterConfig *)v5 setCaptureSource:2];
      -[VCVideoTransmitterConfig setPdEncryptionContext:](v5, "setPdEncryptionContext:", [configCopy pdEncryptionContext]);
      txCodecFeatureListStrings2 = [configCopy txCodecFeatureListStrings];
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __64__VCVideoStream_newVideoTransmitterConfigWithVideoStreamConfig___block_invoke;
      v70[3] = &unk_1E85F9638;
      v70[4] = v5;
      [txCodecFeatureListStrings2 enumerateKeysAndObjectsUsingBlock:v70];
      if ([configCopy hdrMode] == 1)
      {
        v41 = *MEMORY[0x1E6965DB0];
        v42 = *MEMORY[0x1E6983878];
        v73[0] = *MEMORY[0x1E69835B0];
        v73[1] = v42;
        v43 = *MEMORY[0x1E6965F70];
        v74[0] = v41;
        v74[1] = v43;
        v73[2] = *MEMORY[0x1E69838B8];
        v74[2] = *MEMORY[0x1E6965FB0];
        v44 = MEMORY[0x1E695DF20];
        v45 = v74;
        v46 = v73;
        v47 = 3;
      }

      else
      {
        if ([configCopy hdrMode] != 2)
        {
          return v5;
        }

        v48 = *MEMORY[0x1E6965F70];
        v49 = *MEMORY[0x1E69838B8];
        v71[0] = *MEMORY[0x1E6983878];
        v71[1] = v49;
        v50 = *MEMORY[0x1E6965FA8];
        v72[0] = v48;
        v72[1] = v50;
        v44 = MEMORY[0x1E695DF20];
        v45 = v72;
        v46 = v71;
        v47 = 2;
      }

      -[VCVideoTransmitterConfig setColorInfo:](v5, "setColorInfo:", [v44 dictionaryWithObjects:v45 forKeys:v46 count:v47]);
      return v5;
    case 3:
      if ([objc_msgSend(configCopy "multiwayConfig")])
      {
        v36 = 1;
      }

      else
      {
        v36 = 2;
      }

      [(VCVideoTransmitterConfig *)v5 setMode:v36];
      if ([objc_msgSend(configCopy "multiwayConfig")])
      {
        -[VCVideoTransmitterConfig setVideoFrameMetadataSupportedVersion:](v5, "setVideoFrameMetadataSupportedVersion:", [configCopy videoFrameMetadataSupportedVersion]);
      }

      if (![(VCVideoTransmitterConfig *)v5 encoderUsage])
      {
        [(VCVideoTransmitterConfig *)v5 setEncoderUsage:2];
      }

      if ([(VCVideoTransmitterConfig *)v5 mode]== 2)
      {
        [(VCVideoTransmitterConfig *)v5 setMinKeyFrameGenerationIntervalInSeconds:1.0];
      }

      -[VCVideoTransmitterConfig setIsFecGeneratorEnabled:](v5, "setIsFecGeneratorEnabled:", [configCopy fecGeneratorEnabled]);
      -[VCVideoTransmitterConfig setFecHeaderVersion:](v5, "setFecHeaderVersion:", [configCopy fecHeaderVersion]);
      -[VCVideoTransmitterConfig setFecHeaderV1Enabled:](v5, "setFecHeaderV1Enabled:", [configCopy fecHeaderVersion] == 1);
      -[VCVideoTransmitterConfig setUseRateControl:](v5, "setUseRateControl:", [objc_msgSend(configCopy "multiwayConfig")]);
      v37 = [objc_msgSend(configCopy "multiwayConfig")];
      selfCopy = self;
      if (v37)
      {
        selfCopy = [configCopy rateControlConfig];
      }

      [(VCVideoTransmitterConfig *)v5 setMediaControlInfoGenerator:[(VCMediaStream *)selfCopy mediaControlInfoGenerator]];
      -[VCVideoTransmitterConfig setUseInBandFec:](v5, "setUseInBandFec:", [configCopy useInBandFEC]);
      [(VCVideoTransmitterConfig *)v5 setSetupBWEstimationOptionWithFeatureString:0];
      if (HIDWORD(self->_colorInfo))
      {
        [(VCVideoTransmitterConfig *)v5 setRecommendedMTU:?];
      }

      if (![(VCVideoStream *)self isScreenConfig:configCopy])
      {
        if (![(VCVideoTransmitterConfig *)v5 pixelFormat])
        {
          [(VCVideoTransmitterConfig *)v5 setPixelFormat:VCVideoUtil_DefaultCameraCapturePixelFormat()];
        }

        goto LABEL_93;
      }

      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_89;
        }

        v51 = VRTraceErrorLogLevelToCSTR();
        v52 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_89;
        }

        v53 = [objc_msgSend(configCopy "multiwayConfig")];
        v54 = "No";
        *&buf[4] = v51;
        *buf = 136315906;
        *&buf[14] = "[VCVideoStream newVideoTransmitterConfigWithVideoStreamConfig:]";
        *&buf[12] = 2080;
        if (v53)
        {
          v54 = "Yes";
        }

        *&buf[22] = 1024;
        *&buf[24] = 453;
        *&buf[28] = 2080;
        *&buf[30] = v54;
        v55 = "VCVideoStream [%s] %s:%d Configured for Screen Sharing (isOneToOne=%s)";
        v56 = v52;
        v57 = 38;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v39 = [(VCVideoStream *)self performSelector:sel_logPrefix];
        }

        else
        {
          v39 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7 || (v58 = VRTraceErrorLogLevelToCSTR(), v59 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
        {
LABEL_89:
          -[VCVideoTransmitterConfig setCaptureSource:](v5, "setCaptureSource:", [configCopy captureSource]);
          [(VCVideoTransmitterConfig *)v5 setEncoderUsage:5];
          [(VCVideoTransmitterConfig *)v5 setSetupBWEstimationOptionWithFeatureString:0];
          [(VCVideoTransmitterConfig *)v5 setReinitEncoderOnFrameSizeChangeEnabled:0];
          if ((+[VCHardwareSettings deviceClass](VCHardwareSettings, "deviceClass") == 8 || !+[VCHardwareSettings deviceClass](VCHardwareSettings, "deviceClass")) && [configCopy captureSource] == 1)
          {
            [(VCVideoTransmitterConfig *)v5 setReinitEncoderOnFrameSizeChangeEnabled:1];
          }

LABEL_93:
          if ([configCopy rtcpPSFB_LTRAckEnabled])
          {
            v62 = 2;
          }

          else
          {
            v62 = 1;
          }

          [(VCVideoTransmitterConfig *)v5 setLtrAckFeedbackType:v62];
          txCodecFeatureListStrings = [configCopy txCodecFeatureListStrings];
          v66[0] = MEMORY[0x1E69E9820];
          v66[1] = 3221225472;
          v66[2] = __64__VCVideoStream_newVideoTransmitterConfigWithVideoStreamConfig___block_invoke_18;
          v66[3] = &unk_1E85F9638;
          v66[4] = v5;
          v35 = v66;
          goto LABEL_97;
        }

        v60 = [objc_msgSend(configCopy "multiwayConfig")];
        *buf = 136316418;
        v61 = "No";
        *&buf[4] = v58;
        *&buf[14] = "[VCVideoStream newVideoTransmitterConfigWithVideoStreamConfig:]";
        *&buf[12] = 2080;
        *&buf[22] = 1024;
        if (v60)
        {
          v61 = "Yes";
        }

        *&buf[24] = 453;
        *&buf[28] = 2112;
        *&buf[30] = v39;
        *&buf[38] = 2048;
        *&buf[40] = self;
        LOWORD(v76) = 2080;
        *(&v76 + 2) = v61;
        v55 = "VCVideoStream [%s] %s:%d %@(%p) Configured for Screen Sharing (isOneToOne=%s)";
        v56 = v59;
        v57 = 58;
      }

      _os_log_impl(&dword_1DB56E000, v56, OS_LOG_TYPE_DEFAULT, v55, buf, v57);
      goto LABEL_89;
  }

LABEL_64:
  [(VCVideoTransmitterConfig *)v5 setMode:6];
  if (![(VCVideoTransmitterConfig *)v5 encoderUsage])
  {
    [(VCVideoTransmitterConfig *)v5 setEncoderUsage:2];
  }

  [(VCVideoTransmitterConfig *)v5 setPixelFormat:875704438];
  return v5;
}

uint64_t __64__VCVideoStream_newVideoTransmitterConfigWithVideoStreamConfig___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = +[VCPayloadUtils payloadForCodecType:](VCPayloadUtils, "payloadForCodecType:", [a2 unsignedIntValue]);
  v6 = *(a1 + 32);

  return [v6 addCustomFeatureListString:a3 payload:v5];
}

uint64_t __64__VCVideoStream_newVideoTransmitterConfigWithVideoStreamConfig___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = +[VCPayloadUtils payloadForCodecType:](VCPayloadUtils, "payloadForCodecType:", [a2 unsignedIntValue]);
  v6 = *(a1 + 32);

  return [v6 addCustomFeatureListString:a3 payload:v5];
}

uint64_t __64__VCVideoStream_newVideoTransmitterConfigWithVideoStreamConfig___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = +[VCPayloadUtils payloadForCodecType:](VCPayloadUtils, "payloadForCodecType:", [a2 unsignedIntValue]);
  v6 = *(a1 + 32);

  return [v6 addCustomFeatureListString:a3 payload:v5];
}

uint64_t __64__VCVideoStream_newVideoTransmitterConfigWithVideoStreamConfig___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = +[VCPayloadUtils payloadForCodecType:](VCPayloadUtils, "payloadForCodecType:", [a2 unsignedIntValue]);
  v6 = *(a1 + 32);

  return [v6 addCustomFeatureListString:a3 payload:v5];
}

uint64_t __64__VCVideoStream_newVideoTransmitterConfigWithVideoStreamConfig___block_invoke_18(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = +[VCPayloadUtils payloadForCodecType:](VCPayloadUtils, "payloadForCodecType:", [a2 unsignedIntValue]);
  v6 = *(a1 + 32);

  return [v6 addCustomFeatureListString:a3 payload:v5];
}

- (void)initVideoTransmitter
{
  v39 = *MEMORY[0x1E69E9840];
  defaultStreamConfig = [(VCMediaStream *)self defaultStreamConfig];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 136315906;
      *&v30[4] = v4;
      *&v30[12] = 2080;
      *&v30[14] = "[VCVideoStream initVideoTransmitter]";
      *&v30[22] = 1024;
      LODWORD(v31) = 489;
      WORD2(v31) = 2048;
      *(&v31 + 6) = self;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d VCVideoStream[%p]", v30, 0x26u);
    }
  }

  v6 = [(VCVideoStream *)self newVideoTransmitterConfigWithVideoStreamConfig:defaultStreamConfig];
  type = [(VCMediaStreamConfig *)defaultStreamConfig type];
  v8 = &OBJC_IVAR___CannedRawVideoCapture__width;
  if (type <= 7)
  {
    if (((1 << type) & 0xF6) != 0)
    {
      v9 = VCVideoTransmitterDefault;
LABEL_7:
      self->_videoTransmitter = [[v9 alloc] initWithConfig:v6];
      goto LABEL_8;
    }

    if (!type)
    {
      v9 = VCVideoStreamTransmitter;
      goto LABEL_7;
    }

    self->_videoTransmitter = [[VCVideoTransmitterDefault alloc] initWithConfig:v6];
    multiwayConfig = [(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] multiwayConfig];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    subStreamConfigs = [(VCMediaStreamMultiwayConfig *)multiwayConfig subStreamConfigs];
    v24 = [subStreamConfigs countByEnumeratingWithState:&v35 objects:v34 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v36;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v36 != v26)
          {
            objc_enumerationMutation(subStreamConfigs);
          }

          v28 = *(*(&v35 + 1) + 8 * i);
          keyFrameInterval = [v28 keyFrameInterval];
          if (keyFrameInterval == [v28 framerate])
          {
            -[VCVideoTransmitterBase setKeyFrameOnlyStreamID:](self->_videoTransmitter, "setKeyFrameOnlyStreamID:", [v28 idsStreamID]);
          }
        }

        v25 = [subStreamConfigs countByEnumeratingWithState:&v35 objects:v34 count:16];
      }

      while (v25);
    }

    [(VCObject *)self reportingAgent];
    [(VCVideoTransmitterBase *)self->_videoTransmitter encodingWidth];
    [(VCVideoTransmitterBase *)self->_videoTransmitter encodingHeight];
    [(VCVideoTransmitterBase *)self->_videoTransmitter targetFramerate];
    reportingVideoProp();
    v8 = &OBJC_IVAR___CannedRawVideoCapture__width;
  }

LABEL_8:
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [(VCVideoStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_19;
    }

    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v19 = *(&self->super.super.super.isa + v8[298]);
    *v30 = 136316418;
    *&v30[4] = v17;
    *&v30[12] = 2080;
    *&v30[14] = "[VCVideoStream initVideoTransmitter]";
    *&v30[22] = 1024;
    LODWORD(v31) = 516;
    WORD2(v31) = 2112;
    *(&v31 + 6) = v10;
    HIWORD(v31) = 2048;
    selfCopy = self;
    LOWORD(v33) = 2048;
    *(&v33 + 2) = v19;
    v14 = "VCVideoStream [%s] %s:%d %@(%p) videoTransmitter=%p";
    v15 = v18;
    v16 = 58;
    goto LABEL_18;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(&self->super.super.super.isa + v8[298]);
      *v30 = 136315906;
      *&v30[4] = v11;
      *&v30[12] = 2080;
      *&v30[14] = "[VCVideoStream initVideoTransmitter]";
      *&v30[22] = 1024;
      LODWORD(v31) = 516;
      WORD2(v31) = 2048;
      *(&v31 + 6) = v13;
      v14 = "VCVideoStream [%s] %s:%d videoTransmitter=%p";
      v15 = v12;
      v16 = 38;
LABEL_18:
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, v30, v16);
    }
  }

LABEL_19:

  [(VCVideoCaptureConverter *)self->_captureConverter setDestinationFramerate:[(VCMediaStreamConfig *)defaultStreamConfig framerate]];
  -[VCVideoCaptureConverter setSourceFramerate:](self->_captureConverter, "setSourceFramerate:", [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")]);
  v20 = v8[298];
  [*(&self->super.super.super.isa + v20) setIsServerBasedBandwidthProbingEnabled:self->_isServerBasedBandwidthProbingEnabled];
  initialTargetBitrate = self->_initialTargetBitrate;
  if (!initialTargetBitrate)
  {
    initialTargetBitrate = [(VCMediaStreamConfig *)defaultStreamConfig txMinBitrate];
  }

  [*(&self->super.super.super.isa + v20) setTargetBitrate:{initialTargetBitrate, *v30, *&v30[16], v31, selfCopy, v33}];
}

- (void)destroyVideoTransmitter
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCVideoStream destroyVideoTransmitter]";
      v10 = 1024;
      v11 = 530;
      v12 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d VCVideoStream[%p]", &v6, 0x26u);
    }
  }

  videoTransmitter = self->_videoTransmitter;
  if (videoTransmitter)
  {
    self->_initialTargetBitrate = [(VCVideoTransmitterBase *)videoTransmitter targetBitrate];
    videoTransmitter = self->_videoTransmitter;
  }

  [(VCVideoTransmitterBase *)videoTransmitter stopVideo];

  self->_videoTransmitter = 0;
}

+ (id)newFeatureListStringsWithConfiguration:(id)configuration
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [objc_msgSend(configuration "rxCodecFeatureListStrings")];
  if (v5)
  {
    [v4 setObject:v5 forKeyedSubscript:&unk_1F579B8F8];
  }

  v6 = [objc_msgSend(configuration "rxCodecFeatureListStrings")];
  if (v6)
  {
    [v4 setObject:v6 forKeyedSubscript:&unk_1F579B928];
  }

  return v4;
}

- (id)newScreenCaptureConfigForVideoConfig:(id)config
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v5 setObject:self forKeyedSubscript:@"Client"];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", self->_captureSourceID), @"CaptureSourceID"}];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_customWidth), @"VideoWidth"}];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_customHeight), @"VideoHeight"}];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInteger:", objc_msgSend(config, "framerate")), @"FrameRate"}];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->super._clientPID), @"ClientPid"}];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", -[VCVideoStream pickScreenDisplayMode](self, "pickScreenDisplayMode")), @"ScreenCaptureConfigurationDisplayMode"}];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", objc_msgSend(config, "shouldSendBlackFramesOnClearScreen")), @"ShouldSendBlackFramesOnClearScreen"}];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", objc_msgSend(config, "foveationEnabled")), @"FoveationEnabled"}];
  [v5 setObject:&unk_1F579B940 forKeyedSubscript:@"ResolutionScaling"];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_screenDisplayID), @"ScreenDisplayID"}];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(config, "pixelFormat")), @"PixelFormat"}];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(config, "hdrMode")), @"HDRMode"}];
  type = self->_type;
  v8 = type == 2 || type == 5;
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v8), @"EnableIdleFrameAdjustments"}];
  v9 = self->_type;
  v11 = v9 == 1 || v9 == 6;
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v11), @"ScreenWatcherExempt"}];
  [v5 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"ShouldAllowReconfigureForLocalDisplay"];
  v12 = MEMORY[0x1E696AD98];
  v13 = self->_type;
  v14 = 1;
  if (v13 != 1 && v13 != 6)
  {
    v14 = v13 == 5 && [config tilesPerFrame] > 1;
  }

  [v5 setObject:objc_msgSend(v12 forKeyedSubscript:{"numberWithInt:", v14), @"ShouldOptimizeForLowLatency"}];
  if ([config remoteDeviceName])
  {
    [v5 setObject:objc_msgSend(config forKeyedSubscript:{"remoteDeviceName"), @"RemoteDeviceName"}];
  }

  remoteScreenAttributesDidChange = self->_videoStreamDelegateFunctions.remoteScreenAttributesDidChange;
  if (remoteScreenAttributesDidChange)
  {
    [v5 setObject:remoteScreenAttributesDidChange forKeyedSubscript:@"ColorInfo"];
  }

  v16 = self->_type;
  if (v16 == 2)
  {
    [v5 setObject:&unk_1F579B958 forKeyedSubscript:@"BiomeEventType"];
    v16 = self->_type;
  }

  if (v16 == 6)
  {
    [v5 setObject:&unk_1F579B970 forKeyedSubscript:@"CaptureThermalLevelModerate"];
    [v5 setObject:&unk_1F579B988 forKeyedSubscript:@"CaptureThermalLevelHeavy"];
  }

  return v5;
}

- (int)pickScreenDisplayMode
{
  type = self->_type;
  if (type == 6)
  {
    return 1;
  }

  if (type != 2)
  {
    return 0;
  }

  if (self->super._clientPID)
  {
    return 1;
  }

  return 2;
}

- (BOOL)isScreenConfig:(id)config
{
  type = [config type];
  result = 0;
  if (type <= 6)
  {
    if (((1 << type) & 0x66) != 0)
    {
      return 1;
    }

    if (type == 3)
    {
      if ([config captureSource] != 2)
      {
        return [config captureSource] == 1;
      }

      return 1;
    }
  }

  return result;
}

- (void)setupMultiwayVideoReceiverTemporalScalingConfig:(tagVCVideoReceiverStreamConfig *)config forTransportStream:(id)stream
{
  v7 = [objc_msgSend(stream "streamConfig")];
  if ([v7 isTemporalStream])
  {
    if ([v7 parentStreamID])
    {
      temporalScalingBaseLayerStreamID = self->_temporalScalingBaseLayerStreamID;
    }

    else
    {
      temporalScalingBaseLayerStreamID = [stream idsStreamId];
      self->_temporalScalingBaseLayerStreamID = temporalScalingBaseLayerStreamID;
    }

    config->streamInfo.baseStreamID = temporalScalingBaseLayerStreamID;
    config->isTemporalScalingEnabled = 1;
  }

  else
  {
    config->streamInfo.baseStreamID = [stream idsStreamId];
    config->isTemporalScalingEnabled = 0;
    self->_temporalScalingBaseLayerStreamID = 0;
  }
}

- (void)setupMultiwayVideoReceiverStreamSwitchInfo:(tagVCVideoReceiverStreamConfig *)info forTransportStream:(id)stream
{
  v7 = [objc_msgSend(stream "streamConfig")];
  info->streamInfo.streamID = [stream idsStreamId];
  [(VCVideoStream *)self setupMultiwayVideoReceiverTemporalScalingConfig:info forTransportStream:stream];
  info->streamInfo.repairStreamID = [v7 repairedStreamID];
  v8 = [objc_msgSend(v7 "subStreamConfigs")];
  info->streamInfo.subStreamCount = v8;
  if (v8 >= 1)
  {
    v9 = 0;
    subStreamRepairIDs = info->streamInfo.subStreamRepairIDs;
    do
    {
      *(subStreamRepairIDs - 9) = [objc_msgSend(objc_msgSend(v7 "subStreamConfigs")];
      *subStreamRepairIDs++ = [objc_msgSend(objc_msgSend(v7 "subStreamConfigs")];
    }

    while (v9 < info->streamInfo.subStreamCount);
  }
}

- (void)setupMultiwayVideoReceiverConfig:(tagVCVideoReceiverConfig *)config forTransportStream:(id)stream
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  streamConfig = [stream streamConfig];
  multiwayConfig = [streamConfig multiwayConfig];
  *&v23 = [stream rtpHandle];
  *&v24 = [streamConfig keyFrameInterval] == 0;
  WORD1(v24) = [streamConfig framerate];
  *(&v24 + 1) = [stream receiverSframeCryptor];
  *&v25 = [(VCMediaStream *)self mediaControlInfoGenerator];
  *(&v25 + 1) = [objc_msgSend(streamConfig "rateControlConfig")];
  LODWORD(v26) = 1;
  BYTE5(v26) = [streamConfig isRTCPForLossFeedbackEnabled];
  BYTE6(v26) = [streamConfig rtcpPSFB_LTRAckEnabled];
  if ([streamConfig rtcpPSFB_LTRAckEnabled])
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  DWORD2(v26) = v9;
  BYTE12(v26) = [streamConfig shouldEnableMLEnhance];
  LODWORD(v27) = [streamConfig supportedMLEnhanceTypes];
  BYTE12(v27) = [streamConfig fecHeaderVersion];
  HIWORD(v27) = [streamConfig fecLossFeedbackBitfieldLength];
  if (multiwayConfig)
  {
    BYTE5(v24) = [multiwayConfig isOneToOne];
    BYTE4(v26) = [multiwayConfig isOneToOne];
    BYTE4(v27) = [multiwayConfig isOneToOne];
    if ([multiwayConfig isOneToOne])
    {
      *&v25 = [objc_msgSend(streamConfig "rateControlConfig")];
      LODWORD(v26) = 0;
      BYTE5(v27) = [streamConfig afbRxFrontCameraEnabled];
      BYTE6(v27) = [streamConfig afbRxBackCameraEnabled];
      DWORD2(v27) = [streamConfig videoFrameMetadataSupportedVersion];
    }

    if (config->streamSwitchEnabled)
    {
      [(VCVideoStream *)self setupMultiwayVideoReceiverStreamSwitchInfo:&v20 forTransportStream:stream];
    }

    streamConfig2 = [stream streamConfig];
    v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(objc_msgSend(streamConfig2, "rxCodecFeatureListStrings"), "count")}];
    rxCodecFeatureListStrings = [streamConfig2 rxCodecFeatureListStrings];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __69__VCVideoStream_setupMultiwayVideoReceiverConfig_forTransportStream___block_invoke;
    v19[3] = &unk_1E85F9638;
    v19[4] = v11;
    [rxCodecFeatureListStrings enumerateKeysAndObjectsUsingBlock:v19];
    *(&v23 + 1) = v11;
  }

  streamCount = config->streamCount;
  v14 = config + 128 * streamCount;
  v15 = v25;
  *(v14 + 72) = v24;
  *(v14 + 88) = v15;
  v16 = v27;
  *(v14 + 104) = v26;
  *(v14 + 120) = v16;
  v17 = v21;
  *(v14 + 8) = v20;
  *(v14 + 24) = v17;
  v18 = v23;
  *(v14 + 40) = v22;
  config->streamCount = streamCount + 1;
  *(v14 + 56) = v18;
}

uint64_t __69__VCVideoStream_setupMultiwayVideoReceiverConfig_forTransportStream___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = +[VCPayloadUtils payloadForCodecType:](VCPayloadUtils, "payloadForCodecType:", [a2 unsignedIntValue]);
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];

  return [v6 setObject:a3 forKeyedSubscript:v7];
}

- (void)addReceiverStreamConfigsToReceiverConfig:(tagVCVideoReceiverConfig *)config streamConfig:(id)streamConfig
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = [VCVideoStream newFeatureListStringsWithConfiguration:streamConfig];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = self->super._transportArray;
  v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        rtpHandle = [*(*(&v19 + 1) + 8 * i) rtpHandle];
        ltrpEnabled = [streamConfig ltrpEnabled];
        if (v7)
        {
          v14 = CFRetain(v7);
        }

        else
        {
          v14 = 0;
        }

        streamCount = config->streamCount;
        config->streamCount = streamCount + 1;
        v16 = &config->streamConfigs[streamCount];
        *&v16->streamInfo.streamID = 0u;
        *&v16->streamInfo.subStreamIDs[2] = 0u;
        *&v16->streamInfo.subStreamRepairIDs[1] = 0u;
        v16->rtpHandle = rtpHandle;
        v16->featureListStrings = v14;
        *&v16->onDemandIDR = 0u;
        *&v16->mediaControlInfoGenerator = 0u;
        *(&v16->statisticsCollector + 6) = 0;
        v16->isRTCPForLTRPAckEnabled = ltrpEnabled;
        *(&v16->isRTCPForLTRPAckEnabled + 1) = 0;
        v16->ltrAckRTCPPacketType = 1;
        *&v16->shouldEnableLossStats = 0;
        *&v16->shouldEnableMLEnhance = 0;
        *&v16->fecHeaderVersion = 0;
      }

      v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)cleaunpReceiverConfig:(tagVCVideoReceiverConfig *)config
{
  streamCount = config->streamCount;
  if (streamCount)
  {
    v5 = 0;
    v6 = 64;
    do
    {
      v7 = *(&config->streamCount + v6);
      if (v7)
      {
        CFRelease(v7);
        *(&config->streamCount + v6) = 0;
        streamCount = config->streamCount;
      }

      ++v5;
      v6 += 128;
    }

    while (v5 < streamCount);
  }
}

- (tagVCVideoStreamReceiverConfig)videoStreamReceiverConfigWithDumpID:(SEL)d reportingAgent:(unsigned int)agent
{
  *&retstr->var11[16] = 0u;
  *&retstr->var9 = 0u;
  *&retstr->var7 = 0u;
  *retstr->var11 = 0u;
  var11 = retstr->var11;
  retstr->var0 = [(VCMediaStreamTransport *)[(VCMediaStream *)self defaultTransport] rtpHandle];
  retstr->var1 = self;
  retstr->var2.didReceiveSampleBuffer = [(VCVideoStream *)self videoReceiverDelegateFunctions];
  retstr->var2.didReceiveRemoteFrame = v10;
  retstr->var3 = a5;
  reportingModuleID = self->_reportingModuleID;
  retstr->var4 = agent;
  retstr->var5 = reportingModuleID;
  retstr->var6 = self->_statisticsCollector;
  retstr->var7 = self->super._transportSetupInfo.setupType == 5;
  retstr->var8 = self;
  rateAdaptation = self->super._rateAdaptation;
  retstr->var9 = VCMediaStream_RTCPPacketsCallback;
  retstr->var10 = rateAdaptation;
  return snprintf(var11, 0x1EuLL, "parent=%p", self);
}

- (tagVCVideoReceiverConfig)videoReceiverConfigWithVideoStreamConfig:(SEL)config
{
  v64 = *MEMORY[0x1E69E9840];
  bzero(retstr, 0x658uLL);
  retstr->streamToken = self->super._streamToken;
  if ([a4 syncSource])
  {
    v7 = [objc_msgSend(a4 "syncSource")];
    rtpTimestampRate = self->_rtpTimestampRate;
  }

  else
  {
    rtpTimestampRate = self->_rtpTimestampRate;
    v7 = rtpTimestampRate;
  }

  retstr->audioTSRate = v7;
  retstr->videoTSRate = rtpTimestampRate;
  retstr->enableVPBLogging = [+[VCDefaults sharedInstance](VCDefaults enableVPBLogging];
  *&retstr->dumpID = 0;
  retstr->enableBitstreamCapture = [+[VCDefaults sharedInstance](VCDefaults enableBitstreamCapture];
  retstr->enableRxDecodeYUVDump = 0;
  retstr->enableRecvBitstreamDump = [+[VCDefaults sharedInstance](VCDefaults enableRecvBitstreamDump];
  retstr->decoderNumOfTiles = [a4 tilesPerFrame];
  retstr->reportingParentID = self->_reportingModuleID;
  retstr->mediaControlInfoGenerator = [(VCMediaStream *)self mediaControlInfoGenerator];
  rtxEnabled = 1;
  retstr->useRTCPForFIR = 1;
  retstr->isLTRPEnabled = [a4 ltrpEnabled];
  retstr->isVariableSliceModeEnabled = [a4 isVariableSliceModeEnabled];
  retstr->cvoExtensionID = [a4 cvoExtensionID];
  retstr->videoJBEnabled = [a4 useVideoJitterForVideoPlayout];
  retstr->jbTargetEstimatorSynchronizer = [a4 jbTargetEstimatorSynchronizer];
  retstr->isLateKeyFrameDetectionEnabled = [a4 isLateKeyFrameDetectionEnabled];
  if ([(VCMediaStream *)self networkFeedbackController])
  {
    retstr->wrmInfo = [(VCNetworkFeedbackController *)[(VCMediaStream *)self networkFeedbackController] wrmInfo];
  }

  retstr->participantId = [objc_msgSend(a4 "multiwayConfig")];
  retstr->sessionId = [objc_msgSend(a4 "multiwayConfig")];
  retstr->streamGroupID = [objc_msgSend(a4 "multiwayConfig")];
  retstr->isReferenceFrameEnabled = 1;
  retstr->enableDeferredAssembly = [a4 deferredAssemblyEnabled];
  retstr->deferredAssemblyOffset = 0.0;
  retstr->externalPresentationClockType = 1;
  if (([a4 isServerPacketRetransmissionEnabled] & 1) == 0)
  {
    rtxEnabled = [a4 rtxEnabled];
  }

  retstr->isServerPacketRetransmissionEnabled = rtxEnabled;
  retstr->isLateFrameRecoveryEnabled = 1;
  retstr->isLateKeyFrameDetectionEnabled = [a4 isLateKeyFrameDetectionEnabled];
  retstr->experimentManager = self->super._experimentManager;
  if (retstr->isServerPacketRetransmissionEnabled)
  {
    [(VCVideoStream *)self readServerPacketRetransmissionsForVideoStoreBagConfig:a4];
    v10 = *buf;
    *retstr->nackGeneratorStoreBagsConfig.nackThrottlingFactorBuckets = *&buf[16];
    v11 = v62;
    *retstr->nackGeneratorStoreBagsConfig.nackThrottlingPlrBuckets = *&buf[32];
    *&retstr->nackGeneratorStoreBagsConfig.nackGenerationMaxPLR = v11;
    retstr->nackGeneratorStoreBagsConfig.rtxIncompleteFrameBufferDurationMultiplier = v63;
    *&retstr->nackGeneratorStoreBagsConfig.nackGeneratorStorebagConfigVersion = v10;
  }

  [a4 minPlaybackInterval];
  retstr->minPlaybackInterval = v12;
  [a4 minRenderingDelay];
  retstr->minRenderingDelay = v13;
  retstr->useMultiImageDecoding = +[VideoUtil isBufferDescriptionForMultiImageStream:](VideoUtil, "isBufferDescriptionForMultiImageStream:", [a4 videoBufferDescription]);
  retstr->enableInterleavedDecoding = [a4 enableInterleavedEncoding];
  if ([a4 enableInterleavedEncoding])
  {
    v14 = 4;
  }

  else
  {
    v14 = 1;
  }

  retstr->numberOfInterleavedDecoders = v14;
  retstr->reportVideoDegradedEvents = [a4 type] != 3;
  snprintf(retstr->logPrefix, 0x1EuLL, "parent=%p", self);
  retstr->maxDisplayRefreshRate = [+[VCHardwareSettingsEmbedded sharedInstance](VCHardwareSettingsEmbedded maxDisplayRefreshRate];
  v15 = [a4 direction] == 2 || objc_msgSend(a4, "direction") == 3;
  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"videoJBUseErasureSensitiveMode", [a4 jitterBufferMode] == 0);
  [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-video-receiver-deferred-assembly-offset" userDefaultKey:@"videoReceiverDeferredAssemblyOffset" defaultValue:&unk_1F579E500 isDoubleType:{1), "doubleValue"}];
  v18 = v17;
  type = [a4 type];
  if (type > 3)
  {
    if (type <= 5)
    {
      if (type != 4)
      {
        [(VCVideoStream *)self addReceiverStreamConfigsToReceiverConfig:retstr streamConfig:a4];
        retstr->mode = 3;
        retstr->streamSwitchEnabled = 0;
        retstr->isVCRCStatsOnlyVideoBased = 1;
        retstr->rateAdaptation = self->super._rateAdaptation;
        *&retstr->isAsyncDecodingEnabled = 257;
        retstr->decoderNumOfTiles = [a4 tilesPerFrame];
        retstr->triggerSoundAlarmOnRTPReceive = 0;
        retstr->fecHeaderV1Enabled = 0;
        retstr->isReferenceFrameEnabled = 0;
        retstr->forceZeroRegionOfInterestOrigin = [a4 forceZeroRegionOfInterestOrigin];
        retstr->enableJitterBufferInReceiver = 1;
        if ([a4 syncSource])
        {
          retstr->externalPresentationClockType = 2;
        }

        else
        {
          retstr->useDisplayLink = v15;
          retstr->jitterBufferMode = 2;
          retstr->enableImmediateDecode = 0;
          retstr->enableQueueAlarmForDisplay = v15;
        }

        retstr->enableDeferredAssembly = 1;
        retstr->deferredAssemblyOffset = v18;
        v41 = [a4 direction] != 1 && -[VCVideoStream useUEPForVideoConfig:](self, "useUEPForVideoConfig:", objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(a4, "rxPayloadMap"), "allKeys"), "firstObject"), "intValue"));
        retstr->enableUEP = v41;
        goto LABEL_98;
      }

      [(VCVideoStream *)self addReceiverStreamConfigsToReceiverConfig:retstr streamConfig:a4];
      retstr->mode = 3;
      retstr->isVCRCStatsOnlyVideoBased = 1;
      retstr->rateAdaptation = self->super._rateAdaptation;
      *&retstr->isAsyncDecodingEnabled = 257;
      if ([a4 syncSource])
      {
        retstr->externalPresentationClockType = 2;
        goto LABEL_98;
      }

      retstr->useDisplayLink = v15;
      retstr->useInternalClockForPresentation = v15;
      retstr->externalPresentationClockType = !v15;
      *&retstr->enableJitterBufferInReceiver = 257;
      retstr->enableImmediateDecode = 0;
      retstr->enableQueueAlarmForDisplay = 1;
      v26 = !BoolValueForKey;
LABEL_74:
      retstr->jitterBufferMode = v26;
      goto LABEL_98;
    }

    if (type != 6)
    {
      if (type == 7)
      {
        [(VCVideoStream *)self addReceiverStreamConfigsToReceiverConfig:retstr streamConfig:a4];
        retstr->mode = 3;
        *&retstr->isReceiverSideVCRCFeedbackEnabled = 257;
        retstr->rateAdaptation = self->super._rateAdaptation;
        retstr->isLateFrameRecoveryEnabled = 1;
        retstr->isLateKeyFrameDetectionEnabled = 1;
        retstr->enableDeferredAssembly = 0;
        retstr->useAssemblyThread = 1;
        v21 = VCDefaults_GetBoolValueForKey(@"enableVideoJitterBufferWithExternalSourceSync", 1);
        syncSource = [a4 syncSource];
        retstr->isAsyncDecodingEnabled = 1;
        v23 = v15 && v21;
        retstr->useDisplayLink = v15 && v21;
        v24 = syncSource != 0;
        retstr->enableJitterBufferInReceiver = 1;
        retstr->enableJitterBufferInPlayer = v21;
        retstr->jitterBufferMode = 2;
        *&retstr->enableImmediateDecode = 256;
        retstr->enableDecodingStartAlignmentWithJBStart = 1;
        if ([a4 syncSource])
        {
          v25 = 2;
        }

        else
        {
          v25 = !v15;
        }

        retstr->externalPresentationClockType = v25;
        retstr->useInternalClockForPresentation = [a4 syncSource] == 0 && v15;
        retstr->enableQueueAlarmForDisplay = ([a4 syncSource] == 0) | v23 & 1;
        retstr->enableAVLooseSync = VCDefaults_GetBoolValueForKey(@"looseAVSyncEnabled", v24 & v23);
        *&retstr->useRTCPForFIR = 257;
      }

      goto LABEL_98;
    }

LABEL_34:
    [(VCVideoStream *)self addReceiverStreamConfigsToReceiverConfig:retstr streamConfig:a4];
    retstr->mode = 2;
    retstr->isVCRCStatsOnlyVideoBased = 1;
    retstr->rateAdaptation = self->super._rateAdaptation;
    *&retstr->isAsyncDecodingEnabled = 257;
    retstr->useDisplayLink = v15;
    retstr->useInternalClockForPresentation = v15;
    retstr->externalPresentationClockType = !v15;
    retstr->enableJitterBufferInReceiver = 1;
    retstr->enableJitterBufferInPlayer = [a4 hdrMode] != 0;
    retstr->enableImmediateDecode = [a4 hdrMode] == 0;
    retstr->enableQueueAlarmForDisplay = [a4 hdrMode] != 0;
    v26 = !BoolValueForKey && [a4 hdrMode] == 0;
    goto LABEL_74;
  }

  if (type > 1)
  {
    if (type == 2)
    {
      [(VCVideoStream *)self addReceiverStreamConfigsToReceiverConfig:retstr streamConfig:a4];
      retstr->mode = 3;
      retstr->isVCRCStatsOnlyVideoBased = 1;
      retstr->rateAdaptation = self->super._rateAdaptation;
      *&retstr->isAsyncDecodingEnabled = 257;
      retstr->useDisplayLink = v15;
      retstr->useInternalClockForPresentation = v15;
      retstr->externalPresentationClockType = !v15;
      *&retstr->enableJitterBufferInReceiver = 257;
      retstr->enableImmediateDecode = 0;
      retstr->enableQueueAlarmForDisplay = 1;
      retstr->jitterBufferMode = !BoolValueForKey;
      retstr->pdDecryptionContext = [a4 pdDecryptionContext];
      goto LABEL_98;
    }

    if (self->super._operatingMode == 6)
    {
      v20 = [objc_msgSend(a4 "multiwayConfig")] ^ 1;
    }

    else
    {
      v20 = 0;
    }

    retstr->streamSwitchEnabled = v20;
    v55 = a4;
    v54 = v15;
    v27 = !self->super._isWRMinitialized && [a4 direction] == 2;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    transportArray = self->super._transportArray;
    v29 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v57 objects:v56 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v58;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v58 != v31)
          {
            objc_enumerationMutation(transportArray);
          }

          v33 = *(*(&v57 + 1) + 8 * i);
          [(VCVideoStream *)self setupMultiwayVideoReceiverConfig:retstr forTransportStream:v33];
          if (v27)
          {
            if ([(VCMediaStream *)self networkFeedbackController])
            {
              -[VCMediaStream initializeWRMUsingRtpHandle:](self, "initializeWRMUsingRtpHandle:", [v33 rtpHandle]);
              self->super._isWRMinitialized = 1;
            }

            else if (![(VCMediaStream *)self networkFeedbackController]&& VRTraceGetErrorLogLevelForModule() >= 5)
            {
              v34 = VRTraceErrorLogLevelToCSTR();
              v35 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                *&buf[4] = v34;
                *&buf[12] = 2080;
                *&buf[14] = "[VCVideoStream videoReceiverConfigWithVideoStreamConfig:]";
                *&buf[22] = 1024;
                *&buf[24] = 948;
                _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d NetworkFeedbackController is nil in VideoStream", buf, 0x1Cu);
              }
            }
          }
        }

        v30 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v57 objects:v56 count:16];
      }

      while (v30);
    }

    if ([v55 direction] == 1)
    {
      v36 = 0;
    }

    else
    {
      v37 = [objc_msgSend(objc_msgSend(objc_msgSend(v55 "rxPayloadMap")];
      v36 = [(VCVideoStream *)self useUEPForVideoConfig:v37];
      v39 = v37 == 124 || v37 == 110;
      retstr->enableFrameDiscontinuityStatus = v39;
      retstr->isLateFrameRecoveryEnabled &= !v39;
    }

    retstr->pixelFormat = [v55 pixelFormat];
    retstr->mode = [objc_msgSend(v55 "multiwayConfig")] ^ 1;
    retstr->useRTCPForFIR = [v55 rtcpPSFB_FIREnabled];
    retstr->sendRTCP_PSFB_FIR = [v55 rtcpPSFB_FIREnabled];
    retstr->isVCRCStatsOnlyVideoBased = 0;
    *&retstr->isAsyncDecodingEnabled = 0;
    retstr->decoderNumOfTiles = [v55 tilesPerFrame];
    retstr->enableUEP = v36;
    retstr->reportingParentID = self->_reportingModuleID;
    retstr->shouldEnableFaceZoom = self->_shouldEnableFaceZoom;
    retstr->idsParticipantID = [objc_msgSend(v55 "multiwayConfig")];
    retstr->triggerSoundAlarmOnRTPReceive = 1;
    retstr->fecHeaderV1Enabled = [v55 fecHeaderVersion] == 1;
    retstr->isReferenceFrameEnabled = 0;
    retstr->enableJitterBufferInReceiver = VCDefaults_GetBoolValueForKey(@"enableVideoJitterBufferInReceiver", 1);
    retstr->forceZeroRegionOfInterestOrigin = [v55 forceZeroRegionOfInterestOrigin];
    retstr->fecHeaderVersion = [v55 fecHeaderVersion];
    retstr->fecLossFeedbackBitfieldLength = [v55 fecLossFeedbackBitfieldLength];
    if (!-[VCVideoStream isScreenConfig:](self, "isScreenConfig:", v55) && ![v55 useVideoJitterForVideoPlayout])
    {
      goto LABEL_95;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v42 = VRTraceErrorLogLevelToCSTR();
        v43 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v44 = [objc_msgSend(v55 "multiwayConfig")];
          v45 = "No";
          *&buf[4] = v42;
          *buf = 136315906;
          *&buf[14] = "[VCVideoStream videoReceiverConfigWithVideoStreamConfig:]";
          *&buf[12] = 2080;
          if (v44)
          {
            v45 = "Yes";
          }

          *&buf[22] = 1024;
          *&buf[24] = 980;
          *&buf[28] = 2080;
          *&buf[30] = v45;
          v46 = "VCVideoStream [%s] %s:%d Configured for Screen Sharing (isOneToOne=%s)";
          v47 = v43;
          v48 = 38;
          goto LABEL_91;
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v40 = [(VCVideoStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v40 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v49 = VRTraceErrorLogLevelToCSTR();
        v50 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v51 = [objc_msgSend(v55 "multiwayConfig")];
          *buf = 136316418;
          v52 = "No";
          *&buf[4] = v49;
          *&buf[14] = "[VCVideoStream videoReceiverConfigWithVideoStreamConfig:]";
          *&buf[12] = 2080;
          *&buf[22] = 1024;
          if (v51)
          {
            v52 = "Yes";
          }

          *&buf[24] = 980;
          *&buf[28] = 2112;
          *&buf[30] = v40;
          *&buf[38] = 2048;
          *&buf[40] = self;
          LOWORD(v62) = 2080;
          *(&v62 + 2) = v52;
          v46 = "VCVideoStream [%s] %s:%d %@(%p) Configured for Screen Sharing (isOneToOne=%s)";
          v47 = v50;
          v48 = 58;
LABEL_91:
          _os_log_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_DEFAULT, v46, buf, v48);
        }
      }
    }

    retstr->isAsyncDecodingEnabled = 1;
    retstr->useDisplayLink = v54;
    retstr->jitterBufferMode = 2;
    retstr->enableJitterBufferInReceiver = 1;
    retstr->enableImmediateDecode = 0;
    retstr->enableQueueAlarmForDisplay = v54;
    retstr->deferredAssemblyOffset = v18;
    if (+[VCHardwareSettings deviceClass](VCHardwareSettings, "deviceClass") != 8 && [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-video-player-enable-loose-sync-for-facetime" userDefaultKey:@"looseAVSyncEnabled" defaultValue:objc_msgSend(MEMORY[0x1E696AD98] isDoubleType:{"numberWithBool:", objc_msgSend(v55, "looseAVSyncEnabled")), 0), "BOOLValue"}])
    {
      retstr->enableAVLooseSync = 1;
      retstr->enableJitterBufferInPlayer = 1;
      retstr->useInternalClockForPresentation = 1;
      retstr->externalPresentationClockType = 0;
      retstr->triggerSoundAlarmOnRTPReceive = 0;
      retstr->enableHighWatermarkQueueDiscard = 1;
    }

LABEL_95:
    if ([objc_msgSend(v55 "multiwayConfig")] && -[VCMediaStream networkFeedbackController](self, "networkFeedbackController"))
    {
      retstr->wrmInfo = [(VCNetworkFeedbackController *)[(VCMediaStream *)self networkFeedbackController] wrmInfo];
    }

    goto LABEL_98;
  }

  if (!type)
  {
    retstr->triggerSoundAlarmOnRTPReceive = 1;
    goto LABEL_98;
  }

  if (type == 1)
  {
    goto LABEL_34;
  }

LABEL_98:
  result = VCDefaults_GetBoolValueForKey(@"forceVideoStreamLowLatency", 0);
  if (result)
  {
    *&retstr->enableJitterBufferInPlayer = 256;
    retstr->enableQueueAlarmForDisplay = 0;
  }

  return result;
}

- (tagVCNACKGeneratorStoreBagsConfig)readServerPacketRetransmissionsForVideoStoreBagConfig:(SEL)config
{
  v62 = *MEMORY[0x1E69E9840];
  retstr->rtxIncompleteFrameBufferDurationMultiplier = 0.0;
  *retstr->nackThrottlingPlrBuckets = 0u;
  *&retstr->nackGenerationMaxPLR = 0u;
  *&retstr->nackGeneratorStorebagConfigVersion = 0u;
  *retstr->nackThrottlingFactorBuckets = 0u;
  [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-nack-generator-population-percentage-with-additional-delay-budget" userDefaultKey:@"delayBudgetForServerPacketRetransmissionForVideo" defaultValue:0 isDoubleType:{1), "doubleValue"}];
  v7 = v6;
  v8 = 0;
  if ([a4 isServerPacketRetransmissionEnabled])
  {
    v8 = arc4random() / 4294967300.0 < v7;
  }

  retstr->isExtraDelayForPacketRetransmissionsEnabled = v8;
  [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-nack-generator-storebag-config-version" userDefaultKey:0 defaultValue:&unk_1F579B9A0 isDoubleType:{1), "doubleValue"}];
  nackGeneratorStorebagConfigVersion = v9;
  retstr->nackGeneratorStorebagConfigVersion = nackGeneratorStorebagConfigVersion;
  [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-nack-generator-seq-num-aging-time" userDefaultKey:0 defaultValue:&unk_1F579E510 isDoubleType:{1), "doubleValue"}];
  v12 = v11;
  retstr->nackSeqNumAgingDuration = v12;
  [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-nack-generator-nack-bit-rate-limiting-max-ratio" userDefaultKey:0 defaultValue:&unk_1F579E520 isDoubleType:{1), "doubleValue"}];
  v14 = v13;
  retstr->nackThrottlingBitRateLimitingMaxRatio = v14;
  [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-nack-generator-nack-generation-max-plr" userDefaultKey:0 defaultValue:&unk_1F579E510 isDoubleType:{1), "doubleValue"}];
  *&v15 = v15;
  retstr->nackGenerationMaxPLR = *&v15;
  [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-nack-generator-nack-generation-max-rtt" userDefaultKey:0 defaultValue:&unk_1F579B9B8 isDoubleType:{1), "doubleValue"}];
  *&v16 = v16;
  retstr->nackGenerationMaxRTT = *&v16;
  v17 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:{objc_msgSend(+[GKSConnectivitySettings getStorebagValueStorebagKey:defaultValue:](GKSConnectivitySettings, "getStorebagValueStorebagKey:defaultValue:", @"vc-nack-generator-nack-throttling-plr-buckets", @"0.005, 0.01, 0.025, 1.0"), "componentsSeparatedByString:", @", ")}];
  v18 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:{objc_msgSend(+[GKSConnectivitySettings getStorebagValueStorebagKey:defaultValue:](GKSConnectivitySettings, "getStorebagValueStorebagKey:defaultValue:", @"vc-nack-generator-nack-throttling-factor-buckets", @"1.0, 0.8, 0.5, 0.3"), "componentsSeparatedByString:", @", ")}];
  if (([v17 count] > 4 || objc_msgSend(v18, "count") >= 5) && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v38 = 136316162;
      v39 = v19;
      v40 = 2080;
      v41 = "[VCVideoStream readServerPacketRetransmissionsForVideoStoreBagConfig:]";
      v42 = 1024;
      v43 = 1043;
      v44 = 2048;
      *v45 = [v17 count];
      *&v45[8] = 2048;
      *&v45[10] = [v18 count];
      _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, "VCVideoStream [%s] %s:%d Unexpected size for plrBuckets(size=%lu) or factorBuckets(size=%lu) storebag", &v38, 0x30u);
    }
  }

  for (i = 0; i != 4; ++i)
  {
    [objc_msgSend(v18 objectAtIndexedSubscript:{i), "doubleValue"}];
    *&v22 = v22;
    v23 = retstr + 4 * i;
    *(v23 + 4) = LODWORD(v22);
    [objc_msgSend(v17 objectAtIndexedSubscript:{i), "doubleValue"}];
    *&v24 = v24;
    *(v23 + 8) = LODWORD(v24);
  }

  [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-nack-generator-rtt-for-rtx-fulfillment-wait-time" userDefaultKey:@"rttForRTxFulfillmentWaitTime" defaultValue:&unk_1F579E530 isDoubleType:{1), "doubleValue"}];
  v26 = v25;
  retstr->rttForRTxFulfillmentWaitTime = v26;
  [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-nack-generator-rtt-for-rtx-fulfillment-Multiplier" userDefaultKey:@"rttForRTxFulfillmentMultiplier" defaultValue:&unk_1F579B9D0 isDoubleType:{1), "doubleValue"}];
  v28 = v27;
  retstr->rttForRTxFulfillmentMultiplier = v28;
  [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-nack-generator-rtx-incomplete-frame-buffer-duration-multiplier" userDefaultKey:@"rtxIncompleteFrameBufferDurationMultiplier" defaultValue:&unk_1F579E540 isDoubleType:{1), "doubleValue"}];
  v30 = v29;
  retstr->rtxIncompleteFrameBufferDurationMultiplier = v30;
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v31 = VRTraceErrorLogLevelToCSTR();
    v32 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v33 = [v17 componentsJoinedByString:{@", "}];
      v34 = [v18 componentsJoinedByString:{@", "}];
      nackGenerationMaxPLR = retstr->nackGenerationMaxPLR;
      nackGenerationMaxRTT = retstr->nackGenerationMaxRTT;
      v38 = 136318466;
      v39 = v31;
      v40 = 2080;
      v41 = "[VCVideoStream readServerPacketRetransmissionsForVideoStoreBagConfig:]";
      v42 = 1024;
      v43 = 1054;
      v44 = 1024;
      *v45 = nackGeneratorStorebagConfigVersion;
      *&v45[4] = 2048;
      *&v45[6] = v12;
      *&v45[14] = 1024;
      *&v45[16] = v8;
      v46 = 2048;
      v47 = v14;
      v48 = 2112;
      v49 = v33;
      v50 = 2112;
      v51 = v34;
      v52 = 2048;
      v53 = nackGenerationMaxPLR;
      v54 = 2048;
      v55 = nackGenerationMaxRTT;
      v56 = 2048;
      v57 = v26;
      v58 = 2048;
      v59 = v28;
      v60 = 2048;
      v61 = v30;
      _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d Loaded storebag values for VCNackGenerator: nackGeneratorStorebagConfigVersion=%u nackSeqNumAgingDuration=%f isExtraDelayForPacketRetransmissionsEnabled=%d nackThrottlingBitRateLimitingMaxRatio=%f nackThrottlingPlrBuckets[%@] nackThrottlingFactorBuckets[%@] nackGenerationMaxPLR=%f nackGenerationMaxRTT=%f rttForRTxFulfillmentWaitTime=%.2f rttForRTxFulfillmentMultiplier=%.2f VCNackGeneratorRtxIncompleteFrameBufferDurationMultiplier=%.2f", &v38, 0x82u);
      nackGeneratorStorebagConfigVersion = retstr->nackGeneratorStorebagConfigVersion;
      LOBYTE(v8) = retstr->isExtraDelayForPacketRetransmissionsEnabled;
    }
  }

  [a4 setNackGeneratorStorebagConfigVersion:nackGeneratorStorebagConfigVersion];
  [a4 setIsExtraDelayForPacketRetransmissionsEnabled:v8];

  return result;
}

- (void)setupVideoReceiver:(id)receiver withTransmitterHandle:(tagHANDLE *)handle
{
  __dst[203] = *MEMORY[0x1E69E9840];
  v7 = [receiver direction] == 2 || objc_msgSend(receiver, "direction") == 3;
  memcpy(__dst, &unk_1DBD50670, 0x658uLL);
  if (self)
  {
    [(VCVideoStream *)self videoReceiverConfigWithVideoStreamConfig:receiver];
  }

  else
  {
    bzero(__dst, 0x658uLL);
  }

  v64 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v62 = v8;
  v63 = v8;
  v60 = v8;
  v61 = v8;
  v58 = v8;
  v59 = v8;
  v57 = v8;
  dumpIDFromCallID = [(VCVideoStream *)self dumpIDFromCallID];
  if (v7)
  {
    reportingAgent = [(VCObject *)self reportingAgent];
    if (self)
    {
LABEL_9:
      [(VCVideoStream *)self videoStreamReceiverConfigWithDumpID:dumpIDFromCallID reportingAgent:reportingAgent];
      goto LABEL_12;
    }
  }

  else
  {
    reportingAgent = 0;
    if (self)
    {
      goto LABEL_9;
    }
  }

  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v57 = 0u;
LABEL_12:
  if ([receiver type] != 4)
  {
    if ([receiver overlayToken])
    {
      overlayToken = [receiver overlayToken];
    }

    else
    {
      overlayToken = __dst[146];
    }

    __dst[187] = overlayToken;
  }

  v44[0] = [(VCVideoStream *)self videoReceiverDelegateFunctions];
  v44[1] = v12;
  type = [receiver type];
  if (type <= 7)
  {
    if (((1 << type) & 0xF6) != 0)
    {
      v14 = [VCVideoReceiverDefault alloc];
      if (v7)
      {
        reportingAgent2 = [(VCObject *)self reportingAgent];
      }

      else
      {
        reportingAgent2 = 0;
      }

      videoReceiver = [(VCVideoReceiverDefault *)v14 initWithConfig:__dst delegate:self delegateFunctions:v44 reportingAgent:reportingAgent2 statisticsCollector:self->_statisticsCollector transmitterHandle:handle sensitiveContentAnalyzer:0];
      self->_videoReceiver = videoReceiver;
      goto LABEL_23;
    }

    if (!type)
    {
      self->_videoReceiver = [[VCVideoStreamReceiver alloc] initWithConfig:&v57];
      goto LABEL_24;
    }

    if ([receiver direction] != 1 || objc_msgSend(receiver, "isRTCPEnabled"))
    {
      v27 = [VCVideoReceiverDefault alloc];
      if (v7)
      {
        reportingAgent3 = [(VCObject *)self reportingAgent];
      }

      else
      {
        reportingAgent3 = 0;
      }

      v29 = -[VCVideoReceiverDefault initWithConfig:delegate:delegateFunctions:reportingAgent:statisticsCollector:transmitterHandle:sensitiveContentAnalyzer:](v27, "initWithConfig:delegate:delegateFunctions:reportingAgent:statisticsCollector:transmitterHandle:sensitiveContentAnalyzer:", __dst, self, v44, reportingAgent3, [objc_msgSend(receiver "rateControlConfig")], handle, self->_cachedRemoteScreenAttributes);
      self->_videoReceiver = v29;
      targetStreamID = self->_targetStreamID;
      if (targetStreamID)
      {
        [(VCVideoReceiverBase *)v29 setTargetStreamID:[(NSNumber *)targetStreamID unsignedShortValue]];
      }

      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_59;
        }

        v32 = VRTraceErrorLogLevelToCSTR();
        v33 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_59;
        }

        v34 = *&self->_constantTransportOverhead;
        *buf = 136315906;
        v46 = v32;
        v47 = 2080;
        v48 = "[VCVideoStream setupVideoReceiver:withTransmitterHandle:]";
        v49 = 1024;
        v50 = 1108;
        v51 = 2048;
        v52 = v34;
        v35 = "VCVideoStream [%s] %s:%d externalOutputVideoLatency=%f";
        v36 = v33;
        v37 = 38;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v31 = [(VCVideoStream *)self performSelector:sel_logPrefix];
        }

        else
        {
          v31 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_59;
        }

        v41 = VRTraceErrorLogLevelToCSTR();
        v42 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_59;
        }

        v43 = *&self->_constantTransportOverhead;
        *buf = 136316418;
        v46 = v41;
        v47 = 2080;
        v48 = "[VCVideoStream setupVideoReceiver:withTransmitterHandle:]";
        v49 = 1024;
        v50 = 1108;
        v51 = 2112;
        v52 = v31;
        v53 = 2048;
        selfCopy2 = self;
        v55 = 2048;
        v56 = v43;
        v35 = "VCVideoStream [%s] %s:%d %@(%p) externalOutputVideoLatency=%f";
        v36 = v42;
        v37 = 58;
      }

      _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, v35, buf, v37);
LABEL_59:
      videoReceiver = self->_videoReceiver;
LABEL_23:
      VCVideoReceiver_SetExternalOutputVideoLatency(videoReceiver);
      goto LABEL_24;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v38 = VRTraceErrorLogLevelToCSTR();
      v39 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v40 = self->_targetStreamID;
        *buf = 136315906;
        v46 = v38;
        v47 = 2080;
        v48 = "[VCVideoStream setupVideoReceiver:withTransmitterHandle:]";
        v49 = 1024;
        v50 = 1111;
        v51 = 2112;
        v52 = v40;
        _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d Skipping video receiver for target stream[%@]", buf, 0x26u);
      }
    }
  }

LABEL_24:
  [(VCVideoReceiverBase *)self->_videoReceiver setVideoExpected:v7];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v20 = self->_videoReceiver;
        *buf = 136315906;
        v46 = v18;
        v47 = 2080;
        v48 = "[VCVideoStream setupVideoReceiver:withTransmitterHandle:]";
        v49 = 1024;
        v50 = 1119;
        v51 = 2048;
        v52 = v20;
        v21 = "VCVideoStream [%s] %s:%d videoReceiver=%p";
        v22 = v19;
        v23 = 38;
LABEL_34:
        _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [(VCVideoStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v17 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v26 = self->_videoReceiver;
        *buf = 136316418;
        v46 = v24;
        v47 = 2080;
        v48 = "[VCVideoStream setupVideoReceiver:withTransmitterHandle:]";
        v49 = 1024;
        v50 = 1119;
        v51 = 2112;
        v52 = v17;
        v53 = 2048;
        selfCopy2 = self;
        v55 = 2048;
        v56 = v26;
        v21 = "VCVideoStream [%s] %s:%d %@(%p) videoReceiver=%p";
        v22 = v25;
        v23 = 58;
        goto LABEL_34;
      }
    }
  }

  self->_lastMediaPriority = 0;
  self->super._isServerPacketRetransmissionEnabled = BYTE4(__dst[175]);
  [(VCVideoStream *)self cleaunpReceiverConfig:__dst];
}

- (BOOL)useUEPForVideoConfig:(int)config
{
  v3 = *&config;
  v8 = *MEMORY[0x1E69E9840];
  v4 = [VCVideoFeatureListStringHelper newLocalFeaturesStringWithType:2];
  v5 = [v4 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v3)}];
  v7 = 0;
  if (v5)
  {
    VideoUtil_ParseFeatureListString([v5 UTF8String], &v7, 0);
  }

  return v7 != 0;
}

- (void)updateVideoReceiver:(id)receiver
{
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = v5;
      v13 = 2080;
      v14 = "[VCVideoStream updateVideoReceiver:]";
      v15 = 1024;
      v16 = 1137;
      v17 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d VCVideoStream[%p]", &v11, 0x26u);
    }
  }

  -[VCVideoReceiverBase setRemoteVideoOrientation:](self->_videoReceiver, "setRemoteVideoOrientation:", [receiver remoteVideoInitialOrientation]);
  -[VCVideoReceiverBase setEnableCVO:cvoExtensionID:](self->_videoReceiver, "setEnableCVO:cvoExtensionID:", [receiver enableCVO], objc_msgSend(receiver, "cvoExtensionID"));
  videoReceiver = self->_videoReceiver;
  isRateAdaptationEnabled = [receiver isRateAdaptationEnabled];
  rxMaxBitrate = [receiver rxMaxBitrate];
  rxMinBitrate = [receiver rxMinBitrate];
  [receiver rtcpSendInterval];
  [(VCVideoReceiverBase *)videoReceiver setEnableRateAdaptation:isRateAdaptationEnabled maxBitrate:rxMaxBitrate minBitrate:rxMinBitrate adaptationInterval:?];
}

- (void)destroyVideoReceiver
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315906;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCVideoStream destroyVideoReceiver]";
      v9 = 1024;
      v10 = 1147;
      v11 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d VCVideoStream[%p]", &v5, 0x26u);
    }
  }

  [(VCVideoReceiverBase *)self->_videoReceiver stopVideo];
  [(VCVideoReceiverBase *)self->_videoReceiver setDelegate:0];

  self->_videoReceiver = 0;
}

- (void)destroyVideoModules
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315906;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCVideoStream destroyVideoModules]";
      v9 = 1024;
      v10 = 1155;
      v11 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d VCVideoStream[%p]", &v5, 0x26u);
    }
  }

  [(VCVideoStream *)self destroyVideoTransmitter];
  [(VCVideoStream *)self destroyVideoReceiver];
}

- (void)setupCompoundStreamIDsWithStreamIDs:(id)ds
{
  v44 = *MEMORY[0x1E69E9840];
  compoundStreamIDs = [(VCMediaStream *)self compoundStreamIDs];
  if (compoundStreamIDs)
  {
    v6 = compoundStreamIDs;
    v7 = [MEMORY[0x1E695DFA8] setWithArray:ds];
    [v7 minusSet:{objc_msgSend(MEMORY[0x1E695DFA8], "setWithArray:", v6)}];
    self->_isCompoundStreamIDsIncreased = [v7 count] != 0;
  }

  [(VCMediaStream *)self setCompoundStreamIDs:ds];

  self->_sendingStreamID = [objc_msgSend(ds objectAtIndexedSubscript:{0), "copy"}];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      __str = 0;
      v9 = [(VCMediaStream *)self compoundStreamIDs]? [(NSString *)[(NSArray *)[(VCMediaStream *)self compoundStreamIDs] description] UTF8String]: "<nil>";
      asprintf(&__str, "%s", v9);
      if (__str)
      {
        __lasts = 0;
        v16 = strtok_r(__str, "\n", &__lasts);
        v17 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v18 = VRTraceErrorLogLevelToCSTR();
            v19 = *v17;
            if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v33 = v18;
              v34 = 2080;
              v35 = "[VCVideoStream setupCompoundStreamIDsWithStreamIDs:]";
              v36 = 1024;
              v37 = 1176;
              v38 = 2080;
              v39 = "compoundStreamIDs=";
              v40 = 2080;
              selfCopy = v16;
              _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v16 = strtok_r(0, "\n", &__lasts);
        }

        while (v16);
        goto LABEL_28;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCVideoStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      __str = 0;
      uTF8String = [(__CFString *)v8 UTF8String];
      v11 = [(VCMediaStream *)self compoundStreamIDs]? [(NSString *)[(NSArray *)[(VCMediaStream *)self compoundStreamIDs] description] UTF8String]: "<nil>";
      asprintf(&__str, "%s(%p) %s", uTF8String, self, v11);
      if (__str)
      {
        __lasts = 0;
        v12 = strtok_r(__str, "\n", &__lasts);
        v13 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v14 = VRTraceErrorLogLevelToCSTR();
            v15 = *v13;
            if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v33 = v14;
              v34 = 2080;
              v35 = "[VCVideoStream setupCompoundStreamIDsWithStreamIDs:]";
              v36 = 1024;
              v37 = 1176;
              v38 = 2080;
              v39 = "compoundStreamIDs=";
              v40 = 2080;
              selfCopy = v12;
              _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v12 = strtok_r(0, "\n", &__lasts);
        }

        while (v12);
LABEL_28:
        free(__str);
      }
    }
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        sendingStreamID = self->_sendingStreamID;
        *buf = 136315906;
        v33 = v21;
        v34 = 2080;
        v35 = "[VCVideoStream setupCompoundStreamIDsWithStreamIDs:]";
        v36 = 1024;
        v37 = 1177;
        v38 = 2112;
        v39 = sendingStreamID;
        v24 = "VCVideoStream [%s] %s:%d sendingStreamID=%@";
        v25 = v22;
        v26 = 38;
LABEL_39:
        _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v20 = [(VCVideoStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v20 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v29 = self->_sendingStreamID;
        *buf = 136316418;
        v33 = v27;
        v34 = 2080;
        v35 = "[VCVideoStream setupCompoundStreamIDsWithStreamIDs:]";
        v36 = 1024;
        v37 = 1177;
        v38 = 2112;
        v39 = v20;
        v40 = 2048;
        selfCopy = self;
        v42 = 2112;
        v43 = v29;
        v24 = "VCVideoStream [%s] %s:%d %@(%p) sendingStreamID=%@";
        v25 = v28;
        v26 = 58;
        goto LABEL_39;
      }
    }
  }
}

- (unsigned)dumpIDFromCallID
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (!self->super._callID)
  {
    return 0;
  }

  v6[0] = 0;
  v3 = [objc_msgSend(MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^\\d{1 options:10}$" error:{0, v6), "numberOfMatchesInString:options:range:", self->super._callID, 0, 0, -[NSString length](self->super._callID, "length")}];
  callID = self->super._callID;
  if (v3 == 1)
  {
    return [(NSString *)callID integerValue];
  }

  else
  {
    return [(NSString *)callID hash];
  }
}

- (void)enableRedundancyController:(id)controller
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_redundancyController)
  {
    [VCVideoStream enableRedundancyController:];
  }

  else if ([controller type] == 5 && objc_msgSend(controller, "fecEnabled"))
  {
    statisticsCollector = self->_statisticsCollector;
    [controller setRedundancyControllerMode:5];
    v6 = -[VCRedundancyControllerVideo initWithDelegate:mode:parameters:]([VCRedundancyControllerVideo alloc], "initWithDelegate:mode:parameters:", self, [controller redundancyControllerMode], statisticsCollector, 0xAA00000000000064);
    self->_redundancyController = v6;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v6)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          redundancyController = self->_redundancyController;
          v11 = 136315906;
          v12 = v8;
          v13 = 2080;
          v14 = "[VCVideoStream enableRedundancyController:]";
          v15 = 1024;
          v16 = 1204;
          v17 = 2112;
          v18 = redundancyController;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d Set up and using internal redundancy controller=%@", &v11, 0x26u);
        }
      }

      if ([(VCRedundancyControllerVideo *)self->_redundancyController statisticsCollector])
      {
        [objc_msgSend(controller "rateControlConfig")];
      }
    }

    else
    {
      [VCVideoStream enableRedundancyController:?];
    }
  }
}

- (void)startRateAdaptationWithStreamConfig:(id)config
{
  v55 = *MEMORY[0x1E69E9840];
  [config setTxInitialBitrate:self->_initialTargetBitrate];
  v5 = [config direction] == 2 || objc_msgSend(config, "direction") == 3;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  callID = self->super._callID;
  rtpHandle = [(VCMediaStreamTransport *)[(VCMediaStream *)self defaultTransport] rtpHandle];
  connection = self->super._connection;
  *(&v36 + 1) = rtpHandle;
  *&v38 = connection;
  type = self->_type;
  if (type <= 7)
  {
    if (((1 << type) & 0xF6) != 0)
    {
      rxMaxBitrate = [config rxMaxBitrate];
      rxMinBitrate = [config rxMinBitrate];
      txInitialBitrate = [config txInitialBitrate];
      accessNetworkType = [config accessNetworkType];
      foveationEnabled = [config foveationEnabled];
      BYTE8(v38) = +[VideoUtil isBufferDescriptionForMultiImageStream:](VideoUtil, "isBufferDescriptionForMultiImageStream:", [config videoBufferDescription]);
      LODWORD(v34) = 3;
      BYTE4(v37) = 1;
      *(&v37 + 1) = self;
      *(&v34 + 1) = 2;
      *&v35 = __PAIR64__(rxMinBitrate, rxMaxBitrate);
      *(&v35 + 1) = __PAIR64__(accessNetworkType, txInitialBitrate);
      LOBYTE(v36) = foveationEnabled;
      *(&v36 + 1) = -1431655766;
      DWORD1(v36) = -1431655766;
      *(&v33 + 1) = [(VCObject *)self reportingAgent];
      v14 = off_1E85F1FC0;
LABEL_7:

      self->super._rateAdaptation = [objc_alloc(*v14) initWithMediaStreamRateAdaptationParam:&callID];
      goto LABEL_8;
    }

    if (!type)
    {
      LODWORD(v34) = 2;
      if (v5)
      {
        reportingAgent = [(VCObject *)self reportingAgent];
      }

      else
      {
        reportingAgent = 0;
      }

      *(&v33 + 1) = reportingAgent;
      LODWORD(v37) = self->_reportingModuleID;
      LODWORD(v33) = [(VCVideoStream *)self dumpIDFromCallID];
      v14 = off_1E85F1FB8;
      goto LABEL_7;
    }
  }

LABEL_8:
  if ([VCVideoStream shouldEnableRateControlForStreamType:self->_type])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_23;
      }

      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v19 = self->_type;
      txMaxBitrate = [config txMaxBitrate];
      txMinBitrate = [config txMinBitrate];
      txInitialBitrate2 = [config txInitialBitrate];
      *buf = 136316674;
      v40 = v17;
      v41 = 2080;
      v42 = "[VCVideoStream startRateAdaptationWithStreamConfig:]";
      v43 = 1024;
      v44 = 1259;
      v45 = 1024;
      *v46 = v19;
      *&v46[4] = 1024;
      *&v46[6] = txMaxBitrate;
      LOWORD(selfCopy) = 1024;
      *(&selfCopy + 2) = txMinBitrate;
      HIWORD(selfCopy) = 1024;
      *v48 = txInitialBitrate2;
      v23 = "VCVideoStream [%s] %s:%d Start VCRC in VideoStream with type=%d and maxBitrate=%d, minBitrate=%d, initialBitrate=%d";
      v24 = v18;
      v25 = 52;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = [(VCVideoStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v15 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_23;
      }

      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v28 = self->_type;
      txMaxBitrate2 = [config txMaxBitrate];
      txMinBitrate2 = [config txMinBitrate];
      txInitialBitrate3 = [config txInitialBitrate];
      *buf = 136317186;
      v40 = v26;
      v41 = 2080;
      v42 = "[VCVideoStream startRateAdaptationWithStreamConfig:]";
      v43 = 1024;
      v44 = 1259;
      v45 = 2112;
      *v46 = v15;
      *&v46[8] = 2048;
      selfCopy = self;
      *v48 = 1024;
      *&v48[2] = v28;
      v49 = 1024;
      v50 = txMaxBitrate2;
      v51 = 1024;
      v52 = txMinBitrate2;
      v53 = 1024;
      v54 = txInitialBitrate3;
      v23 = "VCVideoStream [%s] %s:%d %@(%p) Start VCRC in VideoStream with type=%d and maxBitrate=%d, minBitrate=%d, initialBitrate=%d";
      v24 = v27;
      v25 = 72;
    }

    _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
LABEL_23:
    [(VCMediaStreamRateAdaptation *)self->super._rateAdaptation manageRemoteEndpointForEndpointsWithSSRC:[(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] remoteSSRCs] actionType:0];
    [(VCMediaStreamRateAdaptation *)self->super._rateAdaptation start];

    self->_statisticsCollector = [(AVCRateController *)[(VCMediaStreamRateAdaptation *)self->super._rateAdaptation vcrcRateController] statisticsCollector];
  }

  [(VCVideoStream *)self enableRedundancyController:config];
}

- (void)stopRateAdaptation
{
  if ([VCVideoStream shouldEnableRateControlForStreamType:self->_type])
  {
    [(VCMediaStreamRateAdaptation *)self->super._rateAdaptation manageRemoteEndpointForEndpointsWithSSRC:[(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] remoteSSRCs] actionType:1];
    [(VCMediaStreamRateAdaptation *)self->super._rateAdaptation stop];

    self->_statisticsCollector = 0;
  }

  self->super._rateAdaptation = 0;
}

- (tagVCVideoReceiverDelegateRealtimeInstanceVTable)videoReceiverDelegateFunctions
{
  v2 = VCVideoStream_DidReceiveSampleBuffer;
  v3 = _VCVideoStream_DidReceiveRemoteFrame;
  result.didReceiveRemoteFrame = v3;
  result.didReceiveSampleBuffer = v2;
  return result;
}

- (void)handleNWConnectionNotification:(tagVCNWConnectionNotification *)notification
{
  nwConnectionCongestionDetector = [(AVCRateController *)[(VCMediaStreamRateAdaptation *)self->super._rateAdaptation vcrcRateController] nwConnectionCongestionDetector];

  [(VCNWConnectionCongestionDetector *)nwConnectionCongestionDetector processNWConnectionNotification:notification];
}

- (void)handleTransportSessionConnectionEvent
{
  if ([(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] type]== 7)
  {
    defaultStreamConfig = [(VCMediaStream *)self defaultStreamConfig];
    networkMTU = [(VCVideoStream *)self networkMTU];
    if (networkMTU >= 0x5AA)
    {
      v5 = 1450;
    }

    else
    {
      v5 = networkMTU;
    }

    [(VCMediaStreamConfig *)defaultStreamConfig setRecommendedMTU:v5];
    videoTransmitter = self->_videoTransmitter;
    isTransportIPv6 = [(VCVideoStream *)self isTransportIPv6];

    [(VCVideoTransmitterBase *)videoTransmitter updateNetworkMTU:v5 isIPv6:isTransportIPv6];
  }
}

- (void)handleNWConnectionPacketEvent:(packet_id *)event eventType:(int)type
{
  v4 = *&type;
  nwConnectionCongestionDetector = [(AVCRateController *)[(VCMediaStreamRateAdaptation *)self->super._rateAdaptation vcrcRateController] nwConnectionCongestionDetector];

  [(VCNWConnectionCongestionDetector *)nwConnectionCongestionDetector processNWConnectionPacketEvent:event eventType:v4];
}

+ (BOOL)shouldUseRandomRTPTimestampWithType:(int64_t)type
{
  if (!type)
  {
    return 1;
  }

  if (type == 3)
  {
    return VCDefaults_GetBoolValueForKey(@"simulateWebRTCOnlyClient", 0);
  }

  return 0;
}

- (void)setupColorInfo:(id)info
{
  v46 = *MEMORY[0x1E69E9840];
  if ([info pixelFormat] == 2019963956)
  {
    if (!+[VCDefaults BOOLeanValueForKey:defaultValue:](VCDefaults, "BOOLeanValueForKey:defaultValue:", @"forceHDR10ColorInfo", 0) && ([info type] != 2 || objc_msgSend(info, "hdrMode") != 1))
    {
      v5 = *MEMORY[0x1E6965DD0];
      v6 = *MEMORY[0x1E6965F70];
      v7 = *MEMORY[0x1E6965FD0];
      if (objc_opt_class() != self)
      {
        if (objc_opt_respondsToSelector())
        {
          v10 = [(VCVideoStream *)self performSelector:sel_logPrefix];
        }

        else
        {
          v10 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_51;
        }

        v23 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_51;
        }

        v36 = 136316162;
        v37 = v23;
        v38 = 2080;
        v39 = "[VCVideoStream setupColorInfo:]";
        v40 = 1024;
        v41 = 1347;
        v42 = 2112;
        v43 = v10;
        v44 = 2048;
        selfCopy6 = self;
        v13 = "VCVideoStream [%s] %s:%d %@(%p) P3D65-PQ color settings used to configure capture and encoder";
        goto LABEL_49;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_51;
      }

      v19 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_51;
      }

      v36 = 136315650;
      v37 = v19;
      v38 = 2080;
      v39 = "[VCVideoStream setupColorInfo:]";
      v40 = 1024;
      v41 = 1347;
      v13 = "VCVideoStream [%s] %s:%d P3D65-PQ color settings used to configure capture and encoder";
LABEL_41:
      v20 = v12;
      v21 = 28;
LABEL_50:
      _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v13, &v36, v21);
LABEL_51:
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 3, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
      self->_videoStreamDelegateFunctions.remoteScreenAttributesDidChange = Mutable;
      if (Mutable)
      {
        CFDictionaryAddValue(Mutable, *MEMORY[0x1E6965D88], v5);
        CFDictionaryAddValue(self->_videoStreamDelegateFunctions.remoteScreenAttributesDidChange, *MEMORY[0x1E6965F30], v6);
        CFDictionaryAddValue(self->_videoStreamDelegateFunctions.remoteScreenAttributesDidChange, *MEMORY[0x1E6965F98], v7);
      }

      else
      {
        [VCVideoStream setupColorInfo:];
      }

      return;
    }

    v5 = *MEMORY[0x1E6965DB0];
    v6 = *MEMORY[0x1E6965F70];
    v7 = *MEMORY[0x1E6965FB0];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_51;
      }

      v17 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_51;
      }

      v36 = 136315650;
      v37 = v17;
      v38 = 2080;
      v39 = "[VCVideoStream setupColorInfo:]";
      v40 = 1024;
      v41 = 1342;
      v13 = "VCVideoStream [%s] %s:%d ITU_R_2020 color settings used to configure capture and encoder (except when in Airplay)";
      goto LABEL_41;
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCVideoStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_51;
    }

    v18 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_51;
    }

    v36 = 136316162;
    v37 = v18;
    v38 = 2080;
    v39 = "[VCVideoStream setupColorInfo:]";
    v40 = 1024;
    v41 = 1342;
    v42 = 2112;
    v43 = v8;
    v44 = 2048;
    selfCopy6 = self;
    v13 = "VCVideoStream [%s] %s:%d %@(%p) ITU_R_2020 color settings used to configure capture and encoder (except when in Airplay)";
    goto LABEL_49;
  }

  if ([info type] == 1 || objc_msgSend(info, "type") == 6 || objc_msgSend(info, "type") == 5 && !+[VCHardwareSettings deviceClass](VCHardwareSettings, "deviceClass"))
  {
    v5 = *MEMORY[0x1E6965DD0];
    v6 = *MEMORY[0x1E6965F88];
    v7 = *MEMORY[0x1E6965FD0];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_51;
      }

      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_51;
      }

      v36 = 136315650;
      v37 = v11;
      v38 = 2080;
      v39 = "[VCVideoStream setupColorInfo:]";
      v40 = 1024;
      v41 = 1354;
      v13 = "VCVideoStream [%s] %s:%d P3D65-sRGB color settings used to configure capture and encoder";
      goto LABEL_41;
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = [(VCVideoStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_51;
    }

    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_51;
    }

    v36 = 136316162;
    v37 = v15;
    v38 = 2080;
    v39 = "[VCVideoStream setupColorInfo:]";
    v40 = 1024;
    v41 = 1354;
    v42 = 2112;
    v43 = v9;
    v44 = 2048;
    selfCopy6 = self;
    v13 = "VCVideoStream [%s] %s:%d %@(%p) P3D65-sRGB color settings used to configure capture and encoder";
    goto LABEL_49;
  }

  if (([info type] == 4 || objc_msgSend(info, "type") == 7) && objc_msgSend(info, "hdrMode") == 1)
  {
    v5 = *MEMORY[0x1E6965DB0];
    v6 = *MEMORY[0x1E6965F48];
    v7 = *MEMORY[0x1E6965FB0];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_51;
      }

      v34 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_51;
      }

      v36 = 136315650;
      v37 = v34;
      v38 = 2080;
      v39 = "[VCVideoStream setupColorInfo:]";
      v40 = 1024;
      v41 = 1363;
      v13 = "VCVideoStream [%s] %s:%d ITU_R_2100_HLG color settings used to configure encoder";
      goto LABEL_41;
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCVideoStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v14 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_51;
    }

    v35 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_51;
    }

    v36 = 136316162;
    v37 = v35;
    v38 = 2080;
    v39 = "[VCVideoStream setupColorInfo:]";
    v40 = 1024;
    v41 = 1363;
    v42 = 2112;
    v43 = v14;
    v44 = 2048;
    selfCopy6 = self;
    v13 = "VCVideoStream [%s] %s:%d %@(%p) ITU_R_2100_HLG color settings used to configure encoder";
LABEL_49:
    v20 = v16;
    v21 = 48;
    goto LABEL_50;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return;
    }

    v25 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x1E6986650];
    v27 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v36 = 136315650;
      v37 = v25;
      v38 = 2080;
      v39 = "[VCVideoStream setupColorInfo:]";
      v40 = 1024;
      v41 = 1365;
      v28 = "VCVideoStream [%s] %s:%d No color settings applied";
      v29 = v26;
      v30 = 28;
      goto LABEL_63;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [VCVideoStream setupColorInfo:];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v22 = [(VCVideoStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v22 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      v33 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v36 = 136316162;
        v37 = v31;
        v38 = 2080;
        v39 = "[VCVideoStream setupColorInfo:]";
        v40 = 1024;
        v41 = 1365;
        v42 = 2112;
        v43 = v22;
        v44 = 2048;
        selfCopy6 = self;
        v28 = "VCVideoStream [%s] %s:%d %@(%p) No color settings applied";
        v29 = v32;
        v30 = 48;
LABEL_63:
        _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, v28, &v36, v30);
        return;
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v36 = 136316162;
        v37 = v31;
        v38 = 2080;
        v39 = "[VCVideoStream setupColorInfo:]";
        v40 = 1024;
        v41 = 1365;
        v42 = 2112;
        v43 = v22;
        v44 = 2048;
        selfCopy6 = self;
        _os_log_debug_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEBUG, "VCVideoStream [%s] %s:%d %@(%p) No color settings applied", &v36, 0x30u);
      }
    }
  }
}

- (void)setupVideoTransmitterConfigColorInfo:(id)info
{
  v13[3] = *MEMORY[0x1E69E9840];
  remoteScreenAttributesDidChange = self->_videoStreamDelegateFunctions.remoteScreenAttributesDidChange;
  if (remoteScreenAttributesDidChange)
  {
    Value = CFDictionaryGetValue(remoteScreenAttributesDidChange, *MEMORY[0x1E6965D88]);
    v7 = CFDictionaryGetValue(self->_videoStreamDelegateFunctions.remoteScreenAttributesDidChange, *MEMORY[0x1E6965F30]);
    v8 = CFDictionaryGetValue(self->_videoStreamDelegateFunctions.remoteScreenAttributesDidChange, *MEMORY[0x1E6965F98]);
    if (Value)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9 && v8 != 0)
    {
      v11 = *MEMORY[0x1E6983878];
      v12[0] = *MEMORY[0x1E69835B0];
      v12[1] = v11;
      v13[0] = Value;
      v13[1] = v7;
      v12[2] = *MEMORY[0x1E69838B8];
      v13[2] = v8;
      [info setColorInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v13, v12, 3)}];
    }
  }
}

- (void)updateShouldCacheRemoteVideoFrame
{
  type = self->_type;
  if (type <= 7)
  {
    self->_shouldCacheRemoteVideoFrame = 1uLL >> (8 * type);
  }
}

- (id)setLocalParticipantInfo:(id)info networkSockets:(id)sockets withError:(id *)error
{
  v7 = *MEMORY[0x1E69E9840];
  if (!sockets && self->super._operatingMode == 5)
  {
    self->super._connectionType = 1;
  }

  v6.receiver = self;
  v6.super_class = VCVideoStream;
  return [VCMediaStream setLocalParticipantInfo:sel_setLocalParticipantInfo_networkSockets_withError_ networkSockets:info withError:?];
}

- (BOOL)setRTPPayloads:(int *)payloads numPayloads:(int)numPayloads withError:(id *)error
{
  numPayloadsCopy = numPayloads;
  v8 = malloc_type_calloc(numPayloads, 4uLL, 0x100004052888210uLL);
  v9 = malloc_type_calloc(numPayloadsCopy, 4uLL, 0x100004052888210uLL);
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v12 && numPayloads >= 1)
  {
    numPayloadsCopy2 = numPayloads;
    v15 = v9;
    do
    {
      v16 = *payloads++;
      *v15++ = v16;
      --numPayloadsCopy2;
    }

    while (numPayloadsCopy2);
  }

  if (v8)
  {
    free(v8);
  }

  if (v10)
  {
    free(v10);
  }

  return v12;
}

- (id)newSensitiveContentAnalyzerForParticipant:(id)participant
{
  v34 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v5 = [objc_alloc(MEMORY[0x1E697B680]) initWithParticipantUUID:participant options:2 error:&v21];
  if (v5)
  {
    v6 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __59__VCVideoStream_newSensitiveContentAnalyzerForParticipant___block_invoke;
    v20[3] = &unk_1E85F8DB8;
    v20[4] = v6;
    [v5 setAnalysisChangedHandler:v20];
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCVideoStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v23 = v12;
          v24 = 2080;
          v25 = "[VCVideoStream newSensitiveContentAnalyzerForParticipant:]";
          v26 = 1024;
          v27 = 1490;
          v28 = 2112;
          participantCopy2 = v7;
          v30 = 2048;
          selfCopy2 = self;
          v32 = 2112;
          participantCopy = participant;
          v11 = "VCVideoStream [%s] %s:%d %@(%p) SCVideoStreamAnalyzer created for participant=%@";
          v14 = v13;
LABEL_23:
          v16 = 58;
          goto LABEL_24;
        }
      }

      return v5;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return v5;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return v5;
    }

    *buf = 136315906;
    v23 = v9;
    v24 = 2080;
    v25 = "[VCVideoStream newSensitiveContentAnalyzerForParticipant:]";
    v26 = 1024;
    v27 = 1490;
    v28 = 2112;
    participantCopy2 = participant;
    v11 = "VCVideoStream [%s] %s:%d SCVideoStreamAnalyzer created for participant=%@";
LABEL_18:
    v14 = v10;
    v16 = 38;
LABEL_24:
    _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v11, buf, v16);
    return v5;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return v5;
    }

    v15 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return v5;
    }

    *buf = 136315906;
    v23 = v15;
    v24 = 2080;
    v25 = "[VCVideoStream newSensitiveContentAnalyzerForParticipant:]";
    v26 = 1024;
    v27 = 1492;
    v28 = 2112;
    participantCopy2 = v21;
    v11 = "VCVideoStream [%s] %s:%d SCVideoStreamAnalyzer is not enabled=%@";
    goto LABEL_18;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [(VCVideoStream *)self performSelector:sel_logPrefix];
  }

  else
  {
    v8 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v23 = v17;
      v24 = 2080;
      v25 = "[VCVideoStream newSensitiveContentAnalyzerForParticipant:]";
      v26 = 1024;
      v27 = 1492;
      v28 = 2112;
      participantCopy2 = v8;
      v30 = 2048;
      selfCopy2 = self;
      v32 = 2112;
      participantCopy = v21;
      v11 = "VCVideoStream [%s] %s:%d %@(%p) SCVideoStreamAnalyzer is not enabled=%@";
      v14 = v18;
      goto LABEL_23;
    }
  }

  return v5;
}

void __59__VCVideoStream_newSensitiveContentAnalyzerForParticipant___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    __59__VCVideoStream_newSensitiveContentAnalyzerForParticipant___block_invoke_cold_1(a3);
  }

  else if (a2)
  {
    v4 = [*(a1 + 32) strong];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v4)
    {
      if (ErrorLogLevelForModule >= 8)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        v8 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v10 = 136316163;
            v11 = v6;
            v12 = 2080;
            v13 = "[VCVideoStream newSensitiveContentAnalyzerForParticipant:]_block_invoke";
            v14 = 1024;
            v15 = 1485;
            v16 = 2081;
            v17 = "Sensitive content analysis changed for";
            v18 = 2048;
            v19 = v4;
            _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d %{private}s VCVideoStream=%p", &v10, 0x30u);
          }
        }

        else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          __59__VCVideoStream_newSensitiveContentAnalyzerForParticipant___block_invoke_cold_2();
        }
      }

      v9 = VCRemoteVideoManager_DefaultManager();
      VCRemoteVideoManager_DidDetectSensitiveContentWithAnalysis(v9, *(v4 + 624), [a2 dataRepresentation]);
    }

    else
    {
      __59__VCVideoStream_newSensitiveContentAnalyzerForParticipant___block_invoke_cold_3(ErrorLogLevelForModule);
    }
  }

  else
  {
    __59__VCVideoStream_newSensitiveContentAnalyzerForParticipant___block_invoke_cold_4();
  }
}

- (void)endSensitiveContentAnalyzerInterruption
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_cachedRemoteScreenAttributes)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315906;
        v6 = v3;
        v7 = 2080;
        v8 = "[VCVideoStream endSensitiveContentAnalyzerInterruption]";
        v9 = 1024;
        v10 = 1502;
        v11 = 2048;
        selfCopy = self;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d VCVideoStream[%p] requests SCVideoStreamAnalyzer continue stream", &v5, 0x26u);
      }
    }

    [(VideoAttributes *)self->_cachedRemoteScreenAttributes continueStream];
  }
}

- (VCVideoStream)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCVideoStream;
  v2 = [(VCMediaStream *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_constantTransportOverhead = 0x7FF8000000000000;
    [(VCVideoStream *)v2 setupVideoStream];
    v3->_externalOutputVideoLatency = micro();
  }

  return v3;
}

- (VCVideoStream)initWithTransportSessionID:(unsigned int)d idsParticipantID:(unint64_t)iD ssrc:(unsigned int)ssrc streamToken:(int64_t)token logPrefix:(id)prefix
{
  v39 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = VCVideoStream;
  v8 = [(VCMediaStream *)&v20 initWithTransportSessionID:*&d localSSRC:*&ssrc streamToken:token logPrefix:prefix];
  v9 = v8;
  if (v8)
  {
    *&v8->_constantTransportOverhead = 0x7FF8000000000000;
    v8->_captureConverter = [[VCVideoCaptureConverter alloc] initWithConvertedFrameHandler:VCVideoStream_ProcessConvertedFrame context:v8];
    [(VCVideoStream *)v9 setupVideoStream];
    v9->_externalOutputVideoLatency = micro();
    if (+[VCVideoStream sensitiveContentAnalysisEnabled])
    {
      v10 = [(VCVideoStream *)v9 newSensitiveContentAnalyzerForParticipant:[(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)[(VCMediaStream *)v9 defaultStreamConfig] multiwayConfig] participantId]];
      v9->_cachedRemoteScreenAttributes = v10;
      if (v10)
      {
        [(VCObject *)v9 reportingAgent];
        reportingGenericEvent();
      }

      if (VRTraceGetErrorLogLevelForModule() > 6)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v22 = v11;
          v23 = 2080;
          v24 = "[VCVideoStream initWithTransportSessionID:idsParticipantID:ssrc:streamToken:logPrefix:]";
          v25 = 1024;
          v26 = 1545;
          v27 = 2048;
          v28 = v9;
          v29 = 2080;
          v30 = "sensitive content analysis enabled";
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d VCVideoStream[%p] %s", buf, 0x30u);
        }
      }
    }

    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCVideoStream-initialized");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        logPrefix = [(VCObject *)v9 logPrefix];
        remoteQueue = v9->_remoteQueue;
        streamToken = v9->super._streamToken;
        transportSessionID = v9->super._transportSessionID;
        *buf = 136317186;
        v22 = v13;
        v23 = 2080;
        v24 = "[VCVideoStream initWithTransportSessionID:idsParticipantID:ssrc:streamToken:logPrefix:]";
        v25 = 1024;
        v26 = 1550;
        v27 = 2048;
        v28 = v9;
        v29 = 2112;
        v30 = logPrefix;
        v31 = 2048;
        v32 = remoteQueue;
        v33 = 2048;
        iDCopy = iD;
        v35 = 1024;
        v36 = streamToken;
        v37 = 1024;
        v38 = transportSessionID;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d @:@ VCVideoStream-initialized VCVideoStream[%p] init %@ queue=%p for idsParticipantID=%llu streamToken=%u transportSessionID=%d", buf, 0x50u);
      }
    }
  }

  return v9;
}

- (void)setupVideoStream
{
  v20 = *MEMORY[0x1E69E9840];
  self->_isVideoCaptureRegistered = 0;
  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
  self->_lastDecodedFrameQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCVideoStream.lastDecodedFrameQueue", 0, CustomRootQueue);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      streamToken = self->super._streamToken;
      transportSessionID = self->super._transportSessionID;
      v8 = 136316418;
      v9 = v4;
      v10 = 2080;
      v11 = "[VCVideoStream setupVideoStream]";
      v12 = 1024;
      v13 = 1566;
      v14 = 2048;
      selfCopy = self;
      v16 = 1024;
      v17 = streamToken;
      v18 = 1024;
      v19 = transportSessionID;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d VCVideoStream[%p] remoteVideo create queue for streamToken=%u transportSessionID=%d", &v8, 0x32u);
    }
  }

  self->_remoteQueue = [VCRemoteVideoManager_DefaultManager() newQueueForStreamToken:self->super._streamToken videoMode:0 imageQueueProtected:1];
  self->_lastMediaPriority = 0;
  [(VCObject *)self setReportingAgent:0];
  self->super._notificationHandler = _VCVideoStreamNWConnectionNotificationCallback;
  self->super._packetEventHandler = _VCVideoStreamNWConnectionPacketEventCallback;
  [(VCVideoStream *)self configureMediaStallSettingsWithConfig:0];
  FigCFWeakReferenceStore();
  VTP_SetCallback(_VCVideoStreamVTPNotificationCallback, self->_weakStream);
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      streamToken = self->super._streamToken;
      *buf = 136316162;
      v12 = v3;
      v13 = 2080;
      v14 = "[VCVideoStream dealloc]";
      v15 = 1024;
      v16 = 1580;
      v17 = 2048;
      selfCopy = self;
      v19 = 1024;
      v20 = streamToken;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d VCVideoStream[%p] remoteVideo release queue for streamToken=%u", buf, 0x2Cu);
    }
  }

  [VCRemoteVideoManager_DefaultManager() releaseQueueForStreamToken:self->super._streamToken];
  if (self->_captureSourceID && [(VCMediaStream *)self defaultStreamConfig])
  {
    v6 = [(VCVideoStream *)self newScreenCaptureConfigForVideoConfig:[(VCMediaStream *)self defaultStreamConfig]];
    [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  }

  [(VCVideoStream *)self deregisterCurrentStreamInputCaptureSource];

  _VCVideoStream_ReportingVideoStreamEventWithVideoAttributesAndStreamID(self, 5, 0, 0);
  lastDecodedFrameQueue = self->_lastDecodedFrameQueue;
  if (lastDecodedFrameQueue)
  {
    dispatch_release(lastDecodedFrameQueue);
  }

  CVPixelBufferRelease(self->_cachedRemoteVideoFrame);

  remoteScreenAttributesDidChange = self->_videoStreamDelegateFunctions.remoteScreenAttributesDidChange;
  if (remoteScreenAttributesDidChange)
  {
    CFRelease(remoteScreenAttributesDidChange);
  }

  [(VCObject *)self reportingAgent];
  reportingCacheModuleSpecificInfo();
  operatingMode = self->super._operatingMode;
  if (operatingMode != 1 && operatingMode != 6)
  {
    [(VCMediaStream *)self deregisterAggregationHandlers];
  }

  if (LOBYTE(self->_sensitiveContentAnalyzer) == 1)
  {
    [VCPowerManager_DefaultManager() unregisterForThermalEvents:self];
  }

  VTP_SetCallback(0, 0);
  FigCFWeakReferenceStore();
  v10.receiver = self;
  v10.super_class = VCVideoStream;
  [(VCMediaStream *)&v10 dealloc];
}

- (BOOL)removeRemoteEndpoint:(id)endpoint error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = VCVideoStream;
  [(VCMediaStream *)&v18 removeRemoteEndpoint:endpoint error:error];
  remoteSSRCs = [(VCMediaStreamConfig *)[(VCMediaStreamTransport *)[(VCMediaStream *)self defaultTransport] streamConfig] remoteSSRCs];
  -[NSMutableArray removeObject:](remoteSSRCs, "removeObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(endpoint, "rtpSSRC")}]);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        rtpSSRC = [endpoint rtpSSRC];
        *buf = 136315906;
        v20 = v8;
        v21 = 2080;
        v22 = "[VCVideoStream removeRemoteEndpoint:error:]";
        v23 = 1024;
        v24 = 1638;
        v25 = 1024;
        LODWORD(v26) = rtpSSRC;
        v11 = "VCVideoStream [%s] %s:%d Removing endpoint's remoteSSRC=%u from remote SSRC array";
        v12 = v9;
        v13 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCVideoStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        rtpSSRC2 = [endpoint rtpSSRC];
        *buf = 136316418;
        v20 = v14;
        v21 = 2080;
        v22 = "[VCVideoStream removeRemoteEndpoint:error:]";
        v23 = 1024;
        v24 = 1638;
        v25 = 2112;
        v26 = v7;
        v27 = 2048;
        selfCopy = self;
        v29 = 1024;
        v30 = rtpSSRC2;
        v11 = "VCVideoStream [%s] %s:%d %@(%p) Removing endpoint's remoteSSRC=%u from remote SSRC array";
        v12 = v15;
        v13 = 54;
        goto LABEL_11;
      }
    }
  }

  [(VCVideoStream *)self updateVideoTransmitterStreamConfiguration];
  return 1;
}

- (BOOL)addRemoteEndpoint:(id)endpoint error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = VCVideoStream;
  [(VCMediaStream *)&v18 addRemoteEndpoint:endpoint error:error];
  remoteSSRCs = [(VCMediaStreamConfig *)[(VCMediaStreamTransport *)[(VCMediaStream *)self defaultTransport] streamConfig] remoteSSRCs];
  -[NSMutableArray addObject:](remoteSSRCs, "addObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(endpoint, "rtpSSRC")}]);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        rtpSSRC = [endpoint rtpSSRC];
        *buf = 136315906;
        v20 = v8;
        v21 = 2080;
        v22 = "[VCVideoStream addRemoteEndpoint:error:]";
        v23 = 1024;
        v24 = 1652;
        v25 = 1024;
        LODWORD(v26) = rtpSSRC;
        v11 = "VCVideoStream [%s] %s:%d Adding endpoint's remoteSSRC=%u to remote SSRC array";
        v12 = v9;
        v13 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCVideoStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        rtpSSRC2 = [endpoint rtpSSRC];
        *buf = 136316418;
        v20 = v14;
        v21 = 2080;
        v22 = "[VCVideoStream addRemoteEndpoint:error:]";
        v23 = 1024;
        v24 = 1652;
        v25 = 2112;
        v26 = v7;
        v27 = 2048;
        selfCopy = self;
        v29 = 1024;
        v30 = rtpSSRC2;
        v11 = "VCVideoStream [%s] %s:%d %@(%p) Adding endpoint's remoteSSRC=%u to remote SSRC array";
        v12 = v15;
        v13 = 54;
        goto LABEL_11;
      }
    }
  }

  [(VCVideoStream *)self updateVideoTransmitterStreamConfiguration];
  return 1;
}

- (void)updateVideoTransmitterStreamConfiguration
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
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
    v13 = 1662;
    OUTLINED_FUNCTION_9_0();
    v8 = 28;
LABEL_12:
    _os_log_error_impl(v3, v4, v5, v6, v7, v8);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [self performSelector:sel_logPrefix];
  }

  else
  {
    v2 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v11 = 136316162;
      v12 = v9;
      OUTLINED_FUNCTION_0();
      v13 = 1662;
      v14 = 2112;
      v15 = v2;
      v16 = 2048;
      selfCopy = self;
      v3 = &dword_1DB56E000;
      v6 = "VCVideoStream [%s] %s:%d %@(%p) Failed to allocate streamConfigs";
      v7 = &v11;
      v4 = v10;
      v5 = OS_LOG_TYPE_ERROR;
      v8 = 48;
      goto LABEL_12;
    }
  }
}

+ (id)capabilities
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v14 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v3 = MGCopyAnswer();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [objc_msgSend(v8 objectForKeyedSubscript:{@"w", "intValue"}];
        v10 = [objc_msgSend(v8 objectForKeyedSubscript:{@"h", "intValue"}];
        if (v9 != 320 || (v11 = &unk_1F579B9E8, v10 != 240))
        {
          if (v9 != 640 || (v11 = &unk_1F579BA18, v10 != 480))
          {
            if (v9 != 1280 || (v11 = &unk_1F579BA30, v10 != 720))
            {
              if (v9 != 1920)
              {
                continue;
              }

              v11 = &unk_1F579BA48;
              if (v10 != 1080)
              {
                continue;
              }
            }
          }
        }

        [v2 addObject:v11];
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v5);
  }

  [v14 addObject:&unk_1F579B9E8];
  [v14 addObject:&unk_1F579BA00];
  [v14 addObject:&unk_1F579BA60];
  [v14 addObject:&unk_1F579BA18];
  [v14 addObject:&unk_1F579BA78];
  [v14 addObject:&unk_1F579BA30];
  [v14 addObject:&unk_1F579BA90];
  [v14 addObject:&unk_1F579BA48];
  v15[0] = @"avcKeySupportedVideoEncodingCodecs";
  v16[0] = +[VCVideoStream supportedVideoPayloads];
  v15[1] = @"avcKeySupportedVideoDecodingCodecs";
  v16[1] = +[VCVideoStream supportedVideoPayloads];
  v15[2] = @"avcKeySupportedVideoEncodingResolutions";
  v16[2] = [v2 array];
  v15[3] = @"avcKeySupportedVideoDecodingResolutions";
  v16[3] = [v14 array];
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];

  return v12;
}

- (void)updateVideoConfig:(id)config
{
  v39 = *MEMORY[0x1E69E9840];
  VCMediaStream_Lock(self);
  v30 = 0;
  if ([(VCMediaStream *)self state]== 2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (config)
        {
          v7 = [objc_msgSend(config "description")];
        }

        else
        {
          v7 = "<nil>";
        }

        *buf = 136316162;
        *&buf[4] = v5;
        *&buf[12] = 2080;
        *&buf[14] = "[VCVideoStream updateVideoConfig:]";
        *&buf[22] = 1024;
        v32 = 1761;
        v33 = 2048;
        selfCopy3 = self;
        v35 = 2080;
        selfCopy4 = v7;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d VCVideoStream[%p] videoConfigDict=%s", buf, 0x30u);
      }
    }

    defaultStreamConfig = [(VCMediaStream *)self defaultStreamConfig];
    v14 = [(VCMediaStreamConfig *)defaultStreamConfig updateWithClientDictionary:config];
    v15 = v14;
    if (v14)
    {
      [(VCMediaStream *)self stopRTCPSendHeartbeat];
      if ([(VCMediaStream *)self isSendingMedia])
      {
        memset(buf, 170, sizeof(buf));
        videoTransmitter = self->_videoTransmitter;
        if (videoTransmitter)
        {
          [(VCVideoTransmitterBase *)videoTransmitter lastFrameTime];
          videoTransmitter = self->_videoTransmitter;
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        lastRTPTimestamp = [(VCVideoTransmitterBase *)videoTransmitter lastRTPTimestamp];
        [(VCVideoStream *)self deregisterForVideoCapture];
        [(VCVideoStream *)self destroyVideoTransmitter];
        [(VCVideoStream *)self registerForVideoCapture];
        [(VCVideoStream *)self initVideoTransmitter];
        v26 = *buf;
        v27 = *&buf[16];
        [(VCVideoTransmitterBase *)self->_videoTransmitter setLastFrameTime:&v26];
        [(VCVideoTransmitterBase *)self->_videoTransmitter setLastRTPTimestamp:lastRTPTimestamp];
        [(VCVideoTransmitterBase *)self->_videoTransmitter startVideo];
      }

      [(VCImageQueue *)self->_remoteQueue setFrameRate:[(VCMediaStreamConfig *)defaultStreamConfig framerate]];
      [(VCVideoStream *)self updateVideoReceiver:defaultStreamConfig];
      [(VCMediaStream *)self startRTCPSendHeartbeat];
      _VCVideoStream_ReportingVideoStreamEventWithVideoAttributesAndStreamID(self, 205, 0, 0);
    }

    else
    {
      +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", &v30, 32016, 105, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCVideoStream.m", 1799], @"Invalid Parameter", @"Called with an invalid parameter");
      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
        v19 = *MEMORY[0x1E6986650];
        if (IsOSFaultDisabled)
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            if (v30)
            {
              v20 = [objc_msgSend(v30 "description")];
            }

            else
            {
              v20 = "<nil>";
            }

            *buf = 136316162;
            *&buf[4] = v17;
            *&buf[12] = 2080;
            *&buf[14] = "[VCVideoStream updateVideoConfig:]";
            *&buf[22] = 1024;
            v32 = 1802;
            v33 = 2048;
            selfCopy3 = self;
            v35 = 2080;
            selfCopy4 = v20;
            _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, "VCVideoStream [%s] %s:%d VCVideoStream[%p] error[%s]", buf, 0x30u);
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          if (v30)
          {
            v23 = [objc_msgSend(v30 "description")];
          }

          else
          {
            v23 = "<nil>";
          }

          *buf = 136316162;
          *&buf[4] = v17;
          *&buf[12] = 2080;
          *&buf[14] = "[VCVideoStream updateVideoConfig:]";
          *&buf[22] = 1024;
          v32 = 1802;
          v33 = 2048;
          selfCopy3 = self;
          v35 = 2080;
          selfCopy4 = v23;
          _os_log_fault_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_FAULT, "VCVideoStream [%s] %s:%d VCVideoStream[%p] error[%s]", buf, 0x30u);
        }
      }

      config = 0;
    }

    delegateNotificationQueue = self->super._delegateNotificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__VCVideoStream_updateVideoConfig___block_invoke_192;
    block[3] = &unk_1E85F5E38;
    v25 = v15;
    block[4] = self;
    block[5] = v30;
    block[6] = config;
    v12 = block;
  }

  else
  {
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", &v30, 32016, 5, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCVideoStream.m", 1748], @"Bad API usage", @"updateVideoConfig Called while video stream is not running");
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCVideoStream updateVideoConfig:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCVideoStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          if (v30)
          {
            v22 = [objc_msgSend(v30 "description")];
          }

          else
          {
            v22 = "<nil>";
          }

          *buf = 136316418;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = "[VCVideoStream updateVideoConfig:]";
          *&buf[22] = 1024;
          v32 = 1751;
          v33 = 2112;
          selfCopy3 = v8;
          v35 = 2048;
          selfCopy4 = self;
          v37 = 2080;
          v38 = v22;
          _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, "VCVideoStream [%s] %s:%d %@(%p) error[%s]", buf, 0x3Au);
        }
      }
    }

    delegateNotificationQueue = self->super._delegateNotificationQueue;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __35__VCVideoStream_updateVideoConfig___block_invoke;
    v28[3] = &unk_1E85F5E38;
    v29 = 0;
    v28[4] = self;
    v28[5] = v30;
    v28[6] = 0;
    v12 = v28;
  }

  dispatch_async(delegateNotificationQueue, v12);
  VCMediaStream_Unlock(self);
}

uint64_t __35__VCVideoStream_updateVideoConfig___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 56);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);

    return [v3 vcMediaStream:v5 didUpdateVideoConfiguration:v4 error:v6 dictionary:v7];
  }

  return result;
}

uint64_t __35__VCVideoStream_updateVideoConfig___block_invoke_192(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 56);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);

    return [v3 vcMediaStream:v5 didUpdateVideoConfiguration:v4 error:v6 dictionary:v7];
  }

  return result;
}

- (void)requestLastDecodedFrame
{
  v3[5] = *MEMORY[0x1E69E9840];
  lastDecodedFrameQueue = self->_lastDecodedFrameQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__VCVideoStream_requestLastDecodedFrame__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(lastDecodedFrameQueue, v3);
}

- (void)resetRemoteMediaStalled
{
  v14 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_12;
    }

    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *v11 = 136315650;
    *&v11[4] = v4;
    *&v11[12] = 2080;
    *&v11[14] = "[VCVideoStream resetRemoteMediaStalled]";
    *&v11[22] = 1024;
    LODWORD(v12) = 1856;
    v6 = "VCVideoStream [%s] %s:%d ";
    v7 = v5;
    v8 = 28;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = [(VCVideoStream *)self performSelector:sel_logPrefix];
  }

  else
  {
    v3 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 136316162;
      *&v11[4] = v9;
      *&v11[12] = 2080;
      *&v11[14] = "[VCVideoStream resetRemoteMediaStalled]";
      *&v11[22] = 1024;
      LODWORD(v12) = 1856;
      WORD2(v12) = 2112;
      *(&v12 + 6) = v3;
      HIWORD(v12) = 2048;
      selfCopy = self;
      v6 = "VCVideoStream [%s] %s:%d %@(%p) ";
      v7 = v10;
      v8 = 48;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v11, v8);
    }
  }

LABEL_12:
  self->_isRemoteMediaStalled = 0;
  self->_lastMediaStallReportTime = 0.0;
  [(VCMediaStream *)self delegate:*v11];
  if (objc_opt_respondsToSelector())
  {
    [(VCMediaStreamDelegate *)[(VCMediaStream *)self delegate] vcMediaStream:self remoteMediaStalled:0 duration:0.0];
  }
}

- (void)generateKeyFrameWithFIRType:(int)type
{
  v3 = *&type;
  v29 = *MEMORY[0x1E69E9840];
  keyFrameInterval = [(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] keyFrameInterval];
  v6 = objc_opt_class();
  if (!keyFrameInterval)
  {
    if (v6 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_24;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      sendingStreamID = self->_sendingStreamID;
      *v25 = 136316162;
      *&v25[4] = v16;
      *&v25[12] = 2080;
      *&v25[14] = "[VCVideoStream generateKeyFrameWithFIRType:]";
      *&v25[22] = 1024;
      LODWORD(v26) = 1870;
      WORD2(v26) = 2112;
      *(&v26 + 6) = sendingStreamID;
      HIWORD(v26) = 2112;
      selfCopy2 = [(VCMediaStream *)self compoundStreamIDs];
      v19 = "VCVideoStream [%s] %s:%d Sending stream ID is %@, compound stream ID is %@";
      v20 = v17;
      v21 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCVideoStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_24;
      }

      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      v24 = self->_sendingStreamID;
      *v25 = 136316674;
      *&v25[4] = v22;
      *&v25[12] = 2080;
      *&v25[14] = "[VCVideoStream generateKeyFrameWithFIRType:]";
      *&v25[22] = 1024;
      LODWORD(v26) = 1870;
      WORD2(v26) = 2112;
      *(&v26 + 6) = v8;
      HIWORD(v26) = 2048;
      selfCopy2 = self;
      *v28 = 2112;
      *&v28[2] = v24;
      *&v28[10] = 2112;
      *&v28[12] = [(VCMediaStream *)self compoundStreamIDs];
      v19 = "VCVideoStream [%s] %s:%d %@(%p) Sending stream ID is %@, compound stream ID is %@";
      v20 = v23;
      v21 = 68;
    }

    _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, v25, v21);
LABEL_24:
    [(VCVideoTransmitterBase *)self->_videoTransmitter generateKeyFrameWithFIRType:v3, *v25, *&v25[16], v26, selfCopy2, *v28, *&v28[16]];
    return;
  }

  if (v6 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 136315650;
        *&v25[4] = v9;
        *&v25[12] = 2080;
        *&v25[14] = "[VCVideoStream generateKeyFrameWithFIRType:]";
        *&v25[22] = 1024;
        LODWORD(v26) = 1867;
        v11 = "VCVideoStream [%s] %s:%d Returning, No need to request a key frame generation with periodic IDR";
        v12 = v10;
        v13 = 28;
LABEL_15:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, v25, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCVideoStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 136316162;
        *&v25[4] = v14;
        *&v25[12] = 2080;
        *&v25[14] = "[VCVideoStream generateKeyFrameWithFIRType:]";
        *&v25[22] = 1024;
        LODWORD(v26) = 1867;
        WORD2(v26) = 2112;
        *(&v26 + 6) = v7;
        HIWORD(v26) = 2048;
        selfCopy2 = self;
        v11 = "VCVideoStream [%s] %s:%d %@(%p) Returning, No need to request a key frame generation with periodic IDR";
        v12 = v15;
        v13 = 48;
        goto LABEL_15;
      }
    }
  }
}

- (void)sendLastRemoteVideoFrame:(__CVBuffer *)frame
{
  v25 = *MEMORY[0x1E69E9840];
  if (!frame)
  {
    return;
  }

  v4 = [VideoUtil convertPixelBuffer:frame toImageType:0 withAssetIdentifier:0 cameraStatusBits:0 allowTimeMetaData:1];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v4, @"vcMediaStreamLastDecodedFrame", 0}];
    if (v5)
    {
      v6 = v5;
      delegateNotificationQueue = self->super._delegateNotificationQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __42__VCVideoStream_sendLastRemoteVideoFrame___block_invoke;
      block[3] = &unk_1E85F37F0;
      block[4] = v6;
      block[5] = self;
      dispatch_async(delegateNotificationQueue, block);

      return;
    }

    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [(VCVideoStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 136316162;
      v16 = v13;
      v17 = 2080;
      v18 = "[VCVideoStream sendLastRemoteVideoFrame:]";
      v19 = 1024;
      v20 = 1917;
      v21 = 2112;
      v22 = v9;
      v23 = 2048;
      selfCopy2 = self;
      v12 = "VCVideoStream [%s] %s:%d %@(%p) Failed to create last frame XPC args";
LABEL_26:
      _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x30u);
      return;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoStream sendLastRemoteVideoFrame:];
      }
    }
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoStream sendLastRemoteVideoFrame:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCVideoStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v16 = v10;
        v17 = 2080;
        v18 = "[VCVideoStream sendLastRemoteVideoFrame:]";
        v19 = 1024;
        v20 = 1913;
        v21 = 2112;
        v22 = v8;
        v23 = 2048;
        selfCopy2 = self;
        v12 = "VCVideoStream [%s] %s:%d %@(%p) Failed to create frame data";
        goto LABEL_26;
      }
    }
  }
}

uint64_t __42__VCVideoStream_sendLastRemoteVideoFrame___block_invoke(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 sendMessageAsync:"vcMediaStreamDidGetLastDecodedFrame" arguments:v3 context:v4];
}

- (BOOL)validateVideoStreamConfigurations:(id)configurations
{
  if (![configurations count])
  {
    return 0;
  }

  v4 = [configurations objectAtIndexedSubscript:0];
  if ([configurations count] >= 2 && objc_msgSend(v4, "direction") != 2 && !objc_msgSend(v4, "temporalScalingEnabled"))
  {
    return 0;
  }

  if ([configurations count] < 2)
  {
    return 1;
  }

  v6 = 2;
  v7 = 1;
  do
  {
    v8 = [objc_msgSend(configurations objectAtIndexedSubscript:{v7), "direction"}];
    v5 = v8 == [v4 direction];
    if (!v5)
    {
      break;
    }

    v7 = v6;
  }

  while ([configurations count] > v6++);
  return v5;
}

- (void)cleanupBeforeReconfigure:(id)reconfigure
{
  v32 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->super._transportArray count])
  {
    v5 = [objc_msgSend(-[NSMutableArray objectAtIndexedSubscript:](self->super._transportArray objectAtIndexedSubscript:{0), "streamConfig"), "localSSRC"}];
  }

  else
  {
    v5 = 0;
  }

  if ([reconfigure count])
  {
    v6 = [objc_msgSend(reconfigure objectAtIndexedSubscript:{0), "localSSRC"}];
  }

  else
  {
    v6 = 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [reconfigure countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(reconfigure);
        }

        v9 += [*(*(&v28 + 1) + 8 * i) tilesPerFrame];
      }

      v8 = [reconfigure countByEnumeratingWithState:&v28 objects:v27 count:16];
    }

    while (v8);
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(NSMutableArray *)self->super._transportArray count]== v12 && v6 == v5;
  if (!v13 && [(NSMutableArray *)self->super._transportArray count])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCVideoStream cleanupBeforeReconfigure:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [(VCVideoStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v14 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v17 = 136316162;
          v18 = v15;
          v19 = 2080;
          v20 = "[VCVideoStream cleanupBeforeReconfigure:]";
          v21 = 1024;
          v22 = 1963;
          v23 = 2112;
          v24 = v14;
          v25 = 2048;
          selfCopy = self;
          _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, "VCVideoStream [%s] %s:%d %@(%p) Reconfiguring VCVideoStream with a different number of transports.", &v17, 0x30u);
        }
      }
    }

    [(NSMutableArray *)self->super._transportArray removeAllObjects];
  }
}

- (void)setTargetStreamID:(id)d
{
  v35 = *MEMORY[0x1E69E9840];
  if (!-[NSNumber isEqualToNumber:](self->_targetStreamID, "isEqualToNumber:") || [d unsignedIntValue] != self->_currentStreamID)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_17;
      }

      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v23 = 136315906;
      v24 = v7;
      v25 = 2080;
      v26 = "[VCVideoStream setTargetStreamID:]";
      v27 = 1024;
      v28 = 1974;
      v29 = 2112;
      dCopy3 = d;
      v9 = "VCVideoStream [%s] %s:%d Setting target stream id: %@";
      v10 = v8;
      v11 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCVideoStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_17;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v23 = 136316418;
      v24 = v12;
      v25 = 2080;
      v26 = "[VCVideoStream setTargetStreamID:]";
      v27 = 1024;
      v28 = 1974;
      v29 = 2112;
      dCopy3 = v6;
      v31 = 2048;
      selfCopy3 = self;
      v33 = 2112;
      dCopy5 = d;
      v9 = "VCVideoStream [%s] %s:%d %@(%p) Setting target stream id: %@";
      v10 = v13;
      v11 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v23, v11);
LABEL_17:

    self->_targetStreamID = d;
    -[VCVideoReceiverBase setTargetStreamID:](self->_videoReceiver, "setTargetStreamID:", [d unsignedShortValue]);
    return;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      v16 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 136315906;
          v24 = v14;
          v25 = 2080;
          v26 = "[VCVideoStream setTargetStreamID:]";
          v27 = 1024;
          v28 = 1971;
          v29 = 2112;
          dCopy3 = d;
          v17 = "VCVideoStream [%s] %s:%d TargetStreamID didn't change %@";
          v18 = v15;
          v19 = 38;
LABEL_28:
          _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, &v23, v19);
        }
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [VCVideoStream setTargetStreamID:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCVideoStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      v22 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 136316418;
          v24 = v20;
          v25 = 2080;
          v26 = "[VCVideoStream setTargetStreamID:]";
          v27 = 1024;
          v28 = 1971;
          v29 = 2112;
          dCopy3 = v5;
          v31 = 2048;
          selfCopy3 = self;
          v33 = 2112;
          dCopy5 = d;
          v17 = "VCVideoStream [%s] %s:%d %@(%p) TargetStreamID didn't change %@";
          v18 = v21;
          v19 = 58;
          goto LABEL_28;
        }
      }

      else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = 136316418;
        v24 = v20;
        v25 = 2080;
        v26 = "[VCVideoStream setTargetStreamID:]";
        v27 = 1024;
        v28 = 1971;
        v29 = 2112;
        dCopy3 = v5;
        v31 = 2048;
        selfCopy3 = self;
        v33 = 2112;
        dCopy5 = d;
        _os_log_debug_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEBUG, "VCVideoStream [%s] %s:%d %@(%p) TargetStreamID didn't change %@", &v23, 0x3Au);
      }
    }
  }
}

- (void)setShouldEnableFaceZoom:(BOOL)zoom
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_shouldEnableFaceZoom != zoom)
  {
    zoomCopy = zoom;
    self->_shouldEnableFaceZoom = zoom;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *v13 = 136315906;
      *&v13[4] = v6;
      *&v13[12] = 2080;
      *&v13[14] = "[VCVideoStream setShouldEnableFaceZoom:]";
      *&v13[22] = 1024;
      LODWORD(v14) = 1983;
      WORD2(v14) = 1024;
      *(&v14 + 6) = zoomCopy;
      v8 = "VCVideoStream [%s] %s:%d Setting shouldEnableFaceZoom in receiver=%d";
      v9 = v7;
      v10 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCVideoStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *v13 = 136316418;
      *&v13[4] = v11;
      *&v13[12] = 2080;
      *&v13[14] = "[VCVideoStream setShouldEnableFaceZoom:]";
      *&v13[22] = 1024;
      LODWORD(v14) = 1983;
      WORD2(v14) = 2112;
      *(&v14 + 6) = v5;
      HIWORD(v14) = 2048;
      selfCopy = self;
      LOWORD(v16) = 1024;
      *(&v16 + 2) = zoomCopy;
      v8 = "VCVideoStream [%s] %s:%d %@(%p) Setting shouldEnableFaceZoom in receiver=%d";
      v9 = v12;
      v10 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, v13, v10);
LABEL_13:
    [(VCVideoReceiverBase *)self->_videoReceiver setShouldEnableFaceZoom:zoomCopy, *v13, *&v13[16], v14, selfCopy, v16, v17];
  }
}

- (unsigned)lastDisplayedFrameRTPTimestamp
{
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      videoReceiver = self->_videoReceiver;
      v7 = 136316418;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCVideoStream lastDisplayedFrameRTPTimestamp]";
      v11 = 1024;
      v12 = 1995;
      v13 = 2048;
      selfCopy = self;
      v15 = 2048;
      v16 = videoReceiver;
      v17 = 1024;
      lastDisplayedFrameRTPTimestamp = [(VCVideoReceiverBase *)videoReceiver lastDisplayedFrameRTPTimestamp];
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d From VCVideoStream[%p], _videoReceiver[%p], RTPTimestamp[%u]", &v7, 0x36u);
    }
  }

  return [(VCVideoReceiverBase *)self->_videoReceiver lastDisplayedFrameRTPTimestamp];
}

- (BOOL)validateStreamConfiguration:(id)configuration error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  if (!+[VCVideoStream isFeatureListStringExpectedForStreamType:](VCVideoStream, "isFeatureListStringExpectedForStreamType:", [configuration type]) || objc_msgSend(objc_msgSend(configuration, "rxCodecFeatureListStrings"), "count") && objc_msgSend(objc_msgSend(configuration, "txCodecFeatureListStrings"), "count"))
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", error, 32016, 105, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCVideoStream.m", 2081], @"Invalid configuration", @"Feature string is nil");
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        VRTraceErrorLogLevelToCSTR();
        if (VRTraceIsOSFaultDisabled())
        {
          v7 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
          if (!v7)
          {
            return v7;
          }

          [VCVideoStream validateStreamConfiguration:error:];
        }

        else
        {
          v7 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT);
          if (!v7)
          {
            return v7;
          }

          [VCVideoStream validateStreamConfiguration:error:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCVideoStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
        v11 = *MEMORY[0x1E6986650];
        if (IsOSFaultDisabled)
        {
          v7 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
          if (!v7)
          {
            return v7;
          }

          if (*error)
          {
            v12 = [objc_msgSend(*error "description")];
          }

          else
          {
            v12 = "<nil>";
          }

          *buf = 136316418;
          v16 = v9;
          v17 = 2080;
          v18 = "[VCVideoStream validateStreamConfiguration:error:]";
          v19 = 1024;
          v20 = 2084;
          v21 = 2112;
          v22 = v8;
          v23 = 2048;
          selfCopy2 = self;
          v25 = 2080;
          v26 = v12;
          _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, "VCVideoStream [%s] %s:%d %@(%p) error[%s]", buf, 0x3Au);
        }

        else
        {
          v7 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT);
          if (!v7)
          {
            return v7;
          }

          if (*error)
          {
            v13 = [objc_msgSend(*error "description")];
          }

          else
          {
            v13 = "<nil>";
          }

          *buf = 136316418;
          v16 = v9;
          v17 = 2080;
          v18 = "[VCVideoStream validateStreamConfiguration:error:]";
          v19 = 1024;
          v20 = 2084;
          v21 = 2112;
          v22 = v8;
          v23 = 2048;
          selfCopy2 = self;
          v25 = 2080;
          v26 = v13;
          _os_log_fault_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_FAULT, "VCVideoStream [%s] %s:%d %@(%p) error[%s]", buf, 0x3Au);
        }
      }
    }

    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)setEncodingMode:(int)mode
{
  v3 = *&mode;
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316162;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCVideoStream setEncodingMode:]";
      v13 = 1024;
      v14 = 2092;
      v15 = 2048;
      selfCopy = self;
      v17 = 1024;
      v18 = v3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d VCVideoStream[%p]: encodingMode=%d", &v9, 0x2Cu);
    }
  }

  VCMediaStream_Lock(self);
  v7 = [(VCVideoTransmitterBase *)self->_videoTransmitter setEncodingMode:v3];
  VCMediaStream_Unlock(self);
  return v7;
}

- (BOOL)enableRateControlFeebackInConfig:(id)config
{
  v10 = *MEMORY[0x1E69E9840];
  [config setRtcpEnabled:1];
  [config setRtcpReceiveCallbackEnabled:0];
  if ([config rateControlConfig])
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_alloc_init(VCMediaStreamRateControlConfig);
    if (!v5)
    {
      [(VCVideoStream *)&v8 enableRateControlFeebackInConfig:?];
      v4 = v8;
      v6 = v9;
      goto LABEL_6;
    }

    v4 = v5;
    [config setRateControlConfig:v5];
  }

  v6 = 1;
  [objc_msgSend(config "rateControlConfig")];
  [objc_msgSend(config "rateControlConfig")];
  [objc_msgSend(config "rateControlConfig")];
LABEL_6:

  return v6;
}

- (void)setForceRTCPForLTRPACK:(BOOL)k
{
  kCopy = k;
  v19 = *MEMORY[0x1E69E9840];
  VCMediaStream_Lock(self);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        videoReceiver = self->_videoReceiver;
        *v15 = 136316162;
        *&v15[4] = v6;
        *&v15[12] = 2080;
        *&v15[14] = "[VCVideoStream setForceRTCPForLTRPACK:]";
        *&v15[22] = 1024;
        *v16 = 2135;
        *&v16[4] = 1024;
        *&v16[6] = kCopy;
        *&v16[10] = 2048;
        *&v16[12] = videoReceiver;
        v9 = "VCVideoStream [%s] %s:%d forceRTCPForLTRPACK=%d, _videoReceiver=%p";
        v10 = v7;
        v11 = 44;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v15, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCVideoStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_videoReceiver;
        *v15 = 136316674;
        *&v15[4] = v12;
        *&v15[12] = 2080;
        *&v15[14] = "[VCVideoStream setForceRTCPForLTRPACK:]";
        *&v15[22] = 1024;
        *v16 = 2135;
        *&v16[4] = 2112;
        *&v16[6] = v5;
        *&v16[14] = 2048;
        *&v16[16] = self;
        LOWORD(v17) = 1024;
        *(&v17 + 2) = kCopy;
        HIWORD(v17) = 2048;
        v18 = v14;
        v9 = "VCVideoStream [%s] %s:%d %@(%p) forceRTCPForLTRPACK=%d, _videoReceiver=%p";
        v10 = v13;
        v11 = 64;
        goto LABEL_11;
      }
    }
  }

  [(VCVideoReceiverBase *)self->_videoReceiver setForceRTCPForLTRPACK:kCopy, *v15, *&v15[16], *v16, *&v16[16], v17, v18];
  VCMediaStream_Unlock(self);
}

- (void)setUplinkRetransmissionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  VCMediaStream_Lock(self);
  if (self->super._isUplinkRetransmissionEnabled != enabledCopy)
  {
    [(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] setIsUplinkRetransmissionEnabled:enabledCopy];
    self->super._isUplinkRetransmissionEnabled = enabledCopy;
    if ([(VCMediaStream *)self state]== 2)
    {
      [(VCVideoTransmitterBase *)self->_videoTransmitter setRtxEnabled:enabledCopy];
    }
  }

  VCMediaStream_Unlock(self);
}

- (double)activeVideoStallDuration
{
  VCMediaStream_Lock(self);
  v3 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [(VCVideoReceiverBase *)self->_videoReceiver activeVideoStallDuration];
    v3 = v4;
  }

  VCMediaStream_Unlock(self);
  return v3;
}

- (double)videoRxFrameRate
{
  VCMediaStream_Lock(self);
  v3 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [(VCVideoReceiverBase *)self->_videoReceiver videoReceiverRxFrameRate];
    v3 = v4;
  }

  VCMediaStream_Unlock(self);
  return v3;
}

- (id)getTransmitMediaControllerWithStreamConfig:(id)config
{
  if ([config type] != 3)
  {
    return 0;
  }

  rateControlConfig = [config rateControlConfig];

  return [rateControlConfig mediaController];
}

- (id)getTransmitStatsCollectorWithStreamConfig:(id)config
{
  type = [config type];
  if (type <= 7 && ((1 << type) & 0xF6) != 0)
  {
    return self->_statisticsCollector;
  }

  rateControlConfig = [config rateControlConfig];

  return [rateControlConfig statisticsCollector];
}

- (id)getReceiveStatsCollectorWithStreamConfig:(id)config
{
  type = [config type];
  result = 0;
  if (type <= 7)
  {
    if (((1 << type) & 0xF6) != 0)
    {
      if ([config direction] == 2)
      {
        return self->_statisticsCollector;
      }

      else
      {
        return 0;
      }
    }

    else if (type == 3)
    {
      rateControlConfig = [config rateControlConfig];

      return [rateControlConfig statisticsCollector];
    }
  }

  return result;
}

- (void)deregisterCurrentStreamInputCaptureSource
{
  if (self->_captureSource == 6)
  {
    if (self->_streamInputCaptureSource)
    {
      [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
      self->_streamInputCaptureSource = 0;
    }
  }
}

- (BOOL)configureStreamInputCaptureSourceWithStreamInputID:(int64_t)d frameRate:(unsigned int)rate
{
  v4 = *&rate;
  [(VCVideoStream *)self deregisterCurrentStreamInputCaptureSource];
  v7 = [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  self->_streamInputCaptureSource = v7;
  if (!v7 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCVideoStream configureStreamInputCaptureSourceWithStreamInputID:frameRate:];
    }
  }

  return v7 != 0;
}

- (unsigned)maxFramerateFromStreamConfigs:(id)configs
{
  v41 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = [configs countByEnumeratingWithState:&v37 objects:v36 count:16];
  if (v4)
  {
    v6 = v4;
    framerate3 = 0;
    v8 = *v38;
    *&v5 = 136316162;
    v22 = v5;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(configs);
        }

        v10 = *(*(&v37 + 1) + 8 * i);
        if ([v10 framerate] > framerate3)
        {
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v18 = VRTraceErrorLogLevelToCSTR();
              v19 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                framerate = [v10 framerate];
                *buf = v22;
                v25 = v18;
                v26 = 2080;
                v27 = "[VCVideoStream maxFramerateFromStreamConfigs:]";
                v28 = 1024;
                v29 = 2261;
                v30 = 1024;
                *v31 = framerate3;
                *&v31[4] = 2048;
                *&v31[6] = framerate;
                v15 = v19;
                v16 = "VCVideoStream [%s] %s:%d Updating maxFramerate from old=%u to new=%lu";
                v17 = 44;
LABEL_16:
                _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, v17);
              }
            }
          }

          else
          {
            v11 = &stru_1F570E008;
            if (objc_opt_respondsToSelector())
            {
              v11 = [(VCVideoStream *)self performSelector:sel_logPrefix];
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v12 = VRTraceErrorLogLevelToCSTR();
              v13 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                framerate2 = [v10 framerate];
                *buf = 136316674;
                v25 = v12;
                v26 = 2080;
                v27 = "[VCVideoStream maxFramerateFromStreamConfigs:]";
                v28 = 1024;
                v29 = 2261;
                v30 = 2112;
                *v31 = v11;
                *&v31[8] = 2048;
                *&v31[10] = self;
                v32 = 1024;
                v33 = framerate3;
                v34 = 2048;
                v35 = framerate2;
                v15 = v13;
                v16 = "VCVideoStream [%s] %s:%d %@(%p) Updating maxFramerate from old=%u to new=%lu";
                v17 = 64;
                goto LABEL_16;
              }
            }
          }

          framerate3 = [v10 framerate];
          continue;
        }
      }

      v6 = [configs countByEnumeratingWithState:&v37 objects:v36 count:16];
      if (!v6)
      {
        return framerate3;
      }
    }
  }

  LODWORD(framerate3) = 0;
  return framerate3;
}

- (void)configureMediaStallSettingsWithConfig:(id)config
{
  self->_sendContinuousStallMessages = [config type] == 3;
  if (config)
  {
    [config mediaStallTimeout];
    [config mediaStallTimeout];
    self->_mediaStallTimeout = VCDefaults_GetDoubleValueForKey(@"mediaStallTimeout", v5);
    [config mediaStallReportRepeatInterval];
    [config mediaStallReportRepeatInterval];
    v7 = v6;
    self->_sendContinuousStallMessages = 1;
  }

  else
  {
    v7 = 5.0;
    self->_mediaStallTimeout = VCDefaults_GetDoubleValueForKey(@"mediaStallTimeout", 5.0);
  }

  self->_mediaStallReportRepeatInterval = VCDefaults_GetDoubleValueForKey(@"mediaStallReportRepeatInterval", v7);
}

- (void)configureReceiveBuffer:(id)buffer
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [buffer direction] != 2 && objc_msgSend(buffer, "direction") != 3;
  if ([(VCVideoStream *)self isLowLatencyStreamType]&& self->super._transportSetupInfo.setupType == 1 && !v5)
  {
    v13 = 1500000;
    v6 = setsockopt(self->super._transportSetupInfo.var0.socketInfo.rtpSocket, 0xFFFF, 4098, &v13, 4u);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v6)
    {
      if (ErrorLogLevelForModule >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCVideoStream configureReceiveBuffer:];
        }
      }
    }

    else if (ErrorLogLevelForModule >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v15 = v8;
        v16 = 2080;
        v17 = "[VCVideoStream configureReceiveBuffer:]";
        v18 = 1024;
        v19 = 2296;
        v20 = 1024;
        v21 = 1500000;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d Set socket receive buffer size=%d", buf, 0x22u);
      }
    }
  }

  type = [buffer type];
  if (self->super._transportSetupInfo.setupType == 5)
  {
    v11 = type;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (self->super._transportSetupInfo.setupType == 5)
    {
      objc_opt_class();
      isKindOfClass |= objc_opt_isKindOfClass();
    }

    if (v11 == 7 && (isKindOfClass & 1) != 0 && !v5)
    {
      self->super._transportSetupInfo.var0.ipInfo.srcIPPORT.szIfName[13] = 1;
    }
  }
}

- (BOOL)onConfigureStreamWithConfiguration:(id)configuration error:(id *)error
{
  v87 = *MEMORY[0x1E69E9840];
  if (![(VCVideoStream *)self validateVideoStreamConfigurations:?])
  {
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", error, 32016, 105, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCVideoStream.m", 2314], @"Invalid Parameter", @"Called with an invalid parameter");
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        VRTraceErrorLogLevelToCSTR();
        if (VRTraceIsOSFaultDisabled())
        {
          v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
          if (!v10)
          {
            return v10;
          }

          [VCVideoStream onConfigureStreamWithConfiguration:error:];
        }

        else
        {
          v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT);
          if (!v10)
          {
            return v10;
          }

          [VCVideoStream onConfigureStreamWithConfiguration:error:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [(VCVideoStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
        v13 = *MEMORY[0x1E6986650];
        if (IsOSFaultDisabled)
        {
          v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
          if (!v10)
          {
            return v10;
          }

          if (*error)
          {
            v14 = [objc_msgSend(*error "description")];
          }

          else
          {
            v14 = "<nil>";
          }

          *buf = 136316418;
          v77 = v11;
          v78 = 2080;
          v79 = "[VCVideoStream onConfigureStreamWithConfiguration:error:]";
          v80 = 1024;
          v81 = 2317;
          v82 = 2112;
          *v83 = v9;
          *&v83[8] = 2048;
          selfCopy9 = self;
          v85 = 2080;
          v86 = v14;
          v50 = "VCVideoStream [%s] %s:%d %@(%p) error[%s]";
LABEL_155:
          v51 = v13;
          v52 = 58;
LABEL_156:
          _os_log_error_impl(&dword_1DB56E000, v51, OS_LOG_TYPE_ERROR, v50, buf, v52);
        }

        else
        {
          v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT);
          if (!v10)
          {
            return v10;
          }

          if (*error)
          {
            v22 = [objc_msgSend(*error "description")];
          }

          else
          {
            v22 = "<nil>";
          }

          *buf = 136316418;
          v77 = v11;
          v78 = 2080;
          v79 = "[VCVideoStream onConfigureStreamWithConfiguration:error:]";
          v80 = 1024;
          v81 = 2317;
          v82 = 2112;
          *v83 = v9;
          *&v83[8] = 2048;
          selfCopy9 = self;
          v85 = 2080;
          v86 = v22;
          v58 = "VCVideoStream [%s] %s:%d %@(%p) error[%s]";
LABEL_159:
          v59 = v13;
          v60 = 58;
LABEL_160:
          _os_log_fault_impl(&dword_1DB56E000, v59, OS_LOG_TYPE_FAULT, v58, buf, v60);
        }
      }
    }

    goto LABEL_161;
  }

  v7 = [configuration objectAtIndexedSubscript:0];
  [(VCVideoStream *)self cleanupBeforeReconfigure:configuration];
  [(VCVideoStream *)self overrideConfigWithDefaults:v7];
  self->_type = [v7 type];
  [(VCVideoStream *)self updateShouldCacheRemoteVideoFrame];
  self->_captureSource = [v7 captureSource];
  LODWORD(self->_colorInfo) = [objc_msgSend(v7 "multiwayConfig")];
  [(VCVideoStream *)self configureMediaStallSettingsWithConfig:v7];
  type = self->_type;
  if (type == 6)
  {
LABEL_5:
    self->_screenDisplayID = [v7 screenDisplayID];
    goto LABEL_20;
  }

  if (type != 2)
  {
    if (type != 1)
    {
      goto LABEL_20;
    }

    goto LABEL_5;
  }

  self->_captureSource = 2;
LABEL_20:
  if ([(VCVideoStream *)self isScreenConfig:v7])
  {
    self->_customHeight = [v7 customHeight];
    self->_customWidth = [v7 customWidth];
  }

  [(VCVideoStream *)self setupColorInfo:v7];
  captureSourceID = [v7 captureSourceID];
  self->_captureSourceID = captureSourceID;
  if (captureSourceID)
  {
    if ([(VCMediaStream *)self defaultStreamConfig])
    {
      v16 = [(VCVideoStream *)self newScreenCaptureConfigForVideoConfig:[(VCMediaStream *)self defaultStreamConfig]];
      [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
    }

    v17 = [(VCVideoStream *)self newScreenCaptureConfigForVideoConfig:v7];
    [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  }

  if ([v7 temporalScalingEnabled])
  {
    self->_isTemporalScalingEnabled = 1;
  }

  if ([v7 isRedundancyControlEnabled] && objc_msgSend(v7, "type") == 3)
  {
    [(VCVideoStream *)self setupInternalRedundancyControllerWithStreamConfig:v7];
  }

  v18 = [(VCVideoStream *)self maxFramerateFromStreamConfigs:configuration];
  if (self->_captureSource == 6 && !-[VCVideoStream configureStreamInputCaptureSourceWithStreamInputID:frameRate:](self, "configureStreamInputCaptureSourceWithStreamInputID:frameRate:", [v7 streamInputID], v18))
  {
    if (error)
    {
      v21 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailCode:0 description:{@"Can not register capture source streamInput, streamInputID could be wrong"}];
      LOBYTE(v10) = 0;
      *error = v21;
      return v10;
    }

LABEL_161:
    LOBYTE(v10) = 0;
    return v10;
  }

  [(VCVideoStream *)self configureReceiveBuffer:v7];
  self->super._operatingMode = [(VCVideoStream *)self operatingModeForVideoStreamType:self->_type];
  if ((self->_sensitiveContentAnalyzer & 1) == 0)
  {
    [VCPowerManager_DefaultManager() registerForThermalEvents:self];
    LOBYTE(self->_sensitiveContentAnalyzer) = 1;
  }

  v19 = self->_type;
  v66 = v18;
  if (v19 != 7 && v19)
  {
    if ([v7 rtpTimestampRate])
    {
      rtpTimestampRate = [v7 rtpTimestampRate];
    }

    else
    {
      rtpTimestampRate = 24000;
    }

    self->_rtpTimestampRate = rtpTimestampRate;
    v19 = self->_type;
  }

  else
  {
    rtpTimestampRate = 90000;
    self->_rtpTimestampRate = 90000;
  }

  self->super._transportSetupInfo.sourceRate = rtpTimestampRate;
  self->super._useRandomTS = [VCVideoStream shouldUseRandomRTPTimestampWithType:v19];
  v70 = [(NSMutableArray *)self->super._transportArray count];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v23 = [configuration countByEnumeratingWithState:&v72 objects:v71 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    v26 = *v73;
    errorCopy = error;
    v63 = *v73;
    configurationCopy = configuration;
    while (2)
    {
      v27 = 0;
      v65 = v24;
      do
      {
        if (*v73 != v26)
        {
          objc_enumerationMutation(configuration);
        }

        v28 = *(*(&v72 + 1) + 8 * v27);
        defaultRemoteSSRC = [v28 defaultRemoteSSRC];
        v67 = v27;
        if ([v28 enableInterleavedEncoding])
        {
          if (![(VCVideoStream *)self validateStreamConfiguration:v28 error:error])
          {
            goto LABEL_161;
          }

          tilesPerFrame = 4;
LABEL_59:
          v30 = 0;
          while (1)
          {
            localSSRC = self->super._localSSRC;
            if ([(VCVideoStream *)self isLowLatencyStreamType])
            {
              localSSRC = v30 + localSSRC;
              if (defaultRemoteSSRC)
              {
                [v28 setDefaultRemoteSSRC:defaultRemoteSSRC + v30];
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v32 = VRTraceErrorLogLevelToCSTR();
                  v33 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136316162;
                    v77 = v32;
                    v78 = 2080;
                    v79 = "[VCVideoStream onConfigureStreamWithConfiguration:error:]";
                    v80 = 1024;
                    v81 = 2416;
                    v82 = 1024;
                    *v83 = v30;
                    *&v83[4] = 1024;
                    *&v83[6] = defaultRemoteSSRC + v30;
                    _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d Overriding transport index=%d with defaultSSRC=%u", buf, 0x28u);
                  }
                }
              }
            }

            else if ([v28 temporalScalingEnabled])
            {
              localSSRC = [objc_msgSend(v28 "multiwayConfig")];
            }

            if (v70)
            {
              v34 = [(NSMutableArray *)self->super._transportArray objectAtIndexedSubscript:v25++];
              if (!v34)
              {
                goto LABEL_93;
              }
            }

            else
            {
              v34 = [(VCMediaStream *)self createTransportWithStreamConfig:v28 ssrc:localSSRC];
              if (!v34)
              {
LABEL_93:
                if (objc_opt_class() == self)
                {
                  v37 = errorCopy;
                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    VRTraceErrorLogLevelToCSTR();
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      [VCVideoStream onConfigureStreamWithConfiguration:error:];
                    }
                  }
                }

                else
                {
                  v37 = errorCopy;
                  if (objc_opt_respondsToSelector())
                  {
                    v38 = [(VCVideoStream *)self performSelector:sel_logPrefix];
                  }

                  else
                  {
                    v38 = &stru_1F570E008;
                  }

                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    v41 = VRTraceErrorLogLevelToCSTR();
                    v42 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136316162;
                      v77 = v41;
                      v78 = 2080;
                      v79 = "[VCVideoStream onConfigureStreamWithConfiguration:error:]";
                      v80 = 1024;
                      v81 = 2425;
                      v82 = 2112;
                      *v83 = v38;
                      *&v83[8] = 2048;
                      selfCopy9 = self;
                      _os_log_error_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_ERROR, "VCVideoStream [%s] %s:%d %@(%p) Failed to create transport", buf, 0x30u);
                    }
                  }
                }

                +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", v37, 32016, 105, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCVideoStream.m", 2429], @"Failed to create transport", @"Create transport failed");
                if (objc_opt_class() == self)
                {
                  if (VRTraceGetErrorLogLevelForModule() < 2)
                  {
                    goto LABEL_161;
                  }

                  VRTraceErrorLogLevelToCSTR();
                  if (VRTraceIsOSFaultDisabled())
                  {
                    v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
                    if (!v10)
                    {
                      return v10;
                    }

                    [VCVideoStream onConfigureStreamWithConfiguration:error:];
                  }

                  else
                  {
                    v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT);
                    if (!v10)
                    {
                      return v10;
                    }

                    [VCVideoStream onConfigureStreamWithConfiguration:error:];
                  }

                  goto LABEL_161;
                }

                if (objc_opt_respondsToSelector())
                {
                  v43 = [(VCVideoStream *)self performSelector:sel_logPrefix];
                }

                else
                {
                  v43 = &stru_1F570E008;
                }

                if (VRTraceGetErrorLogLevelForModule() < 2)
                {
                  goto LABEL_161;
                }

                v44 = VRTraceErrorLogLevelToCSTR();
                v45 = VRTraceIsOSFaultDisabled();
                v13 = *MEMORY[0x1E6986650];
                if (v45)
                {
                  v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
                  if (!v10)
                  {
                    return v10;
                  }

                  if (*v37)
                  {
                    v46 = [objc_msgSend(*v37 "description")];
                  }

                  else
                  {
                    v46 = "<nil>";
                  }

                  *buf = 136316418;
                  v77 = v44;
                  v78 = 2080;
                  v79 = "[VCVideoStream onConfigureStreamWithConfiguration:error:]";
                  v80 = 1024;
                  v81 = 2432;
                  v82 = 2112;
                  *v83 = v43;
                  *&v83[8] = 2048;
                  selfCopy9 = self;
                  v85 = 2080;
                  v86 = v46;
                  v50 = "VCVideoStream [%s] %s:%d %@(%p) error[%s]";
                  goto LABEL_155;
                }

                v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT);
                if (!v10)
                {
                  return v10;
                }

                if (*v37)
                {
                  v53 = [objc_msgSend(*v37 "description")];
                }

                else
                {
                  v53 = "<nil>";
                }

                *buf = 136316418;
                v77 = v44;
                v78 = 2080;
                v79 = "[VCVideoStream onConfigureStreamWithConfiguration:error:]";
                v80 = 1024;
                v81 = 2432;
                v82 = 2112;
                *v83 = v43;
                *&v83[8] = 2048;
                selfCopy9 = self;
                v85 = 2080;
                v86 = v53;
                v58 = "VCVideoStream [%s] %s:%d %@(%p) error[%s]";
                goto LABEL_159;
              }
            }

            if ([VCVideoStream shouldEnableRateControlForStreamType:self->_type]&& ![(VCVideoStream *)self enableRateControlFeebackInConfig:v28])
            {
              break;
            }

            if (!self->_type && self->super._transportSetupInfo.setupType == 5)
            {
              self->super._transportSetupInfo.var0.ipInfo.srcIPPORT.szIfName[12] = 1;
            }

            self->_statisticsCollector = [(VCVideoStream *)self getReceiveStatsCollectorWithStreamConfig:v28];
            self->super._transportSetupInfo.var0.ipInfo.srcIPPORT.IP.dwIPv4 = v30;
            v35 = [v28 type] == 3 || objc_msgSend(v28, "type") == 5;
            if (([v34 configureWithStreamConfig:v28 setupInfo:&self->super._transportSetupInfo reducedSizeRTCPPackets:v35 hopByHopEncryptRTCPPackets:objc_msgSend(v28 statisticsCollector:"type") == 3 basebandCongestionDetector:self->_statisticsCollector error:{objc_msgSend(objc_msgSend(v28, "rateControlConfig"), "basebandCongestionDetector"), errorCopy}] & 1) == 0)
            {
              if (objc_opt_class() == self)
              {
                if (VRTraceGetErrorLogLevelForModule() < 2)
                {
                  goto LABEL_161;
                }

                VRTraceErrorLogLevelToCSTR();
                if (VRTraceIsOSFaultDisabled())
                {
                  v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
                  if (!v10)
                  {
                    return v10;
                  }

                  [VCVideoStream onConfigureStreamWithConfiguration:error:];
                }

                else
                {
                  v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT);
                  if (!v10)
                  {
                    return v10;
                  }

                  [VCVideoStream onConfigureStreamWithConfiguration:error:];
                }

                goto LABEL_161;
              }

              if (objc_opt_respondsToSelector())
              {
                v39 = [(VCVideoStream *)self performSelector:sel_logPrefix];
              }

              else
              {
                v39 = &stru_1F570E008;
              }

              if (VRTraceGetErrorLogLevelForModule() < 2)
              {
                goto LABEL_161;
              }

              v47 = VRTraceErrorLogLevelToCSTR();
              v48 = VRTraceIsOSFaultDisabled();
              v49 = *MEMORY[0x1E6986650];
              if (v48)
              {
                v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
                if (!v10)
                {
                  return v10;
                }

                *buf = 136316162;
                v77 = v47;
                v78 = 2080;
                v79 = "[VCVideoStream onConfigureStreamWithConfiguration:error:]";
                v80 = 1024;
                v81 = 2460;
                v82 = 2112;
                *v83 = v39;
                *&v83[8] = 2048;
                selfCopy9 = self;
                v50 = "VCVideoStream [%s] %s:%d %@(%p) Failed to configure transport";
                v51 = v49;
                v52 = 48;
                goto LABEL_156;
              }

              v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT);
              if (!v10)
              {
                return v10;
              }

              *buf = 136316162;
              v77 = v47;
              v78 = 2080;
              v79 = "[VCVideoStream onConfigureStreamWithConfiguration:error:]";
              v80 = 1024;
              v81 = 2460;
              v82 = 2112;
              *v83 = v39;
              *&v83[8] = 2048;
              selfCopy9 = self;
              v58 = "VCVideoStream [%s] %s:%d %@(%p) Failed to configure transport";
              v59 = v49;
              v60 = 48;
              goto LABEL_160;
            }

            RTPSetTimestampRateScale([v34 rtpHandle], 0);
            if (tilesPerFrame == ++v30)
            {
              goto LABEL_82;
            }
          }

          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() < 2)
            {
              goto LABEL_161;
            }

            VRTraceErrorLogLevelToCSTR();
            if (VRTraceIsOSFaultDisabled())
            {
              v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
              if (!v10)
              {
                return v10;
              }

              [VCVideoStream onConfigureStreamWithConfiguration:error:];
            }

            else
            {
              v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT);
              if (!v10)
              {
                return v10;
              }

              [VCVideoStream onConfigureStreamWithConfiguration:error:];
            }

            goto LABEL_161;
          }

          if (objc_opt_respondsToSelector())
          {
            v40 = [(VCVideoStream *)self performSelector:sel_logPrefix];
          }

          else
          {
            v40 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() < 2)
          {
            goto LABEL_161;
          }

          v54 = VRTraceErrorLogLevelToCSTR();
          v55 = VRTraceIsOSFaultDisabled();
          v56 = *MEMORY[0x1E6986650];
          if (v55)
          {
            v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
            if (!v10)
            {
              return v10;
            }

            v57 = self->_type;
            *buf = 136316418;
            v77 = v54;
            v78 = 2080;
            v79 = "[VCVideoStream onConfigureStreamWithConfiguration:error:]";
            v80 = 1024;
            v81 = 2439;
            v82 = 2112;
            *v83 = v40;
            *&v83[8] = 2048;
            selfCopy9 = self;
            v85 = 1024;
            LODWORD(v86) = v57;
            v50 = "VCVideoStream [%s] %s:%d %@(%p) Failed to update stream config for VCVideoStreamType=%d";
            v51 = v56;
            v52 = 54;
            goto LABEL_156;
          }

          v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT);
          if (!v10)
          {
            return v10;
          }

          v61 = self->_type;
          *buf = 136316418;
          v77 = v54;
          v78 = 2080;
          v79 = "[VCVideoStream onConfigureStreamWithConfiguration:error:]";
          v80 = 1024;
          v81 = 2439;
          v82 = 2112;
          *v83 = v40;
          *&v83[8] = 2048;
          selfCopy9 = self;
          v85 = 1024;
          LODWORD(v86) = v61;
          v58 = "VCVideoStream [%s] %s:%d %@(%p) Failed to update stream config for VCVideoStreamType=%d";
          v59 = v56;
          v60 = 54;
          goto LABEL_160;
        }

        tilesPerFrame = [v28 tilesPerFrame];
        if (![(VCVideoStream *)self validateStreamConfiguration:v28 error:error])
        {
          goto LABEL_161;
        }

        if (tilesPerFrame >= 1)
        {
          goto LABEL_59;
        }

LABEL_82:
        if (defaultRemoteSSRC)
        {
          [v28 setDefaultRemoteSSRC:?];
        }

        v27 = v67 + 1;
        configuration = configurationCopy;
        error = errorCopy;
        v26 = v63;
      }

      while (v67 + 1 != v65);
      v24 = [configurationCopy countByEnumeratingWithState:&v72 objects:v71 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

  [(VCMediaStream *)self registerMediaControlInfoGeneratorWithConfigs:configuration];
  [(VCVideoStream *)self overrideConfigWithDefaults:[(VCMediaStream *)self defaultStreamConfig]];
  if (self->_baseQualityIndex && self->super._operatingMode == 6)
  {
    [(VCMediaStream *)self updateTransportsWithConstantConnectionOverhead:?];
  }

  -[VCImageQueue setImageQueueProtected:](self->_remoteQueue, "setImageQueueProtected:", [v7 isVideoProtected]);
  [(VCImageQueue *)self->_remoteQueue setFrameRate:v66];
  v36 = self->_type;
  if (v36 <= 6 && ((1 << v36) & 0x66) != 0)
  {
    [(VCImageQueue *)self->_remoteQueue setLowLatencyEnabled:1];
  }

  [(VCImageQueue *)self->_remoteQueue setLowLatencyEnabled:VCDefaults_GetBoolValueForKey(@"forceVideoStreamLowLatency", [(VCImageQueue *)self->_remoteQueue isLowLatencyEnabled])];
  -[VCImageQueue setVideoBufferDescription:](self->_remoteQueue, "setVideoBufferDescription:", [v7 videoBufferDescription]);
  LOBYTE(v10) = 1;
  return v10;
}

- (int)operatingModeForVideoStreamType:(int64_t)type
{
  if ((type - 1) > 6)
  {
    return 5;
  }

  else
  {
    return dword_1DBD50CC8[type - 1];
  }
}

- (void)deregisterForVideoCapture
{
  if (self->_captureSource == 6)
  {
    [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  }

  else
  {
    captureSourceID = self->_captureSourceID;
    v4 = +[VCVideoCaptureServer VCVideoCaptureServerSingleton];
    if (captureSourceID)
    {
      [v4 deregisterCaptureClientForScreenShare:self];
    }

    else
    {
      [v4 deregisterForVideoFramesFromSource:self->_captureSource withClient:self];
    }
  }

  [(VCMomentsCollectorDelegate *)[(VCMediaStream *)self momentsCollectorDelegate] cleanUpActiveRequests];
  atomic_store(0, &self->_isVideoCaptureRegistered);
}

- (void)reportFailedToRegisterVideoFramesFromSource:(int)source width:(int)width height:(int)height frameRate:(int)rate
{
  v6 = *&rate;
  v7 = *&height;
  v8 = *&width;
  v9 = *&source;
  v11[4] = *MEMORY[0x1E69E9840];
  [(VCObject *)self reportingAgent];
  v10[0] = @"SymptomReporterOptionalKeyCaptureSource";
  v11[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v9];
  v10[1] = @"SymptomReporterOptionalKeyCaptureWidth";
  v11[1] = [MEMORY[0x1E696AD98] numberWithInt:v8];
  v10[2] = @"SymptomReporterOptionalKeyCaptureHeight";
  v11[2] = [MEMORY[0x1E696AD98] numberWithInt:v7];
  v10[3] = @"SymptomReporterOptionalKeyCaptureFrameRate";
  v11[3] = [MEMORY[0x1E696AD98] numberWithInt:v6];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];
  reportingSymptom();
}

- (BOOL)registerForCameraCaptureWithConfig:(id)config
{
  v41 = *MEMORY[0x1E69E9840];
  +[VideoUtil sizeForVideoResolution:](VideoUtil, "sizeForVideoResolution:", [config videoResolution]);
  v6 = v5;
  v8 = v7;
  [VideoUtil getBestCaptureSizeForEncodingSize:?];
  v10 = v9;
  v12 = v11;
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [(VCVideoStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v13 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v25 = 136317186;
    v26 = v19;
    v27 = 2080;
    v28 = "[VCVideoStream registerForCameraCaptureWithConfig:]";
    v29 = 1024;
    v30 = 2546;
    v31 = 2112;
    *v32 = v13;
    *&v32[8] = 2048;
    selfCopy = self;
    *v34 = 1024;
    *&v34[2] = v10;
    v35 = 1024;
    v36 = v12;
    v37 = 1024;
    v38 = v6;
    v39 = 1024;
    v40 = v8;
    v16 = "VCVideoStream [%s] %s:%d %@(%p) capture=%dx%d, encode=%dx%d";
    v17 = v20;
    v18 = 72;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v25 = 136316674;
      v26 = v14;
      v27 = 2080;
      v28 = "[VCVideoStream registerForCameraCaptureWithConfig:]";
      v29 = 1024;
      v30 = 2546;
      v31 = 1024;
      *v32 = v10;
      *&v32[4] = 1024;
      *&v32[6] = v12;
      LOWORD(selfCopy) = 1024;
      *(&selfCopy + 2) = v6;
      HIWORD(selfCopy) = 1024;
      *v34 = v8;
      v16 = "VCVideoStream [%s] %s:%d capture=%dx%d, encode=%dx%d";
      v17 = v15;
      v18 = 52;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, &v25, v18);
    }
  }

LABEL_12:

  v21 = [VCVideoRule alloc];
  *&v22 = [config framerate];
  self->_videoRule = [(VCVideoRule *)v21 initWithFrameWidth:v6 frameHeight:v8 frameRate:v22];
  v23 = [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  if ((v23 & 1) == 0)
  {
    -[VCVideoStream reportFailedToRegisterVideoFramesFromSource:width:height:frameRate:](self, "reportFailedToRegisterVideoFramesFromSource:width:height:frameRate:", self->_captureSource, v10, v12, [config framerate]);
  }

  return v23;
}

- (BOOL)registerForVideoCapture
{
  defaultStreamConfig = [(VCMediaStream *)self defaultStreamConfig];
  type = self->_type;
  result = 1;
  if (type <= 7)
  {
    if (((1 << type) & 0x66) != 0)
    {
      if (self->_captureSource != 6)
      {
        if (self->_captureSourceID)
        {
          [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
        }

        else
        {
          v6 = [(VCVideoStream *)self newScreenCaptureConfigForVideoConfig:defaultStreamConfig];
          v7 = [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];

          if ((v7 & 1) == 0)
          {
            [(VCVideoStream *)self reportFailedToRegisterVideoFramesFromSource:self->_captureSource width:self->_customWidth height:self->_customHeight frameRate:[(VCMediaStreamConfig *)defaultStreamConfig framerate]];
            result = 0;
            goto LABEL_16;
          }
        }

LABEL_15:
        result = 1;
        goto LABEL_16;
      }

LABEL_11:
      [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
      goto LABEL_15;
    }

    if (((1 << type) & 0x90) != 0)
    {
      captureSource = self->_captureSource;
      if (captureSource == 6)
      {
        goto LABEL_11;
      }

      if (captureSource != 3)
      {
        goto LABEL_16;
      }
    }

    else if (type)
    {
      goto LABEL_16;
    }

    result = [(VCVideoStream *)self registerForCameraCaptureWithConfig:defaultStreamConfig];
  }

LABEL_16:
  atomic_store(result, &self->_isVideoCaptureRegistered);
  return result;
}

- (void)collectImageQueuePerformanceMetrics:(__CFDictionary *)metrics
{
  v44 = *MEMORY[0x1E69E9840];
  theDict = 0;
  [(VCImageQueue *)self->_remoteQueue createAndCopyPerformanceDictionary:&theDict];
  v20 = 0;
  Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
  v6 = MEMORY[0x1E695E480];
  if (Int32IfPresent)
  {
    v7 = v20 - self->_lastDisplayedFromImageQueueCount;
    valuePtr = v7;
    v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(metrics, @"VIQDCnt", v8);
    CFRelease(v8);
    self->_lastDisplayedFromImageQueueCount = v20;
  }

  else
  {
    v7 = 0;
  }

  v19 = 0;
  if (FigCFDictionaryGetInt32IfPresent())
  {
    v9 = v19 - self->_lastDroppedFromImageQueueCount;
    valuePtr = v9;
    v10 = CFNumberCreate(*v6, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(metrics, @"VIQLCnt", v10);
    CFRelease(v10);
    self->_lastDroppedFromImageQueueCount = v19;
  }

  else
  {
    v9 = 0;
  }

  cf = 0;
  [(VCImageQueue *)self->_remoteQueue createAndCopyLatencyStatsDictionary:&cf];
  if (cf)
  {
    if (FigCFDictionaryGetDoubleIfPresent())
    {
      valuePtr = (0.0 * 1000.0);
      v11 = CFNumberCreate(*v6, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(metrics, @"VIQMinHEL", v11);
      CFRelease(v11);
    }

    if (FigCFDictionaryGetDoubleIfPresent())
    {
      valuePtr = (0.0 * 1000.0);
      v12 = CFNumberCreate(*v6, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(metrics, @"VIQMaxHEL", v12);
      CFRelease(v12);
    }

    if (FigCFDictionaryGetDoubleIfPresent())
    {
      valuePtr = (0.0 * 1000.0);
      v13 = CFNumberCreate(*v6, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(metrics, @"VIQAHEL", v13);
      CFRelease(v13);
    }

    FigCFDictionaryGetIntIfPresent();
    if (cf)
    {
      CFRelease(cf);
    }
  }

  Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6973C38]);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      remoteQueue = self->_remoteQueue;
      valuePtr = 136317698;
      v23 = v15;
      v24 = 2080;
      v25 = "[VCVideoStream collectImageQueuePerformanceMetrics:]";
      v26 = 1024;
      v27 = 2662;
      v28 = 2048;
      v29 = remoteQueue;
      v30 = 1024;
      v31 = v7;
      v32 = 1024;
      v33 = v9;
      v34 = 2048;
      v35 = 0;
      v36 = 2048;
      v37 = 0;
      v38 = 2048;
      v39 = 0;
      v40 = 1024;
      v41 = 0;
      v42 = 2112;
      v43 = Value;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d VCImageQueue[%p] Displayed=%d, Dropped=%d, MinPresentationLatency=%f, MaxPresentationLatency=%f, AvgPresentationLatency=%f, LatencySampleCount=%d, DisplayedCountHistogram:%@", &valuePtr, 0x60u);
    }
  }

  if (theDict)
  {
    CFRelease(theDict);
  }
}

- (void)setupReportingAgent
{
  if (![(VCObject *)self reportingAgent])
  {
    self->super._isReportingAgentOwner = 1;
    ReportingClientType = _VCVideoStream_GetReportingClientType(self);
    [(VCVideoStream *)self getReportingServiceName];
    -[VCMediaStream applyClientSessionID:clientUserInfo:](self, "applyClientSessionID:clientUserInfo:", ReportingClientType, [MEMORY[0x1E695DF90] dictionary]);
    [(VCVideoStream *)self getReportingClientName];
    Agent = reportingCreateAgent();
    [(VCObject *)self setReportingAgent:Agent];
    if (Agent)
    {
      CFRelease(Agent);
    }

    [(VCObject *)self reportingAgent];
    self->_reportingModuleID = VCReporting_GetDynamicReportingModuleID();
    [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
    [(VCObject *)self reportingAgent];
    [(VCVideoStream *)self getReportingClientName];
    [(VCVideoStream *)self getClientSpecificUserInfo];
    reportingSetUserInfo();
  }

  if ([VCVideoStream shouldRegisterReportingForStreamType:self->_type])
  {
    [(VCObject *)self reportingAgent];
    reportingRegisterPeriodicTaskWeak();
  }

  operatingMode = self->super._operatingMode;
  if (operatingMode != 1 && operatingMode != 6)
  {
    [(VCMediaStream *)self registerAggregationHandlers];
  }
}

void __36__VCVideoStream_setupReportingAgent__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (![a2 count])
  {
    [*(a1 + 32) strong];
    v3 = objc_opt_class();
    if (v3 == [*(a1 + 32) strong])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __36__VCVideoStream_setupReportingAgent__block_invoke_cold_1();
        }
      }
    }

    else
    {
      [*(a1 + 32) strong];
      if (objc_opt_respondsToSelector())
      {
        v4 = [objc_msgSend(*(a1 + 32) "strong")];
      }

      else
      {
        v4 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v7 = [*(a1 + 32) strong];
          v8 = 136316162;
          v9 = v5;
          v10 = 2080;
          v11 = "[VCVideoStream setupReportingAgent]_block_invoke";
          v12 = 1024;
          v13 = 2691;
          v14 = 2112;
          v15 = v4;
          v16 = 2048;
          v17 = v7;
          _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, "VCVideoStream [%s] %s:%d %@(%p) RTCReporting: can't configure the reporting agent.", &v8, 0x30u);
        }
      }
    }
  }
}

uint64_t __36__VCVideoStream_setupReportingAgent__block_invoke_261(uint64_t a1, void *a2, uint64_t a3)
{
  VCMediaStream_Lock(a2);
  if ([a2 state] == 2)
  {
    [a2 gatherRealtimeStats:a3];
  }

  return VCMediaStream_Unlock(a2);
}

- (void)gatherRealtimeStats:(__CFDictionary *)stats
{
  if (stats)
  {
    [(VCObject *)self reportingAgent];
    v5 = selectDestinationForRTMetrics();
    [(VCVideoStream *)self collectImageQueuePerformanceMetrics:v5];
    [(VCMediaStream *)self collectChannelSequenceMetrics:v5];
    v6 = [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
    if (v6)
    {
      v7 = v6;
      VCUtil_AppendFromDictionary(stats, v6);

      CFRelease(v7);
    }
  }
}

- (unsigned)networkMTU
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->super._transportSetupInfo.setupType == 5)
  {
    transportSession = self->super._transportSession;

    return [(VCTransportSession *)transportSession networkMTU];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315906;
        v7 = v4;
        v8 = 2080;
        v9 = "[VCVideoStream networkMTU]";
        v10 = 1024;
        v11 = 2736;
        v12 = 1024;
        v13 = 1280;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d Cannot determine MTU. Returning minMTU=%d as a fallback", &v6, 0x22u);
      }
    }

    return 1280;
  }
}

- (BOOL)isTransportIPv6
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->super._transportSetupInfo.setupType == 5)
  {
    transportSession = self->super._transportSession;

    return [(VCTransportSession *)transportSession isIPv6];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315650;
        v7 = v4;
        v8 = 2080;
        v9 = "[VCVideoStream isTransportIPv6]";
        v10 = 1024;
        v11 = 2744;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d Cannot determine isIPv6. Returning YES as a fallback", &v6, 0x1Cu);
      }
    }

    return 1;
  }
}

- (void)setupInternalRedundancyControllerWithStreamConfig:(id)config
{
  v25 = *MEMORY[0x1E69E9840];
  redundancyController = self->_redundancyController;
  if (redundancyController)
  {
    goto LABEL_9;
  }

  maxRedundancyPercentage = [config maxRedundancyPercentage];
  redundancyControllerFECVersion = [config redundancyControllerFECVersion];
  isFECFrameBasedEnabled = [config isFECFrameBasedEnabled];
  v9 = [VCRedundancyControllerVideo alloc];
  redundancyControllerMode = [config redundancyControllerMode];
  v11 = 0xAA00000000000000;
  if (isFECFrameBasedEnabled)
  {
    v11 = 0xAA01000000000000;
  }

  0x100000000 = [(VCRedundancyControllerVideo *)v9 initWithDelegate:self mode:redundancyControllerMode parameters:0, v11 | (redundancyControllerFECVersion << 40) | maxRedundancyPercentage | 0x100000000];
  self->_redundancyController = 0x100000000;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (0x100000000)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = self->_redundancyController;
        v17 = 136315906;
        v18 = v14;
        v19 = 2080;
        v20 = "[VCVideoStream setupInternalRedundancyControllerWithStreamConfig:]";
        v21 = 1024;
        v22 = 2764;
        v23 = 2112;
        v24 = v16;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d Set up and using internal redundancy controller=%@", &v17, 0x26u);
      }
    }
  }

  else
  {
    [VCVideoStream setupInternalRedundancyControllerWithStreamConfig:?];
  }

  redundancyController = self->_redundancyController;
  if (redundancyController)
  {
LABEL_9:
    [(VCVideoStream *)redundancyController setupInternalRedundancyControllerWithStreamConfig:config];
  }
}

- (void)onStartWithCompletionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  v25 = 0;
  self->_lastDecodedVideoFrameTime = 0.0;
  _VCVideoStream_CacheRemoteVideoFrame(self, 0);
  [(VCVideoStream *)self destroyVideoModules];
  if (self->super._operatingMode == 6)
  {
    if ((self->_reportingModuleID + 1) <= 1)
    {
      [(VCObject *)self reportingAgent];
      self->_reportingModuleID = VCReporting_GetDynamicReportingModuleID();
      [(VCObject *)self reportingAgent];
      [(VCVideoStream *)self getReportingServiceName];
      [(VCVideoStream *)self getClientSpecificUserInfo];
      reportingCacheModuleSpecificInfo();
    }
  }

  else
  {
    [(VCVideoStream *)self setupReportingAgent];
  }

  self->_reportingDefaultRealtimePeriod = reportingDefaultRealtimePeriod();
  defaultStreamConfig = [(VCMediaStream *)self defaultStreamConfig];
  if ([(VCVideoStream *)self isLowLatencyStreamType])
  {
    [(VCMediaStreamConfig *)defaultStreamConfig setRecommendedMTU:[(VCVideoStream *)self networkMTU]];
  }

  recommendedMTU = [(VCMediaStreamConfig *)defaultStreamConfig recommendedMTU];
  if (recommendedMTU >= 0x5AA)
  {
    v7 = 1450;
  }

  else
  {
    v7 = recommendedMTU;
  }

  [(VCMediaStreamConfig *)defaultStreamConfig setRecommendedMTU:v7];
  [(VCVideoStream *)self startRateAdaptationWithStreamConfig:defaultStreamConfig];
  if (![(VCMediaStream *)self isSendingMedia])
  {
    goto LABEL_14;
  }

  [(VCVideoStream *)self initVideoTransmitter];
  if (![(VCMediaStreamConfig *)defaultStreamConfig resetSendRTPTimestampOnStop])
  {
    *buf = *(&self->_isTemporalScalingEnabled + 2);
    *&buf[16] = *&self->_lastSentFrameHostTimeBeforeStop.flags;
    [(VCVideoTransmitterBase *)self->_videoTransmitter setLastFrameTime:buf];
    [(VCVideoTransmitterBase *)self->_videoTransmitter setLastRTPTimestamp:HIDWORD(self->_lastSentFrameHostTimeBeforeStop.epoch)];
  }

  [(VCVideoTransmitterBase *)self->_videoTransmitter startVideo];
  if (![(VCVideoStream *)self registerForVideoCapture])
  {
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", &v25, 32016, 109, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCVideoStream.m", 2818], @"Screen capture failed", @"Screen capture is busy or not permitted");
    v8 = 0;
  }

  else
  {
LABEL_14:
    v8 = 1;
  }

  if (self->_type && (videoTransmitter = self->_videoTransmitter) != 0)
  {
    videoTransmitterHandle = [(VCVideoTransmitterBase *)videoTransmitter videoTransmitterHandle];
  }

  else
  {
    videoTransmitterHandle = 0xFFFFFFFFLL;
  }

  [(VCVideoStream *)self setupVideoReceiver:defaultStreamConfig withTransmitterHandle:videoTransmitterHandle];
  [(VCVideoStream *)self updateVideoReceiver:defaultStreamConfig];
  if ([(VCMediaStreamConfig *)defaultStreamConfig syncSource])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        syncSource = [(VCMediaStreamConfig *)defaultStreamConfig syncSource];
        *buf = 136316162;
        *&buf[4] = v11;
        *&buf[12] = 2080;
        *&buf[14] = "[VCVideoStream onStartWithCompletionHandler:]";
        *&buf[22] = 1024;
        v27 = 2833;
        v28 = 2048;
        selfCopy = self;
        v30 = 2048;
        selfCopy2 = syncSource;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d VCVideoStream[%p]: Starting synchronization using syncSource=%p", buf, 0x30u);
      }
    }

    [(VCVideoStream *)self startSynchronization:[(VCMediaStreamConfig *)defaultStreamConfig syncSource]];
  }

  startVideo = [(VCVideoReceiverBase *)self->_videoReceiver startVideo];
  if (startVideo < 0)
  {
    v20 = startVideo;
    v25 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32017 detailedCode:1302 returnCode:startVideo filePath:objc_msgSend(MEMORY[0x1E696AEC0] description:"stringWithFormat:" reason:{@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCVideoStream.m", 2842), @"VCVideoSteam start failed", @"VideoReceiver startVideo failed"}];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCVideoStream onStartWithCompletionHandler:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v21 = [(VCVideoStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v21 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          *&buf[4] = v22;
          *&buf[12] = 2080;
          *&buf[14] = "[VCVideoStream onStartWithCompletionHandler:]";
          *&buf[22] = 1024;
          v27 = 2845;
          v28 = 2112;
          selfCopy = v21;
          v30 = 2048;
          selfCopy2 = self;
          v32 = 1024;
          v33 = v20;
          _os_log_error_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_ERROR, "VCVideoStream [%s] %s:%d %@(%p) [_videoReceiver startVideo] failed, result=%x", buf, 0x36u);
        }
      }
    }

    v8 = 0;
  }

  else
  {
    if ([(VCVideoStream *)self isScreenConfig:defaultStreamConfig])
    {
      [(VCImageQueue *)self->_remoteQueue stop];
    }

    [(VCImageQueue *)self->_remoteQueue start];
    if (self->super._operatingMode != 6)
    {
      [(VCObject *)self reportingAgent];
      reportingStartTimer();
    }

    _VCVideoStream_ReportingVideoStreamEventWithVideoAttributesAndStreamID(self, 201, 0, 0);
    defaultStreamConfig2 = [(VCMediaStream *)self defaultStreamConfig];
    if ([(VCMediaStreamConfig *)defaultStreamConfig2 type]== 5 && (([(VCMediaStreamConfig *)defaultStreamConfig2 fecEnabled]& 1) != 0 || [(VCMediaStreamConfig *)defaultStreamConfig2 rtxEnabled]))
    {
      v16 = *MEMORY[0x1E695E480];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if ([(VCMediaStreamConfig *)defaultStreamConfig2 fecEnabled])
      {
        *buf = [(VCMediaStreamConfig *)defaultStreamConfig2 fecEnabled];
        v18 = CFNumberCreate(v16, kCFNumberIntType, buf);
        CFDictionaryAddValue(Mutable, @"FecRDKScreenSharing", v18);
        CFRelease(v18);
      }

      if ([(VCMediaStreamConfig *)defaultStreamConfig2 rtxEnabled])
      {
        *buf = [(VCMediaStreamConfig *)defaultStreamConfig2 rtxEnabled];
        v19 = CFNumberCreate(v16, kCFNumberIntType, buf);
        CFDictionaryAddValue(Mutable, @"RtxRDKScreenSharing", v19);
        CFRelease(v19);
      }

      reportingFeatureConfigEvent();
      CFRelease(Mutable);
    }
  }

  if (v25)
  {
    if ([(VCMediaStream *)self shouldStopReportingTimer])
    {
      [(VCObject *)self reportingAgent];
      reportingStopTimer();
    }

    if ([(VCMediaStream *)self isSendingMedia])
    {
      [(VCVideoStream *)self deregisterForVideoCapture];
    }

    [(VCImageQueue *)self->_remoteQueue stop];
    [(VCVideoStream *)self destroyVideoModules];
    v24 = v25;
  }

  else
  {
    v24 = 0;
  }

  (*(handler + 2))(handler, v8, v24);
}

- (void)onStopWithCompletionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  defaultStreamConfig = [(VCMediaStream *)self defaultStreamConfig];
  if ([(VCMediaStreamConfig *)defaultStreamConfig syncSource])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 136316162;
        *&v11[4] = v6;
        *&v11[12] = 2080;
        *&v11[14] = "[VCVideoStream onStopWithCompletionHandler:]";
        *&v11[22] = 1024;
        v12 = 2883;
        v13 = 2048;
        selfCopy = self;
        v15 = 2048;
        syncSource = [(VCMediaStreamConfig *)defaultStreamConfig syncSource];
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d VCVideoStream[%p]: Stopping synchronization using syncSource=%p", v11, 0x30u);
      }
    }

    [(VCVideoStream *)self stopSynchronization];
  }

  if ([(VCMediaStream *)self shouldStopReportingTimer])
  {
    [(VCObject *)self reportingAgent];
    reportingStopTimer();
  }

  if ([VCVideoStream shouldRegisterReportingForStreamType:self->_type])
  {
    [(VCObject *)self reportingAgent];
    reportingUnregisterPeriodicTask();
  }

  operatingMode = self->super._operatingMode;
  if (operatingMode != 1 && operatingMode != 6)
  {
    [(VCMediaStream *)self deregisterAggregationHandlers];
  }

  _VCVideoStream_ReportingAlgosVideoStreamEvent(self);
  _VCVideoStream_ReportingVideoStreamEventWithVideoAttributesAndStreamID(self, 202, 0, 0);
  if (([(VCMediaStreamConfig *)defaultStreamConfig resetSendRTPTimestampOnStop]& 1) == 0)
  {
    videoTransmitter = self->_videoTransmitter;
    if (videoTransmitter)
    {
      [(VCVideoTransmitterBase *)videoTransmitter lastFrameTime];
    }

    else
    {
      memset(v11, 0, sizeof(v11));
    }

    *(&self->_isTemporalScalingEnabled + 2) = *v11;
    *&self->_lastSentFrameHostTimeBeforeStop.flags = *&v11[16];
    HIDWORD(self->_lastSentFrameHostTimeBeforeStop.epoch) = [(VCVideoTransmitterBase *)self->_videoTransmitter lastRTPTimestamp:*v11];
  }

  VCMediaStream_Unlock(self);
  [(VCVideoStream *)self destroyVideoModules];
  _VCVideoStream_CacheRemoteVideoFrame(self, 0);
  [(VCVideoStream *)self resetRemoteMediaStalled];
  VCMediaStream_Lock(self);
  if ([(VCMediaStream *)self isSendingMedia]&& (self->_type != 3 || [(VCVideoStream *)self isScreenConfig:[(VCMediaStream *)self defaultStreamConfig]]))
  {
    [(VCVideoStream *)self deregisterForVideoCapture];
  }

  [(VCImageQueue *)self->_remoteQueue pause];
  [(VCVideoStream *)self stopRateAdaptation];
  (*(handler + 2))(handler, 1, 0);
}

- (void)onPauseWithCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_type == 2)
  {
    [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  }

  else
  {
    defaultStreamConfig = [(VCMediaStream *)self defaultStreamConfig];
    if ([(VCMediaStreamConfig *)defaultStreamConfig syncSource])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136316162;
          v9 = v6;
          v10 = 2080;
          v11 = "[VCVideoStream onPauseWithCompletionHandler:]";
          v12 = 1024;
          v13 = 2941;
          v14 = 2048;
          selfCopy = self;
          v16 = 2048;
          syncSource = [(VCMediaStreamConfig *)defaultStreamConfig syncSource];
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d VCVideoStream[%p]: Stopping synchronization using syncSource=%p", &v8, 0x30u);
        }
      }

      [(VCVideoStream *)self stopSynchronization];
    }

    [(VCVideoTransmitterBase *)self->_videoTransmitter stopVideo];
    [(VCImageQueue *)self->_remoteQueue pause];
    if ([(VCImageQueue *)self->_remoteQueue usingRemoteQueue])
    {
      [VCRemoteVideoManager_DefaultManager() remoteVideoDidPause:1 streamToken:{-[VCImageQueue streamToken](self->_remoteQueue, "streamToken")}];
    }

    [(VCVideoStream *)self stopRateAdaptation];
  }

  _VCVideoStream_ReportingVideoStreamEventWithVideoAttributesAndStreamID(self, 3, 0, 0);
  _VCVideoStream_ReportingVideoStreamEventWithVideoAttributesAndStreamID(self, 203, 0, 0);
  (*(handler + 2))(handler, 1, 0);
}

- (void)onResumeWithCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  self->_lastDecodedVideoFrameTime = 0.0;
  if (self->_type == 2)
  {
    [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  }

  else
  {
    defaultStreamConfig = [(VCMediaStream *)self defaultStreamConfig];
    if ([(VCMediaStreamConfig *)defaultStreamConfig syncSource])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136316162;
          v9 = v6;
          v10 = 2080;
          v11 = "[VCVideoStream onResumeWithCompletionHandler:]";
          v12 = 1024;
          v13 = 2972;
          v14 = 2048;
          selfCopy = self;
          v16 = 2048;
          syncSource = [(VCMediaStreamConfig *)defaultStreamConfig syncSource];
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d VCVideoStream[%p]: Starting synchronization using syncSource=%p", &v8, 0x30u);
        }
      }

      [(VCVideoStream *)self startSynchronization:[(VCMediaStreamConfig *)defaultStreamConfig syncSource]];
    }

    [(VCVideoStream *)self startRateAdaptationWithStreamConfig:defaultStreamConfig];
    [(VCVideoTransmitterBase *)self->_videoTransmitter startVideo];
    [(VCImageQueue *)self->_remoteQueue start];
    if ([(VCImageQueue *)self->_remoteQueue usingRemoteQueue])
    {
      [VCRemoteVideoManager_DefaultManager() remoteVideoDidPause:0 streamToken:{-[VCImageQueue streamToken](self->_remoteQueue, "streamToken")}];
    }

    _VCVideoStream_ReportingAlgosVideoStreamEvent(self);
    _VCVideoStream_ReportingVideoStreamEventWithVideoAttributesAndStreamID(self, 204, 0, 0);
  }

  (*(handler + 2))(handler, 1, 0);
}

- (void)onSendRTCPPacket
{
  v7 = *MEMORY[0x1E69E9840];
  defaultTransport = [(VCMediaStream *)self defaultTransport];
  streamDirection = [(VCMediaStreamTransport *)defaultTransport streamDirection];
  if ((streamDirection & 0xFFFFFFFFFFFFFFFDLL) == 1 && [(VCMediaStreamTransport *)defaultTransport isRTCPEnabled])
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    [(VCMediaStream *)self sendControlPacketWithParameters:v5];
  }

  if ((streamDirection & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [(VCVideoReceiverBase *)self->_videoReceiver rtcpSendIntervalElapsed];
  }
}

- (unsigned)getMaxTemporalBitrateForStreamIDs:(id)ds
{
  v39 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  transportArray = self->super._transportArray;
  v6 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v35 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v36;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(transportArray);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        idsStreamId = [v11 idsStreamId];
        if ([objc_msgSend(ds "firstObject")] == idsStreamId)
        {
          v8 = [objc_msgSend(v11 "streamConfig")];
        }
      }

      v7 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v35 objects:v34 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136315906;
        v23 = v14;
        v24 = 2080;
        v25 = "[VCVideoStream getMaxTemporalBitrateForStreamIDs:]";
        v26 = 1024;
        v27 = 3033;
        v28 = 1024;
        LODWORD(v29) = v8;
        v16 = "VCVideoStream [%s] %s:%d Max temporal bitrate=%d";
        v17 = v15;
        v18 = 34;
LABEL_22:
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, &v22, v18);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [(VCVideoStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v13 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136316418;
        v23 = v19;
        v24 = 2080;
        v25 = "[VCVideoStream getMaxTemporalBitrateForStreamIDs:]";
        v26 = 1024;
        v27 = 3033;
        v28 = 2112;
        v29 = v13;
        v30 = 2048;
        selfCopy = self;
        v32 = 1024;
        v33 = v8;
        v16 = "VCVideoStream [%s] %s:%d %@(%p) Max temporal bitrate=%d";
        v17 = v20;
        v18 = 54;
        goto LABEL_22;
      }
    }
  }

  return v8;
}

- (void)setTransmitterStreamIDs:(id)ds repairStreamIDs:(id)iDs
{
  v58 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [ds count];
  v9 = (2 * v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v34 - v9;
  if (v8)
  {
    memset(&v34 - v9, 170, 2 * v8);
  }

  v38 = v10;
  selfCopy = self;
  defaultStreamConfig = [(VCMediaStream *)self defaultStreamConfig];
  if ([(VCMediaStreamConfig *)defaultStreamConfig temporalScalingEnabled])
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    transportArray = selfCopy->super._transportArray;
    v12 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v54 objects:v53 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v55;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v55 != v14)
          {
            objc_enumerationMutation(transportArray);
          }

          [v7 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", objc_msgSend(*(*(&v54 + 1) + 8 * i), "idsStreamId"))}];
        }

        v13 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v54 objects:v53 count:16];
      }

      while (v13);
    }
  }

  if ([ds count] >= 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v39 = sel_logPrefix;
    *&v16 = 136316162;
    v34 = v16;
    *&v16 = 136316674;
    v35 = v16;
    v20 = selfCopy;
    v21 = v38;
    while (1)
    {
      v22 = [objc_msgSend(ds objectAtIndexedSubscript:{v17, v34, *(&v34 + 1)), "unsignedIntegerValue"}];
      if (!-[VCMediaStreamConfig temporalScalingEnabled](defaultStreamConfig, "temporalScalingEnabled") || ![v7 containsObject:{objc_msgSend(ds, "objectAtIndexedSubscript:", v17)}])
      {
        goto LABEL_28;
      }

      if ((v18 & 1) == 0)
      {
        break;
      }

      v18 = 1;
LABEL_29:
      if (++v17 >= [ds count])
      {
        goto LABEL_32;
      }
    }

    if (objc_opt_class() == v20)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_27;
      }

      v37 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v29 = [objc_msgSend(v7 "firstObject")];
      v42 = v34;
      v43 = v37;
      v44 = 2080;
      v45 = "[VCVideoStream setTransmitterStreamIDs:repairStreamIDs:]";
      v46 = 1024;
      v47 = 3057;
      v48 = 1024;
      *v49 = v22;
      v21 = v38;
      v49[2] = 1024;
      *&v49[3] = v29;
      v25 = v28;
      v26 = "VCVideoStream [%s] %s:%d Replacing temporal streamID=%d->%d";
      v27 = 40;
    }

    else
    {
      v23 = &stru_1F570E008;
      if (objc_opt_respondsToSelector())
      {
        v23 = [(VCVideoStream *)v20 performSelector:v39];
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_27;
      }

      v36 = VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v24 = [objc_msgSend(v7 "firstObject")];
      v42 = v35;
      v43 = v36;
      v44 = 2080;
      v45 = "[VCVideoStream setTransmitterStreamIDs:repairStreamIDs:]";
      v46 = 1024;
      v47 = 3057;
      v48 = 2112;
      *v49 = v23;
      v49[4] = 2048;
      *&v49[5] = v20;
      v49[9] = 1024;
      v50 = v22;
      v25 = v37;
      v21 = v38;
      v51 = 1024;
      v52 = v24;
      v26 = "VCVideoStream [%s] %s:%d %@(%p) Replacing temporal streamID=%d->%d";
      v27 = 60;
    }

    _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, v26, &v42, v27);
LABEL_27:
    v22 = [objc_msgSend(v7 "firstObject")];
    v18 = 1;
LABEL_28:
    *&v21[2 * v19++] = v22;
    goto LABEL_29;
  }

  v19 = 0;
  v21 = v38;
LABEL_32:
  v30 = [iDs count];
  v31 = v30;
  v32 = &v34 - ((2 * v30 + 15) & 0x3F0);
  if (v30)
  {
    memset(&v34 - ((2 * v30 + 15) & 0x3F0), 170, 2 * v30);
  }

  if ([iDs count] >= 1)
  {
    v33 = 0;
    do
    {
      *&v32[2 * v33] = [objc_msgSend(iDs objectAtIndexedSubscript:{v33), "unsignedIntegerValue"}];
      ++v33;
    }

    while (v33 < [iDs count]);
  }

  [(VCVideoTransmitterBase *)selfCopy->_videoTransmitter setStreamIDs:v21 numOfStreamIDs:v19 repairedStreamIDs:v32 numOfRepairedStreamIDs:v31];
}

- (void)setStreamIDs:(id)ds repairStreamIDs:(id)iDs
{
  v63 = *MEMORY[0x1E69E9840];
  defaultStreamConfig = [(VCMediaStream *)self defaultStreamConfig];
  iDsCopy = iDs;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      __str = 0;
      v8 = ds ? [objc_msgSend(ds "description")] : "<nil>";
      asprintf(&__str, "%s", v8);
      if (__str)
      {
        dsCopy2 = ds;
        __lasts = 0;
        v15 = strtok_r(__str, "\n", &__lasts);
        v16 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v17 = VRTraceErrorLogLevelToCSTR();
            v18 = *v16;
            if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v54 = v17;
              v55 = 2080;
              v56 = "[VCVideoStream setStreamIDs:repairStreamIDs:]";
              v57 = 1024;
              v58 = 3077;
              v59 = 2080;
              v60 = "streamIDs=";
              v61 = 2080;
              v62 = v15;
              _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v15 = strtok_r(0, "\n", &__lasts);
        }

        while (v15);
        goto LABEL_26;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCVideoStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      __str = 0;
      uTF8String = [(__CFString *)v7 UTF8String];
      v10 = ds ? [objc_msgSend(ds "description")] : "<nil>";
      asprintf(&__str, "%s(%p) %s", uTF8String, self, v10);
      if (__str)
      {
        dsCopy2 = ds;
        __lasts = 0;
        v11 = strtok_r(__str, "\n", &__lasts);
        v12 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v13 = VRTraceErrorLogLevelToCSTR();
            v14 = *v12;
            if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v54 = v13;
              v55 = 2080;
              v56 = "[VCVideoStream setStreamIDs:repairStreamIDs:]";
              v57 = 1024;
              v58 = 3077;
              v59 = 2080;
              v60 = "streamIDs=";
              v61 = 2080;
              v62 = v11;
              _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v11 = strtok_r(0, "\n", &__lasts);
        }

        while (v11);
LABEL_26:
        free(__str);
        ds = dsCopy2;
      }
    }
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      __str = 0;
      dsCopy4 = ds;
      if (iDs)
      {
        v20 = [objc_msgSend(iDs "description")];
      }

      else
      {
        v20 = "<nil>";
      }

      asprintf(&__str, "%s", v20);
      if (!__str)
      {
        goto LABEL_53;
      }

      __lasts = 0;
      v27 = strtok_r(__str, "\n", &__lasts);
      v28 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v29 = VRTraceErrorLogLevelToCSTR();
          v30 = *v28;
          if (os_log_type_enabled(*v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v54 = v29;
            v55 = 2080;
            v56 = "[VCVideoStream setStreamIDs:repairStreamIDs:]";
            v57 = 1024;
            v58 = 3078;
            v59 = 2080;
            v60 = "repairStreamIDs=";
            v61 = 2080;
            v62 = v27;
            _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v27 = strtok_r(0, "\n", &__lasts);
      }

      while (v27);
      goto LABEL_52;
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v19 = [(VCVideoStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v19 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      __str = 0;
      uTF8String2 = [(__CFString *)v19 UTF8String];
      dsCopy4 = ds;
      if (iDs)
      {
        v22 = [objc_msgSend(iDs "description")];
      }

      else
      {
        v22 = "<nil>";
      }

      asprintf(&__str, "%s(%p) %s", uTF8String2, self, v22);
      if (!__str)
      {
        goto LABEL_53;
      }

      __lasts = 0;
      v23 = strtok_r(__str, "\n", &__lasts);
      v24 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v25 = VRTraceErrorLogLevelToCSTR();
          v26 = *v24;
          if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v54 = v25;
            v55 = 2080;
            v56 = "[VCVideoStream setStreamIDs:repairStreamIDs:]";
            v57 = 1024;
            v58 = 3078;
            v59 = 2080;
            v60 = "repairStreamIDs=";
            v61 = 2080;
            v62 = v23;
            _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v23 = strtok_r(0, "\n", &__lasts);
      }

      while (v23);
LABEL_52:
      free(__str);
LABEL_53:
      ds = dsCopy4;
    }
  }

  v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
  dsCopy5 = ds;
  [v31 addObjectsFromArray:ds];
  [v31 addObjectsFromArray:iDs];
  if ([(VCMediaStreamConfig *)defaultStreamConfig temporalScalingEnabled])
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    transportArray = self->super._transportArray;
    v34 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v49 objects:v48 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v50;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v50 != v36)
          {
            objc_enumerationMutation(transportArray);
          }

          v38 = *(*(&v49 + 1) + 8 * i);
          if (([v31 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", objc_msgSend(v38, "idsStreamId"))}] & 1) == 0)
          {
            [v31 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", objc_msgSend(v38, "idsStreamId"))}];
          }
        }

        v35 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v49 objects:v48 count:16];
      }

      while (v35);
    }
  }

  [(VCVideoStream *)self setupCompoundStreamIDsWithStreamIDs:v31];

  if ([(VCMediaStreamConfig *)defaultStreamConfig temporalScalingEnabled])
  {
    v39 = [(VCVideoStream *)self getMaxTemporalBitrateForStreamIDs:dsCopy5];
    targetBitrate = [(VCVideoTransmitterBase *)self->_videoTransmitter targetBitrate];
    if (v39 >= targetBitrate)
    {
      v41 = targetBitrate;
    }

    else
    {
      v41 = v39;
    }

    [(VCVideoTransmitterBase *)self->_videoTransmitter setTargetBitrate:v41];
  }

  [(VCVideoStream *)self setTransmitterStreamIDs:dsCopy5 repairStreamIDs:iDsCopy];
}

- (void)setPeerSubscribedStreamIDs:(id)ds
{
  v59 = *MEMORY[0x1E69E9840];
  defaultStreamConfig = [(VCMediaStream *)self defaultStreamConfig];
  selfCopy = self;
  v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(VCMediaStreamConfig *)defaultStreamConfig temporalScalingEnabled]&& (v57 = 0u, v58 = 0u, v55 = 0u, v56 = 0u, transportArray = self->super._transportArray, (v7 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v55 objects:v54 count:16]) != 0))
  {
    v8 = v7;
    v9 = 0;
    txMaxBitrate = 0;
    v11 = *v56;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v56 != v11)
        {
          objc_enumerationMutation(transportArray);
        }

        v13 = *(*(&v55 + 1) + 8 * i);
        if ([ds containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", objc_msgSend(v13, "idsStreamId", selfCopy))}])
        {
          streamConfig = [v13 streamConfig];
          [v39 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", objc_msgSend(streamConfig, "txMaxBitrate"))}];
          txMaxBitrate = [streamConfig txMaxBitrate];
          v9 = [objc_msgSend(streamConfig "multiwayConfig")];
        }
      }

      v8 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v55 objects:v54 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
    txMaxBitrate = 0;
  }

  for (j = [v39 count]; j < objc_msgSend(v38[69], "count"); ++j)
  {
    [v39 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", txMaxBitrate)}];
  }

  v16 = [v39 count];
  if (v16 != [v38[69] count])
  {
    if (objc_opt_class() == v38)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v39 count];
          v21 = [v38[69] count];
          *buf = 136316162;
          v41 = v18;
          v42 = 2080;
          v43 = "[VCVideoStream setPeerSubscribedStreamIDs:]";
          v44 = 1024;
          v45 = 3130;
          v46 = 2048;
          v47 = v20;
          v48 = 2048;
          v49 = v21;
          v22 = "VCVideoStream [%s] %s:%d Bitrate array size (%lu) does not match transport array size (%lu)";
          v23 = v19;
          v24 = 48;
LABEL_26:
          _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v17 = [v38 performSelector:sel_logPrefix];
      }

      else
      {
        v17 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v39 count];
          v28 = [v38[69] count];
          *buf = 136316674;
          v41 = v25;
          v42 = 2080;
          v43 = "[VCVideoStream setPeerSubscribedStreamIDs:]";
          v44 = 1024;
          v45 = 3130;
          v46 = 2112;
          v47 = v17;
          v48 = 2048;
          v49 = v38;
          v50 = 2048;
          v51 = v27;
          v52 = 2048;
          v53 = v28;
          v22 = "VCVideoStream [%s] %s:%d %@(%p) Bitrate array size (%lu) does not match transport array size (%lu)";
          v23 = v26;
          v24 = 68;
          goto LABEL_26;
        }
      }
    }
  }

  [v38[116] setTemporalBitrateArray:v39];
  [v38[116] setHighestActiveQualityIndex:v9];
  if (objc_opt_class() == v38)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_38;
    }

    v30 = VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    *buf = 136315906;
    v41 = v30;
    v42 = 2080;
    v43 = "[VCVideoStream setPeerSubscribedStreamIDs:]";
    v44 = 1024;
    v45 = 3136;
    v46 = 2112;
    v47 = v39;
    v32 = "VCVideoStream [%s] %s:%d Setting temporal stream bitrate array to %@";
    v33 = v31;
    v34 = 38;
    goto LABEL_37;
  }

  if (objc_opt_respondsToSelector())
  {
    v29 = [v38 performSelector:sel_logPrefix];
  }

  else
  {
    v29 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v35 = VRTraceErrorLogLevelToCSTR();
    v36 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v41 = v35;
      v42 = 2080;
      v43 = "[VCVideoStream setPeerSubscribedStreamIDs:]";
      v44 = 1024;
      v45 = 3136;
      v46 = 2112;
      v47 = v29;
      v48 = 2048;
      v49 = v38;
      v50 = 2112;
      v51 = v39;
      v32 = "VCVideoStream [%s] %s:%d %@(%p) Setting temporal stream bitrate array to %@";
      v33 = v36;
      v34 = 58;
LABEL_37:
      _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, v32, buf, v34);
    }
  }

LABEL_38:
  if (v39)
  {
    CFRelease(v39);
  }
}

- (void)handleVTPSendFailedWithData:(void *)data
{
  if (data)
  {

    [VCVideoStream handleNWConnectionPacketEvent:"handleNWConnectionPacketEvent:eventType:" eventType:?];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCVideoStream handleVTPSendFailedWithData:];
    }
  }
}

- (void)setVideoStreamDelegate:(id)delegate delegateFunctions:(const tagVCVideoStreamDelegateRealtimeInstanceVTable *)functions
{
  v6[7] = *MEMORY[0x1E69E9840];
  if (functions)
  {
    delegateNotificationQueue = self->super._delegateNotificationQueue;
    remoteScreenAttributesDidChange = functions->remoteScreenAttributesDidChange;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58__VCVideoStream_setVideoStreamDelegate_delegateFunctions___block_invoke;
    v6[3] = &unk_1E85F50D8;
    v6[4] = self;
    v6[5] = delegate;
    v6[6] = remoteScreenAttributesDidChange;
    dispatch_async(delegateNotificationQueue, v6);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCVideoStream setVideoStreamDelegate:delegateFunctions:];
    }
  }
}

void *__58__VCVideoStream_setVideoStreamDelegate_delegateFunctions___block_invoke(void *result)
{
  *(result[4] + 1184) = result[5];
  *(result[4] + 1192) = result[6];
  return result;
}

- (void)setDidReceiveFirstFrame:(BOOL)frame
{
  VCMediaStream_Lock(self);
  if (!frame)
  {
    [VCRemoteVideoManager_DefaultManager() resetDidReceiveFirstFrameForStreamToken:self->super._streamToken];
  }

  self->_didReceiveFirstFrame = frame;

  VCMediaStream_Unlock(self);
}

- (BOOL)didReceiveFirstFrame
{
  VCMediaStream_Lock(self);
  didReceiveFirstFrame = self->_didReceiveFirstFrame;
  VCMediaStream_Unlock(self);
  return didReceiveFirstFrame;
}

- (int)remoteCameraReportingClientType
{
  if ([(NSString *)self->super._clientName isEqualToString:*MEMORY[0x1E6986740]])
  {
    return 16;
  }

  else
  {
    return 10;
  }
}

- (int)screenSharingReportingClientType
{
  if ([(NSString *)self->super._clientName isEqualToString:@"CoreDeviceScreenSharing"]|| [(NSString *)self->super._clientName isEqualToString:*MEMORY[0x1E6986768]])
  {
    return 13;
  }

  if ([(NSString *)self->super._clientName isEqualToString:@"RemoteDesktopScreenSharing"]|| [(NSString *)self->super._clientName isEqualToString:*MEMORY[0x1E69866E8]])
  {
    return 15;
  }

  if ([(NSString *)self->super._clientName isEqualToString:@"NearbyScreenSharing"])
  {
    return 19;
  }

  return -1;
}

- (int)secondDisplayReportingClientType
{
  if ([(NSString *)self->super._clientName isEqualToString:@"CompositorServices"])
  {
    return 24;
  }

  else
  {
    return 8;
  }
}

- (__CFString)getReportingServiceName
{
  if ([(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] type])
  {
    return @"Video";
  }

  else
  {
    return *MEMORY[0x1E6986720];
  }
}

- (__CFString)getReportingClientName
{
  type = [(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] type];
  v4 = &stru_1F570E008;
  if (type > 3)
  {
    if (type > 5)
    {
      if (type == 6)
      {
        v5 = MEMORY[0x1E6986738];
      }

      else
      {
        if (type != 7)
        {
          return v4;
        }

        v5 = MEMORY[0x1E6986728];
      }
    }

    else if (type == 4)
    {
      v6 = MEMORY[0x1E6986740];
      if ([(NSString *)self->super._clientName isEqualToString:*MEMORY[0x1E6986740]])
      {
        return *v6;
      }

      v5 = MEMORY[0x1E6986748];
    }

    else if ([(NSString *)self->super._clientName isEqualToString:@"CoreDeviceScreenSharing"])
    {
      v5 = MEMORY[0x1E69866F8];
    }

    else
    {
      v8 = MEMORY[0x1E6986768];
      if ([(NSString *)self->super._clientName isEqualToString:*MEMORY[0x1E6986768]])
      {
        return *v8;
      }

      if (![(NSString *)self->super._clientName isEqualToString:@"RemoteDesktopScreenSharing"])
      {
        clientName = self->super._clientName;
        v10 = MEMORY[0x1E69866E8];
        if ([(NSString *)clientName isEqualToString:*MEMORY[0x1E69866E8]])
        {
          return *v10;
        }

        return v4;
      }

      v5 = MEMORY[0x1E6986750];
    }

    return *v5;
  }

  if (type > 1)
  {
    if (type == 2)
    {
      v5 = MEMORY[0x1E69866D0];
    }

    else
    {
      v5 = MEMORY[0x1E6986730];
    }

    return *v5;
  }

  if (!type)
  {
    v5 = MEMORY[0x1E6986718];
    return *v5;
  }

  if (type == 1)
  {
    if ([(NSString *)self->super._clientName isEqualToString:@"CompositorServices"])
    {
      v5 = MEMORY[0x1E69866F0];
    }

    else
    {
      v5 = MEMORY[0x1E6986778];
    }

    return *v5;
  }

  return v4;
}

- (int)reportVideoStreamType
{
  defaultStreamConfig = [(VCMediaStream *)self defaultStreamConfig];
  type = [(VCMediaStreamConfig *)defaultStreamConfig type];
  if (type > 7)
  {
    return -1;
  }

  if (((1 << type) & 0x66) != 0)
  {
    return 1;
  }

  if (((1 << type) & 0x91) != 0)
  {
    return 0;
  }

  if ([(VCMediaStreamConfig *)defaultStreamConfig captureSource]== 2)
  {
    return 1;
  }

  return [(VCMediaStreamConfig *)defaultStreamConfig captureSource]== 1;
}

- (__CFDictionary)getClientSpecificUserInfo
{
  v29 = *MEMORY[0x1E69E9840];
  ReportingClientType = _VCVideoStream_GetReportingClientType(self);
  if (![(VCVideoStream *)self isClientSpecificUserInfoSupported:ReportingClientType])
  {
    return 0;
  }

  reportVideoStreamType = [(VCVideoStream *)self reportVideoStreamType];
  defaultStreamConfig = [(VCMediaStream *)self defaultStreamConfig];
  if (ReportingClientType == 6)
  {
    v21 = reportVideoStreamType;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    transportArray = self->super._transportArray;
    v8 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v25 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(transportArray);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          temporalScalingEnabled = [(VCMediaStreamConfig *)defaultStreamConfig temporalScalingEnabled];
          if (temporalScalingEnabled & v10)
          {
            v10 = 1;
          }

          else
          {
            v15 = temporalScalingEnabled;
            if ([v13 idsStreamId])
            {
              v16 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v13, "idsStreamId")}];
            }

            else
            {
              v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCMediaStreamMultiwayConfig streamGroupID](-[VCMediaStreamConfig multiwayConfig](defaultStreamConfig, "multiwayConfig"), "streamGroupID")}];
            }

            v10 |= v15;
            [v6 addObject:v16];
          }
        }

        v9 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v25 objects:v24 count:16];
      }

      while (v9);
    }

    [(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)defaultStreamConfig multiwayConfig] streamGroupID];
    v17 = reportingStreamGroupFromStreamGroupID();
    v22[0] = @"VCMediaStreamType";
    v23[0] = [MEMORY[0x1E696AD98] numberWithInt:v21];
    v22[1] = @"VCSUUID";
    v23[1] = [(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)defaultStreamConfig multiwayConfig] sessionId];
    v22[2] = @"VCSPUUID";
    v23[2] = [(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)defaultStreamConfig multiwayConfig] participantId];
    v22[3] = @"VCVSStreamIDs";
    v23[3] = [v6 componentsJoinedByString:{@", "}];
    v22[4] = @"VCMSDirection";
    v23[4] = [MEMORY[0x1E696AD98] numberWithInteger:{-[VCMediaStreamConfig direction](defaultStreamConfig, "direction")}];
    v22[5] = @"VCMSStreamGroup";
    v23[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v17];
    dictionary = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:6];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", reportVideoStreamType), @"VCMediaStreamType"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", self->super._streamToken), @"VCVSStreamToken"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", -[VCMediaStreamConfig direction](defaultStreamConfig, "direction")), @"VCMSDirection"}];
    callID = self->super._callID;
    if (callID)
    {
      [dictionary setObject:callID forKeyedSubscript:@"CallID"];
    }

    [(VCMediaStream *)self applyClientSessionID:_VCVideoStream_GetReportingClientType(self) clientUserInfo:dictionary];
  }

  return dictionary;
}

uint64_t __VCVideoStream_DidReceiveSampleBuffer_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 56);
    return [v3 vcMediaStream:v4 didReceiveFirstFrameWithTime:&v5];
  }

  return result;
}

- (void)vcVideoReceiver:(id)receiver requestKeyFrameGenerationWithStreamID:(unsigned __int16)d firType:(int)type
{
  dCopy = d;
  v34 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 136316162;
    v22 = v9;
    v23 = 2080;
    v24 = "[VCVideoStream vcVideoReceiver:requestKeyFrameGenerationWithStreamID:firType:]";
    v25 = 1024;
    v26 = 3855;
    v27 = 1024;
    *v28 = dCopy;
    *&v28[4] = 1024;
    *&v28[6] = type;
    v11 = "VCVideoStream [%s] %s:%d Requesting streamID:%hu to generate a key frame for FIRType:%d";
    v12 = v10;
    v13 = 40;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [(VCVideoStream *)self performSelector:sel_logPrefix];
  }

  else
  {
    v8 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316674;
      v22 = v14;
      v23 = 2080;
      v24 = "[VCVideoStream vcVideoReceiver:requestKeyFrameGenerationWithStreamID:firType:]";
      v25 = 1024;
      v26 = 3855;
      v27 = 2112;
      *v28 = v8;
      *&v28[8] = 2048;
      selfCopy = self;
      v30 = 1024;
      v31 = dCopy;
      v32 = 1024;
      typeCopy = type;
      v11 = "VCVideoStream [%s] %s:%d %@(%p) Requesting streamID:%hu to generate a key frame for FIRType:%d";
      v12 = v15;
      v13 = 60;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
    }
  }

LABEL_12:
  delegateNotificationQueue = self->super._delegateNotificationQueue;
  if (self->_lastDecodedVideoFrameTime == 0.0)
  {
    typeCopy2 = 4;
  }

  else
  {
    typeCopy2 = type;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __79__VCVideoStream_vcVideoReceiver_requestKeyFrameGenerationWithStreamID_firType___block_invoke;
  v18[3] = &unk_1E85F7440;
  v18[4] = self;
  v20 = dCopy;
  v19 = typeCopy2;
  dispatch_async(delegateNotificationQueue, v18);
}

uint64_t __79__VCVideoStream_vcVideoReceiver_requestKeyFrameGenerationWithStreamID_firType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 44);
  v5 = *(a1 + 40);

  return [v2 vcMediaStream:v3 requestKeyFrameGenerationWithStreamID:v4 firType:v5];
}

- (void)vcVideoReceiverRequestKeyFrame:(id)frame rtcpPSFBType:(unsigned int)type
{
  v36 = *MEMORY[0x1E69E9840];
  VCMediaStream_Lock(self);
  if (type == 1)
  {
    selfCopy2 = self;
    v7 = 224;
    goto LABEL_5;
  }

  if (type == 4)
  {
    selfCopy2 = self;
    v7 = 222;
LABEL_5:
    _VCVideoStream_ReportingVideoStreamEventWithVideoAttributesAndStreamID(selfCopy2, v7, 0, 0);
    goto LABEL_6;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v22 = 136316162;
      v23 = v20;
      v24 = 2080;
      v25 = "[VCVideoStream vcVideoReceiverRequestKeyFrame:rtcpPSFBType:]";
      v26 = 1024;
      v27 = 3873;
      v28 = 2048;
      selfCopy5 = self;
      v30 = 1024;
      LODWORD(v31) = type;
      _os_log_error_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_ERROR, "VCVideoStream [%s] %s:%d VCVideoStream[%p] requesting Key frame for unknown RTCP FB:%d", &v22, 0x2Cu);
    }
  }

LABEL_6:
  if (self->_videoTransmitter)
  {
    defaultStreamConfig = [(VCMediaStream *)self defaultStreamConfig];
    [(VCVideoReceiverBase *)self->_videoReceiver roundTripTime];
    v10 = v9;
    v11 = micro();
    [(VCVideoTransmitterBase *)self->_videoTransmitter lastKeyFrameSentTime];
    v13 = v11 - v12;
    v14 = [(VCMediaStreamConfig *)defaultStreamConfig keyFrameInterval]- v13;
    framerate = [(VCMediaStreamConfig *)defaultStreamConfig framerate];
    if (v13 <= v10 + v10 || v14 <= 2.0 / framerate)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136316674;
          v23 = v18;
          v24 = 2080;
          v25 = "[VCVideoStream vcVideoReceiverRequestKeyFrame:rtcpPSFBType:]";
          v26 = 1024;
          v27 = 3892;
          v28 = 2048;
          selfCopy5 = self;
          v30 = 2048;
          v31 = v10;
          v32 = 2048;
          v33 = v13;
          v34 = 2048;
          v35 = v14;
          _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d VCVideoStream[%p] Ignoring request to generate key frame. RTT:%.3f timeDelta:%.3f timeToNextKeyFrame:%.3f", &v22, 0x44u);
        }
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136316674;
          v23 = v16;
          v24 = 2080;
          v25 = "[VCVideoStream vcVideoReceiverRequestKeyFrame:rtcpPSFBType:]";
          v26 = 1024;
          v27 = 3889;
          v28 = 2048;
          selfCopy5 = self;
          v30 = 2048;
          v31 = v10;
          v32 = 2048;
          v33 = v13;
          v34 = 2048;
          v35 = v14;
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d VCVideoStream[%p] Requesting to generate key frame. RTT:%.3f timeDelta:%.3f timeToNextKeyFrame:%.3f", &v22, 0x44u);
        }
      }

      [(VCVideoTransmitterBase *)self->_videoTransmitter generateKeyFrameWithFIRType:0];
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCVideoStream vcVideoReceiverRequestKeyFrame:rtcpPSFBType:];
    }
  }

  VCMediaStream_Unlock(self);
}

- (void)vcVideoReceiver:(id)receiver downlinkQualityDidChange:(id)change
{
  block[6] = *MEMORY[0x1E69E9840];
  VCMediaStream_Lock(self);
  delegateNotificationQueue = self->super._delegateNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__VCVideoStream_vcVideoReceiver_downlinkQualityDidChange___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = change;
  dispatch_async(delegateNotificationQueue, block);
  VCMediaStream_Unlock(self);
}

uint64_t __58__VCVideoStream_vcVideoReceiver_downlinkQualityDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v3 vcMediaStream:v4 downlinkQualityDidChange:v5];
  }

  return result;
}

- (unsigned)vcVideoReceiver:(id)receiver receivedTMMBR:(unsigned int)r
{
  v4 = *&r;
  v13[1] = *MEMORY[0x1E69E9840];
  VCMediaStream_Lock(self);
  v6 = [(VCVideoTransmitterBase *)self->_videoTransmitter setTemporaryMaximumBitrate:v4];
  v7 = v6;
  if (self->_uplinkOperatingBitrate != v6)
  {
    self->_uplinkOperatingBitrate = v6;
    _VCVideoStream_ReportingVideoStreamEventWithVideoAttributesAndStreamID(self, 225, 0, 0);
    v12 = 0x1F57185C8;
    v13[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_uplinkOperatingBitrate];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    delegateNotificationQueue = self->super._delegateNotificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__VCVideoStream_vcVideoReceiver_receivedTMMBR___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = self;
    block[5] = v8;
    dispatch_async(delegateNotificationQueue, block);
  }

  VCMediaStream_Unlock(self);
  return v7;
}

uint64_t __47__VCVideoStream_vcVideoReceiver_receivedTMMBR___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v3 vcMediaStream:v4 uplinkQualityDidChange:v5];
  }

  return result;
}

- (void)vcVideoReceiver:(id)receiver didSwitchFromStreamID:(unsigned __int16)d toStreamID:(unsigned __int16)iD
{
  iDCopy = iD;
  v11 = *MEMORY[0x1E69E9840];
  delegateNotificationQueue = self->super._delegateNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__VCVideoStream_vcVideoReceiver_didSwitchFromStreamID_toStreamID___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  dCopy = d;
  iDCopy2 = iD;
  dispatch_async(delegateNotificationQueue, block);
  self->_currentStreamID = iDCopy;
  _VCVideoStream_ReportingVideoStreamEventWithVideoAttributesAndStreamID(self, 230, 0, [MEMORY[0x1E696AD98] numberWithUnsignedShort:iDCopy]);
}

uint64_t __66__VCVideoStream_vcVideoReceiver_didSwitchFromStreamID_toStreamID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 42);

    return [v3 vcMediaStream:v4 didSwitchFromStreamID:v5 toStreamID:v6];
  }

  return result;
}

- (BOOL)onVideoFrame:(opaqueCMSampleBuffer *)frame frameTime:(id *)time attribute:(id *)attribute
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = *time;
  VCVideoStream_OnVideoFrame(self, frame, &v6, attribute);
  return 1;
}

- (id)copyOnVideoFrameBlock
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__VCVideoStream_copyOnVideoFrameBlock__block_invoke;
  v3[3] = &unk_1E85F7BB0;
  v3[4] = self;
  return _Block_copy(v3);
}

uint64_t __38__VCVideoStream_copyOnVideoFrameBlock__block_invoke(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v6 = *a3;
  v7 = *(a3 + 2);
  VCVideoStream_OnVideoFrame(v4, a2, &v6, a4);
  return 1;
}

- (void)avConferencePreviewError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoStream avConferencePreviewError:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCVideoStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v8 = 136316418;
        v9 = v6;
        v10 = 2080;
        v11 = "[VCVideoStream avConferencePreviewError:]";
        v12 = 1024;
        v13 = 3965;
        v14 = 2112;
        v15 = v5;
        v16 = 2048;
        selfCopy = self;
        v18 = 2080;
        uTF8String = [error UTF8String];
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, "VCVideoStream [%s] %s:%d %@(%p) received an error=%s", &v8, 0x3Au);
      }
    }
  }
}

- (void)avConferenceScreenCaptureError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoStream avConferenceScreenCaptureError:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCVideoStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v8 = 136316418;
        v9 = v6;
        v10 = 2080;
        v11 = "[VCVideoStream avConferenceScreenCaptureError:]";
        v12 = 1024;
        v13 = 3969;
        v14 = 2112;
        v15 = v5;
        v16 = 2048;
        selfCopy = self;
        v18 = 2080;
        uTF8String = [error UTF8String];
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, "VCVideoStream [%s] %s:%d %@(%p) received a capture error=%s", &v8, 0x3Au);
      }
    }
  }
}

- (void)thermalLevelDidChange:(int)change
{
  v3 = *&change;
  v25 = *MEMORY[0x1E69E9840];
  if ([(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] multiwayConfig] isOneToOne])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v13 = 136315906;
      v14 = v6;
      v15 = 2080;
      v16 = "[VCVideoStream thermalLevelDidChange:]";
      v17 = 1024;
      v18 = 3979;
      v19 = 1024;
      LODWORD(v20) = v3;
      v8 = "VCVideoStream [%s] %s:%d thermalLevelDidChange thermalLevel=%u";
      v9 = v7;
      v10 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCVideoStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v13 = 136316418;
      v14 = v11;
      v15 = 2080;
      v16 = "[VCVideoStream thermalLevelDidChange:]";
      v17 = 1024;
      v18 = 3979;
      v19 = 2112;
      v20 = v5;
      v21 = 2048;
      selfCopy = self;
      v23 = 1024;
      v24 = v3;
      v8 = "VCVideoStream [%s] %s:%d %@(%p) thermalLevelDidChange thermalLevel=%u";
      v9 = v12;
      v10 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
LABEL_13:
    VCMediaStream_Lock(self);
    [(VCVideoTransmitterBase *)self->_videoTransmitter handleThermalLevelChange:v3];
    VCMediaStream_Unlock(self);
  }
}

- (void)cameraAvailabilityDidChange:(BOOL)change
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCVideoStream cameraAvailabilityDidChange:]";
      v9 = 1024;
      v10 = 3987;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d Handling of camera availability did change not implemented yet", &v5, 0x1Cu);
    }
  }
}

- (void)handleActiveConnectionChange:(id)change
{
  VCMediaStream_Lock(self);
  HIDWORD(self->_colorInfo) = [change maxConnectionMTU];
  self->_baseQualityIndex = VCConnection_PerPacketConnectionOverhead(change);
  if (self->super._operatingMode == 6)
  {
    [(VCMediaStream *)self updateTransportsWithConstantConnectionOverhead:?];
  }

  [(VCVideoTransmitterBase *)self->_videoTransmitter handleActiveConnectionChange:change];
  [(VCObject *)self reportingAgent];
  [(VCVideoTransmitterBase *)self->_videoTransmitter encodingWidth];
  [(VCVideoTransmitterBase *)self->_videoTransmitter encodingHeight];
  [(VCVideoTransmitterBase *)self->_videoTransmitter targetFramerate];
  reportingVideoProp();
  [(VCVideoReceiverBase *)self->_videoReceiver handleActiveConnectionChange:change];

  VCMediaStream_Unlock(self);
}

- (void)rateAdaptation:(id)adaptation targetBitrateDidChange:(unsigned int)change rateChangeCounter:(unsigned int)counter
{
  v5 = *&counter;
  v6 = *&change;
  v24 = *MEMORY[0x1E69E9840];
  if (![VCVideoStream shouldEnableRateControlForStreamType:self->_type]|| self->super._rateAdaptation != adaptation)
  {
    return;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_14;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    vcrcRateController = [(VCMediaStreamRateAdaptation *)self->super._rateAdaptation vcrcRateController];
    *v20 = 136316418;
    *&v20[4] = v10;
    *&v20[12] = 2080;
    *&v20[14] = "[VCVideoStream rateAdaptation:targetBitrateDidChange:rateChangeCounter:]";
    *&v20[22] = 1024;
    LODWORD(v21) = 4040;
    WORD2(v21) = 2048;
    *(&v21 + 6) = vcrcRateController;
    HIWORD(v21) = 1024;
    *v22 = v6;
    *&v22[4] = 1024;
    *&v22[6] = v5;
    v13 = "VCVideoStream [%s] %s:%d vcrcRateController=%p gives targetBitrate=%d, rateChangeCounter=%d";
    v14 = v11;
    v15 = 50;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(VCVideoStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_14;
    }

    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    vcrcRateController2 = [(VCMediaStreamRateAdaptation *)self->super._rateAdaptation vcrcRateController];
    *v20 = 136316930;
    *&v20[4] = v16;
    *&v20[12] = 2080;
    *&v20[14] = "[VCVideoStream rateAdaptation:targetBitrateDidChange:rateChangeCounter:]";
    *&v20[22] = 1024;
    LODWORD(v21) = 4040;
    WORD2(v21) = 2112;
    *(&v21 + 6) = v9;
    HIWORD(v21) = 2048;
    *v22 = self;
    *&v22[8] = 2048;
    *&v22[10] = vcrcRateController2;
    *&v22[18] = 1024;
    *&v22[20] = v6;
    LOWORD(v23) = 1024;
    *(&v23 + 2) = v5;
    v13 = "VCVideoStream [%s] %s:%d %@(%p) vcrcRateController=%p gives targetBitrate=%d, rateChangeCounter=%d";
    v14 = v17;
    v15 = 70;
  }

  _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, v20, v15);
LABEL_14:
  [(VCVideoTransmitterBase *)self->_videoTransmitter setTargetBitrateChangeCounter:v5, *v20, *&v20[16], v21, *v22, *&v22[8], v23];
  [(VCVideoTransmitterBase *)self->_videoTransmitter setTargetBitrate:v6];
  if (!self->_initialTargetBitrate)
  {
    self->_initialTargetBitrate = v6;
  }

  if (self->_type == 5)
  {
    rateSharingGroup = self->super._rateSharingGroup;
    if (rateSharingGroup)
    {
      -[VCRateSharingGroup setTargetBitrate:fromRateSharingClient:](rateSharingGroup, "setTargetBitrate:fromRateSharingClient:", v6, [adaptation vcrcRateController]);
    }
  }
}

- (void)redundancyController:(id)controller redundancyVectorDidChange:(id *)change
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_redundancyController != controller)
  {
    return;
  }

  [(VCVideoStream *)self setFECRedundancyVector:change];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    var0 = change->var0;
    v17 = 136316162;
    v18 = v8;
    v19 = 2080;
    v20 = "[VCVideoStream redundancyController:redundancyVectorDidChange:]";
    v21 = 1024;
    v22 = 4083;
    v23 = 2112;
    controllerCopy = controller;
    v25 = 1024;
    LODWORD(selfCopy) = var0;
    v11 = "VCVideoStream [%s] %s:%d VCVideoStream received redundancyController update redundancyControler=%@ redundancyArrayCount=%u";
    v12 = v9;
    v13 = 44;
LABEL_13:
    _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, &v17, v13);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [(VCVideoStream *)self performSelector:sel_logPrefix];
  }

  else
  {
    v7 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v16 = change->var0;
      v17 = 136316674;
      v18 = v14;
      v19 = 2080;
      v20 = "[VCVideoStream redundancyController:redundancyVectorDidChange:]";
      v21 = 1024;
      v22 = 4083;
      v23 = 2112;
      controllerCopy = v7;
      v25 = 2048;
      selfCopy = self;
      v27 = 2112;
      controllerCopy2 = controller;
      v29 = 1024;
      v30 = v16;
      v11 = "VCVideoStream [%s] %s:%d %@(%p) VCVideoStream received redundancyController update redundancyControler=%@ redundancyArrayCount=%u";
      v12 = v15;
      v13 = 64;
      goto LABEL_13;
    }
  }
}

- (void)updateSourcePlayoutTime:(const tagVCMediaTime *)time
{
  v35 = *MEMORY[0x1E69E9840];
  if (VCMediaStream_State(self) != 2)
  {
    return;
  }

  type = self->_type;
  if (type <= 7)
  {
    if (type == 3)
    {
      [(VCVideoReceiverBase *)self->_videoReceiver updateSourcePlayoutTime:time];
    }

    else if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCVideoStream updateSourcePlayoutTime:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCVideoStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v25 = 136316162;
          v26 = v7;
          v27 = 2080;
          v28 = "[VCVideoStream updateSourcePlayoutTime:]";
          v29 = 1024;
          v30 = 4109;
          v31 = 2112;
          v32 = *&v6;
          v33 = 2048;
          selfCopy = self;
          _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, "VCVideoStream [%s] %s:%d %@(%p) This should not be called for IP camera or display", &v25, 0x30u);
        }
      }
    }
  }

  v9 = micro();
  lastDecodedVideoFrameTime = self->_lastDecodedVideoFrameTime;
  if (lastDecodedVideoFrameTime == 0.0)
  {
    self->_lastDecodedVideoFrameTime = v9;
    lastDecodedVideoFrameTime = v9;
  }

  if (v9 - lastDecodedVideoFrameTime <= self->_mediaStallTimeout)
  {
    if (self->_isRemoteMediaStalled)
    {
      self->_isRemoteMediaStalled = 0;
      self->_lastMediaStallReportTime = 0.0;
      [(VCMediaStreamDelegate *)self->super._delegate vcMediaStream:self remoteMediaStalled:0 duration:0.0];
    }

    goto LABEL_30;
  }

  if (!self->_isRemoteMediaStalled)
  {
    if (!self->_sendContinuousStallMessages)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (self->_sendContinuousStallMessages)
  {
LABEL_24:
    if (v9 - self->_lastMediaStallReportTime <= self->_mediaStallReportRepeatInterval)
    {
LABEL_29:
      self->_isRemoteMediaStalled = 1;
      goto LABEL_30;
    }

LABEL_25:
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = self->_lastDecodedVideoFrameTime;
        v25 = 136316162;
        v26 = v11;
        v27 = 2080;
        v28 = "[VCVideoStream updateSourcePlayoutTime:]";
        v29 = 1024;
        v30 = 4124;
        v31 = 2048;
        v32 = v13;
        v33 = 2048;
        selfCopy = *&v9;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d remote media stall lastDecodedVideoFrameTime=%f currentTime=%f", &v25, 0x30u);
      }
    }

    self->_lastMediaStallReportTime = v9;
    [(VCMediaStreamDelegate *)self->super._delegate vcMediaStream:self remoteMediaStalled:1 duration:v9 - self->_lastDecodedVideoFrameTime];
    goto LABEL_29;
  }

LABEL_30:
  defaultStreamConfig = [(VCMediaStream *)self defaultStreamConfig];
  if (VCVideoStreamConfig_StreamType(defaultStreamConfig) == 3 && VCMediaStreamConfig_Direction(defaultStreamConfig) == 2)
  {
    v15 = v9 - self->_lastDecodedVideoFrameTime;
    lastStatisticsCollectorVideoStallTotalUpdateTime = self->_lastStatisticsCollectorVideoStallTotalUpdateTime;
    if (v15 >= 1.0)
    {
      if (v9 - lastStatisticsCollectorVideoStallTotalUpdateTime >= 1.0)
      {
        v21 = VCMediaStreamConfig_MultiwayConfig(defaultStreamConfig);
        v22 = VCMediaStreamMultiwayConfig_RemoteIDSParticipantID(v21);
        _VCMediaStream_SubmitStatisticsCollectorVideoStallUpdate(self, v22, v9, v15);
        self->_lastStatisticsCollectorVideoStallTotalUpdateTime = v9;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v23 = VRTraceErrorLogLevelToCSTR();
          v24 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v25 = 136315906;
            v26 = v23;
            v27 = 2080;
            v28 = "VCVideoStream_SubmitStatisticsCollectorVideoStallUpdate";
            v29 = 1024;
            v30 = 1831;
            v31 = 2048;
            v32 = v15;
            _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d VideoStallTimeTotal=%.2f", &v25, 0x26u);
          }
        }
      }
    }

    else if (lastStatisticsCollectorVideoStallTotalUpdateTime > 0.0)
    {
      v17 = VCMediaStreamConfig_MultiwayConfig(defaultStreamConfig);
      v18 = VCMediaStreamMultiwayConfig_RemoteIDSParticipantID(v17);
      _VCMediaStream_SubmitStatisticsCollectorVideoStallUpdate(self, v18, v9, v15);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v25 = 136315906;
          v26 = v19;
          v27 = 2080;
          v28 = "VCVideoStream_SubmitStatisticsCollectorVideoStallUpdate";
          v29 = 1024;
          v30 = 1836;
          v31 = 2048;
          v32 = v15;
          _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d VideoStallTimeTotal=%.2f", &v25, 0x26u);
        }
      }

      self->_lastStatisticsCollectorVideoStallTotalUpdateTime = 0.0;
    }
  }

  VCMediaStream_CheckForDecryptionTimeout(self);
}

- (void)reportStreamPerfTimings
{
  v3[5] = *MEMORY[0x1E69E9840];
  delegateNotificationQueue = self->super._delegateNotificationQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__VCVideoStream_reportStreamPerfTimings__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(delegateNotificationQueue, v3);
}

void __40__VCVideoStream_reportStreamPerfTimings__block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((v2[1240] & 1) == 0)
  {
    [v2 reportingAgent];
    VCReporting_GetDynamicReportingModuleID();
    v7 = @"VCMSStreamToken";
    v8[0] = [MEMORY[0x1E696AD98] numberWithInteger:*(*(a1 + 32) + 624)];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v3 = *(a1 + 32);
    v4 = v3[94];
    v5 = [v3 reportingAgent];
    VCPerfTimingUtilsReport(v4, v5, v6);
    *(*(a1 + 32) + 1240) = 1;
  }
}

- (void)didChangeThermalLevel:(int)level
{
  v3 = *&level;
  v27 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v16 = v6;
        v17 = 2080;
        v18 = "[VCVideoStream didChangeThermalLevel:]";
        v19 = 1024;
        v20 = 4166;
        v21 = 1024;
        LODWORD(v22) = v3;
        v8 = "VCVideoStream [%s] %s:%d Received thermal notification at level=%d";
        v9 = v7;
        v10 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCVideoStream *)self performSelector:sel_logPrefix];
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
        v16 = v11;
        v17 = 2080;
        v18 = "[VCVideoStream didChangeThermalLevel:]";
        v19 = 1024;
        v20 = 4166;
        v21 = 2112;
        v22 = v5;
        v23 = 2048;
        selfCopy = self;
        v25 = 1024;
        v26 = v3;
        v8 = "VCVideoStream [%s] %s:%d %@(%p) Received thermal notification at level=%d";
        v9 = v12;
        v10 = 54;
        goto LABEL_11;
      }
    }
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{v3, @"Thermal"}];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [(VCObject *)self reportingAgent];
  reportingGenericEvent();
}

uint64_t ___VCVideoStream_DidReceiveRemoteFrame_block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v3 vcMediaStream:v4 priorityDidChange:v5];
  }

  return result;
}

uint64_t ___VCVideoStream_DidReceiveRemoteFrame_block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 56);
    return [v3 vcMediaStream:v4 didReceiveFirstFrameWithTime:&v5];
  }

  return result;
}

void ___VCVideoStream_NotifyVideoStreamDelegate_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v4 = *(a1 + 40);
        v6 = *(v4 + 1248);
        v13 = 136316418;
        v14 = v2;
        v15 = 2080;
        v16 = "_VCVideoStream_NotifyVideoStreamDelegate_block_invoke";
        v17 = 1024;
        v18 = 3733;
        v19 = 2048;
        v20 = v4;
        v21 = 2112;
        v22 = v5;
        v23 = 2112;
        v24 = v6;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d VCVideoStream[%p] remoteScreenAttributes=%@, cachedRemoteScreenAttributes=%@", &v13, 0x3Au);
      }
    }

    *(*(a1 + 40) + 1248) = [*(a1 + 32) copy];
  }

  v7 = *(a1 + 40);
  if (*(v7 + 1192) && *(v7 + 1248))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        v11 = *(v10 + 1192);
        v12 = *(v10 + 1248);
        v13 = 136316418;
        v14 = v8;
        v15 = 2080;
        v16 = "_VCVideoStream_NotifyVideoStreamDelegate_block_invoke";
        v17 = 1024;
        v18 = 3738;
        v19 = 2048;
        v20 = v10;
        v21 = 2048;
        v22 = v11;
        v23 = 2112;
        v24 = v12;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d VCVideoStream[%p] remoteScreenAttributesDidChange=%p, _cachedRemoteScreenAttributes=%@, ", &v13, 0x3Au);
      }
    }

    (*(*(a1 + 40) + 1192))(*(*(a1 + 40) + 1184), *(*(a1 + 40) + 1248));

    *(*(a1 + 40) + 1248) = 0;
  }
}

- (void)redundancyController:(id)controller redundancyPercentageDidChange:(unsigned int)change
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_redundancyController == controller)
  {
    [(VCVideoStream *)self setFecRatio:VCRedundancyControllerVideo_ConvertRedundancyPercentageToRatio(change)];
    delegate = [(VCMediaStream *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      delegateNotificationQueue = self->super._delegateNotificationQueue;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __68__VCVideoStream_redundancyController_redundancyPercentageDidChange___block_invoke;
      v8[3] = &unk_1E85F3890;
      v8[4] = delegate;
      v8[5] = self;
      changeCopy = change;
      dispatch_async(delegateNotificationQueue, v8);
    }
  }
}

- (void)enableRedundancyController:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_0();
      _os_log_impl(v0, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 0x26u);
    }
  }
}

- (void)enableRedundancyController:(int)a1 .cold.2(int a1)
{
  if (a1 >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }
}

- (void)setupColorInfo:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 1365;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, "VCVideoStream [%s] %s:%d No color settings applied", v1, 0x1Cu);
}

- (void)setupColorInfo:.cold.2()
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

void __59__VCVideoStream_newSensitiveContentAnalyzerForParticipant___block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_22_7();
      v4 = "Sensitive content analysis encounters";
      v5 = 2113;
      v6 = a1;
      _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, "VCVideoStream [%s] %s:%d %{private}s error=%{private}@", v3, 0x30u);
    }
  }
}

void __59__VCVideoStream_newSensitiveContentAnalyzerForParticipant___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_22_7();
  v5 = "Sensitive content analysis changed for";
  v6 = 2048;
  v7 = v1;
  _os_log_debug_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEBUG, "VCVideoStream [%s] %s:%d %{private}s VCVideoStream=%p", v3, 0x30u);
}

void __59__VCVideoStream_newSensitiveContentAnalyzerForParticipant___block_invoke_cold_3(int a1)
{
  if (a1 >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_22_7();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }
}

void __59__VCVideoStream_newSensitiveContentAnalyzerForParticipant___block_invoke_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_22_7();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)updateVideoConfig:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_29_4(v0, *MEMORY[0x1E69E9840]);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)sendLastRemoteVideoFrame:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoStream [%s] %s:%d Failed to create last frame XPC args", v2, v3, v4, v5, v6);
}

- (void)sendLastRemoteVideoFrame:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoStream [%s] %s:%d Failed to create frame data", v2, v3, v4, v5, v6);
}

- (void)cleanupBeforeReconfigure:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoStream [%s] %s:%d Reconfiguring VCVideoStream with a different number of transports.", v2, v3, v4, v5, v6);
}

- (void)setTargetStreamID:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  OUTLINED_FUNCTION_6();
  v5 = 1971;
  v6 = 2112;
  v7 = v1;
  _os_log_debug_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEBUG, "VCVideoStream [%s] %s:%d TargetStreamID didn't change %@", v3, 0x26u);
}

- (void)validateStreamConfiguration:error:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_29_4(v0, *MEMORY[0x1E69E9840]);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x26u);
}

- (void)validateStreamConfiguration:error:.cold.2()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_29_4(v0, *MEMORY[0x1E69E9840]);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)enableRateControlFeebackInConfig:(void *)a1 .cold.1(void *a1, _BYTE *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = v4;
      OUTLINED_FUNCTION_0();
      v8 = 2109;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCVideoStream [%s] %s:%d Could not allocate memory for creating VCMediaStreamRateControlConfig object", &v6, 0x1Cu);
    }
  }

  *a2 = 0;
  *a1 = 0;
}

- (void)configureStreamInputCaptureSourceWithStreamInputID:frameRate:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)configureReceiveBuffer:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v3 = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  v4 = 1500000;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, "VCVideoStream [%s] %s:%d Error setting socket receive buffer size=%d", v2, 0x22u);
}

- (void)onConfigureStreamWithConfiguration:error:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_29_4(v0, *MEMORY[0x1E69E9840]);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x26u);
}

- (void)onConfigureStreamWithConfiguration:error:.cold.2()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_29_4(v0, *MEMORY[0x1E69E9840]);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)onConfigureStreamWithConfiguration:error:.cold.3()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_19_15();
  _os_log_fault_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_FAULT, "VCVideoStream [%s] %s:%d Failed to update stream config for VCVideoStreamType=%d", v1, 0x22u);
}

- (void)onConfigureStreamWithConfiguration:error:.cold.4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_19_15();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)onConfigureStreamWithConfiguration:error:.cold.5()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 2460;
  _os_log_fault_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_FAULT, "VCVideoStream [%s] %s:%d Failed to configure transport", v1, 0x1Cu);
}

- (void)onConfigureStreamWithConfiguration:error:.cold.6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoStream [%s] %s:%d Failed to configure transport", v2, v3, v4, v5, v6);
}

- (void)onConfigureStreamWithConfiguration:error:.cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoStream [%s] %s:%d Failed to create transport", v2, v3, v4, v5, v6);
}

- (void)onConfigureStreamWithConfiguration:error:.cold.8()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_29_4(v0, *MEMORY[0x1E69E9840]);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x26u);
}

- (void)onConfigureStreamWithConfiguration:error:.cold.9()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_29_4(v0, *MEMORY[0x1E69E9840]);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void __36__VCVideoStream_setupReportingAgent__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoStream [%s] %s:%d RTCReporting: can't configure the reporting agent.", v2, v3, v4, v5, v6);
}

- (void)setupInternalRedundancyControllerWithStreamConfig:(int)a1 .cold.1(int a1)
{
  if (a1 >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }
}

- (void)onStartWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)handleVTPSendFailedWithData:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoStream [%s] %s:%d VTP send failed with no data!", v2, v3, v4, v5, v6);
}

- (void)setVideoStreamDelegate:delegateFunctions:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoStream [%s] %s:%d videoStreamDelegateFunctions is NULL", v2, v3, v4, v5, v6);
}

- (void)vcVideoReceiverRequestKeyFrame:rtcpPSFBType:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)avConferencePreviewError:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  [v0 UTF8String];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

- (void)avConferenceScreenCaptureError:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  [v0 UTF8String];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

- (void)updateSourcePlayoutTime:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoStream [%s] %s:%d This should not be called for IP camera or display", v2, v3, v4, v5, v6);
}

@end