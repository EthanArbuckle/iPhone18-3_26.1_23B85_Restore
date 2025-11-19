@interface VCMediaStreamGroup
- (BOOL)configureStreams;
- (BOOL)containsStreamWithIDSStreamID:(unsigned __int16)a3;
- (BOOL)containsStreamWithSSRC:(unsigned int)a3;
- (BOOL)handleEncryptionInfoChange:(id)a3;
- (BOOL)isEnabledAtStart;
- (BOOL)setupStreamsWithConfig:(id)a3;
- (BOOL)shouldSetPause:(BOOL)a3 onStream:(id)a4;
- (VCMediaCaptureController)captureController;
- (VCMediaStreamGroup)initWithConfig:(id)a3;
- (double)firstMediaFrameReceivedTime;
- (id)pause;
- (id)pauseMediaStreams;
- (id)resume;
- (id)resumeMediaStreams;
- (id)setPauseOnMediaStreams:(BOOL)a3;
- (id)start;
- (id)startMediaStreams;
- (id)stop;
- (id)stopMediaStreams;
- (tagVCSecurityKeyHolder)securityKeyHolder;
- (void)callDelegateWithBlock:(id)a3;
- (void)configureStreams;
- (void)dealloc;
- (void)finalizePerfTimersForFirstMediaFrameWithTime:(double)a3;
- (void)handleActiveConnectionChange:(id)a3;
- (void)mediaStream:(id)a3 didReceiveFlushRequestWithPayloads:(id)a4;
- (void)mediaStream:(id)a3 didReceiveNewMediaKeyIndex:(id)a4;
- (void)mediaStream:(id)a3 didReceiveRTPGapForMediaKeyIndex:(id)a4;
- (void)mkiCollisionDetectedForMediaStream:(id)a3;
- (void)perfTimerStarted;
- (void)registerMediaStreamNotificationDelegate;
- (void)reportParticipantsPerfTimings;
- (void)resetDecryptionTimeout;
- (void)setEnabledAtStart:(BOOL)a3;
- (void)setFirstMKIToFirstMediaReceivedTimerForMKIReceivedTime;
- (void)setFirstMediaFrameReceivedTime:(double)a3;
- (void)setParticipantJoinedToFirstMKITimer;
- (void)setTotalMediaStallSaveIntervalWithTime:(double)a3;
- (void)setupPerfTimersWithMediaKeyIndex:(id)a3 perfTimerIndexToStart:(int)a4;
- (void)startMediaStreams;
- (void)unregisterMediaStreamNotificationDelegate;
@end

@implementation VCMediaStreamGroup

