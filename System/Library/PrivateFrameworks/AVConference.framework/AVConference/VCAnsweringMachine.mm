@interface VCAnsweringMachine
- (AudioStreamBasicDescription)defaultAudioFormat;
- (BOOL)configureAudioIO;
- (BOOL)enqueueInjectorAsset:(id)asset blocksToDelay:(unsigned int)delay;
- (BOOL)setUpAnnouncementAsset:(id)asset isInitialAsset:(BOOL)initialAsset;
- (BOOL)setUpConfigurationIndependentInternalState;
- (BOOL)setUpEventQueue;
- (BOOL)setUpInternalStateWithConfiguration:(id)configuration;
- (BOOL)setUpRealtimeContextWithToken:(int64_t)token;
- (BOOL)setupAudioMachineLearningCoordinator;
- (BOOL)setupMediaRecorder;
- (BOOL)setupReportingAgentWithCallID:(unsigned int)d;
- (VCAnsweringMachine)initWithConfiguration:(id)configuration delegate:(id)delegate delegateQueue:(id)queue;
- (__CFDictionary)clientSpecificUserInfo;
- (__CFDictionary)reportingInitialConfiguration;
- (id)logPrefix;
- (id)newInjectorConfigurationForAnnouncementAsset:(id)asset;
- (id)onStart;
- (id)onStop;
- (id)start;
- (id)stop;
- (int)deviceRoleForCallSource:(unsigned __int8)source;
- (tagVCAudioIOConfiguration)defaultAudioIOConfiguration;
- (void)addAnnouncementAsset:(id)asset;
- (void)cleanupAnnouncementAssetInjection;
- (void)cleanupAudioMachineLearningCoordinator;
- (void)cleanupMediaRecorder;
- (void)cleanupPeriodicReporting;
- (void)cleanupRealtimeContext;
- (void)configureAudioIO;
- (void)dealloc;
- (void)destroyEventQueue;
- (void)didChangeThermalLevel:(int)level;
- (void)flushEventQueue;
- (void)invalidate;
- (void)onStart;
- (void)onStop;
- (void)setUpConfigurationIndependentInternalState;
- (void)setUpEventQueue;
- (void)setUpRealtimeDefaults;
- (void)setupAudioMachineLearningCoordinator;
- (void)setupInternalFormat;
- (void)setupMediaRecorder;
- (void)setupPeriodicReporting;
- (void)stopMediaRecording;
- (void)streamToken:(int64_t)token didEndProcessingRequest:(id)request urlContext:(const tagVCMediaRecorderDelegateURLContext *)context error:(id)error;
@end

@implementation VCAnsweringMachine

- (BOOL)setUpConfigurationIndependentInternalState
{
  self->_uuid = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
  v4 = dispatch_queue_create_with_target_V2("com.apple.VideoConference.VCAnsweringMachine.dispatchQueue", 0, CustomRootQueue);
  self->_dispatchQueue = v4;
  if (!v4)
  {
    [(VCAnsweringMachine *)self setUpConfigurationIndependentInternalState];
  }

  return v4 != 0;
}

- (VCAnsweringMachine)initWithConfiguration:(id)configuration delegate:(id)delegate delegateQueue:(id)queue
{
  v28 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAnsweringMachine-init");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v19 = v9;
      v20 = 2080;
      v21 = "[VCAnsweringMachine initWithConfiguration:delegate:delegateQueue:]";
      v22 = 1024;
      v23 = 257;
      v24 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAnsweringMachine-init (%p)", buf, 0x26u);
    }
  }

  v17.receiver = self;
  v17.super_class = VCAnsweringMachine;
  v11 = [(VCMediaDevice *)&v17 init];
  v12 = v11;
  if (!v11)
  {
    [VCAnsweringMachine initWithConfiguration:delegate:delegateQueue:];
LABEL_20:
    [VCAnsweringMachine initWithConfiguration:v12 delegate:configuration delegateQueue:?];
    return 0;
  }

  if (!configuration)
  {
    [VCAnsweringMachine initWithConfiguration:v11 delegate:? delegateQueue:?];
    goto LABEL_20;
  }

  if (!delegate)
  {
    [VCAnsweringMachine initWithConfiguration:v11 delegate:? delegateQueue:?];
    goto LABEL_20;
  }

  if (!queue)
  {
    [VCAnsweringMachine initWithConfiguration:v11 delegate:? delegateQueue:?];
    goto LABEL_20;
  }

  if (![(VCAnsweringMachine *)v11 setUpEventQueue])
  {
    [VCAnsweringMachine initWithConfiguration:v12 delegate:? delegateQueue:?];
    goto LABEL_20;
  }

  if (![(VCAnsweringMachine *)v12 setUpConfigurationIndependentInternalState]|| ![(VCAnsweringMachine *)v12 setUpInternalStateWithConfiguration:configuration])
  {
    goto LABEL_20;
  }

  dispatch_retain(queue);
  v12->_delegateQueue = queue;
  v12->_delegate = delegate;
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAnsweringMachine-init");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v15 = [objc_msgSend(configuration "description")];
      *buf = 136316162;
      v19 = v13;
      v20 = 2080;
      v21 = "[VCAnsweringMachine initWithConfiguration:delegate:delegateQueue:]";
      v22 = 1024;
      v23 = 276;
      v24 = 2048;
      selfCopy = v12;
      v26 = 2080;
      v27 = v15;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAnsweringMachine-init (%p) Succeeded with configuration=%s", buf, 0x30u);
    }
  }

  return v12;
}

- (void)dealloc
{
  v17 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAnsweringMachine-dealloc");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v10 = v3;
      v11 = 2080;
      v12 = "[VCAnsweringMachine dealloc]";
      v13 = 1024;
      v14 = 287;
      v15 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAnsweringMachine-dealloc (%p)", buf, 0x26u);
    }
  }

  delegateQueue = self->_delegateQueue;
  if (delegateQueue)
  {
    dispatch_release(delegateQueue);
    self->_delegateQueue = 0;
  }

  delegate = self->_delegate;
  if (delegate)
  {
    CFRelease(delegate);
    self->_delegate = 0;
  }

  [(VCAnsweringMachine *)self cleanupRealtimeContext];

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  [(VCAnsweringMachine *)self destroyEventQueue];
  v8.receiver = self;
  v8.super_class = VCAnsweringMachine;
  [(VCObject *)&v8 dealloc];
}

