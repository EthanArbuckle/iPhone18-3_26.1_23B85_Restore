@interface VCVideoTransmitterDefault
+ (void)setupBandwidthEstimationOptions:(tagBWEOPTION *)options featureString:(id)string;
- (VCVideoTransmitterDefault)initWithConfig:(id)config;
- (unsigned)setTemporaryMaximumBitrate:(unsigned int)bitrate;
- (void)collectChannelMetrics:(id *)metrics interval:(float)interval;
- (void)dealloc;
- (void)generateKeyFrameWithFIRType:(int)type;
- (void)handleActiveConnectionChange:(id)change;
- (void)handleActiveConnectionChangeDefault:(id)default;
- (void)handleActiveConnectionChangeMultiway:(id)multiway;
- (void)setRtxEnabled:(BOOL)enabled;
- (void)setTargetBitrate:(unsigned int)bitrate;
- (void)setUpAspectRatios:(BOOL)ratios;
- (void)setUpAspectRatiosFromFeatureListString:(const char *)string;
- (void)startVideo;
- (void)stopVideo;
- (void)updateWindowState:(int)state isLocal:(BOOL)local windowRect:(CGRect)rect;
@end

@implementation VCVideoTransmitterDefault

- (VCVideoTransmitterDefault)initWithConfig:(id)config
{
  v135 = *MEMORY[0x1E69E9840];
  v49 = 0;
  v50 = 0;
  self->_logPrefix = [config logPrefix];
  if ([config rtpTimestampRate])
  {
    rtpTimestampRate = [config rtpTimestampRate];
  }

  else
  {
    rtpTimestampRate = 24000;
  }

  self->_audioTimestampRate = rtpTimestampRate;
  self->_forceL4SHighDataRate = [config forceL4SHighDataRate];
  v48.receiver = self;
  v48.super_class = VCVideoTransmitterDefault;
  v6 = [(VCVideoTransmitterBase *)&v48 initWithConfig:config];
  if (!v6)
  {
    [VCVideoTransmitterDefault initWithConfig:?];
LABEL_53:
    value = v126.value;
LABEL_55:

    return 0;
  }

  v7 = v6;
  if (!config)
  {
    [(VCVideoTransmitterDefault *)v6 initWithConfig:?];
    goto LABEL_53;
  }

  CMTimeMake(&v126, 0, v6->_audioTimestampRate);
  v8 = *&v126.value;
  v7->super._latestSampleBufferTimestamp.epoch = v126.epoch;
  *&v7->super._latestSampleBufferTimestamp.value = v8;
  mediaControlInfoGenerator = [config mediaControlInfoGenerator];
  if (mediaControlInfoGenerator)
  {
    mediaControlInfoGenerator = CFRetain(mediaControlInfoGenerator);
  }

  v7->super._controlInfoGenerator = mediaControlInfoGenerator;
  customFeatureListStrings = [config customFeatureListStrings];
  v11 = [customFeatureListStrings objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(config, "videoPayload"))}];
  v7->_transmitterMode = [config mode];
  v12 = 0;
  if ([config mode] == 1 && v11)
  {
    if ([config setupBWEstimationOptionWithFeatureString])
    {
      [VCVideoTransmitterDefault setupBandwidthEstimationOptions:&v49 featureString:v11];
    }

    else
    {
      [VCVideoTransmitterDefault setupBandwidthEstimationOptions:&v49];
    }

    if (objc_opt_class() == v7)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_24;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      LODWORD(v126.value) = 136316674;
      *(&v126.value + 4) = v14;
      LOWORD(v126.flags) = 2080;
      *(&v126.flags + 2) = "[VCVideoTransmitterDefault initWithConfig:]";
      HIWORD(v126.epoch) = 1024;
      v127 = 82;
      v128 = 1024;
      *v129 = HIDWORD(v49);
      *&v129[4] = 1024;
      *&v129[6] = v50;
      *&v129[10] = 1024;
      *&v129[12] = HIDWORD(v50);
      *&v129[16] = 1024;
      *v130 = v49;
      v16 = " [%s] %s:%d setup bandwidthEstimationOptions fEnableNewBWEMode=%d, fEnableFakeLargeFrameMode=%d, fEnableActiveProbingSenderLog=%d, fBWEInitialized=%d";
      v17 = v15;
      v18 = 52;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [(VCVideoTransmitterDefault *)v7 performSelector:sel_logPrefix];
      }

      else
      {
        v13 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_24;
      }

      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      LODWORD(v126.value) = 136317186;
      *(&v126.value + 4) = v19;
      LOWORD(v126.flags) = 2080;
      *(&v126.flags + 2) = "[VCVideoTransmitterDefault initWithConfig:]";
      HIWORD(v126.epoch) = 1024;
      v127 = 82;
      v128 = 2112;
      *v129 = v13;
      *&v129[8] = 2048;
      *&v129[10] = v7;
      *v130 = 1024;
      *&v130[2] = HIDWORD(v49);
      v131 = 1024;
      *v132 = v50;
      *&v132[4] = 1024;
      *&v132[6] = HIDWORD(v50);
      v133 = 1024;
      v134 = v49;
      v16 = " [%s] %s:%d %@(%p) setup bandwidthEstimationOptions fEnableNewBWEMode=%d, fEnableFakeLargeFrameMode=%d, fEnableActiveProbingSenderLog=%d, fBWEInitialized=%d";
      v17 = v20;
      v18 = 72;
    }

    _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, &v126, v18);
