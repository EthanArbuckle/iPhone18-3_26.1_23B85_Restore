@interface VCCellularAudioTap
+ (BOOL)validateAsynchronousActionContext:(const tagVCAsynchronousActionContext *)a3 withError:(id *)a4;
+ (const)cStringFromTapType:(unsigned int)a3;
+ (id)stringFromTapType:(unsigned int)a3;
+ (unsigned)audioIOTypeFromTapType:(unsigned int)a3;
- (BOOL)actionDidFinishForContext:(const tagVCAsynchronousActionContext *)a3 withError:(id *)a4;
- (BOOL)actionWillBeginForContext:(const tagVCAsynchronousActionContext *)a3 withError:(id *)a4;
- (BOOL)addAudioTapForStreamToken:(int64_t)a3 tapType:(unsigned int)a4 enableAsyncTapStart:(BOOL)a5 error:(id *)a6;
- (BOOL)removeAudioTapForStreamToken:(int64_t)a3 error:(id *)a4;
- (BOOL)setUpAudioMachineLearningCoordinator;
- (BOOL)setUpCallRecordingComponents;
- (BOOL)setUpDelegateQueue:(id)a3;
- (BOOL)setUpMediaRecorder;
- (BOOL)setUpReportingAgent;
- (VCCellularAudioTap)initWithProcessId:(int)a3 delegate:(id)a4 delegateQueue:(id)a5;
- (__CFDictionary)clientSpecificUserInfo;
- (id)initializeAudioTapIOForStreamToken:(int64_t)a3 enableAsyncTapStart:(BOOL)a4;
- (id)startAudioForStreamToken:(id)a3 isInitialization:(BOOL)a4;
- (id)stopAudioForStreamToken:(id)a3 isDeinitialization:(BOOL)a4;
- (int)makeAudioIOForAudioTapIO:(id)a3;
- (int)registerAudioTapForStreamToken:(int64_t)a3 tapType:(unsigned int)a4;
- (int)validateAddAudioTapForStreamToken:(int64_t)a3;
- (tagVCAudioIOConfiguration)audioIOConfigWithAudioType:(SEL)a3 sinkDelegateContext:(unsigned int)a4;
- (tagVCAudioIODelegateContext)sinkDelegateContextWithTapType:(SEL)a3 realtimeContext:(unsigned int)a4;
- (void)cleanUpAudioMachineLearningCoordinator;
- (void)cleanUpMediaRecorder;
- (void)cleanUpPeriodicReporting;
- (void)dealloc;
- (void)didChangeThermalLevel:(int)a3;
- (void)invalidate;
- (void)printAudioTapHealth;
- (void)serverDidDie;
- (void)setAudioTapIO:(id)a3 forStreamToken:(int64_t)a4;
- (void)setUpAudioMachineLearningCoordinator;
- (void)setUpMediaRecorder;
- (void)setUpPeriodicReporting;
- (void)setUpReportingAgent;
- (void)terminateProcessFromAssertionOverflow:(BOOL)a3 onAudioTapIO:(id)a4;
- (void)unregisterAudioTapForStreamToken:(int64_t)a3;
@end

@implementation VCCellularAudioTap

- (BOOL)setUpReportingAgent
{
  v18 = *MEMORY[0x1E69E9840];
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

    *buf = 136315650;
    v14 = v4;
    LOWORD(v15) = 2080;
    *(&v15 + 2) = "[VCCellularAudioTap setUpReportingAgent]";
    WORD5(v15) = 1024;
    HIDWORD(v15) = 77;
    v6 = " [%s] %s:%d Register Reporting Agent";
    v7 = v5;
    v8 = 28;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = [(VCCellularAudioTap *)self performSelector:sel_logPrefix];
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
      v14 = v9;
      LOWORD(v15) = 2080;
      *(&v15 + 2) = "[VCCellularAudioTap setUpReportingAgent]";
      WORD5(v15) = 1024;
      HIDWORD(v15) = 77;
      LOWORD(v16[0]) = 2112;
      *(v16 + 2) = v3;
      WORD5(v16[0]) = 2048;
      *(v16 + 12) = self;
      v6 = " [%s] %s:%d %@(%p) Register Reporting Agent";
      v7 = v10;
      v8 = 48;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }
  }

LABEL_12:
  *buf = self->_tapToken;
  *&v15 = 0;
  v14 = 0;
  *(&v15 + 1) = 0x1500000000;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  Agent = reportingCreateAgent();
  if (Agent)
  {
    [(VCObject *)self setReportingAgent:Agent];
    CFRelease(Agent);
    [(VCObject *)self reportingAgent];
    self->_reportingModuleID = VCReporting_GetDynamicReportingModuleID();
    [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
    [(VCObject *)self reportingAgent];
    [(VCCellularAudioTap *)self clientSpecificUserInfo];
    reportingSetUserInfo();
    [(VCObject *)self reportingAgent];
    reportingRecordingAndTranscriptionServiceUsage();
  }

  else
  {
    [VCCellularAudioTap setUpReportingAgent];
  }

  return Agent != 0;
}

void __41__VCCellularAudioTap_setUpReportingAgent__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (![a2 count])
  {
    [*(a1 + 32) strong];
    v3 = objc_opt_class();
    if (v3 == [*(a1 + 32) strong])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __41__VCCellularAudioTap_setUpReportingAgent__block_invoke_cold_1(v5);
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
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v8 = [*(a1 + 32) strong];
          v9 = 136316162;
          v10 = v6;
          v11 = 2080;
          v12 = "[VCCellularAudioTap setUpReportingAgent]_block_invoke";
          v13 = 1024;
          v14 = 91;
          v15 = 2112;
          v16 = v4;
          v17 = 2048;
          v18 = v8;
          _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Reporting not available (no backends)", &v9, 0x30u);
        }
      }
    }
  }
}

- (__CFDictionary)clientSpecificUserInfo
{
  v5[1] = *MEMORY[0x1E69E9840];
  uuid = self->_uuid;
  v4 = @"AMUUID";
  v5[0] = uuid;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
}

+ (const)cStringFromTapType:(unsigned int)a3
{
  if (!a3)
  {
    return "VCPowerSpectrumCellularTapTypeUplink";
  }

  if (a3 == 1)
  {
    return "VCPowerSpectrumCellularTapTypeDownlink";
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      +[VCCellularAudioTap cStringFromTapType:];
    }
  }

  return "Unknown";
}

+ (id)stringFromTapType:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [a1 cStringFromTapType:?];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%s(%u)", v4, v3];
}

- (void)printAudioTapHealth
{
  v3[5] = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__VCCellularAudioTap_printAudioTapHealth__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(stateQueue, v3);
}