- (void)invalidate
{
  v15 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAnsweringMachine-invalidate");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCAnsweringMachine invalidate]";
      v11 = 1024;
      v12 = 301;
      v13 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAnsweringMachine-invalidate (%p)", buf, 0x26u);
    }
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__VCAnsweringMachine_invalidate__block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

uint64_t __32__VCAnsweringMachine_invalidate__block_invoke(uint64_t result)
{
  v4 = *MEMORY[0x1E69E9840];
  if ((*(*(result + 32) + 401) & 1) == 0)
  {
    v1 = result;
    v3.receiver = *(result + 32);
    v3.super_class = VCAnsweringMachine;
    objc_msgSendSuper2(&v3, sel_stop);
    [*(*(v1 + 32) + 240) invalidate];
    [*(*(v1 + 32) + 264) setMediaRecorderDelegate:0];
    [*(*(v1 + 32) + 264) invalidate];
    dispatch_sync(*(*(v1 + 32) + 192), &__block_literal_global_28);
    v2 = *(v1 + 32);
    if (*(v2 + 192))
    {
      dispatch_release(*(v2 + 192));
      *(*(v1 + 32) + 192) = 0;
      v2 = *(v1 + 32);
    }

    if (*(v2 + 184))
    {
      CFRelease(*(v2 + 184));
      *(*(v1 + 32) + 184) = 0;
      v2 = *(v1 + 32);
    }

    [v2 reportingAgent];
    result = VCReporting_finalizeAggregation();
    *(*(v1 + 32) + 401) = 1;
  }

  return result;
}

- (id)start
{
  v4[5] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __27__VCAnsweringMachine_start__block_invoke;
  v4[3] = &unk_1E85F3778;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
  return 0;
}

void __27__VCAnsweringMachine_start__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[401] == 1)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __27__VCAnsweringMachine_start__block_invoke_cold_1();
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v9 = *(a1 + 32);
          *buf = 136316162;
          v13 = v7;
          v14 = 2080;
          v15 = "[VCAnsweringMachine start]_block_invoke";
          v16 = 1024;
          v17 = 322;
          v18 = 2112;
          v19 = v3;
          v20 = 2048;
          v21 = v9;
          _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Start called after invalidate!", buf, 0x30u);
        }
      }
    }
  }

  else
  {
    v11.receiver = v2;
    v11.super_class = VCAnsweringMachine;
    v4 = objc_msgSendSuper2(&v11, sel_start);
    v5 = *(a1 + 32);
    v6 = *(v5 + 192);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __27__VCAnsweringMachine_start__block_invoke_12;
    v10[3] = &unk_1E85F37F0;
    v10[4] = v5;
    v10[5] = v4;
    dispatch_async(v6, v10);
  }
}

- (id)stop
{
  v4[5] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __26__VCAnsweringMachine_stop__block_invoke;
  v4[3] = &unk_1E85F3778;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
  return 0;
}

void __26__VCAnsweringMachine_stop__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 400) = 0;
  v2 = *(a1 + 32);
  if (v2[401] == 1)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __26__VCAnsweringMachine_stop__block_invoke_cold_1();
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v9 = *(a1 + 32);
          *buf = 136316162;
          v13 = v7;
          v14 = 2080;
          v15 = "[VCAnsweringMachine stop]_block_invoke";
          v16 = 1024;
          v17 = 337;
          v18 = 2112;
          v19 = v3;
          v20 = 2048;
          v21 = v9;
          _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Stop called after invalidate!", buf, 0x30u);
        }
      }
    }
  }

  else
  {
    v11.receiver = v2;
    v11.super_class = VCAnsweringMachine;
    v4 = objc_msgSendSuper2(&v11, sel_stop);
    if (v4 || (*(*(a1 + 32) + 400) & 1) == 0)
    {
      reportingGenericEvent();
      v5 = *(a1 + 32);
      v6 = *(v5 + 192);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __26__VCAnsweringMachine_stop__block_invoke_13;
      v10[3] = &unk_1E85F37F0;
      v10[4] = v5;
      v10[5] = v4;
      dispatch_async(v6, v10);
    }
  }
}

- (id)logPrefix
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@ self=%p", NSStringFromClass(v4), self];
}

- (BOOL)setUpEventQueue
{
  v2 = CMSimpleQueueCreate(*MEMORY[0x1E695E480], 2, &self->_realtimeContext.eventQueue);
  if (v2)
  {
    [VCAnsweringMachine setUpEventQueue];
  }

  return v2 == 0;
}

- (void)destroyEventQueue
{
  if (self->_realtimeContext.eventQueue)
  {
    [(VCAnsweringMachine *)self flushEventQueue];
    eventQueue = self->_realtimeContext.eventQueue;
    if (eventQueue)
    {
      CFRelease(eventQueue);
      self->_realtimeContext.eventQueue = 0;
    }
  }
}

- (void)flushEventQueue
{
  v3 = CMSimpleQueueDequeue(self->_realtimeContext.eventQueue);
  if (v3)
  {
    v4 = v3;
    do
    {

      free(v4);
      v4 = CMSimpleQueueDequeue(self->_realtimeContext.eventQueue);
    }

    while (v4);
  }
}

