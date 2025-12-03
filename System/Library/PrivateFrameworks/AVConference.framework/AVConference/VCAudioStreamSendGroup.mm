@interface VCAudioStreamSendGroup
- (BOOL)addSyncDestination:(id)destination;
- (BOOL)configureAudioStreams:(id)streams deviceRole:(int)role operatingMode:(int)mode;
- (BOOL)configureStreams;
- (BOOL)createIOEventQueues;
- (BOOL)removeSyncDestination:(id)destination;
- (BOOL)setDeviceRole:(int)role operatingMode:(int)mode;
- (BOOL)setupStreamGroupWithConfig:(id)config;
- (BOOL)startCaptureIfNeeded:(BOOL)needed;
- (BOOL)stopCaptureForEndToEndStreamIfNeeded;
- (VCAudioStreamSendGroup)initWithConfig:(id)config;
- (id)activeStreamKeys;
- (id)checkStreamsForAdditionalOptIn:(id)in;
- (id)setupRedundancyControllerForMode:(unsigned int)mode;
- (id)willStart;
- (void)cleanupIOEventQueues;
- (void)collectAndLogChannelMetrics:(id *)metrics;
- (void)configureSyncGroupTimestamp;
- (void)createIOEventQueues;
- (void)dealloc;
- (void)didReceiveCustomReportPacket:(tagRTCPPACKET *)packet arrivalNTPTime:(tagNTP)time;
- (void)didReceiveReportPacket:(tagRTCPPACKET *)packet arrivalNTPTime:(tagNTP)time;
- (void)didStart;
- (void)didStop;
- (void)dispatchedUpdateActiveMediaStreamIDs:(id)ds withTargetBitrate:(unsigned int)bitrate mediaBitrates:(id)bitrates rateChangeCounter:(unsigned int)counter;
- (void)dispatchedUpdateStreamsWithActiveConnection:(id)connection;
- (void)flushAudioEventQueue;
- (void)flushAudioRedundancyEventQueue;
- (void)redundancyController:(id)controller redundancyPercentageDidChange:(unsigned int)change;
- (void)reportOperatingMode:(int)mode;
- (void)setBasebandCongestionDetector:(id)detector;
- (void)setCurrentDTXEnabled:(BOOL)enabled;
- (void)setMuteOnStreams;
- (void)setMuted:(BOOL)muted;
- (void)setPowerSpectrumEnabled:(BOOL)enabled;
- (void)setReportingAgent:(opaqueRTCReporting *)agent;
- (void)setVADFilteringEnabled:(BOOL)enabled;
- (void)startDynamicDucker;
- (void)startVoiceActivityDetection;
- (void)stopDynamicDucker;
- (void)stopVoiceActivityDetection;
- (void)updateActiveVoiceOnly:(BOOL)only;
- (void)updateOperatingMode:(int)mode;
- (void)updateVoiceActivityEnabled:(BOOL)enabled isMediaPriorityEnabled:(BOOL)priorityEnabled;
@end

@implementation VCAudioStreamSendGroup

- (VCAudioStreamSendGroup)initWithConfig:(id)config
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VCAudioStreamSendGroup;
  v4 = [(VCMediaStreamSendGroup *)&v6 initWithConfig:?];
  if (v4)
  {
    v4->_common = [[VCAudioStreamGroupCommon alloc] initWithConfig:config audioCallback:VCAudioStreamSendGroup_PushAudioSamples context:v4 audioDirection:2 stateQueue:v4->super.super._stateQueue];
    [(VCObject *)v4->_common setLogPrefix:[(VCObject *)v4 logPrefix]];
    if (v4->_common)
    {
      [(VCAudioStreamSendGroup *)v4 setMuteOnStreams];
      [(VCMediaStreamGroup *)v4 setCaptureController:v4];
      v4->_forcedAudioPriorityValue = [+[VCDefaults sharedInstance](VCDefaults forceAudioPriorityValue];
      v4->_forcedAudioPriorityEnabled = [+[VCDefaults sharedInstance](VCDefaults forceAudioPriorityEnabled];
      v4->_lastAudioPriority = 0;
      v4->_systemAudioCaptureSession = [config systemAudioCaptureSession];
      v4->_shouldScheduleMediaQueue = [config shouldScheduleMediaQueue];
      if ([(VCAudioStreamSendGroup *)v4 createIOEventQueues])
      {
        return v4;
      }

      [(VCAudioStreamSendGroup *)v4 initWithConfig:v7];
    }

    else
    {
      [(VCAudioStreamSendGroup *)v4 initWithConfig:v7];
    }

    return v7[0];
  }

  return v4;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  [(VCAudioStreamSendGroup *)self flushAudioEventQueue];
  [(VCAudioStreamSendGroup *)self flushAudioRedundancyEventQueue];
  [(VCAudioStreamSendGroup *)self cleanupIOEventQueues];

  [(VCRedundancyControllerProtocol *)self->super._redundancyController unregisterStatistics];
  mediaQueue = self->_mediaQueue;
  if (mediaQueue)
  {
    CFRelease(mediaQueue);
    self->_mediaQueue = 0;
  }

  VCVoiceDetector_Destroy(&self->_voiceDetector);

  v4.receiver = self;
  v4.super_class = VCAudioStreamSendGroup;
  [(VCMediaStreamSendGroup *)&v4 dealloc];
}

- (BOOL)setupStreamGroupWithConfig:(id)config
{
  v7 = *MEMORY[0x1E69E9840];
  self->_shouldScheduleMediaQueue = [config shouldScheduleMediaQueue];
  [(VCAudioStreamGroupCommon *)self->_common cleanupStreams];
  v6.receiver = self;
  v6.super_class = VCAudioStreamSendGroup;
  return [(VCMediaStreamSendGroup *)&v6 setupStreamGroupWithConfig:config];
}

- (BOOL)stopCaptureForEndToEndStreamIfNeeded
{
  v21 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super.super._stateQueue);
  if (self->super._streamGroupMode != 1 || [(VCAudioIO *)[(VCAudioStreamGroupCommon *)self->_common audioIO] state]!= 2)
  {
    return 0;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_15;
    }

    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    streamGroupMode = self->super._streamGroupMode;
    state = [(VCAudioIO *)[(VCAudioStreamGroupCommon *)self->_common audioIO] state];
    *v16 = 136316162;
    *&v16[4] = v5;
    *&v16[12] = 2080;
    *&v16[14] = "[VCAudioStreamSendGroup stopCaptureForEndToEndStreamIfNeeded]";
    *&v16[22] = 1024;
    LODWORD(v17) = 138;
    WORD2(v17) = 1024;
    *(&v17 + 6) = streamGroupMode;
    WORD5(v17) = 1024;
    HIDWORD(v17) = state;
    v9 = " [%s] %s:%d Choosing to stop capture, streamGroupMode=%u audioIOState=%u";
    v10 = v6;
    v11 = 40;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAudioStreamSendGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_15;
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v14 = self->super._streamGroupMode;
    state2 = [(VCAudioIO *)[(VCAudioStreamGroupCommon *)self->_common audioIO] state];
    *v16 = 136316674;
    *&v16[4] = v12;
    *&v16[12] = 2080;
    *&v16[14] = "[VCAudioStreamSendGroup stopCaptureForEndToEndStreamIfNeeded]";
    *&v16[22] = 1024;
    LODWORD(v17) = 138;
    WORD2(v17) = 2112;
    *(&v17 + 6) = v3;
    HIWORD(v17) = 2048;
    selfCopy = self;
    LOWORD(v19) = 1024;
    *(&v19 + 2) = v14;
    HIWORD(v19) = 1024;
    LODWORD(v20) = state2;
    v9 = " [%s] %s:%d %@(%p) Choosing to stop capture, streamGroupMode=%u audioIOState=%u";
    v10 = v13;
    v11 = 60;
  }

  _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v16, v11);
LABEL_15:
  [(VCAudioStreamGroupCommon *)self->_common stopCapture:*v16];
  return 1;
}

- (BOOL)startCaptureIfNeeded:(BOOL)needed
{
  v23 = *MEMORY[0x1E69E9840];
  if (needed && (v4 = [(VCAudioStreamGroupCommon *)self->_common startCapture]) != 0)
  {
    v5 = v4;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v7 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v7)
        {
          return v7;
        }

        [VCAudioStreamSendGroup startCaptureIfNeeded:];
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCAudioStreamSendGroup *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        v7 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v7)
        {
          return v7;
        }

        v11 = 136316418;
        v12 = v8;
        v13 = 2080;
        v14 = "[VCAudioStreamSendGroup startCaptureIfNeeded:]";
        v15 = 1024;
        v16 = 156;
        v17 = 2112;
        v18 = v6;
        v19 = 2048;
        selfCopy = self;
        v21 = 2112;
        v22 = v5;
        _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Starting capture failed with error=%@", &v11, 0x3Au);
      }
    }

    LOBYTE(v7) = 0;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)updateOperatingMode:(int)mode
{
  v3 = *&mode;
  v38 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v31 = v5;
      v32 = 2080;
      v33 = "[VCAudioStreamSendGroup updateOperatingMode:]";
      v34 = 1024;
      v35 = 162;
      v36 = 1024;
      v37 = v3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Updating operatingMode=%d", buf, 0x22u);
    }
  }

  audioStreams = [(VCAudioStreamGroupCommon *)self->_common audioStreams];
  if (audioStreams)
  {
    v8 = audioStreams;
    do
    {
      [v8->var7 updateOperatingMode:v3];
      v8 = v8->var0;
    }

    while (v8);
  }

  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = [-[VCMediaStreamSendGroup streamGroupConfigForMode:](self streamGroupConfigForMode:{1), "mediaStreamInfoArray"}];
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      v13 = 0;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * v13);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        streamConfigs = [v14 streamConfigs];
        v16 = [streamConfigs countByEnumeratingWithState:&v21 objects:v20 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v22;
          do
          {
            v19 = 0;
            do
            {
              if (*v22 != v18)
              {
                objc_enumerationMutation(streamConfigs);
              }

              [*(*(&v21 + 1) + 8 * v19++) setOneToOneOperatingMode:v3];
            }

            while (v17 != v19);
            v17 = [streamConfigs countByEnumeratingWithState:&v21 objects:v20 count:16];
          }

          while (v17);
        }

        ++v13;
      }

      while (v13 != v11);
      v11 = [v9 countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v11);
  }
}

