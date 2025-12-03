@interface VCVideoReceiverDefault
- (BOOL)initializeDisplayLink;
- (VCVideoReceiverDefault)initWithConfig:(tagVCVideoReceiverConfig *)config delegate:(id)delegate delegateFunctions:(const tagVCVideoReceiverDelegateRealtimeInstanceVTable *)functions reportingAgent:(opaqueRTCReporting *)agent statisticsCollector:(id)collector transmitterHandle:(tagHANDLE *)handle sensitiveContentAnalyzer:(id)analyzer;
- (double)activeVideoStallDuration;
- (double)lastReceivedVideoRTCPPacketTime;
- (double)lastReceivedVideoRTPPacketTime;
- (double)videoReceiverRxFrameRate;
- (float)lastLastVideoStallDuration;
- (int)oneToOneStreamIndex;
- (int)startVideo;
- (unsigned)lastDisplayedFrameRTPTimestamp;
- (void)cleanUpDisplayLink;
- (void)collectChannelMetrics:(id *)metrics interval:(float)interval;
- (void)dealloc;
- (void)didSwitchFromStreamID:(unsigned __int16)d toStreamID:(unsigned __int16)iD;
- (void)handleKeyFrameRequestWithSizeAndFistMBs:(unsigned __int16 *)bs count:(int)count didReceiveRTCPFB:(BOOL)b didReceiveFIR:(BOOL)r;
- (void)handleRequestingKeyFrameGenerationWithStreamID:(unsigned __int16)d firType:(int)type;
- (void)initializeDisplayLink;
- (void)setMode:(int)mode;
- (void)setShouldEnableFaceZoom:(BOOL)zoom;
- (void)setShouldEnableMLEnhance:(BOOL)enhance streamID:(unsigned __int16)d;
- (void)setTargetStreamID:(unsigned __int16)d;
- (void)setUpCannedInjector:(tagVCVideoReceiverConfig *)injector;
- (void)setUpOneToOneReceiveSettings;
- (void)setUpRemoteAspectRatios;
- (void)setUpRemoteAspectRatiosForPayload:(int)payload;
- (void)setUpRemoteAspectRatiosFromFreatureListString:(const char *)string;
- (void)startVideo;
- (void)stopVideo;
- (void)updateSourcePlayoutTime:(const tagVCMediaTime *)time;
- (void)videoReceiverRxFrameRate;
@end

@implementation VCVideoReceiverDefault

- (void)setUpCannedInjector:(tagVCVideoReceiverConfig *)injector
{
  if ([+[VCDefaults useCannedVideoPackets] sharedInstance]
  {
    v6 = VCDefaults_CopyStringValueForKey(@"cannedVideoPacketFile");
    v5 = -[VCCannedVideoPacketSource initWithMode:filePath:]([VCCannedVideoPacketSource alloc], "initWithMode:filePath:", [+[VCDefaults sharedInstance](VCDefaults cannedVideoPacketMode], v6);
    self->_cannedPacketSource = v5;
    injector->cannedReplayContext = v5;
  }
}

- (void)setMode:(int)mode
{
  v25 = *MEMORY[0x1E69E9840];
  self->_videoReceiverConfig.mode = mode;
  self->_notifyDelegateVideoAttributeChanges = mode == 0;
  [(VCVideoReceiverDefault *)self setUpOneToOneReceiveSettings];
  self->_pendingVideoAttributesUpdateOnModeChange = 1;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315906;
        v14 = v6;
        v15 = 2080;
        v16 = "[VCVideoReceiverDefault setMode:]";
        v17 = 1024;
        v18 = 253;
        v19 = 1024;
        LODWORD(v20) = mode;
        v8 = " [%s] %s:%d New mode=%d";
        v9 = v7;
        v10 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCVideoReceiverDefault *)self performSelector:sel_logPrefix];
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
        v13 = 136316418;
        v14 = v11;
        v15 = 2080;
        v16 = "[VCVideoReceiverDefault setMode:]";
        v17 = 1024;
        v18 = 253;
        v19 = 2112;
        v20 = v5;
        v21 = 2048;
        selfCopy = self;
        v23 = 1024;
        modeCopy = mode;
        v8 = " [%s] %s:%d %@(%p) New mode=%d";
        v9 = v12;
        v10 = 54;
        goto LABEL_11;
      }
    }
  }
}