- (BOOL)enqueueInjectorAsset:(id)asset blocksToDelay:(unsigned int)delay
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = malloc_type_malloc(0x10uLL, 0x10800409227ACB4uLL);
  if (!v7)
  {
    [VCAnsweringMachine enqueueInjectorAsset:blocksToDelay:];
    return v20;
  }

  v8 = v7;
  *v7 = asset;
  *(v8 + 2) = delay;
  v9 = CMSimpleQueueEnqueue(self->_realtimeContext.eventQueue, v8);
  if (v9)
  {
    v11 = v9;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_15;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v20 = 136316162;
      v21 = v13;
      v22 = 2080;
      v23 = "[VCAnsweringMachine enqueueInjectorAsset:blocksToDelay:]";
      v24 = 1024;
      v25 = 396;
      v26 = 2048;
      assetCopy = asset;
      v28 = 1024;
      LODWORD(selfCopy) = v11;
      v15 = " [%s] %s:%d Failed to enqueue injector asset=%p. error=%0x";
      v16 = v14;
      v17 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [(VCAnsweringMachine *)self performSelector:sel_logPrefix];
      }

      else
      {
        v12 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_15;
      }

      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v20 = 136316674;
      v21 = v18;
      v22 = 2080;
      v23 = "[VCAnsweringMachine enqueueInjectorAsset:blocksToDelay:]";
      v24 = 1024;
      v25 = 396;
      v26 = 2112;
      assetCopy = v12;
      v28 = 2048;
      selfCopy = self;
      v30 = 2048;
      assetCopy2 = asset;
      v32 = 1024;
      v33 = v11;
      v15 = " [%s] %s:%d %@(%p) Failed to enqueue injector asset=%p. error=%0x";
      v16 = v19;
      v17 = 64;
    }

    _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, v15, &v20, v17);
LABEL_15:

    free(v8);
    return 0;
  }

  return 1;
}

- (void)setUpRealtimeDefaults
{
  if (VCDefaults_GetBoolValueForKey(@"answeringMachineShouldCaptionImmediately", 0))
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  p_realtimeContext = &self->_realtimeContext;
  p_realtimeContext->sourceCommonContext.flags |= v3;
  if (VCDefaults_GetBoolValueForKey(@"answeringMachineShouldRecordImmediately", 0))
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  p_realtimeContext->sourceCommonContext.flags |= v5;
}

- (id)onStart
{
  v22 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(VCAnsweringMachine *)self setUpRealtimeDefaults];
  reportingGenericEvent();
  if (self->_realtimeContext.mediaRecorder)
  {
    v3 = [(AVCAnsweringMachineConfiguration *)self->_configuration announcementAsset]== 0;
  }

  else
  {
    v3 = 0;
  }

  if (self->_realtimeContext.audioMachineLearningCoordinator)
  {
    v4 = [(AVCAnsweringMachineConfiguration *)self->_configuration announcementAsset]== 0;
  }

  else
  {
    v4 = 0;
  }

  if (v3 || v4)
  {
    self->_realtimeContext.sourceCommonContext.flags |= 1u;
  }

  VCAudioMachineLearningCoordinator_SetReadyForCaptioning(self->_realtimeContext.audioMachineLearningCoordinator, v4);
  [(VCAnsweringMachine *)self setupPeriodicReporting];
  [VCPowerManager_DefaultManager() registerForThermalEvents:self];
  start = [(VCAudioIO *)self->_audioIO start];
  if (start)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAnsweringMachine onStart];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCAnsweringMachine *)self performSelector:sel_logPrefix];
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
          v10 = 136316418;
          v11 = v7;
          v12 = 2080;
          v13 = "[VCAnsweringMachine onStart]";
          v14 = 1024;
          v15 = 447;
          v16 = 2112;
          v17 = v6;
          v18 = 2048;
          selfCopy = self;
          v20 = 2112;
          v21 = start;
          _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) AudioIO start failed. error=%@", &v10, 0x3Au);
        }
      }
    }

    [(VCAnsweringMachine *)self cleanupPeriodicReporting];
    [VCPowerManager_DefaultManager() unregisterForThermalEvents:self];
  }

  return start;
}

- (id)onStop
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  stop = [(VCAudioIO *)self->_audioIO stop];
  if (stop)
  {
    [VCAnsweringMachine onStop];
  }

  else
  {
    if (self->_realtimeContext.mediaRecorder)
    {
      self->_stopIsAsync = 1;
      [(VCAnsweringMachine *)self stopMediaRecording];
    }

    [(VCAnsweringMachine *)self cleanupPeriodicReporting];
    [VCPowerManager_DefaultManager() unregisterForThermalEvents:self];
  }

  return stop;
}

- (void)addAnnouncementAsset:(id)asset
{
  block[6] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__VCAnsweringMachine_addAnnouncementAsset___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = asset;
  dispatch_async(dispatchQueue, block);
}

void __43__VCAnsweringMachine_addAnnouncementAsset___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v2;
      v10 = 2080;
      v11 = "[VCAnsweringMachine addAnnouncementAsset:]_block_invoke";
      v12 = 1024;
      v13 = 475;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAnsweringMachine-addAnnouncementAsset", &v8, 0x1Cu);
    }
  }

  if (([*(a1 + 32) setUpAnnouncementAsset:*(a1 + 40) isInitialAsset:0] & 1) == 0)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __43__VCAnsweringMachine_addAnnouncementAsset___block_invoke_cold_1();
        }
      }
    }

    else
    {
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
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v7 = *(a1 + 32);
          v8 = 136316162;
          v9 = v5;
          v10 = 2080;
          v11 = "[VCAnsweringMachine addAnnouncementAsset:]_block_invoke";
          v12 = 1024;
          v13 = 478;
          v14 = 2112;
          v15 = v4;
          v16 = 2048;
          v17 = v7;
          _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to setup the announcementAssetInjection", &v8, 0x30u);
        }
      }
    }
  }
}

- (void)setupPeriodicReporting
{
  if ([(VCObject *)self reportingAgent])
  {
    reportingRegisterPeriodicTaskWeak();

    reportingStartTimer();
  }
}