- (BOOL)setDeviceRole:(int)role operatingMode:(int)mode
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  stateQueue = self->super.super._stateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__VCAudioStreamSendGroup_setDeviceRole_operatingMode___block_invoke;
  v7[3] = &unk_1E85F6D88;
  roleCopy = role;
  modeCopy = mode;
  v7[4] = self;
  v7[5] = &v10;
  dispatch_sync(stateQueue, v7);
  v5 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v5;
}

void __54__VCAudioStreamSendGroup_setDeviceRole_operatingMode___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = *(a1 + 48);
  if (v3 == [*(a1 + 32) deviceRole] && (v4 = *(a1 + 52), v4 == objc_msgSend(*(a1 + 32), "operatingMode")))
  {
    __54__VCAudioStreamSendGroup_setDeviceRole_operatingMode___block_invoke_cold_4();
  }

  else
  {
    v5 = [*(a1 + 32) stopCaptureForEndToEndStreamIfNeeded];
    *(*(*(a1 + 40) + 8) + 24) = [*(*(a1 + 32) + 768) setDeviceRole:*(a1 + 48) operatingMode:*(a1 + 52)];
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      *(*v2 + 872) = [objc_msgSend(*(*(a1 + 32) + 768) "audioIO")];
      v6 = *v2;
      if (*(*v2 + 120) == 1 && (*(*(*(a1 + 40) + 8) + 24) = [v6 configureAudioStreams:v6[21] deviceRole:*(a1 + 48) operatingMode:*(a1 + 52)], v6 = *(a1 + 32), (*(*(*(a1 + 40) + 8) + 24) & 1) == 0))
      {
        __54__VCAudioStreamSendGroup_setDeviceRole_operatingMode___block_invoke_cold_2();
      }

      else
      {
        *(*(*(a1 + 40) + 8) + 24) = [v6 startCaptureIfNeeded:v5];
        if (*(*(*(a1 + 40) + 8) + 24))
        {
          [*(a1 + 32) reportOperatingMode:*(a1 + 52)];
        }

        else
        {
          __54__VCAudioStreamSendGroup_setDeviceRole_operatingMode___block_invoke_cold_3();
        }
      }
    }

    else
    {
      __54__VCAudioStreamSendGroup_setDeviceRole_operatingMode___block_invoke_cold_1();
    }
  }

  if (objc_opt_class() == *v2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 48);
        v11 = *(a1 + 52);
        v12 = *(a1 + 32);
        v13 = *(*(*(a1 + 40) + 8) + 24);
        v14 = *(v12 + 872);
        v15 = *(v12 + 480);
        LODWORD(v12) = *(*(v12 + 768) + 168);
        v28 = 136317186;
        v29 = v8;
        v30 = 2080;
        v31 = "[VCAudioStreamSendGroup setDeviceRole:operatingMode:]_block_invoke";
        v32 = 1024;
        v33 = 195;
        v34 = 1024;
        *v35 = v10;
        *&v35[4] = 1024;
        *&v35[6] = v11;
        LOWORD(v36) = 1024;
        *(&v36 + 2) = v13;
        HIWORD(v36) = 1024;
        *v37 = v14;
        *&v37[4] = 1024;
        *v38 = v15;
        *&v38[4] = 1024;
        *v39 = v12;
        v16 = " [%s] %s:%d Setting deviceRole=%d, operatingMode=%u, didSucceed=%{BOOL}d, audioControllerSupportsVoiceActivityDetection=%{BOOL}d, streamGroupMode=%u, isMediaPriorityEnabled=%{BOOL}d";
        v17 = v9;
        v18 = 64;
LABEL_18:
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, &v28, v18);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [*v2 performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 48);
        v22 = *(a1 + 52);
        v23 = *(a1 + 32);
        v24 = *(*(*(a1 + 40) + 8) + 24);
        v25 = *(v23 + 872);
        v26 = *(v23 + 480);
        v27 = *(*(v23 + 768) + 168);
        v28 = 136317698;
        v29 = v19;
        v30 = 2080;
        v31 = "[VCAudioStreamSendGroup setDeviceRole:operatingMode:]_block_invoke";
        v32 = 1024;
        v33 = 195;
        v34 = 2112;
        *v35 = v7;
        *&v35[8] = 2048;
        v36 = v23;
        *v37 = 1024;
        *&v37[2] = v21;
        *v38 = 1024;
        *&v38[2] = v22;
        *v39 = 1024;
        *&v39[2] = v24;
        v40 = 1024;
        v41 = v25;
        v42 = 1024;
        v43 = v26;
        v44 = 1024;
        v45 = v27;
        v16 = " [%s] %s:%d %@(%p) Setting deviceRole=%d, operatingMode=%u, didSucceed=%{BOOL}d, audioControllerSupportsVoiceActivityDetection=%{BOOL}d, streamGroupMode=%u, isMediaPriorityEnabled=%{BOOL}d";
        v17 = v20;
        v18 = 84;
        goto LABEL_18;
      }
    }
  }
}

- (BOOL)configureAudioStreams:(id)streams deviceRole:(int)role operatingMode:(int)mode
{
  v74 = *MEMORY[0x1E69E9840];
  stop = 0;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v46 = [streams countByEnumeratingWithState:&v70 objects:v69 count:16];
  if (!v46)
  {
    goto LABEL_42;
  }

  if (role == 3)
  {
    v7 = 6;
  }

  else
  {
    v7 = 5;
  }

  v45 = *v71;
LABEL_6:
  v8 = 0;
  while (1)
  {
    if (*v71 != v45)
    {
      objc_enumerationMutation(streams);
    }

    v9 = *(*(&v70 + 1) + 8 * v8);
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v47 = v8;
    v48 = v9;
    streamConfigs = [v9 streamConfigs];
    v10 = [streamConfigs countByEnumeratingWithState:&v65 objects:v64 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v66;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v66 != v12)
          {
            objc_enumerationMutation(streamConfigs);
          }

          v14 = *(*(&v65 + 1) + 8 * i);
          [v14 setAudioStreamMode:v7];
          [v14 setOneToOneOperatingMode:mode];
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v22 = VRTraceErrorLogLevelToCSTR();
              v23 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                oneToOneOperatingMode = [v14 oneToOneOperatingMode];
                *buf = 136315906;
                v53 = v22;
                v54 = 2080;
                v55 = "[VCAudioStreamSendGroup configureAudioStreams:deviceRole:operatingMode:]";
                v56 = 1024;
                v57 = 226;
                v58 = 1024;
                LODWORD(v59) = oneToOneOperatingMode;
                v19 = v23;
                v20 = " [%s] %s:%d Updating operatingMode in streamConfig.oneToOneOperatingMode=%d";
                v21 = 34;
                goto LABEL_23;
              }
            }
          }

          else
          {
            v15 = &stru_1F570E008;
            if (objc_opt_respondsToSelector())
            {
              v15 = [(VCAudioStreamSendGroup *)self performSelector:sel_logPrefix];
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v16 = VRTraceErrorLogLevelToCSTR();
              v17 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                oneToOneOperatingMode2 = [v14 oneToOneOperatingMode];
                *buf = 136316418;
                v53 = v16;
                v54 = 2080;
                v55 = "[VCAudioStreamSendGroup configureAudioStreams:deviceRole:operatingMode:]";
                v56 = 1024;
                v57 = 226;
                v58 = 2112;
                v59 = v15;
                v60 = 2048;
                selfCopy5 = self;
                v62 = 1024;
                LODWORD(v63) = oneToOneOperatingMode2;
                v19 = v17;
                v20 = " [%s] %s:%d %@(%p) Updating operatingMode in streamConfig.oneToOneOperatingMode=%d";
                v21 = 54;
LABEL_23:
                _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, v21);
                continue;
              }
            }
          }
        }

        v11 = [streamConfigs countByEnumeratingWithState:&v65 objects:v64 count:16];
      }

      while (v11);
    }

    stream = [v48 stream];
    state = [stream state];
    state2 = [stream state];
    v28 = state2;
    v29 = state == 2 || state2 == 4;
    v30 = v29;
    if (v29 || [stream state])
    {
      stop = [stream stop];
      if (stop)
      {
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCAudioStreamSendGroup configureAudioStreams:deviceRole:operatingMode:];
            }
          }
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v33 = [(VCAudioStreamSendGroup *)self performSelector:sel_logPrefix];
          }

          else
          {
            v33 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v37 = VRTraceErrorLogLevelToCSTR();
            v38 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136316162;
              v53 = v37;
              v54 = 2080;
              v55 = "[VCAudioStreamSendGroup configureAudioStreams:deviceRole:operatingMode:]";
              v56 = 1024;
              v57 = 235;
              v58 = 2112;
              v59 = v33;
              v60 = 2048;
              selfCopy5 = self;
              v39 = " [%s] %s:%d %@(%p) stop audio stream failed";
              goto LABEL_85;
            }
          }
        }