LABEL_24:
    v12 = VideoUtil_FeatureListStringOptionExists([v11 UTF8String], "CR");
    v7->_canLocalResizePIP = [VCVideoFeatureListStringHelper isResizePIPSupportedInFeatureListString:v11];
    -[VCVideoTransmitterDefault setUpAspectRatiosFromFeatureListString:](v7, "setUpAspectRatiosFromFeatureListString:", [v11 UTF8String]);
  }

  bzero(v51, 0x400uLL);
  if ([config streamCount] >= 1)
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = v51[0]++;
      v24 = &v51[16 * v23 + 2];
      streamConfigs = [config streamConfigs];
      v26 = *(streamConfigs + v21 + 48);
      v28 = *(streamConfigs + v21);
      v27 = *(streamConfigs + v21 + 16);
      *(v24 + 2) = *(streamConfigs + v21 + 32);
      *(v24 + 3) = v26;
      *v24 = v28;
      *(v24 + 1) = v27;
      ++v22;
      v21 += 64;
    }

    while (v22 < [config streamCount]);
  }

  encoderUsage = [config encoderUsage];
  if ([config mode] == 1)
  {
    encodingWidth = v7->super._encodingWidth;
    v69 = encodingWidth;
    encodingHeight = v7->super._encodingHeight;
    v73 = encodingHeight;
    framerate = [config framerate];
    framerate2 = [config framerate];
  }

  controlInfoGenerator = v7->super._controlInfoGenerator;
  reportingAgent = [config reportingAgent];
  reportingParentID = [config reportingParentID];
  experimentManager = [config experimentManager];
  v65 = v7->super._encodingWidth;
  v66 = v7->super._encodingHeight;
  pixelFormat = [config pixelFormat];
  framerate3 = [config framerate];
  txMaxBitrate = [config txMaxBitrate];
  videoPayload = [config videoPayload];
  v76 = -1;
  keyFrameInterval = [config keyFrameInterval];
  [config minKeyFrameGenerationIntervalInSeconds];
  DoubleValueForKey = VCDefaults_GetDoubleValueForKey(@"minKeyFrameGenerationInterval", v29);
  v82 = 0x20000000200;
  uTF8String = [v11 UTF8String];
  v63 = v12;
  v62 = VCCPUCount() > 1;
  v64 = 1;
  v57 = 1;
  if ([config recommendedMTU])
  {
    recommendedMTU = [config recommendedMTU];
  }

  else
  {
    recommendedMTU = 1280;
  }

  v86 = recommendedMTU;
  isIPv6 = [config isIPv6];
  parameterSets = [config parameterSets];
  v60 = 1;
  v61 = 2;
  mode = [config mode];
  captureSource = [config captureSource];
  audioTimestampRate = v7->_audioTimestampRate;
  encodingMode = [config encodingMode];
  colorInfo = [config colorInfo];
  videoPriorityPointer = [config videoPriorityPointer];
  tilesPerFrame = [config tilesPerFrame];
  statisticsCollector = [config statisticsCollector];
  useRateControl = [config useRateControl];
  qualityIndex = [config qualityIndex];
  enableTxSourceYuvDump = [+[VCDefaults sharedInstance](VCDefaults enableTxSourceYuvDump];
  enableTxBitstreamDump = [+[VCDefaults sharedInstance](VCDefaults enableTxBitstreamDump];
  reinitEncoderOnFrameSizeChangeEnabled = [config reinitEncoderOnFrameSizeChangeEnabled];
  remoteIDSParticipantID = [config remoteIDSParticipantID];
  mediaController = [config mediaController];
  v81 = &v49;
  profileLevel = [config profileLevel];
  isFecGeneratorEnabled = [config isFecGeneratorEnabled];
  fecHeaderVersion = [config fecHeaderVersion];
  fecHeaderV1Enabled = [config fecHeaderV1Enabled];
  temporalScalingEnabled = [config temporalScalingEnabled];
  maxSupportedTemporalLayers = [config maxSupportedTemporalLayers];
  cvoExtensionID = [config cvoExtensionID];
  useInBandFec = [config useInBandFec];
  maxEncoderPixels = [config maxEncoderPixels];
  encoderBitrateAveragingInterval = [config encoderBitrateAveragingInterval];
  ltrAckFeedbackType = [config ltrAckFeedbackType];
  isLowBandwidthSinglePacketDuplicationEnabled = [config isLowBandwidthSinglePacketDuplicationEnabled];
  fecEnabled = [config fecEnabled];
  rtxEnabled = [config rtxEnabled];
  foveationEnabled = [config foveationEnabled];
  pdEncryptionContext = [config pdEncryptionContext];
  stereoVideoPackingType = [config stereoVideoPackingType];
  useMultiImageEncoding = [config useMultiImageEncoding];
  sessionId = [config sessionId];
  participantId = [config participantId];
  streamGroupId = [config streamGroupId];
  streamToken = [config streamToken];
  enableInterleavedEncoding = [config enableInterleavedEncoding];
  numberOfInterleavedEncoders = [config numberOfInterleavedEncoders];
  videoFrameMetadataSupportedVersion = [config videoFrameMetadataSupportedVersion];
  snprintf(v125, 0x1EuLL, "parent=%p", v7);
  if ([+[VCDefaults isTransmitterTestVerificationEnabled] sharedInstance]
  {
    v31 = objc_alloc_init(VCVideoHardwareDumpCollector);
    v7->_verificationContext = v31;
    v110 = v31;
  }

  Handle = VideoTransmitter_CreateHandle(&v7->_videoTransmitterHandle, v51);
  if (objc_opt_class() == v7)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v34 = VRTraceErrorLogLevelToCSTR();
      v35 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        videoTransmitterHandle = v7->_videoTransmitterHandle;
        LODWORD(v126.value) = 136316162;
        *(&v126.value + 4) = v34;
        LOWORD(v126.flags) = 2080;
        *(&v126.flags + 2) = "[VCVideoTransmitterDefault initWithConfig:]";
        HIWORD(v126.epoch) = 1024;
        v127 = 178;
        v128 = 1024;
        *v129 = videoTransmitterHandle;
        *&v129[4] = 2048;
        *&v129[6] = v7;
        v37 = " [%s] %s:%d Created videoTransmitterHandle=0x%x videoTransmitter=%p";
        v38 = v35;
        v39 = 44;
LABEL_45:
        _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, v37, &v126, v39);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v33 = [(VCVideoTransmitterDefault *)v7 performSelector:sel_logPrefix];
    }

    else
    {
      v33 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v40 = VRTraceErrorLogLevelToCSTR();
      v41 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v42 = v7->_videoTransmitterHandle;
        LODWORD(v126.value) = 136316674;
        *(&v126.value + 4) = v40;
        LOWORD(v126.flags) = 2080;
        *(&v126.flags + 2) = "[VCVideoTransmitterDefault initWithConfig:]";
        HIWORD(v126.epoch) = 1024;
        v127 = 178;
        v128 = 2112;
        *v129 = v33;
        *&v129[8] = 2048;
        *&v129[10] = v7;
        *v130 = 1024;
        *&v130[2] = v42;
        v131 = 2048;
        *v132 = v7;
        v37 = " [%s] %s:%d %@(%p) Created videoTransmitterHandle=0x%x videoTransmitter=%p";
        v38 = v41;
        v39 = 64;
        goto LABEL_45;
      }
    }
  }

  if (Handle < 0)
  {

    value = 0;
    goto LABEL_55;
  }

  [(VCVideoTransmitterDefault *)v7 setUpAspectRatios:0];
  v7->super._realtimeSPI.enqueueVideoFrame = VCVideoTransmitterDefault_EnqueueVideoFrame;
  v7->super._realtimeSPI.setFECRatio = VCVideoTransmitterDefault_SetFECRatio;
  v7->super._realtimeSPI.setMediaQueueSize = VCVideoTransmitterDefault_SetMediaQueueSize;
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCVideoTransmitterDefault-initialized");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v43 = VRTraceErrorLogLevelToCSTR();
    v44 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      logPrefix = v7->_logPrefix;
      LODWORD(v126.value) = 136316162;
      *(&v126.value + 4) = v43;
      LOWORD(v126.flags) = 2080;
      *(&v126.flags + 2) = "[VCVideoTransmitterDefault initWithConfig:]";
      HIWORD(v126.epoch) = 1024;
      v127 = 188;
      v128 = 2048;
      *v129 = v7;
      *&v129[8] = 2112;
      *&v129[10] = logPrefix;
      _os_log_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCVideoTransmitterDefault-initialized (%p) %@", &v126, 0x30u);
    }
  }

  return v7;
}