void __41__VCCellularAudioTap_printAudioTapHealth__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD60] string];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = *(*(a1 + 32) + 168);
  v3 = [obj countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v28;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        v8 = [objc_msgSend(*(*(a1 + 32) + 168) objectForKeyedSubscript:{v7), "realtimeContext"}];
        if (v8)
        {
          v9 = v8;
          v10 = [VCCellularAudioTap stringFromTapType:*(v8 + 8)];
          v11 = *(v9 + 32);
        }

        else
        {
          v10 = [VCCellularAudioTap stringFromTapType:0xFFFFFFFFLL];
          v11 = NAN;
        }

        [v2 appendFormat:@"streamToken=%@ tapType=%@ averagePower=%f ", v7, v10, *&v11];
      }

      v4 = [obj countByEnumeratingWithState:&v27 objects:v26 count:16];
    }

    while (v4);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      *buf = 136316162;
      v17 = v12;
      v18 = 2080;
      v19 = "[VCCellularAudioTap printAudioTapHealth]_block_invoke";
      v20 = 1024;
      v21 = 129;
      v22 = 2048;
      v23 = v14;
      v24 = 2112;
      v25 = v2;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @=@ Health: BasebandAudioTap [%p] %@", buf, 0x30u);
    }
  }
}

- (void)setUpPeriodicReporting
{
  if ([(VCObject *)self reportingAgent])
  {
    reportingRegisterPeriodicTaskWeak();

    reportingStartTimer();
  }
}

uint64_t __44__VCCellularAudioTap_setUpPeriodicReporting__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    return [a2 printAudioTapHealth];
  }

  return result;
}

- (void)cleanUpPeriodicReporting
{
  [(VCObject *)self reportingAgent];
  reportingUnregisterPeriodicTask();

  reportingStopTimer();
}

- (BOOL)setUpMediaRecorder
{
  v3 = [[VCMediaRecorder alloc] initWithStreamToken:LODWORD(self->_tapToken) delegate:self reportingAgent:[(VCObject *)self reportingAgent]];
  v4 = v3;
  self->_mediaRecorder = v3;
  if (v3)
  {
    [(VCMediaRecorder *)v3 setCapabilities:2];
    [+[VCMediaRecorderManager sharedInstance](VCMediaRecorderManager registerMediaRecorder:"registerMediaRecorder:withStreamToken:" withStreamToken:self->_mediaRecorder, self->_tapToken];
  }

  else
  {
    [(VCCellularAudioTap *)self setUpMediaRecorder];
  }

  return v4 != 0;
}

- (void)cleanUpMediaRecorder
{
  mediaRecorder = self->_mediaRecorder;
  if (mediaRecorder)
  {

    self->_mediaRecorder = 0;
  }
}

- (BOOL)setUpAudioMachineLearningCoordinator
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [[VCAudioMachineLearningCoordinator alloc] initWithOneToOneEnabled:1 isLocal:1 taskIdentifier:@"callrecordingcaptions" reportingAgent:[(VCObject *)self reportingAgent] delegate:self];
  self->_audioMachineLearningCoordinatorUplink = v3;
  if (v3)
  {
    v4 = [[VCAudioMachineLearningCoordinator alloc] initWithOneToOneEnabled:1 isLocal:0 taskIdentifier:@"callrecordingcaptions" reportingAgent:[(VCObject *)self reportingAgent] delegate:self];
    self->_audioMachineLearningCoordinatorDownlink = v4;
    v5 = objc_opt_class();
    if (v4)
    {
      if (v5 == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_14;
        }

        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        audioMachineLearningCoordinatorUplink = self->_audioMachineLearningCoordinatorUplink;
        audioMachineLearningCoordinatorDownlink = self->_audioMachineLearningCoordinatorDownlink;
        v24 = 136316162;
        v25 = v7;
        v26 = 2080;
        v27 = "[VCCellularAudioTap setUpAudioMachineLearningCoordinator]";
        v28 = 1024;
        v29 = 192;
        v30 = 2048;
        v31 = audioMachineLearningCoordinatorUplink;
        v32 = 2048;
        v33 = audioMachineLearningCoordinatorDownlink;
        v11 = " [%s] %s:%d Audio machine learning coordinators uplink=%p, downlink=%p";
        v12 = v8;
        v13 = 48;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v6 = [(VCCellularAudioTap *)self performSelector:sel_logPrefix];
        }

        else
        {
          v6 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_14;
        }

        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        v16 = self->_audioMachineLearningCoordinatorUplink;
        v17 = self->_audioMachineLearningCoordinatorDownlink;
        v24 = 136316674;
        v25 = v14;
        v26 = 2080;
        v27 = "[VCCellularAudioTap setUpAudioMachineLearningCoordinator]";
        v28 = 1024;
        v29 = 192;
        v30 = 2112;
        v31 = v6;
        v32 = 2048;
        v33 = self;
        v34 = 2048;
        v35 = v16;
        v36 = 2048;
        v37 = v17;
        v11 = " [%s] %s:%d %@(%p) Audio machine learning coordinators uplink=%p, downlink=%p";
        v12 = v15;
        v13 = 68;
      }

      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, &v24, v13);
LABEL_14:
      LOBYTE(v18) = 1;
      return v18;
    }

    if (v5 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v18 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v18)
        {
          return v18;
        }

        [(VCCellularAudioTap *)v20 setUpAudioMachineLearningCoordinator];
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v19 = [(VCCellularAudioTap *)self performSelector:sel_logPrefix];
      }

      else
      {
        v19 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        v18 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v18)
        {
          return v18;
        }

        v24 = 136316162;
        v25 = v21;
        v26 = 2080;
        v27 = "[VCCellularAudioTap setUpAudioMachineLearningCoordinator]";
        v28 = 1024;
        v29 = 191;
        v30 = 2112;
        v31 = v19;
        v32 = 2048;
        v33 = self;
        _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to allocate downlink audio machine learning coordinator", &v24, 0x30u);
      }
    }

    LOBYTE(v18) = 0;
  }

  else
  {
    [(VCCellularAudioTap *)self setUpAudioMachineLearningCoordinator];
    LOBYTE(v18) = v24;
  }

  return v18;
}

- (void)cleanUpAudioMachineLearningCoordinator
{
  [(VCAudioMachineLearningCoordinator *)self->_audioMachineLearningCoordinatorUplink invalidate];

  self->_audioMachineLearningCoordinatorUplink = 0;
  [(VCAudioMachineLearningCoordinator *)self->_audioMachineLearningCoordinatorDownlink invalidate];

  self->_audioMachineLearningCoordinatorDownlink = 0;
}

- (BOOL)setUpDelegateQueue:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    dispatch_retain(a3);
    self->_delegateQueue = a3;
LABEL_4:
    LOBYTE(v7) = 1;
    return v7;
  }

  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
  v6 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCCellularAudioTap.delegateQueue", 0, CustomRootQueue);
  self->_delegateQueue = v6;
  if (v6)
  {
    goto LABEL_4;
  }

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

      [VCCellularAudioTap setUpDelegateQueue:];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCCellularAudioTap *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      v7 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v7)
      {
        return v7;
      }

      v12 = 136316418;
      v13 = v9;
      v14 = 2080;
      v15 = "[VCCellularAudioTap setUpDelegateQueue:]";
      v16 = 1024;
      v17 = 221;
      v18 = 2112;
      v19 = v8;
      v20 = 2048;
      v21 = self;
      v22 = 2112;
      v23 = 0;
      _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to allocate the delegateQueue=%@", &v12, 0x3Au);
    }
  }

  LOBYTE(v7) = 0;
  return v7;
}

