@interface AVVoiceController
- (AVVoiceControllerRecordDelegate)recordDelegate;
- (BOOL)IsDeviceAvailableInLocalRoute:(id)route error:(id *)error;
- (BOOL)activateAudioSessionForStream:(unint64_t)stream isPrewarm:(BOOL)prewarm error:(id *)error;
- (BOOL)activateAudioSessionForStream:(unint64_t)stream isPrewarm:(BOOL)prewarm recordMode:(BOOL)mode error:(id *)error;
- (BOOL)configureAlertBehaviorForStream:(id)stream error:(id *)error;
- (BOOL)enableSmartRoutingConsiderationForStream:(unint64_t)stream enable:(BOOL)enable error:(id *)error;
- (BOOL)isDuckingSupportedOnPickedRouteForStream:(unint64_t)stream error:(id *)error;
- (BOOL)isMeteringEnabledForStream:(unint64_t)stream;
- (BOOL)playAlertSoundForType:(int)type overrideMode:(int64_t)mode;
- (BOOL)prepareRecordForStream:(id)stream error:(id *)error;
- (BOOL)setAlertSoundFromURL:(id)l forType:(int)type;
- (BOOL)setAnnounceCallsEnabledForStream:(unint64_t)stream enable:(BOOL)enable;
- (BOOL)setContextForStream:(id)stream forStream:(unint64_t)forStream error:(id *)error;
- (BOOL)setDuckOthersForStream:(unint64_t)stream withSettings:(id)settings error:(id *)error;
- (BOOL)setEnableInterruptionByRecordingClientsForStream:(unint64_t)stream enable:(BOOL)enable error:(id *)error;
- (BOOL)setRecordModeForStream:(unint64_t)stream recordMode:(int64_t)mode error:(id *)error;
- (BOOL)startRecordForStream:(id)stream error:(id *)error;
- (BOOL)stopRecordForStream:(unint64_t)stream error:(id *)error;
- (BOOL)updateMeterForStream:(unint64_t)stream;
- (Endpointer)endpointerDelegate;
- (NSDictionary)metrics;
- (double)getRecordBufferDurationForStream:(unint64_t)stream;
- (double)recordEndWaitTime;
- (double)recordInterspeechWaitTime;
- (double)recordStartWaitTime;
- (float)alertVolume;
- (float)getAveragePowerForStream:(unint64_t)stream forChannel:(unint64_t)channel;
- (float)getPeakPowerForStream:(unint64_t)stream forChannel:(unint64_t)channel;
- (id)getPlaybackRouteForStream:(unint64_t)stream withError:(id *)error;
- (id)getRecordDeviceInfoForStream:(unint64_t)stream;
- (id)getRecordSettingsForStream:(unint64_t)stream;
- (id)initVoiceControllerForClient:(int64_t)client withError:(id *)error;
- (id)mockPluginEndpoint;
- (int)recordEndpointMode;
- (int64_t)_bringUp:(int64_t)up withError:(id *)error;
- (int64_t)getCurrentSessionState;
- (int64_t)getCurrentSessionStateForStream:(unint64_t)stream;
- (int64_t)getCurrentStreamState:(unint64_t)state;
- (int64_t)getRecordModeForStream:(unint64_t)stream;
- (shared_ptr<ControllerImpl>)impl;
- (unint64_t)getAlertStartTime;
- (unint64_t)setContext:(id)context error:(id *)error;
- (unint64_t)setContext:(id)context streamType:(int64_t *)type error:(id *)error;
- (void)_teardownWithError:(id *)error;
- (void)alertPlaybackFinishedWithSettings:(id)settings;
- (void)beganRecording:(unint64_t)recording status:(int)status;
- (void)beginRecordInterruptionWithContext:(id)context;
- (void)cleanSlateWithError:(id *)error;
- (void)configureAlertBehaviorForStream:(id)stream completion:(id)completion;
- (void)configureVoiceTriggerClientCompletionBlocks;
- (void)deactivateAudioSessionForStream:(unint64_t)stream withOptions:(unint64_t)options completion:(id)completion;
- (void)deactivateAudioSessionForStream:(unint64_t)stream withOptions:(unint64_t)options error:(id *)error;
- (void)deactivateAudioSessionWithOptions:(unint64_t)options;
- (void)dealloc;
- (void)enableMiniDucking:(BOOL)ducking;
- (void)enableTriangleModeForStream:(unint64_t)stream enable:(BOOL)enable withCompletion:(id)completion;
- (void)encodeError:(int)error;
- (void)endRecordInterruption;
- (void)endpointDetectedAtTime:(double)time;
- (void)finalize;
- (void)finishedRecording:(unint64_t)recording status:(int)status;
- (void)getDeviceLatenciesForStream:(unint64_t)stream withCompletion:(id)completion;
- (void)getInputChannelInfoForStream:(unint64_t)stream completion:(id)completion;
- (void)getPlaybackRouteForStream:(unint64_t)stream withCompletion:(id)completion;
- (void)handleInterruption:(id)interruption;
- (void)handleMediaServerDeath:(id)death;
- (void)handleMediaServerReset:(id)reset;
- (void)handlePluginDidPublishDevice:(id)device withDevice:(id)withDevice;
- (void)handlePluginDidUnpublishDevice:(id)device withDevice:(id)withDevice;
- (void)handleRouteChange:(id)change;
- (void)interspeechPointDetectedAtTime:(double)time;
- (void)notifyEventOccured:(unint64_t)occured error:(id)error;
- (void)notifyStreamInvalidated:(unint64_t)invalidated;
- (void)playAlert:(int)alert withOverride:(int64_t)override completion:(id)completion;
- (void)prepareRecordForStream:(id)stream completion:(id)completion;
- (void)removeSessionNotifications:(id)notifications;
- (void)removeStream:(unint64_t)stream completion:(id)completion;
- (void)sessionCleanup;
- (void)sessionSetup;
- (void)setAlertVolume:(float)volume;
- (void)setContext:(id)context completion:(id)completion;
- (void)setEndpointerDelegate:(id)delegate;
- (void)setRecordDelegate:(id)delegate;
- (void)setRecordEndWaitTime:(double)time;
- (void)setRecordEndpointMode:(int)mode;
- (void)setRecordInterspeechWaitTime:(double)time;
- (void)setRecordStartWaitTime:(double)time;
- (void)setRecordStatusChangeBlock:(id)block;
- (void)setSessionNotifications:(id)notifications;
- (void)startKeepAliveQueueForStream:(unint64_t)stream completion:(id)completion;
- (void)startRecordForStream:(id)stream completion:(id)completion;
- (void)startRecordWithSettings:(id)settings completion:(id)completion alertCompletion:(id)alertCompletion audioCallback:(id)callback;
- (void)startpointDetected;
- (void)stopKeepAliveQueueForStream:(unint64_t)stream completion:(id)completion;
- (void)stopRecordForStream:(unint64_t)stream completion:(id)completion;
- (void)teardownWithError:(id *)error;
@end

@implementation AVVoiceController

- (shared_ptr<ControllerImpl>)impl
{
  impl = self->_impl;
  *v2 = 0;
  v2[1] = 0;
  if (impl)
  {
    v5 = *impl;
    v4 = impl[1];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    *v2 = v5;
    v2[1] = v4;
  }

  result.var1 = a2;
  result.var0 = self;
  return result;
}

- (int64_t)getCurrentSessionState
{
  v19 = *MEMORY[0x1E69E9840];
  [(AVVoiceController *)self impl];
  if (v9 && !self->mClientAPIClutch)
  {
    AVVCSessionState = ControllerImpl::getAVVCSessionState(v9, 0);
    goto LABEL_12;
  }

  if (!kAVVCScope)
  {
    v3 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
    goto LABEL_8;
  }

  v3 = *kAVVCScope;
  if (v3)
  {
LABEL_8:
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v12 = "AVVoiceController.mm";
      v13 = 1024;
      v14 = 1611;
      v15 = 2048;
      v16 = v9;
      v17 = 1024;
      v18 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  AVVCSessionState = 0;
LABEL_12:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v7 = *MEMORY[0x1E69E9840];
  return AVVCSessionState;
}

- (id)mockPluginEndpoint
{
  v18 = *MEMORY[0x1E69E9840];
  [(AVVoiceController *)self impl];
  if (v8 && !self->mClientAPIClutch)
  {
    mockPluginEndpoint = [*(v8 + 464) mockPluginEndpoint];
    goto LABEL_11;
  }

  if (kAVVCScope)
  {
    mockPluginEndpoint = *kAVVCScope;
    if (!mockPluginEndpoint)
    {
      goto LABEL_11;
    }
  }

  else
  {
    mockPluginEndpoint = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(mockPluginEndpoint, OS_LOG_TYPE_ERROR))
  {
    mClientAPIClutch = self->mClientAPIClutch;
    *buf = 136315906;
    v11 = "AVVoiceController.mm";
    v12 = 1024;
    v13 = 1940;
    v14 = 2048;
    v15 = v8;
    v16 = 1024;
    v17 = mClientAPIClutch;
    _os_log_impl(&dword_1BA5AC000, mockPluginEndpoint, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
  }

  mockPluginEndpoint = 0;
LABEL_11:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v6 = *MEMORY[0x1E69E9840];

  return mockPluginEndpoint;
}

- (BOOL)setEnableInterruptionByRecordingClientsForStream:(unint64_t)stream enable:(BOOL)enable error:(id *)error
{
  enableCopy = enable;
  v27 = *MEMORY[0x1E69E9840];
  ElapsedTime::ElapsedTime(v26, "[AVVoiceController setEnableInterruptionByRecordingClientsForStream:enable:error:]", 0, 0);
  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    *&buf[4] = "AVVoiceController.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1909;
    *&buf[18] = 2048;
    *&buf[20] = self;
    v22 = 2048;
    streamCopy = stream;
    v24 = 1024;
    v25 = enableCopy;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: setEnableInterruptionByRecordingClientForStream: streamHandle(%lu) enable(%d)", buf, 0x2Cu);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *&buf[24] = 0;
  if (v19 && !self->mClientAPIClutch)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3321888768;
    v15[2] = __83__AVVoiceController_setEnableInterruptionByRecordingClientsForStream_enable_error___block_invoke;
    v15[3] = &unk_1F384CFB0;
    v15[4] = buf;
    v15[5] = v19;
    v16 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    streamCopy2 = stream;
    v18 = enableCopy;
    ControllerImpl::safeWork(v19, v15, "[AVVoiceController setEnableInterruptionByRecordingClientsForStream:enable:error:]");
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  else
  {
    *&buf[24] = -11780;
  }

  v11 = *(*&buf[8] + 24);
  v12 = v11;
  if (error && v11)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v11 userInfo:0];
  }

  _Block_object_dispose(buf, 8);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  ElapsedTime::~ElapsedTime(v26);
  v13 = *MEMORY[0x1E69E9840];
  return v12 == 0;
}

void __83__AVVoiceController_setEnableInterruptionByRecordingClientsForStream_enable_error___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v16, *(*(a1 + 40) + 8), *(*(a1 + 40) + 16));
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  ControllerImpl::_lookupEngineForStreamID(&v10, *(v16 + 576), *(v16 + 584), v2);
  v4 = v10;
  if (!v10)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
LABEL_13:
        *(v13 + 6) = -11793;
        v5 = v11;
        goto LABEL_14;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 6912;
      *&buf[18] = 2048;
      *&buf[20] = v2;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d setPrefersBeingInterruptedByNextActiveRecordingClient: Cannot find recording engine for streamID(%lu). Returning.", buf, 0x1Cu);
    }

    goto LABEL_13;
  }

  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3321888768;
  *&buf[16] = ___ZN14ControllerImpl48setEnableInterruptionByRecordingClientsForStreamEmb_block_invoke;
  *&buf[24] = &unk_1F384DEA0;
  v5 = v11;
  v20 = v10;
  v21 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = v3;
  v19 = &v12;
  (*(*v4 + 328))(v4, buf, "setEnableInterruptionByRecordingClientsForStream");
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

LABEL_14:
  v8 = *(v13 + 6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Block_object_dispose(&v12, 8);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  *(*(*(a1 + 32) + 8) + 24) = v8;
  v9 = *MEMORY[0x1E69E9840];
}

- (void)getDeviceLatenciesForStream:(unint64_t)stream withCompletion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  ElapsedTime::ElapsedTime(v26, "[AVVoiceController getDeviceLatenciesForStream:withCompletion:]", 0, 0);
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = _Block_copy(completionCopy);
    *buf = 136316162;
    *&buf[4] = "AVVoiceController.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1894;
    v20 = 2048;
    selfCopy = self;
    v22 = 2048;
    streamCopy = stream;
    v24 = 2048;
    v25 = v10;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: getDeviceLatenciesForStream: streamHandle(%lu), completionBlock(%p)", buf, 0x30u);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  v11 = *buf;
  if (*buf && !self->mClientAPIClutch)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3321888768;
    v14[2] = __64__AVVoiceController_getDeviceLatenciesForStream_withCompletion___block_invoke;
    v14[3] = &unk_1F3848BA0;
    v16 = *buf;
    v17 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
    }

    streamCopy2 = stream;
    v15 = completionCopy;
    ControllerImpl::safeWork(v11, v14, "[AVVoiceController getDeviceLatenciesForStream:withCompletion:]");

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  else if (completionCopy)
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11780 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v12);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  ElapsedTime::~ElapsedTime(v26);

  v13 = *MEMORY[0x1E69E9840];
}

void __64__AVVoiceController_getDeviceLatenciesForStream_withCompletion___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 56);
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v35, *(v2 + 8), *(v2 + 16));
  v4 = ControllerImpl::sessionManagerForStreamID(v35, v1, 0);
  if ([v4 sessionState] != 7)
  {
    if (kAVVCScope)
    {
      v27 = *kAVVCScope;
      if (!v27)
      {
LABEL_12:
        [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11782 userInfo:0];
        *&v26 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v25 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v27 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 6888;
      *&buf[18] = 2048;
      *&buf[20] = v1;
      _os_log_impl(&dword_1BA5AC000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d getDeviceLatencies: Session for streamID(%lu) is not active !!!.", buf, 0x1Cu);
    }

    goto LABEL_12;
  }

  [v4 inputLatency];
  v6 = v5;
  [v4 outputLatency];
  v8 = v7;
  [v4 inputSafetyOffset];
  v10 = v9;
  [v4 outputSafetyOffset];
  v12 = v11;
  v13 = v6;
  v14 = MEMORY[0x1E695DF20];
  *&v11 = v13;
  v15 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  v16 = v8;
  *&v17 = v16;
  v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
  v19 = v10;
  *&v20 = v19;
  v21 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
  v22 = v12;
  *&v23 = v22;
  v24 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
  v25 = [v14 dictionaryWithObjectsAndKeys:{v15, @"AVVCCurrentInputDeviceLatency", v18, @"AVVCCurrentOutputDeviceLatency", v21, @"AVVCCurrentInputSafetyOffset", v24, @"AVVCCurrentOutputSafetyOffset", 0}];

  if (kAVVCScope)
  {
    *&v26 = COERCE_DOUBLE(*kAVVCScope);
    if (*&v26 == 0.0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    *&v26 = MEMORY[0x1E69E9C10];
    v29 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316674;
    *&buf[4] = "ControllerImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 6885;
    *&buf[18] = 2048;
    *&buf[20] = v1;
    *&buf[28] = 2048;
    *&buf[30] = v13;
    *&buf[38] = 2048;
    v38 = v16;
    *v39 = 2048;
    *&v39[2] = v19;
    v40 = 2048;
    v41 = v22;
    _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d getDeviceLatencies: streamID(%lu) : input Latency(%f), output latency(%f), input safety offset (%f), output safety offset (%f)", buf, 0x44u);
  }

  *&v26 = 0.0;
LABEL_17:
  v30 = v35;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZN14ControllerImpl18getDeviceLatenciesEmU13block_pointerFvP12NSDictionaryP7NSErrorE_block_invoke;
  *&buf[24] = &unk_1E7EF6878;
  v31 = v3;
  v38 = *&v26;
  *v39 = v31;
  *&buf[32] = v25;
  v32 = v26;
  v33 = v25;
  ControllerImpl::safeNotifyAlwaysAsync(v30, v3 != 0, buf);

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)stopKeepAliveQueueForStream:(unint64_t)stream completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  ElapsedTime::ElapsedTime(v25, "[AVVoiceController stopKeepAliveQueueForStream:completion:]", 0, 0);
  [(AVVoiceController *)self impl];
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = _Block_copy(completionCopy);
    *buf = 136316162;
    v16 = "AVVoiceController.mm";
    v17 = 1024;
    v18 = 1882;
    v19 = 2048;
    selfCopy = self;
    v21 = 2048;
    streamCopy = stream;
    v23 = 2048;
    v24 = v10;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: stopKeepAliveQueueForStream: streamHandle(%lu) completion(%p)", buf, 0x30u);
  }

LABEL_8:
  if (v13 && !self->mClientAPIClutch)
  {
    ControllerImpl::stopKeepAliveQueueForStream(v13, stream, completionCopy);
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11780 userInfo:0];
    (*(completionCopy + 2))(completionCopy, stream, 0, v11);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  ElapsedTime::~ElapsedTime(v25);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)startKeepAliveQueueForStream:(unint64_t)stream completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  ElapsedTime::ElapsedTime(v25, "[AVVoiceController startKeepAliveQueueForStream:completion:]", 0, 0);
  [(AVVoiceController *)self impl];
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = _Block_copy(completionCopy);
    *buf = 136316162;
    v16 = "AVVoiceController.mm";
    v17 = 1024;
    v18 = 1869;
    v19 = 2048;
    selfCopy = self;
    v21 = 2048;
    streamCopy = stream;
    v23 = 2048;
    v24 = v10;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: startKeepAliveQueueForStream: streamHandle(%lu) completion(%p)", buf, 0x30u);
  }

LABEL_8:
  if (v13 && !self->mClientAPIClutch)
  {
    ControllerImpl::startKeepAliveQueueForStream(v13, stream, completionCopy);
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11780 userInfo:0];
    (*(completionCopy + 2))(completionCopy, stream, 0, v11);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  ElapsedTime::~ElapsedTime(v25);

  v12 = *MEMORY[0x1E69E9840];
}

- (id)getPlaybackRouteForStream:(unint64_t)stream withError:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = 0;
  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "AVVoiceController.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1853;
    *&buf[18] = 2048;
    *&buf[20] = stream;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ### getPlaybackRouteForStream:withError: streamHandle(%lu)", buf, 0x1Cu);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  if (!v17 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
LABEL_20:
        v12 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      *&buf[4] = "AVVoiceController.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1855;
      *&buf[18] = 2048;
      *&buf[20] = v17;
      *&buf[28] = 1024;
      *&buf[30] = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_20;
  }

  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZN14ControllerImpl16getPlaybackRouteEPU8__strongP8NSStringm_block_invoke;
  *&buf[24] = &__block_descriptor_56_e41_v16__0__NSObject_OS_dispatch_semaphore__8l;
  *&buf[32] = v17;
  streamCopy = stream;
  v22 = &v19;
  makeSynchronous(buf);
  if (!kAVVCScope)
  {
    v9 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
    goto LABEL_22;
  }

  v9 = *kAVVCScope;
  if (v9)
  {
LABEL_22:
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "AVVoiceController.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1860;
      *&buf[18] = 2112;
      *&buf[20] = v19;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Playback route: %@", buf, 0x1Cu);
    }
  }

  v12 = v19;