- (VCMediaStreamGroup)initWithConfig:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = VCMediaStreamGroup;
  v4 = [(VCObject *)&v28 init];
  if (!v4)
  {
    goto LABEL_30;
  }

  if (!a3)
  {
    [VCMediaStreamGroup initWithConfig:];
LABEL_30:

    return 0;
  }

  v4->_streamGroupID = [a3 streamGroupID];
  v4->_participantUUID = [a3 participantUUID];
  -[VCObject setLogPrefix:](v4, "setLogPrefix:", [MEMORY[0x1E696AEC0] stringWithFormat:@"streamGroupID=%s participantUUID=%@ ", FourccToCStr(v4->_streamGroupID), v4->_participantUUID]);
  v5 = [a3 networkFeedbackController];
  v4->_networkFeedbackController = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v4->_experimentManager = [a3 experimentManager];
  if (![a3 delegate])
  {
    [VCMediaStreamGroup initWithConfig:v4];
    goto LABEL_30;
  }

  if (![a3 delegateQueue])
  {
    [VCMediaStreamGroup initWithConfig:v4];
    goto LABEL_30;
  }

  v6 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%s.stateQueue.%s.%u", "com.apple.AVConference.VCMediaStreamGroup", FourccToCStr(v4->_streamGroupID), objc_msgSend(a3, "streamToken")), "UTF8String"];
  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
  v8 = dispatch_queue_create_with_target_V2(v6, 0, CustomRootQueue);
  v4->_stateQueue = v8;
  if (!v8)
  {
    [(VCMediaStreamGroup *)v4 initWithConfig:a3];
    goto LABEL_30;
  }

  v9 = [a3 jbTargetEstimatorSynchronizer];
  v4->_jbTargetEstimatorSynchronizer = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  if (objc_opt_class() == v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        jbTargetEstimatorSynchronizer = v4->_jbTargetEstimatorSynchronizer;
        v14 = FourccToCStr([a3 syncGroupID]);
        *buf = 136316162;
        v30 = v11;
        v31 = 2080;
        v32 = "[VCMediaStreamGroup initWithConfig:]";
        v33 = 1024;
        v34 = 96;
        v35 = 2048;
        v36 = jbTargetEstimatorSynchronizer;
        v37 = 2080;
        v38 = v14;
        v15 = " [%s] %s:%d Create Stream Group with TargetEstimatorSynchronizer=%p syncGroupID=%s";
        v16 = v12;
        v17 = 48;
LABEL_20:
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [(VCMediaStreamGroup *)v4 performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v20 = v4->_jbTargetEstimatorSynchronizer;
        v21 = FourccToCStr([a3 syncGroupID]);
        *buf = 136316674;
        v30 = v18;
        v31 = 2080;
        v32 = "[VCMediaStreamGroup initWithConfig:]";
        v33 = 1024;
        v34 = 96;
        v35 = 2112;
        v36 = v10;
        v37 = 2048;
        v38 = v4;
        v39 = 2048;
        v40 = v20;
        v41 = 2080;
        v42 = v21;
        v15 = " [%s] %s:%d %@(%p) Create Stream Group with TargetEstimatorSynchronizer=%p syncGroupID=%s";
        v16 = v19;
        v17 = 68;
        goto LABEL_20;
      }
    }
  }

  if (![(VCMediaStreamGroup *)v4 setupStreamsWithConfig:a3])
  {
    [(VCMediaStreamGroup *)v4 initWithConfig:a3];
    goto LABEL_30;
  }

  v4->_perfTimers = objc_alloc_init(MEMORY[0x1E6986620]);
  v22 = micro();
  v4->_creationTime = v22;
  VCPerfTimingUtilsSetStartForKeyOnceWithTime(v4->_perfTimers, 20, v22);
  VCPerfTimingUtilsSetStartForKeyOnceWithTime(v4->_perfTimers, 16, v4->_creationTime);
  [(VCMediaStreamGroup *)v4 registerMediaStreamNotificationDelegate];
  v4->_syncGroupID = [a3 syncGroupID];
  v4->_state = 0;
  v4->_streamToken = [a3 streamToken];
  v23 = [a3 delegateQueue];
  v4->_delegateQueue = v23;
  dispatch_retain(v23);
  v4->_mediaType = [a3 mediaType];
  v4->_mediaSubtype = [a3 mediaSubtype];
  v4->_idsParticipantID = [a3 idsParticipantID];
  v4->_sessionUUID = [a3 sessionUUID];
  objc_storeWeak(&v4->_delegate, [a3 delegate]);
  objc_storeWeak(&v4->_captureController, [a3 captureController]);
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCMediaStreamGroup-initialized");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v24 = VRTraceErrorLogLevelToCSTR();
    v25 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v26 = [(VCObject *)v4 logPrefix];
      *buf = 136316162;
      v30 = v24;
      v31 = 2080;
      v32 = "[VCMediaStreamGroup initWithConfig:]";
      v33 = 1024;
      v34 = 120;
      v35 = 2048;
      v36 = v4;
      v37 = 2112;
      v38 = v26;
      _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCMediaStreamGroup-initialized (%p) %@", buf, 0x30u);
    }
  }

  return v4;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  [(VCMediaStreamGroup *)self unregisterMediaStreamNotificationDelegate];
  delegateQueue = self->_delegateQueue;
  if (delegateQueue)
  {
    dispatch_release(delegateQueue);
    self->_delegateQueue = 0;
  }

  stateQueue = self->_stateQueue;
  if (stateQueue)
  {
    dispatch_release(stateQueue);
    self->_stateQueue = 0;
  }

  objc_storeWeak(&self->_captureController, 0);
  objc_storeWeak(&self->_delegate, 0);

  jbTargetEstimatorSynchronizer = self->_jbTargetEstimatorSynchronizer;
  if (jbTargetEstimatorSynchronizer)
  {
    CFRelease(jbTargetEstimatorSynchronizer);
    self->_jbTargetEstimatorSynchronizer = 0;
  }

  v6.receiver = self;
  v6.super_class = VCMediaStreamGroup;
  [(VCObject *)&v6 dealloc];
}

- (BOOL)setupStreamsWithConfig:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];

  self->_mediaStreamInfoArray = [a3 mediaStreamInfoArray];
  self->_mediaStreams = [a3 mediaStreams];
  self->_streamIDToMediaStreamMap = [a3 streamIDToMediaStreamMap];
  self->_groupEntries = [a3 groupEntries];
  self->_hasRepairedStreams = [a3 hasRepairedStreams];
  self->_rtpTimestampRate = [a3 rtpTimestampRate];
  mediaStreamInfoArray = self->_mediaStreamInfoArray;
  v6 = mediaStreamInfoArray && self->_mediaStreams && self->_streamIDToMediaStreamMap && self->_groupEntries != 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(NSArray *)mediaStreamInfoArray countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(mediaStreamInfoArray);
        }

        [objc_msgSend(*(*(&v13 + 1) + 8 * i) "stream")];
      }

      v8 = [(NSArray *)mediaStreamInfoArray countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v8);
  }

  return v6;
}