- (int)oneToOneStreamIndex
{
  v36 = *MEMORY[0x1E69E9840];
  p_videoReceiverConfig = &self->_videoReceiverConfig;
  if (self->_videoReceiverConfig.mode || (streamCount = p_videoReceiverConfig->streamCount, streamCount < 1))
  {
LABEL_2:
    LODWORD(v4) = 0;
  }

  else
  {
    v4 = 0;
    p_isOneToOne = &self->_videoReceiverConfig.streamConfigs[0].isOneToOne;
    while (1)
    {
      v8 = *p_isOneToOne;
      p_isOneToOne += 128;
      if (v8)
      {
        break;
      }

      if (streamCount == ++v4)
      {
        goto LABEL_2;
      }
    }
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        mode = p_videoReceiverConfig->mode;
        v12 = p_videoReceiverConfig->streamCount;
        v21 = 136316418;
        v22 = v9;
        v23 = 2080;
        v24 = "[VCVideoReceiverDefault oneToOneStreamIndex]";
        v25 = 1024;
        v26 = 276;
        v27 = 1024;
        *v28 = mode;
        *&v28[4] = 1024;
        *&v28[6] = v12;
        LOWORD(selfCopy) = 1024;
        *(&selfCopy + 2) = v4;
        v13 = " [%s] %s:%d mode=%d, streamCount=%d, streamIndex=%d";
        v14 = v10;
        v15 = 46;
LABEL_18:
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, &v21, v15);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCVideoReceiverDefault *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v18 = p_videoReceiverConfig->mode;
        v19 = p_videoReceiverConfig->streamCount;
        v21 = 136316930;
        v22 = v16;
        v23 = 2080;
        v24 = "[VCVideoReceiverDefault oneToOneStreamIndex]";
        v25 = 1024;
        v26 = 276;
        v27 = 2112;
        *v28 = v5;
        *&v28[8] = 2048;
        selfCopy = self;
        v30 = 1024;
        v31 = v18;
        v32 = 1024;
        v33 = v19;
        v34 = 1024;
        v35 = v4;
        v13 = " [%s] %s:%d %@(%p) mode=%d, streamCount=%d, streamIndex=%d";
        v14 = v17;
        v15 = 66;
        goto LABEL_18;
      }
    }
  }

  return v4;
}

- (void)setUpRemoteAspectRatios
{
  v3 = [VCVideoFeatureListStringHelper defaultPayload:self->_videoReceiverConfig.streamConfigs[[(VCVideoReceiverDefault *)self oneToOneStreamIndex]].featureListStrings];

  [(VCVideoReceiverDefault *)self setUpRemoteAspectRatiosForPayload:v3];
}

- (void)setUpRemoteAspectRatiosForPayload:(int)payload
{
  v9 = *MEMORY[0x1E69E9840];
  if (payload != 128)
  {
    v3 = *&payload;
    oneToOneStreamIndex = [(VCVideoReceiverDefault *)self oneToOneStreamIndex];
    *&v8[14] = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v7[7] = v6;
    *v8 = v6;
    v7[5] = v6;
    v7[6] = v6;
    v7[3] = v6;
    v7[4] = v6;
    v7[1] = v6;
    v7[2] = v6;
    v7[0] = v6;
    if ([VCVideoFeatureListStringHelper featureListString:v7 maxSize:150 payload:v3 featureListStrings:self->_videoReceiverConfig.streamConfigs[oneToOneStreamIndex].featureListStrings])
    {
      [(VCVideoReceiverDefault *)self setUpRemoteAspectRatiosFromFreatureListString:v7];
    }
  }
}

- (void)setUpRemoteAspectRatiosFromFreatureListString:(const char *)string
{
  v67 = *MEMORY[0x1E69E9840];
  v54 = 3;
  v52 = 3;
  v53 = 0x200000002;
  v5 = [VCVideoFeatureListStringHelper extractAspectRatios:string landscapeX:&v54 landscapeY:&v53 + 4 portraitX:&v53 portraitY:&v52];
  self->_canRemoteResizePIP = +[VCVideoFeatureListStringHelper isResizePIPSupportedInFeatureListString:](VCVideoFeatureListStringHelper, "isResizePIPSupportedInFeatureListString:", [MEMORY[0x1E696AEC0] stringWithUTF8String:string]);
  v51 = -1431655766;
  v49 = -1431655766;
  v50 = 0xAAAAAAAAAAAAAAAALL;
  v6 = [VCVideoFeatureListStringHelper extractExpectedAspectRatios:string expectedLandscapeX:&v51 expectedLandscapeY:&v50 + 4 expectedPortraitX:&v50 expectedPortraitY:&v49];
  self->_remoteSupportsExpectedAspectRatio = v6;
  if (!v6)
  {
    v51 = v54;
    v49 = v52;
    v50 = v53;
  }

  v47 = *MEMORY[0x1E695F060];
  v48 = v47;
  [VCVideoFeatureListStringHelper extractExpectedAspectRatiosFromFeatureString:string expectedFullScreenAspectRatios:&v47];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        remoteSupportsExpectedAspectRatio = self->_remoteSupportsExpectedAspectRatio;
        *buf = 136316162;
        v56 = v8;
        v57 = 2080;
        v58 = "[VCVideoReceiverDefault setUpRemoteAspectRatiosFromFreatureListString:]";
        v59 = 1024;
        v60 = 337;
        v61 = 1024;
        *v62 = v5;
        *&v62[4] = 1024;
        *&v62[6] = remoteSupportsExpectedAspectRatio;
        v11 = " [%s] %s:%d containsAspectRatios=%d, _remoteSupportsExpectedAspectRatio=%d";
        v12 = v9;
        v13 = 40;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCVideoReceiverDefault *)self performSelector:sel_logPrefix];
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
        v16 = self->_remoteSupportsExpectedAspectRatio;
        *buf = 136316674;
        v56 = v14;
        v57 = 2080;
        v58 = "[VCVideoReceiverDefault setUpRemoteAspectRatiosFromFreatureListString:]";
        v59 = 1024;
        v60 = 337;
        v61 = 2112;
        *v62 = v7;
        *&v62[8] = 2048;
        *v63 = self;
        *&v63[8] = 1024;
        *v64 = v5;
        *&v64[4] = 1024;
        *&v64[6] = v16;
        v11 = " [%s] %s:%d %@(%p) containsAspectRatios=%d, _remoteSupportsExpectedAspectRatio=%d";
        v12 = v15;
        v13 = 60;
        goto LABEL_13;
      }
    }
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316930;
        v56 = v18;
        v57 = 2080;
        v58 = "[VCVideoReceiverDefault setUpRemoteAspectRatiosFromFreatureListString:]";
        v59 = 1024;
        v60 = 338;
        v61 = 2080;
        *v62 = string;
        *&v62[8] = 1024;
        *v63 = v54;
        *&v63[4] = 1024;
        *&v63[6] = HIDWORD(v53);
        *v64 = 1024;
        *&v64[2] = v50;
        *&v64[6] = 1024;
        *&v64[8] = v49;
        v20 = " [%s] %s:%d featureListString=%s, AR=%d/%d, XR=%d/%d";
        v21 = v19;
        v22 = 62;
