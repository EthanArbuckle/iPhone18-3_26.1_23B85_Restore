@interface VCVideoStreamReceiveGroup
- (BOOL)isVideoExpected;
- (BOOL)setSyncSource:(id)source;
- (VCVideoStreamReceiveGroup)initWithConfig:(id)config;
- (id)setupRedundancyController;
- (id)willStart;
- (unsigned)lastDisplayedFrameRTPTimestamp;
- (void)checkAndReportRegressedPoorConnectionPercentage;
- (void)checkForAndReportPoorConnectionDespiteVideoReceivedForVideoStream:(id)stream stallDuration:(double)duration;
- (void)checkForExtendedPoorConnectionWithStallDuration:(double)duration;
- (void)collectAndLogChannelMetrics:(id *)metrics;
- (void)dealloc;
- (void)didStop;
- (void)endSensitiveContentAnalyzerInterruption;
- (void)isVideoExpected;
- (void)mediaStream:(id)stream didReceiveNewMediaKeyIndex:(id)index;
- (void)redundancyController:(id)controller redundancyPercentageDidChange:(unsigned int)change;
- (void)resetDidReceiveFirstFrame;
- (void)resetPerfTimers;
- (void)setActiveStreamIDs:(id)ds;
- (void)setExternalRenderLatency:(double)latency;
- (void)setIsRemoteMediaStalled:(BOOL)stalled duration:(double)duration;
- (void)setMediaSuspended:(BOOL)suspended forStreamToken:(id)token;
- (void)setOptedInStreamID:(id)d;
- (void)setRemoteVideoEnabled:(BOOL)enabled;
- (void)setRemoteVideoPaused:(BOOL)paused;
- (void)setShouldEnableFaceZoom:(BOOL)zoom;
- (void)setShouldEnableMLEnhance:(BOOL)enhance streamID:(unsigned __int16)d;
- (void)setVideoDegraded:(BOOL)degraded duration:(double)duration;
- (void)setVideoStreamDelegate:(id)delegate delegateFunctions:(const tagVCVideoStreamDelegateRealtimeInstanceVTable *)functions;
- (void)setVisibilityIndex:(unsigned int)index;
- (void)setupExternalRenderLatency;
- (void)updateShouldEnableFaceZoom;
- (void)updateVideoExpected;
- (void)updateVideoPriority:(unsigned __int8)priority;
- (void)vcMediaStream:(id)stream didReceiveFirstFrameWithTime:(id *)time;
- (void)vcMediaStream:(id)stream didSwitchFromStreamID:(unsigned __int16)d toStreamID:(unsigned __int16)iD;
- (void)vcMediaStream:(id)stream remoteMediaStalled:(BOOL)stalled duration:(double)duration;
- (void)vcMediaStream:(id)stream requestKeyFrameGenerationWithStreamID:(unsigned __int16)d firType:(int)type;
@end

@implementation VCVideoStreamReceiveGroup

- (VCVideoStreamReceiveGroup)initWithConfig:(id)config
{
  v24 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = VCVideoStreamReceiveGroup;
  v3 = [(VCMediaStreamReceiveGroup *)&v13 initWithConfig:config];
  if (v3)
  {
    if (![+[VCDefaults forceFECRepairStream] sharedInstance]
    {
LABEL_16:
      v3->_shouldConvertSourceRTPTimestamp = 1;
      [(VCVideoStreamReceiveGroup *)v3 setIsRemoteMediaStalled:v3->_isVideoDegraded];
      [(VCVideoStreamReceiveGroup *)v3 setupVideoPriority];
      [(VCVideoStreamReceiveGroup *)v3 setupExternalRenderLatency];
      v3->_poorConnectionPercentageABCReportingThreshold = [+[GKSConnectivitySettings readStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings readStorebagValueForStorebagKey:@"vc-reporting-poor-connection-percentage-symptom-threshold" userDefaultKey:0 defaultValue:&unk_1F579B238 isDoubleType:{0), "intValue"}];
      return v3;
    }

    if (objc_opt_class() == v3)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_15;
      }

      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 136315650;
      v15 = v5;
      v16 = 2080;
      v17 = "[VCVideoStreamReceiveGroup initWithConfig:]";
      v18 = 1024;
      v19 = 85;
      v7 = " [%s] %s:%d _isRedundancyRequested set to YES by forceFECRepairStream";
      v8 = v6;
      v9 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = [(VCVideoStreamReceiveGroup *)v3 performSelector:sel_logPrefix];
      }

      else
      {
        v4 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_15;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 136316162;
      v15 = v10;
      v16 = 2080;
      v17 = "[VCVideoStreamReceiveGroup initWithConfig:]";
      v18 = 1024;
      v19 = 85;
      v20 = 2112;
      v21 = v4;
      v22 = 2048;
      v23 = v3;
      v7 = " [%s] %s:%d %@(%p) _isRedundancyRequested set to YES by forceFECRepairStream";
      v8 = v11;
      v9 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
LABEL_15:
    v3->_isRedundancyRequested = 1;
    goto LABEL_16;
  }

  return v3;
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v13 = v4;
        v14 = 2080;
        v15 = "[VCVideoStreamReceiveGroup dealloc]";
        v16 = 1024;
        v17 = 105;
        v6 = " [%s] %s:%d ";
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
      v3 = [(VCVideoStreamReceiveGroup *)self performSelector:sel_logPrefix];
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
        *buf = 136316162;
        v13 = v9;
        v14 = 2080;
        v15 = "[VCVideoStreamReceiveGroup dealloc]";
        v16 = 1024;
        v17 = 105;
        v18 = 2112;
        v19 = v3;
        v20 = 2048;
        selfCopy = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  v11.receiver = self;
  v11.super_class = VCVideoStreamReceiveGroup;
  [(VCMediaStreamReceiveGroup *)&v11 dealloc];
}

- (void)setupExternalRenderLatency
{
  [(VCMediaStreamGroup *)self streamGroupID];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%s", @"forceExternalRenderLatency", FourccToCStr(-[VCMediaStreamGroup streamGroupID](self, "streamGroupID"))];
  DoubleValueForKey = VCDefaults_GetDoubleValueForKey(@"forceExternalRenderLatency", 0.0);
  v5 = VCDefaults_GetDoubleValueForKey(v3, DoubleValueForKey);

  [(VCVideoStreamReceiveGroup *)self setExternalRenderLatency:v5];
}

- (void)setExternalRenderLatency:(double)latency
{
  v31 = *MEMORY[0x1E69E9840];
  [(VCMediaStreamGroup *)self externalRenderLatency];
  if (v5 != latency)
  {
    v18.receiver = self;
    v18.super_class = VCVideoStreamReceiveGroup;
    [(VCMediaStreamGroup *)&v18 setExternalRenderLatency:latency];
    firstObject = [(NSArray *)self->super.super._mediaStreams firstObject];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      [(VCMediaStreamGroup *)self externalRenderLatency];
      *buf = 136315906;
      v20 = v8;
      v21 = 2080;
      v22 = "[VCVideoStreamReceiveGroup setExternalRenderLatency:]";
      v23 = 1024;
      v24 = 136;
      v25 = 2048;
      v26 = v10;
      v11 = " [%s] %s:%d Display external output latency=%f";
      v12 = v9;
      v13 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCVideoStreamReceiveGroup *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      [(VCMediaStreamGroup *)self externalRenderLatency];
      *buf = 136316418;
      v20 = v14;
      v21 = 2080;
      v22 = "[VCVideoStreamReceiveGroup setExternalRenderLatency:]";
      v23 = 1024;
      v24 = 136;
      v25 = 2112;
      v26 = v7;
      v27 = 2048;
      selfCopy = self;
      v29 = 2048;
      v30 = v16;
      v11 = " [%s] %s:%d %@(%p) Display external output latency=%f";
      v12 = v15;
      v13 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_13:
    [(VCMediaStreamGroup *)self externalRenderLatency];
    VCVideoStream_SetExternalOutputVideoLatency(firstObject, v17);
  }
}

- (void)resetDidReceiveFirstFrame
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  mediaStreamInfoArray = self->super.super._mediaStreamInfoArray;
  v3 = [(NSArray *)mediaStreamInfoArray countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(mediaStreamInfoArray);
        }

        [objc_msgSend(*(*(&v8 + 1) + 8 * i) "stream")];
      }

      v4 = [(NSArray *)mediaStreamInfoArray countByEnumeratingWithState:&v8 objects:v7 count:16];
    }

    while (v4);
  }
}

- (void)resetPerfTimers
{
  v3 = micro();
  self->super.super._creationTime = v3;
  self->super.super._firstMediaPacketTime = v3;
  VCPerfTimingUtilsSetStartForKeyOnceWithTime(self->super.super._perfTimers, 16, self->super.super._creationTime);
  self->_haveReportedPerfTimers = 0;
}

- (BOOL)isVideoExpected
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      v6 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          state = [(VCMediaStreamGroup *)self state];
          isRemoteMediaStalled = self->_isRemoteMediaStalled;
          *v20 = 136316418;
          *&v20[4] = v4;
          *&v20[12] = 2080;
          *&v20[14] = "[VCVideoStreamReceiveGroup isVideoExpected]";
          *&v20[22] = 1024;
          LODWORD(v21) = 197;
          WORD2(v21) = 1024;
          *(&v21 + 6) = state;
          WORD5(v21) = 1024;
          HIDWORD(v21) = isRemoteMediaStalled;
          LOWORD(selfCopy2) = 1024;
          *(&selfCopy2 + 2) = [(VCVideoStreamReceiveGroup *)self isVisible];
          v9 = " [%s] %s:%d state:%d remoteVideoPaused:%d isVisible:%d";
          v10 = v5;
          v11 = 46;