- (VCCellularAudioTap)initWithProcessId:(int)a3 delegate:(id)a4 delegateQueue:(id)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = VCCellularAudioTap;
  v8 = [(VCObject *)&v13 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8->_audioTapIOMap = v9;
    if (!v9)
    {
      [VCCellularAudioTap initWithProcessId:v8 delegate:? delegateQueue:?];
      goto LABEL_6;
    }

    if (![(VCCellularAudioTap *)v8 setUpDelegateQueue:a5])
    {
      goto LABEL_6;
    }

    [(VCCellularAudioTap *)v8 setDelegate:a4];
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v11 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCCellularAudioTap.stateQueue", 0, CustomRootQueue);
    v8->_stateQueue = v11;
    if (!v11)
    {
      [VCCellularAudioTap initWithProcessId:v8 delegate:? delegateQueue:?];
      goto LABEL_6;
    }

    v8->_callbackCounter = 0;
    v8->_processId = a3;
    v8->_tapToken = VCUniqueIDGenerator_GenerateID();
    if (![(VCCellularAudioTap *)v8 setUpCallRecordingComponents])
    {
LABEL_6:

      return 0;
    }
  }

  return v8;
}

- (void)invalidate
{
  [(VCCellularAudioTap *)self setDelegate:0];
  [(VCMediaRecorder *)self->_mediaRecorder invalidate];
  [(VCObject *)self reportingAgent];

  VCReporting_finalizeAggregation();
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  [(VCCellularAudioTap *)self setDelegate:0];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSMutableDictionary *)self->_audioTapIOMap allKeys];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        -[VCCellularAudioTap removeAudioTapForStreamToken:error:](self, "removeAudioTapForStreamToken:error:", [*(*(&v12 + 1) + 8 * v7++) unsignedIntValue], 0);
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v5);
  }

  stateQueue = self->_stateQueue;
  if (stateQueue)
  {
    dispatch_release(stateQueue);
    self->_stateQueue = 0;
  }

  delegateQueue = self->_delegateQueue;
  if (delegateQueue)
  {
    dispatch_release(delegateQueue);
    self->_delegateQueue = 0;
  }

  [(VCCellularAudioTap *)self cleanUpAudioMachineLearningCoordinator];
  [(VCCellularAudioTap *)self cleanUpMediaRecorder];

  v10.receiver = self;
  v10.super_class = VCCellularAudioTap;
  [(VCObject *)&v10 dealloc];
}

- (void)terminateProcessFromAssertionOverflow:(BOOL)a3 onAudioTapIO:(id)a4
{
  v4 = a3;
  v29 = *MEMORY[0x1E69E9840];
  v6 = [a4 realtimeContext];
  if (v4)
  {
    v7 = "overflow";
  }

  else
  {
    v7 = "underflow";
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCCellularAudioTap terminateProcessFromAssertionOverflow:onAudioTapIO:];
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        [VCCellularAudioTap terminateProcessFromAssertionOverflow:onAudioTapIO:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCCellularAudioTap *)self performSelector:sel_logPrefix];
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
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v18 = v9;
          v19 = 2080;
          v20 = "[VCCellularAudioTap terminateProcessFromAssertionOverflow:onAudioTapIO:]";
          v21 = 1024;
          v22 = 310;
          v23 = 2112;
          v24 = v8;
          v25 = 2048;
          v26 = self;
          v27 = 2080;
          v28 = v7;
          _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Assertion counter %s! We've leaked the audio assertions. Terminating...", buf, 0x3Au);
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        *buf = 136316418;
        v18 = v9;
        v19 = 2080;
        v20 = "[VCCellularAudioTap terminateProcessFromAssertionOverflow:onAudioTapIO:]";
        v21 = 1024;
        v22 = 310;
        v23 = 2112;
        v24 = v8;
        v25 = 2048;
        v26 = self;
        v27 = 2080;
        v28 = v7;
        _os_log_fault_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_FAULT, " [%s] %s:%d %@(%p) Assertion counter %s! We've leaked the audio assertions. Terminating...", buf, 0x3Au);
      }
    }
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Audio assertion counter %sed", v7];
  v13 = MEMORY[0x1E696AEC0];
  v14 = objc_opt_class();
  Name = class_getName(v14);
  if (v6)
  {
    v16 = *(v6 + 8);
  }

  else
  {
    v16 = 0xFFFFFFFFLL;
  }

  VCTerminateProcess(v12, [v13 stringWithFormat:@"%s tapType=%u", Name, v16], -[VCObject reportingAgent](self, "reportingAgent"));
}

- (int)validateAddAudioTapForStreamToken:(int64_t)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
    if (-[NSMutableDictionary objectForKeyedSubscript:](self->_audioTapIOMap, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInteger:?]))
    {
      if (objc_opt_class() == self)
      {
        v5 = -2142830551;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCCellularAudioTap validateAddAudioTapForStreamToken:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v7 = [(VCCellularAudioTap *)self performSelector:sel_logPrefix];
        }

        else
        {
          v7 = &stru_1F570E008;
        }

        v5 = -2142830551;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v8 = VRTraceErrorLogLevelToCSTR();
          v9 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v10 = 136316418;
            v11 = v8;
            v12 = 2080;
            v13 = "[VCCellularAudioTap validateAddAudioTapForStreamToken:]";
            v14 = 1024;
            v15 = 432;
            v16 = 2112;
            v17 = v7;
            v18 = 2048;
            v19 = self;
            v20 = 1024;
            v21 = v4;
            _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Audio tap already registered for streamToken=%u", &v10, 0x36u);
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    [(VCCellularAudioTap *)self validateAddAudioTapForStreamToken:?];
    return v10;
  }

  return v5;
}

- (id)initializeAudioTapIOForStreamToken:(int64_t)a3 enableAsyncTapStart:(BOOL)a4
{
  v4 = a4;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [-[NSMutableDictionary objectForKeyedSubscript:](self->_audioTapIOMap objectForKeyedSubscript:{v6), "setEnableAsyncTapStart:", v4}];
  if (v4)
  {
    return 0;
  }

  return [(VCCellularAudioTap *)self startAudioForStreamToken:v6 isInitialization:1];
}

- (BOOL)addAudioTapForStreamToken:(int64_t)a3 tapType:(unsigned int)a4 enableAsyncTapStart:(BOOL)a5 error:(id *)a6
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  stateQueue = self->_stateQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__VCCellularAudioTap_addAudioTapForStreamToken_tapType_enableAsyncTapStart_error___block_invoke;
  v9[3] = &unk_1E85F8210;
  v10 = a4;
  v11 = a5;
  v9[4] = self;
  v9[5] = &v12;
  v9[6] = a3;
  v9[7] = a6;
  dispatch_sync(stateQueue, v9);
  v7 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v7;
}