LABEL_24:
        _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [(VCVideoReceiverDefault *)self performSelector:sel_logPrefix];
    }

    else
    {
      v17 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136317442;
        v56 = v23;
        v57 = 2080;
        v58 = "[VCVideoReceiverDefault setUpRemoteAspectRatiosFromFreatureListString:]";
        v59 = 1024;
        v60 = 338;
        v61 = 2112;
        *v62 = v17;
        *&v62[8] = 2048;
        *v63 = self;
        *&v63[8] = 2080;
        *v64 = string;
        *&v64[8] = 1024;
        *&v64[10] = v54;
        *&v64[14] = 1024;
        *&v64[16] = HIDWORD(v53);
        LOWORD(v65) = 1024;
        *(&v65 + 2) = v50;
        HIWORD(v65) = 1024;
        *v66 = v49;
        v20 = " [%s] %s:%d %@(%p) featureListString=%s, AR=%d/%d, XR=%d/%d";
        v21 = v24;
        v22 = 82;
        goto LABEL_24;
      }
    }
  }

  v25 = v52;
  self->_remoteScreenAspectRatios.portrait.width = v53;
  self->_remoteScreenAspectRatios.portrait.height = v25;
  v26 = SHIDWORD(v53);
  self->_remoteScreenAspectRatios.landscape.width = v54;
  self->_remoteScreenAspectRatios.landscape.height = v26;
  v27 = v49;
  self->_remoteExpectedAspectRatios.portrait.width = v50;
  self->_remoteExpectedAspectRatios.portrait.height = v27;
  v28 = SHIDWORD(v50);
  self->_remoteExpectedAspectRatios.landscape.width = v51;
  self->_remoteExpectedAspectRatios.landscape.height = v28;
  p_remoteExpectedFullScreenAspectRatios = &self->_remoteExpectedFullScreenAspectRatios;
  v30 = v48;
  self->_remoteExpectedFullScreenAspectRatios.portrait = v47;
  self->_remoteExpectedFullScreenAspectRatios.landscape = v30;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v32 = VRTraceErrorLogLevelToCSTR();
      v33 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        width = p_remoteExpectedFullScreenAspectRatios->portrait.width;
        height = p_remoteExpectedFullScreenAspectRatios->portrait.height;
        v36 = p_remoteExpectedFullScreenAspectRatios->landscape.width;
        v37 = p_remoteExpectedFullScreenAspectRatios->landscape.height;
        *buf = 136316674;
        v56 = v32;
        v57 = 2080;
        v58 = "[VCVideoReceiverDefault setUpRemoteAspectRatiosFromFreatureListString:]";
        v59 = 1024;
        v60 = 348;
        v61 = 2048;
        *v62 = width;
        *&v62[8] = 2048;
        *v63 = height;
        *&v63[8] = 2048;
        *v64 = v36;
        *&v64[8] = 2048;
        *&v64[10] = v37;
        v38 = " [%s] %s:%d _remoteExpectedFullScreenAspectRatios.portrait=%g/%g, _remoteExpectedFullScreenAspectRatios.landscape=%g/%g";
        v39 = v33;
        v40 = 68;
