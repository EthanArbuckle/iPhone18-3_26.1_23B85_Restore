@interface VCVideoTransmitterDefault
+ (void)setupBandwidthEstimationOptions:(tagBWEOPTION *)a3 featureString:(id)a4;
- (VCVideoTransmitterDefault)initWithConfig:(id)a3;
- (unsigned)setTemporaryMaximumBitrate:(unsigned int)a3;
- (void)collectChannelMetrics:(id *)a3 interval:(float)a4;
- (void)dealloc;
- (void)generateKeyFrameWithFIRType:(int)a3;
- (void)handleActiveConnectionChange:(id)a3;
- (void)handleActiveConnectionChangeDefault:(id)a3;
- (void)handleActiveConnectionChangeMultiway:(id)a3;
- (void)setRtxEnabled:(BOOL)a3;
- (void)setTargetBitrate:(unsigned int)a3;
- (void)setUpAspectRatios:(BOOL)a3;
- (void)setUpAspectRatiosFromFeatureListString:(const char *)a3;
- (void)startVideo;
- (void)stopVideo;
- (void)updateWindowState:(int)a3 isLocal:(BOOL)a4 windowRect:(CGRect)a5;
@end

@implementation VCVideoTransmitterDefault

- (VCVideoTransmitterDefault)initWithConfig:(id)a3
{
  v135 = *MEMORY[0x1E69E9840];
  v49 = 0;
  v50 = 0;
  self->_logPrefix = [a3 logPrefix];
  if ([a3 rtpTimestampRate])
  {
    v5 = [a3 rtpTimestampRate];
  }

  else
  {
    v5 = 24000;
  }

  self->_audioTimestampRate = v5;
  self->_forceL4SHighDataRate = [a3 forceL4SHighDataRate];
  v48.receiver = self;
  v48.super_class = VCVideoTransmitterDefault;
  v6 = [(VCVideoTransmitterBase *)&v48 initWithConfig:a3];
  if (!v6)
  {
    [VCVideoTransmitterDefault initWithConfig:?];
LABEL_53:
    value = v126.value;
LABEL_55:

    return 0;
  }

  v7 = v6;
  if (!a3)
  {
    [(VCVideoTransmitterDefault *)v6 initWithConfig:?];
    goto LABEL_53;
  }

  CMTimeMake(&v126, 0, v6->_audioTimestampRate);
  v8 = *&v126.value;
  v7->super._latestSampleBufferTimestamp.epoch = v126.epoch;
  *&v7->super._latestSampleBufferTimestamp.value = v8;
  v9 = [a3 mediaControlInfoGenerator];
  if (v9)
  {
    v9 = CFRetain(v9);
  }

  v7->super._controlInfoGenerator = v9;
  v10 = [a3 customFeatureListStrings];
  v11 = [v10 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(a3, "videoPayload"))}];
  v7->_transmitterMode = [a3 mode];
  v12 = 0;
  if ([a3 mode] == 1 && v11)
  {
    if ([a3 setupBWEstimationOptionWithFeatureString])
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
  if ([a3 streamCount] >= 1)
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = v51[0]++;
      v24 = &v51[16 * v23 + 2];
      v25 = [a3 streamConfigs];
      v26 = *(v25 + v21 + 48);
      v28 = *(v25 + v21);
      v27 = *(v25 + v21 + 16);
      *(v24 + 2) = *(v25 + v21 + 32);
      *(v24 + 3) = v26;
      *v24 = v28;
      *(v24 + 1) = v27;
      ++v22;
      v21 += 64;
    }

    while (v22 < [a3 streamCount]);
  }

  v92 = [a3 encoderUsage];
  if ([a3 mode] == 1)
  {
    encodingWidth = v7->super._encodingWidth;
    v69 = encodingWidth;
    encodingHeight = v7->super._encodingHeight;
    v73 = encodingHeight;
    v71 = [a3 framerate];
    v74 = [a3 framerate];
  }

  controlInfoGenerator = v7->super._controlInfoGenerator;
  v53 = [a3 reportingAgent];
  v54 = [a3 reportingParentID];
  v123 = [a3 experimentManager];
  v65 = v7->super._encodingWidth;
  v66 = v7->super._encodingHeight;
  v68 = [a3 pixelFormat];
  v67 = [a3 framerate];
  v75 = [a3 txMaxBitrate];
  v79 = [a3 videoPayload];
  v76 = -1;
  v77 = [a3 keyFrameInterval];
  [a3 minKeyFrameGenerationIntervalInSeconds];
  DoubleValueForKey = VCDefaults_GetDoubleValueForKey(@"minKeyFrameGenerationInterval", v29);
  v82 = 0x20000000200;
  v85 = [v11 UTF8String];
  v63 = v12;
  v62 = VCCPUCount() > 1;
  v64 = 1;
  v57 = 1;
  if ([a3 recommendedMTU])
  {
    v30 = [a3 recommendedMTU];
  }

  else
  {
    v30 = 1280;
  }

  v86 = v30;
  v58 = [a3 isIPv6];
  v83 = [a3 parameterSets];
  v60 = 1;
  v61 = 2;
  v89 = [a3 mode];
  v90 = [a3 captureSource];
  audioTimestampRate = v7->_audioTimestampRate;
  v91 = [a3 encodingMode];
  v84 = [a3 colorInfo];
  v93 = [a3 videoPriorityPointer];
  v94 = [a3 tilesPerFrame];
  v56 = [a3 statisticsCollector];
  v59 = [a3 useRateControl];
  v100 = [a3 qualityIndex];
  v87 = [+[VCDefaults sharedInstance](VCDefaults enableTxSourceYuvDump];
  v88 = [+[VCDefaults sharedInstance](VCDefaults enableTxBitstreamDump];
  v96 = [a3 reinitEncoderOnFrameSizeChangeEnabled];
  v99 = [a3 remoteIDSParticipantID];
  v55 = [a3 mediaController];
  v81 = &v49;
  v101 = [a3 profileLevel];
  v97 = [a3 isFecGeneratorEnabled];
  v98 = [a3 fecHeaderVersion];
  v95 = [a3 fecHeaderV1Enabled];
  v102 = [a3 temporalScalingEnabled];
  v103 = [a3 maxSupportedTemporalLayers];
  v104 = [a3 cvoExtensionID];
  v105 = [a3 useInBandFec];
  v106 = [a3 maxEncoderPixels];
  v107 = [a3 encoderBitrateAveragingInterval];
  v108 = [a3 ltrAckFeedbackType];
  v109 = [a3 isLowBandwidthSinglePacketDuplicationEnabled];
  v111 = [a3 fecEnabled];
  v112 = [a3 rtxEnabled];
  v113 = [a3 foveationEnabled];
  v114 = [a3 pdEncryptionContext];
  v115 = [a3 stereoVideoPackingType];
  v116 = [a3 useMultiImageEncoding];
  v119 = [a3 sessionId];
  v120 = [a3 participantId];
  v121 = [a3 streamGroupId];
  v122 = [a3 streamToken];
  v117 = [a3 enableInterleavedEncoding];
  v118 = [a3 numberOfInterleavedEncoders];
  v124 = [a3 videoFrameMetadataSupportedVersion];
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

- (void)setUpAspectRatios:(BOOL)a3
{
  v3 = a3;
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
    v33 = self;
    v34 = 1024;
    v35 = v3;
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
      *v32 = v3;
      *&v32[4] = 1024;
      *&v32[6] = v8;
      LOWORD(v33) = 1024;
      *(&v33 + 2) = v9;
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

- (void)setUpAspectRatiosFromFeatureListString:(const char *)a3
{
  v52 = *MEMORY[0x1E69E9840];
  self->_canRemoteResizePIP = 0;
  v30 = -1431655766;
  v28 = -1431655766;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  if ([VCVideoFeatureListStringHelper extractAspectRatios:a3 landscapeX:&v30 landscapeY:&v29 + 4 portraitX:&v29 portraitY:&v28])
  {
    if (+[VCVideoFeatureListStringHelper isResizePIPSupportedInFeatureListString:](VCVideoFeatureListStringHelper, "isResizePIPSupportedInFeatureListString:", [MEMORY[0x1E696AEC0] stringWithUTF8String:a3]))
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
  if (![VCVideoFeatureListStringHelper extractExpectedAspectRatios:a3 expectedLandscapeX:&v27 expectedLandscapeY:&v26 + 4 expectedPortraitX:&v26 expectedPortraitY:&v25])
  {
    v27 = v30;
    v25 = v28;
    v26 = v29;
  }

  v23 = *MEMORY[0x1E695F060];
  v24 = v23;
  [VCVideoFeatureListStringHelper extractExpectedAspectRatiosFromFeatureString:a3 expectedFullScreenAspectRatios:&v23];
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
        LOWORD(v39) = 1024;
        *(&v39 + 2) = v29;
        HIWORD(v39) = 1024;
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
        v39 = self;
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

+ (void)setupBandwidthEstimationOptions:(tagBWEOPTION *)a3 featureString:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v7 = 0;
  VideoUtil_ParseFeatureListString([a4 UTF8String], &v8, &v7);
  v5 = [CFPreferencesCopyAppValue(@"useFakeLF" @"com.apple.VideoConference")];
  v6 = (v7 | v5) & 1;
  a3->var2 = v5 & ~v7 & 1;
  a3->var3 = 0;
  a3->var0 = v6;
  a3->var1 = v6;
}

- (void)generateKeyFrameWithFIRType:(int)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  videoTransmitterHandle = self->_videoTransmitterHandle;
  if (a3 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  VideoTransmitter_GenerateKeyFrameNow(videoTransmitterHandle, 0, 0, v5, 0, 1, a3);
  v6[0] = NAN;
  VideoTransmitter_GetLastKeyFrameSentTime(self->_videoTransmitterHandle, v6);
  [(VCVideoTransmitterBase *)self setLastKeyFrameSentTime:v6[0]];
}

- (unsigned)setTemporaryMaximumBitrate:(unsigned int)a3
{
  result = self->super._temporaryMaximumBitrate;
  if (result == a3)
  {
    return a3;
  }

  if (self->super._txMaxBitrate >= a3 && self->super._txMinBitrate <= a3)
  {
    VideoTransmitter_SetBitrate(self->_videoTransmitterHandle, a3);
    self->super._temporaryMaximumBitrate = a3;
    return a3;
  }

  return result;
}

- (void)setTargetBitrate:(unsigned int)a3
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
    v25 = self;
    v26 = 1024;
    v27 = a3;
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
      *v24 = a3;
      *&v24[4] = 1024;
      *&v24[6] = v8;
      LOWORD(v25) = 1024;
      *(&v25 + 2) = v9;
      v10 = " [%s] %s:%d Set targetBitrate=%d, Max=%d, Min=%d";
      v11 = v7;
      v12 = 46;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v17, v12);
    }
  }

LABEL_12:
  if (self->super._targetBitrate != a3 && self->super._txMaxBitrate >= a3 && self->super._txMinBitrate <= a3)
  {
    VideoTransmitter_SetTargetBitrate(self->_videoTransmitterHandle, a3, self->super._targetBitrateChangeCounter, 0);
    self->super._targetBitrate = a3;
  }
}