- (BOOL)removeAudioTapForStreamToken:(int64_t)a3 error:(id *)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
    ;
  }

  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__VCCellularAudioTap_removeAudioTapForStreamToken_error___block_invoke;
  block[3] = &unk_1E85F8238;
  block[4] = self;
  block[5] = &v8;
  block[6] = a3;
  block[7] = a4;
  dispatch_sync(stateQueue, block);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)serverDidDie
{
  v3[5] = *MEMORY[0x1E69E9840];
  delegateQueue = self->_delegateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__VCCellularAudioTap_serverDidDie__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(delegateQueue, v3);
}

+ (unsigned)audioIOTypeFromTapType:(unsigned int)a3
{
  if (a3 == 1)
  {
    v3 = 4;
  }

  else
  {
    v3 = -1;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 3;
  }
}

- (tagVCAudioIODelegateContext)sinkDelegateContextWithTapType:(SEL)a3 realtimeContext:(unsigned int)a4
{
  if (a4)
  {
    if (a4 != 1)
    {
      v6 = 0;
      streamToken = 0;
      retstr->delegate = 0;
      retstr->clientCallback = VCCellularAudioTap_ProcessAudioCallback;
      retstr->clientContext = a5;
      goto LABEL_9;
    }

    v5 = &OBJC_IVAR___VCCellularAudioTap__audioMachineLearningCoordinatorDownlink;
  }

  else
  {
    v5 = &OBJC_IVAR___VCCellularAudioTap__audioMachineLearningCoordinatorUplink;
  }

  v6 = *(&self->delegate + *v5);
  retstr->delegate = 0;
  retstr->clientCallback = VCCellularAudioTap_ProcessAudioCallback;
  retstr->clientContext = a5;
  if (v6)
  {
    streamToken = a5->streamToken;
  }

  else
  {
    streamToken = 0;
  }

LABEL_9:
  retstr->captionsToken = streamToken;
  retstr->audioMachineLearningCoordinator = v6;
  retstr->injector = 0;
  return self;
}

- (int)makeAudioIOForAudioTapIO:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [a3 realtimeContext];
  if (!v5)
  {
    [(VCCellularAudioTap *)a3 makeAudioIOForAudioTapIO:&v20];
LABEL_10:
    v12 = v19;
    v13 = v20;
    goto LABEL_7;
  }

  v6 = v5;
  v7 = *(v5 + 8);
  v8 = [VCCellularAudioTap audioIOTypeFromTapType:v7];
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16 = v9;
  v17 = v9;
  v18 = v9;
  if (self)
  {
    v10 = v8;
    [(VCCellularAudioTap *)self sinkDelegateContextWithTapType:v7 realtimeContext:v6];
    [(VCCellularAudioTap *)self audioIOConfigWithAudioType:v10 sinkDelegateContext:&v16, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    memset(v15, 0, sizeof(v15));
  }

  v11 = [[VCAudioIO alloc] initWithConfiguration:v15];
  if (!v11)
  {
    [(VCCellularAudioTap *)v7 makeAudioIOForAudioTapIO:&v20];
    goto LABEL_10;
  }

  v12 = v11;
  [a3 setAudioIO:v11];
  v13 = 0;
LABEL_7:

  return v13;
}

- (void)setAudioTapIO:(id)a3 forStreamToken:(int64_t)a4
{
  dispatch_assert_queue_V2(self->_stateQueue);
  if (![(NSMutableDictionary *)self->_audioTapIOMap count])
  {
    [(VCCellularAudioTap *)self setUpPeriodicReporting];
    [VCPowerManager_DefaultManager() registerForThermalEvents:self];
  }

  audioTapIOMap = self->_audioTapIOMap;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];

  [(NSMutableDictionary *)audioTapIOMap setObject:a3 forKeyedSubscript:v8];
}

- (void)unregisterAudioTapForStreamToken:(int64_t)a3
{
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_audioTapIOMap, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInteger:?]);
  v6 = +[VCAudioPowerSpectrumManager sharedInstance];
  -[VCAudioPowerSpectrumManager unregisterAudioPowerSpectrumSourceForStreamToken:](v6, "unregisterAudioPowerSpectrumSourceForStreamToken:", [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "streamToken")}]);
  audioTapIOMap = self->_audioTapIOMap;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];

  [(NSMutableDictionary *)audioTapIOMap setObject:0 forKeyedSubscript:v8];
}

- (tagVCAudioIOConfiguration)audioIOConfigWithAudioType:(SEL)a3 sinkDelegateContext:(unsigned int)a4
{
  retstr->var0 = self->_tapToken;
  *&retstr->var1 = 0x200000000;
  retstr->var3 = 0;
  retstr->var4 = a4;
  *&retstr->var5 = 2;
  retstr->var7 = self;
  retstr->var8 = self->_processId;
  *&retstr->var9 = 0x1E000005DC0;
  retstr->var11 = 0;
  retstr->var12 = 0;
  retstr->var13 = 1;
  *&retstr->var19.delegate = 0u;
  *&retstr->var19.clientContext = 0u;
  retstr->var14 = 0;
  retstr->var15 = 0;
  *&retstr->var17 = 0;
  retstr->var16 = 0;
  v6 = *&a5->delegate;
  v7 = *&a5->clientContext;
  *&retstr->var19.audioMachineLearningCoordinator = 0u;
  *&retstr->var20.delegate = v6;
  v8 = *&a5->audioMachineLearningCoordinator;
  *&retstr->var20.clientContext = v7;
  *&retstr->var20.audioMachineLearningCoordinator = v8;
  retstr->var21 = 0;
  *&retstr->var22 = 0;
  retstr->var24 = 0;
  retstr->var25 = 0;
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"parent=%p", self];
  retstr->var26 = result;
  retstr->var27 = 0;
  return result;
}

- (BOOL)actionWillBeginForContext:(const tagVCAsynchronousActionContext *)a3 withError:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  if (![VCCellularAudioTap validateAsynchronousActionContext:"validateAsynchronousActionContext:withError:" withError:?])
  {
    return 0;
  }

  if ((atomic_fetch_add(&self->_callbackCounter, 1u) & 0x80000000) != 0)
  {
    atomic_fetch_add(&self->_callbackCounter, 0xFFFFFFFF);
    if (a4)
    {
      v10 = 0;
      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCCellularAudioTap" code:-2142830530 userInfo:0];
      return v10;
    }

    return 0;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__23;
  v17 = __Block_byref_object_dispose__23;
  v18 = 0;
  stateQueue = self->_stateQueue;
  v8 = *a3->var1;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__VCCellularAudioTap_actionWillBeginForContext_withError___block_invoke;
  v12[3] = &unk_1E85F6D88;
  v12[5] = &v13;
  v12[6] = v8;
  v12[4] = self;
  dispatch_sync(stateQueue, v12);
  v9 = v14[5];
  if (a4)
  {
    *a4 = v9;
  }

  v10 = v9 == 0;
  _Block_object_dispose(&v13, 8);
  return v10;
}