LABEL_26:
  v14 = v12;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    v14 = v19;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)getPlaybackRouteForStream:(unint64_t)stream withCompletion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  ElapsedTime::ElapsedTime(v23, "[AVVoiceController getPlaybackRouteForStream:withCompletion:]", 0, 0);
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = _Block_copy(completionCopy);
    *buf = 136315906;
    *&buf[4] = "AVVoiceController.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1834;
    v19 = 2048;
    streamCopy = stream;
    v21 = 2048;
    v22 = v10;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ### getPlaybackRouteForStream: streamHandle(%lu) completionBlock(%p)", buf, 0x26u);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  v11 = *buf;
  if (*buf && !self->mClientAPIClutch)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3321888768;
    v13[2] = __62__AVVoiceController_getPlaybackRouteForStream_withCompletion___block_invoke;
    v13[3] = &unk_1F3848BA0;
    v15 = *buf;
    v16 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
    }

    streamCopy2 = stream;
    v14 = completionCopy;
    ControllerImpl::safeWork(v11, v13, "[AVVoiceController getPlaybackRouteForStream:withCompletion:]");

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  ElapsedTime::~ElapsedTime(v23);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)enableTriangleModeForStream:(unint64_t)stream enable:(BOOL)enable withCompletion:(id)completion
{
  enableCopy = enable;
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  ElapsedTime::ElapsedTime(v25, "[AVVoiceController enableTriangleModeForStream:enable:withCompletion:]", 0, 0);
  [(AVVoiceController *)self impl];
  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v16 = "AVVoiceController.mm";
    v17 = 1024;
    v18 = 1822;
    v19 = 2048;
    selfCopy = self;
    v21 = 2048;
    streamCopy = stream;
    v23 = 1024;
    v24 = enableCopy;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: enableTriangleModeForStream: streamHandle(%lu), opt value : %d", buf, 0x2Cu);
  }

LABEL_8:
  if (v13 && !self->mClientAPIClutch)
  {
    ControllerImpl::enableTriangleModeForStream(v13, stream, enableCopy, completionCopy);
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11780 userInfo:0];
    (*(completionCopy + 2))(completionCopy, stream, 0, v11);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  ElapsedTime::~ElapsedTime(v25);

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)isDuckingSupportedOnPickedRouteForStream:(unint64_t)stream error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  ElapsedTime::ElapsedTime(v30, "[AVVoiceController isDuckingSupportedOnPickedRouteForStream:error:]", 0, 0);
  [(AVVoiceController *)self impl];
  v7 = v20;
  if (!v20 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
LABEL_13:
        v12 = 0;
        isDuckingSupportedOnPickedRouteForStream = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v23 = "AVVoiceController.mm";
      v24 = 1024;
      v25 = 1807;
      v26 = 2048;
      selfCopy = v20;
      v28 = 1024;
      LODWORD(streamCopy) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_13;
  }

  if (!kAVVCScope)
  {
    v9 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
    goto LABEL_15;
  }

  v9 = *kAVVCScope;
  if (v9)
  {
LABEL_15:
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v23 = "AVVoiceController.mm";
      v24 = 1024;
      v25 = 1808;
      v26 = 2048;
      selfCopy = self;
      v28 = 2048;
      streamCopy = stream;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: isDuckingSupportedOnPickedRouteForStream: streamHandle(%lu)", buf, 0x26u);
    }

    v7 = v20;
  }

  v19 = 0;
  isDuckingSupportedOnPickedRouteForStream = ControllerImpl::isDuckingSupportedOnPickedRouteForStream(v7, stream, &v19);
  v15 = v19;
  v12 = v15;
  if (error)
  {
    v16 = v15;
    *error = v12;
  }

LABEL_20:
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  ElapsedTime::~ElapsedTime(v30);
  v17 = *MEMORY[0x1E69E9840];
  return isDuckingSupportedOnPickedRouteForStream;
}

- (BOOL)setDuckOthersForStream:(unint64_t)stream withSettings:(id)settings error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  ElapsedTime::ElapsedTime(v33, "[AVVoiceController setDuckOthersForStream:withSettings:error:]", 0, 0);
  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v24 = "AVVoiceController.mm";
    v25 = 1024;
    v26 = 1791;
    v27 = 2048;
    selfCopy = self;
    v29 = 2048;
    streamCopy = stream;
    v31 = 2112;
    v32 = settingsCopy;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: setDuckOthersForStream: streamHandle(%lu), duckSettings(%@)", buf, 0x30u);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  if (!v21 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v11 = *kAVVCScope;
      if (!v11)
      {
LABEL_19:
        v14 = 0;
        v12 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v24 = "AVVoiceController.mm";
      v25 = 1024;
      v26 = 1793;
      v27 = 2048;
      selfCopy = v21;
      v29 = 1024;
      LODWORD(streamCopy) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_19;
  }

  v20 = 0;
  v12 = ControllerImpl::setDuckOthersForStream(v21, stream, settingsCopy, &v20);
  v13 = v20;
  v14 = v13;
  if (error)
  {
    v15 = v13;
    *error = v14;
  }

LABEL_20:
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  ElapsedTime::~ElapsedTime(v33);
  v18 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)getInputChannelInfoForStream:(unint64_t)stream completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  [(AVVoiceController *)self impl];
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v14 = "AVVoiceController.mm";
    v15 = 1024;
    v16 = 1776;
    v17 = 2048;
    selfCopy = self;
    v19 = 2048;
    streamCopy = stream;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: getInputChannelInfoForStream: streamHandle(%lu)", buf, 0x26u);
  }

LABEL_8:
  if (v11 && !self->mClientAPIClutch)
  {
    ControllerImpl::getInputChannelInfoForStream(v11, completionCopy);
  }

  else if (completionCopy)
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11780 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v9);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)setAnnounceCallsEnabledForStream:(unint64_t)stream enable:(BOOL)enable
{
  enableCopy = enable;
  v27 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v18 = "AVVoiceController.mm";
    v19 = 1024;
    v20 = 1763;
    v21 = 2048;
    selfCopy = self;
    v23 = 2048;
    streamCopy = stream;
    v25 = 1024;
    v26 = enableCopy;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: setAnnounceCallsEnabledForStream: streamHandle(%lu), enable : %d", buf, 0x2Cu);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  if (v15 && !self->mClientAPIClutch)
  {
    v10 = ControllerImpl::setAnnounceCallsEnabledForStream(v15, stream, enableCopy) == 0;
    goto LABEL_19;
  }

  if (!kAVVCScope)
  {
    v9 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
    goto LABEL_15;
  }

  v9 = *kAVVCScope;
  if (v9)
  {
LABEL_15:
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v18 = "AVVoiceController.mm";
      v19 = 1024;
      v20 = 1765;
      v21 = 2048;
      selfCopy = v15;
      v23 = 1024;
      LODWORD(streamCopy) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  v10 = 0;
LABEL_19:
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

- (int64_t)getRecordModeForStream:(unint64_t)stream
{
  v23 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v16 = "AVVoiceController.mm";
    v17 = 1024;
    v18 = 1749;
    v19 = 2048;
    selfCopy = self;
    v21 = 2048;
    streamCopy = stream;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: getRecordModeForStream: streamHandle(%lu)", buf, 0x26u);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  if (v13 && !self->mClientAPIClutch)
  {
    RecordModeForStream = ControllerImpl::getRecordModeForStream(v13, stream);
    goto LABEL_19;
  }

  if (!kAVVCScope)
  {
    v7 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
    goto LABEL_15;
  }

  v7 = *kAVVCScope;
  if (v7)
  {
LABEL_15:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v16 = "AVVoiceController.mm";
      v17 = 1024;
      v18 = 1751;
      v19 = 2048;
      selfCopy = v13;
      v21 = 1024;
      LODWORD(streamCopy) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  RecordModeForStream = 0;
LABEL_19:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v11 = *MEMORY[0x1E69E9840];
  return RecordModeForStream;
}

- (BOOL)setRecordModeForStream:(unint64_t)stream recordMode:(int64_t)mode error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  v20 = 4122;
  v21 = 1;
  v22 = 0u;
  v23 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v34, "[AVVoiceController setRecordModeForStream:recordMode:error:]", 0, 0);
  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v25 = "AVVoiceController.mm";
    v26 = 1024;
    v27 = 1728;
    v28 = 2048;
    selfCopy = self;
    v30 = 2048;
    streamCopy = stream;
    v32 = 1024;
    modeCopy = mode;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: setRecordModeForStream: streamHandle(%lu), mode : %d", buf, 0x2Cu);
  }

LABEL_8:
  if (!mode)
  {
    LOBYTE(v11) = 0;
    goto LABEL_25;
  }

  [(AVVoiceController *)self impl];
  if (v18 && !self->mClientAPIClutch)
  {
    v12 = ControllerImpl::setRecordModeForStream(v18, stream, mode);
    v13 = v12;
    if (error && v12)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v12 userInfo:0];
    }

    LOBYTE(v11) = v13 == 0;
    goto LABEL_23;
  }

  if (!kAVVCScope)
  {
    v11 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
    goto LABEL_20;
  }

  v11 = *kAVVCScope;
  if (v11)
  {
LABEL_20:
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v25 = "AVVoiceController.mm";
      v26 = 1024;
      v27 = 1734;
      v28 = 2048;
      selfCopy = v18;
      v30 = 1024;
      LODWORD(streamCopy) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    LOBYTE(v11) = 0;
  }

LABEL_23:
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

LABEL_25:
  ElapsedTime::~ElapsedTime(v34);
  TraceWrapper::~TraceWrapper(&v20);
  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)enableSmartRoutingConsiderationForStream:(unint64_t)stream enable:(BOOL)enable error:(id *)error
{
  enableCopy = enable;
  v31 = *MEMORY[0x1E69E9840];
  ElapsedTime::ElapsedTime(v30, "[AVVoiceController enableSmartRoutingConsiderationForStream:enable:error:]", 0, 0);
  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v21 = "AVVoiceController.mm";
    v22 = 1024;
    v23 = 1708;
    v24 = 2048;
    selfCopy = self;
    v26 = 2048;
    streamCopy = stream;
    v28 = 1024;
    v29 = enableCopy;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: enableSmartRoutingConsideration: streamHandle(%lu), enable : %d", buf, 0x2Cu);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  if (v18 && !self->mClientAPIClutch)
  {
    v12 = ControllerImpl::enableSmartRoutingConsideration(v18, stream, enableCopy);
    v13 = v12;
    if (error && v12)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v12 userInfo:0];
    }

    LOBYTE(v11) = v13 == 0;
  }

  else
  {
    if (kAVVCScope)
    {
      v11 = *kAVVCScope;
      if (!v11)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v21 = "AVVoiceController.mm";
      v22 = 1024;
      v23 = 1710;
      v24 = 2048;
      selfCopy = v18;
      v26 = 1024;
      LODWORD(streamCopy) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    LOBYTE(v11) = 0;
  }

LABEL_21:
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  ElapsedTime::~ElapsedTime(v30);
  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)setRecordStatusChangeBlock:(id)block
{
  v21 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "AVVoiceController.mm";
    v15 = 1024;
    v16 = 1698;
    v17 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: setRecordStatusChangeBlock", buf, 0x1Cu);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  if (v11 && !self->mClientAPIClutch)
  {
    ControllerImpl::setRecordStatusChangeBlock(v11, blockCopy);
    goto LABEL_18;
  }

  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    mClientAPIClutch = self->mClientAPIClutch;
    *buf = 136315906;
    v14 = "AVVoiceController.mm";
    v15 = 1024;
    v16 = 1699;
    v17 = 2048;
    selfCopy = v11;
    v19 = 1024;
    v20 = mClientAPIClutch;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
  }

LABEL_18:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (float)getAveragePowerForStream:(unint64_t)stream forChannel:(unint64_t)channel
{
  channelCopy = channel;
  v23 = *MEMORY[0x1E69E9840];
  [(AVVoiceController *)self impl];
  if (v13 && !self->mClientAPIClutch)
  {
    AveragePowerForStreamAndChannel = ControllerImpl::getAveragePowerForStreamAndChannel(v13, stream, channelCopy);
    goto LABEL_12;
  }

  if (!kAVVCScope)
  {
    v7 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
    goto LABEL_8;
  }

  v7 = *kAVVCScope;
  if (v7)
  {
LABEL_8:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v16 = "AVVoiceController.mm";
      v17 = 1024;
      v18 = 1693;
      v19 = 2048;
      v20 = v13;
      v21 = 1024;
      v22 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  AveragePowerForStreamAndChannel = 0.0;
LABEL_12:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v11 = *MEMORY[0x1E69E9840];
  return AveragePowerForStreamAndChannel;
}

- (float)getPeakPowerForStream:(unint64_t)stream forChannel:(unint64_t)channel
{
  channelCopy = channel;
  v23 = *MEMORY[0x1E69E9840];
  [(AVVoiceController *)self impl];
  if (v13 && !self->mClientAPIClutch)
  {
    PeakPowerForStreamAndChannel = ControllerImpl::getPeakPowerForStreamAndChannel(v13, stream, channelCopy);
    goto LABEL_12;
  }

  if (!kAVVCScope)
  {
    v7 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
    goto LABEL_8;
  }

  v7 = *kAVVCScope;
  if (v7)
  {
LABEL_8:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v16 = "AVVoiceController.mm";
      v17 = 1024;
      v18 = 1688;
      v19 = 2048;
      v20 = v13;
      v21 = 1024;
      v22 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  PeakPowerForStreamAndChannel = 0.0;
LABEL_12:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v11 = *MEMORY[0x1E69E9840];
  return PeakPowerForStreamAndChannel;
}

- (BOOL)updateMeterForStream:(unint64_t)stream
{
  v21 = *MEMORY[0x1E69E9840];
  [(AVVoiceController *)self impl];
  if (v11 && !self->mClientAPIClutch)
  {
    updated = ControllerImpl::updateMeterLevelForStream(v11, stream);
    goto LABEL_12;
  }

  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
    goto LABEL_8;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
LABEL_8:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v14 = "AVVoiceController.mm";
      v15 = 1024;
      v16 = 1683;
      v17 = 2048;
      v18 = v11;
      v19 = 1024;
      v20 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  updated = 0;
LABEL_12:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v9 = *MEMORY[0x1E69E9840];
  return updated;
}

- (BOOL)isMeteringEnabledForStream:(unint64_t)stream
{
  v21 = *MEMORY[0x1E69E9840];
  [(AVVoiceController *)self impl];
  if (v11 && !self->mClientAPIClutch)
  {
    isMeteringEnabledForStream = ControllerImpl::isMeteringEnabledForStream(v11, stream);
    goto LABEL_12;
  }

  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
    goto LABEL_8;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
LABEL_8:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v14 = "AVVoiceController.mm";
      v15 = 1024;
      v16 = 1678;
      v17 = 2048;
      v18 = v11;
      v19 = 1024;
      v20 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  isMeteringEnabledForStream = 0;
LABEL_12:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v9 = *MEMORY[0x1E69E9840];
  return isMeteringEnabledForStream;
}

- (id)getRecordSettingsForStream:(unint64_t)stream
{
  v21 = *MEMORY[0x1E69E9840];
  [(AVVoiceController *)self impl];
  if (v11 && !self->mClientAPIClutch)
  {
    v6 = ControllerImpl::getRecordSettingsForStream(v11, self, stream);
    goto LABEL_12;
  }

  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
    goto LABEL_8;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
LABEL_8:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v14 = "AVVoiceController.mm";
      v15 = 1024;
      v16 = 1672;
      v17 = 2048;
      v18 = v11;
      v19 = 1024;
      v20 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  v6 = 0;
LABEL_12:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

- (double)getRecordBufferDurationForStream:(unint64_t)stream
{
  v21 = *MEMORY[0x1E69E9840];
  [(AVVoiceController *)self impl];
  if (v11 && !self->mClientAPIClutch)
  {
    RecordBufferDurationForStream = ControllerImpl::getRecordBufferDurationForStream(v11, stream);
    goto LABEL_12;
  }

  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
    goto LABEL_8;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
LABEL_8:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v14 = "AVVoiceController.mm";
      v15 = 1024;
      v16 = 1666;
      v17 = 2048;
      v18 = v11;
      v19 = 1024;
      v20 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  RecordBufferDurationForStream = 0.0;
LABEL_12:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v9 = *MEMORY[0x1E69E9840];
  return RecordBufferDurationForStream;
}

- (BOOL)playAlertSoundForType:(int)type overrideMode:(int64_t)mode
{
  v36 = *MEMORY[0x1E69E9840];
  v21 = 4145;
  v22 = 1;
  v23 = 0u;
  v24 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v35, "[AVVoiceController playAlertSoundForType:overrideMode:]", 0, 0);
  [(AVVoiceController *)self impl];
  v7 = v19;
  if (!v19 || (*(v19 + 521) & 1) != 0 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_11:

      LOBYTE(v8) = 0;
      goto LABEL_12;
    }

    *buf = 136315394;
    v26 = "AVVoiceController.mm";
    v27 = 1024;
    v28 = 1652;
    v10 = "%25s:%-5d call to playAlertSoundForType blocked because mediaserverd is dead";
    v11 = v8;
    v12 = 18;
LABEL_10:
    _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
    goto LABEL_11;
  }

  if (kAVVCScope)
  {
    v15 = *kAVVCScope;
    if (!v15)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v15 = MEMORY[0x1E69E9C10];
    v16 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v26 = "AVVoiceController.mm";
    v27 = 1024;
    v28 = 1656;
    v29 = 2048;
    selfCopy = self;
    v31 = 1024;
    typeCopy = type;
    v33 = 1024;
    modeCopy = mode;
    _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: playAlertSoundForStream: alertType(%d) overrideMode(%d)", buf, 0x28u);
  }

  v7 = v19;
LABEL_22:
  v17 = ControllerImpl::playAlertWithOverride(v7, self, type, mode);
  if (!v17)
  {
    LOBYTE(v8) = 1;
    goto LABEL_12;
  }

  if (!kAVVCScope)
  {
    v8 = MEMORY[0x1E69E9C10];
    v18 = MEMORY[0x1E69E9C10];
    goto LABEL_28;
  }

  v8 = *kAVVCScope;
  if (v8)
  {
LABEL_28:
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 136315650;
    v26 = "AVVoiceController.mm";
    v27 = 1024;
    v28 = 1659;
    v29 = 1024;
    LODWORD(selfCopy) = v17;
    v10 = "%25s:%-5d playAlertSoundForStream failed with error : %d";
    v11 = v8;
    v12 = 24;
    goto LABEL_10;
  }

LABEL_12:
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  ElapsedTime::~ElapsedTime(v35);
  TraceWrapper::~TraceWrapper(&v21);
  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)playAlert:(int)alert withOverride:(int64_t)override completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v17 = 4145;
  v18 = 1;
  v19 = 0u;
  v20 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v31, "[AVVoiceController playAlert:withOverride:completion:]", 0, 0);
  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v22 = "AVVoiceController.mm";
    v23 = 1024;
    v24 = 1640;
    v25 = 2048;
    selfCopy = self;
    v27 = 1024;
    alertCopy = alert;
    v29 = 1024;
    overrideCopy = override;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: playAlert alertType(%d). overrideMode(%d)", buf, 0x28u);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  if (v15 && !self->mClientAPIClutch)
  {
    ControllerImpl::playAlertWithCompletion(v15, self, alert, override, completionCopy);
    goto LABEL_18;
  }

  if (kAVVCScope)
  {
    v11 = *kAVVCScope;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    mClientAPIClutch = self->mClientAPIClutch;
    *buf = 136315906;
    v22 = "AVVoiceController.mm";
    v23 = 1024;
    v24 = 1641;
    v25 = 2048;
    selfCopy = v15;
    v27 = 1024;
    alertCopy = mClientAPIClutch;
    _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
  }