- (BOOL)configureStreams
{
  v45 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = self->_mediaStreamInfoArray;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v40 count:16];
  v19 = v3;
  if (v3)
  {
    v18 = *v42;
LABEL_3:
    v4 = 0;
    while (1)
    {
      if (*v42 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v41 + 1) + 8 * v4);
      v6 = [v5 stream];
      [v6 setReportingAgent:{-[VCObject reportingAgent](self, "reportingAgent")}];
      [v6 setNetworkFeedbackController:self->_networkFeedbackController];
      v21 = v6;
      [v6 setExperimentManager:self->_experimentManager];
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v20 = v5;
      v7 = [v5 streamConfigs];
      v8 = [v7 countByEnumeratingWithState:&v36 objects:v35 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v37;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v37 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v36 + 1) + 8 * i);
            [v12 setJbTargetEstimatorSynchronizer:self->_jbTargetEstimatorSynchronizer];
            [objc_msgSend(v12 "multiwayConfig")];
          }

          v9 = [v7 countByEnumeratingWithState:&v36 objects:v35 count:16];
        }

        while (v9);
      }

      if (([v21 setStreamConfig:objc_msgSend(v20 withError:{"streamConfigs"), &v22}] & 1) == 0)
      {
        break;
      }

      if (++v4 == v19)
      {
        v19 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v40 count:16];
        if (v19)
        {
          goto LABEL_3;
        }

        LOBYTE(v3) = 1;
        return v3;
      }
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        LODWORD(v3) = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v3)
        {
          return v3;
        }

        [VCMediaStreamGroup configureStreams];
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [(VCMediaStreamGroup *)self performSelector:sel_logPrefix];
      }

      else
      {
        v13 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        LODWORD(v3) = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v3)
        {
          return v3;
        }

        *buf = 136316418;
        v24 = v14;
        v25 = 2080;
        v26 = "[VCMediaStreamGroup configureStreams]";
        v27 = 1024;
        v28 = 200;
        v29 = 2112;
        v30 = v13;
        v31 = 2048;
        v32 = self;
        v33 = 2112;
        v34 = v22;
        _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Error configuring media stream [%@]", buf, 0x3Au);
      }
    }

    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)callDelegateWithBlock:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = MEMORY[0x1E1289F20](&self->_delegate, a2);
    if (v5)
    {
      delegateQueue = self->_delegateQueue;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __44__VCMediaStreamGroup_callDelegateWithBlock___block_invoke;
      v15[3] = &unk_1E85F4D18;
      v15[4] = v5;
      v15[5] = a3;
      dispatch_async(delegateQueue, v15);
      return;
    }

    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCMediaStreamGroup *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 136316162;
      v17 = v14;
      v18 = 2080;
      v19 = "[VCMediaStreamGroup callDelegateWithBlock:]";
      v20 = 1024;
      v21 = 222;
      v22 = 2112;
      v23 = v8;
      v24 = 2048;
      v25 = self;
      v12 = " [%s] %s:%d %@(%p) delegate could not be loaded";
LABEL_25:
      _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x30u);
      return;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaStreamGroup callDelegateWithBlock:v13];
      }
    }
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaStreamGroup callDelegateWithBlock:v9];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCMediaStreamGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v17 = v10;
        v18 = 2080;
        v19 = "[VCMediaStreamGroup callDelegateWithBlock:]";
        v20 = 1024;
        v21 = 212;
        v22 = 2112;
        v23 = v7;
        v24 = 2048;
        v25 = self;
        v12 = " [%s] %s:%d %@(%p) block is nil";
        goto LABEL_25;
      }
    }
  }
}

void __44__VCMediaStreamGroup_callDelegateWithBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  CFRelease(v2);
}

- (BOOL)containsStreamWithIDSStreamID:(unsigned __int16)a3
{
  v3 = a3;
  v26 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  mediaStreamInfoArray = self->_mediaStreamInfoArray;
  v5 = [(NSArray *)mediaStreamInfoArray countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(mediaStreamInfoArray);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = [v9 streamConfigs];
        v11 = [v10 countByEnumeratingWithState:&v17 objects:v16 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v18;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v18 != v13)
              {
                objc_enumerationMutation(v10);
              }

              if ([objc_msgSend(*(*(&v17 + 1) + 8 * j) "multiwayConfig")] == v3)
              {
                LOBYTE(v5) = 1;
                return v5;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v17 objects:v16 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }
      }

      v6 = [(NSArray *)mediaStreamInfoArray countByEnumeratingWithState:&v22 objects:v21 count:16];
      LOBYTE(v5) = 0;
    }

    while (v6);
  }

  return v5;
}

- (void)setParticipantJoinedToFirstMKITimer
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

- (void)setFirstMKIToFirstMediaReceivedTimerForMKIReceivedTime
{
  [(TimingCollection *)self->_perfTimers setStartTime:17 forKey:self->_firstMediaKeyIndexTime];
  perfTimers = self->_perfTimers;
  firstMediaPacketTime = self->_firstMediaPacketTime;

  [(TimingCollection *)perfTimers setStopTime:17 forKey:firstMediaPacketTime];
}

- (void)setTotalMediaStallSaveIntervalWithTime:(double)a3
{
  firstMediaKeyIndexTime = self->_firstMediaKeyIndexTime;
  if (self->_firstMediaFrameGapDetected || firstMediaKeyIndexTime <= self->_firstMediaPacketTime)
  {
    a3 = self->_firstMediaKeyIndexTime;
  }

  [(TimingCollection *)self->_perfTimers setStartTime:18 forKey:firstMediaKeyIndexTime];
  perfTimers = self->_perfTimers;

  [(TimingCollection *)perfTimers setStopTime:18 forKey:a3];
}

- (void)setupPerfTimersWithMediaKeyIndex:(id)a3 perfTimerIndexToStart:(int)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = micro();
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__VCMediaStreamGroup_setupPerfTimersWithMediaKeyIndex_perfTimerIndexToStart___block_invoke;
  block[3] = &unk_1E85F7018;
  *&block[6] = v7;
  block[4] = self;
  block[5] = a3;
  v10 = a4;
  dispatch_async(stateQueue, block);
}