LABEL_35:
        _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, v38, buf, v40);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v31 = [(VCVideoReceiverDefault *)self performSelector:sel_logPrefix];
    }

    else
    {
      v31 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v41 = VRTraceErrorLogLevelToCSTR();
      v42 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v43 = p_remoteExpectedFullScreenAspectRatios->portrait.width;
        v44 = self->_remoteExpectedFullScreenAspectRatios.portrait.height;
        v45 = self->_remoteExpectedFullScreenAspectRatios.landscape.width;
        v46 = self->_remoteExpectedFullScreenAspectRatios.landscape.height;
        *buf = 136317186;
        v56 = v41;
        v57 = 2080;
        v58 = "[VCVideoReceiverDefault setUpRemoteAspectRatiosFromFreatureListString:]";
        v59 = 1024;
        v60 = 348;
        v61 = 2112;
        *v62 = v31;
        *&v62[8] = 2048;
        *v63 = self;
        *&v63[8] = 2048;
        *v64 = v43;
        *&v64[8] = 2048;
        *&v64[10] = v44;
        *&v64[18] = 2048;
        v65 = v45;
        *v66 = 2048;
        *&v66[2] = v46;
        v38 = " [%s] %s:%d %@(%p) _remoteExpectedFullScreenAspectRatios.portrait=%g/%g, _remoteExpectedFullScreenAspectRatios.landscape=%g/%g";
        v39 = v42;
        v40 = 88;
        goto LABEL_35;
      }
    }
  }
}

- (void)setUpOneToOneReceiveSettings
{
  v3 = &self->_videoReceiverConfig + 128 * [(VCVideoReceiverDefault *)self oneToOneStreamIndex];
  self->_afbRxFrontCameraEnabled = v3[125];
  self->_afbRxBackCameraEnabled = v3[126];
  self->_videoFrameMetadataSupportedVersion = *(v3 + 32);
}

- (void)dealloc
{
  v29 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v20 = v4;
        v21 = 2080;
        v22 = "[VCVideoReceiverDefault dealloc]";
        v23 = 1024;
        v24 = 359;
        v6 = " [%s] %s:%d dealloc called";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCVideoReceiverDefault *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v20 = v9;
        v21 = 2080;
        v22 = "[VCVideoReceiverDefault dealloc]";
        v23 = 1024;
        v24 = 359;
        v25 = 2112;
        v26 = v3;
        v27 = 2048;
        selfCopy = self;
        v6 = " [%s] %s:%d %@(%p) dealloc called";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  [(VCVideoReceiverDefault *)self cleanUpDisplayLink];
  if (self->_videoReceiverHandle != 0xFFFFFFFFLL)
  {
    VideoReceiver_CloseHandle();
    self->_videoReceiverHandle = 0xFFFFFFFFLL;
  }

  p_videoReceiverConfig = &self->_videoReceiverConfig;
  participantId = self->_videoReceiverConfig.participantId;
  if (participantId)
  {
    CFRelease(participantId);
    self->_videoReceiverConfig.participantId = 0;
  }

  sessionId = self->_videoReceiverConfig.sessionId;
  if (sessionId)
  {
    CFRelease(sessionId);
    self->_videoReceiverConfig.sessionId = 0;
  }

  controlInfoGenerator = self->_controlInfoGenerator;
  if (controlInfoGenerator)
  {
    CFRelease(controlInfoGenerator);
  }

  if (p_videoReceiverConfig->streamCount)
  {
    v15 = 0;
    p_sframeCryptor = &self->_videoReceiverConfig.streamConfigs[0].sframeCryptor;
    do
    {
      v17 = *(p_sframeCryptor - 2);
      if (v17)
      {
        CFRelease(v17);
      }

      if (*p_sframeCryptor)
      {
        CFRelease(*p_sframeCryptor);
      }

      ++v15;
      p_sframeCryptor += 16;
    }

    while (v15 < p_videoReceiverConfig->streamCount);
  }

  [(VCVideoHardwareDumpCollector *)self->_validationContext invalidate];
  v18.receiver = self;
  v18.super_class = VCVideoReceiverDefault;
  [(VCVideoReceiverBase *)&v18 dealloc];
}

- (BOOL)initializeDisplayLink
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_videoReceiverConfig.enableQueueAlarmForDisplay)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (self->_videoReceiverConfig.enableQueueAlarmForDisplay)
  {
    v4 = 2;
  }

  else
  {
    v4 = 39;
  }

  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __47__VCVideoReceiverDefault_initializeDisplayLink__block_invoke;
  v10 = &unk_1E85F6B38;
  selfCopy = self;
  v5 = [[VCDisplayLink alloc] initWithHandler:&v7 threadPriority:v4 threadOptions:v3 threadIdentifier:@"com.apple.VCVideoReceiverDefault.VCDisplayLink" preferredFrameRate:0.0];
  self->_displayLink = v5;
  if (!v5)
  {
    [VCVideoReceiverDefault initializeDisplayLink];
LABEL_13:
    [(VCVideoReceiverDefault *)self cleanUpDisplayLink:v7];
    return 0;
  }

  if (![(VCDisplayLink *)v5 activate:v7])
  {
    [VCVideoReceiverDefault initializeDisplayLink];
    goto LABEL_13;
  }

  return 1;
}