LABEL_13:
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v20, v11);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [(VCVideoStreamReceiveGroup *)v4 isVideoExpected];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCVideoStreamReceiveGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return [(VCMediaStreamGroup *)self state:*v20]== 1 && !self->_isRemoteMediaStalled && [(VCVideoStreamReceiveGroup *)self isVisible];
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    v14 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        state2 = [(VCMediaStreamGroup *)self state];
        v16 = self->_isRemoteMediaStalled;
        *v20 = 136316930;
        *&v20[4] = v12;
        *&v20[12] = 2080;
        *&v20[14] = "[VCVideoStreamReceiveGroup isVideoExpected]";
        *&v20[22] = 1024;
        LODWORD(v21) = 197;
        WORD2(v21) = 2112;
        *(&v21 + 6) = v3;
        HIWORD(v21) = 2048;
        selfCopy2 = self;
        LOWORD(v23) = 1024;
        *(&v23 + 2) = state2;
        HIWORD(v23) = 1024;
        LODWORD(v24) = v16;
        WORD2(v24) = 1024;
        *(&v24 + 6) = [(VCVideoStreamReceiveGroup *)self isVisible];
        v9 = " [%s] %s:%d %@(%p) state:%d remoteVideoPaused:%d isVisible:%d";
        v10 = v13;
        v11 = 66;
        goto LABEL_13;
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      state3 = [(VCMediaStreamGroup *)self state];
      v18 = self->_isRemoteMediaStalled;
      *v20 = 136316930;
      *&v20[4] = v12;
      *&v20[12] = 2080;
      *&v20[14] = "[VCVideoStreamReceiveGroup isVideoExpected]";
      *&v20[22] = 1024;
      LODWORD(v21) = 197;
      WORD2(v21) = 2112;
      *(&v21 + 6) = v3;
      HIWORD(v21) = 2048;
      selfCopy2 = self;
      LOWORD(v23) = 1024;
      *(&v23 + 2) = state3;
      HIWORD(v23) = 1024;
      LODWORD(v24) = v18;
      WORD2(v24) = 1024;
      *(&v24 + 6) = [(VCVideoStreamReceiveGroup *)self isVisible];
      _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) state:%d remoteVideoPaused:%d isVisible:%d", v20, 0x42u);
    }
  }

  return [(VCMediaStreamGroup *)self state:*v20]== 1 && !self->_isRemoteMediaStalled && [(VCVideoStreamReceiveGroup *)self isVisible];
}

- (void)setShouldEnableFaceZoom:(BOOL)zoom
{
  zoomCopy = zoom;
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  mediaStreams = self->super.super._mediaStreams;
  v5 = [(NSArray *)mediaStreams countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(mediaStreams);
        }

        [*(*(&v10 + 1) + 8 * i) setShouldEnableFaceZoom:zoomCopy];
      }

      v6 = [(NSArray *)mediaStreams countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }
}

- (void)updateShouldEnableFaceZoom
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(VCMediaStreamGroup *)self streamGroupID]== 1667329381 || [(VCMediaStreamGroup *)self streamGroupID]== 1667329399)
  {
    if ([+[VCDefaults forceDisableFaceZoom] sharedInstance]
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v6 = VRTraceErrorLogLevelToCSTR();
          v7 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v13 = 136315650;
            v14 = v6;
            v15 = 2080;
            v16 = "[VCVideoStreamReceiveGroup updateShouldEnableFaceZoom]";
            v17 = 1024;
            v18 = 212;
            v8 = " [%s] %s:%d FaceZoom is disabled.";
            v9 = v7;
            v10 = 28;
LABEL_21:
            _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v3 = [(VCVideoStreamReceiveGroup *)self performSelector:sel_logPrefix];
        }

        else
        {
          v3 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v13 = 136316162;
            v14 = v11;
            v15 = 2080;
            v16 = "[VCVideoStreamReceiveGroup updateShouldEnableFaceZoom]";
            v17 = 1024;
            v18 = 212;
            v19 = 2112;
            v20 = v3;
            v21 = 2048;
            selfCopy = self;
            v8 = " [%s] %s:%d %@(%p) FaceZoom is disabled.";
            v9 = v12;
            v10 = 48;
            goto LABEL_21;
          }
        }
      }
    }

    else
    {
      if (self->_remoteVideoPaused || ![(VCVideoStreamReceiveGroup *)self isVisible])
      {
        selfCopy3 = self;
        v5 = 0;
      }

      else
      {
        selfCopy3 = self;
        v5 = 1;
      }

      [(VCVideoStreamReceiveGroup *)selfCopy3 setShouldEnableFaceZoom:v5];
    }
  }
}

- (BOOL)setSyncSource:(id)source
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  stateQueue = self->super.super._stateQueue;
  v10 = 1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__VCVideoStreamReceiveGroup_setSyncSource___block_invoke;
  v6[3] = &unk_1E85F4108;
  v6[5] = source;
  v6[6] = &v7;
  v6[4] = self;
  dispatch_sync(stateQueue, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __43__VCVideoStreamReceiveGroup_setSyncSource___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  if ([*(a1 + 32) state])
  {
    __43__VCVideoStreamReceiveGroup_setSyncSource___block_invoke_cold_1(a1, v2);
  }

  else
  {
    *(*(a1 + 32) + 600) = *(a1 + 40) == 0;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = *(*(a1 + 32) + 168);
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [objc_msgSend(objc_msgSend(*(*(&v9 + 1) + 8 * i) "streamConfigs")];
        }

        v5 = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
      }

      while (v5);
    }
  }
}

- (void)setVideoStreamDelegate:(id)delegate delegateFunctions:(const tagVCVideoStreamDelegateRealtimeInstanceVTable *)functions
{
  v26 = *MEMORY[0x1E69E9840];
  if (functions)
  {
    stateQueue = self->super.super._stateQueue;
    remoteScreenAttributesDidChange = functions->remoteScreenAttributesDidChange;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__VCVideoStreamReceiveGroup_setVideoStreamDelegate_delegateFunctions___block_invoke;
    block[3] = &unk_1E85F50D8;
    block[4] = self;
    block[5] = delegate;
    block[6] = remoteScreenAttributesDidChange;
    dispatch_async(stateQueue, block);
    return;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v17 = v8;
        v18 = 2080;
        v19 = "[VCVideoStreamReceiveGroup setVideoStreamDelegate:delegateFunctions:]";
        v20 = 1024;
        v21 = 241;
        v10 = " [%s] %s:%d videoStreamDelegateFunctions is NULL";
        v11 = v9;
        v12 = 28;
LABEL_14:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCVideoStreamReceiveGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v17 = v13;
        v18 = 2080;
        v19 = "[VCVideoStreamReceiveGroup setVideoStreamDelegate:delegateFunctions:]";
        v20 = 1024;
        v21 = 241;
        v22 = 2112;
        v23 = v7;
        v24 = 2048;
        selfCopy = self;
        v10 = " [%s] %s:%d %@(%p) videoStreamDelegateFunctions is NULL";
        v11 = v14;
        v12 = 48;
        goto LABEL_14;
      }
    }
  }
}

uint64_t __70__VCVideoStreamReceiveGroup_setVideoStreamDelegate_delegateFunctions___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v2 = *(*(a1 + 32) + 168);
  result = [v2 countByEnumeratingWithState:&v37 objects:v36 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v38;
    *&v4 = 136316162;
    v21 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v37 + 1) + 8 * v7);
        if ([v8 isOneToOneSupported])
        {
          v9 = [v8 stream];
          if (objc_opt_class() == *(a1 + 32))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v18 = VRTraceErrorLogLevelToCSTR();
              v19 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v20 = *(a1 + 40);
                *buf = v21;
                v23 = v18;
                v24 = 2080;
                v25 = "[VCVideoStreamReceiveGroup setVideoStreamDelegate:delegateFunctions:]_block_invoke";
                v26 = 1024;
                v27 = 249;
                v28 = 2048;
                v29 = v9;
                v30 = 2048;
                v31 = v20;
                v15 = v19;
                v16 = " [%s] %s:%d stream=%p, videoStreamDelegate=%p";
                v17 = 48;
LABEL_16:
                _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, v17);
              }
            }
          }

          else
          {
            v10 = &stru_1F570E008;
            if (objc_opt_respondsToSelector())
            {
              v10 = [*(a1 + 32) performSelector:sel_logPrefix];
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v11 = VRTraceErrorLogLevelToCSTR();
              v12 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v13 = *(a1 + 32);
                v14 = *(a1 + 40);
                *buf = 136316674;
                v23 = v11;
                v24 = 2080;
                v25 = "[VCVideoStreamReceiveGroup setVideoStreamDelegate:delegateFunctions:]_block_invoke";
                v26 = 1024;
                v27 = 249;
                v28 = 2112;
                v29 = v10;
                v30 = 2048;
                v31 = v13;
                v32 = 2048;
                v33 = v9;
                v34 = 2048;
                v35 = v14;
                v15 = v12;
                v16 = " [%s] %s:%d %@(%p) stream=%p, videoStreamDelegate=%p";
                v17 = 68;
                goto LABEL_16;
              }
            }
          }

          [(__CFString *)v9 setVideoStreamDelegate:*(a1 + 40) delegateFunctions:a1 + 48];
        }

        ++v7;
      }

      while (v5 != v7);
      result = [v2 countByEnumeratingWithState:&v37 objects:v36 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

- (void)endSensitiveContentAnalyzerInterruption
{
  v3[5] = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__VCVideoStreamReceiveGroup_endSensitiveContentAnalyzerInterruption__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(stateQueue, v3);
}

uint64_t __68__VCVideoStreamReceiveGroup_endSensitiveContentAnalyzerInterruption__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(*(a1 + 32) + 176);
  result = [v1 countByEnumeratingWithState:&v7 objects:v6 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v7 + 1) + 8 * v5++) endSensitiveContentAnalyzerInterruption];
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v7 objects:v6 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