uint64_t __77__VCMediaStreamGroup_setupPerfTimersWithMediaKeyIndex_perfTimerIndexToStart___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 280))
  {
    *(v2 + 256) = *(a1 + 48);
    *(*(a1 + 32) + 280) = [*(a1 + 40) copy];
    v2 = *(a1 + 32);
  }

  [*(v2 + 240) setStartTime:*(a1 + 56) forKey:*(a1 + 48)];
  result = [*(*(a1 + 32) + 240) setStopTime:21 forKey:*(a1 + 48)];
  v4 = *(a1 + 32);
  if ((*(v4 + 432) & 1) == 0)
  {
    result = [*(v4 + 240) setStartTime:22 forKey:*(a1 + 48)];
    *(*(a1 + 32) + 432) = 1;
  }

  return result;
}

- (void)finalizePerfTimersForFirstMediaFrameWithTime:(double)a3
{
  dispatch_assert_queue_V2(self->_stateQueue);
  [(VCMediaStreamGroup *)self setParticipantJoinedToFirstMKITimer];
  [(VCMediaStreamGroup *)self setFirstMKIToFirstMediaReceivedTimerForMKIReceivedTime];
  [(VCMediaStreamGroup *)self setTotalMediaStallSaveIntervalWithTime:a3];
  perfTimers = self->_perfTimers;

  [(TimingCollection *)perfTimers setStopTime:22 forKey:a3];
}

- (void)setFirstMediaFrameReceivedTime:(double)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__VCMediaStreamGroup_setFirstMediaFrameReceivedTime___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  *&block[5] = a3;
  dispatch_async(stateQueue, block);
}

double __53__VCMediaStreamGroup_setFirstMediaFrameReceivedTime___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 424) = result;
  return result;
}

- (double)firstMediaFrameReceivedTime
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__VCMediaStreamGroup_firstMediaFrameReceivedTime__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(stateQueue, block);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __49__VCMediaStreamGroup_firstMediaFrameReceivedTime__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 424);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setEnabledAtStart:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__VCMediaStreamGroup_setEnabledAtStart___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(stateQueue, block);
}

uint64_t __40__VCMediaStreamGroup_setEnabledAtStart___block_invoke(uint64_t result)
{
  *(*(result + 32) + 416) = *(result + 40);
  v1 = *(result + 32);
  if ((*(v1 + 416) & 1) == 0)
  {
    return [*(v1 + 240) removeTimingForKey:20];
  }

  return result;
}

- (BOOL)isEnabledAtStart
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__VCMediaStreamGroup_isEnabledAtStart__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(stateQueue, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (VCMediaCaptureController)captureController
{
  result = objc_loadWeak(&self->_captureController);
  if (!result)
  {
    return self;
  }

  return result;
}

- (tagVCSecurityKeyHolder)securityKeyHolder
{
  dispatch_assert_queue_V2(self->_stateQueue);
  v3 = [objc_msgSend(-[NSArray firstObject](self->_mediaStreamInfoArray "firstObject")];

  return [v3 securityKeyHolder];
}

- (id)startMediaStreams
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_state)
  {
    [(VCMediaStreamGroup *)self startMediaStreams];
    return *buf;
  }

  else
  {
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCMediaStreamGroup-startMediaStreams");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = [(VCObject *)self logPrefix];
        groupEntries = self->_groupEntries;
        *buf = 136316418;
        *&buf[4] = v3;
        v21 = 2080;
        v22 = "[VCMediaStreamGroup startMediaStreams]";
        v23 = 1024;
        v24 = 357;
        v25 = 2048;
        v26 = self;
        v27 = 2112;
        v28 = v5;
        v29 = 2112;
        v30 = groupEntries;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCMediaStreamGroup-startMediaStreams (%p) %@ Starting group. groupEntries=%@", buf, 0x3Au);
      }
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [(NSDictionary *)self->_groupEntries allValues];
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v16 + 1) + 8 * v11) start];
          if (v12)
          {
            v13 = v12;
            self->_state = 1;
            [(VCMediaStreamGroup *)self stopMediaStreams];
            return v13;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v15 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
    self->_state = 1;
  }

  return v13;
}