- (void)setUpAspectRatios:(BOOL)ratios
{
  ratiosCopy = ratios;
  v40 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCVideoTransmitterDefault *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    canLocalResizePIP = self->_canLocalResizePIP;
    canRemoteResizePIP = self->_canRemoteResizePIP;
    v25 = 136316930;
    v26 = v13;
    v27 = 2080;
    v28 = "[VCVideoTransmitterDefault setUpAspectRatios:]";
    v29 = 1024;
    v30 = 200;
    v31 = 2112;
    *v32 = v5;
    *&v32[8] = 2048;
    selfCopy = self;
    v34 = 1024;
    v35 = ratiosCopy;
    v36 = 1024;
    v37 = canLocalResizePIP;
    v38 = 1024;
    v39 = canRemoteResizePIP;
    v10 = " [%s] %s:%d %@(%p) portraitFrameRotated=%d, _canLocalResizePIP=%d, _canRemoteResizePIP=%d";
    v11 = v14;
    v12 = 66;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_canLocalResizePIP;
      v9 = self->_canRemoteResizePIP;
      v25 = 136316418;
      v26 = v6;
      v27 = 2080;
      v28 = "[VCVideoTransmitterDefault setUpAspectRatios:]";
      v29 = 1024;
      v30 = 200;
      v31 = 1024;
      *v32 = ratiosCopy;
      *&v32[4] = 1024;
      *&v32[6] = v8;
      LOWORD(selfCopy) = 1024;
      *(&selfCopy + 2) = v9;
      v10 = " [%s] %s:%d portraitFrameRotated=%d, _canLocalResizePIP=%d, _canRemoteResizePIP=%d";
      v11 = v7;
      v12 = 46;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v25, v12);
    }
  }