- (id)willStart
{
  self->_startTime = micro();
  self->_poorConnectionTotalLength = 0.0;
  [(VCVideoStreamReceiveGroup *)self resetDidReceiveFirstFrame];
  [(VCVideoStreamReceiveGroup *)self resetPerfTimers];

  return [(VCVideoStreamReceiveGroup *)self setupRedundancyController];
}

- (void)didStop
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCVideoStreamReceiveGroup *)self resetDidReceiveFirstFrame];
  v3.receiver = self;
  v3.super_class = VCVideoStreamReceiveGroup;
  [(VCMediaStreamGroup *)&v3 didStop];
}

- (void)updateVideoPriority:(unsigned __int8)priority
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_videoQuality != priority)
  {
    self->_videoQuality = priority;
    v5 = MEMORY[0x1E1289F20](&self->super.super._delegate, a2);
    if (v5)
    {
      delegateQueue = self->super.super._delegateQueue;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __49__VCVideoStreamReceiveGroup_updateVideoPriority___block_invoke;
      v7[3] = &unk_1E85F37C8;
      v7[4] = v5;
      v7[5] = self;
      priorityCopy = priority;
      dispatch_async(delegateQueue, v7);
    }
  }
}

void __49__VCVideoStreamReceiveGroup_updateVideoPriority___block_invoke(uint64_t a1)
{
  [*(a1 + 32) streamGroup:*(a1 + 40) didChangeMediaPriority:*(a1 + 48)];
  v2 = *(a1 + 32);

  CFRelease(v2);
}

- (void)setOptedInStreamID:(id)d
{
  if (self->super._optedInStreamID != d)
  {

    self->_previousOptedInStreamID = [(NSNumber *)self->super._optedInStreamID copy];
    self->super._optedInStreamID = d;
  }
}

- (void)setActiveStreamIDs:(id)ds
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__VCVideoStreamReceiveGroup_setActiveStreamIDs___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = ds;
  block[5] = self;
  dispatch_async(stateQueue, block);
}

void __48__VCVideoStreamReceiveGroup_setActiveStreamIDs___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v50 objects:v49 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v51;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v51 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v50 + 1) + 8 * i);
        v9 = [*(*(a1 + 40) + 184) objectForKeyedSubscript:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 setObject:v9 forKeyedSubscript:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v50 objects:v49 count:16];
    }

    while (v5);
  }

  v10 = [v2 count];
  v11 = *(a1 + 40);
  if (!v10)
  {
    if (objc_opt_class() == *(a1 + 40))
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_24;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 136315650;
      *&buf[4] = v14;
      *&buf[12] = 2080;
      *&buf[14] = "[VCVideoStreamReceiveGroup setActiveStreamIDs:]_block_invoke";
      *&buf[22] = 1024;
      LODWORD(v43) = 334;
      v16 = " [%s] %s:%d Opted out of all video streams!!!";
      v17 = v15;
      v18 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [*(a1 + 40) performSelector:sel_logPrefix];
      }

      else
      {
        v13 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_24;
      }

      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      v21 = *(a1 + 40);
      *buf = 136316162;
      *&buf[4] = v19;
      *&buf[12] = 2080;
      *&buf[14] = "[VCVideoStreamReceiveGroup setActiveStreamIDs:]_block_invoke";
      *&buf[22] = 1024;
      LODWORD(v43) = 334;
      WORD2(v43) = 2112;
      *(&v43 + 6) = v13;
      HIWORD(v43) = 2048;
      v44 = v21;
      v16 = " [%s] %s:%d %@(%p) Opted out of all video streams!!!";
      v17 = v20;
      v18 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
LABEL_24:
    if (![*(a1 + 40) isVideoExpected])
    {
      goto LABEL_28;
    }

    v22 = *(a1 + 40);
    if (v22[529])
    {
      goto LABEL_28;
    }

    v12 = 1;
    [v22 setMediaSuspended:1 forStreamToken:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(*(a1 + 40), "streamToken"))}];
    goto LABEL_27;
  }

  if (v11[529] != 1)
  {
    goto LABEL_28;
  }

  [v11 setMediaSuspended:0 forStreamToken:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(*(a1 + 40), "streamToken"))}];
  v12 = 0;
LABEL_27:
  *(*(a1 + 40) + 529) = v12;
LABEL_28:
  v23 = [v2 count];
  v24 = *(a1 + 40);
  if (*(v24 + 440))
  {
    v25 = v23 == 2;
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __48__VCVideoStreamReceiveGroup_setActiveStreamIDs___block_invoke_31;
    v40 = &unk_1E85F8C28;
    v41 = v24;
    v26 = &v37;
LABEL_36:
    [v2 enumerateKeysAndObjectsUsingBlock:{v26, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, *buf, *&buf[16], v43, v44}];
    goto LABEL_37;
  }

  if ([v2 count] == 1)
  {
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __48__VCVideoStreamReceiveGroup_setActiveStreamIDs___block_invoke_33;
    v35 = &unk_1E85F8C28;
    v36 = *(a1 + 40);
    v26 = &v32;
    goto LABEL_36;
  }

  if (![v2 count])
  {
    *(*(a1 + 40) + 505) = 0;
    [*(a1 + 40) setOptedInStreamID:0];
  }

LABEL_37:
  if ([v2 count] >= 3)
  {
    if (objc_opt_class() == *(a1 + 40))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v28 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __48__VCVideoStreamReceiveGroup_setActiveStreamIDs___block_invoke_cold_1(v28);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v27 = [*(a1 + 40) performSelector:sel_logPrefix];
      }

      else
      {
        v27 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v29 = VRTraceErrorLogLevelToCSTR();
        v30 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v31 = *(a1 + 40);
          *buf = 136316674;
          *&buf[4] = v29;
          *&buf[12] = 2080;
          *&buf[14] = "[VCVideoStreamReceiveGroup setActiveStreamIDs:]_block_invoke";
          *&buf[22] = 1024;
          LODWORD(v43) = 383;
          WORD2(v43) = 2112;
          *(&v43 + 6) = v27;
          HIWORD(v43) = 2048;
          v44 = v31;
          v45 = 1024;
          v46 = 2;
          v47 = 2112;
          v48 = v2;
          _os_log_error_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Trying to opt into more than %d video streams! Streams:%@", buf, 0x40u);
        }
      }
    }
  }
}

uint64_t __48__VCVideoStreamReceiveGroup_setActiveStreamIDs___block_invoke_31(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  if (!*(v8 + 440) && *(v8 + 512) && [a2 isEqualToNumber:?])
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *v28 = 136315906;
          *&v28[4] = v20;
          *&v28[12] = 2080;
          *&v28[14] = "[VCVideoStreamReceiveGroup setActiveStreamIDs:]_block_invoke";
          *&v28[22] = 1024;
          LODWORD(v29) = 355;
          WORD2(v29) = 2112;
          *(&v29 + 6) = a2;
          v22 = " [%s] %s:%d Opted out and back in to the same video streamID %@, large sequence number gaps may occur";
          v23 = v21;
          v24 = 38;
LABEL_28:
          _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, v22, v28, v24);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v11 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v27 = *(a1 + 32);
          *v28 = 136316418;
          *&v28[4] = v25;
          *&v28[12] = 2080;
          *&v28[14] = "[VCVideoStreamReceiveGroup setActiveStreamIDs:]_block_invoke";
          *&v28[22] = 1024;
          LODWORD(v29) = 355;
          WORD2(v29) = 2112;
          *(&v29 + 6) = v11;
          HIWORD(v29) = 2048;
          v30 = v27;
          LOWORD(v31) = 2112;
          *(&v31 + 2) = a2;
          v22 = " [%s] %s:%d %@(%p) Opted out and back in to the same video streamID %@, large sequence number gaps may occur";
          v23 = v26;
          v24 = 58;
          goto LABEL_28;
        }
      }
    }
  }

  result = [a2 isEqual:{*(*(a1 + 32) + 440), *v28, *&v28[16], v29, v30, v31}];
  if (result)
  {
    return result;
  }

  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_19;
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *v28 = 136315906;
    *&v28[4] = v12;
    *&v28[12] = 2080;
    *&v28[14] = "[VCVideoStreamReceiveGroup setActiveStreamIDs:]_block_invoke";
    *&v28[22] = 1024;
    LODWORD(v29) = 359;
    WORD2(v29) = 2112;
    *(&v29 + 6) = a2;
    v14 = " [%s] %s:%d Starting seamless video switch with target stream id: %@";
    v15 = v13;
    v16 = 38;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [*(a1 + 32) performSelector:sel_logPrefix];
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

    v19 = *(a1 + 32);
    *v28 = 136316418;
    *&v28[4] = v17;
    *&v28[12] = 2080;
    *&v28[14] = "[VCVideoStreamReceiveGroup setActiveStreamIDs:]_block_invoke";
    *&v28[22] = 1024;
    LODWORD(v29) = 359;
    WORD2(v29) = 2112;
    *(&v29 + 6) = v10;
    HIWORD(v29) = 2048;
    v30 = v19;
    LOWORD(v31) = 2112;
    *(&v31 + 2) = a2;
    v14 = " [%s] %s:%d %@(%p) Starting seamless video switch with target stream id: %@";
    v15 = v18;
    v16 = 58;
  }

  _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, v28, v16);