uint64_t __58__VCCellularAudioTap_actionWillBeginForContext_withError___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  atomic_fetch_add((*(a1 + 32) + 232), 0xFFFFFFFF);
  v2 = *(a1 + 32);
  if (*(a1 + 48) == v2[28])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = v2[21];
    result = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
    if (result)
    {
      v5 = result;
      v6 = *v10;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        result = [*(a1 + 32) startAudioForStreamToken:*(*(&v9 + 1) + 8 * v7) isInitialization:0];
        *(*(*(a1 + 40) + 8) + 40) = result;
        if (*(*(*(a1 + 40) + 8) + 40))
        {
          break;
        }

        if (v5 == ++v7)
        {
          result = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
          v5 = result;
          if (result)
          {
            goto LABEL_4;
          }

          return result;
        }
      }
    }
  }

  else
  {
    result = [v2 startAudioForStreamToken:objc_msgSend(MEMORY[0x1E696AD98] isInitialization:{"numberWithInteger:"), 0}];
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (BOOL)actionDidFinishForContext:(const tagVCAsynchronousActionContext *)a3 withError:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  if (![VCCellularAudioTap validateAsynchronousActionContext:"validateAsynchronousActionContext:withError:" withError:?])
  {
    return 0;
  }

  if ((atomic_fetch_add(&self->_callbackCounter, 1u) & 0x80000000) != 0)
  {
    atomic_fetch_add(&self->_callbackCounter, 0xFFFFFFFF);
    if (a4)
    {
      v10 = 0;
      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCCellularAudioTap" code:-2142830530 userInfo:0];
      return v10;
    }

    return 0;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__23;
  v17 = __Block_byref_object_dispose__23;
  v18 = 0;
  stateQueue = self->_stateQueue;
  v8 = *a3->var1;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__VCCellularAudioTap_actionDidFinishForContext_withError___block_invoke;
  v12[3] = &unk_1E85F6D88;
  v12[5] = &v13;
  v12[6] = v8;
  v12[4] = self;
  dispatch_sync(stateQueue, v12);
  v9 = v14[5];
  if (a4)
  {
    *a4 = v9;
  }

  v10 = v9 == 0;
  _Block_object_dispose(&v13, 8);
  return v10;
}

uint64_t __58__VCCellularAudioTap_actionDidFinishForContext_withError___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  atomic_fetch_add((*(a1 + 32) + 232), 0xFFFFFFFF);
  v2 = *(a1 + 32);
  if (*(a1 + 48) == v2[28])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = v2[21];
    result = [v3 countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (result)
    {
      v5 = result;
      v6 = *v13;
      do
      {
        v7 = 0;
        do
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(a1 + 32) stopAudioForStreamToken:*(*(&v12 + 1) + 8 * v7) isDeinitialization:0];
          v9 = *(*(a1 + 40) + 8);
          if (*(v9 + 40))
          {
            v10 = 1;
          }

          else
          {
            v10 = v8 == 0;
          }

          if (!v10)
          {
            *(v9 + 40) = v8;
          }

          ++v7;
        }

        while (v5 != v7);
        result = [v3 countByEnumeratingWithState:&v12 objects:v11 count:16];
        v5 = result;
      }

      while (result);
    }
  }

  else
  {
    result = [v2 stopAudioForStreamToken:objc_msgSend(MEMORY[0x1E696AD98] isDeinitialization:{"numberWithInteger:"), 0}];
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (void)didChangeThermalLevel:(int)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"Thermal";
  v5[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&a3];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [(VCObject *)self reportingAgent];
  reportingGenericEvent();
}

- (BOOL)setUpCallRecordingComponents
{
  v12 = *MEMORY[0x1E69E9840];
  if (!VCFeatureFlagManager_CallRecordingEnabled())
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_16;
      }

      VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      v11 = 237;
      v5 = " [%s] %s:%d Skipping set up for media recorder and audio machine learning coordinator because CallRecording is NOT enabled.";
      v6 = v4;
      v7 = 28;
    }

    else
    {
      if (OUTLINED_FUNCTION_28_0())
      {
        OUTLINED_FUNCTION_6_1();
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_16;
      }

      VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      v5 = " [%s] %s:%d %@(%p) Skipping set up for media recorder and audio machine learning coordinator because CallRecording is NOT enabled.";
      v6 = v8;
      v7 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v5, v10, v7);
LABEL_16:
    LOBYTE(v3) = 1;
    return v3;
  }

  self->_uuid = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
  v3 = [(VCCellularAudioTap *)self setUpReportingAgent];
  if (v3)
  {
    v3 = [(VCCellularAudioTap *)self setUpMediaRecorder];
    if (v3)
    {
      if (![(VCCellularAudioTap *)self setUpAudioMachineLearningCoordinator])
      {
        LOBYTE(v3) = 0;
        return v3;
      }

      goto LABEL_16;
    }
  }

  return v3;
}

- (id)startAudioForStreamToken:(id)a3 isInitialization:(BOOL)a4
{
  *&v58[3] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  v7 = [(NSMutableDictionary *)self->_audioTapIOMap objectForKeyedSubscript:a3];
  if (!v7)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return [MEMORY[0x1E696ABC0] errorWithDomain:@"VCCellularAudioTap" code:-2142830570 userInfo:{0, v52}];
      }

      v27 = VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_28())
      {
        return [MEMORY[0x1E696ABC0] errorWithDomain:@"VCCellularAudioTap" code:-2142830570 userInfo:{0, v52}];
      }

      LODWORD(v52) = 136315906;
      *(&v52 + 4) = v27;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      v53 = a3;
      OUTLINED_FUNCTION_2();
      v33 = 38;
    }

    else
    {
      if (OUTLINED_FUNCTION_38_0())
      {
        v24 = OUTLINED_FUNCTION_37_0();
      }

      else
      {
        v24 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return [MEMORY[0x1E696ABC0] errorWithDomain:@"VCCellularAudioTap" code:-2142830570 userInfo:{0, v52}];
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_31())
      {
        return [MEMORY[0x1E696ABC0] errorWithDomain:@"VCCellularAudioTap" code:-2142830570 userInfo:{0, v52}];
      }

      OUTLINED_FUNCTION_8();
      WORD6(v52) = v51;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      v53 = v24;
      OUTLINED_FUNCTION_27_1();
      OUTLINED_FUNCTION_17_0();
      v33 = 58;
    }

    _os_log_error_impl(v28, v29, v30, v31, v32, v33);
    return [MEMORY[0x1E696ABC0] errorWithDomain:@"VCCellularAudioTap" code:-2142830570 userInfo:{0, v52}];
  }

  v8 = v7;
  v9 = [v7 enableAsyncTapStart];
  v10 = v9;
  if (!a4 && (v9 & 1) == 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 0;
      }

      v34 = VRTraceErrorLogLevelToCSTR();
      v35 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      LODWORD(v52) = 136316418;
      *(&v52 + 4) = v34;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_9_9();
      v53 = a3;
      v54 = v36;
      *v55 = 0;
      *&v55[4] = v36;
      *&v55[6] = 0;
      v17 = " [%s] %s:%d Ignoring call to start audio for token=%@ because isInitialization=%{BOOL}d tapPrefersAsyncStart=%{BOOL}d";
      v18 = v35;
      v19 = 50;
    }

    else
    {
      if (OUTLINED_FUNCTION_38_0())
      {
        v25 = OUTLINED_FUNCTION_37_0();
      }

      else
      {
        v25 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 0;
      }

      VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_9();
      v53 = v25;
      v54 = 2048;
      *v55 = self;
      *&v55[8] = v38;
      v56 = a3;
      v57 = v39;
      v58[0] = 0;
      LOWORD(v58[1]) = v39;
      *(&v58[1] + 2) = 0;
      v17 = " [%s] %s:%d %@(%p) Ignoring call to start audio for token=%@ because isInitialization=%{BOOL}d tapPrefersAsyncStart=%{BOOL}d";
      v18 = v37;
      v19 = 70;
    }