LABEL_42:
        LOBYTE(v31) = 1;
        return v31;
      }
    }

    if (([stream setStreamConfig:objc_msgSend(v48 withError:{"streamConfigs"), &stop}] & 1) == 0)
    {
      break;
    }

    if (v30)
    {
      stop = [stream start];
      if (stop)
      {
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCAudioStreamSendGroup configureAudioStreams:deviceRole:operatingMode:];
            }
          }

          goto LABEL_42;
        }

        if (objc_opt_respondsToSelector())
        {
          v34 = [(VCAudioStreamSendGroup *)self performSelector:sel_logPrefix];
        }

        else
        {
          v34 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_42;
        }

        v41 = VRTraceErrorLogLevelToCSTR();
        v38 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_42;
        }

        *buf = 136316162;
        v53 = v41;
        v54 = 2080;
        v55 = "[VCAudioStreamSendGroup configureAudioStreams:deviceRole:operatingMode:]";
        v56 = 1024;
        v57 = 243;
        v58 = 2112;
        v59 = v34;
        v60 = 2048;
        selfCopy5 = self;
        v39 = " [%s] %s:%d %@(%p) start audio stream failed";
LABEL_85:
        _os_log_error_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_ERROR, v39, buf, 0x30u);
        goto LABEL_42;
      }

      if (v28 == 4)
      {
        stop = [stream setPause:1];
        if (stop)
        {
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                [VCAudioStreamSendGroup configureAudioStreams:deviceRole:operatingMode:];
              }
            }

            goto LABEL_42;
          }

          if (objc_opt_respondsToSelector())
          {
            v40 = [(VCAudioStreamSendGroup *)self performSelector:sel_logPrefix];
          }

          else
          {
            v40 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_42;
          }

          v42 = VRTraceErrorLogLevelToCSTR();
          v38 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_42;
          }

          *buf = 136316162;
          v53 = v42;
          v54 = 2080;
          v55 = "[VCAudioStreamSendGroup configureAudioStreams:deviceRole:operatingMode:]";
          v56 = 1024;
          v57 = 247;
          v58 = 2112;
          v59 = v40;
          v60 = 2048;
          selfCopy5 = self;
          v39 = " [%s] %s:%d %@(%p) pause audio stream failed";
          goto LABEL_85;
        }
      }
    }

    v8 = v47 + 1;
    if (v47 + 1 == v46)
    {
      v46 = [streams countByEnumeratingWithState:&v70 objects:v69 count:16];
      if (!v46)
      {
        goto LABEL_42;
      }

      goto LABEL_6;
    }
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v31 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v31)
      {
        return v31;
      }

      [VCAudioStreamSendGroup configureAudioStreams:deviceRole:operatingMode:];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v32 = [(VCAudioStreamSendGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v32 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v35 = VRTraceErrorLogLevelToCSTR();
      v36 = *MEMORY[0x1E6986650];
      v31 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v31)
      {
        return v31;
      }

      *buf = 136316418;
      v53 = v35;
      v54 = 2080;
      v55 = "[VCAudioStreamSendGroup configureAudioStreams:deviceRole:operatingMode:]";
      v56 = 1024;
      v57 = 239;
      v58 = 2112;
      v59 = v32;
      v60 = 2048;
      selfCopy5 = self;
      v62 = 2112;
      v63 = stop;
      _os_log_error_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) configuring audio stream failed error=%@", buf, 0x3Au);
    }
  }

  LOBYTE(v31) = 0;
  return v31;
}

- (void)setPowerSpectrumEnabled:(BOOL)enabled
{
  v6 = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__VCAudioStreamSendGroup_setPowerSpectrumEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  enabledCopy = enabled;
  dispatch_sync(stateQueue, block);
}

- (void)setBasebandCongestionDetector:(id)detector
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__VCAudioStreamSendGroup_setBasebandCongestionDetector___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = detector;
  dispatch_sync(stateQueue, block);
}

uint64_t __56__VCAudioStreamSendGroup_setBasebandCongestionDetector___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];

  *(*(a1 + 32) + 752) = *(a1 + 40);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
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

- (void)setVADFilteringEnabled:(BOOL)enabled
{
  v6 = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__VCAudioStreamSendGroup_setVADFilteringEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  enabledCopy = enabled;
  dispatch_sync(stateQueue, block);
}

- (void)updateActiveVoiceOnly:(BOOL)only
{
  onlyCopy = only;
  v38 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = self->super.super._mediaStreamInfoArray;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v35;
    *&v6 = 136316162;
    v19 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(obj);
        }

        stream = [*(*(&v34 + 1) + 8 * i) stream];
        [stream setSendActiveVoiceOnly:onlyCopy];
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v17 = VRTraceErrorLogLevelToCSTR();
            v18 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = v19;
              v22 = v17;
              v23 = 2080;
              v24 = "[VCAudioStreamSendGroup updateActiveVoiceOnly:]";
              v25 = 1024;
              v26 = 294;
              v27 = 1024;
              *v28 = onlyCopy;
              *&v28[4] = 2112;
              *&v28[6] = stream;
              v14 = v18;
              v15 = " [%s] %s:%d Send active voice only set to %d for stream=%@";
              v16 = 44;
              goto LABEL_15;
            }
          }
        }

        else
        {
          v11 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v11 = [(VCAudioStreamSendGroup *)self performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v12 = VRTraceErrorLogLevelToCSTR();
            v13 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316674;
              v22 = v12;
              v23 = 2080;
              v24 = "[VCAudioStreamSendGroup updateActiveVoiceOnly:]";
              v25 = 1024;
              v26 = 294;
              v27 = 2112;
              *v28 = v11;
              *&v28[8] = 2048;
              *&v28[10] = self;
              v29 = 1024;
              v30 = onlyCopy;
              v31 = 2112;
              v32 = stream;
              v14 = v13;
              v15 = " [%s] %s:%d %@(%p) Send active voice only set to %d for stream=%@";
              v16 = 64;
LABEL_15:
              _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, v16);
              continue;
            }
          }
        }
      }

      v7 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v33 count:16];
    }

    while (v7);
  }
}

- (void)dispatchedUpdateStreamsWithActiveConnection:(id)connection
{
  v31 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super.super._stateQueue);
  if (VCConnection_IsEndToEndLink(connection) && self->super._streamGroupMode == 1)
  {
    v5 = [(VCMediaStreamSendGroup *)self dispatchedMediaStreamInfosForEndToEndConnection:1];
    connectionCopy = connection;
    isWifiToWifi = [connection isWifiToWifi];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v27 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v28;
      do
      {
        v10 = 0;
        do
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v27 + 1) + 8 * v10);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          streamConfigs = [v11 streamConfigs];
          v13 = [streamConfigs countByEnumeratingWithState:&v22 objects:v21 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v23;
            do
            {
              v16 = 0;
              do
              {
                if (*v23 != v15)
                {
                  objc_enumerationMutation(streamConfigs);
                }

                [*(*(&v22 + 1) + 8 * v16++) setUseWifiTiers:isWifiToWifi];
              }

              while (v14 != v16);
              v14 = [streamConfigs countByEnumeratingWithState:&v22 objects:v21 count:16];
            }

            while (v14);
          }

          ++v10;
        }

        while (v10 != v8);
        v8 = [v5 countByEnumeratingWithState:&v27 objects:v26 count:16];
      }

      while (v8);
    }

    selfCopy = self;
    v17 = &selfCopy;
    connection = connectionCopy;
  }

  else
  {
    v20.receiver = self;
    v17 = &v20;
  }

  v17->super_class = VCAudioStreamSendGroup;
  [(objc_super *)v17 dispatchedUpdateStreamsWithActiveConnection:connection];
}

- (void)setCurrentDTXEnabled:(BOOL)enabled
{
  v6 = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__VCAudioStreamSendGroup_setCurrentDTXEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  enabledCopy = enabled;
  dispatch_sync(stateQueue, block);
}

uint64_t __47__VCAudioStreamSendGroup_setCurrentDTXEnabled___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 745) = *(a1 + 40);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
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

- (void)updateVoiceActivityEnabled:(BOOL)enabled isMediaPriorityEnabled:(BOOL)priorityEnabled
{
  v8 = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__VCAudioStreamSendGroup_updateVoiceActivityEnabled_isMediaPriorityEnabled___block_invoke;
  block[3] = &unk_1E85F41F8;
  block[4] = self;
  enabledCopy = enabled;
  priorityEnabledCopy = priorityEnabled;
  dispatch_async(stateQueue, block);
}

- (id)willStart
{
  [(VCAudioStreamSendGroup *)self flushAudioEventQueue];
  [(VCAudioStreamSendGroup *)self flushAudioRedundancyEventQueue];
  [(VCAudioStreamGroupCommon *)self->_common startAudioDump];
  self->_averageInputPower = NAN;
  [(VCAudioStreamSendGroup *)self startVoiceActivityDetection];
  if ([(VCMediaStreamGroup *)self streamGroupID]== 1835623282 || [(VCMediaStreamGroup *)self streamGroupID]== 1835623287)
  {
    [(VCAudioStreamSendGroup *)self startDynamicDucker];
  }

  streamGroupMode = self->super._streamGroupMode;

  return [(VCAudioStreamSendGroup *)self setupRedundancyControllerForMode:streamGroupMode];
}

- (void)didStart
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCAudioStreamSendGroup;
  [(VCMediaStreamSendGroup *)&v3 didStart];
  if ([(VCAudioStreamSendGroup *)self operatingMode])
  {
    [(VCAudioStreamSendGroup *)self reportOperatingMode:[(VCAudioStreamSendGroup *)self operatingMode]];
  }
}