double __44__VCAnsweringMachine_setupPeriodicReporting__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3 && VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a2 + 256);
      v8 = *(a2 + 232);
      v9 = 136316418;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCAnsweringMachine setupPeriodicReporting]_block_invoke";
      v13 = 1024;
      v14 = 495;
      v15 = 2048;
      v16 = a2;
      v17 = 2048;
      v18 = v7;
      v19 = 2048;
      v20 = v8;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @=@ Health: AnsweringMachine [%p] averageSinkOutputPower=%f averageSourceOutputPower=%f", &v9, 0x3Au);
    }
  }

  return result;
}

- (void)cleanupPeriodicReporting
{
  [(VCObject *)self reportingAgent];
  reportingUnregisterPeriodicTask();

  reportingStopTimer();
}

- (__CFDictionary)reportingInitialConfiguration
{
  v5[7] = *MEMORY[0x1E69E9840];
  v4[0] = @"AMCS";
  v5[0] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[AVCAnsweringMachineConfiguration source](self->_configuration, "source")}];
  v4[1] = @"AMCMR";
  v5[1] = [MEMORY[0x1E696AD98] numberWithBool:{-[AVCAnsweringMachineConfiguration isMessageRecordingEnabled](self->_configuration, "isMessageRecordingEnabled")}];
  v4[2] = @"AMCMC";
  v5[2] = [MEMORY[0x1E696AD98] numberWithBool:{-[AVCAnsweringMachineConfiguration isMessageCaptioningEnabled](self->_configuration, "isMessageCaptioningEnabled")}];
  v4[3] = @"AMCMP";
  v5[3] = [MEMORY[0x1E696AD98] numberWithBool:{-[AVCAnsweringMachineConfiguration isMessagePlaybackEnabled](self->_configuration, "isMessagePlaybackEnabled")}];
  v4[4] = @"AMCA";
  v5[4] = [MEMORY[0x1E696AD98] numberWithInt:{-[AVCAnsweringMachineConfiguration announcementAsset](self->_configuration, "announcementAsset") != 0}];
  v4[5] = @"AMCAD";
  v5[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[AVCAnsweringMachineConfiguration announcementAssetMilliSecondDelay](self->_configuration, "announcementAssetMilliSecondDelay")}];
  v4[6] = @"AMCU";
  v5[6] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[AVCAnsweringMachineConfiguration usage](self->_configuration, "usage")}];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:7];
}

- (BOOL)setupReportingAgentWithCallID:(unsigned int)d
{
  v21 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_12;
    }

    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 136315650;
    *v17 = v6;
    *&v17[8] = 2080;
    *&v17[10] = "[VCAnsweringMachine setupReportingAgentWithCallID:]";
    *&v17[18] = 1024;
    v18 = 520;
    v8 = " [%s] %s:%d Register Reporting Agent";
    v9 = v7;
    v10 = 28;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [(VCAnsweringMachine *)self performSelector:sel_logPrefix];
  }

  else
  {
    v5 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      *v17 = v11;
      *&v17[8] = 2080;
      *&v17[10] = "[VCAnsweringMachine setupReportingAgentWithCallID:]";
      *&v17[18] = 1024;
      v18 = 520;
      LOWORD(v19[0]) = 2112;
      *(v19 + 2) = v5;
      WORD5(v19[0]) = 2048;
      *(v19 + 12) = self;
      v8 = " [%s] %s:%d %@(%p) Register Reporting Agent";
      v9 = v12;
      v10 = 48;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    }
  }

LABEL_12:
  uUIDString = [(NSUUID *)[(AVCAnsweringMachineConfiguration *)self->_configuration reportingSamplingUUID] UUIDString];
  *buf = d;
  *v17 = 0;
  *&v17[4] = uUIDString;
  v18 = 12;
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  Agent = reportingCreateAgent();
  if (Agent)
  {
    [(VCObject *)self setReportingAgent:Agent];
    CFRelease(Agent);
    [(VCObject *)self reportingAgent];
    self->_reportingModuleID = VCReporting_GetDynamicReportingModuleID();
    [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
    [(VCObject *)self reportingAgent];
    [(VCAnsweringMachine *)self clientSpecificUserInfo];
    reportingSetUserInfo();
    [(VCObject *)self reportingAgent];
    reportingRecordingAndTranscriptionServiceUsage();
    [(VCAnsweringMachine *)self reportingInitialConfiguration];
    reportingGenericEvent();
  }

  else
  {
    [VCAnsweringMachine setupReportingAgentWithCallID:];
  }

  return Agent != 0;
}

void __52__VCAnsweringMachine_setupReportingAgentWithCallID___block_invoke(uint64_t a1, void *a2)
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
          __52__VCAnsweringMachine_setupReportingAgentWithCallID___block_invoke_cold_1();
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
          v11 = "[VCAnsweringMachine setupReportingAgentWithCallID:]_block_invoke";
          v12 = 1024;
          v13 = 535;
          v14 = 2112;
          v15 = v4;
          v16 = 2048;
          v17 = v7;
          _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Reporting not available (no backends)", &v8, 0x30u);
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

- (void)setupInternalFormat
{
  if (self)
  {
    [(VCAnsweringMachine *)self defaultAudioFormat];
  }

  else
  {
    v5 = 0;
    v3 = 0u;
    v4 = 0u;
  }

  *&self->_internalFormat.format.mSampleRate = v3;
  *&self->_internalFormat.format.mBytesPerPacket = v4;
  *&self->_internalFormat.format.mBitsPerChannel = v5;
  self->_internalFormat.samplesPerFrame = 480;
}

- (BOOL)setUpRealtimeContextWithToken:(int64_t)token
{
  if ([(AVCAnsweringMachineConfiguration *)self->_configuration isMessageCaptioningEnabled]|| [(AVCAnsweringMachineConfiguration *)self->_configuration isMessageRecordingEnabled])
  {
    self->_realtimeContext.audioToken = token;
  }

  if ([(AVCAnsweringMachineConfiguration *)self->_configuration isMessageCaptioningEnabled]&& ![(VCAnsweringMachine *)self setupAudioMachineLearningCoordinator])
  {
    [VCAnsweringMachine setUpRealtimeContextWithToken:];
    return v7;
  }

  else if ([(VCAnsweringMachine *)self setupMediaRecorder])
  {
    v5 = 1;
    if (![(VCAnsweringMachine *)self setUpAnnouncementAsset:[(AVCAnsweringMachineConfiguration *)self->_configuration announcementAsset] isInitialAsset:1])
    {
      [VCAnsweringMachine setUpRealtimeContextWithToken:];
      return v9;
    }
  }

  else
  {
    [VCAnsweringMachine setUpRealtimeContextWithToken:];
    return v8;
  }

  return v5;
}