LABEL_20:
    _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, &v52, v19);
    return 0;
  }

  v11 = [v8 audioAssertionCounter];
  v12 = v11;
  if (a4 || !v11)
  {
    v13 = [objc_msgSend(v8 "audioIO")];
    if (v13)
    {
      v14 = v13;
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          return v14;
        }

        VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_28())
        {
          return v14;
        }

        OUTLINED_FUNCTION_10();
        WORD6(v52) = v40;
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_29();
        v53 = a3;
        v54 = v41;
        *v55 = v14;
        OUTLINED_FUNCTION_2();
        v47 = 48;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v26 = [(VCCellularAudioTap *)self performSelector:sel_logPrefix];
        }

        else
        {
          v26 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          return v14;
        }

        v48 = VRTraceErrorLogLevelToCSTR();
        v49 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          return v14;
        }

        LODWORD(v52) = 136316674;
        *(&v52 + 4) = v48;
        OUTLINED_FUNCTION_6_5();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_29();
        v53 = v26;
        OUTLINED_FUNCTION_27_1();
        v57 = v50;
        *v58 = v14;
        v42 = &dword_1DB56E000;
        v45 = " [%s] %s:%d %@(%p) Failed to register start the audioIO for streamToken=%@. error=%@";
        v46 = &v52;
        v43 = v49;
        v44 = OS_LOG_TYPE_ERROR;
        v47 = 68;
      }

      _os_log_error_impl(v42, v43, v44, v45, v46, v47);
      return v14;
    }
  }

  if (!v10)
  {
    return 0;
  }

  [v8 setAudioAssertionCounter:v12 + 1];
  v14 = [v8 audioAssertionCounter];
  if (v14)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 0;
      }

      VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      v53 = a3;
      v54 = 2048;
      *v55 = v14;
      v17 = " [%s] %s:%d Adding new assertion for token=%@, audioAssertionCounter=%llu";
      v18 = v16;
      v19 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = [(VCCellularAudioTap *)self performSelector:sel_logPrefix];
      }

      else
      {
        v15 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 0;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      LODWORD(v52) = 136316674;
      *(&v52 + 4) = v20;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      v53 = v15;
      OUTLINED_FUNCTION_27_1();
      v57 = v22;
      *v58 = v14;
      v17 = " [%s] %s:%d %@(%p) Adding new assertion for token=%@, audioAssertionCounter=%llu";
      v18 = v21;
      v19 = 68;
    }

    goto LABEL_20;
  }

  [(VCCellularAudioTap *)self terminateProcessFromAssertionOverflow:1 onAudioTapIO:v8];
  return v14;
}

- (id)stopAudioForStreamToken:(id)a3 isDeinitialization:(BOOL)a4
{
  v4 = a4;
  v75 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  v7 = [(NSMutableDictionary *)self->_audioTapIOMap objectForKeyedSubscript:a3];
  v8 = [v7 enableAsyncTapStart];
  v9 = [v7 audioIO];
  v10 = [v9 state];
  v11 = [v7 audioAssertionCounter];
  v12 = v11;
  if (v7)
  {
    v13 = v10 - 1;
    if (((v4 | v8) & 1) != 0 && v13 < 2)
    {
      if (!v4 && v11 != 1)
      {
        goto LABEL_16;
      }

      v14 = [v9 stop];
      if (!v14)
      {
        goto LABEL_17;
      }

      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_16;
        }

        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        *buf = 136316162;
        v56 = v16;
        OUTLINED_FUNCTION_22_3();
        OUTLINED_FUNCTION_6_20();
        OUTLINED_FUNCTION_9_21();
        v62 = a3;
        v63 = v18;
        v64 = v14;
        v19 = " [%s] %s:%d Failed to stop the audioIO for streamToken=%@. error=%@";
        v20 = v17;
        v21 = 48;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v15 = [(VCCellularAudioTap *)self performSelector:sel_logPrefix];
        }

        else
        {
          v15 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_16;
        }

        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        *buf = 136316674;
        v56 = v22;
        OUTLINED_FUNCTION_22_3();
        OUTLINED_FUNCTION_6_20();
        OUTLINED_FUNCTION_9_21();
        v62 = v15;
        OUTLINED_FUNCTION_13_12();
        *&v66[8] = v37;
        v67 = v14;
        v19 = " [%s] %s:%d %@(%p) Failed to stop the audioIO for streamToken=%@. error=%@";
        v20 = v23;
        v21 = 68;
      }

      _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
    }

    else
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_16;
        }

        log = VRTraceErrorLogLevelToCSTR();
        v54 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        *buf = 136317186;
        v56 = log;
        v57 = 2080;
        v58 = "[VCCellularAudioTap stopAudioForStreamToken:isDeinitialization:]";
        v59 = 1024;
        v60 = 399;
        v61 = 2112;
        v62 = v9;
        v63 = 2112;
        v64 = a3;
        v65 = 1024;
        *v66 = v4;
        *&v66[4] = 1024;
        *&v66[6] = v8;
        LOWORD(v67) = 1024;
        *(&v67 + 2) = v13 < 2;
        HIWORD(v67) = 1024;
        *v68 = v10;
        v44 = " [%s] %s:%d Ignoring call to stop audioIO=%@ for token=%@ because isDeinitialization=%{BOOL}d tapStateManagementIsAsync=%{BOOL}d audioIOIsRunning=%{BOOL}d audioIOState=%u";
        v45 = v54;
        v46 = 72;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v53 = [(VCCellularAudioTap *)self performSelector:sel_logPrefix];
        }

        else
        {
          v53 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_16;
        }

        v50 = VRTraceErrorLogLevelToCSTR();
        loga = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        *buf = 136317698;
        v56 = v50;
        OUTLINED_FUNCTION_22_3();
        v58 = "[VCCellularAudioTap stopAudioForStreamToken:isDeinitialization:]";
        v59 = 1024;
        v60 = 399;
        v61 = 2112;
        v62 = v53;
        v63 = 2048;
        v64 = self;
        v65 = 2112;
        *v66 = v9;
        *&v66[8] = 2112;
        v67 = a3;
        *v68 = 1024;
        *&v68[2] = v4;
        v69 = 1024;
        v70 = v8;
        v71 = 1024;
        v72 = v49;
        v73 = 1024;
        v74 = v10;
        v44 = " [%s] %s:%d %@(%p) Ignoring call to stop audioIO=%@ for token=%@ because isDeinitialization=%{BOOL}d tapStateManagementIsAsync=%{BOOL}d audioIOIsRunning=%{BOOL}d audioIOState=%u";
        v45 = loga;
        v46 = 92;
      }

      _os_log_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEFAULT, v44, buf, v46);
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v14 = -2142830570;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_17;
    }

    v39 = VRTraceErrorLogLevelToCSTR();
    v40 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 136315906;
    v56 = v39;
    OUTLINED_FUNCTION_22_3();
    OUTLINED_FUNCTION_6_20();
    OUTLINED_FUNCTION_9_21();
    v62 = a3;
    v41 = " [%s] %s:%d Audio tap not found. streamToken=%@";
    v42 = v40;
    v43 = 38;
    goto LABEL_55;
  }

  if (objc_opt_respondsToSelector())
  {
    v38 = [(VCCellularAudioTap *)self performSelector:sel_logPrefix];
  }

  else
  {
    v38 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v47 = VRTraceErrorLogLevelToCSTR();
    v48 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v56 = v47;
      OUTLINED_FUNCTION_22_3();
      OUTLINED_FUNCTION_6_20();
      OUTLINED_FUNCTION_9_21();
      v62 = v38;
      OUTLINED_FUNCTION_13_12();
      v41 = " [%s] %s:%d %@(%p) Audio tap not found. streamToken=%@";
      v42 = v48;
      v43 = 58;
LABEL_55:
      _os_log_error_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_ERROR, v41, buf, v43);
    }
  }