- (void)didStop
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCAudioStreamGroupCommon *)self->_common stopAudioDump];
  [(VCAudioStreamSendGroup *)self stopVoiceActivityDetection];
  if ([(VCMediaStreamGroup *)self streamGroupID]== 1835623282 || [(VCMediaStreamGroup *)self streamGroupID]== 1835623287)
  {
    [(VCAudioStreamSendGroup *)self stopDynamicDucker];
  }

  [(VCRedundancyControllerProtocol *)self->super._redundancyController unregisterStatistics];
  v3.receiver = self;
  v3.super_class = VCAudioStreamSendGroup;
  [(VCMediaStreamSendGroup *)&v3 didStop];
}

- (void)setMuted:(BOOL)muted
{
  v6 = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__VCAudioStreamSendGroup_setMuted___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  mutedCopy = muted;
  dispatch_sync(stateQueue, block);
}

uint64_t __35__VCAudioStreamSendGroup_setMuted___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 768) setMuted:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 setMuteOnStreams];
}

- (void)collectAndLogChannelMetrics:(id *)metrics
{
  if ([(VCMediaStreamGroup *)self state]== 1)
  {
    common = self->_common;
    *&v5 = self->_averageInputPower;

    [(VCAudioStreamGroupCommon *)common collectAndLogChannelMetrics:metrics averagePower:v5];
  }
}

- (void)setReportingAgent:(opaqueRTCReporting *)agent
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__VCAudioStreamSendGroup_setReportingAgent___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  block[5] = agent;
  dispatch_sync(stateQueue, block);
}

uint64_t __44__VCAudioStreamSendGroup_setReportingAgent___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = VCAudioStreamSendGroup;
  objc_msgSendSuper2(&v4, sel_setReportingAgent_, v2);
  return [*(*(a1 + 32) + 768) setReportingAgent:*(a1 + 40)];
}

- (void)dispatchedUpdateActiveMediaStreamIDs:(id)ds withTargetBitrate:(unsigned int)bitrate mediaBitrates:(id)bitrates rateChangeCounter:(unsigned int)counter
{
  v6 = *&counter;
  v47 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v30 = v12;
        v31 = 2080;
        v32 = "[VCAudioStreamSendGroup dispatchedUpdateActiveMediaStreamIDs:withTargetBitrate:mediaBitrates:rateChangeCounter:]";
        v33 = 1024;
        v34 = 443;
        v35 = 2080;
        v36 = FourccToCStr([(VCMediaStreamGroup *)self streamGroupID]);
        v37 = 2112;
        selfCopy2 = ds;
        v39 = 2112;
        bitratesCopy = bitrates;
        v41 = 1024;
        LODWORD(dsCopy2) = bitrate;
        v14 = " [%s] %s:%d StreamGroup=%s streamIDs=%@ mediaBitrates=%@ for targetBitrate=%d";
        v15 = v13;
        v16 = 64;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [(VCAudioStreamSendGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136317186;
        v30 = v17;
        v31 = 2080;
        v32 = "[VCAudioStreamSendGroup dispatchedUpdateActiveMediaStreamIDs:withTargetBitrate:mediaBitrates:rateChangeCounter:]";
        v33 = 1024;
        v34 = 443;
        v35 = 2112;
        v36 = v11;
        v37 = 2048;
        selfCopy2 = self;
        v39 = 2080;
        bitratesCopy = FourccToCStr([(VCMediaStreamGroup *)self streamGroupID]);
        v41 = 2112;
        dsCopy2 = ds;
        v43 = 2112;
        bitratesCopy2 = bitrates;
        v45 = 1024;
        bitrateCopy = bitrate;
        v14 = " [%s] %s:%d %@(%p) StreamGroup=%s streamIDs=%@ mediaBitrates=%@ for targetBitrate=%d";
        v15 = v18;
        v16 = 84;
        goto LABEL_11;
      }
    }
  }

  v19 = VCMemoryPool_Alloc(self->_audioStreamUpdatePool);
  *v19 = [ds count];
  v19[18] = [(VCMediaStreamSendGroup *)self v2PayloadsAllowed];
  if ([ds count] >= 1)
  {
    v20 = 0;
    do
    {
      *&v19[2 * v20 + 2] = [objc_msgSend(ds objectAtIndexedSubscript:{v20), "unsignedShortValue"}];
      v21 = -[NSDictionary objectForKeyedSubscript:](self->super.super._streamIDToMediaStreamMap, "objectForKeyedSubscript:", [ds objectAtIndexedSubscript:v20]);
      if (v21 && self->super._streamGroupMode == 1)
      {
        [v21 setTargetBitrate:objc_msgSend(objc_msgSend(bitrates rateChangeCounter:{"objectAtIndexedSubscript:", v20), "unsignedIntValue"), v6}];
      }

      ++v20;
    }

    while (v20 < [ds count]);
  }

  _VCAudioStreamSendGroup_ProcessActiveStreams(self, v19, &__block_literal_global_46);
  v22 = *v19;
  if (self->_lastEnqueuedStreamUpdateEventWasEmpty && v22 == 0)
  {
    goto LABEL_33;
  }

  if (CMSimpleQueueEnqueue(self->_audioStreamUpdateEventQueue, v19))
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioStreamSendGroup dispatchedUpdateActiveMediaStreamIDs:withTargetBitrate:mediaBitrates:rateChangeCounter:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v24 = [(VCAudioStreamSendGroup *)self performSelector:sel_logPrefix];
      }

      else
      {
        v24 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v27 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v26 = *v19;
          *buf = 136316418;
          v30 = v27;
          v31 = 2080;
          v32 = "[VCAudioStreamSendGroup dispatchedUpdateActiveMediaStreamIDs:withTargetBitrate:mediaBitrates:rateChangeCounter:]";
          v33 = 1024;
          v34 = 475;
          v35 = 2112;
          v36 = v24;
          v37 = 2048;
          selfCopy2 = self;
          v39 = 1024;
          LODWORD(bitratesCopy) = v26;
          _os_log_error_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) CMSimpleQueueEnqueue Full! Dropping audio stream update event with %d active streams", buf, 0x36u);
        }
      }
    }

LABEL_33:
    VCMemoryPool_Free(self->_audioStreamUpdatePool, v19);
  }

  self->_lastEnqueuedStreamUpdateEventWasEmpty = v22 == 0;
  v28.receiver = self;
  v28.super_class = VCAudioStreamSendGroup;
  [(VCMediaStreamSendGroup *)&v28 dispatchedUpdateActiveMediaStreamIDs:ds withTargetBitrate:bitrate mediaBitrates:bitrates rateChangeCounter:v6];
}

void __113__VCAudioStreamSendGroup_dispatchedUpdateActiveMediaStreamIDs_withTargetBitrate_mediaBitrates_rateChangeCounter___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int a5)
{
  if (a3)
  {
    LODWORD(v7) = a5;
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v7)
    {
      v7 = v7;
      do
      {
        v10 = *a4++;
        [v9 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", v10)}];
        --v7;
      }

      while (v7);
    }

    [*(a2 + 40) setCompoundStreamIDs:v9];
  }

  if (*(a2 + 9) == 1)
  {
    v11 = *(a2 + 40);

    [v11 setRtcpEnabled:a3];
  }
}

- (id)activeStreamKeys
{
  array = [MEMORY[0x1E695DF70] array];
  audioStreams = [(VCAudioStreamGroupCommon *)self->_common audioStreams];
  if (audioStreams)
  {
    v5 = audioStreams;
    do
    {
      if (v5->var1)
      {
        v6 = [objc_msgSend(objc_msgSend(v5->var7 "defaultStreamConfig")];
        if (v6)
        {
          v7 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v6];
        }

        else
        {
          v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCMediaStreamGroup streamGroupID](self, "streamGroupID")}];
        }

        [array addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@:%@", self->super.super._participantUUID, v7)}];
      }

      v5 = v5->var0;
    }

    while (v5);
  }

  return array;
}

- (BOOL)addSyncDestination:(id)destination
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  stateQueue = self->super.super._stateQueue;
  v10 = 1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__VCAudioStreamSendGroup_addSyncDestination___block_invoke;
  v6[3] = &unk_1E85F4108;
  v6[5] = self;
  v6[6] = &v7;
  v6[4] = destination;
  dispatch_sync(stateQueue, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __45__VCAudioStreamSendGroup_addSyncDestination___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __45__VCAudioStreamSendGroup_addSyncDestination___block_invoke_cold_1(a1);
    return;
  }

  if (objc_opt_class() != *(a1 + 40))
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 40) performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_13;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v12 = *(a1 + 40);
    v13 = FourccToCStr([*(a1 + 32) streamGroupID]);
    v14 = *(*(a1 + 40) + 768);
    *v19 = 136316674;
    *&v19[4] = v10;
    *&v19[12] = 2080;
    *&v19[14] = "[VCAudioStreamSendGroup addSyncDestination:]_block_invoke";
    *&v19[22] = 1024;
    LODWORD(v20) = 506;
    WORD2(v20) = 2112;
    *(&v20 + 6) = v2;
    HIWORD(v20) = 2048;
    v21 = v12;
    *v22 = 2080;
    *&v22[2] = v13;
    *&v22[10] = 2048;
    *&v22[12] = v14;
    v7 = " [%s] %s:%d %@(%p) Adding syncDestination=%s, common=%p";
    v8 = v11;
    v9 = 68;
    goto LABEL_12;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = FourccToCStr([*(a1 + 32) streamGroupID]);
      v6 = *(*(a1 + 40) + 768);
      *v19 = 136316162;
      *&v19[4] = v3;
      *&v19[12] = 2080;
      *&v19[14] = "[VCAudioStreamSendGroup addSyncDestination:]_block_invoke";
      *&v19[22] = 1024;
      LODWORD(v20) = 506;
      WORD2(v20) = 2080;
      *(&v20 + 6) = v5;
      HIWORD(v20) = 2048;
      v21 = v6;
      v7 = " [%s] %s:%d Adding syncDestination=%s, common=%p";
      v8 = v4;
      v9 = 48;