LABEL_19:
  *(*(a1 + 32) + 505) = 1;
  result = [a3 setTargetStreamID:{a2, *v28, *&v28[8], v29, v30, v31}];
  *a4 = 1;
  return result;
}

uint64_t __48__VCVideoStreamReceiveGroup_setActiveStreamIDs___block_invoke_33(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = [a2 isEqual:{objc_msgSend(a3, "targetStreamID")}];
  v7 = objc_opt_class();
  v8 = *(a1 + 32);
  if (v6)
  {
    if (v7 != v8)
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(a1 + 32);
          *v23 = 136316418;
          *&v23[4] = v17;
          *&v23[12] = 2080;
          *&v23[14] = "[VCVideoStreamReceiveGroup setActiveStreamIDs:]_block_invoke";
          *&v23[22] = 1024;
          LODWORD(v24) = 371;
          WORD2(v24) = 2112;
          *(&v24 + 6) = v9;
          HIWORD(v24) = 2048;
          v25 = v19;
          LOWORD(v26) = 2112;
          *(&v26 + 2) = a2;
          v13 = " [%s] %s:%d %@(%p) Ending seamless video switch with target stream id: %@";
LABEL_23:
          v15 = v18;
          v16 = 58;
          goto LABEL_24;
        }
      }

      goto LABEL_25;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_25;
    }

    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *v23 = 136315906;
    *&v23[4] = v11;
    *&v23[12] = 2080;
    *&v23[14] = "[VCVideoStreamReceiveGroup setActiveStreamIDs:]_block_invoke";
    *&v23[22] = 1024;
    LODWORD(v24) = 371;
    WORD2(v24) = 2112;
    *(&v24 + 6) = a2;
    v13 = " [%s] %s:%d Ending seamless video switch with target stream id: %@";
LABEL_14:
    v15 = v12;
    v16 = 38;
LABEL_24:
    _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v13, v23, v16);
    goto LABEL_25;
  }

  if (v7 == v8)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_25;
    }

    v14 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *v23 = 136315906;
    *&v23[4] = v14;
    *&v23[12] = 2080;
    *&v23[14] = "[VCVideoStreamReceiveGroup setActiveStreamIDs:]_block_invoke";
    *&v23[22] = 1024;
    LODWORD(v24) = 369;
    WORD2(v24) = 2112;
    *(&v24 + 6) = a2;
    v13 = " [%s] %s:%d Non-seamless video switch with target stream id: %@";
    goto LABEL_14;
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = [*(a1 + 32) performSelector:sel_logPrefix];
  }

  else
  {
    v10 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v20 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 32);
      *v23 = 136316418;
      *&v23[4] = v20;
      *&v23[12] = 2080;
      *&v23[14] = "[VCVideoStreamReceiveGroup setActiveStreamIDs:]_block_invoke";
      *&v23[22] = 1024;
      LODWORD(v24) = 369;
      WORD2(v24) = 2112;
      *(&v24 + 6) = v10;
      HIWORD(v24) = 2048;
      v25 = v21;
      LOWORD(v26) = 2112;
      *(&v26 + 2) = a2;
      v13 = " [%s] %s:%d %@(%p) Non-seamless video switch with target stream id: %@";
      goto LABEL_23;
    }
  }

LABEL_25:
  [a3 setTargetStreamID:{a2, *v23, *&v23[16], v24, v25, v26}];
  *(*(a1 + 32) + 505) = 0;
  return [*(a1 + 32) setOptedInStreamID:a2];
}

- (void)setMediaSuspended:(BOOL)suspended forStreamToken:(id)token
{
  suspendedCopy = suspended;
  v6 = VCRemoteVideoManager_DefaultManager();
  unsignedIntValue = [token unsignedIntValue];

  [v6 remoteVideoDidSuspend:suspendedCopy streamToken:unsignedIntValue];
}

- (void)setRemoteVideoPaused:(BOOL)paused
{
  v6 = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__VCVideoStreamReceiveGroup_setRemoteVideoPaused___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  pausedCopy = paused;
  dispatch_async(stateQueue, block);
}

void __50__VCVideoStreamReceiveGroup_setRemoteVideoPaused___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 484) != v2)
  {
    *(v1 + 484) = v2;
    [*(a1 + 32) updateVideoExpected];
    [*(a1 + 32) setIsRemoteMediaStalled:*(*(a1 + 32) + 485)];
    v4 = MEMORY[0x1E1289F20](*(a1 + 32) + 296);
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(v5 + 304);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __50__VCVideoStreamReceiveGroup_setRemoteVideoPaused___block_invoke_2;
      v7[3] = &unk_1E85F37C8;
      v7[4] = v4;
      v7[5] = v5;
      v8 = *(a1 + 40);
      dispatch_async(v6, v7);
    }
  }
}

void __50__VCVideoStreamReceiveGroup_setRemoteVideoPaused___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) streamGroup:*(a1 + 40) didRemotePauseChange:*(a1 + 48)];
  v2 = *(a1 + 32);

  CFRelease(v2);
}

- (void)setRemoteVideoEnabled:(BOOL)enabled
{
  v6 = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__VCVideoStreamReceiveGroup_setRemoteVideoEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  enabledCopy = enabled;
  dispatch_async(stateQueue, block);
}

uint64_t __51__VCVideoStreamReceiveGroup_setRemoteVideoEnabled___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 616) != v2)
  {
    v3 = result;
    *(v1 + 616) = v2;
    [*(result + 32) updateVideoExpected];
    [*(v3 + 32) setIsRemoteMediaStalled:*(*(v3 + 32) + 485)];
    result = *(v3 + 32);
    if ((*(result + 616) & 1) == 0)
    {

      return [result resetDidReceiveFirstFrame];
    }
  }

  return result;
}

- (void)setVisibilityIndex:(unsigned int)index
{
  self->_visibilityIndex = [VCDefaults integerValueForKey:@"forceVisibilityIndex" defaultValue:index];
  [(VCMediaStreamGroup *)self streamToken];
  kdebug_trace();
  [(VCVideoStreamReceiveGroup *)self updateVideoExpected];
  [(VCVideoStreamReceiveGroup *)self setIsRemoteMediaStalled:self->_isVideoDegraded];

  [(VCVideoStreamReceiveGroup *)self updateShouldEnableFaceZoom];
}

- (void)setVideoDegraded:(BOOL)degraded duration:(double)duration
{
  degradedCopy = degraded;
  v33 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *v29 = 136315906;
    *&v29[4] = v8;
    *&v29[12] = 2080;
    *&v29[14] = "[VCVideoStreamReceiveGroup setVideoDegraded:duration:]";
    *&v29[22] = 1024;
    LODWORD(v30) = 456;
    WORD2(v30) = 1024;
    *(&v30 + 6) = degradedCopy;
    v10 = " [%s] %s:%d videoDegraded=%d";
    v11 = v9;
    v12 = 34;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [(VCVideoStreamReceiveGroup *)self performSelector:sel_logPrefix];
  }

  else
  {
    v7 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 136316418;
      *&v29[4] = v13;
      *&v29[12] = 2080;
      *&v29[14] = "[VCVideoStreamReceiveGroup setVideoDegraded:duration:]";
      *&v29[22] = 1024;
      LODWORD(v30) = 456;
      WORD2(v30) = 2112;
      *(&v30 + 6) = v7;
      HIWORD(v30) = 2048;
      selfCopy2 = self;
      LOWORD(v32) = 1024;
      *(&v32 + 2) = degradedCopy;
      v10 = " [%s] %s:%d %@(%p) videoDegraded=%d";
      v11 = v14;
      v12 = 54;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, v29, v12);
    }
  }

LABEL_12:
  if ((duration > 5.0 || !degradedCopy) && self->_reportedDegradeStatus != degradedCopy)
  {
    [(VCMediaStreamGroup *)self streamGroupID];
    v15 = reportingStreamGroupFromStreamGroupID();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(Mutable, @"VCSPUUID", self->super.super._participantUUID);
    CFDictionaryAddValue(Mutable, @"VCSPVideoDegraded", [MEMORY[0x1E696AD98] numberWithBool:degradedCopy]);
    CFDictionaryAddValue(Mutable, @"VCMSStreamGroup", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v15]);
    [(VCObject *)self reportingAgent];
    reportingGenericEvent();
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    self->_reportedDegradeStatus = degradedCopy;
  }

  if (*(&self->_isVideoDegraded + 1) == degradedCopy)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(&self->_isVideoDegraded + 1);
          *v29 = 136315906;
          *&v29[4] = v20;
          *&v29[12] = 2080;
          *&v29[14] = "[VCVideoStreamReceiveGroup setVideoDegraded:duration:]";
          *&v29[22] = 1024;
          LODWORD(v30) = 470;
          WORD2(v30) = 1024;
          *(&v30 + 6) = v22;
          v23 = " [%s] %s:%d Ignoring setVideoDegraded=%d with same value";
          v24 = v21;
          v25 = 34;