uint64_t __47__VCVideoReceiverDefault_initializeDisplayLink__block_invoke(uint64_t a1, double *a2)
{
  result = *(*(a1 + 32) + 112);
  if (result != 0xFFFFFFFFLL)
  {
    return VideoReceiver_DisplayLinkTick(a2[1], *a2, a2[2]);
  }

  return result;
}

- (void)cleanUpDisplayLink
{
  [(VCDisplayLink *)self->_displayLink deactivate];

  self->_displayLink = 0;
}

- (int)startVideo
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_videoReceiverConfig.useDisplayLink && ![(VCVideoReceiverDefault *)self initializeDisplayLink])
  {
    [(VCVideoReceiverDefault *)self startVideo];
    v3 = v11;
  }

  else
  {
    v3 = VideoReceiver_SetVTHandleAndStart(self->_videoReceiverHandle, self->_videoTransmitterHandle);
    if ((v3 & 0x80000000) == 0)
    {
      [(VCCannedVideoPacketSource *)self->_cannedPacketSource startCannedInjection];
      return v3;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCVideoReceiverDefault startVideo];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCVideoReceiverDefault *)self performSelector:sel_logPrefix];
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
          v11 = 136316418;
          v12 = v6;
          v13 = 2080;
          v14 = "[VCVideoReceiverDefault startVideo]";
          v15 = 1024;
          v16 = 444;
          v17 = 2112;
          v18 = v5;
          v19 = 2048;
          selfCopy2 = self;
          v21 = 1024;
          v22 = v3;
          _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) VideoReceiver_SetVTHandleAndStart failed, result=%x", &v11, 0x36u);
        }
      }
    }
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoReceiverDefault startVideo];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCVideoReceiverDefault *)self performSelector:sel_logPrefix];
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
        v11 = 136316418;
        v12 = v9;
        v13 = 2080;
        v14 = "[VCVideoReceiverDefault startVideo]";
        v15 = 1024;
        v16 = 451;
        v17 = 2112;
        v18 = v8;
        v19 = 2048;
        selfCopy2 = self;
        v21 = 1024;
        v22 = v3;
        _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) failed, result=%x", &v11, 0x36u);
      }
    }
  }

  return v3;
}

- (void)stopVideo
{
  [(VCVideoReceiverDefault *)self cleanUpDisplayLink];
  [(VCVideoStreamRateAdaptationFeedbackOnly *)self->_rateAdaptation setEnableRateAdaptation:0 maxBitrate:0 minBitrate:0 adaptationInterval:0.0];
  [(VCCannedVideoPacketSource *)self->_cannedPacketSource stopCannedInjection];
  if (self->_videoReceiverHandle != 0xFFFFFFFFLL)
  {
    VideoReceiver_CloseHandle();
    self->_videoReceiverHandle = 0xFFFFFFFFLL;
  }
}

- (double)lastReceivedVideoRTPPacketTime
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0x7FF8000000000000;
  VideoReceiver_GetLastReceivedVideoRTPPacketTime(self->_videoReceiverHandle, v3);
  return *v3;
}

- (double)lastReceivedVideoRTCPPacketTime
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0x7FF8000000000000;
  VideoReceiver_GetLastReceivedVideoRTCPPacketTime(self->_videoReceiverHandle, v3);
  return *v3;
}

- (float)lastLastVideoStallDuration
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = NAN;
  VideoReceiver_GetLastVideoStallDuration(self->_videoReceiverHandle, &v3);
  return v3;
}

- (void)setTargetStreamID:(unsigned __int16)d
{
  videoReceiverHandle = self->_videoReceiverHandle;
  if (videoReceiverHandle != 0xFFFFFFFFLL)
  {
    VideoReceiver_SetTargetStreamID(videoReceiverHandle, d);
  }
}

- (unsigned)lastDisplayedFrameRTPTimestamp
{
  if (self->_videoReceiverHandle == 0xFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return VideoReceiver_GetShowFrameRTPTimestamp();
  }
}