LABEL_12:
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, v19, v9);
    }
  }

LABEL_13:
  *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 40) + 768) addSyncDestination:*(a1 + 32) shouldSchedule:{objc_msgSend(*(a1 + 40), "state", *v19, *&v19[16], v20, v21, *v22, *&v22[16], v23) != 0}];
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    if (*(*(a1 + 40) + 873) == 1 && ([*(a1 + 32) isSourceTimestampInfoAvailable] & 1) == 0)
    {
      pthread_rwlock_rdlock((*(a1 + 40) + 504));
      v15 = *(a1 + 40);
      v16 = *(v15 + 704);
      v17 = *(v15 + 728);
      v18 = *(v15 + 712);
      pthread_rwlock_unlock((v15 + 504));
      VCMediaStreamSendGroup_UpdateSendSampleRTPTimestamp(*(a1 + 32), v16, v17, v18);
    }
  }

  else
  {
    __45__VCAudioStreamSendGroup_addSyncDestination___block_invoke_cold_2();
  }
}

- (BOOL)removeSyncDestination:(id)destination
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  stateQueue = self->super.super._stateQueue;
  v10 = 1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__VCAudioStreamSendGroup_removeSyncDestination___block_invoke;
  v6[3] = &unk_1E85F4108;
  v6[5] = self;
  v6[6] = &v7;
  v6[4] = destination;
  dispatch_sync(stateQueue, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __48__VCAudioStreamSendGroup_removeSyncDestination___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __48__VCAudioStreamSendGroup_removeSyncDestination___block_invoke_cold_1(a1);
    return;
  }

  if (objc_opt_class() == *(a1 + 40))
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_13;
    }

    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v5 = FourccToCStr([*(a1 + 32) streamGroupID]);
    v6 = *(*(a1 + 40) + 768);
    *v15 = 136316162;
    *&v15[4] = v3;
    *&v15[12] = 2080;
    *&v15[14] = "[VCAudioStreamSendGroup removeSyncDestination:]_block_invoke";
    *&v15[22] = 1024;
    LODWORD(v16) = 531;
    WORD2(v16) = 2080;
    *(&v16 + 6) = v5;
    HIWORD(v16) = 2048;
    v17 = v6;
    v7 = " [%s] %s:%d Removing syncDestination=%s, common=%p";
    v8 = v4;
    v9 = 48;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 40) performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_13;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v12 = *(a1 + 40);
    v13 = FourccToCStr([*(a1 + 32) streamGroupID]);
    v14 = *(*(a1 + 40) + 768);
    *v15 = 136316674;
    *&v15[4] = v10;
    *&v15[12] = 2080;
    *&v15[14] = "[VCAudioStreamSendGroup removeSyncDestination:]_block_invoke";
    *&v15[22] = 1024;
    LODWORD(v16) = 531;
    WORD2(v16) = 2112;
    *(&v16 + 6) = v2;
    HIWORD(v16) = 2048;
    v17 = v12;
    *v18 = 2080;
    *&v18[2] = v13;
    *&v18[10] = 2048;
    *&v18[12] = v14;
    v7 = " [%s] %s:%d %@(%p) Removing syncDestination=%s, common=%p";
    v8 = v11;
    v9 = 68;
  }

  _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, v15, v9);
LABEL_13:
  *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 40) + 768) removeSyncDestination:*(a1 + 32) shouldSchedule:{objc_msgSend(*(a1 + 40), "state", *v15, *&v15[16], v16, v17, *v18, *&v18[16], v19) != 0}];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    __48__VCAudioStreamSendGroup_removeSyncDestination___block_invoke_cold_2();
  }
}

- (void)redundancyController:(id)controller redundancyPercentageDidChange:(unsigned int)change
{
  v7 = *MEMORY[0x1E69E9840];
  stateQueue = self->super.super._stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__VCAudioStreamSendGroup_redundancyController_redundancyPercentageDidChange___block_invoke;
  v5[3] = &unk_1E85F3890;
  v5[4] = controller;
  v5[5] = self;
  changeCopy = change;
  dispatch_async(stateQueue, v5);
}

void __77__VCAudioStreamSendGroup_redundancyController_redundancyPercentageDidChange___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  if (*(v3 - 1) == *(v2 + 488))
  {
    v5 = VCMemoryPool_Alloc(*(v2 + 808));
    *v5 = *(a1 + 48);
    if (objc_opt_class() == *(a1 + 40))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a1 + 48);
          v36 = 136315906;
          v37 = v19;
          v38 = 2080;
          v39 = "[VCAudioStreamSendGroup redundancyController:redundancyPercentageDidChange:]_block_invoke";
          v40 = 1024;
          v41 = 563;
          v42 = 1024;
          LODWORD(v43) = v21;
          v22 = " [%s] %s:%d Enqueue new audio redundancyPercentage=%d";
          v23 = v20;
          v24 = 34;
LABEL_23:
          _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, v22, &v36, v24);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [*v3 performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v27 = *(a1 + 40);
          v28 = *(a1 + 48);
          v36 = 136316418;
          v37 = v25;
          v38 = 2080;
          v39 = "[VCAudioStreamSendGroup redundancyController:redundancyPercentageDidChange:]_block_invoke";
          v40 = 1024;
          v41 = 563;
          v42 = 2112;
          v43 = v6;
          v44 = 2048;
          v45 = v27;
          v46 = 1024;
          LODWORD(v47) = v28;
          v22 = " [%s] %s:%d %@(%p) Enqueue new audio redundancyPercentage=%d";
          v23 = v26;
          v24 = 54;
          goto LABEL_23;
        }
      }
    }

    if (CMSimpleQueueEnqueue(*(*v3 + 99), v5))
    {
      if (objc_opt_class() == *v3)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v30 = VRTraceErrorLogLevelToCSTR();
          v31 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            __77__VCAudioStreamSendGroup_redundancyController_redundancyPercentageDidChange___block_invoke_cold_1(v30, v3, v31);
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v29 = [*v3 performSelector:sel_logPrefix];
        }

        else
        {
          v29 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v32 = VRTraceErrorLogLevelToCSTR();
          v33 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v34 = *v3;
            v35 = [objc_msgSend(*(*v3 + 96) "audioIO")];
            v36 = 136316418;
            v37 = v32;
            v38 = 2080;
            v39 = "[VCAudioStreamSendGroup redundancyController:redundancyPercentageDidChange:]_block_invoke";
            v40 = 1024;
            v41 = 566;
            v42 = 2112;
            v43 = v29;
            v44 = 2048;
            v45 = v34;
            v46 = 1024;
            LODWORD(v47) = v35;
            _os_log_error_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) CMSimpleQueueEnqueue Full, audioIO.state=%d", &v36, 0x36u);
          }
        }
      }

      VCMemoryPool_Free(*(*v3 + 101), v5);
    }

    return;
  }

  if (objc_opt_class() == *v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v10 = *(*(a1 + 40) + 488);
        v36 = 136316162;
        v37 = v7;
        v38 = 2080;
        v39 = "[VCAudioStreamSendGroup redundancyController:redundancyPercentageDidChange:]_block_invoke";
        v40 = 1024;
        v41 = 556;
        v42 = 2112;
        v43 = v9;
        v44 = 2112;
        v45 = v10;
        v11 = " [%s] %s:%d Redundancy controller callback for inactive redundancy controller was ignored. Redundancy controller=%@ Current controller=%@";
        v12 = v8;
        v13 = 48;
LABEL_15:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, &v36, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [*v3 performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        v16 = *(a1 + 40);
        v18 = v16[61];
        v36 = 136316674;
        v37 = v14;
        v38 = 2080;
        v39 = "[VCAudioStreamSendGroup redundancyController:redundancyPercentageDidChange:]_block_invoke";
        v40 = 1024;
        v41 = 556;
        v42 = 2112;
        v43 = v4;
        v44 = 2048;
        v45 = v16;
        v46 = 2112;
        v47 = v17;
        v48 = 2112;
        v49 = v18;
        v11 = " [%s] %s:%d %@(%p) Redundancy controller callback for inactive redundancy controller was ignored. Redundancy controller=%@ Current controller=%@";
        v12 = v15;
        v13 = 68;
        goto LABEL_15;
      }
    }
  }
}

- (BOOL)createIOEventQueues
{
  v3 = *MEMORY[0x1E695E480];
  CMSimpleQueueCreate(*MEMORY[0x1E695E480], 10, &self->_audioStreamUpdateEventQueue);
  if (self->_audioStreamUpdateEventQueue)
  {
    Typed = VCMemoryPool_CreateTyped(0x14uLL, 0x1000040090C7DAFLL);
    self->_audioStreamUpdatePool = Typed;
    if (Typed)
    {
      CMSimpleQueueCreate(v3, 10, &self->_audioRedundancyChangeEventQueue);
      if (self->_audioRedundancyChangeEventQueue)
      {
        v5 = VCMemoryPool_CreateTyped(4uLL, 0x100004052888210);
        self->_audioRedundancyEventPool = v5;
        if (v5)
        {
          return 1;
        }

        [VCAudioStreamSendGroup createIOEventQueues];
      }

      else
      {
        [(VCAudioStreamSendGroup *)self createIOEventQueues];
      }
    }

    else
    {
      [VCAudioStreamSendGroup createIOEventQueues];
    }
  }

  else
  {
    [(VCAudioStreamSendGroup *)self createIOEventQueues];
  }

  [(VCAudioStreamSendGroup *)self cleanupIOEventQueues];
  return 0;
}