LABEL_12:
  if (self->_canLocalResizePIP || !self->_canRemoteResizePIP)
  {
    v23 = VideoUtil_ComputeVisibleAspectRatio(self->_remoteScreenAspectRatios.portrait.width, self->_remoteScreenAspectRatios.portrait.height, self->_remoteExpectedAspectRatios.portrait.width, self->_remoteExpectedAspectRatios.portrait.height, self->super._encodingHeight, self->super._encodingWidth);
    v18 = v23;
    v20 = *&v24;
    LODWORD(v23) = self->super._encodingWidth;
    LODWORD(v24) = self->super._encodingHeight;
    v21 = VideoUtil_ComputeVisibleAspectRatio(self->_remoteScreenAspectRatios.landscape.width, self->_remoteScreenAspectRatios.landscape.height, self->_remoteExpectedAspectRatios.landscape.width, self->_remoteExpectedAspectRatios.landscape.height, *&v23, v24);
  }

  else
  {
    [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
    v18 = v17;
    v20 = v19;
    [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  }

  VideoTransmitter_SetAspectRatios(v18, v20, v21, v22);
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  controlInfoGenerator = self->super._controlInfoGenerator;
  if (controlInfoGenerator)
  {
    CFRelease(controlInfoGenerator);
  }

  VideoTransmitter_CloseHandle(self->_videoTransmitterHandle);
  [(VCVideoHardwareDumpCollector *)self->_verificationContext invalidate];

  v4.receiver = self;
  v4.super_class = VCVideoTransmitterDefault;
  [(VCVideoTransmitterBase *)&v4 dealloc];
}

- (void)setUpAspectRatiosFromFeatureListString:(const char *)string
{
  v52 = *MEMORY[0x1E69E9840];
  self->_canRemoteResizePIP = 0;
  v30 = -1431655766;
  v28 = -1431655766;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  if ([VCVideoFeatureListStringHelper extractAspectRatios:string landscapeX:&v30 landscapeY:&v29 + 4 portraitX:&v29 portraitY:&v28])
  {
    if (+[VCVideoFeatureListStringHelper isResizePIPSupportedInFeatureListString:](VCVideoFeatureListStringHelper, "isResizePIPSupportedInFeatureListString:", [MEMORY[0x1E696AEC0] stringWithUTF8String:string]))
    {
      self->_canRemoteResizePIP = 1;
    }
  }

  else
  {
    v30 = 3;
    v28 = 3;
    v29 = 0x200000002;
  }

  v27 = -1431655766;
  v25 = -1431655766;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  if (![VCVideoFeatureListStringHelper extractExpectedAspectRatios:string expectedLandscapeX:&v27 expectedLandscapeY:&v26 + 4 expectedPortraitX:&v26 expectedPortraitY:&v25])
  {
    v27 = v30;
    v25 = v28;
    v26 = v29;
  }

  v23 = *MEMORY[0x1E695F060];
  v24 = v23;
  [VCVideoFeatureListStringHelper extractExpectedAspectRatiosFromFeatureString:string expectedFullScreenAspectRatios:&v23];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (self->_canRemoteResizePIP)
        {
          v8 = "";
        }

        else
        {
          v8 = "No ";
        }

        *buf = 136317954;
        v32 = v6;
        v33 = 2080;
        v34 = "[VCVideoTransmitterDefault setUpAspectRatiosFromFeatureListString:]";
        v35 = 1024;
        v36 = 295;
        v37 = 1024;
        *v38 = v30;
        *&v38[4] = 1024;
        *&v38[6] = HIDWORD(v29);
        LOWORD(selfCopy) = 1024;
        *(&selfCopy + 2) = v29;
        HIWORD(selfCopy) = 1024;
        *v40 = v28;
        *&v40[4] = 2080;
        v41 = v8;
        *v42 = 1024;
        *&v42[2] = v27;
        *v43 = 1024;
        *&v43[2] = HIDWORD(v26);
        LOWORD(v44) = 1024;
        *(&v44 + 2) = v26;
        HIWORD(v44) = 1024;
        *v45 = v25;
        v9 = " [%s] %s:%d Setting remote screen aspect ratio numbers %d/%d,%d/%d (%sPR), remote expects to receive %d/%d,%d/%d";
        v10 = v7;
        v11 = 86;
        goto LABEL_23;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCVideoTransmitterDefault *)self performSelector:sel_logPrefix];
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
        if (self->_canRemoteResizePIP)
        {
          v14 = "";
        }

        else
        {
          v14 = "No ";
        }

        *buf = 136318466;
        v32 = v12;
        v33 = 2080;
        v34 = "[VCVideoTransmitterDefault setUpAspectRatiosFromFeatureListString:]";
        v35 = 1024;
        v36 = 295;
        v37 = 2112;
        *v38 = v5;
        *&v38[8] = 2048;
        selfCopy = self;
        *v40 = 1024;
        *&v40[2] = v30;
        LOWORD(v41) = 1024;
        *(&v41 + 2) = HIDWORD(v29);
        HIWORD(v41) = 1024;
        *v42 = v29;
        *&v42[4] = 1024;
        *v43 = v28;
        *&v43[4] = 2080;
        v44 = v14;
        *v45 = 1024;
        *&v45[2] = v27;
        v46 = 1024;
        v47 = HIDWORD(v26);
        v48 = 1024;
        v49 = v26;
        v50 = 1024;
        v51 = v25;
        v9 = " [%s] %s:%d %@(%p) Setting remote screen aspect ratio numbers %d/%d,%d/%d (%sPR), remote expects to receive %d/%d,%d/%d";
        v10 = v13;
        v11 = 106;