LABEL_18:
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  ElapsedTime::~ElapsedTime(v31);
  TraceWrapper::~TraceWrapper(&v17);

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)setContextForStream:(id)stream forStream:(unint64_t)forStream error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  v25 = 4146;
  v26 = 1;
  v27 = 0u;
  v28 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v41, "[AVVoiceController setContextForStream:forStream:error:]", 0, 0);
  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  v11 = v9;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Get4CCFromInt([(AVVCContextSettings *)streamCopy activationMode]);
    activationDeviceUID = [(AVVCContextSettings *)streamCopy activationDeviceUID];
    *buf = 136316418;
    v30 = "AVVoiceController.mm";
    v31 = 1024;
    v32 = 1624;
    v33 = 2048;
    selfCopy = self;
    v35 = 2112;
    v36 = v12;
    v37 = 2112;
    v38 = activationDeviceUID;
    v39 = 2048;
    forStreamCopy = forStream;
    _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: setContextForStream: activationMode(%@), deviceUID(%@). streamHandle(%lu)", buf, 0x3Au);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  if (!v23 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v14 = *kAVVCScope;
      if (!v14)
      {
LABEL_25:
        v16 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v30 = "AVVoiceController.mm";
      v31 = 1024;
      v32 = 1625;
      v33 = 2048;
      selfCopy = v23;
      v35 = 1024;
      LODWORD(v36) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_25;
  }

  v15 = ControllerImpl::setContextForStream(v23, self, streamCopy, forStream);
  v16 = v15 == 0;
  if (error && v15)
  {
    v17 = v15;
    if (v15 == 560557673)
    {
      v17 = -11785;
    }

    if (v15 == -66671)
    {
      v18 = -11785;
    }

    else
    {
      v18 = v17;
    }

    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v18 userInfo:0];
    *error = v16 = 0;
  }

LABEL_26:
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  ElapsedTime::~ElapsedTime(v41);
  TraceWrapper::~TraceWrapper(&v25);

  v21 = *MEMORY[0x1E69E9840];
  return v16;
}

- (int64_t)getCurrentSessionStateForStream:(unint64_t)stream
{
  v21 = *MEMORY[0x1E69E9840];
  [(AVVoiceController *)self impl];
  if (v11 && !self->mClientAPIClutch)
  {
    AVVCSessionState = ControllerImpl::getAVVCSessionState(v11, stream);
    goto LABEL_12;
  }

  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
    goto LABEL_8;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
LABEL_8:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v14 = "AVVoiceController.mm";
      v15 = 1024;
      v16 = 1616;
      v17 = 2048;
      v18 = v11;
      v19 = 1024;
      v20 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  AVVCSessionState = 0;
LABEL_12:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v9 = *MEMORY[0x1E69E9840];
  return AVVCSessionState;
}

- (void)deactivateAudioSessionForStream:(unint64_t)stream withOptions:(unint64_t)options error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  v17 = 4144;
  v18 = 1;
  v19 = 0u;
  v20 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v31, "[AVVoiceController deactivateAudioSessionForStream:withOptions:error:]", 0, 0);
  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v22 = "AVVoiceController.mm";
    v23 = 1024;
    v24 = 1604;
    v25 = 2048;
    selfCopy = self;
    v27 = 1024;
    streamCopy = stream;
    v29 = 2048;
    optionsCopy = options;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: deactivateAudioSessionForStream:(%d) withOptions(%lu)", buf, 0x2Cu);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  if (v15 && !self->mClientAPIClutch)
  {
    ControllerImpl::deactivateAudioSessionWithOptions(v15, self, options, stream, error);
    goto LABEL_18;
  }

  if (kAVVCScope)
  {
    v11 = *kAVVCScope;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    mClientAPIClutch = self->mClientAPIClutch;
    *buf = 136315906;
    v22 = "AVVoiceController.mm";
    v23 = 1024;
    v24 = 1605;
    v25 = 2048;
    selfCopy = v15;
    v27 = 1024;
    streamCopy = mClientAPIClutch;
    _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
  }

LABEL_18:
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  ElapsedTime::~ElapsedTime(v31);
  TraceWrapper::~TraceWrapper(&v17);
  v14 = *MEMORY[0x1E69E9840];
}

- (void)deactivateAudioSessionForStream:(unint64_t)stream withOptions:(unint64_t)options completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v17 = 4144;
  v18 = 1;
  v19 = 0u;
  v20 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v31, "[AVVoiceController deactivateAudioSessionForStream:withOptions:completion:]", 0, 0);
  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v22 = "AVVoiceController.mm";
    v23 = 1024;
    v24 = 1595;
    v25 = 2048;
    selfCopy = self;
    v27 = 1024;
    streamCopy = stream;
    v29 = 2048;
    optionsCopy = options;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: deactivateAudioSessionForStream:(%d) withOptions(%lu) completion:", buf, 0x2Cu);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  if (v15 && !self->mClientAPIClutch)
  {
    ControllerImpl::deactivateAudioSessionWithOptions(v15, self, options, stream, completionCopy);
    goto LABEL_18;
  }

  if (kAVVCScope)
  {
    v11 = *kAVVCScope;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    mClientAPIClutch = self->mClientAPIClutch;
    *buf = 136315906;
    v22 = "AVVoiceController.mm";
    v23 = 1024;
    v24 = 1596;
    v25 = 2048;
    selfCopy = v15;
    v27 = 1024;
    streamCopy = mClientAPIClutch;
    _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
  }

LABEL_18:
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  ElapsedTime::~ElapsedTime(v31);
  TraceWrapper::~TraceWrapper(&v17);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)deactivateAudioSessionWithOptions:(unint64_t)options
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = 4144;
  v14 = 1;
  v15 = 0u;
  v16 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v25, "[AVVoiceController deactivateAudioSessionWithOptions:]", 0, 0);
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v18 = "AVVoiceController.mm";
    v19 = 1024;
    v20 = 1586;
    v21 = 2048;
    selfCopy = self;
    v23 = 2048;
    optionsCopy = options;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: deactivateAudioSessionWithOptions(%lu)", buf, 0x26u);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  if (v11 && !self->mClientAPIClutch)
  {
    ControllerImpl::deactivateAudioSessionWithOptions(v11, self, options, *(v11 + 472), 0);
    goto LABEL_18;
  }

  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    mClientAPIClutch = self->mClientAPIClutch;
    *buf = 136315906;
    v18 = "AVVoiceController.mm";
    v19 = 1024;
    v20 = 1587;
    v21 = 2048;
    selfCopy = v11;
    v23 = 1024;
    LODWORD(optionsCopy) = mClientAPIClutch;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
  }

LABEL_18:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  ElapsedTime::~ElapsedTime(v25);
  TraceWrapper::~TraceWrapper(&v13);
  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)activateAudioSessionForStream:(unint64_t)stream isPrewarm:(BOOL)prewarm recordMode:(BOOL)mode error:(id *)error
{
  modeCopy = mode;
  prewarmCopy = prewarm;
  v39 = *MEMORY[0x1E69E9840];
  v22 = 4144;
  v23 = 1;
  v24 = 0u;
  v25 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v38, "[AVVoiceController activateAudioSessionForStream:isPrewarm:recordMode:error:]", 0, 0);
  if (kAVVCScope)
  {
    v11 = *kAVVCScope;
    if (!v11)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    v27 = "AVVoiceController.mm";
    v28 = 1024;
    v29 = 1573;
    v30 = 2048;
    selfCopy = self;
    v32 = 1024;
    v33 = prewarmCopy;
    v34 = 1024;
    v35 = modeCopy;
    v36 = 2048;
    streamCopy = stream;
    _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: activateAudioSessionForStream isPrewarm(%d), switchRecordMode(%d). streamHandle(%lu)", buf, 0x32u);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  if (v20 && !self->mClientAPIClutch)
  {
    v14 = ControllerImpl::activateAudioSessionForStream(v20, self, stream, prewarmCopy, modeCopy);
    v15 = v14;
    if (error && v14)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v14 userInfo:0];
    }

    LOBYTE(v13) = v15 == 0;
  }

  else
  {
    if (kAVVCScope)
    {
      v13 = *kAVVCScope;
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v27 = "AVVoiceController.mm";
      v28 = 1024;
      v29 = 1574;
      v30 = 2048;
      selfCopy = v20;
      v32 = 1024;
      v33 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    LOBYTE(v13) = 0;
  }

LABEL_21:
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  ElapsedTime::~ElapsedTime(v38);
  TraceWrapper::~TraceWrapper(&v22);
  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)activateAudioSessionForStream:(unint64_t)stream isPrewarm:(BOOL)prewarm error:(id *)error
{
  prewarmCopy = prewarm;
  v35 = *MEMORY[0x1E69E9840];
  v20 = 4144;
  v21 = 1;
  v22 = 0u;
  v23 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v34, "[AVVoiceController activateAudioSessionForStream:isPrewarm:error:]", 0, 0);
  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v25 = "AVVoiceController.mm";
    v26 = 1024;
    v27 = 1560;
    v28 = 2048;
    selfCopy = self;
    v30 = 1024;
    v31 = prewarmCopy;
    v32 = 2048;
    streamCopy = stream;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: activateAudioSessionForStream isPrewarm(%d). streamHandle(%lu)", buf, 0x2Cu);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  if (v18 && !self->mClientAPIClutch)
  {
    v12 = ControllerImpl::activateAudioSessionForStream(v18, self, stream, prewarmCopy, 1);
    v13 = v12;
    if (error && v12)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v12 userInfo:0];
    }

    LOBYTE(v11) = v13 == 0;
  }

  else
  {
    if (kAVVCScope)
    {
      v11 = *kAVVCScope;
      if (!v11)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v25 = "AVVoiceController.mm";
      v26 = 1024;
      v27 = 1561;
      v28 = 2048;
      selfCopy = v18;
      v30 = 1024;
      v31 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    LOBYTE(v11) = 0;
  }

LABEL_21:
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  ElapsedTime::~ElapsedTime(v34);
  TraceWrapper::~TraceWrapper(&v20);
  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)getRecordDeviceInfoForStream:(unint64_t)stream
{
  v24 = *MEMORY[0x1E69E9840];
  ElapsedTime::ElapsedTime(v23, "[AVVoiceController getRecordDeviceInfoForStream:]", 0, 0);
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v16 = "AVVoiceController.mm";
    v17 = 1024;
    v18 = 1550;
    v19 = 2048;
    selfCopy = self;
    v21 = 2048;
    streamCopy = stream;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: getRecordDeviceInfoForStream: streamHandle(%lu)", buf, 0x26u);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  if (v13 && !self->mClientAPIClutch)
  {
    v8 = ControllerImpl::getRecordDeviceInfoForStream(v13, self, stream);
    goto LABEL_19;
  }

  if (!kAVVCScope)
  {
    v7 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
    goto LABEL_15;
  }

  v7 = *kAVVCScope;
  if (v7)
  {
LABEL_15:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v16 = "AVVoiceController.mm";
      v17 = 1024;
      v18 = 1551;
      v19 = 2048;
      selfCopy = v13;
      v21 = 1024;
      LODWORD(streamCopy) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  v8 = 0;
LABEL_19:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  ElapsedTime::~ElapsedTime(v23);
  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

- (int64_t)getCurrentStreamState:(unint64_t)state
{
  v25 = *MEMORY[0x1E69E9840];
  [(AVVoiceController *)self impl];
  if (!v13 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
        CurrentStreamStateForStream = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v16 = "AVVoiceController.mm";
      v17 = 1024;
      v18 = 1541;
      v19 = 2048;
      selfCopy = v13;
      v21 = 1024;
      LODWORD(stateCopy) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    CurrentStreamStateForStream = 0;
    goto LABEL_13;
  }

  CurrentStreamStateForStream = ControllerImpl::getCurrentStreamStateForStream(v13, self, state);
  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
LABEL_18:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (CurrentStreamStateForStream > 6)
      {
        v12 = "ILLEGAL";
      }

      else
      {
        v12 = off_1E7EF6338[CurrentStreamStateForStream];
      }

      *buf = 136316162;
      v16 = "AVVoiceController.mm";
      v17 = 1024;
      v18 = 1543;
      v19 = 2048;
      selfCopy = self;
      v21 = 2048;
      stateCopy = state;
      v23 = 2080;
      v24 = v12;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: getCurrentStreamState: streamHandle(%lu). State(%s)", buf, 0x30u);
    }

LABEL_13:

    goto LABEL_14;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
    goto LABEL_18;
  }

LABEL_14:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v9 = *MEMORY[0x1E69E9840];
  return CurrentStreamStateForStream;
}

- (BOOL)stopRecordForStream:(unint64_t)stream error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  ElapsedTime::ElapsedTime(v29, "[AVVoiceController stopRecordForStream:error:]", 0, 0);
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v22 = "AVVoiceController.mm";
    v23 = 1024;
    v24 = 1519;
    v25 = 2048;
    streamCopy2 = self;
    v27 = 2048;
    streamCopy = stream;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: stopRecordForStream: streamHandle(%lu)", buf, 0x26u);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  if (!v19 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
LABEL_22:
        v12 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v22 = "AVVoiceController.mm";
      v23 = 1024;
      v24 = 1521;
      v25 = 2048;
      streamCopy2 = v19;
      v27 = 1024;
      LODWORD(streamCopy) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_22;
  }

  v10 = ControllerImpl::stopRecordForStream(v19, self, stream);
  v11 = v10;
  if (v10 > -309)
  {
    if (v10 == -308)
    {
      goto LABEL_29;
    }

    if (!v10)
    {
      v12 = 1;
      goto LABEL_31;
    }
  }

  else
  {
    v12 = 0;
    if (v10 == -11793 || v10 == -11781)
    {
      if (!error)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  v15 = *kAVVCScope;
  v16 = CALog::Scope::oslog(*kAVVCScope);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v22 = "[AVVoiceController stopRecordForStream:error:]";
    v23 = 1024;
    v24 = v11;
    v25 = 2048;
    streamCopy2 = stream;
    _os_log_fault_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_FAULT, "%s unexpected error (%d) returned from stopRecordForStream for streamHandle(%lu)", buf, 0x1Cu);
  }

LABEL_29:
  v12 = 1;
  if (error)
  {
LABEL_30:
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v11 userInfo:0];
  }

LABEL_31:
  kdebug_trace();
LABEL_32:
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  ElapsedTime::~ElapsedTime(v29);
  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)stopRecordForStream:(unint64_t)stream completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v11 = 4137;
  v12 = 1;
  v13 = 0u;
  v14 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v20, "[AVVoiceController stopRecordForStream:completion:]", 0, 0);
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "AVVoiceController.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1506;
    v16 = 2048;
    selfCopy = self;
    v18 = 2048;
    streamCopy = stream;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d !! DEPRECATED !! #### AVVoiceController[self = %p]: stopRecordForStream: streamHandle(%lu)", buf, 0x26u);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  if (*buf && !self->mClientAPIClutch)
  {
    ControllerImpl::stopRecordForStream(*buf, self, stream, completionCopy);
  }

  else if (completionCopy)
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11780 userInfo:0];
    (*(completionCopy + 2))(completionCopy, stream, 0, 0, v9);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  ElapsedTime::~ElapsedTime(v20);
  TraceWrapper::~TraceWrapper(&v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)configureAlertBehaviorForStream:(id)stream error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  v19 = 4147;
  v20 = 1;
  v21 = 0u;
  v22 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v37, "[AVVoiceController configureAlertBehaviorForStream:error:]", 0, 0);
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316674;
    v24 = "AVVoiceController.mm";
    v25 = 1024;
    v26 = 1489;
    v27 = 2048;
    selfCopy = self;
    v29 = 2048;
    streamID = [(AVVCConfigureAlertBehaviorSettings *)streamCopy streamID];
    v31 = 1024;
    startAlert = [(AVVCConfigureAlertBehaviorSettings *)streamCopy startAlert];
    v33 = 1024;
    stopAlert = [(AVVCConfigureAlertBehaviorSettings *)streamCopy stopAlert];
    v35 = 1024;
    stopOnErrorAlert = [(AVVCConfigureAlertBehaviorSettings *)streamCopy stopOnErrorAlert];
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: configureAlertBehaviorForStream: streamHandle(%lu), AlertsOverride(%d,%d,%d)", buf, 0x38u);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  if (!v17 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v10 = *kAVVCScope;
      if (!v10)
      {
LABEL_20:
        v12 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v24 = "AVVoiceController.mm";
      v25 = 1024;
      v26 = 1491;
      v27 = 2048;
      selfCopy = v17;
      v29 = 1024;
      LODWORD(streamID) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_20;
  }

  v11 = ControllerImpl::configureAlertBehaviorForStream(v17, self, streamCopy);
  if (v11)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v11 userInfo:0];
      *error = v12 = 0;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v12 = 1;