- (id)stopMediaStreams
{
  v49 = *MEMORY[0x1E69E9840];
  state = self->_state;
  v4 = objc_opt_class();
  if (!state)
  {
    if (v4 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        return 0;
      }

      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      *buf = 136315650;
      v38 = v25;
      v39 = 2080;
      v40 = "[VCMediaStreamGroup stopMediaStreams]";
      v41 = 1024;
      v42 = 374;
      v27 = " [%s] %s:%d Stopping stream group that is already stopped";
      v28 = v26;
      v29 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v24 = [(VCMediaStreamGroup *)self performSelector:sel_logPrefix];
      }

      else
      {
        v24 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        return 0;
      }

      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      *buf = 136316162;
      v38 = v30;
      v39 = 2080;
      v40 = "[VCMediaStreamGroup stopMediaStreams]";
      v41 = 1024;
      v42 = 374;
      v43 = 2112;
      v44 = v24;
      v45 = 2048;
      v46 = self;
      v27 = " [%s] %s:%d %@(%p) Stopping stream group that is already stopped";
      v28 = v31;
      v29 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
    return 0;
  }

  if (v4 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_13;
    }

    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    groupEntries = self->_groupEntries;
    *buf = 136315906;
    v38 = v6;
    v39 = 2080;
    v40 = "[VCMediaStreamGroup stopMediaStreams]";
    v41 = 1024;
    v42 = 375;
    v43 = 2112;
    v44 = groupEntries;
    v9 = " [%s] %s:%d Stopping group. groupEntries=%@";
    v10 = v7;
    v11 = 38;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCMediaStreamGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_13;
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v14 = self->_groupEntries;
    *buf = 136316418;
    v38 = v12;
    v39 = 2080;
    v40 = "[VCMediaStreamGroup stopMediaStreams]";
    v41 = 1024;
    v42 = 375;
    v43 = 2112;
    v44 = v5;
    v45 = 2048;
    v46 = self;
    v47 = 2112;
    v48 = v14;
    v9 = " [%s] %s:%d %@(%p) Stopping group. groupEntries=%@";
    v10 = v13;
    v11 = 58;
  }

  _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_13:
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = [(NSDictionary *)self->_groupEntries allValues];
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v34;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v33 + 1) + 8 * i);
        if ([v21 state])
        {
          v22 = [v21 stop];
          if (v22)
          {
            v18 = v22;
          }
        }
      }

      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v33 objects:v32 count:16];
    }

    while (v17);
  }

  else
  {
    v18 = 0;
  }

  self->_state = 0;
  return v18;
}

- (BOOL)shouldSetPause:(BOOL)a3 onStream:(id)a4
{
  v4 = a3;
  v5 = [a4 state];
  if (v4)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  return v5 != v6;
}

- (id)setPauseOnMediaStreams:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(NSDictionary *)self->_groupEntries allValues];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([(VCMediaStreamGroup *)self shouldSetPause:v3 onStream:v10])
        {
          v11 = [v10 setPause:v3];
          if (v11)
          {
            v12 = v11;
            [(VCMediaStreamGroup *)self stopCapture];
            [(VCMediaStreamGroup *)self stopMediaStreams];
            return v12;
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v14 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

- (void)perfTimerStarted
{
  dispatch_assert_queue_V2(self->_stateQueue);
  v3 = micro();
  self->_ignoreMKINotifications = 0;
  if ([(TimingCollection *)self->_perfTimers hasKey:20])
  {
    [(TimingCollection *)self->_perfTimers setStopTime:20 forKey:v3];
  }

  perfTimers = self->_perfTimers;

  [(TimingCollection *)perfTimers setStartTime:21 forKey:v3];
}

- (id)start
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__36;
  v15 = __Block_byref_object_dispose__36;
  v16 = 0;
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ StreamGroup-Start");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(VCObject *)self logPrefix];
      streamToken = self->_streamToken;
      *buf = 136316418;
      v18 = v3;
      v19 = 2080;
      v20 = "[VCMediaStreamGroup start]";
      v21 = 1024;
      v22 = 467;
      v23 = 2048;
      v24 = self;
      v25 = 2112;
      v26 = v5;
      v27 = 1024;
      v28 = streamToken;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ StreamGroup-Start (%p) %@ streamToken=%u", buf, 0x36u);
    }
  }

  stateQueue = self->_stateQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __27__VCMediaStreamGroup_start__block_invoke;
  v10[3] = &unk_1E85F3868;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(stateQueue, v10);
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (id)stop
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__36;
  v15 = __Block_byref_object_dispose__36;
  v16 = 0;
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ StreamGroup-Stop");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(VCObject *)self logPrefix];
      streamToken = self->_streamToken;
      *buf = 136316418;
      v18 = v3;
      v19 = 2080;
      v20 = "[VCMediaStreamGroup stop]";
      v21 = 1024;
      v22 = 508;
      v23 = 2048;
      v24 = self;
      v25 = 2112;
      v26 = v5;
      v27 = 1024;
      v28 = streamToken;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ StreamGroup-Stop (%p) %@ streamToken=%u", buf, 0x36u);
    }
  }

  stateQueue = self->_stateQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __26__VCMediaStreamGroup_stop__block_invoke;
  v10[3] = &unk_1E85F3868;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(stateQueue, v10);
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t __26__VCMediaStreamGroup_stop__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[79])
  {
    [v2 willStop];
    v3 = [*(a1 + 32) stopCapture];
    v4 = [*(a1 + 32) stopMediaStreams];
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }

    *(*(*(a1 + 40) + 8) + 40) = v5;
    v6 = *(a1 + 32);

    return [v6 didStop];
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid state=%d", 0];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@. Failed already stopped streamToken=%u", objc_msgSend(*(a1 + 32), "logPrefix"), *(*(a1 + 32) + 360)];
    result = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32026 detailedCode:*(*(a1 + 32) + 316) filePath:objc_msgSend(MEMORY[0x1E696AEC0] description:"stringWithFormat:" reason:{@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStreamGroup.m", 515), v9, v8}];
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (id)pause
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__36;
  v15 = __Block_byref_object_dispose__36;
  v16 = 0;
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ StreamGroup-Pause");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(VCObject *)self logPrefix];
      streamToken = self->_streamToken;
      *buf = 136316418;
      v18 = v3;
      v19 = 2080;
      v20 = "[VCMediaStreamGroup pause]";
      v21 = 1024;
      v22 = 529;
      v23 = 2048;
      v24 = self;
      v25 = 2112;
      v26 = v5;
      v27 = 1024;
      v28 = streamToken;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ StreamGroup-Pause (%p) %@ streamToken=%u", buf, 0x36u);
    }
  }

  stateQueue = self->_stateQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __27__VCMediaStreamGroup_pause__block_invoke;
  v10[3] = &unk_1E85F40B8;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(stateQueue, v10);
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t __27__VCMediaStreamGroup_pause__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) pauseMediaStreams];
  *(*(*(a1 + 40) + 8) + 40) = result;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v3 = *(a1 + 32);

    return [v3 didPause:1];
  }

  return result;
}