LABEL_38:
          _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, v23, v29, v25);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v17 = [(VCVideoStreamReceiveGroup *)self performSelector:sel_logPrefix];
      }

      else
      {
        v17 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v28 = *(&self->_isVideoDegraded + 1);
          *v29 = 136316418;
          *&v29[4] = v26;
          *&v29[12] = 2080;
          *&v29[14] = "[VCVideoStreamReceiveGroup setVideoDegraded:duration:]";
          *&v29[22] = 1024;
          LODWORD(v30) = 470;
          WORD2(v30) = 2112;
          *(&v30 + 6) = v17;
          HIWORD(v30) = 2048;
          selfCopy2 = self;
          LOWORD(v32) = 1024;
          *(&v32 + 2) = v28;
          v23 = " [%s] %s:%d %@(%p) Ignoring setVideoDegraded=%d with same value";
          v24 = v27;
          v25 = 54;
          goto LABEL_38;
        }
      }
    }
  }

  else
  {
    streamToken = [(VCMediaStreamGroup *)self streamToken];
    if (![+[VCDefaults forceDisableVideoDegraded] sharedInstance]
    {
      [VCRemoteVideoManager_DefaultManager() remoteVideoDidDegrade:degradedCopy streamToken:streamToken];
    }

    if (self->_isVideoDegradedStartTime != 0.0 && *(&self->_isVideoDegraded + 1) && !degradedCopy)
    {
      [(VCVideoStreamReceiveGroup *)self checkAndReportRegressedPoorConnectionPercentage];
    }

    *(&self->_isVideoDegraded + 1) = degradedCopy;
    [(VCNetworkFeedbackController *)self->super.super._networkFeedbackController reportImmediateWRMMetric:0 value:degradedCopy, *v29, *&v29[16], v30, selfCopy2, v32, v33];
    kdebug_trace();
    v19 = 0.0;
    if (*(&self->_isVideoDegraded + 1))
    {
      v19 = micro();
    }

    self->_isVideoDegradedStartTime = v19;
  }
}

- (unsigned)lastDisplayedFrameRTPTimestamp
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__VCVideoStreamReceiveGroup_lastDisplayedFrameRTPTimestamp__block_invoke;
  block[3] = &unk_1E85F3868;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(stateQueue, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __59__VCVideoStreamReceiveGroup_lastDisplayedFrameRTPTimestamp__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 184) objectForKeyedSubscript:*(*(a1 + 32) + 448)];
  if (v2)
  {
    v3 = v2;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(*(*(a1 + 40) + 8) + 24) = [v3 lastDisplayedFrameRTPTimestamp];
      return;
    }
  }

  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v7 = *(*(a1 + 32) + 448);
    v15 = 136315906;
    v16 = v5;
    v17 = 2080;
    v18 = "[VCVideoStreamReceiveGroup lastDisplayedFrameRTPTimestamp]_block_invoke";
    v19 = 1024;
    v20 = 495;
    v21 = 2112;
    v22 = v7;
    v8 = " [%s] %s:%d Can not find VCMediaStream from _activeDownlinkStreamID=%@";
    v9 = v6;
    v10 = 38;
LABEL_15:
    _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, v8, &v15, v10);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 32) performSelector:sel_logPrefix];
  }

  else
  {
    v4 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = *(v13 + 448);
      v15 = 136316418;
      v16 = v11;
      v17 = 2080;
      v18 = "[VCVideoStreamReceiveGroup lastDisplayedFrameRTPTimestamp]_block_invoke";
      v19 = 1024;
      v20 = 495;
      v21 = 2112;
      v22 = v4;
      v23 = 2048;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      v8 = " [%s] %s:%d %@(%p) Can not find VCMediaStream from _activeDownlinkStreamID=%@";
      v9 = v12;
      v10 = 58;
      goto LABEL_15;
    }
  }
}

- (void)setShouldEnableMLEnhance:(BOOL)enhance streamID:(unsigned __int16)d
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(VCMediaStreamGroup *)self streamGroupID]!= 1935897189)
  {
    stateQueue = self->super.super._stateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__VCVideoStreamReceiveGroup_setShouldEnableMLEnhance_streamID___block_invoke;
    block[3] = &unk_1E85F6BF8;
    block[4] = self;
    enhanceCopy = enhance;
    dCopy = d;
    dispatch_async(stateQueue, block);
  }
}

uint64_t __63__VCVideoStreamReceiveGroup_setShouldEnableMLEnhance_streamID___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 168);
  result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [objc_msgSend(*(*(&v8 + 1) + 8 * v6++) "stream")];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)redundancyController:(id)controller redundancyPercentageDidChange:(unsigned int)change
{
  v9 = *MEMORY[0x1E69E9840];
  if (![+[VCDefaults forceFECRepairStream:controller]])
  {
    stateQueue = self->super.super._stateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__VCVideoStreamReceiveGroup_redundancyController_redundancyPercentageDidChange___block_invoke;
    block[3] = &unk_1E85F38B8;
    block[4] = self;
    changeCopy = change;
    dispatch_async(stateQueue, block);
  }
}

void __80__VCVideoStreamReceiveGroup_redundancyController_redundancyPercentageDidChange___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        *buf = 136315906;
        v20 = v3;
        v21 = 2080;
        v22 = "[VCVideoStreamReceiveGroup redundancyController:redundancyPercentageDidChange:]_block_invoke";
        v23 = 1024;
        v24 = 520;
        v25 = 1024;
        LODWORD(v26) = v5;
        v6 = " [%s] %s:%d New redundancy percentage %d";
        v7 = v4;
        v8 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = *(a1 + 40);
        *buf = 136316418;
        v20 = v9;
        v21 = 2080;
        v22 = "[VCVideoStreamReceiveGroup redundancyController:redundancyPercentageDidChange:]_block_invoke";
        v23 = 1024;
        v24 = 520;
        v25 = 2112;
        v26 = v2;
        v27 = 2048;
        v28 = v11;
        v29 = 1024;
        v30 = v12;
        v6 = " [%s] %s:%d %@(%p) New redundancy percentage %d";
        v7 = v10;
        v8 = 54;
        goto LABEL_11;
      }
    }
  }

  v13 = *(a1 + 32);
  if (*(a1 + 40))
  {
    if (*(v13 + 528))
    {
      return;
    }

    v14 = 1;
  }

  else
  {
    if ((*(v13 + 528) & 1) == 0)
    {
      return;
    }

    v14 = 0;
  }

  *(v13 + 528) = v14;
  v15 = MEMORY[0x1E1289F20](*(a1 + 32) + 296);
  if (v15)
  {
    v16 = *(a1 + 32);
    v17 = *(v16 + 304);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __80__VCVideoStreamReceiveGroup_redundancyController_redundancyPercentageDidChange___block_invoke_52;
    v18[3] = &unk_1E85F37F0;
    v18[4] = v16;
    v18[5] = v15;
    dispatch_async(v17, v18);
  }
}

void __80__VCVideoStreamReceiveGroup_redundancyController_redundancyPercentageDidChange___block_invoke_52(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (*(*(a1 + 32) + 528))
        {
          v5 = "Requesting";
        }

        else
        {
          v5 = "Dismissing";
        }

        *v13 = 136315906;
        *&v13[4] = v3;
        *&v13[12] = 2080;
        *&v13[14] = "[VCVideoStreamReceiveGroup redundancyController:redundancyPercentageDidChange:]_block_invoke";
        *&v13[22] = 1024;
        LODWORD(v14) = 539;
        WORD2(v14) = 2080;
        *(&v14 + 6) = v5;
        v6 = " [%s] %s:%d %s video redundancy";
        v7 = v4;
        v8 = 38;
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        if (*(v11 + 528))
        {
          v12 = "Requesting";
        }

        else
        {
          v12 = "Dismissing";
        }

        *v13 = 136316418;
        *&v13[4] = v9;
        *&v13[12] = 2080;
        *&v13[14] = "[VCVideoStreamReceiveGroup redundancyController:redundancyPercentageDidChange:]_block_invoke";
        *&v13[22] = 1024;
        LODWORD(v14) = 539;
        WORD2(v14) = 2112;
        *(&v14 + 6) = v2;
        HIWORD(v14) = 2048;
        v15 = v11;
        LOWORD(v16) = 2080;
        *(&v16 + 2) = v12;
        v6 = " [%s] %s:%d %@(%p) %s video redundancy";
        v7 = v10;
        v8 = 58;
LABEL_17:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v13, v8);
      }
    }
  }

  [*(a1 + 40) streamGroup:*(a1 + 32) didRequestRedundancy:{*(*(a1 + 32) + 528), *v13, *&v13[16], v14, v15, v16}];
  CFRelease(*(a1 + 40));
}

- (void)vcMediaStream:(id)stream didReceiveFirstFrameWithTime:(id *)time
{
  v7[4] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = micro();
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__VCVideoStreamReceiveGroup_vcMediaStream_didReceiveFirstFrameWithTime___block_invoke;
  block[3] = &unk_1E85F3868;
  block[4] = self;
  block[5] = v7;
  dispatch_async(stateQueue, block);
  _Block_object_dispose(v7, 8);
}