LABEL_21:
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  ElapsedTime::~ElapsedTime(v37);
  TraceWrapper::~TraceWrapper(&v19);

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)configureAlertBehaviorForStream:(id)stream completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  completionCopy = completion;
  v13 = 4147;
  v14 = 1;
  v15 = 0u;
  v16 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v28, "[AVVoiceController configureAlertBehaviorForStream:completion:]", 0, 0);
  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  v10 = v8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316674;
    *&buf[4] = "AVVoiceController.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1475;
    v18 = 2048;
    selfCopy = self;
    v20 = 2048;
    streamID = [streamCopy streamID];
    v22 = 1024;
    startAlert = [streamCopy startAlert];
    v24 = 1024;
    stopAlert = [streamCopy stopAlert];
    v26 = 1024;
    stopOnErrorAlert = [streamCopy stopOnErrorAlert];
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: configureAlertBehaviorForStream:completion: streamHandle(%lu), AlertsOverride(%d,%d,%d)", buf, 0x38u);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  if (*buf && !self->mClientAPIClutch)
  {
    ControllerImpl::configureAlertBehaviorForStream(*buf, self, streamCopy, completionCopy);
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11780 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v11);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  ElapsedTime::~ElapsedTime(v28);
  TraceWrapper::~TraceWrapper(&v13);

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)startRecordForStream:(id)stream error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v44, "[AVVoiceController startRecordForStream:error:]", 0, 0);
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    streamID = [(AVVCStartRecordSettings *)streamCopy streamID];
    startHostTime = [(AVVCStartRecordSettings *)streamCopy startHostTime];
    startAlert = [(AVVCStartRecordSettings *)streamCopy startAlert];
    stopAlert = [(AVVCStartRecordSettings *)streamCopy stopAlert];
    stopOnErrorAlert = [(AVVCStartRecordSettings *)streamCopy stopOnErrorAlert];
    skipAlert = [(AVVCStartRecordSettings *)streamCopy skipAlert];
    v16 = " will NOT skip alert";
    *buf = 136317186;
    v27 = "AVVoiceController.mm";
    v29 = 1457;
    v28 = 1024;
    if (skipAlert)
    {
      v16 = " will skip alert";
    }

    v30 = 2048;
    selfCopy = self;
    v32 = 2048;
    v33 = streamID;
    v34 = 2048;
    v35 = startHostTime;
    v36 = 1024;
    v37 = startAlert;
    v38 = 1024;
    v39 = stopAlert;
    v40 = 1024;
    v41 = stopOnErrorAlert;
    v42 = 2080;
    v43 = v16;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: startRecordForStream: streamHandle(%lu), startTime(%llu). AlertsOverride(%d,%d,%d,%s)", buf, 0x4Cu);
  }

LABEL_10:
  [(AVVoiceController *)self impl];
  if (!v24 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v17 = *kAVVCScope;
      if (!v17)
      {
LABEL_22:
        v19 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v27 = "AVVoiceController.mm";
      v28 = 1024;
      v29 = 1459;
      v30 = 2048;
      selfCopy = v24;
      v32 = 1024;
      LODWORD(v33) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_22;
  }

  started = ControllerImpl::startRecordForStream(v24, self, streamCopy);
  v19 = started == 0;
  if (error && started)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:started userInfo:0];
  }

  kdebug_trace();
LABEL_24:
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  ElapsedTime::~ElapsedTime(v44);

  v22 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)startRecordForStream:(id)stream completion:(id)completion
{
  v41 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  completionCopy = completion;
  v21 = 4136;
  v22 = 1;
  v23 = 0u;
  v24 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v40, "[AVVoiceController startRecordForStream:completion:]", 0, 0);
  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  v10 = v8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    streamID = [streamCopy streamID];
    startHostTime = [streamCopy startHostTime];
    startAlert = [streamCopy startAlert];
    stopAlert = [streamCopy stopAlert];
    stopOnErrorAlert = [streamCopy stopOnErrorAlert];
    skipAlert = [streamCopy skipAlert];
    v17 = " will NOT skip alert";
    *buf = 136317186;
    *&buf[4] = "AVVoiceController.mm";
    *&buf[14] = 1443;
    *&buf[12] = 1024;
    if (skipAlert)
    {
      v17 = " will skip alert";
    }

    v26 = 2048;
    selfCopy = self;
    v28 = 2048;
    v29 = streamID;
    v30 = 2048;
    v31 = startHostTime;
    v32 = 1024;
    v33 = startAlert;
    v34 = 1024;
    v35 = stopAlert;
    v36 = 1024;
    v37 = stopOnErrorAlert;
    v38 = 2080;
    v39 = v17;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: startRecordForStream:completion: streamHandle(%lu), startTime(%llu). AlertsOverride(%d,%d,%d,%s)", buf, 0x4Cu);
  }

LABEL_10:
  [(AVVoiceController *)self impl];
  if (*buf && !self->mClientAPIClutch)
  {
    ControllerImpl::startRecordForStream(*buf, self, streamCopy, completionCopy);
  }

  else if (completionCopy)
  {
    streamID2 = [streamCopy streamID];
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11780 userInfo:0];
    (*(completionCopy + 2))(completionCopy, streamID2, 0, 0, v19);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  ElapsedTime::~ElapsedTime(v40);
  TraceWrapper::~TraceWrapper(&v21);

  v20 = *MEMORY[0x1E69E9840];
}

- (void)startRecordWithSettings:(id)settings completion:(id)completion alertCompletion:(id)alertCompletion audioCallback:(id)callback
{
  v38 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  completionCopy = completion;
  alertCompletionCopy = alertCompletion;
  callbackCopy = callback;
  v20 = 4136;
  v21 = 1;
  v22 = 0u;
  v23 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v37, "[AVVoiceController startRecordWithSettings:completion:alertCompletion:audioCallback:]", 0, 0);
  if (kAVVCScope)
  {
    v14 = *kAVVCScope;
    if (!v14)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
  }

  v16 = v14;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316930;
    *&buf[4] = "AVVoiceController.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1429;
    v25 = 2048;
    selfCopy = self;
    v27 = 2048;
    streamID = [settingsCopy streamID];
    v29 = 2048;
    startHostTime = [settingsCopy startHostTime];
    v31 = 1024;
    startAlert = [settingsCopy startAlert];
    v33 = 1024;
    stopAlert = [settingsCopy stopAlert];
    v35 = 1024;
    stopOnErrorAlert = [settingsCopy stopOnErrorAlert];
    _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d !! DEPRECATED !! #### AVVoiceController[self = %p]: startRecordWithSettings:completion:alertCompletion:audioCallback: streamHandle(%lu), startTime(%llu). AlertsOverride(%d,%d,%d)", buf, 0x42u);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  if (*buf && !self->mClientAPIClutch)
  {
    ControllerImpl::startRecordForStream(*buf, self, settingsCopy, completionCopy, alertCompletionCopy, callbackCopy);
  }

  else if (completionCopy)
  {
    streamID2 = [settingsCopy streamID];
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11780 userInfo:0];
    (*(completionCopy + 2))(completionCopy, streamID2, 0, 0, v18);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  ElapsedTime::~ElapsedTime(v37);
  TraceWrapper::~TraceWrapper(&v20);

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)prepareRecordForStream:(id)stream error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  v23 = 4135;
  v24 = 1;
  v25 = 0u;
  v26 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v39, "[AVVoiceController prepareRecordForStream:error:]", 0, 0);
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    streamID = [(AVVCPrepareRecordSettings *)streamCopy streamID];
    [(AVVCPrepareRecordSettings *)streamCopy recordBufferDuration];
    v12 = v11;
    avAudioSettings = [(AVVCPrepareRecordSettings *)streamCopy avAudioSettings];
    *buf = 136316418;
    v28 = "AVVoiceController.mm";
    v29 = 1024;
    v30 = 1412;
    v31 = 2048;
    selfCopy = self;
    v33 = 2048;
    v34 = streamID;
    v35 = 2048;
    v36 = v12;
    v37 = 2112;
    v38 = avAudioSettings;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: prepareRecordForStream: streamHandle(%lu), bufferDuration(%f), settings: %@", buf, 0x3Au);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  if (!v21 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v14 = *kAVVCScope;
      if (!v14)
      {
LABEL_20:
        v16 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v28 = "AVVoiceController.mm";
      v29 = 1024;
      v30 = 1414;
      v31 = 2048;
      selfCopy = v21;
      v33 = 1024;
      LODWORD(v34) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_20;
  }

  v15 = ControllerImpl::prepareRecordForStream(v21, self, streamCopy);
  if (v15)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v15 userInfo:0];
      *error = v16 = 0;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v16 = 1;
LABEL_21:
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  ElapsedTime::~ElapsedTime(v39);
  TraceWrapper::~TraceWrapper(&v23);

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)prepareRecordForStream:(id)stream completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  completionCopy = completion;
  v18 = 4135;
  v19 = 1;
  v20 = 0u;
  v21 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v31, "[AVVoiceController prepareRecordForStream:completion:]", 0, 0);
  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  v10 = v8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    streamID = [streamCopy streamID];
    [streamCopy recordBufferDuration];
    v13 = v12;
    avAudioSettings = [streamCopy avAudioSettings];
    *buf = 136316418;
    *&buf[4] = "AVVoiceController.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1399;
    v23 = 2048;
    selfCopy = self;
    v25 = 2048;
    v26 = streamID;
    v27 = 2048;
    v28 = v13;
    v29 = 2112;
    v30 = avAudioSettings;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d !! DEPRECATED !! #### AVVoiceController[self = %p]: prepareRecordForStream: streamHandle(%lu), bufferDuration(%f), settings: %@", buf, 0x3Au);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  if (*buf && !self->mClientAPIClutch)
  {
    ControllerImpl::prepareRecordForStream(*buf, self, streamCopy, completionCopy);
  }

  else if (completionCopy)
  {
    streamID2 = [streamCopy streamID];
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11780 userInfo:0];
    (*(completionCopy + 2))(completionCopy, streamID2, 0, v16);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  ElapsedTime::~ElapsedTime(v31);
  TraceWrapper::~TraceWrapper(&v18);

  v17 = *MEMORY[0x1E69E9840];
}

- (unint64_t)setContext:(id)context streamType:(int64_t *)type error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v23 = 4134;
  v24 = 1;
  v25 = 0u;
  v26 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v37, "[AVVoiceController setContext:streamType:error:]", 0, 0);
  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  v11 = v9;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Get4CCFromInt([contextCopy activationMode]);
    activationDeviceUID = [contextCopy activationDeviceUID];
    *buf = 136316162;
    v28 = "AVVoiceController.mm";
    v29 = 1024;
    v30 = 1383;
    v31 = 2048;
    selfCopy = self;
    v33 = 2112;
    v34 = v12;
    v35 = 2112;
    v36 = activationDeviceUID;
    _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: setContext: activationMode(%@), deviceUID(%@)", buf, 0x30u);
  }

LABEL_8:
  v22 = 0;
  [(AVVoiceController *)self impl];
  if (v20 && !self->mClientAPIClutch)
  {
    v15 = ControllerImpl::setContext(v20, self, contextCopy, &v22, type);
    if (v15)
    {
      if (error)
      {
        *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v15 userInfo:0];
      }

      v14 = 0;
      v22 = 0;
    }

    else
    {
      v14 = v22;
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v14 = *kAVVCScope;
      if (!v14)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v28 = "AVVoiceController.mm";
      v29 = 1024;
      v30 = 1385;
      v31 = 2048;
      selfCopy = v20;
      v33 = 1024;
      LODWORD(v34) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    v14 = 0;
  }

LABEL_21:
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  ElapsedTime::~ElapsedTime(v37);
  TraceWrapper::~TraceWrapper(&v23);

  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

- (unint64_t)setContext:(id)context error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v21 = 4134;
  v22 = 1;
  v23 = 0u;
  v24 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v35, "[AVVoiceController setContext:error:]", 0, 0);
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = Get4CCFromInt([contextCopy activationMode]);
    activationDeviceUID = [contextCopy activationDeviceUID];
    *buf = 136316162;
    v26 = "AVVoiceController.mm";
    v27 = 1024;
    v28 = 1366;
    v29 = 2048;
    selfCopy = self;
    v31 = 2112;
    v32 = v10;
    v33 = 2112;
    v34 = activationDeviceUID;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: setContext: activationMode(%@), deviceUID(%@)", buf, 0x30u);
  }

LABEL_8:
  v20 = 0;
  [(AVVoiceController *)self impl];
  if (v18 && !self->mClientAPIClutch)
  {
    v13 = ControllerImpl::setContext(v18, self, contextCopy, &v20, 0);
    if (v13)
    {
      if (error)
      {
        *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v13 userInfo:0];
      }

      v12 = 0;
      v20 = 0;
    }

    else
    {
      v12 = v20;
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v12 = *kAVVCScope;
      if (!v12)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v26 = "AVVoiceController.mm";
      v27 = 1024;
      v28 = 1368;
      v29 = 2048;
      selfCopy = v18;
      v31 = 1024;
      LODWORD(v32) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    v12 = 0;
  }

LABEL_21:
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  ElapsedTime::~ElapsedTime(v35);
  TraceWrapper::~TraceWrapper(&v21);

  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)setContext:(id)context completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v15 = 4134;
  v16 = 1;
  v17 = 0u;
  v18 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v26, "[AVVoiceController setContext:completion:]", 0, 0);
  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  v10 = v8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = Get4CCFromInt([contextCopy activationMode]);
    activationDeviceUID = [contextCopy activationDeviceUID];
    *buf = 136316162;
    *&buf[4] = "AVVoiceController.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1352;
    v20 = 2048;
    selfCopy = self;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = activationDeviceUID;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: setContext:streamType:completion: activationMode(%@), deviceUID(%@)", buf, 0x30u);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  if (*buf && !self->mClientAPIClutch)
  {
    ControllerImpl::setContext(*buf, self, contextCopy, completionCopy);
  }

  else if (completionCopy)
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11780 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, v13);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  ElapsedTime::~ElapsedTime(v26);
  TraceWrapper::~TraceWrapper(&v15);

  v14 = *MEMORY[0x1E69E9840];
}

- (int64_t)_bringUp:(int64_t)up withError:(id *)error
{
  v6 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = 0;
  operator new();
}

uint64_t __40__AVVoiceController__bringUp_withError___block_invoke(uint64_t a1)
{
  [*(*(a1 + 48) + 464) setParentVoiceController:*(a1 + 32)];
  result = ControllerImpl::configureAlerts(*(a1 + 48), *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)initVoiceControllerForClient:(int64_t)client withError:(id *)error
{
  v61 = *MEMORY[0x1E69E9840];
  v50 = 4133;
  v51 = 1;
  v52 = 0u;
  v53 = 0u;
  kdebug_trace();
  Initialize_Logging();
  ElapsedTime::ElapsedTime(v54, "[AVVoiceController initVoiceControllerForClient:withError:]", 0, 0);
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v56 = "AVVoiceController.mm";
    v57 = 1024;
    *v58 = 1279;
    *&v58[4] = 1024;
    *&v58[6] = client;
    *&v58[10] = 2048;
    *&v58[12] = self;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [enforce 1 avvc] #### AVVoiceController: initVoiceControllerForClient:(%d) (V2): [self == %p]", buf, 0x22u);
  }

LABEL_8:
  v9 = [AVVoiceTriggerClient sharedInstance:client];
  selfCopy = self;
  if (kAVVCScope)
  {
    v11 = *kAVVCScope;
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  v13 = v11;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = GetAVVCSingleInstanceSemaphore();
    v15 = [v14 debugDescription];
    *buf = 136315906;
    v56 = "AVVoiceController.mm";
    v57 = 1024;
    *v58 = 124;
    *&v58[4] = 2048;
    *&v58[6] = selfCopy;
    *&v58[14] = 2112;
    *&v58[16] = v15;
    _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [enforce 1 avvc] before wait controller(%p), %@", buf, 0x26u);
  }

LABEL_15:
  v16 = GetAVVCSingleInstanceSemaphore();
  v17 = dispatch_time(0, 7500000000);
  v18 = dispatch_semaphore_wait(v16, v17);

  if (kAVVCScope)
  {
    v19 = *kAVVCScope;
    if (!v19)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v19 = MEMORY[0x1E69E9C10];
    v20 = MEMORY[0x1E69E9C10];
  }

  v21 = v19;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = GetAVVCSingleInstanceSemaphore();
    v23 = [v22 debugDescription];
    v24 = v23;
    v56 = "AVVoiceController.mm";
    v57 = 1024;
    v25 = " TIMEDOUT!";
    *v58 = 126;
    *&v58[4] = 2080;
    *buf = 136316162;
    if (!v18)
    {
      v25 = "";
    }

    *&v58[6] = v25;
    *&v58[14] = 2048;
    *&v58[16] = selfCopy;
    v59 = 2112;
    v60 = v23;
    _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [enforce 1 avvc] after wait%s controller(%p), %@", buf, 0x30u);
  }

LABEL_24:
  if (v18)
  {
    if (kAVVCScope)
    {
      v26 = *kAVVCScope;
      if (!v26)
      {
LABEL_32:
        v28 = *kAVVCScope;
        v29 = CALog::Scope::oslog(*kAVVCScope);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v56 = "BlockIfAnotherAVVCIsStillAlive";
          v57 = 2048;
          *v58 = selfCopy;
          _os_log_fault_impl(&dword_1BA5AC000, v28, OS_LOG_TYPE_FAULT, "[enforce 1 avvc] %s Timed out waiting to initialize, which means multiple AVVC objects exist simultaneously. Controller(%p)", buf, 0x16u);
        }

        goto LABEL_35;
      }
    }

    else
    {
      v26 = MEMORY[0x1E69E9C10];
      v27 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v56 = "AVVoiceController.mm";
      v57 = 1024;
      *v58 = 129;
      _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [enforce 1 avvc] Timed out waiting to initialize, which means multiple AVVC objects exist simultaneously", buf, 0x12u);
    }

    goto LABEL_32;
  }

LABEL_35:

  v49.receiver = selfCopy;
  v49.super_class = AVVoiceController;
  v30 = [(AVVoiceController *)&v49 init];
  v31 = v30;
  if (v30)
  {
    v32 = v30;
    if (kAVVCScope)
    {
      if (*(kAVVCScope + 8))
      {
        v33 = *kAVVCScope;
        if (v33)
        {
          v34 = v33;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v56 = "AVVCUtils.mm";
            v57 = 1024;
            *v58 = 80;
            *&v58[4] = 2048;
            *&v58[6] = v32;
            _os_log_impl(&dword_1BA5AC000, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d RegisterObject: registering %p", buf, 0x1Cu);
          }
        }
      }
    }

    pthread_mutex_lock(&MapLocker::sMapLock);
    v35 = *(GetObjectMap() + 8);
    if (!v35)
    {
LABEL_48:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v36 = v35;
        v37 = v35[4];
        if (v32 >= v37)
        {
          break;
        }

        v35 = *v36;
        if (!*v36)
        {
          goto LABEL_48;
        }
      }

      if (v37 >= v32)
      {
        break;
      }

      v35 = v36[1];
      if (!v35)
      {
        goto LABEL_48;
      }
    }

    pthread_mutex_unlock(&MapLocker::sMapLock);

    v38 = [(AVVoiceController *)v32 _bringUp:client withError:error];
    if (v18)
    {
      if (IsMetricsOwnedByAVVC(void)::onceToken != -1)
      {
        dispatch_once(&IsMetricsOwnedByAVVC(void)::onceToken, &__block_literal_global_209);
      }

      if (IsMetricsOwnedByAVVC(void)::owned)
      {
        +[AVVCMetricsManager sharedManager];
      }

      else
      {
        [MEMORY[0x1E698D708] sharedInstance];
      }
      v39 = ;
      reporterID = [v39 reporterID];

      v41 = +[AVVCMetricsManager sharedManager];
      [v41 logABCMetric:@"avvcDualAVVC" category:8 type:5 reporterID:reporterID];
    }

    if (v38)
    {
      if (error)
      {
        *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v38 userInfo:0];
      }

      v48 = 0;
      [(AVVoiceController *)v32 _teardownWithError:&v48];
      v42 = v48;
      if (kAVVCScope)
      {
        v43 = *kAVVCScope;
        if (!v43)
        {
LABEL_67:

          v44 = 0;
          goto LABEL_68;
        }
      }

      else
      {
        v43 = MEMORY[0x1E69E9C10];
        v45 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v56 = "AVVoiceController.mm";
        v57 = 1024;
        *v58 = 1306;
        *&v58[4] = 2112;
        *&v58[6] = v42;
        _os_log_impl(&dword_1BA5AC000, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to initialize. Teardown error: %@", buf, 0x1Cu);
      }

      goto LABEL_67;
    }
  }

  v44 = v31;