LABEL_23:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      }
    }
  }

  p_remoteScreenAspectRatios = &self->_remoteScreenAspectRatios;
  v16 = v28;
  self->_remoteScreenAspectRatios.portrait.width = v29;
  self->_remoteScreenAspectRatios.portrait.height = v16;
  v17 = SHIDWORD(v29);
  self->_remoteScreenAspectRatios.landscape.width = v30;
  self->_remoteScreenAspectRatios.landscape.height = v17;
  v18 = v25;
  p_remoteExpectedAspectRatios = &self->_remoteExpectedAspectRatios;
  self->_remoteExpectedAspectRatios.portrait.width = v26;
  self->_remoteExpectedAspectRatios.portrait.height = v18;
  v20 = SHIDWORD(v26);
  self->_remoteExpectedAspectRatios.landscape.width = v27;
  self->_remoteExpectedAspectRatios.landscape.height = v20;
  p_remoteExpectedFullScreenAspectRatios = &self->_remoteExpectedFullScreenAspectRatios;
  v22 = v24;
  p_remoteExpectedFullScreenAspectRatios->portrait = v23;
  p_remoteExpectedFullScreenAspectRatios->landscape = v22;
  [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
}

- (void)startVideo
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Start Video Failed", v2, v3, v4, v5, 2u);
    }
  }
}