uint64_t __72__VCVideoStreamReceiveGroup_vcMediaStream_didReceiveFirstFrameWithTime___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setFirstMediaFrameReceivedTime:*(*(*(a1 + 40) + 8) + 24)];
  v2 = *(*(*(a1 + 40) + 8) + 24);
  v11.receiver = *(a1 + 32);
  v11.super_class = VCVideoStreamReceiveGroup;
  objc_msgSendSuper2(&v11, sel_finalizePerfTimersForFirstMediaFrameWithTime_, v2);
  v3 = [*(*(a1 + 32) + 240) hasKey:6];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v3)
  {
    v6 = *(v5 + 8);
    v7 = *(v6 + 24);
    if (v7 - *(v4 + 264) < 0.001)
    {
      *(v6 + 24) = v7 + 0.001;
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
    }
  }

  VCPerfTimingUtilsSetStopForKeyOnceWithTime(*(v4 + 240), 6, *(*(v5 + 8) + 24));
  [*(a1 + 32) reportParticipantsPerfTimings];
  v8 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__VCVideoStreamReceiveGroup_vcMediaStream_didReceiveFirstFrameWithTime___block_invoke_2;
  v10[3] = &unk_1E85F41D0;
  v10[4] = v8;
  return [v8 callDelegateWithBlock:v10];
}

- (void)vcMediaStream:(id)stream didSwitchFromStreamID:(unsigned __int16)d toStreamID:(unsigned __int16)iD
{
  v9 = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__VCVideoStreamReceiveGroup_vcMediaStream_didSwitchFromStreamID_toStreamID___block_invoke;
  block[3] = &unk_1E85F38B8;
  iDCopy = iD;
  block[4] = self;
  dCopy = d;
  dispatch_async(stateQueue, block);
}

uint64_t __76__VCVideoStreamReceiveGroup_vcMediaStream_didSwitchFromStreamID_toStreamID___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*(a1 + 40)];
  if (objc_opt_class() != *(a1 + 32))
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v13 = *(a1 + 32);
    v14 = *(v13 + 440);
    v15 = *(a1 + 40);
    *buf = 136316674;
    v25 = v11;
    v26 = 2080;
    v27 = "[VCVideoStreamReceiveGroup vcMediaStream:didSwitchFromStreamID:toStreamID:]_block_invoke";
    v28 = 1024;
    v29 = 580;
    v30 = 2112;
    *v31 = v3;
    *&v31[8] = 2048;
    *&v31[10] = v13;
    v32 = 1024;
    v33 = v15;
    v34 = 2112;
    v35 = v14;
    v8 = " [%s] %s:%d %@(%p) Completed transition to streamId:%d (previous:%@). Opt out of old stream id if needed.";
    v9 = v12;
    v10 = 64;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = *(*(a1 + 32) + 440);
      *buf = 136316162;
      v25 = v4;
      v26 = 2080;
      v27 = "[VCVideoStreamReceiveGroup vcMediaStream:didSwitchFromStreamID:toStreamID:]_block_invoke";
      v28 = 1024;
      v29 = 580;
      v30 = 1024;
      *v31 = v6;
      *&v31[4] = 2112;
      *&v31[6] = v7;
      v8 = " [%s] %s:%d Completed transition to streamId:%d (previous:%@). Opt out of old stream id if needed.";
      v9 = v5;
      v10 = 44;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    }
  }

LABEL_12:
  v16 = *(a1 + 32);
  if (v16[505] == 1)
  {
    [v16 setOptedInStreamID:v2];
    *(*(a1 + 32) + 505) = 0;
    v17 = *(a1 + 32);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __76__VCVideoStreamReceiveGroup_vcMediaStream_didSwitchFromStreamID_toStreamID___block_invoke_58;
    v22[3] = &unk_1E85F41A8;
    v22[4] = v17;
    HIDWORD(v18) = *(a1 + 40);
    LODWORD(v18) = HIDWORD(v18);
    v23 = v18 >> 16;
    [v17 callDelegateWithBlock:v22];
    v16 = *(a1 + 32);
  }

  v16[456] = *(a1 + 40) == 0;
  [*(a1 + 32) setActiveStreamID:v2];
  v19 = *(a1 + 32);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __76__VCVideoStreamReceiveGroup_vcMediaStream_didSwitchFromStreamID_toStreamID___block_invoke_2;
  v21[3] = &unk_1E85F41D0;
  v21[4] = v19;
  return [v19 callDelegateWithBlock:v21];
}

- (void)updateVideoExpected
{
  v23 = *MEMORY[0x1E69E9840];
  isVideoExpected = self->_isVideoExpected;
  if (isVideoExpected != [(VCVideoStreamReceiveGroup *)self isVideoExpected])
  {
    self->_isVideoExpected = [(VCVideoStreamReceiveGroup *)self isVideoExpected];
    self->_lastVideoExpectationSwitch = micro();
    networkFeedbackController = self->super.super._networkFeedbackController;
    if (networkFeedbackController)
    {
      [(VCNetworkFeedbackController *)networkFeedbackController setIsVideoPaused:!self->_isVideoExpected];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v18 = v5;
        v19 = 2080;
        v20 = "[VCVideoStreamReceiveGroup updateVideoExpected]";
        v21 = 1024;
        v22 = 604;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d networkFeedbackController is nil in VCVideoStreamReceiveGroup", buf, 0x1Cu);
      }
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    mediaStreams = self->super.super._mediaStreams;
    v8 = [(NSArray *)mediaStreams countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(mediaStreams);
          }

          [*(*(&v13 + 1) + 8 * i) setVideoExpected:self->_isVideoExpected];
        }

        v9 = [(NSArray *)mediaStreams countByEnumeratingWithState:&v13 objects:v12 count:16];
      }

      while (v9);
    }
  }
}

- (void)setIsRemoteMediaStalled:(BOOL)stalled duration:(double)duration
{
  selfCopy = self;
  v36 = *MEMORY[0x1E69E9840];
  isVideoDegraded = self->_isVideoDegraded;
  if (!stalled && self->_isVideoDegraded)
  {
    if (!self->_isVideoExpected)
    {
      goto LABEL_13;
    }

    isVideoDegraded = 1;
  }

  if (isVideoDegraded == stalled && self->_reportedDegradeStatus == stalled || !self->_isVideoExpected || !self->super._optedInStreamID && !self->super._receivingEndToEndStream)
  {
    return;
  }

  if (!stalled)
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  v8 = micro();
  self = selfCopy;
  if (v8 - selfCopy->_lastVideoExpectationSwitch > 10.0)
  {
    v9 = 1;
LABEL_14:
    [(VCVideoStreamReceiveGroup *)self setVideoDegraded:v9 duration:duration];
    selfCopy->_isVideoDegraded = stalled;
    return;
  }

  if (objc_opt_class() == selfCopy)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        lastVideoExpectationSwitch = selfCopy->_lastVideoExpectationSwitch;
        v20 = 136316418;
        v21 = v11;
        v22 = 2080;
        v23 = "[VCVideoStreamReceiveGroup setIsRemoteMediaStalled:duration:]";
        v24 = 1024;
        v25 = 637;
        v26 = 2048;
        v27 = v8;
        v28 = 2048;
        v29 = lastVideoExpectationSwitch;
        v30 = 2048;
        v31 = v8 - lastVideoExpectationSwitch;
        v14 = " [%s] %s:%d We are experiencing a video stall too soon after we switch video on. Ignoring... currentTime=%f lastVideoExpectationSwitch=%f diff=%f";
        v15 = v12;
        v16 = 58;
LABEL_26:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, &v20, v16);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [(VCVideoStreamReceiveGroup *)selfCopy performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = selfCopy->_lastVideoExpectationSwitch;
        v20 = 136316930;
        v21 = v17;
        v22 = 2080;
        v23 = "[VCVideoStreamReceiveGroup setIsRemoteMediaStalled:duration:]";
        v24 = 1024;
        v25 = 637;
        v26 = 2112;
        v27 = *&v10;
        v28 = 2048;
        v29 = *&selfCopy;
        v30 = 2048;
        v31 = v8;
        v32 = 2048;
        v33 = v19;
        v34 = 2048;
        v35 = v8 - v19;
        v14 = " [%s] %s:%d %@(%p) We are experiencing a video stall too soon after we switch video on. Ignoring... currentTime=%f lastVideoExpectationSwitch=%f diff=%f";
        v15 = v18;
        v16 = 78;
        goto LABEL_26;
      }
    }
  }
}

- (void)vcMediaStream:(id)stream remoteMediaStalled:(BOOL)stalled duration:(double)duration
{
  v8 = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__VCVideoStreamReceiveGroup_vcMediaStream_remoteMediaStalled_duration___block_invoke;
  block[3] = &unk_1E85F63A0;
  stalledCopy = stalled;
  *&block[6] = duration;
  block[4] = self;
  block[5] = stream;
  dispatch_async(stateQueue, block);
}

uint64_t __71__VCVideoStreamReceiveGroup_vcMediaStream_remoteMediaStalled_duration___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsRemoteMediaStalled:*(a1 + 56) duration:*(a1 + 48)];
  result = [*(a1 + 32) checkForExtendedPoorConnectionWithStallDuration:*(a1 + 48)];
  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    return [v3 checkForAndReportPoorConnectionDespiteVideoReceivedForVideoStream:v4 stallDuration:v5];
  }

  return result;
}