- (void)cleanupRealtimeContext
{
  [(VCAnsweringMachine *)self cleanupAudioMachineLearningCoordinator];
  [(VCAnsweringMachine *)self cleanupMediaRecorder];

  [(VCAnsweringMachine *)self cleanupAnnouncementAssetInjection];
}

- (int)deviceRoleForCallSource:(unsigned __int8)source
{
  if (source > 6u)
  {
    return 4;
  }

  else
  {
    return dword_1DBD47FE0[source];
  }
}

- (AudioStreamBasicDescription)defaultAudioFormat
{
  *&retstr->mBitsPerChannel = 0;
  *&retstr->mSampleRate = 0u;
  *&retstr->mBytesPerPacket = 0u;
  Format_Float(retstr, 1, 24000);
  return result;
}

- (tagVCAudioIOConfiguration)defaultAudioIOConfiguration
{
  retstr->var0 = VCUniqueIDGenerator_GenerateID();
  *&retstr->var1 = 0x100000000;
  retstr->var3 = [(VCAnsweringMachine *)self deviceRoleForCallSource:[(AVCAnsweringMachineConfiguration *)self->_configuration source]];
  retstr->var4 = 0;
  *&retstr->var5 = 3;
  retstr->var7 = self;
  clientPid = [(AVCAnsweringMachineConfiguration *)self->_configuration clientPid];
  mSampleRate = self->_internalFormat.format.mSampleRate;
  retstr->var8 = clientPid;
  retstr->var9 = mSampleRate;
  retstr->var10 = self->_internalFormat.samplesPerFrame;
  retstr->var11 = 0;
  retstr->var12 = 0;
  retstr->var13 = self->_internalFormat.format.mChannelsPerFrame;
  retstr->var15 = 0;
  retstr->var16 = 0;
  retstr->var14 = 0;
  *&retstr->var17 = 0;
  retstr->var19.delegate = 0;
  retstr->var19.clientCallback = _VCAnsweringMachine_PullAudioSamples;
  retstr->var19.clientContext = self;
  *&retstr->var19.captionsToken = 0u;
  *&retstr->var19.injector = 0u;
  retstr->var20.clientCallback = _VCAnsweringMachine_PushAudioSamples;
  retstr->var20.clientContext = self;
  audioMachineLearningCoordinator = self->_realtimeContext.audioMachineLearningCoordinator;
  retstr->var20.captionsToken = self->_realtimeContext.audioToken;
  retstr->var20.audioMachineLearningCoordinator = audioMachineLearningCoordinator;
  retstr->var20.injector = 0;
  retstr->var21 = 0;
  *&retstr->var22 = 0;
  retstr->var24 = 0;
  retstr->var25 = 0;
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"parent=%p", self];
  retstr->var26 = result;
  retstr->var27 = 0;
  return result;
}

- (BOOL)configureAudioIO
{
  v23 = *MEMORY[0x1E69E9840];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19 = v3;
  v20 = v3;
  v17 = v3;
  v18 = v3;
  v15 = v3;
  v16 = v3;
  v13 = v3;
  v14 = v3;
  v11 = v3;
  v12 = v3;
  v9 = v3;
  v10 = v3;
  v7 = v3;
  v8 = v3;
  v6 = v3;
  if (self)
  {
    [(VCAnsweringMachine *)self defaultAudioIOConfiguration:v6];
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
  }

  v4 = [[VCAudioIO alloc] initWithConfiguration:&v6];
  self->_audioIO = v4;
  if (v4)
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    AUIOGetAUNumber(&v22);
    [(VCAudioIO *)self->_audioIO setFarEndVersionInfo:v21];
  }

  else
  {
    [(VCAnsweringMachine *)self configureAudioIO];
  }

  return v4 != 0;
}

- (id)newInjectorConfigurationForAnnouncementAsset:(id)asset
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(VCAudioInjectorConfig);
  if (v5)
  {
    -[VCAudioInjectorConfig setPath:](v5, "setPath:", [asset absoluteString]);
    [(VCAudioInjectorConfig *)v5 setFromBeginning:1];
    if (self)
    {
      [(VCAnsweringMachine *)self defaultAudioFormat];
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }

    v7[0] = v9;
    v7[1] = v10;
    v8 = v11;
    [(VCAudioInjectorConfig *)v5 setAudioFormat:v7];
    [(VCAudioInjectorConfig *)v5 setLoopCount:1];
    [(VCAudioInjectorConfig *)v5 setForceVoiceActive:1];
    [(VCAudioInjectorConfig *)v5 setReportingAgent:self->super.super._reportingAgent];
    [(VCAudioInjectorConfig *)v5 setStartHostTime:0.0];
  }

  else
  {
    [VCAnsweringMachine newInjectorConfigurationForAnnouncementAsset:?];
  }

  return v5;
}

- (void)cleanupAnnouncementAssetInjection
{
  p_realtimeContext = &self->_realtimeContext;

  p_realtimeContext->announcementAssetInjector = 0;
}