- (void)collectChannelMetrics:(id *)a3 interval:(float)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = 0.0;
  v11[0] = 0.0;
  v9 = 0;
  VideoTransmitter_GetBitrate(a4, self->_videoTransmitterHandle, v11);
  VideoTransmitter_GetFramerate(a4, self->_videoTransmitterHandle, &v10);
  VideoTransmitter_GetLastVideoSampleTime(self->_videoTransmitterHandle, &v9);
  a3->var0 = (v11[0] / 1000.0);
  a3->var3 = v10;
  lastSentAudioHostTime = self->super._lastSentAudioHostTime;
  a3->var2 = 0;
  lastSentAudioSampleTime = self->super._lastSentAudioSampleTime;
  a3->var5 = lastSentAudioHostTime;
  a3->var6 = lastSentAudioSampleTime;
  a3->var7 = self->_lastSentVideoHostTime;
  a3->var8 = v9;
}

- (void)updateWindowState:(int)a3 isLocal:(BOOL)a4 windowRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4;
  VideoTransmitter_SetWindowState(self->_videoTransmitterHandle, a4, a3);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  if (!CGRectEqualToRect(v13, *MEMORY[0x1E695F058]))
  {
    videoTransmitterHandle = self->_videoTransmitterHandle;

    VideoTransmitter_SetVisualRectangle(x, y, width, height, videoTransmitterHandle, v9);
  }
}