- (void)vcMediaStream:(id)stream requestKeyFrameGenerationWithStreamID:(unsigned __int16)d firType:(int)type
{
  dCopy = d;
  v33 = *MEMORY[0x1E69E9840];
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

    *buf = 136315906;
    v22 = v9;
    v23 = 2080;
    v24 = "[VCVideoStreamReceiveGroup vcMediaStream:requestKeyFrameGenerationWithStreamID:firType:]";
    v25 = 1024;
    v26 = 656;
    v27 = 1024;
    LODWORD(v28) = dCopy;
    v11 = " [%s] %s:%d Requesting streamID to generate a key frame %hu";
    v12 = v10;
    v13 = 34;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [(VCVideoStreamReceiveGroup *)self performSelector:sel_logPrefix];
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
      *buf = 136316418;
      v22 = v14;
      v23 = 2080;
      v24 = "[VCVideoStreamReceiveGroup vcMediaStream:requestKeyFrameGenerationWithStreamID:firType:]";
      v25 = 1024;
      v26 = 656;
      v27 = 2112;
      v28 = v8;
      v29 = 2048;
      selfCopy = self;
      v31 = 1024;
      v32 = dCopy;
      v11 = " [%s] %s:%d %@(%p) Requesting streamID to generate a key frame %hu";
      v12 = v15;
      v13 = 54;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
    }
  }

LABEL_12:
  v16 = MEMORY[0x1E1289F20](&self->super.super._delegate);
  if (v16)
  {
    delegateQueue = self->super.super._delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89__VCVideoStreamReceiveGroup_vcMediaStream_requestKeyFrameGenerationWithStreamID_firType___block_invoke;
    block[3] = &unk_1E85F8C50;
    block[4] = v16;
    block[5] = self;
    v20 = dCopy;
    typeCopy = type;
    dispatch_async(delegateQueue, block);
  }
}

void __89__VCVideoStreamReceiveGroup_vcMediaStream_requestKeyFrameGenerationWithStreamID_firType___block_invoke(uint64_t a1)
{
  [*(a1 + 32) streamGroup:*(a1 + 40) requestKeyFrameGenerationWithStreamID:*(a1 + 52) firType:*(a1 + 48)];
  v2 = *(a1 + 32);

  CFRelease(v2);
}

- (void)checkForExtendedPoorConnectionWithStallDuration:(double)duration
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(&self->_isVideoDegraded + 1) && self->_isVideoExpected && (self->super._optedInStreamID || self->super._receivingEndToEndStream))
  {
    v5 = micro();
    lastRecordedExtendedPoorConnection = self->_lastRecordedExtendedPoorConnection;
    v7 = lastRecordedExtendedPoorConnection != 0.0;
    if (v5 - lastRecordedExtendedPoorConnection > 30.0)
    {
      v7 = 0;
    }

    if (duration > 30.0 && self->_isVideoDegradedStartTime != 0.0 && !v7)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          idsParticipantID = self->super.super._idsParticipantID;
          isVideoDegradedStartTime = self->_isVideoDegradedStartTime;
          v13 = 136316674;
          v14 = v8;
          v15 = 2080;
          v16 = "[VCVideoStreamReceiveGroup checkForExtendedPoorConnectionWithStallDuration:]";
          v17 = 1024;
          v18 = 678;
          v19 = 2048;
          v20 = idsParticipantID;
          v21 = 2048;
          durationCopy = duration;
          v23 = 2048;
          v24 = v5;
          v25 = 2048;
          v26 = isVideoDegradedStartTime;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ExtendedPoorConnection detected for idsParticipantID=%llu duration=%f now=%f  isVideoDegradedStartTime=%f", &v13, 0x44u);
        }
      }

      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"SymptomReporterOptionalKeySessionID", self->super.super._sessionUUID);
      CFDictionarySetValue(Mutable, @"SymptomReporterOptionalKeyParticipantID", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->super.super._idsParticipantID]);
      [(VCObject *)self reportingAgent];
      reportingSymptom();
      CFRelease(Mutable);
      self->_lastRecordedExtendedPoorConnection = v5;
    }
  }
}

- (void)collectAndLogChannelMetrics:(id *)metrics
{
  v74 = *MEMORY[0x1E69E9840];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  mediaStreams = self->super.super._mediaStreams;
  v5 = [(NSArray *)mediaStreams countByEnumeratingWithState:&v70 objects:v69 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v71;
    *&v6 = 136317954;
    v34 = v6;
    v35 = mediaStreams;
    do
    {
      v9 = 0;
      v41 = v7;
      do
      {
        if (*v71 != v8)
        {
          objc_enumerationMutation(mediaStreams);
        }

        v10 = *(*(&v70 + 1) + 8 * v9);
        if ([v10 state] == 2)
        {
          v68 = 0;
          memset(v67, 0, sizeof(v67));
          [v10 collectRxChannelMetrics:v67];
          VCMediaChannelMetrics_Sum(metrics, v67);
          unsignedShortValue = [(NSNumber *)[(VCMediaStreamReceiveGroup *)self activeStreamID] unsignedShortValue];
          v43.receiver = self;
          v43.super_class = VCVideoStreamReceiveGroup;
          v12 = [(VCMediaStreamReceiveGroup *)&v43 streamConfigForStreamID:unsignedShortValue];
          if (v12)
          {
            v13 = v12;
            v14 = [objc_msgSend(v12 "multiwayConfig")];
            defaultStreamConfig = v13;
          }

          else
          {
            v14 = [objc_msgSend(objc_msgSend(v10 "defaultStreamConfig")];
            defaultStreamConfig = [v10 defaultStreamConfig];
          }

          v16 = [objc_msgSend(defaultStreamConfig "multiwayConfig")];
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 6)
            {
              v27 = VRTraceErrorLogLevelToCSTR();
              v28 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v29 = FourccToCStr([(VCMediaStreamGroup *)self streamGroupID]);
                v40 = v67[0];
                v30 = v67[2];
                v31 = NSStringFromSize(*(&v67[2] + 8));
                syncUpdateCalled = self->_syncUpdateCalled;
                displayLatency = self->_displayLatency;
                activeStreamID = [(VCMediaStreamReceiveGroup *)self activeStreamID];
                *buf = v34;
                v45 = v27;
                v46 = 2080;
                v47 = "[VCVideoStreamReceiveGroup collectAndLogChannelMetrics:]";
                v48 = 1024;
                v49 = 700;
                v50 = 2080;
                v51 = v29;
                v52 = 1024;
                *v53 = v14;
                *&v53[4] = 1024;
                *&v53[6] = v16;
                LOWORD(v54) = 1024;
                *(&v54 + 2) = v40;
                HIWORD(v54) = 2048;
                v55 = v30;
                *v56 = 2112;
                *&v56[2] = v31;
                mediaStreams = v35;
                v57 = 2048;
                v58 = syncUpdateCalled;
                v7 = v41;
                v59 = 2048;
                v60 = displayLatency;
                v61 = 2112;
                v62 = activeStreamID;
                v24 = v28;
                v25 = " [%s] %s:%d Health Monitor for Video Stream Receive GroupID=%s StreamID[main:%u repair:%u] Video[%ukbps %4.1ffps] VideoResolution=%@ syncUpdateCalled=%ld videoDisplayLatency=%f activeStreamID=%@";
                v26 = 106;
                goto LABEL_19;
              }
            }
          }

          else
          {
            v17 = &stru_1F570E008;
            if (objc_opt_respondsToSelector())
            {
              v17 = [(VCVideoStreamReceiveGroup *)self performSelector:sel_logPrefix];
            }

            if (VRTraceGetErrorLogLevelForModule() >= 6)
            {
              v18 = VRTraceErrorLogLevelToCSTR();
              v19 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v20 = FourccToCStr([(VCMediaStreamGroup *)self streamGroupID]);
                v39 = v67[0];
                v21 = v67[2];
                v22 = NSStringFromSize(*(&v67[2] + 8));
                v36 = self->_displayLatency;
                v37 = self->_syncUpdateCalled;
                activeStreamID2 = [(VCMediaStreamReceiveGroup *)self activeStreamID];
                *buf = 136318466;
                v45 = v18;
                v46 = 2080;
                v47 = "[VCVideoStreamReceiveGroup collectAndLogChannelMetrics:]";
                v48 = 1024;
                v49 = 700;
                v50 = 2112;
                v51 = v17;
                v52 = 2048;
                *v53 = self;
                *&v53[8] = 2080;
                v54 = v20;
                LOWORD(v55) = 1024;
                *(&v55 + 2) = v14;
                HIWORD(v55) = 1024;
                *v56 = v16;
                *&v56[4] = 1024;
                *&v56[6] = v39;
                v57 = 2048;
                v58 = v21;
                v59 = 2112;
                v60 = *&v22;
                v7 = v41;
                v61 = 2048;
                v62 = v37;
                v63 = 2048;
                mediaStreams = v35;
                v64 = v36;
                v65 = 2112;
                v66 = activeStreamID2;
                v24 = v19;
                v25 = " [%s] %s:%d %@(%p) Health Monitor for Video Stream Receive GroupID=%s StreamID[main:%u repair:%u] Video[%ukbps %4.1ffps] VideoResolution=%@ syncUpdateCalled=%ld videoDisplayLatency=%f activeStreamID=%@";
                v26 = 126;
LABEL_19:
                _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, v25, buf, v26);
              }
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)mediaStreams countByEnumeratingWithState:&v70 objects:v69 count:16];
    }

    while (v7);
  }
}