- (id)resume
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__36;
  v15 = __Block_byref_object_dispose__36;
  v16 = 0;
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ StreamGroup-Resume");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(VCObject *)self logPrefix];
      streamToken = self->_streamToken;
      *buf = 136316418;
      v18 = v3;
      v19 = 2080;
      v20 = "[VCMediaStreamGroup resume]";
      v21 = 1024;
      v22 = 542;
      v23 = 2048;
      v24 = self;
      v25 = 2112;
      v26 = v5;
      v27 = 1024;
      v28 = streamToken;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ StreamGroup-Resume (%p) %@ streamToken=%u", buf, 0x36u);
    }
  }

  stateQueue = self->_stateQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __28__VCMediaStreamGroup_resume__block_invoke;
  v10[3] = &unk_1E85F40B8;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(stateQueue, v10);
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t __28__VCMediaStreamGroup_resume__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) resumeMediaStreams];
  *(*(*(a1 + 40) + 8) + 40) = result;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v3 = *(a1 + 32);

    return [v3 didPause:0];
  }

  return result;
}

- (void)handleActiveConnectionChange:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSDictionary *)self->_groupEntries allValues];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) handleActiveConnectionChange:a3];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }
}

- (BOOL)containsStreamWithSSRC:(unsigned int)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  mediaStreamInfoArray = self->_mediaStreamInfoArray;
  v5 = [(NSArray *)mediaStreamInfoArray countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(mediaStreamInfoArray);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [v9 streamConfigs];
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v17 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v18 + 1) + 8 * j);
              if ([objc_msgSend(v15 "multiwayConfig")] == a3 && !objc_msgSend(objc_msgSend(v15, "multiwayConfig"), "isOneToOne"))
              {
                LOBYTE(v5) = 1;
                return v5;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v18 objects:v17 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }
      }

      v6 = [(NSArray *)mediaStreamInfoArray countByEnumeratingWithState:&v23 objects:v22 count:16];
      LOBYTE(v5) = 0;
    }

    while (v6);
  }

  return v5;
}

- (void)reportParticipantsPerfTimings
{
  v9[3] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  if (self->_haveReportedPerfTimers)
  {
    [(TimingCollection *)self->_perfTimers removeTimingForKey:5];
    [(TimingCollection *)self->_perfTimers removeTimingForKey:6];
    [(TimingCollection *)self->_perfTimers removeTimingForKey:17];
    [(TimingCollection *)self->_perfTimers removeTimingForKey:18];
    [(TimingCollection *)self->_perfTimers removeTimingForKey:19];
  }

  else
  {
    self->_haveReportedPerfTimers = 1;
  }

  [(VCMediaStreamGroup *)self streamGroupID];
  v8[0] = @"VCMSStreamGroup";
  v9[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:reportingStreamGroupFromStreamGroupID()];
  v8[1] = @"VCSPIDSID";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_idsParticipantID];
  v8[2] = @"VCSPUUID";
  participantUUID = self->_participantUUID;
  if (!participantUUID)
  {
    participantUUID = @"Unknown";
  }

  v9[1] = v3;
  v9[2] = participantUUID;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
  perfTimers = self->_perfTimers;
  v6 = [(VCObject *)self reportingAgent];
  VCPerfTimingUtilsReport(perfTimers, v6, v7);
}

- (BOOL)handleEncryptionInfoChange:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mediaStreams = self->_mediaStreams;
  v6 = [(NSArray *)mediaStreams countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(mediaStreams);
        }

        [*(*(&v12 + 1) + 8 * i) handleEncryptionInfoChange:a3];
      }

      v7 = [(NSArray *)mediaStreams countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v7);
  }

  self->_encryptionInfoReceived = 1;
  return 1;
}

- (void)resetDecryptionTimeout
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  mediaStreams = self->_mediaStreams;
  v3 = [(NSArray *)mediaStreams countByEnumeratingWithState:&v8 objects:v7 count:16];
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
          objc_enumerationMutation(mediaStreams);
        }

        [*(*(&v8 + 1) + 8 * i) resetDecryptionTimeout];
      }

      v4 = [(NSArray *)mediaStreams countByEnumeratingWithState:&v8 objects:v7 count:16];
    }

    while (v4);
  }
}