- (void)handleRequestingKeyFrameGenerationWithStreamID:(unsigned __int16)d firType:(int)type
{
  v4 = *&type;
  dCopy = d;
  v40 = *MEMORY[0x1E69E9840];
  v7 = micro();
  if (!self->_videoReceiverConfig.mode || self->_lastKeyFrameRequestStreamID != dCopy || ((lastKeyFrameRequestTime = self->_lastKeyFrameRequestTime, lastKeyFrameRequestTime != 0.0) ? (v9 = v7 - lastKeyFrameRequestTime < 0.5) : (v9 = 0), !v9))
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_18;
      }

      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v27 = 136316162;
      v28 = v11;
      v29 = 2080;
      v30 = "[VCVideoReceiverDefault handleRequestingKeyFrameGenerationWithStreamID:firType:]";
      v31 = 1024;
      v32 = 829;
      v33 = 1024;
      *v34 = dCopy;
      *&v34[4] = 1024;
      *&v34[6] = v4;
      v13 = " [%s] %s:%d Requesting Key Frame with streamID:%d FIRType:%d";
      v14 = v12;
      v15 = 40;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [(VCVideoReceiverDefault *)self performSelector:sel_logPrefix];
      }

      else
      {
        v10 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_18;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v27 = 136316674;
      v28 = v16;
      v29 = 2080;
      v30 = "[VCVideoReceiverDefault handleRequestingKeyFrameGenerationWithStreamID:firType:]";
      v31 = 1024;
      v32 = 829;
      v33 = 2112;
      *v34 = v10;
      *&v34[8] = 2048;
      selfCopy2 = self;
      v36 = 1024;
      v37 = dCopy;
      v38 = 1024;
      v39 = v4;
      v13 = " [%s] %s:%d %@(%p) Requesting Key Frame with streamID:%d FIRType:%d";
      v14 = v17;
      v15 = 60;
    }

    _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, &v27, v15);
LABEL_18:
    self->_lastKeyFrameRequestTime = v7;
    self->_lastKeyFrameRequestStreamID = dCopy;
    v18 = MEMORY[0x1E1289F20](&self->super._delegate);
    [v18 vcVideoReceiver:self requestKeyFrameGenerationWithStreamID:dCopy firType:v4];
    CFRelease(v18);
    VideoReceiver_IncrementFIRCount(self->_videoReceiverHandle, v4);
    return;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v27 = 136315906;
        v28 = v20;
        v29 = 2080;
        v30 = "[VCVideoReceiverDefault handleRequestingKeyFrameGenerationWithStreamID:firType:]";
        v31 = 1024;
        v32 = 825;
        v33 = 1024;
        *v34 = dCopy;
        v22 = " [%s] %s:%d Ignoring key frame request key frame too soon for the same streamID:%d";
        v23 = v21;
        v24 = 34;
LABEL_30:
        _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, v22, &v27, v24);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v19 = [(VCVideoReceiverDefault *)self performSelector:sel_logPrefix];
    }

    else
    {
      v19 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v27 = 136316418;
        v28 = v25;
        v29 = 2080;
        v30 = "[VCVideoReceiverDefault handleRequestingKeyFrameGenerationWithStreamID:firType:]";
        v31 = 1024;
        v32 = 825;
        v33 = 2112;
        *v34 = v19;
        *&v34[8] = 2048;
        selfCopy2 = self;
        v36 = 1024;
        v37 = dCopy;
        v22 = " [%s] %s:%d %@(%p) Ignoring key frame request key frame too soon for the same streamID:%d";
        v23 = v26;
        v24 = 54;
        goto LABEL_30;
      }
    }
  }
}

- (void)handleKeyFrameRequestWithSizeAndFistMBs:(unsigned __int16 *)bs count:(int)count didReceiveRTCPFB:(BOOL)b didReceiveFIR:(BOOL)r
{
  v7 = MEMORY[0x1E1289F20](&self->super._delegate, a2, bs, *&count, b, r);
  [v7 vcVideoReceiverRequestKeyFrame:self rtcpPSFBType:4];

  CFRelease(v7);
}

- (void)didSwitchFromStreamID:(unsigned __int16)d toStreamID:(unsigned __int16)iD
{
  iDCopy = iD;
  dCopy = d;
  v7 = MEMORY[0x1E1289F20](&self->super._delegate, a2);
  if (objc_opt_respondsToSelector())
  {
    [v7 vcVideoReceiver:self didSwitchFromStreamID:dCopy toStreamID:iDCopy];
  }

  CFRelease(v7);
}

- (void)collectChannelMetrics:(id *)metrics interval:(float)interval
{
  metrics->var0 = 0;
  metrics->var2 = 0;
  metrics->var4.width = 0.0;
  metrics->var4.height = 0.0;
  metrics->var3 = 0.0;
  VideoReceiver_GetMediaChannelMetrics(interval, self->_videoReceiverHandle, metrics);
}

- (void)updateSourcePlayoutTime:(const tagVCMediaTime *)time
{
  videoReceiverHandle = self->_videoReceiverHandle;
  if (videoReceiverHandle != 0xFFFFFFFFLL)
  {
    VideoReceiver_UpdateSourcePlayoutTime(videoReceiverHandle, time);
  }
}

- (void)setShouldEnableFaceZoom:(BOOL)zoom
{
  self->_shouldEnableFaceZoom = zoom;
  videoReceiverHandle = self->_videoReceiverHandle;
  if (videoReceiverHandle != 0xFFFFFFFFLL)
  {
    VideoReceiver_SetShouldEnableFaceZoom(videoReceiverHandle, zoom);
  }
}

- (void)setShouldEnableMLEnhance:(BOOL)enhance streamID:(unsigned __int16)d
{
  videoReceiverHandle = self->_videoReceiverHandle;
  if (videoReceiverHandle != 0xFFFFFFFFLL)
  {
    VideoReceiver_SetShouldEnableMLEnhance(videoReceiverHandle, d, enhance);
  }
}