LABEL_17:
  if (v4)
  {
    v24 = 0;
  }

  else
  {
    v24 = [v7 enableAsyncTapStart];
  }

  [v7 setEnableAsyncTapStart:v24];
  if ([v7 enableAsyncTapStart])
  {
    [v7 setAudioAssertionCounter:v12 - 1];
    if (!v12)
    {
      [(VCCellularAudioTap *)self terminateProcessFromAssertionOverflow:0 onAudioTapIO:v7];
      goto LABEL_34;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_34;
      }

      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      [v7 audioAssertionCounter];
      *buf = 136316162;
      v56 = v26;
      OUTLINED_FUNCTION_22_3();
      OUTLINED_FUNCTION_6_20();
      OUTLINED_FUNCTION_9_21();
      v62 = a3;
      v63 = 2048;
      v64 = v28;
      v29 = " [%s] %s:%d Removing assertion for token=%@, audioAssertionCounter=%llu";
      v30 = v27;
      v31 = 48;
      goto LABEL_33;
    }

    if (objc_opt_respondsToSelector())
    {
      v25 = [(VCCellularAudioTap *)self performSelector:sel_logPrefix];
    }

    else
    {
      v25 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v32 = VRTraceErrorLogLevelToCSTR();
      v33 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        [v7 audioAssertionCounter];
        *buf = 136316674;
        v56 = v32;
        OUTLINED_FUNCTION_22_3();
        OUTLINED_FUNCTION_6_20();
        OUTLINED_FUNCTION_9_21();
        v62 = v25;
        OUTLINED_FUNCTION_13_12();
        *&v66[8] = v34;
        v67 = v35;
        v29 = " [%s] %s:%d %@(%p) Removing assertion for token=%@, audioAssertionCounter=%llu";
        v30 = v33;
        v31 = 68;
LABEL_33:
        _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);
      }
    }
  }

LABEL_34:
  if (v7)
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x1E696ABC0] errorWithDomain:@"VCCellularAudioTap" code:v14 userInfo:0];
  }
}

void __82__VCCellularAudioTap_addAudioTapForStreamToken_tapType_enableAsyncTapStart_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) validateAddAudioTapForStreamToken:*(a1 + 48)];
  if (v2 < 0)
  {
    v3 = v2;
    goto LABEL_24;
  }

  v3 = [*(a1 + 32) registerAudioTapForStreamToken:*(a1 + 48) tapType:*(a1 + 64)];
  if (v3 < 0)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_24;
      }

      v8 = VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_40())
      {
        goto LABEL_24;
      }

      *v18 = 136316162;
      *&v18[4] = v8;
      *&v18[12] = 2080;
      OUTLINED_FUNCTION_7();
      LODWORD(v19) = 471;
      WORD2(v19) = v9;
      *(&v19 + 6) = v10;
      WORD5(v19) = v9;
      HIDWORD(v19) = v3;
      OUTLINED_FUNCTION_24();
      v16 = 40;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_24;
      }

      v17 = VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_31())
      {
        goto LABEL_24;
      }

      *v18 = 136316674;
      *&v18[4] = v17;
      *&v18[12] = 2080;
      *&v18[14] = "[VCCellularAudioTap addAudioTapForStreamToken:tapType:enableAsyncTapStart:error:]_block_invoke";
      *&v18[22] = 1024;
      LODWORD(v19) = 471;
      WORD2(v19) = 2112;
      *(&v19 + 6) = v7;
      HIWORD(v19) = 2048;
      v20 = *(a1 + 32);
      LOWORD(v21) = 1024;
      *(&v21 + 2) = *(a1 + 48);
      HIWORD(v21) = 1024;
      LODWORD(v22) = v3;
      OUTLINED_FUNCTION_17_0();
      v16 = 60;
    }

    _os_log_error_impl(v11, v12, v13, v14, v15, v16);
LABEL_24:
    v5 = 0;
    v4 = 0;
    goto LABEL_5;
  }

  v4 = [*(a1 + 32) initializeAudioTapIOForStreamToken:*(a1 + 48) enableAsyncTapStart:*(a1 + 68)];
  v5 = 1;
  if (!v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

LABEL_5:
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    if (v5)
    {
      [*(a1 + 32) unregisterAudioTapForStreamToken:*(a1 + 48)];
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      if (!v4)
      {
        v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCCellularAudioTap" code:v3 userInfo:0];
        v6 = *(a1 + 56);
      }

      *v6 = v4;
    }

    [*(a1 + 32) cleanUpPeriodicReporting];
    [VCPowerManager_DefaultManager() unregisterForThermalEvents:*(a1 + 32)];
  }
}

uint64_t __57__VCCellularAudioTap_removeAudioTapForStreamToken_error___block_invoke(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    v3 = -2142830591;
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_21;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_40())
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      v10 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [*(a1 + 32) performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_21;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_31())
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_17_0();
      v10 = 48;
    }

    _os_log_error_impl(v5, v6, v7, v8, v9, v10);