- (void)registerMediaStreamNotificationDelegate
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  mediaStreams = self->_mediaStreams;
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

        [*(*(&v9 + 1) + 8 * i) setNotificationDelegate:self];
      }

      v5 = [(NSArray *)mediaStreams countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v5);
  }
}

- (void)unregisterMediaStreamNotificationDelegate
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  mediaStreams = self->_mediaStreams;
  v3 = [(NSArray *)mediaStreams countByEnumeratingWithState:&v8 objects:v7 count:16];
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
          objc_enumerationMutation(mediaStreams);
        }

        [*(*(&v8 + 1) + 8 * i) setNotificationDelegate:0];
      }

      v4 = [(NSArray *)mediaStreams countByEnumeratingWithState:&v8 objects:v7 count:16];
    }

    while (v4);
  }
}

- (void)mediaStream:(id)a3 didReceiveNewMediaKeyIndex:(id)a4
{
  v5[7] = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__VCMediaStreamGroup_mediaStream_didReceiveNewMediaKeyIndex___block_invoke;
  v5[3] = &unk_1E85F3E30;
  v5[4] = self;
  v5[5] = a4;
  v5[6] = a3;
  dispatch_async(stateQueue, v5);
}

- (void)mediaStream:(id)a3 didReceiveRTPGapForMediaKeyIndex:(id)a4
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__VCMediaStreamGroup_mediaStream_didReceiveRTPGapForMediaKeyIndex___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_async(stateQueue, block);
}

void __67__VCMediaStreamGroup_mediaStream_didReceiveRTPGapForMediaKeyIndex___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 272) = 1;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = 136315906;
      v6 = v2;
      v7 = 2080;
      v8 = "[VCMediaStreamGroup mediaStream:didReceiveRTPGapForMediaKeyIndex:]_block_invoke";
      v9 = 1024;
      v10 = 670;
      v11 = 2048;
      v12 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTP sequence number gap detected for stream=%p", &v5, 0x26u);
    }
  }
}

- (void)mediaStream:(id)a3 didReceiveFlushRequestWithPayloads:(id)a4
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __69__VCMediaStreamGroup_mediaStream_didReceiveFlushRequestWithPayloads___block_invoke;
    v6[3] = &unk_1E85F96A0;
    v6[4] = self;
    v6[5] = a4;
    [(VCMediaStreamGroup *)self callDelegateWithBlock:v6];
  }
}

- (void)mkiCollisionDetectedForMediaStream:(id)a3
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__VCMediaStreamGroup_mkiCollisionDetectedForMediaStream___block_invoke;
  v3[3] = &unk_1E85F41D0;
  v3[4] = self;
  [(VCMediaStreamGroup *)self callDelegateWithBlock:v3];
}