- (BOOL)setupAudioMachineLearningCoordinator
{
  v25 = *MEMORY[0x1E69E9840];
  if (![(AVCAnsweringMachineConfiguration *)self->_configuration isMessageCaptioningEnabled])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 1;
      }

      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      v15 = 136315650;
      v16 = v7;
      v17 = 2080;
      v18 = "[VCAnsweringMachine setupAudioMachineLearningCoordinator]";
      v19 = 1024;
      v20 = 734;
      v9 = " [%s] %s:%d Captions disabled";
      v10 = v8;
      v11 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCAnsweringMachine *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 1;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      v15 = 136316162;
      v16 = v12;
      v17 = 2080;
      v18 = "[VCAnsweringMachine setupAudioMachineLearningCoordinator]";
      v19 = 1024;
      v20 = 734;
      v21 = 2112;
      v22 = v6;
      v23 = 2048;
      selfCopy = self;
      v9 = " [%s] %s:%d %@(%p) Captions disabled";
      v10 = v13;
      v11 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
    return 1;
  }

  v3 = [[VCAudioMachineLearningCoordinator alloc] initWithOneToOneEnabled:1 isLocal:0 taskIdentifier:@"callscreeningcaptions" reportingAgent:[(VCObject *)self reportingAgent] delegate:0];
  p_realtimeContext = &self->_realtimeContext;
  self->_realtimeContext.audioMachineLearningCoordinator = v3;
  if (v3)
  {
    v5 = 1;
    [(VCAudioMachineLearningCoordinator *)v3 enableV2SpeechAPI:1];
    [(VCAudioMachineLearningCoordinator *)p_realtimeContext->audioMachineLearningCoordinator setLowPriorityThresholdSeconds:NAN];
  }

  else
  {
    [VCAnsweringMachine setupAudioMachineLearningCoordinator];
    return v15;
  }

  return v5;
}

- (void)cleanupAudioMachineLearningCoordinator
{
  p_realtimeContext = &self->_realtimeContext;

  p_realtimeContext->audioMachineLearningCoordinator = 0;
}

- (BOOL)setupMediaRecorder
{
  v35 = *MEMORY[0x1E69E9840];
  if (![(AVCAnsweringMachineConfiguration *)self->_configuration isMessageRecordingEnabled]|| !+[VCHardwareSettings isMediaRecordingSupported])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 1;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      v23 = 136315650;
      v24 = v9;
      v25 = 2080;
      v26 = "[VCAnsweringMachine setupMediaRecorder]";
      v27 = 1024;
      v28 = 762;
      v11 = " [%s] %s:%d Message recording disabled";
      v12 = v10;
      v13 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCAnsweringMachine *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 1;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      v23 = 136316162;
      v24 = v14;
      v25 = 2080;
      v26 = "[VCAnsweringMachine setupMediaRecorder]";
      v27 = 1024;
      v28 = 762;
      v29 = 2112;
      v30 = v8;
      v31 = 2048;
      selfCopy2 = self;
      v11 = " [%s] %s:%d %@(%p) Message recording disabled";
      v12 = v15;
      v13 = 48;
    }

    goto LABEL_26;
  }

  v3 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
  p_realtimeContext = &self->_realtimeContext;
  self->_realtimeContext.mediaRecorderRequesterID = v3;
  if (!v3)
  {
    [(VCAnsweringMachine *)&v23 setupMediaRecorder];
    return v23;
  }

  v5 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
  self->_realtimeContext.mediaRecorderTransactionID = v5;
  if (!v5)
  {
    [(VCAnsweringMachine *)&v23 setupMediaRecorder];
    return v23;
  }

  v6 = [[VCMediaRecorder alloc] initWithStreamToken:LODWORD(self->_realtimeContext.audioToken) delegate:0 reportingAgent:[(VCObject *)self reportingAgent]];
  self->_realtimeContext.mediaRecorder = v6;
  if (!v6)
  {
    [VCAnsweringMachine setupMediaRecorder];
    return v23;
  }

  [(VCMediaRecorder *)v6 setCapabilities:2];
  [(VCMediaRecorder *)self->_realtimeContext.mediaRecorder setMediaRecorderDelegate:self];
  [(VCMediaRecorder *)self->_realtimeContext.mediaRecorder registerClient];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 1;
    }

    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    mediaRecorder = p_realtimeContext->mediaRecorder;
    v23 = 136315906;
    v24 = v16;
    v25 = 2080;
    v26 = "[VCAnsweringMachine setupMediaRecorder]";
    v27 = 1024;
    v28 = 776;
    v29 = 2112;
    v30 = mediaRecorder;
    v11 = " [%s] %s:%d Successfully created mediaRecorder=%@";
    v12 = v17;
    v13 = 38;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCAnsweringMachine *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 1;
    }

    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v21 = self->_realtimeContext.mediaRecorder;
    v23 = 136316418;
    v24 = v19;
    v25 = 2080;
    v26 = "[VCAnsweringMachine setupMediaRecorder]";
    v27 = 1024;
    v28 = 776;
    v29 = 2112;
    v30 = v7;
    v31 = 2048;
    selfCopy2 = self;
    v33 = 2112;
    v34 = v21;
    v11 = " [%s] %s:%d %@(%p) Successfully created mediaRecorder=%@";
    v12 = v20;
    v13 = 58;
  }

LABEL_26:
  _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, &v23, v13);
  return 1;
}

- (void)cleanupMediaRecorder
{
  p_realtimeContext = &self->_realtimeContext;

  p_realtimeContext->mediaRecorderRequesterID = 0;
  p_realtimeContext->mediaRecorderTransactionID = 0;

  p_realtimeContext->mediaRecorder = 0;
}

- (void)stopMediaRecording
{
  v7 = *MEMORY[0x1E69E9840];
  p_realtimeContext = &self->_realtimeContext;
  v4[0] = @"vcMomentsTransactionID";
  v4[1] = @"vcMomentsInitiatorID";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_realtimeContext.sinkCommonContext.latestTimestamp, @"vcMomentsTransactionID", @"vcMomentsInitiatorID", @"vcMomentsRequestMode", @"vcMomentsRequestState", @"vcMomentsMediaType", @"vcMomentsRequestTimestamp", vextq_s8(*&self->_realtimeContext.mediaRecorderRequesterID, *&self->_realtimeContext.mediaRecorderRequesterID, 8uLL), &unk_1F5799600, &unk_1F5799618, &unk_1F5799630}];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v5 forKeys:v4 count:6];
  reportingGenericEvent();
  [(VCMediaRecorder *)p_realtimeContext->mediaRecorder processRequest:v3];
  VCMediaRecorder_ClearHistoryBuffer(p_realtimeContext->mediaRecorder);
  VCMediaRecorder_StopProcessingAllRequests(p_realtimeContext->mediaRecorder);
  p_realtimeContext->sinkCommonContext.flags &= ~0x20u;
}