LABEL_68:
  ElapsedTime::~ElapsedTime(v54);
  TraceWrapper::~TraceWrapper(&v50);

  v46 = *MEMORY[0x1E69E9840];
  return v44;
}

- (NSDictionary)metrics
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__192;
  v15 = __Block_byref_object_dispose__193;
  v16 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __28__AVVoiceController_metrics__block_invoke;
  v9 = &unk_1E7EF6988;
  v10 = &v11;
  selfCopy = self;
  v3 = v7;
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable == 1)
  {
    v8(v3);
  }

  else
  {
    v4 = selfCopy;
    objc_sync_enter(v4);
    v8(v3);
    objc_sync_exit(v4);
  }

  v5 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v5;
}

void __28__AVVoiceController_metrics__block_invoke(uint64_t a1)
{
  v5 = +[AVVCMetricsManager sharedManager];
  v2 = [v5 retrieveMetrics];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (unint64_t)getAlertStartTime
{
  v18 = *MEMORY[0x1E69E9840];
  [(AVVoiceController *)self impl];
  if (v8 && !self->mClientAPIClutch)
  {
    v3 = *(v8 + 376);
    goto LABEL_11;
  }

  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    mClientAPIClutch = self->mClientAPIClutch;
    *buf = 136315906;
    v11 = "AVVoiceController.mm";
    v12 = 1024;
    v13 = 1241;
    v14 = 2048;
    v15 = v8;
    v16 = 1024;
    v17 = mClientAPIClutch;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
  }

  v3 = 0;
LABEL_11:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (float)alertVolume
{
  v19 = *MEMORY[0x1E69E9840];
  [(AVVoiceController *)self impl];
  if (v9 && !self->mClientAPIClutch)
  {
    v4 = *(v9 + 400);
    goto LABEL_12;
  }

  if (!kAVVCScope)
  {
    v3 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
    goto LABEL_8;
  }

  v3 = *kAVVCScope;
  if (v3)
  {
LABEL_8:
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v12 = "AVVoiceController.mm";
      v13 = 1024;
      v14 = 1233;
      v15 = 2048;
      v16 = v9;
      v17 = 1024;
      v18 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  v4 = 0.0;
LABEL_12:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)setAlertVolume:(float)volume
{
  v24 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "AVVoiceController.mm";
    v18 = 1024;
    v19 = 1216;
    v20 = 2048;
    volumeCopy = volume;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController: setAlertVolume: %f ####", buf, 0x1Cu);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  if (v14 == 0.0 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v17 = "AVVoiceController.mm";
      v18 = 1024;
      v19 = 1217;
      v20 = 2048;
      volumeCopy = v14;
      v22 = 1024;
      v23 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3321888768;
    v11[2] = __36__AVVoiceController_setAlertVolume___block_invoke;
    v11[3] = &__block_descriptor_52_ea8_32c42_ZTSNSt3__110shared_ptrI14ControllerImplEE_e5_v8__0l;
    *&v11[4] = v14;
    v12 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    volumeCopy2 = volume;
    ControllerImpl::safeWork(*&v14, v11, "[AVVoiceController setAlertVolume:]");
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

LABEL_21:
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __36__AVVoiceController_setAlertVolume___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  if (*(v1 + 400) != v2)
  {
    *(v1 + 400) = v2;
    v4 = *(a1 + 40);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AlertLock::AlertLock(v6, v1, v4);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    if (ControllerImpl::getAlertQueueFromImplQueue(*(a1 + 32)))
    {
      AlertQueueFromImplQueue = ControllerImpl::getAlertQueueFromImplQueue(*(a1 + 32));
      AudioQueueSetParameter(AlertQueueFromImplQueue, 1u, *(*(a1 + 32) + 400));
    }

    VCLocker::~VCLocker(v6);
  }
}

- (void)setRecordEndWaitTime:(double)time
{
  v21 = *MEMORY[0x1E69E9840];
  [(AVVoiceController *)self impl];
  if (v11 && !self->mClientAPIClutch)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3321888768;
    v9[2] = __42__AVVoiceController_setRecordEndWaitTime___block_invoke;
    v9[3] = &__block_descriptor_56_ea8_40c42_ZTSNSt3__110shared_ptrI14ControllerImplEE_e5_v8__0l;
    *&v9[4] = time;
    v9[5] = v11;
    v10 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ControllerImpl::safeWork(v11, v9, "[AVVoiceController setRecordEndWaitTime:]");
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v14 = "AVVoiceController.mm";
      v15 = 1024;
      v16 = 1198;
      v17 = 2048;
      v18 = v11;
      v19 = 1024;
      v20 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

LABEL_14:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __42__AVVoiceController_setRecordEndWaitTime___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2 != *(v3 + 448))
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3321888768;
    v5[2] = __42__AVVoiceController_setRecordEndWaitTime___block_invoke_2;
    v5[3] = &__block_descriptor_56_ea8_40c42_ZTSNSt3__110shared_ptrI14ControllerImplEE_e5_v8__0l;
    *&v5[4] = v2;
    v4 = *(a1 + 48);
    v5[5] = v3;
    v6 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ControllerImpl::safeNotify(v3, "setRecordEndWaitTime", v5);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void __42__AVVoiceController_setRecordEndWaitTime___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = fmax(v2, 0.25);
  if (v2 == -1.0)
  {
    v4 = -1.0;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(a1 + 40);
  *(v5 + 448) = v4;
  WeakRetained = objc_loadWeakRetained((v5 + 416));
  [WeakRetained setEndWaitTime:*(*(a1 + 40) + 448)];
}

- (double)recordEndWaitTime
{
  v14 = *MEMORY[0x1E69E9840];
  [(AVVoiceController *)self impl];
  if (!v11 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
LABEL_15:
        v4 = 0.0;
        goto LABEL_16;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      *&buf[4] = "AVVoiceController.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1188;
      *&buf[18] = 2048;
      *&buf[20] = v11;
      *&buf[28] = 1024;
      *&buf[30] = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_15;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *&buf[24] = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3321888768;
  v9[2] = __38__AVVoiceController_recordEndWaitTime__block_invoke;
  v9[3] = &unk_1F3848E28;
  v9[4] = buf;
  v9[5] = v11;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ControllerImpl::safeWorkSync(v11, v9);
  v4 = *(*&buf[8] + 24);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Block_object_dispose(buf, 8);
LABEL_16:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

double __38__AVVoiceController_recordEndWaitTime__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 448);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)setRecordInterspeechWaitTime:(double)time
{
  v21 = *MEMORY[0x1E69E9840];
  [(AVVoiceController *)self impl];
  if (v11 && !self->mClientAPIClutch)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3321888768;
    v9[2] = __50__AVVoiceController_setRecordInterspeechWaitTime___block_invoke;
    v9[3] = &__block_descriptor_56_ea8_40c42_ZTSNSt3__110shared_ptrI14ControllerImplEE_e5_v8__0l;
    *&v9[4] = time;
    v9[5] = v11;
    v10 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ControllerImpl::safeWork(v11, v9, "[AVVoiceController setRecordInterspeechWaitTime:]");
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v14 = "AVVoiceController.mm";
      v15 = 1024;
      v16 = 1171;
      v17 = 2048;
      v18 = v11;
      v19 = 1024;
      v20 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

LABEL_14:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __50__AVVoiceController_setRecordInterspeechWaitTime___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2 != *(v3 + 440))
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3321888768;
    v5[2] = __50__AVVoiceController_setRecordInterspeechWaitTime___block_invoke_2;
    v5[3] = &__block_descriptor_56_ea8_40c42_ZTSNSt3__110shared_ptrI14ControllerImplEE_e5_v8__0l;
    *&v5[4] = v2;
    v4 = *(a1 + 48);
    v5[5] = v3;
    v6 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ControllerImpl::safeNotify(v3, "setRecordInterspeechWaitTime", v5);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void __50__AVVoiceController_setRecordInterspeechWaitTime___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = fmax(v2, 0.25);
  if (v2 == -1.0)
  {
    v4 = -1.0;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(a1 + 40);
  *(v5 + 440) = v4;
  WeakRetained = objc_loadWeakRetained((v5 + 416));
  [WeakRetained setInterspeechWaitTime:*(*(a1 + 40) + 440)];
}

- (double)recordInterspeechWaitTime
{
  v14 = *MEMORY[0x1E69E9840];
  [(AVVoiceController *)self impl];
  if (!v11 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
LABEL_15:
        v4 = 0.0;
        goto LABEL_16;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      *&buf[4] = "AVVoiceController.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1161;
      *&buf[18] = 2048;
      *&buf[20] = v11;
      *&buf[28] = 1024;
      *&buf[30] = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_15;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *&buf[24] = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3321888768;
  v9[2] = __46__AVVoiceController_recordInterspeechWaitTime__block_invoke;
  v9[3] = &unk_1F3848E28;
  v9[4] = buf;
  v9[5] = v11;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ControllerImpl::safeWorkSync(v11, v9);
  v4 = *(*&buf[8] + 24);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Block_object_dispose(buf, 8);
LABEL_16:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

double __46__AVVoiceController_recordInterspeechWaitTime__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 440);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)setRecordStartWaitTime:(double)time
{
  v23 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v16 = "AVVoiceController.mm";
    v17 = 1024;
    v18 = 1144;
    v19 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController: recordStartWaitTime: %f ####", buf, 0x1Cu);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  if (v13 == 0.0 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v16 = "AVVoiceController.mm";
      v17 = 1024;
      v18 = 1145;
      v19 = 2048;
      timeCopy = v13;
      v21 = 1024;
      v22 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3321888768;
    v11[2] = __44__AVVoiceController_setRecordStartWaitTime___block_invoke;
    v11[3] = &__block_descriptor_56_ea8_40c42_ZTSNSt3__110shared_ptrI14ControllerImplEE_e5_v8__0l;
    *&v11[4] = time;
    *&v11[5] = v13;
    v12 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ControllerImpl::safeWork(*&v13, v11, "[AVVoiceController setRecordStartWaitTime:]");
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

LABEL_21:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __44__AVVoiceController_setRecordStartWaitTime___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2 != *(v3 + 432))
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3321888768;
    v5[2] = __44__AVVoiceController_setRecordStartWaitTime___block_invoke_2;
    v5[3] = &__block_descriptor_56_ea8_40c42_ZTSNSt3__110shared_ptrI14ControllerImplEE_e5_v8__0l;
    *&v5[4] = v2;
    v4 = *(a1 + 48);
    v5[5] = v3;
    v6 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ControllerImpl::safeNotify(v3, "setRecordStartWaitTime", v5);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void __44__AVVoiceController_setRecordStartWaitTime___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = fmax(v2, 0.25);
  if (v2 == -1.0)
  {
    v4 = -1.0;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(a1 + 40);
  *(v5 + 432) = v4;
  WeakRetained = objc_loadWeakRetained((v5 + 416));
  [WeakRetained setStartWaitTime:*(*(a1 + 40) + 432)];
}

- (double)recordStartWaitTime
{
  v14 = *MEMORY[0x1E69E9840];
  [(AVVoiceController *)self impl];
  if (!v11 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
LABEL_15:
        v4 = 0.0;
        goto LABEL_16;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      *&buf[4] = "AVVoiceController.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1134;
      *&buf[18] = 2048;
      *&buf[20] = v11;
      *&buf[28] = 1024;
      *&buf[30] = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_15;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *&buf[24] = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3321888768;
  v9[2] = __40__AVVoiceController_recordStartWaitTime__block_invoke;
  v9[3] = &unk_1F3848E28;
  v9[4] = buf;
  v9[5] = v11;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ControllerImpl::safeWorkSync(v11, v9);
  v4 = *(*&buf[8] + 24);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Block_object_dispose(buf, 8);
LABEL_16:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

double __40__AVVoiceController_recordStartWaitTime__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 432);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)setRecordEndpointMode:(int)mode
{
  v24 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "AVVoiceController.mm";
    v18 = 1024;
    v19 = 1120;
    v20 = 1024;
    LODWORD(v21) = mode;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController: setRecordEndpointMode: %d ####", buf, 0x18u);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  if (v14 && !self->mClientAPIClutch)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3321888768;
    v11[2] = __43__AVVoiceController_setRecordEndpointMode___block_invoke;
    v11[3] = &__block_descriptor_52_ea8_32c42_ZTSNSt3__110shared_ptrI14ControllerImplEE_e5_v8__0l;
    v11[4] = v14;
    v12 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    modeCopy = mode;
    ControllerImpl::safeWork(v14, v11, "[AVVoiceController setRecordEndpointMode:]");
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v17 = "AVVoiceController.mm";
      v18 = 1024;
      v19 = 1121;
      v20 = 2048;
      v21 = v14;
      v22 = 1024;
      v23 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

LABEL_21:
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __43__AVVoiceController_setRecordEndpointMode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  if (*(v2 + 428) != v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3321888768;
    v5[2] = __43__AVVoiceController_setRecordEndpointMode___block_invoke_2;
    v5[3] = &__block_descriptor_52_ea8_32c42_ZTSNSt3__110shared_ptrI14ControllerImplEE_e5_v8__0l;
    v4 = *(a1 + 40);
    v5[4] = v2;
    v6 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v3 = *(a1 + 48);
    }

    v7 = v3;
    ControllerImpl::safeNotify(v2, "setRecordEndpointMode", v5);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void __43__AVVoiceController_setRecordEndpointMode___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 428) = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((v2 + 416));
  if (*(a1 + 48) == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = WeakRetained;
  [WeakRetained setEndpointMode:v4];
}

- (int)recordEndpointMode
{
  v16 = *MEMORY[0x1E69E9840];
  [(AVVoiceController *)self impl];
  if (!v11 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
LABEL_15:
        v4 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      *&buf[4] = "AVVoiceController.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1110;
      *&buf[18] = 2048;
      *&buf[20] = v11;
      v14 = 1024;
      v15 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_15;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *&buf[24] = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3321888768;
  v9[2] = __39__AVVoiceController_recordEndpointMode__block_invoke;
  v9[3] = &unk_1F3848E28;
  v9[4] = buf;
  v9[5] = v11;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ControllerImpl::safeWorkSync(v11, v9);
  v4 = *(*&buf[8] + 24);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Block_object_dispose(buf, 8);
LABEL_16:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)setEndpointerDelegate:(id)delegate
{
  v26 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "AVVoiceController.mm";
    v20 = 1024;
    v21 = 1100;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController: setEndpointerDelegate ####", buf, 0x12u);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  v7 = v16;
  if (v16 && !self->mClientAPIClutch)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3321888768;
    v12[2] = __43__AVVoiceController_setEndpointerDelegate___block_invoke;
    v12[3] = &unk_1F3848978;
    v14 = v16;
    v15 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12[4] = self;
    v13 = delegateCopy;
    ControllerImpl::safeWorkSync(v7, v12);

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v19 = "AVVoiceController.mm";
      v20 = 1024;
      v21 = 1101;
      v22 = 2048;
      v23 = v16;
      v24 = 1024;
      v25 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

LABEL_21:
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (Endpointer)endpointerDelegate
{
  v27 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__192;
  v17 = __Block_byref_object_dispose__193;
  v18 = 0;
  [(AVVoiceController *)self impl];
  if (!v11 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
LABEL_14:
        v4 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v20 = "AVVoiceController.mm";
      v21 = 1024;
      v22 = 1090;
      v23 = 2048;
      v24 = v11;
      v25 = 1024;
      v26 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_14;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3321888768;
  v9[2] = __39__AVVoiceController_endpointerDelegate__block_invoke;
  v9[3] = &unk_1F3848E28;
  v9[4] = &v13;
  v9[5] = v11;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ControllerImpl::safeWorkSync(v11, v9);
  v4 = v14[5];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

LABEL_15:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Block_object_dispose(&v13, 8);

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t __39__AVVoiceController_endpointerDelegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 416));
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x1EEE66BB8]();
}

- (void)setRecordDelegate:(id)delegate
{
  v17 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "AVVoiceController.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1065;
    v15 = 2048;
    v16 = delegateCopy;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController: setRecordDelegate: %p ####", buf, 0x1Cu);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  v7 = *buf;
  if (*buf)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3321888768;
    v9[2] = __39__AVVoiceController_setRecordDelegate___block_invoke;
    v9[3] = &unk_1F3848978;
    v10 = delegateCopy;
    v12 = v7;
    v13 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
    }

    selfCopy = self;
    ControllerImpl::safeWorkSync(v7, v9);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __39__AVVoiceController_setRecordDelegate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 168));

  if (v2 != WeakRetained)
  {
    ControllerImpl::waitForAllStopRecordCompletion(*(a1 + 48), *(a1 + 40));
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3321888768;
    v6[2] = __39__AVVoiceController_setRecordDelegate___block_invoke_2;
    v6[3] = &unk_1F3848DF0;
    v5 = *(a1 + 48);
    v4 = *(a1 + 56);
    v8 = v5;
    v9 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *(a1 + 32);
    ControllerImpl::safeNotifySync(v5, "set record delegate", v6);

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

- (AVVoiceControllerRecordDelegate)recordDelegate
{
  v27 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__192;
  v17 = __Block_byref_object_dispose__193;
  v18 = 0;
  [(AVVoiceController *)self impl];
  if (!v11 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
LABEL_14:
        v4 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v20 = "AVVoiceController.mm";
      v21 = 1024;
      v22 = 1055;
      v23 = 2048;
      v24 = v11;
      v25 = 1024;
      v26 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_14;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3321888768;
  v9[2] = __35__AVVoiceController_recordDelegate__block_invoke;
  v9[3] = &unk_1F3848E28;
  v9[4] = &v13;
  v9[5] = v11;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ControllerImpl::safeWorkSync(v11, v9);
  v4 = v14[5];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

LABEL_15:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Block_object_dispose(&v13, 8);

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t __35__AVVoiceController_recordDelegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 168));
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)setAlertSoundFromURL:(id)l forType:(int)type
{
  v27 = *MEMORY[0x1E69E9840];
  lCopy = l;
  [(AVVoiceController *)self impl];
  if (!v17 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
LABEL_13:
        LOBYTE(self) = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v20 = "AVVoiceController.mm";
      v21 = 1024;
      v22 = 1036;
      v23 = 2048;
      v24 = v17;
      v25 = 1024;
      typeCopy = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_13;
  }

  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  v14 = v8;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    absoluteString = [lCopy absoluteString];
    *buf = 136315906;
    v20 = "AVVoiceController.mm";
    v21 = 1024;
    v22 = 1038;
    v23 = 2112;
    v24 = absoluteString;
    v25 = 1024;
    typeCopy = type;
    _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController: setAlertSoundFromURL: %@ forType: %d ####", buf, 0x22u);
  }