LABEL_21:
    result = 0;
    goto LABEL_6;
  }

  result = [*(a1 + 32) stopAudioForStreamToken:objc_msgSend(MEMORY[0x1E696AD98] isDeinitialization:{"numberWithInteger:"), 1}];
  if (result)
  {
    v3 = 0;
  }

  else
  {
    [*(a1 + 32) unregisterAudioTapForStreamToken:*(a1 + 48)];
    if (![*(*(a1 + 32) + 168) count])
    {
      [*(a1 + 32) cleanUpPeriodicReporting];
      [VCPowerManager_DefaultManager() unregisterForThermalEvents:*(a1 + 32)];
    }

    v3 = 0;
    result = 0;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

LABEL_6:
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      if (!result)
      {
        result = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCCellularAudioTap" code:v3 userInfo:0];
        v4 = *(a1 + 56);
      }

      *v4 = result;
    }
  }

  atomic_fetch_and((*(a1 + 32) + 232), 0x7FFFFFFFu);
  return result;
}

- (int)registerAudioTapForStreamToken:(int64_t)a3 tapType:(unsigned int)a4
{
  v4 = *&a4;
  if ([VCCellularAudioTap audioIOTypeFromTapType:*&a4]== -1)
  {
    v11 = -2142830591;
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_12;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_12;
    }

LABEL_17:
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_24();
    _os_log_error_impl(v13, v14, v15, v16, v17, 0x22u);
LABEL_12:
    v10 = 0;
    v8 = 0;
    goto LABEL_6;
  }

  v7 = [[VCAudioPowerSpectrumSource alloc] initWithStreamToken:a3 delegate:self];
  if (!v7)
  {
    v11 = -2142830590;
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_12;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  v8 = v7;
  v9 = [[VCCellularAudioTapIO alloc] initWithStreamToken:a3 powerSpectrumSource:v7 tapType:v4];
  if (v9)
  {
    v10 = v9;
    [(VCCellularAudioTapIO *)v9 setMediaRecorder:self->_mediaRecorder];
    v11 = [(VCCellularAudioTap *)self makeAudioIOForAudioTapIO:v10];
    if ((v11 & 0x80000000) == 0)
    {
      [(VCCellularAudioTap *)self setAudioTapIO:v10 forStreamToken:a3];
      [+[VCAudioPowerSpectrumManager sharedInstance](VCAudioPowerSpectrumManager registerAudioPowerMeterSource:"registerAudioPowerMeterSource:", v8];
    }
  }

  else
  {
    v11 = -2142830590;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_31())
      {
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_21();
        OUTLINED_FUNCTION_17_0();
        _os_log_error_impl(v18, v19, v20, v21, v22, 0x22u);
      }
    }

    v10 = 0;
  }

LABEL_6:

  return v11;
}

+ (BOOL)validateAsynchronousActionContext:(const tagVCAsynchronousActionContext *)a3 withError:(id *)a4
{
  v40 = *MEMORY[0x1E69E9840];
  if (a3 && a3->var0 == 1 && a3->var1)
  {
    return 1;
  }

  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_14;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!OUTLINED_FUNCTION_31())
    {
      goto LABEL_14;
    }

    *buf = 136316418;
    v29 = v9;
    v30 = 2080;
    v31 = "+[VCCellularAudioTap validateAsynchronousActionContext:withError:]";
    OUTLINED_FUNCTION_24_8();
    v32 = 2048;
    v33 = a3;
    v34 = v20;
    *v35 = v21;
    *&v35[4] = 2048;
    *&v35[6] = v22;
    v23 = " [%s] %s:%d Invalid context=%p passed. Type=%d callerContext=%p";
    v24 = v10;
    v25 = 54;
LABEL_18:
    _os_log_error_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);
    if (a4)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v8 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316930;
      v29 = v11;
      v30 = 2080;
      v31 = "+[VCCellularAudioTap validateAsynchronousActionContext:withError:]";
      OUTLINED_FUNCTION_24_8();
      v32 = 2112;
      v33 = v8;
      v34 = 2048;
      *v35 = a1;
      *&v35[8] = 2048;
      *&v35[10] = a3;
      v36 = v17;
      v37 = v18;
      v38 = 2048;
      v39 = v19;
      v23 = " [%s] %s:%d %@(%p) Invalid context=%p passed. Type=%d callerContext=%p";
      v24 = v12;
      v25 = 74;
      goto LABEL_18;
    }
  }

LABEL_14:
  if (!a4)
  {
    return 0;
  }

LABEL_15:
  v26 = *MEMORY[0x1E696A578];
  v13 = MEMORY[0x1E696AEC0];
  v14 = objc_opt_class();
  v27 = [v13 stringWithFormat:@"Invalid deferred action context provided to class=%s", class_getName(v14)];
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCCellularAudioTap" code:-2142830591 userInfo:v15];
  result = 0;
  *a4 = v16;
  return result;
}

- (void)setUpReportingAgent
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

void __41__VCCellularAudioTap_setUpReportingAgent__block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 91;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Reporting not available (no backends)", &v2, 0x1Cu);
}

+ (void)cStringFromTapType:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)setUpMediaRecorder
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
      OUTLINED_FUNCTION_24();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

- (void)setUpAudioMachineLearningCoordinator
{
  if (objc_opt_class() == a1)
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

    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    v8 = 28;
LABEL_11:
    _os_log_error_impl(v3, v4, v5, v6, v7, v8);
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
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_4();
      OUTLINED_FUNCTION_17_0();
      v8 = 48;
      goto LABEL_11;
    }
  }

LABEL_9:
  *a2 = 0;
}

- (void)setUpDelegateQueue:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)initWithProcessId:(uint64_t)a1 delegate:delegateQueue:.cold.1(uint64_t a1)
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
      OUTLINED_FUNCTION_24();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

- (void)initWithProcessId:(uint64_t)a1 delegate:delegateQueue:.cold.2(uint64_t a1)
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
      OUTLINED_FUNCTION_24();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

- (void)terminateProcessFromAssertionOverflow:onAudioTapIO:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  v3 = v0;
  _os_log_fault_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_FAULT, " [%s] %s:%d Assertion counter %s! We've leaked the audio assertions. Terminating...", v2, 0x26u);
}

- (void)terminateProcessFromAssertionOverflow:onAudioTapIO:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)validateAddAudioTapForStreamToken:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)validateAddAudioTapForStreamToken:(uint64_t)a1 .cold.2(uint64_t a1, _DWORD *a2)
{
  if (objc_opt_class() == a1)
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

    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    v8 = 28;
LABEL_11:
    _os_log_error_impl(v3, v4, v5, v6, v7, v8);
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
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_4();
      OUTLINED_FUNCTION_17_0();
      v8 = 48;
      goto LABEL_11;
    }
  }

LABEL_9:
  *a2 = -2142830591;
}

- (void)makeAudioIOForAudioTapIO:(_DWORD *)a3 .cold.1(uint64_t a1, void *a2, _DWORD *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v5, v6, v7, v8, v9, 0x22u);
    }
  }

  *a3 = -2142830590;
  *a2 = 0;
}

- (void)makeAudioIOForAudioTapIO:(_DWORD *)a3 .cold.2(void *a1, void *a2, _DWORD *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      [a1 streamToken];
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v6, v7, v8, v9, v10, 0x26u);
    }
  }

  *a3 = -2142830570;
  *a2 = 0;
}

@end