- (void)streamToken:(int64_t)token didEndProcessingRequest:(id)request urlContext:(const tagVCMediaRecorderDelegateURLContext *)context error:(id)error
{
  v8[7] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  var1 = context->var1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__VCAnsweringMachine_streamToken_didEndProcessingRequest_urlContext_error___block_invoke;
  v8[3] = &unk_1E85F3E30;
  v8[4] = self;
  v8[5] = error;
  v8[6] = var1;
  dispatch_async(dispatchQueue, v8);
}

void __75__VCAnsweringMachine_streamToken_didEndProcessingRequest_urlContext_error___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 401) & 1) == 0)
  {
    reportingGenericEvent();
    v2 = *(a1 + 32);
    v3 = *(*(a1 + 32) + 192);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __75__VCAnsweringMachine_streamToken_didEndProcessingRequest_urlContext_error___block_invoke_2;
    v4[3] = &unk_1E85F3E30;
    v5 = v2;
    v6 = *(a1 + 48);
    dispatch_async(v3, v4);
  }
}

- (void)didChangeThermalLevel:(int)level
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"Thermal";
  v4[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&level];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  reportingGenericEvent();
}

void ___VCAnsweringMachine_DispatchFinishAnnouncementNotice_block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 48);
        v6 = *(a1 + 40);
        *buf = 136316162;
        v28 = v3;
        v29 = 2080;
        v30 = "_VCAnsweringMachine_DispatchFinishAnnouncementNotice_block_invoke";
        v31 = 1024;
        v32 = 704;
        v33 = 1024;
        *v34 = v5;
        *&v34[4] = 2112;
        *&v34[6] = v6;
        v7 = " [%s] %s:%d didFinishAnnouncement=%{BOOL}d, error=%@";
        v8 = v4;
        v9 = 44;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
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

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 48);
        v13 = *(a1 + 32);
        v14 = *(a1 + 40);
        *buf = 136316674;
        v28 = v10;
        v29 = 2080;
        v30 = "_VCAnsweringMachine_DispatchFinishAnnouncementNotice_block_invoke";
        v31 = 1024;
        v32 = 704;
        v33 = 2112;
        *v34 = v2;
        *&v34[8] = 2048;
        *&v34[10] = v13;
        v35 = 1024;
        v36 = v12;
        v37 = 2112;
        v38 = v14;
        v7 = " [%s] %s:%d %@(%p) didFinishAnnouncement=%{BOOL}d, error=%@";
        v8 = v11;
        v9 = 64;
        goto LABEL_11;
      }
    }
  }

  v15 = *(a1 + 32);
  if ((*(v15 + 401) & 1) == 0)
  {
    v16 = *(v15 + 192);
    v17 = *(v15 + 184);
    if (v17)
    {
      v18 = v16 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      if (objc_opt_class() == *(a1 + 32))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            ___VCAnsweringMachine_DispatchFinishAnnouncementNotice_block_invoke_cold_1();
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v19 = [*(a1 + 32) performSelector:sel_logPrefix];
        }

        else
        {
          v19 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v22 = VRTraceErrorLogLevelToCSTR();
          v23 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v24 = *(a1 + 32);
            *buf = 136316162;
            v28 = v22;
            v29 = 2080;
            v30 = "_VCAnsweringMachine_DispatchFinishAnnouncementNotice_block_invoke";
            v31 = 1024;
            v32 = 713;
            v33 = 2112;
            *v34 = v19;
            *&v34[8] = 2048;
            *&v34[10] = v24;
            _os_log_error_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) delegate or delegateQueue invalid, NOT sending didFinishAnnouncement notice to client", buf, 0x30u);
          }
        }
      }
    }

    else
    {
      v20 = *(a1 + 40);
      reportingGenericEvent();
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = ___VCAnsweringMachine_DispatchFinishAnnouncementNotice_block_invoke_246;
      v25[3] = &unk_1E85F5E38;
      v21 = *(a1 + 32);
      v25[4] = v17;
      v25[5] = v21;
      v26 = *(a1 + 48);
      v25[6] = v20;
      dispatch_async(v16, v25);
    }
  }
}

uint64_t ___VCAnsweringMachine_StartMediaRecording_block_invoke(uint64_t result)
{
  v6 = *MEMORY[0x1E69E9840];
  if ((*(*(result + 32) + 401) & 1) == 0)
  {
    v1 = result;
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{*(result + 56), @"vcMomentsTransactionID", @"vcMomentsInitiatorID", @"vcMomentsRequestMode", @"vcMomentsRequestState", @"vcMomentsMediaType", @"vcMomentsRequestTimestamp", *(result + 40), *(result + 48), &unk_1F5799600, &unk_1F5799600, &unk_1F5799630}];
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v4 forKeys:&v3 count:6];
    reportingGenericEvent();
    return [*(*(v1 + 32) + 264) processRequest:v2];
  }

  return result;
}