LABEL_21:
  if ((type - 4) > 0xFFFFFFFC)
  {
    LOBYTE(self) = ControllerImpl::setAlertURL(v17, self, type, lCopy) == 0;
    goto LABEL_14;
  }

  if (!kAVVCScope)
  {
    self = MEMORY[0x1E69E9C10];
    v16 = MEMORY[0x1E69E9C10];
    goto LABEL_27;
  }

  self = *kAVVCScope;
  if (self)
  {
LABEL_27:
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "AVVoiceController.mm";
      v21 = 1024;
      v22 = 1040;
      _os_log_impl(&dword_1BA5AC000, &self->super, OS_LOG_TYPE_ERROR, "%25s:%-5d setAlertSoundFromURL:forType: Illegal alertType", buf, 0x12u);
    }

    goto LABEL_13;
  }

LABEL_14:
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v11 = *MEMORY[0x1E69E9840];
  return self;
}

- (BOOL)IsDeviceAvailableInLocalRoute:(id)route error:(id *)error
{
  v14 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-4 userInfo:0];
  }

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315394;
    v11 = "AVVoiceController.mm";
    v12 = 1024;
    v13 = 1029;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ### unimplemented in this platform", &v10, 0x12u);
  }

LABEL_10:
  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)enableMiniDucking:(BOOL)ducking
{
  duckingCopy = ducking;
  v24 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "AVVoiceController.mm";
    v18 = 1024;
    v19 = 985;
    v20 = 1024;
    LODWORD(v21) = duckingCopy;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController: enableMiniDucking: %d", buf, 0x18u);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  if (v14 && !self->mClientAPIClutch)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3321888768;
    v11[2] = __39__AVVoiceController_enableMiniDucking___block_invoke;
    v11[3] = &__block_descriptor_49_ea8_32c42_ZTSNSt3__110shared_ptrI14ControllerImplEE_e5_v8__0l;
    v11[4] = v14;
    v12 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = duckingCopy;
    ControllerImpl::safeWorkSync(v14, v11);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v17 = "AVVoiceController.mm";
      v18 = 1024;
      v19 = 986;
      v20 = 2048;
      v21 = v14;
      v22 = 1024;
      v23 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

LABEL_21:
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __39__AVVoiceController_enableMiniDucking___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SessionLock::SessionLock(v4, v2, v3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  ControllerImpl::enableMiniDucking(*(a1 + 32), *(a1 + 48));
  VCLocker::~VCLocker(v4);
}

- (void)dealloc
{
  v56 = *MEMORY[0x1E69E9840];
  v43 = 4114;
  v44 = 1;
  v45 = 0u;
  v46 = 0u;
  kdebug_trace();
  TraceMethod::TraceMethod(v42, "dealloc");
  ElapsedTime::ElapsedTime(v47, "[AVVoiceController dealloc]", 0, 0);
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    selfCopy2 = "AVVoiceController.mm";
    v50 = 1024;
    v51 = 965;
    v52 = 2048;
    selfCopy3 = self;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [enforce 1 avvc] #### AVVoiceController: dealloc [self == %p] ####", buf, 0x1Cu);
  }

LABEL_8:
  impl = self->_impl;
  if (!impl)
  {
    goto LABEL_24;
  }

  v6 = *impl;
  v7 = impl[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((*(v6 + 520) & 1) == 0)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
LABEL_19:
        v10 = *kAVVCScope;
        v11 = CALog::Scope::oslog(*kAVVCScope);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          *buf = 134217984;
          selfCopy2 = self;
          _os_log_fault_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_FAULT, "In dealloc without prior teardownWithError: call. Controller(%p)", buf, 0xCu);
        }

        goto LABEL_22;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      selfCopy2 = "AVVoiceController.mm";
      v50 = 1024;
      v51 = 971;
      v52 = 2048;
      selfCopy3 = self;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d In dealloc without prior teardownWithError: call. Controller(%p)", buf, 0x1Cu);
    }

    goto LABEL_19;
  }

LABEL_22:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

LABEL_24:
  selfCopy4 = self;
  if (kAVVCScope)
  {
    if (*(kAVVCScope + 8))
    {
      v13 = *kAVVCScope;
      if (v13)
      {
        v14 = v13;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          selfCopy2 = "AVVCUtils.mm";
          v50 = 1024;
          v51 = 87;
          v52 = 2048;
          selfCopy3 = selfCopy4;
          _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d UnregisterObject: unregistering %p", buf, 0x1Cu);
        }
      }
    }
  }

  if (!ObjectExists(selfCopy4))
  {
    CAVerboseAbort();
  }

  pthread_mutex_lock(&MapLocker::sMapLock);
  ObjectMap = GetObjectMap();
  v16 = ObjectMap[1];
  if (!v16)
  {
    goto LABEL_39;
  }

  v17 = (ObjectMap + 1);
  v18 = ObjectMap[1];
  do
  {
    v19 = v18[4];
    v20 = v19 >= selfCopy4;
    v21 = v19 < selfCopy4;
    if (v20)
    {
      v17 = v18;
    }

    v18 = v18[v21];
  }

  while (v18);
  if (v17 == (ObjectMap + 1) || v17[4] > selfCopy4)
  {
LABEL_39:
    v17 = (ObjectMap + 1);
  }

  v22 = v17[1];
  if (v22)
  {
    do
    {
      v23 = v22;
      v22 = *v22;
    }

    while (v22);
  }

  else
  {
    v24 = v17;
    do
    {
      v23 = v24[2];
      v25 = *v23 == v24;
      v24 = v23;
    }

    while (!v25);
  }

  if (*ObjectMap == v17)
  {
    *ObjectMap = v23;
  }

  ObjectMap[2] = (ObjectMap[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v16, v17);
  operator delete(v17);
  pthread_mutex_unlock(&MapLocker::sMapLock);

  if (kAVVCScope)
  {
    v26 = *kAVVCScope;
    if (!v26)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v26 = MEMORY[0x1E69E9C10];
    v27 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    selfCopy2 = "AVVoiceController.mm";
    v50 = 1024;
    v51 = 977;
    _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController: exiting dealloc ####", buf, 0x12u);
  }

LABEL_55:
  v28 = selfCopy4;
  if (kAVVCScope)
  {
    v29 = *kAVVCScope;
    if (!v29)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v29 = MEMORY[0x1E69E9C10];
    v30 = MEMORY[0x1E69E9C10];
  }

  v31 = v29;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = GetAVVCSingleInstanceSemaphore();
    v33 = [v32 debugDescription];
    *buf = 136315906;
    selfCopy2 = "AVVoiceController.mm";
    v50 = 1024;
    v51 = 138;
    v52 = 2048;
    selfCopy3 = v28;
    v54 = 2112;
    v55 = v33;
    _os_log_impl(&dword_1BA5AC000, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [enforce 1 avvc] before signal avvc(%p), %@", buf, 0x26u);
  }

LABEL_62:
  v34 = GetAVVCSingleInstanceSemaphore();
  dispatch_semaphore_signal(v34);

  if (kAVVCScope)
  {
    v35 = *kAVVCScope;
    if (!v35)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v35 = MEMORY[0x1E69E9C10];
    v36 = MEMORY[0x1E69E9C10];
  }

  v37 = v35;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = GetAVVCSingleInstanceSemaphore();
    v39 = [v38 debugDescription];
    *buf = 136315906;
    selfCopy2 = "AVVoiceController.mm";
    v50 = 1024;
    v51 = 140;
    v52 = 2048;
    selfCopy3 = v28;
    v54 = 2112;
    v55 = v39;
    _os_log_impl(&dword_1BA5AC000, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [enforce 1 avvc] after signal avvc(%p), %@", buf, 0x26u);
  }

LABEL_69:
  ElapsedTime::~ElapsedTime(v47);
  TraceMethod::~TraceMethod(v42);
  TraceWrapper::~TraceWrapper(&v43);
  v41.receiver = v28;
  v41.super_class = AVVoiceController;
  [(AVVoiceController *)&v41 dealloc];
  v40 = *MEMORY[0x1E69E9840];
}

- (void)_teardownWithError:(id *)error
{
  impl = self->_impl;
  if (!impl)
  {
    return;
  }

  v6 = *impl;
  v5 = *(impl + 1);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!v6)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      return;
    }
  }

  else if (!v6)
  {
    return;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = __40__AVVoiceController__teardownWithError___block_invoke;
  v8[3] = &unk_1F3848DF0;
  v8[4] = self;
  v8[5] = v6;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ControllerImpl::safeWorkSync(v6, v8);
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable == 1)
  {
    ControllerImpl::safeAllQueuesBarrier(v6);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v7 = *(impl + 1);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  MEMORY[0x1BFAF5800](impl, 0x20C40A4A59CD2);
  self->_impl = 0;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void __40__AVVoiceController__teardownWithError___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v1 = *kAVVCScope;
    if (!v1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v40 = "AVVoiceController.mm";
    v41 = 1024;
    v42 = 885;
    v43 = 2048;
    v44 = v3;
    _os_log_impl(&dword_1BA5AC000, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d beginning teardown. self == %p", buf, 0x1Cu);
  }

LABEL_8:
  [*(a1 + 32) sessionCleanup];
  ControllerImpl::cleanup(*(a1 + 40), *(a1 + 32));
  ControllerImpl::deleteRecordingEngines(*(a1 + 40));
  v4 = *(a1 + 40);
  if (*(v4 + 521))
  {
    goto LABEL_37;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SessionLock::SessionLock(v37, v4, v5);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v29 = ControllerImpl::sessionManagerForStreamID(*(a1 + 40), 0, 0);
  v36 = 0;
  [v29 setActive:0 withOptions:objc_msgSend(v29 error:{"getSessionActivationOptions"), &v36}];
  v6 = v36;
  if (!v6)
  {
    goto LABEL_21;
  }

  if (!kAVVCScope)
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
    goto LABEL_18;
  }

  v7 = *kAVVCScope;
  if (v7)
  {
LABEL_18:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v40 = "AVVoiceController.mm";
      v41 = 1024;
      v42 = 904;
      v43 = 2112;
      v44 = v6;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d setActive(false): failed with error: %@", buf, 0x1Cu);
    }
  }

LABEL_21:
  v9 = +[AVVCSessionFactory sharedInstance];
  v10 = [v9 auxSessionManagers];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (!v12)
  {
    goto LABEL_36;
  }

  v13 = MEMORY[0x1E69E9C10];
  v14 = *v33;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v33 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v32 + 1) + 8 * i);
      v17 = [v16 getSessionActivationOptions];
      v31 = v6;
      [v16 setActive:0 withOptions:v17 error:&v31];
      v18 = v31;

      v6 = v18;
      if (v18)
      {
        if (kAVVCScope)
        {
          v19 = *kAVVCScope;
          if (!v19)
          {
            continue;
          }
        }

        else
        {
          v20 = v13;
          v19 = v13;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v40 = "AVVoiceController.mm";
          v41 = 1024;
          v42 = 913;
          v43 = 2112;
          v44 = v6;
          _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d setActive(false): failed with error: %@", buf, 0x1Cu);
        }
      }
    }

    v12 = [v11 countByEnumeratingWithState:&v32 objects:v38 count:16];
  }

  while (v12);
LABEL_36:

  VCLocker::~VCLocker(v37);
  v4 = *(a1 + 40);
LABEL_37:
  objc_storeWeak((v4 + 416), 0);
  v21 = *(a1 + 40);
  v22 = *(v21 + 456);
  *(v21 + 456) = 0;

  v23 = +[AVVoiceTriggerClient sharedInstance];
  [v23 setAVVCServerCrashedBlock:0];

  v24 = +[AVVoiceTriggerClient sharedInstance];
  [v24 setAVVCServerResetBlock:0];

  v25 = *(a1 + 40);
  *(v25 + 520) = 1;
  [*(v25 + 464) setParentVoiceController:0];
  if (kAVVCScope)
  {
    v26 = *kAVVCScope;
    if (!v26)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v26 = MEMORY[0x1E69E9C10];
    v27 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v40 = "ControllerImpl.mm";
    v41 = 1024;
    v42 = 499;
    v43 = 1024;
    LODWORD(v44) = 1;
    _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ControllerImpl::setAVVCTeardownCompleted(%d)", buf, 0x18u);
  }

LABEL_44:
  v28 = *MEMORY[0x1E69E9840];
}

- (void)teardownWithError:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  self->mClientAPIClutch = 1;
  v8 = 4138;
  v9 = 1;
  v10 = 0u;
  v11 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v18, "[AVVoiceController teardownWithError:]", 0, 0);
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v13 = "AVVoiceController.mm";
    v14 = 1024;
    v15 = 864;
    v16 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: teardownWithError: ", buf, 0x1Cu);
  }

LABEL_8:
  if (error)
  {
    *error = 0;
  }

  [(AVVoiceController *)self setRecordDelegate:0];
  [(AVVoiceController *)self _teardownWithError:error];
  ElapsedTime::~ElapsedTime(v18);
  TraceWrapper::~TraceWrapper(&v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)removeStream:(unint64_t)stream completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  [(AVVoiceController *)self impl];
  v7 = v18;
  if (v18 && !self->mClientAPIClutch)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3321888768;
    v12[2] = __45__AVVoiceController_removeStream_completion___block_invoke;
    v12[3] = &unk_1F3848390;
    v15 = v18;
    v16 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    streamCopy = stream;
    v12[4] = self;
    v13 = 0;
    v14 = completionCopy;
    ControllerImpl::safeWork(v7, v12, "[AVVoiceController removeStream:completion:]");

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v21 = "AVVoiceController.mm";
      v22 = 1024;
      v23 = 844;
      v24 = 2048;
      v25 = v18;
      v26 = 1024;
      v27 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

LABEL_14:
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __45__AVVoiceController_removeStream_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3321888768;
  v9[2] = __45__AVVoiceController_removeStream_completion___block_invoke_2;
  v9[3] = &unk_1F3848BA0;
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v11 = v6;
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 48);
  v8 = *(a1 + 72);
  v10 = v7;
  v13 = v8;
  ControllerImpl::_removeEngineFromMap(v6, v3, v2, v4, v9);

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void __45__AVVoiceController_removeStream_completion___block_invoke_2(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__AVVoiceController_removeStream_completion___block_invoke_3;
  v5[3] = &unk_1E7EF6590;
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v6 = v3;
  v7 = v4;
  ControllerImpl::safeNotify(v2, "removeStream", v5);
}

uint64_t __45__AVVoiceController_removeStream_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40), 0);
  }

  return result;
}

- (void)cleanSlateWithError:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  self->mClientAPIClutch = 1;
  v13 = 4139;
  v14 = 1;
  v15 = 0u;
  v16 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v20, "[AVVoiceController cleanSlateWithError:]", 0, 0);
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "AVVoiceController.mm";
    *&buf[12] = 1024;
    *&buf[14] = 819;
    v18 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: cleanSlate:", buf, 0x1Cu);
  }

LABEL_8:
  [(AVVoiceController *)self impl];
  if (*buf)
  {
    v7 = *(*buf + 184);
    v8 = *&buf[8];
    *buf = 0;
    *&buf[8] = 0;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    [(AVVoiceController *)self setRecordDelegate:0];
    [(AVVoiceController *)self _teardownWithError:error];
    v12 = 0;
    v9 = [(AVVoiceController *)self _bringUp:v7 withError:&v12];
    v10 = v12;
    if (error && v9)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v9 userInfo:0];
    }

    self->mClientAPIClutch = 0;
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  ElapsedTime::~ElapsedTime(v20);
  TraceWrapper::~TraceWrapper(&v13);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)finalize
{
  TraceMethod::TraceMethod(v6, "finalize");
  [(AVVoiceController *)self impl];
  [(AVVoiceController *)self sessionCleanup];
  if (v4)
  {
    ControllerImpl::cleanup(v4, self);
  }

  v3.receiver = self;
  v3.super_class = AVVoiceController;
  [(AVVoiceController *)&v3 finalize];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  TraceMethod::~TraceMethod(v6);
}

- (void)endRecordInterruption
{
  v16 = *MEMORY[0x1E69E9840];
  [(AVVoiceController *)self impl];
  if (v10)
  {
    WeakRetained = objc_loadWeakRetained((v10 + 168));
    if (WeakRetained)
    {
      v4 = objc_loadWeakRetained((v10 + 168));
      v5 = objc_opt_respondsToSelector();

      if (v5)
      {
        if (kAVVCScope)
        {
          v6 = *kAVVCScope;
          if (!v6)
          {
LABEL_11:
            v8 = objc_loadWeakRetained((v10 + 168));
            [v8 voiceControllerEndRecordInterruption:self];

            goto LABEL_12;
          }
        }

        else
        {
          v6 = MEMORY[0x1E69E9C10];
          v7 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v13 = "AVVoiceController.mm";
          v14 = 1024;
          v15 = 762;
          _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d handleInterruptStop: notifying", buf, 0x12u);
        }

        goto LABEL_11;
      }
    }
  }

LABEL_12:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)beginRecordInterruptionWithContext:(id)context
{
  v26 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  [(AVVoiceController *)self impl];
  if (v18)
  {
    WeakRetained = objc_loadWeakRetained((v18 + 168));
    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((v18 + 168));
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        if (kAVVCScope)
        {
          v8 = *kAVVCScope;
          if (!v8)
          {
LABEL_22:
            v13 = objc_loadWeakRetained((v18 + 168));
            [v13 voiceControllerBeginRecordInterruption:self withContext:contextCopy];
LABEL_28:

            goto LABEL_29;
          }
        }

        else
        {
          v8 = MEMORY[0x1E69E9C10];
          v15 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v21 = "AVVoiceController.mm";
          v22 = 1024;
          v23 = 744;
          v24 = 2112;
          v25 = contextCopy;
          _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d handleInterruptStart: notifying with context: %@", buf, 0x1Cu);
        }

        goto LABEL_22;
      }
    }

    v9 = objc_loadWeakRetained((v18 + 168));
    if (v9)
    {
      v10 = objc_loadWeakRetained((v18 + 168));
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        if (kAVVCScope)
        {
          v12 = *kAVVCScope;
          if (!v12)
          {
LABEL_27:
            v13 = objc_loadWeakRetained((v18 + 168));
            [v13 voiceControllerBeginRecordInterruption:self];
            goto LABEL_28;
          }
        }

        else
        {
          v12 = MEMORY[0x1E69E9C10];
          v16 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v21 = "AVVoiceController.mm";
          v22 = 1024;
          v23 = 747;
          _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d handleInterruptStart: notifying without context", buf, 0x12u);
        }

        goto LABEL_27;
      }
    }

    if (kAVVCScope)
    {
      v13 = *kAVVCScope;
      if (!v13)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "AVVoiceController.mm";
      v22 = 1024;
      v23 = 751;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d handleInterruptStart: WARNING: delegate does not respond to voiceControllerBeginRecordInterruption:", buf, 0x12u);
    }

    goto LABEL_28;
  }