- (void)cleanupIOEventQueues
{
  VCMemoryPool_Destroy(self->_audioStreamUpdatePool);
  audioStreamUpdateEventQueue = self->_audioStreamUpdateEventQueue;
  if (audioStreamUpdateEventQueue)
  {
    CFRelease(audioStreamUpdateEventQueue);
    self->_audioStreamUpdateEventQueue = 0;
  }

  VCMemoryPool_Destroy(self->_audioRedundancyEventPool);
  audioRedundancyChangeEventQueue = self->_audioRedundancyChangeEventQueue;
  if (audioRedundancyChangeEventQueue)
  {
    CFRelease(audioRedundancyChangeEventQueue);
    self->_audioRedundancyChangeEventQueue = 0;
  }
}

- (void)flushAudioEventQueue
{
  v3 = CMSimpleQueueDequeue(self->_audioStreamUpdateEventQueue);
  if (v3)
  {
    v4 = v3;
    do
    {
      VCMemoryPool_Free(self->_audioStreamUpdatePool, v4);
      v4 = CMSimpleQueueDequeue(self->_audioStreamUpdateEventQueue);
    }

    while (v4);
  }

  self->_lastEnqueuedStreamUpdateEventWasEmpty = 0;
}

- (void)flushAudioRedundancyEventQueue
{
  v3 = CMSimpleQueueDequeue(self->_audioRedundancyChangeEventQueue);
  if (v3)
  {
    v4 = v3;
    do
    {
      VCMemoryPool_Free(self->_audioRedundancyEventPool, v4);
      v4 = CMSimpleQueueDequeue(self->_audioRedundancyChangeEventQueue);
    }

    while (v4);
  }
}

- (void)startVoiceActivityDetection
{
  v3 = VCVoiceDetector_Create(0);
  self->_voiceDetector = v3;
  clientFormat = [(VCAudioIO *)[(VCAudioStreamGroupCommon *)self->_common audioIO] clientFormat];

  VCVoiceDetector_Start(v3, clientFormat);
}

- (void)stopVoiceActivityDetection
{
  VCVoiceDetector_Stop(self->_voiceDetector);

  VCVoiceDetector_Destroy(&self->_voiceDetector);
}

- (void)startDynamicDucker
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)stopDynamicDucker
{
  VCAudioDucker_Stop(self->_audioDucker);

  VCAudioDucker_Destroy(&self->_audioDucker);
}

- (void)setMuteOnStreams
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  mediaStreams = self->super.super._mediaStreams;
  v4 = [(NSArray *)mediaStreams countByEnumeratingWithState:&v9 objects:v8 count:16];
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
          objc_enumerationMutation(mediaStreams);
        }

        [*(*(&v9 + 1) + 8 * i) setMuted:{-[VCAudioStreamGroupCommon isMuted](self->_common, "isMuted")}];
      }

      v5 = [(NSArray *)mediaStreams countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v5);
  }
}

- (id)setupRedundancyControllerForMode:(unsigned int)mode
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->super._sendGroupConfigForMode, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:?]);
  if (!v5)
  {
    v18 = @"Tried to create redundancy controller for mode which VCMediaStreamSendGroupConfig is nil";
LABEL_26:
    [(VCAudioStreamSendGroup *)v18 setupRedundancyControllerForMode:v19];
    return *v19;
  }

  v6 = v5;
  if (![v5 streamGroupRedundancyControlEnabled])
  {
    v8 = 0;
    goto LABEL_19;
  }

  if (![v6 statisticsCollector])
  {
    v18 = @"Need statistics collector to set up redundancy controller";
    goto LABEL_26;
  }

  if ([v6 redundancyController])
  {
    [VCAudioStreamSendGroup setupRedundancyControllerForMode:v6];
    v8 = 0;
    goto LABEL_18;
  }

  v7 = -[VCRedundancyControllerAudio initWithDelegate:statisticsCollector:mode:experimentManager:]([VCRedundancyControllerAudio alloc], "initWithDelegate:statisticsCollector:mode:experimentManager:", self, [v6 statisticsCollector], objc_msgSend(v6, "redundancyMode"), self->super.super._experimentManager);
  if (!v7)
  {
    v18 = @"Failed to create audio redundancy controller";
    goto LABEL_26;
  }

  v8 = v7;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_17;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *v19 = 136316162;
    *&v19[4] = v10;
    *&v19[12] = 2080;
    *&v19[14] = "[VCAudioStreamSendGroup setupRedundancyControllerForMode:]";
    *&v19[22] = 1024;
    LODWORD(v20) = 676;
    WORD2(v20) = 2048;
    *(&v20 + 6) = v8;
    HIWORD(v20) = 1024;
    LODWORD(selfCopy) = mode;
    v12 = " [%s] %s:%d Redundancy controller %p is created for streamGroupMode=%u";
    v13 = v11;
    v14 = 44;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(VCAudioStreamSendGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_17;
    }

    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *v19 = 136316674;
    *&v19[4] = v15;
    *&v19[12] = 2080;
    *&v19[14] = "[VCAudioStreamSendGroup setupRedundancyControllerForMode:]";
    *&v19[22] = 1024;
    LODWORD(v20) = 676;
    WORD2(v20) = 2112;
    *(&v20 + 6) = v9;
    HIWORD(v20) = 2048;
    selfCopy = self;
    LOWORD(v22) = 2048;
    *(&v22 + 2) = v8;
    WORD5(v22) = 1024;
    HIDWORD(v22) = mode;
    v12 = " [%s] %s:%d %@(%p) Redundancy controller %p is created for streamGroupMode=%u";
    v13 = v16;
    v14 = 64;
  }

  _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, v19, v14);
LABEL_17:
  [v6 setRedundancyController:{v8, *v19, *&v19[8], v20, selfCopy, v22}];
LABEL_18:
  -[VCMediaStreamSendGroup setRedundancyController:](self, "setRedundancyController:", [v6 redundancyController]);
LABEL_19:

  return 0;
}

- (id)checkStreamsForAdditionalOptIn:(id)in
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->super._isRemoteOnPeace)
  {
    if ([(NSArray *)self->super.super._mediaStreamInfoArray count])
    {
      v5 = [objc_msgSend(objc_msgSend(-[NSArray objectAtIndexedSubscript:](self->super.super._mediaStreamInfoArray objectAtIndexedSubscript:{0), "streamConfigs"), "objectAtIndexedSubscript:", 0), "multiwayConfig"}];
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v5, "idsStreamID")}];
      if (([in containsObject:v6] & 1) == 0)
      {
        v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:in];
        [v7 addObject:v6];
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v8 = VRTraceErrorLogLevelToCSTR();
          v9 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            isRemoteOnPeace = self->super._isRemoteOnPeace;
            v12 = 136316162;
            v13 = v8;
            v14 = 2080;
            v15 = "[VCAudioStreamSendGroup checkStreamsForAdditionalOptIn:]";
            v16 = 1024;
            v17 = 707;
            v18 = 1024;
            v19 = isRemoteOnPeace;
            v20 = 2112;
            v21 = v6;
            _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remote side is on Peace [%d]. Adding subscription to low Quality audio %@", &v12, 0x2Cu);
          }
        }

        return v7;
      }
    }
  }

  return in;
}