- (double)activeVideoStallDuration
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0.0;
  videoReceiverHandle = self->_videoReceiverHandle;
  if (videoReceiverHandle == 0xFFFFFFFFLL)
  {
    return 0.0;
  }

  VideoReceiver_GetActiveVideoStallDuration(videoReceiverHandle, v4);
  return v4[0];
}

- (double)videoReceiverRxFrameRate
{
  self->_videoReceiverRxFrameRate = 0.0;
  videoReceiverHandle = self->_videoReceiverHandle;
  if (videoReceiverHandle == 0xFFFFFFFFLL)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoReceiverDefault videoReceiverRxFrameRate];
      }
    }
  }

  else
  {
    VideoReceiver_GetFramerate(5.0, videoReceiverHandle, &self->_videoReceiverRxFrameRate);
  }

  return self->_videoReceiverRxFrameRate;
}

- (VCVideoReceiverDefault)initWithConfig:(tagVCVideoReceiverConfig *)config delegate:(id)delegate delegateFunctions:(const tagVCVideoReceiverDelegateRealtimeInstanceVTable *)functions reportingAgent:(opaqueRTCReporting *)agent statisticsCollector:(id)collector transmitterHandle:(tagHANDLE *)handle sensitiveContentAnalyzer:(id)analyzer
{
  v65 = *MEMORY[0x1E69E9840];
  v51.receiver = self;
  v51.super_class = VCVideoReceiverDefault;
  v13 = [(VCVideoReceiverBase *)&v51 initWithDelegate:delegate delegateFunctions:functions];
  v14 = v13;
  if (!v13)
  {
    return v14;
  }

  p_videoReceiverConfig = &v13->_videoReceiverConfig;
  memcpy(&v13->_videoReceiverConfig, config, sizeof(v13->_videoReceiverConfig));
  v14->super._vTable.setExternalOutputLatency = _VCVideoReceiverDefault_SetExternalOutputLatency;
  participantId = v14->_videoReceiverConfig.participantId;
  if (participantId)
  {
    CFRetain(participantId);
  }

  sessionId = v14->_videoReceiverConfig.sessionId;
  if (sessionId)
  {
    CFRetain(sessionId);
  }

  v14->_notifyDelegateVideoAttributeChanges = v14->_videoReceiverConfig.mode == 0;
  mediaControlInfoGenerator = config->mediaControlInfoGenerator;
  if (mediaControlInfoGenerator)
  {
    mediaControlInfoGenerator = CFRetain(mediaControlInfoGenerator);
  }

  v14->_controlInfoGenerator = mediaControlInfoGenerator;
  if (p_videoReceiverConfig->streamCount)
  {
    v19 = 0;
    p_sframeCryptor = &v14->_videoReceiverConfig.streamConfigs[0].sframeCryptor;
    do
    {
      v21 = *(p_sframeCryptor - 2);
      if (v21)
      {
        CFRetain(v21);
      }

      if (*p_sframeCryptor)
      {
        CFRetain(*p_sframeCryptor);
      }

      ++v19;
      p_sframeCryptor += 16;
    }

    while (v19 < p_videoReceiverConfig->streamCount);
  }

  [(VCVideoReceiverDefault *)v14 setUpRemoteAspectRatios];
  [(VCVideoReceiverDefault *)v14 setUpCannedInjector:config];
  config->callbackContext = v14;
  config->remoteFrameCallback = _VCVideoReceiverDefault_RemoteFrameCallback;
  config->sampleBufferCallback = _VCVideoReceiverDefault_SampleBufferCallback;
  config->streamSwitchCallback = streamSwitchCallback;
  config->keyFrameGenerationCallback = keyFrameGenerationCallback;
  config->ackLTRFrameCallback = _VCVideoReceiverDefault_ackLTRWithTS;
  config->sendLTRAckCallback = _VCVideoReceiverDefault_sendLTRAckWithTS;
  config->modeSwitchCallback = _VCVideoReceiverDefault_ModeSwitchCallback;
  config->videoStallPercentageThreshold = [+[GKSConnectivitySettings readStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings readStorebagValueForStorebagKey:@"vc-reporting-video-stall-percentage-symptom-threshold" userDefaultKey:0 defaultValue:&unk_1F5799CF0 isDoubleType:{0), "intValue"}];
  if (analyzer)
  {
    v14->_sensitiveContentAnalyzer = analyzer;
    config->beginSensitiveContentAnalysisCallback = _VCVideoReceiverDefault_BeginSensitiveContentAnalysisCallback;
    config->endSensitiveContentAnalysisCallback = _VCVideoReceiverDefault_EndSensitiveContentAnalysisCallback;
  }

  v22 = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-video-enable-late-frame-recovery" userDefaultKey:@"enableLateVideoFrameRecovery" defaultValue:MEMORY[0x1E695E118] isDoubleType:{0), "BOOLValue"}];
  isLateFrameRecoveryEnabled = 0;
  if (v22)
  {
    isLateFrameRecoveryEnabled = config->isLateFrameRecoveryEnabled;
  }

  config->isLateFrameRecoveryEnabled = isLateFrameRecoveryEnabled;
  if ([+[VCDefaults isReceiverTestVerificationEnabled] sharedInstance]
  {
    v14->_validationContext = objc_alloc_init(VCVideoHardwareDumpCollector);
  }

  [(VCVideoReceiverDefault *)v14 setUpOneToOneReceiveSettings];
  Handle = VideoReceiver_CreateHandle(&v14->_videoReceiverHandle, config, agent, 0, collector);
  if (objc_opt_class() == v14)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v53 = v26;
        v54 = 2080;
        OUTLINED_FUNCTION_3_23();
        v58 = v28;
        *v59 = v29;
        *&v59[4] = v28;
        *&v59[6] = v30;
        *&v59[10] = v28;
        *&v59[12] = v31;
        *&v59[16] = 2048;
        *&v59[18] = v14;
        v32 = " [%s] %s:%d mode=%d, _notifyDelegateVideoAttributeChanges=%d _videoReceiverHandle=0x%x videoReceiver=%p";
        v33 = v27;
        v34 = 56;
LABEL_31:
        _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, v32, buf, v34);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v25 = [(VCVideoReceiverDefault *)v14 performSelector:sel_logPrefix];
    }

    else
    {
      v25 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v35 = VRTraceErrorLogLevelToCSTR();
      v36 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136317186;
        v53 = v35;
        v54 = 2080;
        OUTLINED_FUNCTION_3_23();
        v58 = 2112;
        *v59 = v25;
        *&v59[8] = 2048;
        *&v59[10] = v14;
        *&v59[18] = v37;
        *&v59[20] = v38;
        *&v59[24] = v37;
        v60 = v39;
        v61 = v37;
        v62 = v40;
        v63 = 2048;
        v64 = v14;
        v32 = " [%s] %s:%d %@(%p) mode=%d, _notifyDelegateVideoAttributeChanges=%d _videoReceiverHandle=0x%x videoReceiver=%p";
        v33 = v36;
        v34 = 76;
        goto LABEL_31;
      }
    }
  }

  if ((Handle & 0x80000000) == 0)
  {
    v14->super._rtpTimestampRate = config->videoTSRate;
    v14->_videoTransmitterHandle = handle;
    v14->_forceZeroRegionOfInterestOrigin = config->forceZeroRegionOfInterestOrigin;
    v41 = config + 128 * [(VCVideoReceiverDefault *)v14 oneToOneStreamIndex];
    v14->_videoFrameMetadataSupportedVersion = *(v41 + 32);
    if (config->isReceiverSideVCRCFeedbackEnabled)
    {
      v42 = *(v41 + 7);
      if (v42 == 0xFFFFFFFFLL)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v47 = VRTraceErrorLogLevelToCSTR();
          v48 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            videoReceiverHandle = v14->_videoReceiverHandle;
            *buf = 136315906;
            v53 = v47;
            v54 = 2080;
            v55 = "[VCVideoReceiverDefault initWithConfig:delegate:delegateFunctions:reportingAgent:statisticsCollector:transmitterHandle:sensitiveContentAnalyzer:]";
            v56 = 1024;
            v57 = 222;
            v58 = 1024;
            *v59 = videoReceiverHandle;
            _os_log_error_impl(&dword_1DB56E000, v48, OS_LOG_TYPE_ERROR, " [%s] %s:%d init video receiver 0x%x with an invalid rtp handle", buf, 0x22u);
          }
        }
      }

      else
      {
        v14->_rateAdaptation = config->rateAdaptation;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v43 = VRTraceErrorLogLevelToCSTR();
          v44 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v45 = v14->_videoReceiverHandle;
            rateAdaptation = v14->_rateAdaptation;
            *buf = 136316418;
            v53 = v43;
            v54 = 2080;
            v55 = "[VCVideoReceiverDefault initWithConfig:delegate:delegateFunctions:reportingAgent:statisticsCollector:transmitterHandle:sensitiveContentAnalyzer:]";
            v56 = 1024;
            v57 = 226;
            v58 = 1024;
            *v59 = v45;
            *&v59[4] = 2048;
            *&v59[6] = rateAdaptation;
            *&v59[14] = 1024;
            *&v59[16] = v42;
            _os_log_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d init video receiver 0x%x and rateAdaptation %p with rtp handle 0x%x", buf, 0x32u);
          }
        }
      }
    }
  }

  return v14;
}

- (void)initializeDisplayLink
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)startVideo
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "[VCVideoReceiverDefault startVideo]";
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d failed, result=%x", v3, *v4, "[VCVideoReceiverDefault startVideo]" >> 16, 451);
}

- (void)videoReceiverRxFrameRate
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

@end