LABEL_29:
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)notifyEventOccured:(unint64_t)occured error:(id)error
{
  v25 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  [(AVVoiceController *)self impl];
  if (v15)
  {
    WeakRetained = objc_loadWeakRetained((v15 + 168));
    if (WeakRetained)
    {
      v8 = objc_loadWeakRetained((v15 + 168));
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        if (kAVVCScope)
        {
          v10 = *kAVVCScope;
          if (!v10)
          {
LABEL_17:
            v11 = objc_loadWeakRetained((v15 + 168));
            [v11 voiceControllerEventOccurred:self forStream:occured error:errorCopy];
LABEL_18:

            goto LABEL_19;
          }
        }

        else
        {
          v10 = MEMORY[0x1E69E9C10];
          v13 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v18 = "AVVoiceController.mm";
          v19 = 1024;
          v20 = 727;
          v21 = 2048;
          occuredCopy = occured;
          v23 = 2112;
          v24 = errorCopy;
          _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Notifying streamHandle(%lu) that an event occured: %@", buf, 0x26u);
        }

        goto LABEL_17;
      }
    }

    if (kAVVCScope)
    {
      v11 = *kAVVCScope;
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v18 = "AVVoiceController.mm";
      v19 = 1024;
      v20 = 731;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d WARNING: delegate does not respond to voiceControllerEventOccurred:forStream:error:", buf, 0x12u);
    }

    goto LABEL_18;
  }

LABEL_19:
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)notifyStreamInvalidated:(unint64_t)invalidated
{
  v21 = *MEMORY[0x1E69E9840];
  [(AVVoiceController *)self impl];
  if (v13)
  {
    WeakRetained = objc_loadWeakRetained((v13 + 168));
    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((v13 + 168));
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        if (kAVVCScope)
        {
          v8 = *kAVVCScope;
          if (!v8)
          {
LABEL_17:
            v9 = objc_loadWeakRetained((v13 + 168));
            [v9 voiceControllerStreamInvalidated:self forStream:invalidated];
LABEL_18:

            goto LABEL_19;
          }
        }

        else
        {
          v8 = MEMORY[0x1E69E9C10];
          v11 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v16 = "AVVoiceController.mm";
          v17 = 1024;
          v18 = 712;
          v19 = 2048;
          invalidatedCopy2 = invalidated;
          _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Notifying streamHandle(%lu) invalidated", buf, 0x1Cu);
        }

        goto LABEL_17;
      }
    }

    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v16 = "AVVoiceController.mm";
      v17 = 1024;
      v18 = 716;
      v19 = 2048;
      invalidatedCopy2 = invalidated;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d streamHandle(%lu) invalidated but no record delegate, or notify selector not supported", buf, 0x1Cu);
    }

    goto LABEL_18;
  }

LABEL_19:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)alertPlaybackFinishedWithSettings:(id)settings
{
  v34 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  [(AVVoiceController *)self impl];
  if (v22)
  {
    WeakRetained = objc_loadWeakRetained((v22 + 168));
    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((v22 + 168));
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = objc_loadWeakRetained((v22 + 168));
        [v8 voiceControllerDidFinishAlertPlayback:self withSettings:settingsCopy error:0];

        if (kAVVCScope)
        {
          v9 = *kAVVCScope;
          if (!v9)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v9 = MEMORY[0x1E69E9C10];
          v15 = MEMORY[0x1E69E9C10];
        }

        v16 = v9;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v25 = "AVVoiceController.mm";
          v26 = 1024;
          v27 = 697;
          v28 = 1024;
          type = [settingsCopy type];
          v30 = 1024;
          mode = [settingsCopy mode];
          v32 = 2048;
          alertEndTime = [settingsCopy alertEndTime];
          v17 = "%25s:%-5d Calling alert playback finished delegate. Settings { Type: %d, Mode: %d, alertEndTime: %llu }";
          v18 = v16;
          v19 = 40;
LABEL_18:
          _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
          goto LABEL_19;
        }

        goto LABEL_19;
      }
    }

    v10 = objc_loadWeakRetained((v22 + 168));
    if (v10)
    {
      v11 = objc_loadWeakRetained((v22 + 168));
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = objc_loadWeakRetained((v22 + 168));
        [v13 voiceControllerDidFinishAlertPlayback:self ofType:objc_msgSend(settingsCopy error:{"type"), 0}];

        if (kAVVCScope)
        {
          v14 = *kAVVCScope;
          if (!v14)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v14 = MEMORY[0x1E69E9C10];
          v20 = MEMORY[0x1E69E9C10];
        }

        v16 = v14;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v25 = "AVVoiceController.mm";
          v26 = 1024;
          v27 = 701;
          v28 = 1024;
          type = [settingsCopy type];
          v17 = "%25s:%-5d Calling alert playback finished delegate. Type: %d";
          v18 = v16;
          v19 = 24;
          goto LABEL_18;
        }

LABEL_19:
      }
    }
  }

LABEL_20:
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)encodeError:(int)error
{
  v26 = *MEMORY[0x1E69E9840];
  [(AVVoiceController *)self impl];
  v5 = v17;
  if (v17)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    v8 = v6;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v19, error);
      *buf = 136315650;
      v21 = "AVVoiceController.mm";
      v22 = 1024;
      v23 = 679;
      v24 = 2080;
      v25 = v19;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d     Reporting encoder error %s via delegate", buf, 0x1Cu);
    }

    v5 = v17;
LABEL_9:
    WeakRetained = objc_loadWeakRetained((v5 + 168));
    if (WeakRetained)
    {
      v10 = objc_loadWeakRetained((v17 + 168));
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        v12 = objc_alloc(MEMORY[0x1E696ABC0]);
        v13 = [v12 initWithDomain:*MEMORY[0x1E696A768] code:error userInfo:0];
        v14 = objc_loadWeakRetained((v17 + 168));
        [v14 voiceControllerEncoderErrorDidOccur:self error:v13];

LABEL_18:
        goto LABEL_19;
      }
    }

    if (kAVVCScope)
    {
      v13 = *kAVVCScope;
      if (!v13)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "AVVoiceController.mm";
      v22 = 1024;
      v23 = 685;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d encodeError detected but no record delegate, or notify selector not supported", buf, 0x12u);
    }

    goto LABEL_18;
  }

LABEL_19:
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)endpointDetectedAtTime:(double)time
{
  v27 = *MEMORY[0x1E69E9840];
  if (ObjectExists(self))
  {
    [(AVVoiceController *)self impl];
    v5 = v19;
    if (!v19)
    {
      goto LABEL_30;
    }

    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v22 = "AVVoiceController.mm";
      v23 = 1024;
      v24 = 661;
      v25 = 2048;
      timeCopy = time;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### endpointDetected: time %.2f seconds ####", buf, 0x1Cu);
    }

    v5 = v19;
LABEL_17:
    WeakRetained = objc_loadWeakRetained((v5 + 168));
    if (WeakRetained && (v11 = objc_loadWeakRetained((v19 + 168)), v12 = objc_opt_respondsToSelector(), v11, WeakRetained, (v12 & 1) != 0))
    {
      v13 = objc_loadWeakRetained((v19 + 168));
      [v13 voiceControllerDidDetectEndpoint:self ofType:2 atTime:time];
    }

    else
    {
      v14 = objc_loadWeakRetained((v19 + 168));
      if (v14 && (v15 = objc_loadWeakRetained((v19 + 168)), v16 = objc_opt_respondsToSelector(), v15, v14, (v16 & 1) != 0))
      {
        v13 = objc_loadWeakRetained((v19 + 168));
        [v13 voiceControllerDidDetectEndpoint:self ofType:2];
      }

      else
      {
        if (kAVVCScope)
        {
          v13 = *kAVVCScope;
          if (!v13)
          {
LABEL_30:
            if (v20)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v20);
            }

            goto LABEL_32;
          }
        }

        else
        {
          v13 = MEMORY[0x1E69E9C10];
          v17 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v22 = "AVVoiceController.mm";
          v23 = 1024;
          v24 = 669;
          _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d WARNING: delegate is nil or does not respond to voiceControllerDidDetectEndpoint:ofType:", buf, 0x12u);
        }
      }
    }

    goto LABEL_30;
  }

  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v22 = "AVVoiceController.mm";
    v23 = 1024;
    v24 = 654;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d endpointDetected -> called after object destroyed -- ignoring call", buf, 0x12u);
  }

LABEL_32:
  v18 = *MEMORY[0x1E69E9840];
}

- (void)interspeechPointDetectedAtTime:(double)time
{
  v27 = *MEMORY[0x1E69E9840];
  if (ObjectExists(self))
  {
    [(AVVoiceController *)self impl];
    v5 = v19;
    if (!v19)
    {
      goto LABEL_30;
    }

    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v22 = "AVVoiceController.mm";
      v23 = 1024;
      v24 = 639;
      v25 = 2048;
      timeCopy = time;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### interspeechPointDetected: time %.2f seconds ####", buf, 0x1Cu);
    }

    v5 = v19;
LABEL_17:
    WeakRetained = objc_loadWeakRetained((v5 + 168));
    if (WeakRetained && (v11 = objc_loadWeakRetained((v19 + 168)), v12 = objc_opt_respondsToSelector(), v11, WeakRetained, (v12 & 1) != 0))
    {
      v13 = objc_loadWeakRetained((v19 + 168));
      [v13 voiceControllerDidDetectEndpoint:self ofType:1 atTime:time];
    }

    else
    {
      v14 = objc_loadWeakRetained((v19 + 168));
      if (v14 && (v15 = objc_loadWeakRetained((v19 + 168)), v16 = objc_opt_respondsToSelector(), v15, v14, (v16 & 1) != 0))
      {
        v13 = objc_loadWeakRetained((v19 + 168));
        [v13 voiceControllerDidDetectEndpoint:self ofType:1];
      }

      else
      {
        if (kAVVCScope)
        {
          v13 = *kAVVCScope;
          if (!v13)
          {
LABEL_30:
            if (v20)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v20);
            }

            goto LABEL_32;
          }
        }

        else
        {
          v13 = MEMORY[0x1E69E9C10];
          v17 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v22 = "AVVoiceController.mm";
          v23 = 1024;
          v24 = 647;
          _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d WARNING: delegate is nil or does not respond to voiceControllerDidDetectEndpoint:ofType:", buf, 0x12u);
        }
      }
    }

    goto LABEL_30;
  }

  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v22 = "AVVoiceController.mm";
    v23 = 1024;
    v24 = 632;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d interspeechPointDetected -> called after object destroyed -- ignoring call", buf, 0x12u);
  }

LABEL_32:
  v18 = *MEMORY[0x1E69E9840];
}

- (void)startpointDetected
{
  v20 = *MEMORY[0x1E69E9840];
  if (ObjectExists(self))
  {
    [(AVVoiceController *)self impl];
    v3 = v14;
    if (!v14)
    {
      goto LABEL_27;
    }

    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "AVVoiceController.mm";
      v18 = 1024;
      v19 = 620;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### startpointDetected: ####", buf, 0x12u);
    }

    v3 = v14;
LABEL_17:
    WeakRetained = objc_loadWeakRetained((v3 + 168));
    if (WeakRetained && (v9 = objc_loadWeakRetained((v14 + 168)), v10 = objc_opt_respondsToSelector(), v9, WeakRetained, (v10 & 1) != 0))
    {
      v11 = objc_loadWeakRetained((v14 + 168));
      [v11 voiceControllerDidDetectStartpoint:self];
    }

    else
    {
      if (kAVVCScope)
      {
        v11 = *kAVVCScope;
        if (!v11)
        {
LABEL_27:
          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }

          goto LABEL_29;
        }
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v12 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v17 = "AVVoiceController.mm";
        v18 = 1024;
        v19 = 625;
        _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d WARNING: delegate is nil or does not respond to voiceControllerDidDetectStartpoint:", buf, 0x12u);
      }
    }

    goto LABEL_27;
  }

  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v17 = "AVVoiceController.mm";
    v18 = 1024;
    v19 = 612;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d startpointDetected -> called after object destroyed -- ignoring call", buf, 0x12u);
  }

LABEL_29:
  v13 = *MEMORY[0x1E69E9840];
}

- (void)finishedRecording:(unint64_t)recording status:(int)status
{
  LODWORD(v4) = status;
  v31 = *MEMORY[0x1E69E9840];
  if (ObjectExists(self))
  {
    [(AVVoiceController *)self impl];
    v7 = v25;
    if (!v25)
    {
      goto LABEL_38;
    }

    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      *v28 = "AVVoiceController.mm";
      v12 = v4 == -11789 || v4 == 0;
      *&v28[8] = 1024;
      v13 = v12;
      *&v28[10] = 595;
      *&v28[14] = 1024;
      *&v28[16] = v13;
      LOWORD(v29) = 1024;
      *(&v29 + 2) = v4;
      HIWORD(v29) = 2048;
      recordingCopy = recording;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController: Recording finished (success = %d status = %d streamID = %llu) ####", buf, 0x28u);
    }

    v7 = v25;
LABEL_23:
    WeakRetained = objc_loadWeakRetained((v7 + 168));
    if (WeakRetained)
    {
      v15 = objc_loadWeakRetained((v25 + 168));
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = objc_loadWeakRetained((v25 + 168));
        v4 = v4;
        [v17 voiceControllerDidStopRecording:self forStream:recording forReason:v4];

LABEL_37:
        *buf = 4116;
        v28[0] = 0;
        *&v28[4] = v4;
        v29 = 0;
        recordingCopy = 0;
        kdebug_trace();
        TraceWrapper::~TraceWrapper(buf);
LABEL_38:
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        goto LABEL_40;
      }
    }

    v18 = objc_loadWeakRetained((v25 + 168));
    if (v18)
    {
      v19 = objc_loadWeakRetained((v25 + 168));
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        v21 = objc_loadWeakRetained((v25 + 168));
        v4 = v4;
        [v21 voiceControllerDidStopRecording:self forReason:v4];

        goto LABEL_37;
      }
    }

    if (kAVVCScope)
    {
      v22 = *kAVVCScope;
      if (!v22)
      {
LABEL_36:
        v4 = v4;
        goto LABEL_37;
      }
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *v28 = "AVVoiceController.mm";
      *&v28[8] = 1024;
      *&v28[10] = 604;
      _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d WARNING: delegate is nil or does not respond to voiceControllerDidStopRecording:forReason:", buf, 0x12u);
    }

    goto LABEL_36;
  }

  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *v28 = "AVVoiceController.mm";
    *&v28[8] = 1024;
    *&v28[10] = 586;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d finishedRecording -> called after AVVC object destroyed -- ignoring call and possibly leaking ControllerImpl", buf, 0x12u);
  }

LABEL_40:
  v24 = *MEMORY[0x1E69E9840];
}

- (void)beganRecording:(unint64_t)recording status:(int)status
{
  v32 = *MEMORY[0x1E69E9840];
  [(AVVoiceController *)self impl];
  v7 = v26;
  if (v26)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      *v29 = "AVVoiceController.mm";
      *&v29[8] = 1024;
      *&v29[10] = 561;
      *&v29[14] = 1024;
      *&v29[16] = status == 0;
      LOWORD(v30) = 1024;
      *(&v30 + 2) = status;
      HIWORD(v30) = 2048;
      recordingCopy = recording;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### beganRecording: (success = %d status = %d streamID = %llu) ####", buf, 0x28u);
    }

    v7 = v26;
LABEL_9:
    WeakRetained = objc_loadWeakRetained((v7 + 168));
    if (WeakRetained && (v11 = objc_loadWeakRetained((v26 + 168)), v12 = objc_opt_respondsToSelector(), v11, WeakRetained, (v12 & 1) != 0))
    {
      if (status)
      {
        v13 = objc_alloc(MEMORY[0x1E696ABC0]);
        v14 = [v13 initWithDomain:*MEMORY[0x1E696A768] code:status userInfo:0];
      }

      else
      {
        v14 = 0;
      }

      v23 = objc_loadWeakRetained((v26 + 168));
      [v23 voiceControllerDidStartRecording:self forStream:recording successfully:status == 0 error:v14];
    }

    else
    {
      v15 = objc_loadWeakRetained((v26 + 168));
      if (v15 && (v16 = objc_loadWeakRetained((v26 + 168)), v17 = objc_opt_respondsToSelector(), v16, v15, (v17 & 1) != 0))
      {
        if (status)
        {
          v18 = objc_alloc(MEMORY[0x1E696ABC0]);
          v14 = [v18 initWithDomain:*MEMORY[0x1E696A768] code:status userInfo:0];
        }

        else
        {
          v14 = 0;
        }

        v24 = objc_loadWeakRetained((v26 + 168));
        [v24 voiceControllerDidStartRecording:self successfully:status == 0 error:v14];
      }

      else
      {
        v19 = objc_loadWeakRetained((v26 + 168));
        if (v19 && (v20 = objc_loadWeakRetained((v26 + 168)), v21 = objc_opt_respondsToSelector(), v20, v19, (v21 & 1) != 0))
        {
          v14 = objc_loadWeakRetained((v26 + 168));
          [v14 voiceControllerDidStartRecording:self successfully:status == 0];
        }

        else
        {
          if (kAVVCScope)
          {
            v14 = *kAVVCScope;
            if (!v14)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v14 = MEMORY[0x1E69E9C10];
            v22 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *v29 = "AVVoiceController.mm";
            *&v29[8] = 1024;
            *&v29[10] = 575;
            _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d WARNING: delegate is nil or does not respond to voiceControllerDidStartRecording: variants", buf, 0x12u);
          }
        }
      }
    }

LABEL_31:
    ProfileMetrics(&cfstr_AvvcProfilePro.isa);
    *buf = 4115;
    v29[0] = 0;
    *&v29[4] = status;
    v30 = 0;
    recordingCopy = 0;
    kdebug_trace();
    TraceWrapper::~TraceWrapper(buf);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)handlePluginDidUnpublishDevice:(id)device withDevice:(id)withDevice
{
  v23 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  withDeviceCopy = withDevice;
  [(AVVoiceController *)self impl];
  v8 = v17;
  if (v17)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3321888768;
    v12[2] = __90__AVVoiceController_AVVoiceControllerInternal__handlePluginDidUnpublishDevice_withDevice___block_invoke;
    v12[3] = &unk_1F3848630;
    v15 = v17;
    v16 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12[4] = self;
    v13 = deviceCopy;
    v14 = withDeviceCopy;
    ControllerImpl::dispatchAndSafeWork(v8, v12, "[AVVoiceController(AVVoiceControllerInternal) handlePluginDidUnpublishDevice:withDevice:]");

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "AVVoiceController.mm";
      v21 = 1024;
      v22 = 524;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Error! handlePluginDidUNpublishDevice: ControllerImpl is NULL", buf, 0x12u);
    }
  }

LABEL_13:
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __90__AVVoiceController_AVVoiceControllerInternal__handlePluginDidUnpublishDevice_withDevice___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = v1;
  v6 = v2;
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 deviceIdentifier];
    v13 = 136316162;
    v14 = "ControllerImpl.mm";
    v15 = 1024;
    v16 = 740;
    v17 = 2048;
    v18 = v5;
    v19 = 2048;
    v20 = v6;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d handlePluginDidUnpublishDevice notification for plugin(%p), device(%p), deviceID(%@)", &v13, 0x30u);
  }