- (void)stopVideo
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Stop Video Failed", v2, v3, v4, v5, 2u);
    }
  }
}

+ (void)setupBandwidthEstimationOptions:(tagBWEOPTION *)options featureString:(id)string
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v7 = 0;
  VideoUtil_ParseFeatureListString([string UTF8String], &v8, &v7);
  v5 = [CFPreferencesCopyAppValue(@"useFakeLF" @"com.apple.VideoConference")];
  v6 = (v7 | v5) & 1;
  options->var2 = v5 & ~v7 & 1;
  options->var3 = 0;
  options->var0 = v6;
  options->var1 = v6;
}

- (void)generateKeyFrameWithFIRType:(int)type
{
  v6[1] = *MEMORY[0x1E69E9840];
  videoTransmitterHandle = self->_videoTransmitterHandle;
  if (type == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  VideoTransmitter_GenerateKeyFrameNow(videoTransmitterHandle, 0, 0, v5, 0, 1, type);
  v6[0] = NAN;
  VideoTransmitter_GetLastKeyFrameSentTime(self->_videoTransmitterHandle, v6);
  [(VCVideoTransmitterBase *)self setLastKeyFrameSentTime:v6[0]];
}

- (unsigned)setTemporaryMaximumBitrate:(unsigned int)bitrate
{
  result = self->super._temporaryMaximumBitrate;
  if (result == bitrate)
  {
    return bitrate;
  }

  if (self->super._txMaxBitrate >= bitrate && self->super._txMinBitrate <= bitrate)
  {
    VideoTransmitter_SetBitrate(self->_videoTransmitterHandle, bitrate);
    self->super._temporaryMaximumBitrate = bitrate;
    return bitrate;
  }

  return result;
}

- (void)setTargetBitrate:(unsigned int)bitrate
{
  v32 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCVideoTransmitterDefault *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    txMaxBitrate = self->super._txMaxBitrate;
    txMinBitrate = self->super._txMinBitrate;
    v17 = 136316930;
    v18 = v13;
    v19 = 2080;
    v20 = "[VCVideoTransmitterDefault setTargetBitrate:]";
    v21 = 1024;
    v22 = 393;
    v23 = 2112;
    *v24 = v5;
    *&v24[8] = 2048;
    selfCopy = self;
    v26 = 1024;
    bitrateCopy = bitrate;
    v28 = 1024;
    v29 = txMaxBitrate;
    v30 = 1024;
    v31 = txMinBitrate;
    v10 = " [%s] %s:%d %@(%p) Set targetBitrate=%d, Max=%d, Min=%d";
    v11 = v14;
    v12 = 66;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->super._txMaxBitrate;
      v9 = self->super._txMinBitrate;
      v17 = 136316418;
      v18 = v6;
      v19 = 2080;
      v20 = "[VCVideoTransmitterDefault setTargetBitrate:]";
      v21 = 1024;
      v22 = 393;
      v23 = 1024;
      *v24 = bitrate;
      *&v24[4] = 1024;
      *&v24[6] = v8;
      LOWORD(selfCopy) = 1024;
      *(&selfCopy + 2) = v9;
      v10 = " [%s] %s:%d Set targetBitrate=%d, Max=%d, Min=%d";
      v11 = v7;
      v12 = 46;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v17, v12);
    }
  }