- (id)pauseMediaStreams
{
  state = self->_state;
  v5 = objc_opt_class();
  if (state == 1)
  {
    if (v5 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_18;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_32_5();
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_3_39();
      OUTLINED_FUNCTION_24_11();
      v10 = 38;
    }

    else
    {
      if (OUTLINED_FUNCTION_28_0())
      {
        OUTLINED_FUNCTION_6_1();
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_18;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_6_41();
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_1_34();
      OUTLINED_FUNCTION_25_10();
      v10 = 58;
    }

    _os_log_impl(v6, v7, OS_LOG_TYPE_DEFAULT, v8, v9, v10);
LABEL_18:
    result = [(VCMediaStreamGroup *)self setPauseOnMediaStreams:1];
    if (!result)
    {
      self->_state = 2;
    }

    return result;
  }

  if (v5 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_22;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_32_5();
    OUTLINED_FUNCTION_31_8();
    OUTLINED_FUNCTION_3_39();
    OUTLINED_FUNCTION_24_11();
    OUTLINED_FUNCTION_5_12();
  }

  else
  {
    if (OUTLINED_FUNCTION_28_0())
    {
      OUTLINED_FUNCTION_6_1();
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_22;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_6_41();
    OUTLINED_FUNCTION_31_8();
    OUTLINED_FUNCTION_1_34();
    OUTLINED_FUNCTION_25_10();
    v13 = OS_LOG_TYPE_ERROR;
    v16 = 58;
  }

  _os_log_error_impl(v11, v12, v13, v14, v15, v16);
LABEL_22:
  if (self->_state == 2)
  {
    return 0;
  }

  [OUTLINED_FUNCTION_17_16() stringWithFormat:@"Invalid state=%d"];
  [*(v2 + 3776) stringWithFormat:@"%@. Failed to pause streamToken=%u", -[VCObject logPrefix](self, "logPrefix"), self->_streamToken];
  [*(v2 + 3776) stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStreamGroup.m", 420];
  return [OUTLINED_FUNCTION_15_15() AVConferenceServiceError:? detailedCode:? filePath:? description:? reason:?];
}

- (id)resumeMediaStreams
{
  state = self->_state;
  v5 = objc_opt_class();
  if (state == 2)
  {
    if (v5 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_18;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_32_5();
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_3_39();
      OUTLINED_FUNCTION_24_11();
      v10 = 38;
    }

    else
    {
      if (OUTLINED_FUNCTION_28_0())
      {
        OUTLINED_FUNCTION_6_1();
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_18;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_6_41();
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_1_34();
      OUTLINED_FUNCTION_25_10();
      v10 = 58;
    }

    _os_log_impl(v6, v7, OS_LOG_TYPE_DEFAULT, v8, v9, v10);
LABEL_18:
    result = [(VCMediaStreamGroup *)self setPauseOnMediaStreams:0];
    if (!result)
    {
      self->_state = 1;
    }

    return result;
  }

  if (v5 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_22;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_32_5();
    OUTLINED_FUNCTION_31_8();
    OUTLINED_FUNCTION_3_39();
    OUTLINED_FUNCTION_24_11();
    OUTLINED_FUNCTION_5_12();
  }

  else
  {
    if (OUTLINED_FUNCTION_28_0())
    {
      OUTLINED_FUNCTION_6_1();
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_22;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_6_41();
    OUTLINED_FUNCTION_31_8();
    OUTLINED_FUNCTION_1_34();
    OUTLINED_FUNCTION_25_10();
    v13 = OS_LOG_TYPE_ERROR;
    v16 = 58;
  }

  _os_log_error_impl(v11, v12, v13, v14, v15, v16);
LABEL_22:
  if (self->_state == 1)
  {
    return 0;
  }

  [OUTLINED_FUNCTION_17_16() stringWithFormat:@"Invalid state=%d"];
  [*(v2 + 3776) stringWithFormat:@"%@. Failed to resume streamToken=%u", -[VCObject logPrefix](self, "logPrefix"), self->_streamToken];
  [*(v2 + 3776) stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStreamGroup.m", 440];
  return [OUTLINED_FUNCTION_15_15() AVConferenceServiceError:? detailedCode:? filePath:? description:? reason:?];
}

uint64_t __27__VCMediaStreamGroup_start__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (v3[79])
  {
    [OUTLINED_FUNCTION_17_16() stringWithFormat:@"Invalid state=%d"];
    [*(v1 + 3776) stringWithFormat:@"%@. Failed already running streamToken=%u", objc_msgSend(*(a1 + 32), "logPrefix"), *(*(a1 + 32) + 360)];
    [*(v1 + 3776) stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStreamGroup.m", 473];
    result = [OUTLINED_FUNCTION_15_15() AVConferenceServiceError:? detailedCode:? filePath:? description:? reason:?];
    *(*(*(a1 + 40) + 8) + 40) = result;
    return result;
  }

  result = OUTLINED_FUNCTION_4_36([v3 willStart]);
  if (!v5)
  {
    [*(a1 + 32) perfTimerStarted];
    OUTLINED_FUNCTION_4_36([*(a1 + 32) startMediaStreams]);
    if (v6)
    {
LABEL_11:
      v9 = *(a1 + 32);

      return [v9 didStop];
    }

    v7 = *(a1 + 32);
    if ((v7[288] & 1) == 0)
    {
      OUTLINED_FUNCTION_4_36([v7 startCapture]);
      if (v8)
      {
LABEL_10:
        [*(a1 + 32) stopMediaStreams];
        goto LABEL_11;
      }

      v7 = *(a1 + 32);
    }

    result = [v7 didStart];
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      return result;
    }

    goto LABEL_10;
  }

  return result;
}

void __61__VCMediaStreamGroup_mediaStream_didReceiveNewMediaKeyIndex___block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if ((VCSecurityKeyHolder_CopyKeyMaterialForKeyIndex([*(a1 + 32) securityKeyHolder], *(a1 + 40), v3) & 0x80000000) == 0)
  {
    v2 = [v3[0] firstObject];
    if (v2)
    {
      [*(a1 + 48) handleEncryptionInfoChange:v2];
      [*(a1 + 48) resetDecryptionTimeout];
    }
  }
}

- (void)initWithConfig:(void *)a1 .cold.1(void *a1, void *a2)
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

    [a2 streamToken];
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_4_2();
    OUTLINED_FUNCTION_2();
    v9 = 34;
LABEL_11:
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    return;
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
      [a2 streamToken];
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_14_22();
      OUTLINED_FUNCTION_5_5();
      goto LABEL_11;
    }
  }
}

- (void)initWithConfig:(void *)a1 .cold.2(void *a1, void *a2)
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

    [a2 streamToken];
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_4_2();
    OUTLINED_FUNCTION_2();
    v9 = 34;
LABEL_11:
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    return;
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
      [a2 streamToken];
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_14_22();
      OUTLINED_FUNCTION_5_5();
      goto LABEL_11;
    }
  }
}

- (void)initWithConfig:(uint64_t)a1 .cold.3(uint64_t a1)
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
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithConfig:(uint64_t)a1 .cold.4(uint64_t a1)
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
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithConfig:.cold.5()
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

- (void)configureStreams
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_5_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)callDelegateWithBlock:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 222;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d delegate could not be loaded", &v2, 0x1Cu);
}

- (void)callDelegateWithBlock:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 212;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d block is nil", &v2, 0x1Cu);
}

- (void)startMediaStreams
{
  v16 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        v11 = 356;
        v6 = " [%s] %s:%d Starting stream group that isn't stopped";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v10, v8);
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

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_0();
        v11 = 356;
        v12 = 2112;
        v13 = v4;
        v14 = 2048;
        v15 = a1;
        v6 = " [%s] %s:%d %@(%p) Starting stream group that isn't stopped";
        v7 = v9;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  *a2 = 0;
}

@end