- (void)checkForAndReportPoorConnectionDespiteVideoReceivedForVideoStream:(id)stream stallDuration:(double)duration
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(&self->_isVideoDegraded + 1) && self->_isVideoExpected && (self->super._optedInStreamID || self->super._receivingEndToEndStream))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [stream activeVideoStallDuration];
      v8 = vabdd_f64(v7, duration);
      [stream videoRxFrameRate];
      v10 = v9;
      v11 = self->_isVideoDegradedStartTime == 0.0 || v8 <= 0.5;
      if (!v11 && duration > 5.0 && self->_didReportSymptomOnPoorConnectionDespiteVideoIsReceived == 0.0 && v9 > 0.0 && [(VCMediaStreamGroup *)self streamGroupID]== 1667329381)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v12 = VRTraceErrorLogLevelToCSTR();
          v13 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            idsParticipantID = self->super.super._idsParticipantID;
            isVideoDegradedStartTime = self->_isVideoDegradedStartTime;
            v17 = 136316674;
            v18 = v12;
            v19 = 2080;
            v20 = "[VCVideoStreamReceiveGroup checkForAndReportPoorConnectionDespiteVideoReceivedForVideoStream:stallDuration:]";
            v21 = 1024;
            v22 = 718;
            v23 = 2048;
            v24 = idsParticipantID;
            v25 = 2048;
            durationCopy = duration;
            v27 = 2048;
            v28 = isVideoDegradedStartTime;
            v29 = 2048;
            v30 = v10;
            _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Poor connection detected for idsParticipantID=%llu duration=%2.3f isVideoDegradedStartTime=%2.3f videoRxFramerate[past 5s]=%2.3f", &v17, 0x44u);
          }
        }

        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, @"SymptomReporterOptionalKeySessionID", self->super.super._sessionUUID);
        CFDictionarySetValue(Mutable, @"SymptomReporterOptionalKeyParticipantID", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->super.super._idsParticipantID]);
        [(VCObject *)self reportingAgent];
        reportingSymptom();
        CFRelease(Mutable);
        self->_didReportSymptomOnPoorConnectionDespiteVideoIsReceived = 1.0;
      }
    }
  }
}

- (void)mediaStream:(id)stream didReceiveNewMediaKeyIndex:(id)index
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VCVideoStreamReceiveGroup;
  [(VCMediaStreamGroup *)&v6 mediaStream:stream didReceiveNewMediaKeyIndex:?];
  [(VCMediaStreamGroup *)self setupPerfTimersWithMediaKeyIndex:index perfTimerIndexToStart:6];
}

- (id)setupRedundancyController
{
  v26 = *MEMORY[0x1E69E9840];
  if (self->_videoRedundancyController)
  {
    return 0;
  }

  if (![(VCMediaStreamGroup *)self statisticsCollector])
  {
    v11 = @"Need statistics collector to create redundancy controller";
    goto LABEL_18;
  }

  v3 = [[VCRedundancyControllerVideo alloc] initWithDelegate:self mode:7 parameters:[(VCMediaStreamGroup *)self statisticsCollector], 400];
  self->_videoRedundancyController = v3;
  if (!v3)
  {
    v11 = @"Failed to create video redundancy controller";
LABEL_18:
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailCode:0 description:{v11, *v22, *&v22[16]}];
      }

      VRTraceErrorLogLevelToCSTR();
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailCode:0 description:{v11, *v22, *&v22[16]}];
      }

      OUTLINED_FUNCTION_1_0();
      *&v22[12] = v13;
      *&v22[14] = "[VCVideoStreamReceiveGroup setupRedundancyController]";
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_29();
      v24 = v11;
      OUTLINED_FUNCTION_9_0();
      v19 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [(VCVideoStreamReceiveGroup *)self performSelector:sel_logPrefix];
      }

      else
      {
        v12 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailCode:0 description:{v11, *v22, *&v22[16]}];
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailCode:0 description:{v11, *v22, *&v22[16]}];
      }

      *v22 = 136316418;
      *&v22[4] = v20;
      *&v22[12] = 2080;
      *&v22[14] = "[VCVideoStreamReceiveGroup setupRedundancyController]";
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_29();
      v24 = v12;
      OUTLINED_FUNCTION_12_8();
      v25 = v11;
      v14 = &dword_1DB56E000;
      v17 = " [%s] %s:%d %@(%p) %@";
      v18 = v22;
      v15 = v21;
      v16 = OS_LOG_TYPE_ERROR;
      v19 = 58;
    }

    _os_log_error_impl(v14, v15, v16, v17, v18, v19);
    return [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailCode:0 description:{v11, *v22, *&v22[16]}];
  }

  [(VCRedundancyControllerVideo *)v3 setStatisticsID:self->super.super._idsParticipantID];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 0;
    }

    VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    v23 = 183;
    v5 = &dword_1DB56E000;
    v6 = " [%s] %s:%d Redundancy controller is created";
    v7 = v22;
    v8 = v4;
    v9 = 28;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [(VCVideoStreamReceiveGroup *)self performSelector:sel_logPrefix];
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 0;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_5_1();
    v9 = 48;
  }

  _os_log_impl(v5, v8, OS_LOG_TYPE_DEFAULT, v6, v7, v9);
  return 0;
}

- (void)checkAndReportRegressedPoorConnectionPercentage
{
  v30 = *MEMORY[0x1E69E9840];
  if ([(VCMediaStreamGroup *)self streamGroupID]== 1667329381 && !self->_poorConnectionPercentageRegressedFromTelemetrySymptomReported)
  {
    if (self->_poorConnectionPercentageABCReportingThreshold)
    {
      v3 = micro();
      v4 = v3 - self->_isVideoDegradedStartTime + self->_poorConnectionTotalLength;
      self->_poorConnectionTotalLength = v4;
      v5 = (v4 * 10000.0 / (v3 - self->_startTime));
      if (self->_poorConnectionPercentageABCReportingThreshold < v5)
      {
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() < 6)
          {
            goto LABEL_16;
          }

          v7 = VRTraceErrorLogLevelToCSTR();
          v8 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_16;
          }

          v20 = 136316162;
          v21 = v7;
          v22 = 2080;
          OUTLINED_FUNCTION_7_26();
          v23 = v9;
          *v24 = v5;
          *&v24[4] = v9;
          *&v24[6] = v10;
          v11 = &dword_1DB56E000;
          v12 = " [%s] %s:%d PoorConnectionPercentage=%d >= ReportingThresholdFromTelemetry=%d";
          v13 = &v20;
          v14 = v8;
          v15 = 40;
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v6 = [(VCVideoStreamReceiveGroup *)self performSelector:sel_logPrefix];
          }

          else
          {
            v6 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() < 6)
          {
            goto LABEL_16;
          }

          v16 = VRTraceErrorLogLevelToCSTR();
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_16;
          }

          v20 = 136316674;
          v21 = v16;
          v22 = 2080;
          OUTLINED_FUNCTION_7_26();
          v23 = 2112;
          *v24 = v6;
          *&v24[8] = 2048;
          selfCopy = self;
          v26 = v17;
          v27 = v5;
          v28 = v17;
          v29 = v18;
          OUTLINED_FUNCTION_5_1();
          v15 = 60;
        }

        _os_log_impl(v11, v14, OS_LOG_TYPE_DEFAULT, v12, v13, v15);
LABEL_16:
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, @"SymptomReporterOptionalKeySessionID", self->super.super._sessionUUID);
        CFDictionarySetValue(Mutable, @"SymptomReporterOptionalKeyParticipantID", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->super.super._idsParticipantID]);
        [(VCObject *)self reportingAgent];
        reportingSymptom();
        CFRelease(Mutable);
        self->_poorConnectionPercentageRegressedFromTelemetrySymptomReported = 1;
      }
    }
  }
}

- (void)isVideoExpected
{
  v17 = *MEMORY[0x1E69E9840];
  state = [a2 state];
  v6 = a2[484];
  [a2 isVisible];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  v10 = 197;
  v11 = v7;
  v12 = state;
  v13 = v7;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  _os_log_debug_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_DEBUG, " [%s] %s:%d state:%d remoteVideoPaused:%d isVisible:%d", v9, 0x2Eu);
}

void __43__VCVideoStreamReceiveGroup_setSyncSource___block_invoke_cold_1(uint64_t a1, id *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 48) + 8) + 24) = 0;
  if (objc_opt_class() == *a2)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    [*a2 state];
    OUTLINED_FUNCTION_1_0();
    v16 = v5;
    v17 = "[VCVideoStreamReceiveGroup setSyncSource:]_block_invoke";
    OUTLINED_FUNCTION_4_2();
    v18 = 225;
    v19 = v6;
    LODWORD(v20) = v7;
    v8 = &dword_1DB56E000;
    v9 = " [%s] %s:%d Stream group must be stopped when setting sync source. state=%d";
    v10 = &v15;
    v11 = v4;
    v12 = 34;
LABEL_12:
    _os_log_error_impl(v8, v11, OS_LOG_TYPE_ERROR, v9, v10, v12);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = [*a2 performSelector:sel_logPrefix];
  }

  else
  {
    v3 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [*a2 state];
      OUTLINED_FUNCTION_10();
      v16 = v13;
      v17 = "[VCVideoStreamReceiveGroup setSyncSource:]_block_invoke";
      OUTLINED_FUNCTION_4_2();
      v18 = 225;
      v19 = 2112;
      v20 = v3;
      OUTLINED_FUNCTION_12_8();
      v21 = v14;
      OUTLINED_FUNCTION_5_1();
      v12 = 54;
      goto LABEL_12;
    }
  }
}

void __48__VCVideoStreamReceiveGroup_setActiveStreamIDs___block_invoke_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = 136316162;
  v5 = a1;
  OUTLINED_FUNCTION_0();
  v6 = 383;
  v7 = v1;
  v8 = 2;
  v9 = 2112;
  v10 = v2;
  _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Trying to opt into more than %d video streams! Streams:%@", &v4, 0x2Cu);
}

@end