LABEL_12:
  if (self->super._targetBitrate != bitrate && self->super._txMaxBitrate >= bitrate && self->super._txMinBitrate <= bitrate)
  {
    VideoTransmitter_SetTargetBitrate(self->_videoTransmitterHandle, bitrate, self->super._targetBitrateChangeCounter, 0);
    self->super._targetBitrate = bitrate;
  }
}

- (void)collectChannelMetrics:(id *)metrics interval:(float)interval
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = 0.0;
  v11[0] = 0.0;
  v9 = 0;
  VideoTransmitter_GetBitrate(interval, self->_videoTransmitterHandle, v11);
  VideoTransmitter_GetFramerate(interval, self->_videoTransmitterHandle, &v10);
  VideoTransmitter_GetLastVideoSampleTime(self->_videoTransmitterHandle, &v9);
  metrics->var0 = (v11[0] / 1000.0);
  metrics->var3 = v10;
  lastSentAudioHostTime = self->super._lastSentAudioHostTime;
  metrics->var2 = 0;
  lastSentAudioSampleTime = self->super._lastSentAudioSampleTime;
  metrics->var5 = lastSentAudioHostTime;
  metrics->var6 = lastSentAudioSampleTime;
  metrics->var7 = self->_lastSentVideoHostTime;
  metrics->var8 = v9;
}

- (void)updateWindowState:(int)state isLocal:(BOOL)local windowRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  localCopy = local;
  VideoTransmitter_SetWindowState(self->_videoTransmitterHandle, local, state);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  if (!CGRectEqualToRect(v13, *MEMORY[0x1E695F058]))
  {
    videoTransmitterHandle = self->_videoTransmitterHandle;

    VideoTransmitter_SetVisualRectangle(x, y, width, height, videoTransmitterHandle, localCopy);
  }
}

- (void)handleActiveConnectionChangeDefault:(id)default
{
  v30 = *MEMORY[0x1E69E9840];
  IsLocalOnCellular = VCConnection_IsLocalOnCellular(default);
  IsRemoteOnCellular = VCConnection_IsRemoteOnCellular(default);
  videoTransmitterHandle = self->_videoTransmitterHandle;
  v8 = VCConnection_LocalCellTech(default);
  v9 = VCConnection_RemoteCellTech(default);
  VideoTransmitter_SetCellTech(videoTransmitterHandle, IsLocalOnCellular, v8, IsRemoteOnCellular, v9);
  if (self->_transmitterMode != 1)
  {
    goto LABEL_15;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        txMaxBitrate = self->super._txMaxBitrate;
        *v25 = 136316162;
        *&v25[4] = v11;
        *&v25[12] = 2080;
        *&v25[14] = "[VCVideoTransmitterDefault handleActiveConnectionChangeDefault:]";
        *&v25[22] = 1024;
        LODWORD(v26) = 565;
        WORD2(v26) = 1024;
        *(&v26 + 6) = txMaxBitrate;
        WORD5(v26) = 1024;
        HIDWORD(v26) = [default uplinkBitrateCapOneToOne];
        v14 = " [%s] %s:%d Received new connection, changing max tx bitrate from [%d] to [%d]";
        v15 = v12;
        v16 = 40;
LABEL_12:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, v25, v16);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [(VCVideoTransmitterDefault *)self performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = self->super._txMaxBitrate;
        *v25 = 136316674;
        *&v25[4] = v17;
        *&v25[12] = 2080;
        *&v25[14] = "[VCVideoTransmitterDefault handleActiveConnectionChangeDefault:]";
        *&v25[22] = 1024;
        LODWORD(v26) = 565;
        WORD2(v26) = 2112;
        *(&v26 + 6) = v10;
        HIWORD(v26) = 2048;
        selfCopy = self;
        LOWORD(v28) = 1024;
        *(&v28 + 2) = v19;
        HIWORD(v28) = 1024;
        LODWORD(v29) = [default uplinkBitrateCapOneToOne];
        v14 = " [%s] %s:%d %@(%p) Received new connection, changing max tx bitrate from [%d] to [%d]";
        v15 = v18;
        v16 = 60;
        goto LABEL_12;
      }
    }
  }

  self->super._txMaxBitrate = [default uplinkBitrateCapOneToOne];
  if (self->_forceL4SHighDataRate)
  {
    VideoTransmitter_SetBitrate(self->_videoTransmitterHandle, [default uplinkBitrateCapOneToOne]);
  }