- (BOOL)setUpInternalStateWithConfiguration:(id)configuration
{
  self->_configuration = configuration;
  ID = VCUniqueIDGenerator_GenerateID();
  v5 = [(VCAnsweringMachine *)self setupReportingAgentWithCallID:ID];
  if (v5)
  {
    self->_deviceRole = [(VCAnsweringMachine *)self deviceRoleForCallSource:[(AVCAnsweringMachineConfiguration *)self->_configuration source]];
    [(VCAnsweringMachine *)self setupInternalFormat];
    if ([(VCAnsweringMachine *)self setUpRealtimeContextWithToken:ID])
    {
      if ([(VCAnsweringMachine *)self configureAudioIO])
      {
        LOBYTE(v5) = 1;
        return v5;
      }

      if (objc_opt_class() != self)
      {
        if (OUTLINED_FUNCTION_28_0())
        {
          OUTLINED_FUNCTION_6_1();
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_25;
        }

        VRTraceErrorLogLevelToCSTR();
        v5 = OUTLINED_FUNCTION_40();
        if (!v5)
        {
          return v5;
        }

        goto LABEL_23;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v5 = OUTLINED_FUNCTION_34();
        if (!v5)
        {
          return v5;
        }

LABEL_17:
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_0();
LABEL_24:
        _os_log_error_impl(v6, v7, v8, v9, v10, v11);
      }
    }

    else
    {
      if (objc_opt_class() != self)
      {
        if (OUTLINED_FUNCTION_28_0())
        {
          OUTLINED_FUNCTION_6_1();
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_25;
        }

        VRTraceErrorLogLevelToCSTR();
        v5 = OUTLINED_FUNCTION_40();
        if (!v5)
        {
          return v5;
        }

LABEL_23:
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_3_1();
        goto LABEL_24;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v5 = OUTLINED_FUNCTION_34();
        if (!v5)
        {
          return v5;
        }

        goto LABEL_17;
      }
    }

LABEL_25:
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)setUpAnnouncementAsset:(id)asset isInitialAsset:(BOOL)initialAsset
{
  OUTLINED_FUNCTION_40_0();
  if (!v5)
  {
    v12 = 0;
    goto LABEL_8;
  }

  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = [v4 newInjectorConfigurationForAnnouncementAsset:?];
  if (!v10)
  {
    goto LABEL_21;
  }

  v11 = v10;
  v12 = [[VCAudioInjector alloc] initWithConfig:v10];

  if (!v12)
  {
    if (objc_opt_class() == v9)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_21;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_34())
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [v9 performSelector:sel_logPrefix];
      }

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
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_3_1();
    }

    _os_log_error_impl(v15, v16, v17, v18, v19, v20);
LABEL_21:
    v12 = 0;
    goto LABEL_8;
  }

  LODWORD(v13) = vcvtpd_u64_f64([v9[38] announcementAssetMilliSecondDelay] / 1000.0 * 50.0);
  if (v7)
  {
    *(v9 + 55) = v13;
    v9[26] = v12;
LABEL_7:
    [v9[38] setAnnouncementAsset:v8];
    goto LABEL_8;
  }

  if ([v9 enqueueInjectorAsset:v12 blocksToDelay:v13])
  {
    goto LABEL_7;
  }

  if (objc_opt_class() == v9)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_8;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_31:
    _os_log_error_impl(v21, v22, v23, v24, v25, v26);
    goto LABEL_8;
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
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_31;
    }
  }

LABEL_8:

  OUTLINED_FUNCTION_39_0();
  return result;
}

- (void)setUpConfigurationIndependentInternalState
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

- (void)initWithConfiguration:(uint64_t)a1 delegate:delegateQueue:.cold.1(uint64_t a1)
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

- (void)initWithConfiguration:(uint64_t)a1 delegate:delegateQueue:.cold.2(uint64_t a1)
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

- (void)initWithConfiguration:(uint64_t)a1 delegate:delegateQueue:.cold.3(uint64_t a1)
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

- (void)initWithConfiguration:(uint64_t)a1 delegate:delegateQueue:.cold.4(uint64_t a1)
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

- (void)initWithConfiguration:delegate:delegateQueue:.cold.5()
{
  if (!objc_opt_class())
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
    _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [0 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_2();
      v5 = 48;
      goto LABEL_11;
    }
  }
}

- (void)initWithConfiguration:(void *)a1 delegate:(uint64_t)a2 delegateQueue:.cold.6(void *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_10();
    v15 = v5;
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_29();
    v16 = a2;
    v6 = &dword_1DB56E000;
    v7 = " [%s] %s:%d VCAnsweringMachine-init FAILED with configuration=%@";
    v8 = &v14;
    v9 = v4;
    v10 = OS_LOG_TYPE_ERROR;
    v11 = 38;
LABEL_11:
    _os_log_error_impl(v6, v9, v10, v7, v8, v11);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      v15 = v12;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_7();
      v17 = 2048;
      v18 = a1;
      v19 = v13;
      v20 = a2;
      OUTLINED_FUNCTION_17_0();
      v11 = 58;
      goto LABEL_11;
    }
  }

LABEL_9:
}

void __27__VCAnsweringMachine_start__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __26__VCAnsweringMachine_stop__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setUpEventQueue
{
  OUTLINED_FUNCTION_40_0();
  if (objc_opt_class() == v0)
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

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_2();
    v6 = 34;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
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
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_28_3();
      OUTLINED_FUNCTION_17_0();
      v6 = 54;
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_39_0();
}

- (void)enqueueInjectorAsset:blocksToDelay:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
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

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
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
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)onStart
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  v5 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d AudioIO start failed. error=%@", v3, 0x26u);
}

- (void)onStop
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
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
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_2();
    v6 = 38;
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
      OUTLINED_FUNCTION_4_7();
      OUTLINED_FUNCTION_28_3();
      OUTLINED_FUNCTION_17_0();
      v6 = 58;
      goto LABEL_11;
    }
  }
}

void __43__VCAnsweringMachine_addAnnouncementAsset___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupReportingAgentWithCallID:.cold.1()
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

void __52__VCAnsweringMachine_setupReportingAgentWithCallID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setUpRealtimeContextWithToken:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
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

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
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
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)setUpRealtimeContextWithToken:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
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

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
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
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)setUpRealtimeContextWithToken:.cold.3()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
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

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
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
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)configureAudioIO
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

- (void)newInjectorConfigurationForAnnouncementAsset:(uint64_t)a1 .cold.1(uint64_t a1)
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

- (void)setupAudioMachineLearningCoordinator
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
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

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
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
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)setupMediaRecorder
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    }
  }

  *self = 0;
}

void ___VCAnsweringMachine_DispatchFinishAnnouncementNotice_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

@end