LABEL_8:
  v11 = [v6 deviceIdentifier];
  ControllerImpl::_removeEngineFromMap(v3, v4, 0, v11, &__block_literal_global_5641);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)handlePluginDidPublishDevice:(id)device withDevice:(id)withDevice
{
  v17 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  withDeviceCopy = withDevice;
  [(AVVoiceController *)self impl];
  if (v11)
  {
    ControllerImpl::handlePluginDidPublishDevice(self, deviceCopy, withDeviceCopy);
    goto LABEL_10;
  }

  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v14 = "AVVoiceController.mm";
    v15 = 1024;
    v16 = 515;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Error! handlePluginDidPublishDevice: ControllerImpl is NULL", buf, 0x12u);
  }

LABEL_10:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)configureVoiceTriggerClientCompletionBlocks
{
  v25 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__AVVoiceController_AVVoiceControllerInternal__configureVoiceTriggerClientCompletionBlocks__block_invoke;
  aBlock[3] = &unk_1E7EF52B8;
  objc_copyWeak(&v15, &location);
  v2 = _Block_copy(aBlock);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __91__AVVoiceController_AVVoiceControllerInternal__configureVoiceTriggerClientCompletionBlocks__block_invoke_2;
  v12[3] = &unk_1E7EF52B8;
  objc_copyWeak(&v13, &location);
  v3 = _Block_copy(v12);
  v4 = +[AVVoiceTriggerClient sharedInstance];
  [v4 setAVVCServerCrashedBlock:v2];

  v5 = +[AVVoiceTriggerClient sharedInstance];
  [v5 setAVVCServerResetBlock:v3];

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = _Block_copy(v2);
    v10 = _Block_copy(v3);
    *buf = 136315906;
    v18 = "AVVoiceController.mm";
    v19 = 1024;
    v20 = 506;
    v21 = 2048;
    v22 = v9;
    v23 = 2048;
    v24 = v10;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d configureVoiceTriggerClientCompletionBlocks: crashBlock: %p resetBlock: %p", buf, 0x26u);
  }

LABEL_8:
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  v11 = *MEMORY[0x1E69E9840];
}

void __91__AVVoiceController_AVVoiceControllerInternal__configureVoiceTriggerClientCompletionBlocks__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleMediaServerDeath:v5];
  }

  else if (v5)
  {
    v5[2]();
  }
}

void __91__AVVoiceController_AVVoiceControllerInternal__configureVoiceTriggerClientCompletionBlocks__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleMediaServerReset:v5];
  }

  else if (v5)
  {
    v5[2]();
  }
}

- (void)handleMediaServerReset:(id)reset
{
  v25 = *MEMORY[0x1E69E9840];
  resetCopy = reset;
  v17 = 4111;
  v18 = 0;
  v19 = 0u;
  v20 = 0u;
  kdebug_trace();
  [(AVVoiceController *)self impl];
  v5 = v15;
  if (v15)
  {
    v6 = !self->mClientAPIClutch;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3321888768;
    v10[2] = __71__AVVoiceController_AVVoiceControllerInternal__handleMediaServerReset___block_invoke;
    v10[3] = &unk_1F384CF78;
    v14 = v6;
    v12 = v15;
    v13 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10[4] = self;
    v11 = resetCopy;
    ControllerImpl::dispatchAndSafeWork(v5, v10, "[AVVoiceController(AVVoiceControllerInternal) handleMediaServerReset:]");

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    goto LABEL_15;
  }

  if (!kAVVCScope)
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
    goto LABEL_10;
  }

  v7 = *kAVVCScope;
  if (v7)
  {
LABEL_10:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "AVVoiceController.mm";
      v23 = 1024;
      v24 = 444;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d handleMediaServerReset: ControllerImpl is nil. Bailing!", buf, 0x12u);
    }
  }

  if (resetCopy)
  {
    resetCopy[2](resetCopy);
  }

LABEL_15:
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  TraceWrapper::~TraceWrapper(&v17);

  v9 = *MEMORY[0x1E69E9840];
}

void __71__AVVoiceController_AVVoiceControllerInternal__handleMediaServerReset___block_invoke(uint64_t a1, AVVoiceController *a2)
{
  if (*(a1 + 64) == 1)
  {
    ControllerImpl::handleServerReset(*(a1 + 48), a2);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3321888768;
  v7[2] = __71__AVVoiceController_AVVoiceControllerInternal__handleMediaServerReset___block_invoke_2;
  v7[3] = &unk_1F3848A58;
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v8 = v4;
  v9 = v6;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7[4] = *(a1 + 32);
  ControllerImpl::safeNotify(v3, "notify server reset", v7);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void __71__AVVoiceController_AVVoiceControllerInternal__handleMediaServerReset___block_invoke_2(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = *(v2 + 16);

    v3();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1[6] + 168));
    if (WeakRetained)
    {
      v7 = WeakRetained;
      v5 = objc_loadWeakRetained((a1[6] + 168));
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v8 = objc_loadWeakRetained((a1[6] + 168));
        [v8 voiceControllerMediaServicesWereReset:a1[4]];
      }
    }
  }
}

- (void)handleMediaServerDeath:(id)death
{
  v25 = *MEMORY[0x1E69E9840];
  deathCopy = death;
  v17 = 4110;
  v18 = 0;
  v19 = 0u;
  v20 = 0u;
  kdebug_trace();
  [(AVVoiceController *)self impl];
  v5 = v15;
  if (v15)
  {
    v6 = !self->mClientAPIClutch;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3321888768;
    v10[2] = __71__AVVoiceController_AVVoiceControllerInternal__handleMediaServerDeath___block_invoke;
    v10[3] = &unk_1F384CF78;
    v14 = v6;
    v12 = v15;
    v13 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10[4] = self;
    v11 = deathCopy;
    ControllerImpl::dispatchAndSafeWork(v5, v10, "[AVVoiceController(AVVoiceControllerInternal) handleMediaServerDeath:]");

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    goto LABEL_15;
  }

  if (!kAVVCScope)
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
    goto LABEL_10;
  }

  v7 = *kAVVCScope;
  if (v7)
  {
LABEL_10:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "AVVoiceController.mm";
      v23 = 1024;
      v24 = 409;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d handleMediaServerDeath: ControllerImpl is nil. Bailing!", buf, 0x12u);
    }
  }

  if (deathCopy)
  {
    deathCopy[2](deathCopy);
  }

LABEL_15:
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  TraceWrapper::~TraceWrapper(&v17);

  v9 = *MEMORY[0x1E69E9840];
}

void __71__AVVoiceController_AVVoiceControllerInternal__handleMediaServerDeath___block_invoke(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    ControllerImpl::handleServerDeath(*(a1 + 48), *(a1 + 32));
  }

  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  v4 = v3;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4 = *(a1 + 48);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3321888768;
  v5[2] = __71__AVVoiceController_AVVoiceControllerInternal__handleMediaServerDeath___block_invoke_2;
  v5[3] = &unk_1F3847BD8;
  v6 = *(a1 + 40);
  v7 = v3;
  v8 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v5[4] = *(a1 + 32);
  ControllerImpl::safeNotify(v4, "notify server death", v5);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void __71__AVVoiceController_AVVoiceControllerInternal__handleMediaServerDeath___block_invoke_2(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  if (!v2)
  {
    v5 = a1[7];
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = a1[6];
        if (v7)
        {
          WeakRetained = objc_loadWeakRetained((v7 + 168));
          if (WeakRetained)
          {
            v9 = WeakRetained;
            v10 = objc_loadWeakRetained((v7 + 168));
            v11 = objc_opt_respondsToSelector();

            if (v11)
            {
              v12 = objc_loadWeakRetained((v7 + 168));
              [v12 voiceControllerMediaServicesWereLost:a1[4]];
            }
          }

          goto LABEL_20;
        }
      }
    }

    else
    {
      v6 = 0;
    }

    if (kAVVCScope)
    {
      v13 = *kAVVCScope;
      if (!v13)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315650;
      v17 = "AVVoiceController.mm";
      v18 = 1024;
      v19 = 430;
      v20 = 2048;
      v21 = 0;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (impl: %p). Bailing", &v16, 0x1Cu);
    }

LABEL_19:
    if (!v6)
    {
LABEL_21:
      v15 = *MEMORY[0x1E69E9840];
      return;
    }

LABEL_20:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    goto LABEL_21;
  }

  v3 = *(v2 + 16);
  v4 = *MEMORY[0x1E69E9840];

  v3();
}

- (void)handleRouteChange:(id)change
{
  v25 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  [(AVVoiceController *)self impl];
  if (v19)
  {
    object = [changeCopy object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      object2 = [changeCopy object];

      if (!object2)
      {
        goto LABEL_16;
      }

      v7 = objc_alloc(MEMORY[0x1E695DF90]);
      userInfo = [changeCopy userInfo];
      v9 = [v7 initWithDictionary:userInfo];

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3321888768;
      v13[2] = __66__AVVoiceController_AVVoiceControllerInternal__handleRouteChange___block_invoke;
      v13[3] = &unk_1F3848630;
      object = object2;
      v14 = object;
      v10 = v9;
      v15 = v10;
      v17 = v19;
      v18 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      selfCopy = self;
      ControllerImpl::dispatchAndSafeWork(v19, v13, "[AVVoiceController(AVVoiceControllerInternal) handleRouteChange:]");
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }
    }

    goto LABEL_15;
  }

  if (!kAVVCScope)
  {
    object = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
LABEL_13:
    if (os_log_type_enabled(object, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "AVVoiceController.mm";
      v23 = 1024;
      v24 = 381;
      _os_log_impl(&dword_1BA5AC000, object, OS_LOG_TYPE_ERROR, "%25s:%-5d handleRouteChange: ControllerImpl is nil. Bailing!", buf, 0x12u);
    }

LABEL_15:

    goto LABEL_16;
  }

  object = *kAVVCScope;
  if (object)
  {
    goto LABEL_13;
  }

LABEL_16:
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __66__AVVoiceController_AVVoiceControllerInternal__handleRouteChange___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) currentRoute];
  if (v2)
  {
    [*(a1 + 40) setObject:v2 forKey:@"AVAudioSessionRouteChangeCurrentRouteKey"];
  }

  v3 = *(a1 + 32);
  v4 = ControllerImpl::audioSessionForStreamID(*(a1 + 56), 0, 0);

  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "aux";
    v8 = *(a1 + 48);
    v9 = *(a1 + 32);
    if (v3 == v4)
    {
      v7 = "primary";
    }

    v28 = 136316162;
    v29 = "AVVoiceController.mm";
    v30 = 1024;
    v31 = 394;
    v32 = 2048;
    v33 = v8;
    v34 = 2080;
    v35 = v7;
    v36 = 2048;
    v37 = v9;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p] handleRouteChange: %s session (%p)", &v28, 0x30u);
  }

LABEL_12:
  v10 = *(a1 + 40);
  if (kAVVCScope)
  {
    v11 = *kAVVCScope;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  v13 = v11;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 objectForKey:@"AVAudioSessionRouteChangeCurrentRouteKey"];
    v15 = _logRouteDesc(v14);
    v28 = 136315650;
    v29 = "AVVCUtils.mm";
    v30 = 1024;
    v31 = 1142;
    v32 = 2112;
    v33 = v15;
    _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CurrentRoute: %@", &v28, 0x1Cu);
  }

LABEL_19:
  if (kAVVCScope)
  {
    v16 = *kAVVCScope;
    if (!v16)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
  }

  v18 = v16;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v10 objectForKey:*MEMORY[0x1E698D6D8]];
    v20 = _logRouteDesc(v19);
    v28 = 136315650;
    v29 = "AVVCUtils.mm";
    v30 = 1024;
    v31 = 1143;
    v32 = 2112;
    v33 = v20;
    _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PreviousRoute: %@", &v28, 0x1Cu);
  }

LABEL_26:
  v21 = [v10 objectForKey:*MEMORY[0x1E698D6E0]];
  if (kAVVCScope)
  {
    v22 = *kAVVCScope;
    if (!v22)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v22 = MEMORY[0x1E69E9C10];
    v23 = MEMORY[0x1E69E9C10];
  }

  v24 = v22;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    if (v21)
    {
      v25 = [v21 unsignedIntegerValue];
      if (v25 > 8)
      {
        v26 = 0;
      }

      else
      {
        v26 = off_1E7EF51D0[v25];
      }
    }

    else
    {
      v26 = "null";
    }

    v28 = 136315650;
    v29 = "AVVCUtils.mm";
    v30 = 1024;
    v31 = 1145;
    v32 = 2080;
    v33 = v26;
    _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d RouteChangeReason: %s", &v28, 0x1Cu);
  }

LABEL_38:
  ControllerImpl::handleRouteChange(*(a1 + 56), *(a1 + 48), *(a1 + 32), *(a1 + 40));

  v27 = *MEMORY[0x1E69E9840];
}

- (void)handleInterruption:(id)interruption
{
  v23 = *MEMORY[0x1E69E9840];
  interruptionCopy = interruption;
  [(AVVoiceController *)self impl];
  if (v17)
  {
    userInfo = [interruptionCopy userInfo];
    object = [interruptionCopy object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      object2 = [interruptionCopy object];

      if (!object2)
      {
LABEL_16:

        goto LABEL_17;
      }

      v8 = v17;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3321888768;
      v11[2] = __67__AVVoiceController_AVVoiceControllerInternal__handleInterruption___block_invoke;
      v11[3] = &unk_1F3848630;
      object = object2;
      v12 = object;
      v15 = v17;
      v16 = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      selfCopy = self;
      v14 = userInfo;
      ControllerImpl::dispatchAndSafeWork(v8, v11, "[AVVoiceController(AVVoiceControllerInternal) handleInterruption:]");

      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }
    }

    goto LABEL_16;
  }

  if (!kAVVCScope)
  {
    userInfo = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
LABEL_14:
    if (os_log_type_enabled(userInfo, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "AVVoiceController.mm";
      v21 = 1024;
      v22 = 355;
      _os_log_impl(&dword_1BA5AC000, userInfo, OS_LOG_TYPE_ERROR, "%25s:%-5d handleInterruption: ControllerImpl is nil. Bailing!", buf, 0x12u);
    }

    goto LABEL_16;
  }

  userInfo = *kAVVCScope;
  if (userInfo)
  {
    goto LABEL_14;
  }

LABEL_17:
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __67__AVVoiceController_AVVoiceControllerInternal__handleInterruption___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = ControllerImpl::audioSessionForStreamID(*(a1 + 56), 0, 0);

  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "aux";
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(a1 + 48);
    if (v2 == v3)
    {
      v6 = "primary";
    }

    v13 = 136316418;
    v14 = "AVVoiceController.mm";
    v15 = 1024;
    v16 = 363;
    v17 = 2048;
    v18 = v7;
    v19 = 2080;
    v20 = v6;
    v21 = 2048;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p] handleInterruption: %s session (%p), %@", &v13, 0x3Au);
  }

LABEL_10:
  v10 = [*(a1 + 48) objectForKey:*MEMORY[0x1E698D580]];
  v11 = [v10 unsignedLongValue];
  if (v11)
  {
    if (v11 == 1)
    {
      ControllerImpl::handleInterruptStart(*(a1 + 56), *(a1 + 40), *(a1 + 32), *(a1 + 48));
    }
  }

  else
  {
    ControllerImpl::handleInterruptStop(*(a1 + 56), *(a1 + 40), *(a1 + 32), *(a1 + 48));
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)removeSessionNotifications:(id)notifications
{
  v16 = *MEMORY[0x1E69E9840];
  notificationsCopy = notifications;
  if (notificationsCopy)
  {
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
LABEL_11:
        [notificationsCopy removeSessionNotifications:{self, *v13, *&v13[16]}];
        goto LABEL_12;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    v7 = v5;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      isPrimary = [notificationsCopy isPrimary];
      audioSession = [notificationsCopy audioSession];
      v10 = audioSession;
      v11 = "aux";
      *&v13[4] = "AVVoiceController.mm";
      *&v13[12] = 1024;
      *&v13[14] = 329;
      *v13 = 136315906;
      if (isPrimary)
      {
        v11 = "primary";
      }

      *&v13[18] = 2080;
      *&v13[20] = v11;
      v14 = 2048;
      v15 = audioSession;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d removeSessionNotifications: removing all notifications for %s session(%p)", v13, 0x26u);
    }

    goto LABEL_11;
  }

LABEL_12:

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setSessionNotifications:(id)notifications
{
  v16 = *MEMORY[0x1E69E9840];
  notificationsCopy = notifications;
  if (notificationsCopy)
  {
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
LABEL_11:
        [notificationsCopy setupSessionNotifications:{self, *v13, *&v13[16]}];
        goto LABEL_12;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    v7 = v5;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      isPrimary = [notificationsCopy isPrimary];
      audioSession = [notificationsCopy audioSession];
      v10 = audioSession;
      v11 = "aux";
      *&v13[4] = "AVVoiceController.mm";
      *&v13[12] = 1024;
      *&v13[14] = 319;
      *v13 = 136315906;
      if (isPrimary)
      {
        v11 = "primary";
      }

      *&v13[18] = 2080;
      *&v13[20] = v11;
      v14 = 2048;
      v15 = audioSession;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setSessionNotifications: setting up notifications for %s session(%p)", v13, 0x26u);
    }

    goto LABEL_11;
  }

LABEL_12:

  v12 = *MEMORY[0x1E69E9840];
}

- (void)sessionCleanup
{
  v3 = +[AVVCSessionFactory sharedInstance];
  [v3 setSessionWasCreatedBlock:0];

  v4 = +[AVVCSessionFactory sharedInstance];
  [v4 setSessionWillBeDestroyedBlock:0];

  [(AVVoiceController *)self impl];
  if (v6)
  {
    v5 = ControllerImpl::sessionManagerForStreamID(v6, 0, 0);
    [(AVVoiceController *)self removeSessionNotifications:v5];
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

- (void)sessionSetup
{
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__AVVoiceController_AVVoiceControllerInternal__sessionSetup__block_invoke;
  v10[3] = &unk_1E7EF5290;
  objc_copyWeak(&v11, &location);
  v3 = +[AVVCSessionFactory sharedInstance];
  [v3 setSessionWasCreatedBlock:v10];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__AVVoiceController_AVVoiceControllerInternal__sessionSetup__block_invoke_2;
  v8[3] = &unk_1E7EF5290;
  objc_copyWeak(&v9, &location);
  v4 = +[AVVCSessionFactory sharedInstance];
  [v4 setSessionWillBeDestroyedBlock:v8];

  [(AVVoiceController *)self impl];
  if (v6)
  {
    v5 = ControllerImpl::sessionManagerForStreamID(v6, 0, 0);
    [(AVVoiceController *)self setSessionNotifications:v5];
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __60__AVVoiceController_AVVoiceControllerInternal__sessionSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSessionNotifications:v3];
}

void __60__AVVoiceController_AVVoiceControllerInternal__sessionSetup__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained removeSessionNotifications:v3];
}

@end