LABEL_15:
  IsIPv6 = VCConnection_IsIPv6(default);
  if (self->_transmitterMode == 1 && ((IsLocalOnCellular | IsRemoteOnCellular) & 1) != 0)
  {
    if ([default maxConnectionMTU])
    {
      maxConnectionMTU = [default maxConnectionMTU];
    }

    else
    {
      maxConnectionMTU = [default connectionMTU];
    }

    connectionMTU = maxConnectionMTU;
    v24 = self->_videoTransmitterHandle;
  }

  else
  {
    v22 = self->_videoTransmitterHandle;
    if (IsLocalOnCellular)
    {
      connectionMTU = [default connectionMTU];
      v24 = v22;
    }

    else
    {
      v24 = self->_videoTransmitterHandle;
      connectionMTU = 1280;
    }
  }

  VideoTransmitter_UpdateMTU(v24, connectionMTU, IsIPv6);
  [(VCVideoTransmitterDefault *)self setUpAspectRatios:IsRemoteOnCellular];
}

- (void)handleActiveConnectionChangeMultiway:(id)multiway
{
  IsIPv6 = VCConnection_IsIPv6(multiway);
  videoTransmitterHandle = self->_videoTransmitterHandle;
  maxConnectionMTU = [multiway maxConnectionMTU];

  VideoTransmitter_UpdateMTU(videoTransmitterHandle, maxConnectionMTU, IsIPv6);
}

- (void)handleActiveConnectionChange:(id)change
{
  if (self->_transmitterMode == 2)
  {
    [(VCVideoTransmitterDefault *)self handleActiveConnectionChangeMultiway:change];
  }

  else
  {
    [(VCVideoTransmitterDefault *)self handleActiveConnectionChangeDefault:change];
  }
}

- (void)setRtxEnabled:(BOOL)enabled
{
  self->super._rtxEnabled = enabled;
  videoTransmitterHandle = self->_videoTransmitterHandle;
  if (videoTransmitterHandle != 0xFFFFFFFFLL)
  {
    VideoTransmitter_SetIsRtxEnabled(videoTransmitterHandle, enabled);
  }
}

- (void)initWithConfig:(void *)a1 .cold.1(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = v5;
        OUTLINED_FUNCTION_0();
        v14 = 65;
        v7 = " [%s] %s:%d The provided config is nil";
        v8 = v6;
        v9 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, &v12, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [a1 performSelector:sel_logPrefix];
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
        v12 = 136316162;
        v13 = v10;
        OUTLINED_FUNCTION_0();
        v14 = 65;
        v15 = 2112;
        v16 = v4;
        v17 = 2048;
        v18 = a1;
        v7 = " [%s] %s:%d %@(%p) The provided config is nil";
        v8 = v11;
        v9 = 48;
        goto LABEL_11;
      }
    }
  }

  *a2 = a1;
}

- (void)initWithConfig:(void *)a1 .cold.2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315650;
      v5 = v2;
      OUTLINED_FUNCTION_0();
      v6 = 64;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to initialize the transmitter.", &v4, 0x1Cu);
    }
  }

  *a1 = 0;
}

@end