- (void)didReceiveReportPacket:(tagRTCPPACKET *)packet arrivalNTPTime:(tagNTP)time
{
  v55 = *MEMORY[0x1E69E9840];
  if ((*&packet->var0 & 0x1F) != 0)
  {
    v5 = 0;
    v6 = 0;
LABEL_3:
    v32 = v6;
    do
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      selfCopy = self;
      mediaStreams = self->super.super._mediaStreams;
      v9 = [(NSArray *)mediaStreams countByEnumeratingWithState:&v51 objects:v50 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = &packet->var1.var22.var1.var0[24 * v5 + 16];
        v12 = *v52;
LABEL_6:
        v13 = 0;
        while (1)
        {
          if (*v52 != v12)
          {
            objc_enumerationMutation(mediaStreams);
          }

          v14 = *(*(&v51 + 1) + 8 * v13);
          v15 = *v11;
          if (v15 == [v14 localSSRC])
          {
            break;
          }

          if (v10 == ++v13)
          {
            v10 = [(NSArray *)mediaStreams countByEnumeratingWithState:&v51 objects:v50 count:16];
            if (v10)
            {
              goto LABEL_6;
            }

            goto LABEL_12;
          }
        }

        var0 = packet->var1.var0.var0;
        v17 = (100 * v11[4]) >> 8;
        v18 = *(v11 + 2);
        v19 = RTCPComputeRoundTripTimeMiddle32(v11, time.wide);
        v20 = Middle32ToMilliSeconds(v19);
        v36 = 0;
        memset(v37, 0, sizeof(v37));
        *buf = 8;
        v38 = var0;
        *v39 = v17;
        *&v39[4] = v18;
        *&v39[8] = v20;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        [v14 setVCStatistics:buf];
        ++v5;
        v6 = 1;
        self = selfCopy;
        if (v5 < (*&packet->var0 & 0x1Fu))
        {
          goto LABEL_3;
        }

        goto LABEL_17;
      }

LABEL_12:
      ++v5;
      self = selfCopy;
    }

    while (v5 < (*&packet->var0 & 0x1Fu));
    if ((v32 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_17:
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v36 = v23;
          v37[0] = 2080;
          *&v37[1] = "[VCAudioStreamSendGroup didReceiveReportPacket:arrivalNTPTime:]";
          v37[5] = 1024;
          v38 = 736;
          v25 = " [%s] %s:%d RTCP report found!!";
          v26 = v24;
          v27 = 28;
LABEL_33:
          _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v21 = [(VCAudioStreamSendGroup *)self performSelector:sel_logPrefix];
      }

      else
      {
        v21 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v28 = VRTraceErrorLogLevelToCSTR();
        v29 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v36 = v28;
          v37[0] = 2080;
          *&v37[1] = "[VCAudioStreamSendGroup didReceiveReportPacket:arrivalNTPTime:]";
          v37[5] = 1024;
          v38 = 736;
          *v39 = 2112;
          *&v39[2] = v21;
          *&v39[10] = 2048;
          *&v40 = self;
          v25 = " [%s] %s:%d %@(%p) RTCP report found!!";
          v26 = v29;
          v27 = 48;
          goto LABEL_33;
        }
      }
    }
  }

  else
  {
LABEL_20:
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioStreamSendGroup didReceiveReportPacket:arrivalNTPTime:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v22 = [(VCAudioStreamSendGroup *)self performSelector:sel_logPrefix];
      }

      else
      {
        v22 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v30 = VRTraceErrorLogLevelToCSTR();
        v31 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v36 = v30;
          v37[0] = 2080;
          *&v37[1] = "[VCAudioStreamSendGroup didReceiveReportPacket:arrivalNTPTime:]";
          v37[5] = 1024;
          v38 = 734;
          *v39 = 2112;
          *&v39[2] = v22;
          *&v39[10] = 2048;
          *&v40 = self;
          _os_log_error_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) RTCP report not found!!", buf, 0x30u);
        }
      }
    }
  }
}

- (void)didReceiveCustomReportPacket:(tagRTCPPACKET *)packet arrivalNTPTime:(tagNTP)time
{
  selfCopy = self;
  v76 = *MEMORY[0x1E69E9840];
  var2 = packet->var1.var0.var2;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(&packet->var0 + 1);
        var0 = packet->var1.var0.var0;
        *buf = 136316418;
        v57 = v7;
        v58[0] = 2080;
        *&v58[1] = "[VCAudioStreamSendGroup didReceiveCustomReportPacket:arrivalNTPTime:]";
        v58[5] = 1024;
        v59 = 744;
        *v60 = 1024;
        *&v60[2] = v9;
        *&v60[6] = 1024;
        *&v60[8] = var0;
        LOWORD(v61) = 1024;
        *(&v61 + 2) = var2;
        v11 = " [%s] %s:%d Received custom report (%d) from %x with %d reception reports";
        v12 = v8;
        v13 = 46;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCAudioStreamSendGroup *)selfCopy performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(&packet->var0 + 1);
        v17 = packet->var1.var0.var0;
        *buf = 136316930;
        v57 = v14;
        v58[0] = 2080;
        *&v58[1] = "[VCAudioStreamSendGroup didReceiveCustomReportPacket:arrivalNTPTime:]";
        v58[5] = 1024;
        v59 = 744;
        *v60 = 2112;
        *&v60[2] = v6;
        *&v60[10] = 2048;
        *&v61 = selfCopy;
        WORD4(v61) = 1024;
        *(&v61 + 10) = v16;
        HIWORD(v61) = 1024;
        LODWORD(v62) = v17;
        WORD2(v62) = 1024;
        *(&v62 + 6) = var2;
        v11 = " [%s] %s:%d %@(%p) Received custom report (%d) from %x with %d reception reports";
        v12 = v15;
        v13 = 66;
        goto LABEL_11;
      }
    }
  }

  if (var2)
  {
    v18 = 0;
    v19 = 0;
    v53 = selfCopy;
LABEL_14:
    v52 = v19;
    do
    {
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      mediaStreams = selfCopy->super.super._mediaStreams;
      v21 = [(NSArray *)mediaStreams countByEnumeratingWithState:&v72 objects:v71 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v73;
        v24 = &packet->var1.var2.var1.var2[12 * v18 + 7];
        v25 = &packet->var1.var2.var1.var2[12 * v18 + 23];
        v55 = v18;
LABEL_17:
        v26 = 0;
        while (1)
        {
          if (*v73 != v23)
          {
            objc_enumerationMutation(mediaStreams);
          }

          v27 = *(*(&v72 + 1) + 8 * v26);
          v28 = *(&packet->var0 + 1) << 8 == 62720 ? v24 : v25;
          v29 = *v28;
          if (v29 == [*(*(&v72 + 1) + 8 * v26) localSSRC])
          {
            break;
          }

          if (v22 == ++v26)
          {
            v22 = [(NSArray *)mediaStreams countByEnumeratingWithState:&v72 objects:v71 count:16];
            v18 = v55;
            if (v22)
            {
              goto LABEL_17;
            }

            goto LABEL_26;
          }
        }

        v30 = *(v28 + 3);
        v31 = [v27 getRTCPReportNTPTimeMiddle32ForReportId:*(v28 + 2) & 0xF];
        if (v30)
        {
          v32 = v31;
          v33 = 0xFFFF * v30;
          v34 = NTPToMiddle32(time.wide);
          if (v34 - v32 >= v33)
          {
            v35 = v34 - v32 - v33;
          }

          else
          {
            v35 = 0;
          }
        }

        else
        {
          v35 = 0;
        }

        v36 = packet->var1.var0.var0;
        v37 = (3289700 * v28[10]) >> 23;
        v38 = [v27 getExtendedSequenceNumberForSequenceNumber:*(v28 + 4)];
        v39 = Middle32ToMilliSeconds(v35);
        v57 = 0;
        memset(v58, 0, sizeof(v58));
        *buf = 8;
        v59 = v36;
        *v60 = v37;
        *&v60[4] = v38;
        *&v60[8] = v39;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        [v27 setVCStatistics:buf];
        v18 = v55 + 1;
        v19 = 1;
        selfCopy = v53;
        if (v55 + 1 != var2)
        {
          goto LABEL_14;
        }

        goto LABEL_36;
      }

LABEL_26:
      ++v18;
      selfCopy = v53;
    }

    while (v18 != var2);
    if ((v52 & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_36:
    if (objc_opt_class() == selfCopy)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v42 = VRTraceErrorLogLevelToCSTR();
        v43 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v57 = v42;
          v58[0] = 2080;
          *&v58[1] = "[VCAudioStreamSendGroup didReceiveCustomReportPacket:arrivalNTPTime:]";
          v58[5] = 1024;
          v59 = 778;
          v44 = " [%s] %s:%d RTCP report found!!";
          v45 = v43;
          v46 = 28;
LABEL_52:
          _os_log_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEFAULT, v44, buf, v46);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v40 = [(VCAudioStreamSendGroup *)selfCopy performSelector:sel_logPrefix];
      }

      else
      {
        v40 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v47 = VRTraceErrorLogLevelToCSTR();
        v48 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v57 = v47;
          v58[0] = 2080;
          *&v58[1] = "[VCAudioStreamSendGroup didReceiveCustomReportPacket:arrivalNTPTime:]";
          v58[5] = 1024;
          v59 = 778;
          *v60 = 2112;
          *&v60[2] = v40;
          *&v60[10] = 2048;
          *&v61 = selfCopy;
          v44 = " [%s] %s:%d %@(%p) RTCP report found!!";
          v45 = v48;
          v46 = 48;
          goto LABEL_52;
        }
      }
    }
  }

  else
  {
LABEL_39:
    if (objc_opt_class() == selfCopy)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioStreamSendGroup didReceiveCustomReportPacket:arrivalNTPTime:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v41 = [(VCAudioStreamSendGroup *)selfCopy performSelector:sel_logPrefix];
      }

      else
      {
        v41 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v49 = VRTraceErrorLogLevelToCSTR();
        v50 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v57 = v49;
          v58[0] = 2080;
          *&v58[1] = "[VCAudioStreamSendGroup didReceiveCustomReportPacket:arrivalNTPTime:]";
          v58[5] = 1024;
          v59 = 776;
          *v60 = 2112;
          *&v60[2] = v41;
          *&v60[10] = 2048;
          *&v61 = selfCopy;
          _os_log_error_impl(&dword_1DB56E000, v50, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) RTCP report not found!!", buf, 0x30u);
        }
      }
    }
  }
}

void __VCAudioStreamSendGroup_UpdateActiveAudioStreams_block_invoke(uint64_t a1, uint64_t a2, int a3, unsigned __int16 *a4, unsigned int a5)
{
  if (*(a2 + 8) == 1 && (a3 & 1) == 0)
  {
    VCAudioStream_PushRemainingSamples(*(a2 + 40));
  }

  *(a2 + 8) = a3;
  if (a3 && !*(*(a1 + 32) + 480))
  {
    v10 = *(*(a1 + 40) + 18);
    if (*(a2 + 72) != v10)
    {
      v11 = 56;
      if (v10)
      {
        v11 = 64;
      }

      VCAudioStream_SetAllowedCodecConfigurations(*(a2 + 40), *(a2 + v11));
      *(a2 + 72) = v10;
    }

    v12 = *(a2 + 40);
    v13 = a5;
    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a5];
    if (a5)
    {
      do
      {
        v14 = objc_alloc(MEMORY[0x1E696AD98]);
        v15 = *a4++;
        v16 = [v14 initWithUnsignedShort:v15];
        [v17 addObject:v16];

        --v13;
      }

      while (v13);
    }

    [v12 setStreamIDs:v17 repairStreamIDs:0];
  }
}