- (void)handleActiveConnectionChangeDefault:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  IsLocalOnCellular = VCConnection_IsLocalOnCellular(a3);
  IsRemoteOnCellular = VCConnection_IsRemoteOnCellular(a3);
  videoTransmitterHandle = self->_videoTransmitterHandle;
  v8 = VCConnection_LocalCellTech(a3);
  v9 = VCConnection_RemoteCellTech(a3);
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
        HIDWORD(v26) = [a3 uplinkBitrateCapOneToOne];
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
        v27 = self;
        LOWORD(v28) = 1024;
        *(&v28 + 2) = v19;
        HIWORD(v28) = 1024;
        LODWORD(v29) = [a3 uplinkBitrateCapOneToOne];
        v14 = " [%s] %s:%d %@(%p) Received new connection, changing max tx bitrate from [%d] to [%d]";
        v15 = v18;
        v16 = 60;
        goto LABEL_12;
      }
    }
  }

  self->super._txMaxBitrate = [a3 uplinkBitrateCapOneToOne];
  if (self->_forceL4SHighDataRate)
  {
    VideoTransmitter_SetBitrate(self->_videoTransmitterHandle, [a3 uplinkBitrateCapOneToOne]);
  }

LABEL_15:
  IsIPv6 = VCConnection_IsIPv6(a3);
  if (self->_transmitterMode == 1 && ((IsLocalOnCellular | IsRemoteOnCellular) & 1) != 0)
  {
    if ([a3 maxConnectionMTU])
    {
      v21 = [a3 maxConnectionMTU];
    }

    else
    {
      v21 = [a3 connectionMTU];
    }

    v23 = v21;
    v24 = self->_videoTransmitterHandle;
  }

  else
  {
    v22 = self->_videoTransmitterHandle;
    if (IsLocalOnCellular)
    {
      v23 = [a3 connectionMTU];
      v24 = v22;
    }

    else
    {
      v24 = self->_videoTransmitterHandle;
      v23 = 1280;
    }
  }

  VideoTransmitter_UpdateMTU(v24, v23, IsIPv6);
  [(VCVideoTransmitterDefault *)self setUpAspectRatios:IsRemoteOnCellular];
}

- (void)handleActiveConnectionChangeMultiway:(id)a3
{
  IsIPv6 = VCConnection_IsIPv6(a3);
  videoTransmitterHandle = self->_videoTransmitterHandle;
  v7 = [a3 maxConnectionMTU];

  VideoTransmitter_UpdateMTU(videoTransmitterHandle, v7, IsIPv6);
}

- (void)handleActiveConnectionChange:(id)a3
{
  if (self->_transmitterMode == 2)
  {
    [(VCVideoTransmitterDefault *)self handleActiveConnectionChangeMultiway:a3];
  }

  else
  {
    [(VCVideoTransmitterDefault *)self handleActiveConnectionChangeDefault:a3];
  }
}

- (void)setRtxEnabled:(BOOL)a3
{
  self->super._rtxEnabled = a3;
  videoTransmitterHandle = self->_videoTransmitterHandle;
  if (videoTransmitterHandle != 0xFFFFFFFFLL)
  {
    VideoTransmitter_SetIsRtxEnabled(videoTransmitterHandle, a3);
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