void __VCAudioStreamSendGroup_UpdateActiveAudioStreams_block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) didChangeSendingStreamsForStreamGroup:*(a1 + 40)];
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void __VCAudioStreamSendGroup_UpdateAudioPriorityUplink_block_invoke(uint64_t a1)
{
  [*(a1 + 32) streamGroup:*(a1 + 40) didChangeMediaPriority:*(a1 + 48)];
  v2 = *(a1 + 32);

  CFRelease(v2);
}

- (void)reportOperatingMode:(int)mode
{
  v3 = *&mode;
  v6[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super.super._stateQueue);
  if ([(VCObject *)self reportingAgent])
  {
    v5 = @"Mode";
    v6[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
    [(VCObject *)self reportingAgent];
    reportingGenericEvent();
  }
}

- (BOOL)configureStreams
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = -[VCAudioStreamGroupCommon configureStreams:withRateControlConfig:](self->_common, "configureStreams:withRateControlConfig:", self->super.super._mediaStreamInfoArray, [objc_msgSend(objc_msgSend(-[NSArray firstObject](self->super.super._mediaStreamInfoArray "firstObject")]);
  if (v3)
  {
    if (!self->_mediaQueue)
    {
      v3 = [objc_msgSend(objc_msgSend(objc_msgSend(-[NSArray firstObject](self->super.super._mediaStreamInfoArray "firstObject")];
      if (v3)
      {
        v3 = CFRetain(v3);
      }

      self->_mediaQueue = v3;
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    mediaStreamInfoArray = self->super.super._mediaStreamInfoArray;
    v12 = OUTLINED_FUNCTION_20_5(v3, v4, v5, v6, v7, v8, v9, v10, v30.receiver, v30.super_class, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, *(&v47 + 1), v48, *(&v48 + 1), v49, *(&v49 + 1), v50, *(&v50 + 1), v51);
    if (v12)
    {
      v13 = v12;
      v14 = *v53;
      do
      {
        v15 = 0;
        do
        {
          if (*v53 != v14)
          {
            objc_enumerationMutation(mediaStreamInfoArray);
          }

          v16 = *(*(&v52 + 1) + 8 * v15);
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          streamConfigs = [v16 streamConfigs];
          v18 = [streamConfigs countByEnumeratingWithState:&v47 objects:&v31 count:16];
          if (v18)
          {
            v26 = v18;
            v27 = *v48;
            do
            {
              v28 = 0;
              do
              {
                if (*v48 != v27)
                {
                  objc_enumerationMutation(streamConfigs);
                }

                [*(*(&v47 + 1) + 8 * v28++) setCellularUniqueTag:self->_cellularUniqueTag];
              }

              while (v26 != v28);
              v18 = [streamConfigs countByEnumeratingWithState:&v47 objects:&v31 count:16];
              v26 = v18;
            }

            while (v18);
          }

          ++v15;
        }

        while (v15 != v13);
        v13 = OUTLINED_FUNCTION_20_5(v18, v19, v20, v21, v22, v23, v24, v25, v30.receiver, v30.super_class, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, *(&v47 + 1), v48, *(&v48 + 1), v49, *(&v49 + 1), v50, *(&v50 + 1), v51);
      }

      while (v13);
    }

    v30.receiver = self;
    v30.super_class = VCAudioStreamSendGroup;
    LOBYTE(v3) = [(VCMediaStreamGroup *)&v30 configureStreams];
  }

  return v3;
}

- (void)configureSyncGroupTimestamp
{
  if (+[VCHardwareSettings deviceClass]== 8)
  {
    [objc_msgSend(-[VCMediaStreamSendGroup streamGroupConfigForMode:](self streamGroupConfigForMode:{self->super._streamGroupMode), "audioStreamGroupConfig"), "preferredIOSampleRate"}];
    pthread_rwlock_wrlock(&self->super._sourceTimestampRWLock);

    pthread_rwlock_unlock(&self->super._sourceTimestampRWLock);
  }
}

- (void)initWithConfig:(void *)a1 .cold.1(void *a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v3, v4, v5, v6, v7, v8);
    }
  }

  *a2 = 0;
}

- (void)initWithConfig:(void *)a1 .cold.2(void *a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v3, v4, v5, v6, v7, v8);
    }
  }

  *a2 = 0;
}

- (void)startCaptureIfNeeded:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __54__VCAudioStreamSendGroup_setDeviceRole_operatingMode___block_invoke_cold_1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_11_9();
  if (v0)
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

  if (objc_opt_respondsToSelector())
  {
    OUTLINED_FUNCTION_21_6();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10_12();
      OUTLINED_FUNCTION_27_7();
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

void __54__VCAudioStreamSendGroup_setDeviceRole_operatingMode___block_invoke_cold_2()
{
  objc_opt_class();
  OUTLINED_FUNCTION_11_9();
  if (v0)
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

  if (objc_opt_respondsToSelector())
  {
    OUTLINED_FUNCTION_21_6();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10_12();
      OUTLINED_FUNCTION_27_7();
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

void __54__VCAudioStreamSendGroup_setDeviceRole_operatingMode___block_invoke_cold_3()
{
  objc_opt_class();
  OUTLINED_FUNCTION_11_9();
  if (v0)
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

  if (objc_opt_respondsToSelector())
  {
    OUTLINED_FUNCTION_21_6();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10_12();
      OUTLINED_FUNCTION_27_7();
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

void __54__VCAudioStreamSendGroup_setDeviceRole_operatingMode___block_invoke_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_11_9();
  if (v0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      v1 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        v7 = 177;
        v2 = " [%s] %s:%d Skipping configuration because device role and operating mode have NOT changed";
        v3 = v1;
        v4 = 28;
LABEL_10:
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, v2, v6, v4);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      OUTLINED_FUNCTION_21_6();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_10_12();
        OUTLINED_FUNCTION_27_7();
        OUTLINED_FUNCTION_2_20();
        v2 = " [%s] %s:%d %@(%p) Skipping configuration because device role and operating mode have NOT changed";
        v3 = v5;
        v4 = 48;
        goto LABEL_10;
      }
    }
  }
}

- (void)configureAudioStreams:deviceRole:operatingMode:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)configureAudioStreams:deviceRole:operatingMode:.cold.2()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)configureAudioStreams:deviceRole:operatingMode:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)configureAudioStreams:deviceRole:operatingMode:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)dispatchedUpdateActiveMediaStreamIDs:withTargetBitrate:mediaBitrates:rateChangeCounter:.cold.1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __45__VCAudioStreamSendGroup_addSyncDestination___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8_3(a1, *MEMORY[0x1E69E9840]);
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }
}

void __45__VCAudioStreamSendGroup_addSyncDestination___block_invoke_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void __48__VCAudioStreamSendGroup_removeSyncDestination___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8_3(a1, *MEMORY[0x1E69E9840]);
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }
}

void __48__VCAudioStreamSendGroup_removeSyncDestination___block_invoke_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void __77__VCAudioStreamSendGroup_redundancyController_redundancyPercentageDidChange___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  [objc_msgSend(*(*a2 + 768) "audioIO")];
  OUTLINED_FUNCTION_11();
  v8 = v4;
  v9 = "[VCAudioStreamSendGroup redundancyController:redundancyPercentageDidChange:]_block_invoke";
  OUTLINED_FUNCTION_4_2();
  v10 = 566;
  v11 = v5;
  v12 = v6;
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d CMSimpleQueueEnqueue Full, audioIO.state=%d", v7, 0x22u);
}

- (void)createIOEventQueues
{
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
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [self performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (uint64_t)setupRedundancyControllerForMode:(void *)a1 .cold.1(void *a1)
{
  v2 = [a1 redundancyController];
  v3 = [a1 statisticsCollector];
  v4 = [a1 redundancyMode];

  return [v2 registerStatistics:v3 redundancyControllerMode:v4];
}

- (uint64_t)setupRedundancyControllerForMode:(uint64_t *)a3 .cold.2(__CFString *a1, void *a2, uint64_t *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a2)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_10;
    }

    VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_7_1();
    *&v15[12] = 2080;
    *&v15[14] = "[VCAudioStreamSendGroup setupRedundancyControllerForMode:]";
    OUTLINED_FUNCTION_4_2();
    OUTLINED_FUNCTION_29();
    v16 = a1;
    v8 = " [%s] %s:%d %@";
    v9 = v7;
    v10 = 38;
LABEL_12:
    _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, v8, v15, v10);
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [a2 performSelector:sel_logPrefix];
  }

  else
  {
    v6 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *v15 = 136316418;
      *&v15[4] = v11;
      *&v15[12] = 2080;
      *&v15[14] = "[VCAudioStreamSendGroup setupRedundancyControllerForMode:]";
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_29();
      v16 = v6;
      v17 = 2048;
      v18 = a2;
      v19 = v14;
      v20 = a1;
      v8 = " [%s] %s:%d %@(%p) %@";
      v9 = v12;
      v10 = 58;
      goto LABEL_12;
    }
  }

LABEL_10:
  result = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailCode:0 description:{a1, *v15, *&v15[16]}];
  *a3 = result;
  return result;
}

- (void)didReceiveReportPacket:arrivalNTPTime:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)didReceiveCustomReportPacket:arrivalNTPTime:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

@end