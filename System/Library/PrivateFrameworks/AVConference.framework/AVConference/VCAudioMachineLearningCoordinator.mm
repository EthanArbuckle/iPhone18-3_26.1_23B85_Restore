@interface VCAudioMachineLearningCoordinator
+ (id)errorCodeWithEvent:(unsigned int)event errorPath:(id)path;
- (BOOL)captionsEnabled;
- (BOOL)lockedCaptionsEnabled;
- (BOOL)lockedEnableCaptions:(BOOL)captions withError:(id *)error;
- (BOOL)lockedEnableMediaAnalyzer:(BOOL)analyzer withError:(id *)error;
- (BOOL)prewarmCaptionsWithError:(id *)error;
- (BOOL)registerStreamWithConfig:(const tagVCAudioCaptionsStreamConfig *)config;
- (BOOL)setUpAudioCaptionsUsingFrameworkType:(unsigned __int8)type;
- (BOOL)setUpInternalStateForReporting:(unsigned __int8)reporting;
- (BOOL)setUpReportingAgent;
- (BOOL)startDelegateAudioStackIfNeededWithError:(id *)error;
- (BOOL)toggleDelegateAudioStackEnabledIfNeeded:(BOOL)needed withError:(id *)error;
- (VCAudioMachineLearningCoordinator)initWithConfiguration:(const tagVCAudioMachineLearningCoordinatorConfiguration *)configuration delegate:(id)delegate;
- (VCAudioMachineLearningCoordinator)initWithOneToOneEnabled:(BOOL)enabled isLocal:(BOOL)local taskIdentifier:(id)identifier reportingAgent:(opaqueRTCReporting *)agent delegate:(id)delegate;
- (__CFDictionary)clientSpecificUserInfo;
- (__CFDictionary)reportingInitialConfiguration;
- (id)lockedDelegate;
- (void)captions:(id)captions didChangeSourceLocale:(id)locale;
- (void)captions:(id)captions didProduceLanguageHypothesis:(id)hypothesis streamToken:(int64_t)token;
- (void)captions:(id)captions didStopLanguageDetectorWithError:(id)error streamToken:(int64_t)token;
- (void)dealloc;
- (void)didConfigureCaptionsWithError:(id)error;
- (void)didDisableCaptions:(BOOL)captions error:(id)error;
- (void)didEnableCaptions:(BOOL)captions error:(id)error;
- (void)didStartCaptioningWithReason:(unsigned __int8)reason streamToken:(int64_t)token;
- (void)didStopCaptioningWithReason:(unsigned __int8)reason streamToken:(int64_t)token;
- (void)didUpdateCaptions:(id)captions;
- (void)disableMediaAnalyzerAndNotifyClient;
- (void)enableCaptions:(BOOL)captions;
- (void)enableMediaAnalyzer:(BOOL)analyzer;
- (void)enableV2SpeechAPI:(BOOL)i;
- (void)invalidate;
- (void)lockedRegisterMediaAnalyzerWithStreamToken:(int64_t)token;
- (void)mediaAnalyzer:(id)analyzer didProduceMediaAnalysis:(id)analysis streamToken:(int64_t)token;
- (void)processAudioControlEventEnable:(BOOL)enable moduleID:(unsigned int)d;
- (void)registerCaptionsEventDelegate:(id)delegate;
- (void)registerMediaAnalyzerSourceDelegate:(id)delegate;
- (void)removeDelegateAudioStackIfNeeded;
- (void)reportCaptionsUsage:(unsigned __int8)usage;
- (void)setCaptionsSourceLocale:(id)locale;
- (void)setLowPriorityThresholdSeconds:(double)seconds;
- (void)setMediaAnalyzerTaskType:(int64_t)type;
- (void)setOneToOneModeEnabled:(BOOL)enabled;
- (void)setUpForTranslatorMode:(unsigned __int8)mode;
- (void)unregisterStreamTokens;
- (void)updateCaptionsConfig:(id)config;
@end

@implementation VCAudioMachineLearningCoordinator

- (VCAudioMachineLearningCoordinator)initWithOneToOneEnabled:(BOOL)enabled isLocal:(BOOL)local taskIdentifier:(id)identifier reportingAgent:(opaqueRTCReporting *)agent delegate:(id)delegate
{
  v12 = *MEMORY[0x1E69E9840];
  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v8[3] = 0xAAAAAAAAAAAA0000;
  LOBYTE(v8[0]) = enabled;
  BYTE1(v8[0]) = local;
  v8[1] = identifier;
  v8[2] = agent;
  v9 = 0uLL;
  v10 = 0;
  v11 = 0xAAAAAAAA00000000;
  return [(VCAudioMachineLearningCoordinator *)self initWithConfiguration:v8 delegate:delegate];
}

- (VCAudioMachineLearningCoordinator)initWithConfiguration:(const tagVCAudioMachineLearningCoordinatorConfiguration *)configuration delegate:(id)delegate
{
  v46 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioMachineLearningCoordinator-init");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      var4 = configuration->var4;
      var6 = configuration->var6;
      *buf = 136316674;
      v33 = v7;
      v34 = 2080;
      v35 = "[VCAudioMachineLearningCoordinator initWithConfiguration:delegate:]";
      v36 = 1024;
      v37 = 158;
      v38 = 2048;
      selfCopy = self;
      v40 = 1024;
      v41 = var4;
      v42 = 2048;
      v43 = var6;
      v44 = 2048;
      delegateCopy = delegate;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioMachineLearningCoordinator-init (%p) init with frameworkType=%d, streamToken=%ld, delegate=%p", buf, 0x40u);
    }
  }

  v31.receiver = self;
  v31.super_class = VCAudioMachineLearningCoordinator;
  v11 = [(VCObject *)&v31 init];
  if (v11)
  {
    var2 = configuration->var2;
    if (var2)
    {
      v11->_isLocal = configuration->var1;
      v11->_taskIdentifier = [var2 copy];
      v11->_initialStreamToken = configuration->var6;
      v11->_translatorIdentifier = [configuration->var7 copy];
      v11->_reportingSamplingUUID = [configuration->var8 copy];
      v11->_direction = configuration->var9;
      v11->_translatorMode = configuration->var5;
      v11->_captionsFrameworkType = configuration->var4;
      MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioMachineLearningCoordinator-init");
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v15 = configuration->var4;
          *buf = 136316162;
          v33 = v13;
          v34 = 2080;
          v35 = "[VCAudioMachineLearningCoordinator initWithConfiguration:delegate:]";
          v36 = 1024;
          v37 = 174;
          v38 = 2048;
          selfCopy = v11;
          v40 = 1024;
          v41 = v15;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioMachineLearningCoordinator-init (%p) init with frameworkType=%d", buf, 0x2Cu);
        }
      }

      v16 = VCFeatureFlagManager_UseAnalyzerSpeechAPI();
      v11->_isV2SpeechAPIEnabled = v16;
      if (!v11->_captionsFrameworkType)
      {
        if (v16)
        {
          v17 = 2;
        }

        else
        {
          v17 = 1;
        }

        v11->_captionsFrameworkType = v17;
      }

      v18 = [VCCaptionsGibberishDetector alloc];
      DoubleValueForKey = VCDefaults_GetDoubleValueForKey(@"captionsConfidenceGibberishThreshold", 0.6875);
      doubleValueForKey = [(VCCaptionsGibberishDetector *)v18 initWithGibberishThreshold:VCDefaults_GetIntValueForKey(@"captionsConfidenceGibberishDetectionWindowLength" windowLength:30), DoubleValueForKey];
      v11->_gibberishDetector = doubleValueForKey;
      if (doubleValueForKey)
      {
        v11->_currentMediaAnalyzerStreamToken = 0;
        v21 = [[VCAudioCaptionsBufferInfoCollection alloc] initWithBufferLength:0.5];
        v11->_bufferInfos = v21;
        if (v21)
        {
          CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
          v23 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCAudioMachineLearningCoordinator.delegateQueue", 0, CustomRootQueue);
          v11->_delegateQueue = v23;
          if (v23)
          {
            objc_storeWeak(&v11->_delegate, delegate);
            v11->_oneToOneEnabled = configuration->var0;
            v11->_stateLock._os_unfair_lock_opaque = 0;
            v11->_startStopSemaphore = dispatch_semaphore_create(0);
            [(VCObject *)v11 setReportingAgent:configuration->var3];
            if ([(VCAudioMachineLearningCoordinator *)v11 setUpInternalStateForReporting:v11->_translatorMode])
            {
              IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
              if (IsInternalOSInstalled)
              {
                LOBYTE(IsInternalOSInstalled) = VCDefaults_GetBoolValueForKey(@"forceCaptionsVoiceDetection", 0);
              }

              v11->_forceCaptionsVoiceDetection = IsInternalOSInstalled;
              v25 = VCVoiceDetector_Create(0);
              v11->_voiceDetectorInfo.voiceDetector = v25;
              if (v25)
              {
                v11->_lowPriorityThresholdSeconds = NAN;
                if (!v11->_translatorMode && (!VCFeatureFlagManager_UseAnalyzerSpeechAPI() || !VCFeatureFlagManager_EnableSpeechDetector()))
                {
                  v11->_lowPriorityThresholdSeconds = VCDefaults_GetInternalOSDoubleValueForKey(@"captionsLowPriorityThresholdSeconds", 0.75);
                }

                if ([(VCAudioMachineLearningCoordinator *)v11 setUpAudioCaptionsUsingFrameworkType:v11->_captionsFrameworkType])
                {
                  v11->_isReadyForCaptioning = 1;
                  v26 = [[VCMediaAnalyzer alloc] initWithDelegate:v11 delegateQueue:v11->_delegateQueue reportingAgent:configuration->var3];
                  v11->_mediaAnalyzer = v26;
                  if (v26)
                  {
                    SampleBufferAllocator = VCAudioBufferList_CreateSampleBufferAllocator();
                    v11->_audioSampleBufferAllocator = SampleBufferAllocator;
                    if (SampleBufferAllocator)
                    {
                      if (CMSimpleQueueCreate(*MEMORY[0x1E695E480], 16, &v11->_audioProcessingEventQueue))
                      {
                        [VCAudioMachineLearningCoordinator initWithConfiguration:v11 delegate:?];
                      }

                      else
                      {
                        if (v11->_audioProcessingEventQueue)
                        {
                          goto LABEL_30;
                        }

                        [VCAudioMachineLearningCoordinator initWithConfiguration:v11 delegate:?];
                      }
                    }

                    else
                    {
                      [VCAudioMachineLearningCoordinator initWithConfiguration:v11 delegate:?];
                    }
                  }

                  else
                  {
                    [VCAudioMachineLearningCoordinator initWithConfiguration:v11 delegate:?];
                  }
                }

                else
                {
                  [VCAudioMachineLearningCoordinator initWithConfiguration:v11 delegate:?];
                }
              }

              else
              {
                [VCAudioMachineLearningCoordinator initWithConfiguration:v11 delegate:?];
              }
            }
          }

          else
          {
            [VCAudioMachineLearningCoordinator initWithConfiguration:v11 delegate:?];
          }
        }

        else
        {
          [VCAudioMachineLearningCoordinator initWithConfiguration:v11 delegate:?];
        }
      }

      else
      {
        [VCAudioMachineLearningCoordinator initWithConfiguration:v11 delegate:?];
      }
    }

    else
    {
      [VCAudioMachineLearningCoordinator initWithConfiguration:v11 delegate:?];
    }

    v11 = 0;
  }

LABEL_30:
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioMachineLearningCoordinator-init Finished");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v28 = VRTraceErrorLogLevelToCSTR();
    v29 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v33 = v28;
      v34 = 2080;
      v35 = "[VCAudioMachineLearningCoordinator initWithConfiguration:delegate:]";
      v36 = 1024;
      v37 = 223;
      v38 = 2048;
      selfCopy = v11;
      v40 = 1024;
      v41 = v11 != 0;
      _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioMachineLearningCoordinator-init Finished (%p) Finished with success=%{BOOL}d", buf, 0x2Cu);
    }
  }

  return v11;
}

- (void)setLowPriorityThresholdSeconds:(double)seconds
{
  os_unfair_lock_lock(&self->_stateLock);
  self->_lowPriorityThresholdSeconds = seconds;

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)disableMediaAnalyzerAndNotifyClient
{
  block[6] = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_stateLock);
  [(VCAudioMachineLearningCoordinator *)self lockedEnableMediaAnalyzer:0 withError:0];
  mediaAnalyzerSourceDelegate = [(VCAudioMachineLearningCoordinator *)self mediaAnalyzerSourceDelegate];
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__VCAudioMachineLearningCoordinator_disableMediaAnalyzerAndNotifyClient__block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = mediaAnalyzerSourceDelegate;
  block[5] = self;
  dispatch_sync(delegateQueue, block);
}

- (void)invalidate
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
    [OUTLINED_FUNCTION_18_0() performSelector:?];
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

- (void)reportCaptionsUsage:(unsigned __int8)usage
{
  usageCopy = usage;
  v6[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_stateLock);
  if (!self->_invalidated)
  {
    v5 = @"ACSU";
    v6[0] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:usageCopy];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
    [(VCObject *)self reportingAgent];
    reportingGenericEvent();
  }
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioMachineLearningCoordinator-dealloc");
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v4 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v14 = v5;
      v15 = 2080;
      v16 = "[VCAudioMachineLearningCoordinator dealloc]";
      v17 = 1024;
      v18 = 279;
      v19 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioMachineLearningCoordinator-dealloc (%p)", buf, 0x26u);
    }
  }

  _VCAudioMachineLearningCoordinator_DequeueAndProcessControlEvent(self);

  [(VCAudioCaptions *)self->_audioCaptions setDelegate:0];
  if (self->_voiceDetectorInfo.isVoiceDetectorRunning)
  {
    VCVoiceDetector_Stop(self->_voiceDetectorInfo.voiceDetector);
    self->_voiceDetectorInfo.isVoiceDetectorRunning = 0;
  }

  audioSampleBufferAllocator = self->_audioSampleBufferAllocator;
  if (audioSampleBufferAllocator)
  {
    CFRelease(audioSampleBufferAllocator);
  }

  audioProcessingEventQueue = self->_audioProcessingEventQueue;
  if (audioProcessingEventQueue)
  {
    CFRelease(audioProcessingEventQueue);
  }

  VCVoiceDetector_Destroy(&self->_voiceDetectorInfo.voiceDetector);
  delegateQueue = self->_delegateQueue;
  if (delegateQueue)
  {
    dispatch_release(delegateQueue);
  }

  objc_storeWeak(&self->_delegate, 0);
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioMachineLearningCoordinator-dealloc");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v14 = v10;
      v15 = 2080;
      v16 = "[VCAudioMachineLearningCoordinator dealloc]";
      v17 = 1024;
      v18 = 302;
      v19 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioMachineLearningCoordinator-dealloc (%p) Finished", buf, 0x26u);
    }
  }

  v12.receiver = self;
  v12.super_class = VCAudioMachineLearningCoordinator;
  [(VCObject *)&v12 dealloc];
}

- (BOOL)startDelegateAudioStackIfNeededWithError:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_stateLock);
  lockedDelegate = [(VCAudioMachineLearningCoordinator *)self lockedDelegate];
  v24 = 0;
  v6 = [(NSArray *)[(VCAudioCaptionsBufferInfoCollection *)self->_bufferInfos streamTokens] copy];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v40 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v41;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v6);
        }

        unsignedIntegerValue = [*(*(&v40 + 1) + 8 * i) unsignedIntegerValue];
        v22[1] = &v23;
        v23 = unsignedIntegerValue;
        v22[0] = 0xAAAAAAAAAAAAAA01;
        if (([(VCAudioMachineLearningCoordinator *)lockedDelegate actionWillBeginForContext:v22 withError:&v24]& 1) == 0)
        {
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() < 3)
            {
              goto LABEL_19;
            }

            v13 = VRTraceErrorLogLevelToCSTR();
            v14 = *MEMORY[0x1E6986650];
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_19;
            }

            *buf = 136316162;
            v26 = v13;
            v27 = 2080;
            v28 = "[VCAudioMachineLearningCoordinator startDelegateAudioStackIfNeededWithError:]";
            v29 = 1024;
            v30 = 322;
            v31 = 2048;
            v32 = v23;
            v33 = 2112;
            selfCopy = lockedDelegate;
            v15 = " [%s] %s:%d Failed to start delegate audio stack for token=%ld delegate=%@";
            v16 = v14;
            v17 = 48;
          }

          else
          {
            if (objc_opt_respondsToSelector())
            {
              v12 = [(VCAudioMachineLearningCoordinator *)self performSelector:sel_logPrefix];
            }

            else
            {
              v12 = &stru_1F570E008;
            }

            if (VRTraceGetErrorLogLevelForModule() < 3)
            {
              goto LABEL_19;
            }

            v18 = VRTraceErrorLogLevelToCSTR();
            v19 = *MEMORY[0x1E6986650];
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_19;
            }

            *buf = 136316674;
            v26 = v18;
            v27 = 2080;
            v28 = "[VCAudioMachineLearningCoordinator startDelegateAudioStackIfNeededWithError:]";
            v29 = 1024;
            v30 = 322;
            v31 = 2112;
            v32 = v12;
            v33 = 2048;
            selfCopy = self;
            v35 = 2048;
            v36 = v23;
            v37 = 2112;
            v38 = lockedDelegate;
            v15 = " [%s] %s:%d %@(%p) Failed to start delegate audio stack for token=%ld delegate=%@";
            v16 = v19;
            v17 = 68;
          }

          _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
          goto LABEL_19;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v40 objects:v39 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  v20 = v24;
  if (error)
  {
    *error = v24;
  }

  return v20 == 0;
}

- (void)removeDelegateAudioStackIfNeeded
{
  v44 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_stateLock);
  lockedDelegate = [(VCAudioMachineLearningCoordinator *)self lockedDelegate];
  v24 = 0;
  v4 = [(NSArray *)[(VCAudioCaptionsBufferInfoCollection *)self->_bufferInfos streamTokens] copy];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v40 objects:v39 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v41;
    *&v6 = 136316162;
    v20 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(obj);
        }

        unsignedIntegerValue = [*(*(&v40 + 1) + 8 * v9) unsignedIntegerValue];
        v22[1] = &v23;
        v23 = unsignedIntegerValue;
        v22[0] = 0xAAAAAAAAAAAAAA01;
        if (([(VCAudioMachineLearningCoordinator *)lockedDelegate actionDidFinishForContext:v22 withError:&v24]& 1) == 0)
        {
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v17 = VRTraceErrorLogLevelToCSTR();
              v18 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                *buf = v20;
                v26 = v17;
                v27 = 2080;
                v28 = "[VCAudioMachineLearningCoordinator removeDelegateAudioStackIfNeeded]";
                v29 = 1024;
                v30 = 348;
                v31 = 2048;
                v32 = v23;
                v33 = 2112;
                selfCopy = lockedDelegate;
                v14 = v18;
                v15 = " [%s] %s:%d Failed to remove delegate audio stack for token=%ld delegate=%@";
                v16 = 48;
                goto LABEL_18;
              }
            }
          }

          else
          {
            v11 = &stru_1F570E008;
            if (objc_opt_respondsToSelector())
            {
              v11 = [(VCAudioMachineLearningCoordinator *)self performSelector:sel_logPrefix];
            }

            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v12 = VRTraceErrorLogLevelToCSTR();
              v13 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                *buf = 136316674;
                v26 = v12;
                v27 = 2080;
                v28 = "[VCAudioMachineLearningCoordinator removeDelegateAudioStackIfNeeded]";
                v29 = 1024;
                v30 = 348;
                v31 = 2112;
                v32 = v11;
                v33 = 2048;
                selfCopy = self;
                v35 = 2048;
                v36 = v23;
                v37 = 2112;
                v38 = lockedDelegate;
                v14 = v13;
                v15 = " [%s] %s:%d %@(%p) Failed to remove delegate audio stack for token=%ld delegate=%@";
                v16 = 68;
LABEL_18:
                _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, v15, buf, v16);
              }
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v19 = [obj countByEnumeratingWithState:&v40 objects:v39 count:16];
      v7 = v19;
    }

    while (v19);
  }
}

- (BOOL)toggleDelegateAudioStackEnabledIfNeeded:(BOOL)needed withError:(id *)error
{
  neededCopy = needed;
  v32 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_stateLock);
  if (![(VCAudioMachineLearningCoordinator *)self lockedDelegate]|| self->_delegateAudioStackStarted == neededCopy)
  {
    return 1;
  }

  if (neededCopy && [(VCAudioMachineLearningCoordinator *)self startDelegateAudioStackIfNeededWithError:error])
  {
    v8 = 1;
  }

  else
  {
    [(VCAudioMachineLearningCoordinator *)self removeDelegateAudioStackIfNeeded];
    v8 = 0;
  }

  self->_delegateAudioStackStarted = v8;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return self->_delegateAudioStackStarted == neededCopy;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return self->_delegateAudioStackStarted == neededCopy;
    }

    delegateAudioStackStarted = self->_delegateAudioStackStarted;
    v19 = 136316162;
    v20 = v10;
    v21 = 2080;
    v22 = "[VCAudioMachineLearningCoordinator toggleDelegateAudioStackEnabledIfNeeded:withError:]";
    v23 = 1024;
    v24 = 373;
    v25 = 1024;
    *v26 = neededCopy;
    *&v26[4] = 1024;
    *&v26[6] = delegateAudioStackStarted;
    v13 = " [%s] %s:%d shouldEnable=%{BOOL}d, _delegateAudioStackStarted=%{BOOL}d";
    v14 = v11;
    v15 = 40;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(VCAudioMachineLearningCoordinator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return self->_delegateAudioStackStarted == neededCopy;
    }

    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return self->_delegateAudioStackStarted == neededCopy;
    }

    v18 = self->_delegateAudioStackStarted;
    v19 = 136316674;
    v20 = v16;
    v21 = 2080;
    v22 = "[VCAudioMachineLearningCoordinator toggleDelegateAudioStackEnabledIfNeeded:withError:]";
    v23 = 1024;
    v24 = 373;
    v25 = 2112;
    *v26 = v9;
    *&v26[8] = 2048;
    selfCopy = self;
    v28 = 1024;
    v29 = neededCopy;
    v30 = 1024;
    v31 = v18;
    v13 = " [%s] %s:%d %@(%p) shouldEnable=%{BOOL}d, _delegateAudioStackStarted=%{BOOL}d";
    v14 = v17;
    v15 = 60;
  }

  _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, &v19, v15);
  return self->_delegateAudioStackStarted == neededCopy;
}

- (void)processAudioControlEventEnable:(BOOL)enable moduleID:(unsigned int)d
{
  enableCopy = enable;
  v63 = *MEMORY[0x1E69E9840];
  v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
  *buf = v7;
  if (v7)
  {
    v8 = v7;
    if (enableCopy)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    *v7 = v9;
    v7[1] = d;
    moduleIDsEnabled = self->_moduleIDsEnabled;
    if (enableCopy)
    {
      if (!moduleIDsEnabled)
      {
        [VCAudioMachineLearningCoordinator processAudioControlEventEnable:? moduleID:?];
        goto LABEL_75;
      }

LABEL_10:
      v55 = v8;
      goto LABEL_11;
    }

    if (moduleIDsEnabled == d)
    {
      v11 = dispatch_semaphore_create(0);
      *(v8 + 1) = v11;
      if (v11)
      {
        goto LABEL_10;
      }

      [VCAudioMachineLearningCoordinator processAudioControlEventEnable:? moduleID:?];
    }

    else
    {
      [VCAudioMachineLearningCoordinator processAudioControlEventEnable:? moduleID:?];
    }
  }

  else
  {
    [VCAudioMachineLearningCoordinator processAudioControlEventEnable:? moduleID:?];
  }

LABEL_75:
  _VCAudioMachineLearningCoordinator_DestroyControlEvent(buf);
  v8 = *buf;
  v55 = *buf;
  if (!*buf)
  {
    [VCAudioMachineLearningCoordinator processAudioControlEventEnable:buf moduleID:?];
    v12 = *buf;
    goto LABEL_36;
  }

LABEL_11:
  v12 = *(v8 + 1);
  if (v12)
  {
    dispatch_retain(*(v8 + 1));
  }

  v13 = CMSimpleQueueEnqueue(self->_audioProcessingEventQueue, v8);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v13)
  {
    if (ErrorLogLevelForModule >= 3)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = v15;
        v57 = 2080;
        v58 = "_VCAudioMachineLearningCoordinator_EnqueueAudioControlEvent";
        v59 = 1024;
        v60 = 784;
        v61 = 2048;
        *v62 = v8;
        *&v62[8] = 1024;
        *&v62[10] = v13;
        _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d Error in enqueueing control event=%p, err=%d", buf, 0x2Cu);
      }
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_36;
      }

      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      *buf = 136315906;
      *&buf[4] = v24;
      v57 = 2080;
      v58 = "[VCAudioMachineLearningCoordinator processAudioControlEventEnable:moduleID:]";
      v59 = 1024;
      v60 = 386;
      v61 = 2048;
      *v62 = v8;
      v26 = " [%s] %s:%d Failed to enqueue event=%p";
      v27 = v25;
      v28 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v17 = [(VCAudioMachineLearningCoordinator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v17 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_36;
      }

      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      *buf = 136316418;
      *&buf[4] = v29;
      v57 = 2080;
      v58 = "[VCAudioMachineLearningCoordinator processAudioControlEventEnable:moduleID:]";
      v59 = 1024;
      v60 = 386;
      v61 = 2112;
      *v62 = v17;
      *&v62[8] = 2048;
      *&v62[10] = self;
      *&v62[18] = 2048;
      *&v62[20] = v8;
      v26 = " [%s] %s:%d %@(%p) Failed to enqueue event=%p";
      v27 = v30;
      v28 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
LABEL_36:
    _VCAudioMachineLearningCoordinator_DestroyControlEvent(&v55);
    goto LABEL_37;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v20 = *v8;
      v21 = *(v8 + 1);
      *buf = 136316418;
      *&buf[4] = v18;
      v57 = 2080;
      v58 = "_VCAudioMachineLearningCoordinator_EnqueueAudioControlEvent";
      v59 = 1024;
      v60 = 787;
      v61 = 2048;
      *v62 = v8;
      *&v62[8] = 1024;
      *&v62[10] = v20;
      *&v62[14] = 2048;
      *&v62[16] = v21;
      _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Enqueued control event=%p, type=%d, semaphore=%p", buf, 0x36u);
    }
  }

  if (!v12 || enableCopy)
  {
LABEL_37:
    if (!v12)
    {
      return;
    }

    goto LABEL_38;
  }

  v22 = dispatch_time(0, 100000000);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        *&buf[4] = v31;
        v57 = 2080;
        v58 = "_VCAudioMachineLearningCoordinator_FinalizeAudioControlEvent";
        v59 = 1024;
        v60 = 800;
        v61 = 1024;
        *v62 = 2;
        *&v62[4] = 2048;
        *&v62[6] = v12;
        v33 = " [%s] %s:%d Waiting on control eventType=%d, semaphore=%p";
        v34 = v32;
        v35 = 44;
LABEL_47:
        _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, v33, buf, v35);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v23 = [(VCAudioMachineLearningCoordinator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v23 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v36 = VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        *&buf[4] = v36;
        v57 = 2080;
        v58 = "_VCAudioMachineLearningCoordinator_FinalizeAudioControlEvent";
        v59 = 1024;
        v60 = 800;
        v61 = 2112;
        *v62 = v23;
        *&v62[8] = 2048;
        *&v62[10] = self;
        *&v62[18] = 1024;
        *&v62[20] = 2;
        *&v62[24] = 2048;
        *&v62[26] = v12;
        v33 = " [%s] %s:%d %@(%p) Waiting on control eventType=%d, semaphore=%p";
        v34 = v37;
        v35 = 64;
        goto LABEL_47;
      }
    }
  }

  v38 = dispatch_semaphore_wait(v12, v22);
  v39 = objc_opt_class();
  if (v38)
  {
    if (v39 != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v40 = [(VCAudioMachineLearningCoordinator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v40 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_38;
      }

      v46 = VRTraceErrorLogLevelToCSTR();
      v47 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_38;
      }

      activeModuleIDs = self->_activeModuleIDs;
      *buf = 136316930;
      *&buf[4] = v46;
      v57 = 2080;
      v58 = "_VCAudioMachineLearningCoordinator_FinalizeAudioControlEvent";
      v59 = 1024;
      v60 = 806;
      v61 = 2112;
      *v62 = v40;
      *&v62[8] = 2048;
      *&v62[10] = self;
      *&v62[18] = 1024;
      *&v62[20] = d;
      *&v62[24] = 1024;
      *&v62[26] = 2;
      *&v62[30] = 1024;
      *&v62[32] = activeModuleIDs;
      v45 = " [%s] %s:%d %@(%p) moduleID=%d, eventType=%d timed out; audioProcessingEnabled=%d";
      goto LABEL_70;
    }

    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_38;
    }

    v42 = VRTraceErrorLogLevelToCSTR();
    v43 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    v44 = self->_activeModuleIDs;
    *buf = 136316418;
    *&buf[4] = v42;
    v57 = 2080;
    v58 = "_VCAudioMachineLearningCoordinator_FinalizeAudioControlEvent";
    v59 = 1024;
    v60 = 806;
    v61 = 1024;
    *v62 = d;
    *&v62[4] = 1024;
    *&v62[6] = 2;
    *&v62[10] = 1024;
    *&v62[12] = v44;
    v45 = " [%s] %s:%d moduleID=%d, eventType=%d timed out; audioProcessingEnabled=%d";
  }

  else
  {
    if (v39 != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v41 = [(VCAudioMachineLearningCoordinator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v41 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_38;
      }

      v53 = VRTraceErrorLogLevelToCSTR();
      v47 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_38;
      }

      v54 = self->_activeModuleIDs;
      *buf = 136316930;
      *&buf[4] = v53;
      v57 = 2080;
      v58 = "_VCAudioMachineLearningCoordinator_FinalizeAudioControlEvent";
      v59 = 1024;
      v60 = 804;
      v61 = 2112;
      *v62 = v41;
      *&v62[8] = 2048;
      *&v62[10] = self;
      *&v62[18] = 1024;
      *&v62[20] = d;
      *&v62[24] = 1024;
      *&v62[26] = 2;
      *&v62[30] = 1024;
      *&v62[32] = v54;
      v45 = " [%s] %s:%d %@(%p) moduleID=%d, eventType=%d processed successfully; audioProcessingEnabled=%d";
LABEL_70:
      v51 = v47;
      v52 = 66;
      goto LABEL_71;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_38;
    }

    v49 = VRTraceErrorLogLevelToCSTR();
    v43 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    v50 = self->_activeModuleIDs;
    *buf = 136316418;
    *&buf[4] = v49;
    v57 = 2080;
    v58 = "_VCAudioMachineLearningCoordinator_FinalizeAudioControlEvent";
    v59 = 1024;
    v60 = 804;
    v61 = 1024;
    *v62 = d;
    *&v62[4] = 1024;
    *&v62[6] = 2;
    *&v62[10] = 1024;
    *&v62[12] = v50;
    v45 = " [%s] %s:%d moduleID=%d, eventType=%d processed successfully; audioProcessingEnabled=%d";
  }

  v51 = v43;
  v52 = 46;
LABEL_71:
  _os_log_impl(&dword_1DB56E000, v51, OS_LOG_TYPE_DEFAULT, v45, buf, v52);
LABEL_38:
  dispatch_release(v12);
}

- (void)setOneToOneModeEnabled:(BOOL)enabled
{
  os_unfair_lock_lock(&self->_stateLock);
  if (!self->_invalidated)
  {
    self->_oneToOneEnabled = enabled;
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (BOOL)registerStreamWithConfig:(const tagVCAudioCaptionsStreamConfig *)config
{
  v33 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  if (!config)
  {
    [(VCAudioMachineLearningCoordinator *)self registerStreamWithConfig:v29];
    v15 = v29[0];
    goto LABEL_16;
  }

  if (self->_invalidated || (VCAudioCaptionsBufferInfoCollection_AddBufferInfo(self->_bufferInfos, &config->var0, 0) & 1) == 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_27;
      }

      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      var0 = config->var0;
      invalidated = self->_invalidated;
      *v29 = 136316162;
      *&v29[4] = v18;
      *&v29[12] = 2080;
      *&v29[14] = "[VCAudioMachineLearningCoordinator registerStreamWithConfig:]";
      *&v29[22] = 1024;
      LODWORD(v30) = 413;
      WORD2(v30) = 2048;
      *(&v30 + 6) = var0;
      HIWORD(v30) = 1024;
      LODWORD(selfCopy2) = invalidated;
      v22 = " [%s] %s:%d Could not register streamToken=%ld for captions, invalidated=%{BOOL}d";
      v23 = v19;
      v24 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v17 = [(VCAudioMachineLearningCoordinator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v17 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_27;
      }

      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      v27 = self->_invalidated;
      v28 = config->var0;
      *v29 = 136316674;
      *&v29[4] = v25;
      *&v29[12] = 2080;
      *&v29[14] = "[VCAudioMachineLearningCoordinator registerStreamWithConfig:]";
      *&v29[22] = 1024;
      LODWORD(v30) = 413;
      WORD2(v30) = 2112;
      *(&v30 + 6) = v17;
      HIWORD(v30) = 2048;
      selfCopy2 = self;
      LOWORD(v32) = 2048;
      *(&v32 + 2) = v28;
      WORD5(v32) = 1024;
      HIDWORD(v32) = v27;
      v22 = " [%s] %s:%d %@(%p) Could not register streamToken=%ld for captions, invalidated=%{BOOL}d";
      v23 = v26;
      v24 = 64;
    }

    _os_log_error_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_ERROR, v22, v29, v24);
LABEL_27:
    v15 = 0;
    goto LABEL_16;
  }

  self->_initialStreamToken = config->var0;
  [+[VCCaptionsManager defaultManager](VCCaptionsManager "defaultManager")];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_15;
    }

    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v8 = config->var0;
    *v29 = 136315906;
    *&v29[4] = v6;
    *&v29[12] = 2080;
    *&v29[14] = "[VCAudioMachineLearningCoordinator registerStreamWithConfig:]";
    *&v29[22] = 1024;
    LODWORD(v30) = 418;
    WORD2(v30) = 2048;
    *(&v30 + 6) = v8;
    v9 = " [%s] %s:%d Register captions source streamToken=%ld";
    v10 = v7;
    v11 = 38;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCAudioMachineLearningCoordinator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
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

    v14 = config->var0;
    *v29 = 136316418;
    *&v29[4] = v12;
    *&v29[12] = 2080;
    *&v29[14] = "[VCAudioMachineLearningCoordinator registerStreamWithConfig:]";
    *&v29[22] = 1024;
    LODWORD(v30) = 418;
    WORD2(v30) = 2112;
    *(&v30 + 6) = v5;
    HIWORD(v30) = 2048;
    selfCopy2 = self;
    LOWORD(v32) = 2048;
    *(&v32 + 2) = v14;
    v9 = " [%s] %s:%d %@(%p) Register captions source streamToken=%ld";
    v10 = v13;
    v11 = 58;
  }

  _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v29, v11);
LABEL_15:
  [(VCAudioMachineLearningCoordinator *)self lockedRegisterMediaAnalyzerWithStreamToken:config->var0, *v29, *&v29[16], v30, selfCopy2, v32];
  v15 = 1;
LABEL_16:
  os_unfair_lock_unlock(&self->_stateLock);
  return v15;
}

- (void)unregisterStreamTokens
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_stateLock);
  bufferInfos = self->_bufferInfos;
  if (bufferInfos)
  {
    v4 = VCAudioCaptionsBufferInfoCollection_CopyOrderedBufferInfos(bufferInfos);
    captionsDelegate = [(VCAudioMachineLearningCoordinator *)self captionsDelegate];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * v8);
          if ([(VCAudioMachineLearningCoordinator *)self lockedCaptionsEnabled])
          {
            delegateQueue = self->_delegateQueue;
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __59__VCAudioMachineLearningCoordinator_unregisterStreamTokens__block_invoke;
            block[3] = &unk_1E85F37F0;
            block[4] = captionsDelegate;
            block[5] = v9;
            dispatch_sync(delegateQueue, block);
          }

          [+[VCCaptionsManager defaultManager](VCCaptionsManager "defaultManager")];
          -[VCMediaAnalyzerManager unregisterMediaAnalyzerSourceWithStreamToken:](+[VCMediaAnalyzerManager sharedInstance](VCMediaAnalyzerManager, "sharedInstance"), "unregisterMediaAnalyzerSourceWithStreamToken:", [v9 token]);
          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

uint64_t __59__VCAudioMachineLearningCoordinator_unregisterStreamTokens__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) token];

  return [v1 streamToken:v2 didDisableCaptions:1 error:0];
}

- (void)lockedRegisterMediaAnalyzerWithStreamToken:(int64_t)token
{
  v29 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_stateLock);
  [+[VCMediaAnalyzerManager sharedInstance](VCMediaAnalyzerManager registerMediaAnalyzerSource:"registerMediaAnalyzerSource:streamToken:" streamToken:self, token];
  if (!self->_currentMediaAnalyzerStreamToken)
  {
    self->_currentMediaAnalyzerStreamToken = token;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        currentMediaAnalyzerStreamToken = self->_currentMediaAnalyzerStreamToken;
        v15 = 136316162;
        v16 = v6;
        v17 = 2080;
        v18 = "[VCAudioMachineLearningCoordinator lockedRegisterMediaAnalyzerWithStreamToken:]";
        v19 = 1024;
        v20 = 456;
        v21 = 2048;
        tokenCopy = token;
        v23 = 2048;
        selfCopy = currentMediaAnalyzerStreamToken;
        v9 = " [%s] %s:%d Register media analyzer source for streamToken=%ld _currentMediaAnalyzerStreamToken=%ld";
        v10 = v7;
        v11 = 48;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCAudioMachineLearningCoordinator *)self performSelector:sel_logPrefix];
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
        v14 = self->_currentMediaAnalyzerStreamToken;
        v15 = 136316674;
        v16 = v12;
        v17 = 2080;
        v18 = "[VCAudioMachineLearningCoordinator lockedRegisterMediaAnalyzerWithStreamToken:]";
        v19 = 1024;
        v20 = 456;
        v21 = 2112;
        tokenCopy = v5;
        v23 = 2048;
        selfCopy = self;
        v25 = 2048;
        tokenCopy2 = token;
        v27 = 2048;
        v28 = v14;
        v9 = " [%s] %s:%d %@(%p) Register media analyzer source for streamToken=%ld _currentMediaAnalyzerStreamToken=%ld";
        v10 = v13;
        v11 = 68;
        goto LABEL_13;
      }
    }
  }
}

- (void)enableV2SpeechAPI:(BOOL)i
{
  iCopy = i;
  v31 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  v5 = VCFeatureFlagManager_UseAnalyzerSpeechAPI();
  self->_isV2SpeechAPIEnabled = iCopy && v5;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        isV2SpeechAPIEnabled = self->_isV2SpeechAPIEnabled;
        *v26 = 136316418;
        *&v26[4] = v7;
        *&v26[12] = 2080;
        *&v26[14] = "[VCAudioMachineLearningCoordinator enableV2SpeechAPI:]";
        *&v26[22] = 1024;
        LODWORD(v27) = 464;
        WORD2(v27) = 1024;
        *(&v27 + 6) = iCopy;
        WORD5(v27) = 1024;
        HIDWORD(v27) = v5;
        LOWORD(selfCopy2) = 1024;
        *(&selfCopy2 + 2) = isV2SpeechAPIEnabled;
        v10 = " [%s] %s:%d VCAudioMLCoordinator: Setting enable=%{BOOL}d (featureFlagValue=%{BOOL}d), enableV2SpeechAPI=%{BOOL}d";
        v11 = v8;
        v12 = 46;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, v26, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCAudioMachineLearningCoordinator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_isV2SpeechAPIEnabled;
        *v26 = 136316930;
        *&v26[4] = v13;
        *&v26[12] = 2080;
        *&v26[14] = "[VCAudioMachineLearningCoordinator enableV2SpeechAPI:]";
        *&v26[22] = 1024;
        LODWORD(v27) = 464;
        WORD2(v27) = 2112;
        *(&v27 + 6) = v6;
        HIWORD(v27) = 2048;
        selfCopy2 = self;
        LOWORD(v29) = 1024;
        *(&v29 + 2) = iCopy;
        HIWORD(v29) = 1024;
        LODWORD(v30) = v5;
        WORD2(v30) = 1024;
        *(&v30 + 6) = v15;
        v10 = " [%s] %s:%d %@(%p) VCAudioMLCoordinator: Setting enable=%{BOOL}d (featureFlagValue=%{BOOL}d), enableV2SpeechAPI=%{BOOL}d";
        v11 = v14;
        v12 = 66;
        goto LABEL_11;
      }
    }
  }

  if (self->_translatorMode)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          translatorMode = self->_translatorMode;
          *v26 = 136315906;
          *&v26[4] = v17;
          *&v26[12] = 2080;
          *&v26[14] = "[VCAudioMachineLearningCoordinator enableV2SpeechAPI:]";
          *&v26[22] = 1024;
          LODWORD(v27) = 467;
          WORD2(v27) = 1024;
          *(&v27 + 6) = translatorMode;
          v20 = " [%s] %s:%d Expected not to be in _translatorMode=%d when client calls enable V2 Speech API";
          v21 = v18;
          v22 = 34;
LABEL_23:
          _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, v26, v22);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v16 = [(VCAudioMachineLearningCoordinator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v16 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v25 = self->_translatorMode;
          *v26 = 136316418;
          *&v26[4] = v23;
          *&v26[12] = 2080;
          *&v26[14] = "[VCAudioMachineLearningCoordinator enableV2SpeechAPI:]";
          *&v26[22] = 1024;
          LODWORD(v27) = 467;
          WORD2(v27) = 2112;
          *(&v27 + 6) = v16;
          HIWORD(v27) = 2048;
          selfCopy2 = self;
          LOWORD(v29) = 1024;
          *(&v29 + 2) = v25;
          v20 = " [%s] %s:%d %@(%p) Expected not to be in _translatorMode=%d when client calls enable V2 Speech API";
          v21 = v24;
          v22 = 54;
          goto LABEL_23;
        }
      }
    }
  }

  [(VCAudioMachineLearningCoordinator *)self setUpForTranslatorMode:0, *v26, *&v26[16], v27, selfCopy2, v29, v30, v31];
  os_unfair_lock_unlock(&self->_stateLock);
}

- (BOOL)setUpAudioCaptionsUsingFrameworkType:(unsigned __int8)type
{
  typeCopy = type;
  v47 = *MEMORY[0x1E69E9840];
  if ([(VCAudioCaptions *)self->_audioCaptions frameworkType]== type)
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

      *buf = 136315906;
      v33 = v9;
      v34 = 2080;
      v35 = "[VCAudioMachineLearningCoordinator setUpAudioCaptionsUsingFrameworkType:]";
      v36 = 1024;
      v37 = 478;
      v38 = 1024;
      LODWORD(v39) = typeCopy;
      v11 = " [%s] %s:%d Already in requested frameworkType=%d";
      v12 = v10;
      v13 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCAudioMachineLearningCoordinator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 1;
      }

      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      *buf = 136316418;
      v33 = v22;
      v34 = 2080;
      v35 = "[VCAudioMachineLearningCoordinator setUpAudioCaptionsUsingFrameworkType:]";
      v36 = 1024;
      v37 = 478;
      v38 = 2112;
      v39 = v5;
      v40 = 2048;
      *v41 = self;
      *&v41[8] = 1024;
      LODWORD(v42) = typeCopy;
      v11 = " [%s] %s:%d %@(%p) Already in requested frameworkType=%d";
      v12 = v23;
      v13 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
    return 1;
  }

  [(VCAudioCaptions *)self->_audioCaptions setDelegate:0];

  self->_audioCaptions = 0;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v30[2] = [(VCObject *)self reportingAgent:self];
  LOBYTE(v31) = self->_isLocal;
  v6 = [VCAudioCaptionsSpeechFactory captionsProviderForFrameworkType:typeCopy withSpeechConfig:v30];
  self->_audioCaptions = v6;
  v7 = v6 != 0;
  if (!v6)
  {
    [VCAudioMachineLearningCoordinator setUpAudioCaptionsUsingFrameworkType:?];
    return v7;
  }

  [(VCAudioCaptions *)v6 setTranslatorMode:self->_translatorMode];
  [(VCAudioCaptions *)self->_audioCaptions setEnableV2SpeechAPI:self->_isV2SpeechAPIEnabled];
  if (self->_translatorMode == 2)
  {
    [(VCAudioCaptions *)self->_audioCaptions setStreamToken:self->_initialStreamToken];
    [(VCAudioCaptions *)self->_audioCaptions setTranslatorIdentifier:self->_translatorIdentifier];
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        streamToken = [(VCAudioCaptions *)self->_audioCaptions streamToken];
        translatorMode = [(VCAudioCaptions *)self->_audioCaptions translatorMode];
        frameworkType = [(VCAudioCaptions *)self->_audioCaptions frameworkType];
        *buf = 136316418;
        v33 = v14;
        v34 = 2080;
        v35 = "[VCAudioMachineLearningCoordinator setUpAudioCaptionsUsingFrameworkType:]";
        v36 = 1024;
        v37 = 498;
        v38 = 2048;
        v39 = streamToken;
        v40 = 1024;
        *v41 = translatorMode;
        *&v41[4] = 1024;
        *&v41[6] = frameworkType;
        v19 = " [%s] %s:%d Set up audioCaptions with info (streamToken=%lu, translatorMode=%d, frameworkType=%d)";
        v20 = v15;
        v21 = 50;
LABEL_27:
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCAudioMachineLearningCoordinator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        streamToken2 = [(VCAudioCaptions *)self->_audioCaptions streamToken];
        translatorMode2 = [(VCAudioCaptions *)self->_audioCaptions translatorMode];
        frameworkType2 = [(VCAudioCaptions *)self->_audioCaptions frameworkType];
        *buf = 136316930;
        v33 = v24;
        v34 = 2080;
        v35 = "[VCAudioMachineLearningCoordinator setUpAudioCaptionsUsingFrameworkType:]";
        v36 = 1024;
        v37 = 498;
        v38 = 2112;
        v39 = v8;
        v40 = 2048;
        *v41 = self;
        *&v41[8] = 2048;
        v42 = streamToken2;
        v43 = 1024;
        v44 = translatorMode2;
        v45 = 1024;
        v46 = frameworkType2;
        v19 = " [%s] %s:%d %@(%p) Set up audioCaptions with info (streamToken=%lu, translatorMode=%d, frameworkType=%d)";
        v20 = v25;
        v21 = 70;
        goto LABEL_27;
      }
    }
  }

  return v7;
}

- (void)registerCaptionsEventDelegate:(id)delegate
{
  block[6] = *MEMORY[0x1E69E9840];
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__VCAudioMachineLearningCoordinator_registerCaptionsEventDelegate___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = delegate;
  dispatch_async(delegateQueue, block);
}

- (void)setCaptionsSourceLocale:(id)locale
{
  os_unfair_lock_lock(&self->_stateLock);

  self->_sourceLocale = [locale copy];
  [(VCAudioCaptions *)self->_audioCaptions setSourceLocale:locale];

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)updateCaptionsConfig:(id)config
{
  os_unfair_lock_lock(&self->_stateLock);
  -[VCAudioMachineLearningCoordinator reportCaptionsUsage:](self, "reportCaptionsUsage:", [config usage]);

  self->_locale = [objc_msgSend(config "locale")];
  [(VCAudioCaptions *)self->_audioCaptions updateConfig:config];

  os_unfair_lock_unlock(&self->_stateLock);
}

- (BOOL)lockedCaptionsEnabled
{
  os_unfair_lock_assert_owner(&self->_stateLock);
  audioCaptions = self->_audioCaptions;

  return [(VCAudioCaptions *)audioCaptions enabled];
}

- (BOOL)captionsEnabled
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = !self->_invalidated && [(VCAudioMachineLearningCoordinator *)self lockedCaptionsEnabled];
  os_unfair_lock_unlock(&self->_stateLock);
  return v3;
}

- (BOOL)prewarmCaptionsWithError:(id *)error
{
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_invalidated)
  {
    os_unfair_lock_unlock(&self->_stateLock);
    if (error)
    {
      v5 = +[VCAudioMachineLearningCoordinator errorCodeWithEvent:errorPath:](VCAudioMachineLearningCoordinator, "errorCodeWithEvent:errorPath:", 0, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioMachineLearningCoordinator.m", 596]);
      result = 0;
      *error = v5;
      return result;
    }
  }

  else
  {
    if ([(VCAudioMachineLearningCoordinator *)self toggleDelegateAudioStackEnabledIfNeeded:1 withError:error])
    {
      [(VCAudioCaptions *)self->_audioCaptions prewarmCaptions];
      os_unfair_lock_unlock(&self->_stateLock);
      return 1;
    }

    os_unfair_lock_unlock(&self->_stateLock);
  }

  return 0;
}

- (BOOL)lockedEnableCaptions:(BOOL)captions withError:(id *)error
{
  captionsCopy = captions;
  v51 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_stateLock);
  if (!self->_invalidated)
  {
    if ([(VCAudioMachineLearningCoordinator *)self lockedCaptionsEnabled]== captionsCopy)
    {
      goto LABEL_54;
    }

    if (!captionsCopy)
    {
      [(VCAudioMachineLearningCoordinator *)self toggleDelegateAudioStackEnabledIfNeeded:self->_moduleIDsEnabled > 1 withError:error];
      [(VCAudioCaptions *)self->_audioCaptions enableCaptions:0];
      v12 = self->_moduleIDsEnabled & 0xFFFFFFFE;
LABEL_43:
      self->_moduleIDsEnabled = v12;
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_54;
        }

        v27 = VRTraceErrorLogLevelToCSTR();
        v28 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_54;
        }

        captionsState = self->_captionsState;
        moduleIDsEnabled = self->_moduleIDsEnabled;
        *buf = 136316418;
        v40 = v27;
        v41 = 2080;
        v42 = "[VCAudioMachineLearningCoordinator lockedEnableCaptions:withError:]";
        v43 = 1024;
        v44 = 656;
        v45 = 1024;
        *v46 = captionsCopy;
        *&v46[4] = 2048;
        *&v46[6] = captionsState;
        *&v46[14] = 2048;
        *&v46[16] = moduleIDsEnabled;
        v31 = " [%s] %s:%d enable=%d, state=%ld, moduleIDsEnabled=%ld";
        v32 = v28;
        v33 = 54;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v26 = [(VCAudioMachineLearningCoordinator *)self performSelector:sel_logPrefix];
        }

        else
        {
          v26 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_54;
        }

        v34 = VRTraceErrorLogLevelToCSTR();
        v35 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_54;
        }

        v36 = self->_captionsState;
        v37 = self->_moduleIDsEnabled;
        *buf = 136316930;
        v40 = v34;
        v41 = 2080;
        v42 = "[VCAudioMachineLearningCoordinator lockedEnableCaptions:withError:]";
        v43 = 1024;
        v44 = 656;
        v45 = 2112;
        *v46 = v26;
        *&v46[8] = 2048;
        *&v46[10] = self;
        *&v46[18] = 1024;
        *&v46[20] = captionsCopy;
        v47 = 2048;
        v48 = v36;
        v49 = 2048;
        v50 = v37;
        v31 = " [%s] %s:%d %@(%p) enable=%d, state=%ld, moduleIDsEnabled=%ld";
        v32 = v35;
        v33 = 74;
      }

      _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
LABEL_54:
      LOBYTE(v10) = 1;
      return v10;
    }

    if (self->_translatorMode == 2)
    {
      if ([(VCAudioCaptions *)self->_audioCaptions translatorMode]!= self->_translatorMode || [(VCAudioCaptions *)self->_audioCaptions translatorIdentifier]!= self->_translatorIdentifier)
      {
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCAudioMachineLearningCoordinator lockedEnableCaptions:withError:];
              if (!error)
              {
                goto LABEL_56;
              }

              goto LABEL_29;
            }
          }
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v11 = [(VCAudioMachineLearningCoordinator *)self performSelector:sel_logPrefix];
          }

          else
          {
            v11 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v15 = VRTraceErrorLogLevelToCSTR();
            v16 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136316162;
              v40 = v15;
              v41 = 2080;
              v42 = "[VCAudioMachineLearningCoordinator lockedEnableCaptions:withError:]";
              v43 = 1024;
              v44 = 631;
              v45 = 2112;
              *v46 = v11;
              *&v46[8] = 2048;
              *&v46[10] = self;
              _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Invalid audio captions translator mode or identifier.", buf, 0x30u);
              if (!error)
              {
                goto LABEL_56;
              }

              goto LABEL_29;
            }
          }
        }

        if (!error)
        {
          goto LABEL_56;
        }

LABEL_29:
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioMachineLearningCoordinator.m", 634];
        v8 = 1;
        goto LABEL_4;
      }

      goto LABEL_41;
    }

    sourceLocale = self->_sourceLocale;
    if (sourceLocale && self->_locale && ([(NSLocale *)sourceLocale isEqual:?]& 1) == 0)
    {
      selfCopy2 = self;
      v18 = 1;
LABEL_40:
      [(VCAudioMachineLearningCoordinator *)selfCopy2 setUpForTranslatorMode:v18];
LABEL_41:
      v10 = [(VCAudioMachineLearningCoordinator *)self toggleDelegateAudioStackEnabledIfNeeded:1 withError:error];
      if (!v10)
      {
        return v10;
      }

      [(VCAudioCaptions *)self->_audioCaptions enableCaptions:1];
      v12 = self->_moduleIDsEnabled | 1;
      goto LABEL_43;
    }

    if ([(VCAudioCaptions *)self->_audioCaptions translatorMode])
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_39;
        }

        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_39;
        }

        *buf = 136315650;
        v40 = v19;
        v41 = 2080;
        v42 = "[VCAudioMachineLearningCoordinator lockedEnableCaptions:withError:]";
        v43 = 1024;
        v44 = 643;
        v21 = " [%s] %s:%d Expected to be in the correct audio captions setup";
        v22 = v20;
        v23 = 28;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v14 = [(VCAudioMachineLearningCoordinator *)self performSelector:sel_logPrefix];
        }

        else
        {
          v14 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_39;
        }

        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_39;
        }

        *buf = 136316162;
        v40 = v24;
        v41 = 2080;
        v42 = "[VCAudioMachineLearningCoordinator lockedEnableCaptions:withError:]";
        v43 = 1024;
        v44 = 643;
        v45 = 2112;
        *v46 = v14;
        *&v46[8] = 2048;
        *&v46[10] = self;
        v21 = " [%s] %s:%d %@(%p) Expected to be in the correct audio captions setup";
        v22 = v25;
        v23 = 48;
      }

      _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
    }

LABEL_39:
    selfCopy2 = self;
    v18 = 0;
    goto LABEL_40;
  }

  if (!error)
  {
LABEL_56:
    LOBYTE(v10) = 0;
    return v10;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioMachineLearningCoordinator.m", 617];
  v8 = 0;
LABEL_4:
  v9 = [VCAudioMachineLearningCoordinator errorCodeWithEvent:v8 errorPath:v7];
  LOBYTE(v10) = 0;
  *error = v9;
  return v10;
}

- (void)enableCaptions:(BOOL)captions
{
  captionsCopy = captions;
  v44 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v30 = v6;
        v31 = 2080;
        v32 = "[VCAudioMachineLearningCoordinator enableCaptions:]";
        v33 = 1024;
        v34 = 661;
        v35 = 1024;
        *v36 = captionsCopy;
        v8 = " [%s] %s:%d enableCaptions=%d";
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
      v5 = [(VCAudioMachineLearningCoordinator *)self performSelector:sel_logPrefix];
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
        v30 = v11;
        v31 = 2080;
        v32 = "[VCAudioMachineLearningCoordinator enableCaptions:]";
        v33 = 1024;
        v34 = 661;
        v35 = 2112;
        *v36 = v5;
        *&v36[8] = 2048;
        selfCopy2 = self;
        v38 = 1024;
        v39 = captionsCopy;
        v8 = " [%s] %s:%d %@(%p) enableCaptions=%d";
        v9 = v12;
        v10 = 54;
        goto LABEL_11;
      }
    }
  }

  v28 = 0;
  os_unfair_lock_lock(&self->_stateLock);
  if (captionsCopy)
  {
    if ([(VCAudioMachineLearningCoordinator *)self lockedEnableCaptions:captionsCopy withError:&v28])
    {
      [(VCAudioMachineLearningCoordinator *)self processAudioControlEventEnable:1 moduleID:1];
      os_unfair_lock_unlock(&self->_stateLock);
    }

    else
    {
      os_unfair_lock_unlock(&self->_stateLock);
      [(VCAudioMachineLearningCoordinator *)self didEnableCaptions:0 error:v28];
    }
  }

  else
  {
    [(VCAudioMachineLearningCoordinator *)self processAudioControlEventEnable:0 moduleID:1];
    v13 = [(VCAudioMachineLearningCoordinator *)self lockedEnableCaptions:captionsCopy withError:&v28];
    os_unfair_lock_unlock(&self->_stateLock);
    if (!v13)
    {
      [(VCAudioMachineLearningCoordinator *)self didDisableCaptions:0 error:v28];
    }
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        moduleIDsEnabled = self->_moduleIDsEnabled;
        activeModuleIDs = self->_activeModuleIDs;
        delegateAudioStackStarted = self->_delegateAudioStackStarted;
        *buf = 136316418;
        v30 = v15;
        v31 = 2080;
        v32 = "[VCAudioMachineLearningCoordinator enableCaptions:]";
        v33 = 1024;
        v34 = 680;
        v35 = 1024;
        *v36 = moduleIDsEnabled;
        *&v36[4] = 1024;
        *&v36[6] = activeModuleIDs;
        LOWORD(selfCopy2) = 1024;
        *(&selfCopy2 + 2) = delegateAudioStackStarted;
        v20 = " [%s] %s:%d moduleIDsEnabled=%d, audioProcessingEnabled=%d, delegateAudioStackStarted=%{BOOL}d";
        v21 = v16;
        v22 = 46;
LABEL_28:
        _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCAudioMachineLearningCoordinator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v14 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v25 = self->_moduleIDsEnabled;
        v26 = self->_activeModuleIDs;
        v27 = self->_delegateAudioStackStarted;
        *buf = 136316930;
        v30 = v23;
        v31 = 2080;
        v32 = "[VCAudioMachineLearningCoordinator enableCaptions:]";
        v33 = 1024;
        v34 = 680;
        v35 = 2112;
        *v36 = v14;
        *&v36[8] = 2048;
        selfCopy2 = self;
        v38 = 1024;
        v39 = v25;
        v40 = 1024;
        v41 = v26;
        v42 = 1024;
        v43 = v27;
        v20 = " [%s] %s:%d %@(%p) moduleIDsEnabled=%d, audioProcessingEnabled=%d, delegateAudioStackStarted=%{BOOL}d";
        v21 = v24;
        v22 = 66;
        goto LABEL_28;
      }
    }
  }
}

- (id)lockedDelegate
{
  os_unfair_lock_assert_owner(&self->_stateLock);

  return objc_loadWeak(&self->_delegate);
}

- (void)registerMediaAnalyzerSourceDelegate:(id)delegate
{
  os_unfair_lock_lock(&self->_stateLock);
  objc_storeWeak(&self->_mediaAnalyzerSourceDelegate, delegate);

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)setMediaAnalyzerTaskType:(int64_t)type
{
  os_unfair_lock_lock(&self->_stateLock);
  self->_mediaAnalyzerAnalysisType = type;

  os_unfair_lock_unlock(&self->_stateLock);
}

- (BOOL)lockedEnableMediaAnalyzer:(BOOL)analyzer withError:(id *)error
{
  analyzerCopy = analyzer;
  v39 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_stateLock);
  if ((((self->_moduleIDsEnabled & 2) == 0) ^ analyzerCopy))
  {
    return analyzerCopy;
  }

  BufferInfo = VCAudioCaptionsBufferInfoCollection_GetBufferInfo(self->_bufferInfos, self->_currentMediaAnalyzerStreamToken);
  *&v24[0] = -1;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(v24 + 8) = v8;
  *(&v24[1] + 8) = v8;
  if (BufferInfo)
  {
    [BufferInfo format];
  }

  else
  {
    memset(v24, 0, 40);
  }

  v23 = 0;
  if (analyzerCopy)
  {
    v9 = [(VCAudioMachineLearningCoordinator *)self toggleDelegateAudioStackEnabledIfNeeded:1 withError:&v23];
    if (!v9 || v23)
    {
      goto LABEL_28;
    }

    if (![(VCMediaAnalyzer *)self->_mediaAnalyzer configure:v24 forAnalysisType:self->_mediaAnalyzerAnalysisType mediaProperties:MEMORY[0x1E695E0F8] error:&v23])
    {
      [VCAudioMachineLearningCoordinator lockedEnableMediaAnalyzer:self withError:?];
      goto LABEL_27;
    }

    [(VCMediaAnalyzer *)self->_mediaAnalyzer startForStreamToken:self->_currentMediaAnalyzerStreamToken];
    v10 = self->_moduleIDsEnabled | 2;
LABEL_16:
    self->_moduleIDsEnabled = v10;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_27;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      moduleIDsEnabled = self->_moduleIDsEnabled;
      *buf = 136316418;
      v26 = v13;
      v27 = 2080;
      v28 = "[VCAudioMachineLearningCoordinator lockedEnableMediaAnalyzer:withError:]";
      v29 = 1024;
      v30 = 731;
      v31 = 1024;
      *v32 = analyzerCopy;
      *&v32[4] = 1024;
      *&v32[6] = analyzerCopy;
      *v33 = 2048;
      *&v33[2] = moduleIDsEnabled;
      v16 = " [%s] %s:%d enable=%d, didEnable=%d, moduleIDsEnabled=%ld";
      v17 = v14;
      v18 = 50;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [(VCAudioMachineLearningCoordinator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v12 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_27;
      }

      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v21 = self->_moduleIDsEnabled;
      *buf = 136316930;
      v26 = v19;
      v27 = 2080;
      v28 = "[VCAudioMachineLearningCoordinator lockedEnableMediaAnalyzer:withError:]";
      v29 = 1024;
      v30 = 731;
      v31 = 2112;
      *v32 = v12;
      *&v32[8] = 2048;
      *v33 = self;
      *&v33[8] = 1024;
      v34 = analyzerCopy;
      v35 = 1024;
      v36 = analyzerCopy;
      v37 = 2048;
      v38 = v21;
      v16 = " [%s] %s:%d %@(%p) enable=%d, didEnable=%d, moduleIDsEnabled=%ld";
      v17 = v20;
      v18 = 70;
    }

    _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
LABEL_27:
    LOBYTE(v9) = 1;
    goto LABEL_28;
  }

  v9 = [(VCAudioMachineLearningCoordinator *)self toggleDelegateAudioStackEnabledIfNeeded:(self->_moduleIDsEnabled & 0xFFFFFFFD) != 0 withError:&v23];
  if (v9 && v23 == 0)
  {
    [(VCMediaAnalyzer *)self->_mediaAnalyzer stop];
    v10 = self->_moduleIDsEnabled & 0xFFFFFFFD;
    goto LABEL_16;
  }

LABEL_28:
  if (error)
  {
    *error = v23;
  }

  LOBYTE(analyzerCopy) = v9 && analyzerCopy;
  return analyzerCopy;
}

- (void)enableMediaAnalyzer:(BOOL)analyzer
{
  analyzerCopy = analyzer;
  v49 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 136315906;
    v35 = v6;
    v36 = 2080;
    v37 = "[VCAudioMachineLearningCoordinator enableMediaAnalyzer:]";
    v38 = 1024;
    v39 = 814;
    v40 = 1024;
    *v41 = analyzerCopy;
    v8 = " [%s] %s:%d enableMediaAnalyzer=%d";
    v9 = v7;
    v10 = 34;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [(VCAudioMachineLearningCoordinator *)self performSelector:sel_logPrefix];
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
      v35 = v11;
      v36 = 2080;
      v37 = "[VCAudioMachineLearningCoordinator enableMediaAnalyzer:]";
      v38 = 1024;
      v39 = 814;
      v40 = 2112;
      *v41 = v5;
      *&v41[8] = 2048;
      selfCopy2 = self;
      v43 = 1024;
      v44 = analyzerCopy;
      v8 = " [%s] %s:%d %@(%p) enableMediaAnalyzer=%d";
      v9 = v12;
      v10 = 54;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    }
  }

LABEL_12:
  os_unfair_lock_lock(&self->_stateLock);
  v33 = 0;
  if (analyzerCopy)
  {
    if ([(VCAudioMachineLearningCoordinator *)self lockedEnableMediaAnalyzer:analyzerCopy withError:&v33])
    {
      v13 = 1;
      [(VCAudioMachineLearningCoordinator *)self processAudioControlEventEnable:1 moduleID:2];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    [(VCAudioMachineLearningCoordinator *)self processAudioControlEventEnable:0 moduleID:2];
    v13 = [(VCAudioMachineLearningCoordinator *)self lockedEnableMediaAnalyzer:analyzerCopy withError:&v33];
  }

  mediaAnalyzerSourceDelegate = [(VCAudioMachineLearningCoordinator *)self mediaAnalyzerSourceDelegate];
  currentMediaAnalyzerStreamToken = self->_currentMediaAnalyzerStreamToken;
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__VCAudioMachineLearningCoordinator_enableMediaAnalyzer___block_invoke;
  block[3] = &unk_1E85F63A0;
  block[6] = currentMediaAnalyzerStreamToken;
  v32 = v13;
  block[4] = mediaAnalyzerSourceDelegate;
  block[5] = v33;
  dispatch_async(delegateQueue, block);
  os_unfair_lock_unlock(&self->_stateLock);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        moduleIDsEnabled = self->_moduleIDsEnabled;
        activeModuleIDs = self->_activeModuleIDs;
        delegateAudioStackStarted = self->_delegateAudioStackStarted;
        *buf = 136316418;
        v35 = v18;
        v36 = 2080;
        v37 = "[VCAudioMachineLearningCoordinator enableMediaAnalyzer:]";
        v38 = 1024;
        v39 = 830;
        v40 = 1024;
        *v41 = moduleIDsEnabled;
        *&v41[4] = 1024;
        *&v41[6] = activeModuleIDs;
        LOWORD(selfCopy2) = 1024;
        *(&selfCopy2 + 2) = delegateAudioStackStarted;
        v23 = " [%s] %s:%d moduleIDsEnabled=%d, audioProcessingEnabled=%d, delegateAudioStackStarted=%{BOOL}d";
        v24 = v19;
        v25 = 46;
LABEL_27:
        _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [(VCAudioMachineLearningCoordinator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v17 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v28 = self->_moduleIDsEnabled;
        v29 = self->_activeModuleIDs;
        v30 = self->_delegateAudioStackStarted;
        *buf = 136316930;
        v35 = v26;
        v36 = 2080;
        v37 = "[VCAudioMachineLearningCoordinator enableMediaAnalyzer:]";
        v38 = 1024;
        v39 = 830;
        v40 = 2112;
        *v41 = v17;
        *&v41[8] = 2048;
        selfCopy2 = self;
        v43 = 1024;
        v44 = v28;
        v45 = 1024;
        v46 = v29;
        v47 = 1024;
        v48 = v30;
        v23 = " [%s] %s:%d %@(%p) moduleIDsEnabled=%d, audioProcessingEnabled=%d, delegateAudioStackStarted=%{BOOL}d";
        v24 = v27;
        v25 = 66;
        goto LABEL_27;
      }
    }
  }
}

- (void)didConfigureCaptionsWithError:(id)error
{
  v7[6] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_invalidated)
  {

    os_unfair_lock_unlock(&self->_stateLock);
  }

  else
  {
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x3052000000;
    v7[3] = __Block_byref_object_copy__4;
    v7[4] = __Block_byref_object_dispose__4;
    v7[5] = [(NSArray *)[(VCAudioCaptionsBufferInfoCollection *)self->_bufferInfos streamTokens] copy];
    os_unfair_lock_unlock(&self->_stateLock);
    delegateQueue = self->_delegateQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __67__VCAudioMachineLearningCoordinator_didConfigureCaptionsWithError___block_invoke;
    v6[3] = &unk_1E85F3E08;
    v6[5] = error;
    v6[6] = v7;
    v6[4] = self;
    dispatch_async(delegateQueue, v6);
    _Block_object_dispose(v7, 8);
  }
}

void __67__VCAudioMachineLearningCoordinator_didConfigureCaptionsWithError___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v33;
    *&v4 = 136315906;
    v18 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        if (objc_opt_class() == *(a1 + 32))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v16 = VRTraceErrorLogLevelToCSTR();
            v17 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = v18;
              v20 = v16;
              v21 = 2080;
              v22 = "[VCAudioMachineLearningCoordinator didConfigureCaptionsWithError:]_block_invoke";
              v23 = 1024;
              v24 = 846;
              v25 = 2112;
              v26 = v8;
              v13 = v17;
              v14 = " [%s] %s:%d Configured captions for token=%@";
              v15 = 38;
              goto LABEL_15;
            }
          }
        }

        else
        {
          v9 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v9 = [*(a1 + 32) performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v10 = VRTraceErrorLogLevelToCSTR();
            v11 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v12 = *(a1 + 32);
              *buf = 136316418;
              v20 = v10;
              v21 = 2080;
              v22 = "[VCAudioMachineLearningCoordinator didConfigureCaptionsWithError:]_block_invoke";
              v23 = 1024;
              v24 = 846;
              v25 = 2112;
              v26 = v9;
              v27 = 2048;
              v28 = v12;
              v29 = 2112;
              v30 = v8;
              v13 = v11;
              v14 = " [%s] %s:%d %@(%p) Configured captions for token=%@";
              v15 = 58;
LABEL_15:
              _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, v15);
            }
          }
        }

        [objc_msgSend(*(a1 + 32) captionsDelegate];
      }

      v5 = [v2 countByEnumeratingWithState:&v32 objects:v31 count:16];
    }

    while (v5);
  }
}

- (void)didDisableCaptions:(BOOL)captions error:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_invalidated)
  {

    os_unfair_lock_unlock(&self->_stateLock);
  }

  else
  {
    [(VCObject *)self reportingAgent];
    reportingGenericEvent();
    v11 = 0;
    v12 = &v11;
    v13 = 0x3052000000;
    v14 = __Block_byref_object_copy__4;
    v15 = __Block_byref_object_dispose__4;
    v16 = 0;
    v7 = [(NSArray *)[(VCAudioCaptionsBufferInfoCollection *)self->_bufferInfos streamTokens] copy];
    v12[5] = v7;
    [(VCCaptionsGibberishDetector *)self->_gibberishDetector reset];
    os_unfair_lock_unlock(&self->_stateLock);
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__VCAudioMachineLearningCoordinator_didDisableCaptions_error___block_invoke;
    block[3] = &unk_1E85F63C8;
    block[5] = error;
    block[6] = &v11;
    captionsCopy = captions;
    block[4] = self;
    dispatch_async(delegateQueue, block);
    _Block_object_dispose(&v11, 8);
  }
}

void __62__VCAudioMachineLearningCoordinator_didDisableCaptions_error___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = *(*(*(a1 + 48) + 8) + 40);
  v2 = [obj countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v33;
    *&v3 = 136315906;
    v17 = v3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v33 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        if (objc_opt_class() == *(a1 + 32))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v15 = VRTraceErrorLogLevelToCSTR();
            v16 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = v17;
              v20 = v15;
              v21 = 2080;
              v22 = "[VCAudioMachineLearningCoordinator didDisableCaptions:error:]_block_invoke";
              v23 = 1024;
              v24 = 866;
              v25 = 2112;
              v26 = v7;
              v12 = v16;
              v13 = " [%s] %s:%d Disabled captioning for token=%@";
              v14 = 38;
              goto LABEL_15;
            }
          }
        }

        else
        {
          v8 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v8 = [*(a1 + 32) performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v9 = VRTraceErrorLogLevelToCSTR();
            v10 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v11 = *(a1 + 32);
              *buf = 136316418;
              v20 = v9;
              v21 = 2080;
              v22 = "[VCAudioMachineLearningCoordinator didDisableCaptions:error:]_block_invoke";
              v23 = 1024;
              v24 = 866;
              v25 = 2112;
              v26 = v8;
              v27 = 2048;
              v28 = v11;
              v29 = 2112;
              v30 = v7;
              v12 = v10;
              v13 = " [%s] %s:%d %@(%p) Disabled captioning for token=%@";
              v14 = 58;
LABEL_15:
              _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, v14);
            }
          }
        }

        [*(*(a1 + 32) + 168) streamToken:-[__CFString unsignedIntValue](v7 didDisableCaptions:"unsignedIntValue" error:{v17), *(a1 + 56), *(a1 + 40)}];
      }

      v4 = [obj countByEnumeratingWithState:&v32 objects:v31 count:16];
    }

    while (v4);
  }
}

- (void)didEnableCaptions:(BOOL)captions error:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_invalidated)
  {

    os_unfair_lock_unlock(&self->_stateLock);
  }

  else
  {
    [(VCObject *)self reportingAgent];
    reportingGenericEvent();
    v11 = 0;
    v12 = &v11;
    v13 = 0x3052000000;
    v14 = __Block_byref_object_copy__4;
    v15 = __Block_byref_object_dispose__4;
    v16 = 0;
    v7 = [(NSArray *)[(VCAudioCaptionsBufferInfoCollection *)self->_bufferInfos streamTokens] copy];
    v12[5] = v7;
    [(VCCaptionsGibberishDetector *)self->_gibberishDetector reset];
    os_unfair_lock_unlock(&self->_stateLock);
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__VCAudioMachineLearningCoordinator_didEnableCaptions_error___block_invoke;
    block[3] = &unk_1E85F63C8;
    block[5] = error;
    block[6] = &v11;
    captionsCopy = captions;
    block[4] = self;
    dispatch_async(delegateQueue, block);
    _Block_object_dispose(&v11, 8);
  }
}

void __61__VCAudioMachineLearningCoordinator_didEnableCaptions_error___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = *(*(*(a1 + 48) + 8) + 40);
  v2 = [obj countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v33;
    *&v3 = 136315906;
    v17 = v3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v33 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        if (objc_opt_class() == *(a1 + 32))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v15 = VRTraceErrorLogLevelToCSTR();
            v16 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = v17;
              v20 = v15;
              v21 = 2080;
              v22 = "[VCAudioMachineLearningCoordinator didEnableCaptions:error:]_block_invoke";
              v23 = 1024;
              v24 = 886;
              v25 = 2112;
              v26 = v7;
              v12 = v16;
              v13 = " [%s] %s:%d Enabled captioning for token=%@";
              v14 = 38;
              goto LABEL_15;
            }
          }
        }

        else
        {
          v8 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v8 = [*(a1 + 32) performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v9 = VRTraceErrorLogLevelToCSTR();
            v10 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v11 = *(a1 + 32);
              *buf = 136316418;
              v20 = v9;
              v21 = 2080;
              v22 = "[VCAudioMachineLearningCoordinator didEnableCaptions:error:]_block_invoke";
              v23 = 1024;
              v24 = 886;
              v25 = 2112;
              v26 = v8;
              v27 = 2048;
              v28 = v11;
              v29 = 2112;
              v30 = v7;
              v12 = v10;
              v13 = " [%s] %s:%d %@(%p) Enabled captioning for token=%@";
              v14 = 58;
LABEL_15:
              _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, v14);
            }
          }
        }

        [*(*(a1 + 32) + 168) streamToken:-[__CFString unsignedIntValue](v7 didEnableCaptions:"unsignedIntValue" error:{v17), *(a1 + 56), *(a1 + 40)}];
      }

      v4 = [obj countByEnumeratingWithState:&v32 objects:v31 count:16];
    }

    while (v4);
  }
}

- (void)didStartCaptioningWithReason:(unsigned __int8)reason streamToken:(int64_t)token
{
  v31 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  invalidated = self->_invalidated;
  os_unfair_lock_unlock(&self->_stateLock);
  if (!invalidated)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 136315906;
      v20 = v9;
      v21 = 2080;
      v22 = "[VCAudioMachineLearningCoordinator didStartCaptioningWithReason:streamToken:]";
      v23 = 1024;
      v24 = 900;
      v25 = 2048;
      tokenCopy = token;
      v11 = " [%s] %s:%d Started captioning for token=%ld";
      v12 = v10;
      v13 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCAudioMachineLearningCoordinator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
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

      *buf = 136316418;
      v20 = v14;
      v21 = 2080;
      v22 = "[VCAudioMachineLearningCoordinator didStartCaptioningWithReason:streamToken:]";
      v23 = 1024;
      v24 = 900;
      v25 = 2112;
      tokenCopy = v8;
      v27 = 2048;
      selfCopy = self;
      v29 = 2048;
      tokenCopy2 = token;
      v11 = " [%s] %s:%d %@(%p) Started captioning for token=%ld";
      v12 = v15;
      v13 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_13:
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__VCAudioMachineLearningCoordinator_didStartCaptioningWithReason_streamToken___block_invoke;
    block[3] = &unk_1E85F4180;
    block[4] = self;
    block[5] = token;
    reasonCopy = reason;
    dispatch_async(delegateQueue, block);
  }
}

- (void)didStopCaptioningWithReason:(unsigned __int8)reason streamToken:(int64_t)token
{
  v31 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  invalidated = self->_invalidated;
  os_unfair_lock_unlock(&self->_stateLock);
  if (!invalidated)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 136315906;
      v20 = v9;
      v21 = 2080;
      v22 = "[VCAudioMachineLearningCoordinator didStopCaptioningWithReason:streamToken:]";
      v23 = 1024;
      v24 = 913;
      v25 = 2048;
      tokenCopy = token;
      v11 = " [%s] %s:%d Stopped captioning for token=%ld";
      v12 = v10;
      v13 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCAudioMachineLearningCoordinator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
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

      *buf = 136316418;
      v20 = v14;
      v21 = 2080;
      v22 = "[VCAudioMachineLearningCoordinator didStopCaptioningWithReason:streamToken:]";
      v23 = 1024;
      v24 = 913;
      v25 = 2112;
      tokenCopy = v8;
      v27 = 2048;
      selfCopy = self;
      v29 = 2048;
      tokenCopy2 = token;
      v11 = " [%s] %s:%d %@(%p) Stopped captioning for token=%ld";
      v12 = v15;
      v13 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_13:
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__VCAudioMachineLearningCoordinator_didStopCaptioningWithReason_streamToken___block_invoke;
    block[3] = &unk_1E85F4180;
    block[4] = self;
    block[5] = token;
    reasonCopy = reason;
    dispatch_async(delegateQueue, block);
  }
}

- (void)didUpdateCaptions:(id)captions
{
  v32 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  invalidated = self->_invalidated;
  os_unfair_lock_unlock(&self->_stateLock);
  if (!invalidated)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 136315906;
      v21 = v7;
      v22 = 2080;
      v23 = "[VCAudioMachineLearningCoordinator didUpdateCaptions:]";
      v24 = 1024;
      v25 = 926;
      v26 = 2048;
      streamToken = [captions streamToken];
      v9 = " [%s] %s:%d Got transcription for token=%ld";
      v10 = v8;
      v11 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCAudioMachineLearningCoordinator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 136316418;
      v21 = v12;
      v22 = 2080;
      v23 = "[VCAudioMachineLearningCoordinator didUpdateCaptions:]";
      v24 = 1024;
      v25 = 926;
      v26 = 2112;
      streamToken = v6;
      v28 = 2048;
      selfCopy = self;
      v30 = 2048;
      streamToken2 = [captions streamToken];
      v9 = " [%s] %s:%d %@(%p) Got transcription for token=%ld";
      v10 = v13;
      v11 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_13:
    v14 = [(VCCaptionsGibberishDetector *)self->_gibberishDetector processTranscript:captions];
    v15 = -[VCCaptionsGibberishDetector gibberishStateForCaptionsToken:](self->_gibberishDetector, "gibberishStateForCaptionsToken:", [captions streamToken]);
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__VCAudioMachineLearningCoordinator_didUpdateCaptions___block_invoke;
    block[3] = &unk_1E85F63F0;
    v18 = v14;
    block[4] = self;
    block[5] = captions;
    v19 = v15;
    dispatch_async(delegateQueue, block);
  }
}

uint64_t __55__VCAudioMachineLearningCoordinator_didUpdateCaptions___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    [*(*(a1 + 32) + 168) streamToken:objc_msgSend(*(a1 + 40) didDetectGibberish:{"streamToken"), *(a1 + 49)}];
  }

  v2 = *(*(a1 + 32) + 168);
  v3 = [*(a1 + 40) streamToken];
  v4 = *(a1 + 40);

  return [v2 streamToken:v3 didUpdateCaptions:v4];
}

- (void)captions:(id)captions didProduceLanguageHypothesis:(id)hypothesis streamToken:(int64_t)token
{
  v10[7] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  invalidated = self->_invalidated;
  os_unfair_lock_unlock(&self->_stateLock);
  if (!invalidated)
  {
    delegateQueue = self->_delegateQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __87__VCAudioMachineLearningCoordinator_captions_didProduceLanguageHypothesis_streamToken___block_invoke;
    v10[3] = &unk_1E85F50D8;
    v10[5] = hypothesis;
    v10[6] = token;
    v10[4] = self;
    dispatch_async(delegateQueue, v10);
  }
}

- (void)captions:(id)captions didStopLanguageDetectorWithError:(id)error streamToken:(int64_t)token
{
  v10[7] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  invalidated = self->_invalidated;
  os_unfair_lock_unlock(&self->_stateLock);
  if (!invalidated)
  {
    delegateQueue = self->_delegateQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __91__VCAudioMachineLearningCoordinator_captions_didStopLanguageDetectorWithError_streamToken___block_invoke;
    v10[3] = &unk_1E85F50D8;
    v10[5] = error;
    v10[6] = token;
    v10[4] = self;
    dispatch_async(delegateQueue, v10);
  }
}

- (void)captions:(id)captions didChangeSourceLocale:(id)locale
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_invalidated)
  {

    os_unfair_lock_unlock(&self->_stateLock);
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3052000000;
    v12 = __Block_byref_object_copy__4;
    v13 = __Block_byref_object_dispose__4;
    v14 = 0;
    v6 = [(NSArray *)[(VCAudioCaptionsBufferInfoCollection *)self->_bufferInfos streamTokens] copy];
    v10[5] = v6;
    os_unfair_lock_unlock(&self->_stateLock);
    delegateQueue = self->_delegateQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__VCAudioMachineLearningCoordinator_captions_didChangeSourceLocale___block_invoke;
    v8[3] = &unk_1E85F3E08;
    v8[5] = locale;
    v8[6] = &v9;
    v8[4] = self;
    dispatch_async(delegateQueue, v8);
    _Block_object_dispose(&v9, 8);
  }
}

void __68__VCAudioMachineLearningCoordinator_captions_didChangeSourceLocale___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = *(*(*(a1 + 48) + 8) + 40);
  v2 = [obj countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v33;
    *&v3 = 136315906;
    v17 = v3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v33 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        if (objc_opt_class() == *(a1 + 32))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v15 = VRTraceErrorLogLevelToCSTR();
            v16 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = v17;
              v20 = v15;
              v21 = 2080;
              v22 = "[VCAudioMachineLearningCoordinator captions:didChangeSourceLocale:]_block_invoke";
              v23 = 1024;
              v24 = 972;
              v25 = 2112;
              v26 = v7;
              v12 = v16;
              v13 = " [%s] %s:%d Changed captioning source locale for token=%@";
              v14 = 38;
              goto LABEL_15;
            }
          }
        }

        else
        {
          v8 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v8 = [*(a1 + 32) performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v9 = VRTraceErrorLogLevelToCSTR();
            v10 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v11 = *(a1 + 32);
              *buf = 136316418;
              v20 = v9;
              v21 = 2080;
              v22 = "[VCAudioMachineLearningCoordinator captions:didChangeSourceLocale:]_block_invoke";
              v23 = 1024;
              v24 = 972;
              v25 = 2112;
              v26 = v8;
              v27 = 2048;
              v28 = v11;
              v29 = 2112;
              v30 = v7;
              v12 = v10;
              v13 = " [%s] %s:%d %@(%p) Changed captioning source locale for token=%@";
              v14 = 58;
LABEL_15:
              _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, v14);
            }
          }
        }

        [*(*(a1 + 32) + 168) streamToken:-[__CFString unsignedIntValue](v7 didChangeSourceLocale:{"unsignedIntValue", v17), *(a1 + 40)}];
      }

      v4 = [obj countByEnumeratingWithState:&v32 objects:v31 count:16];
    }

    while (v4);
  }
}

- (BOOL)setUpInternalStateForReporting:(unsigned __int8)reporting
{
  if (reporting == 2)
  {
    self->_configUsage = 2;
    self->_configCallSource = 1;
    return [(VCAudioMachineLearningCoordinator *)self setUpReportingAgent];
  }

  else
  {
    if (reporting)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    self->_configUsage = v4;
    self->_configCallSource = 0;
    return 1;
  }
}

void __56__VCAudioMachineLearningCoordinator_setUpReportingAgent__block_invoke(uint64_t a1, void *a2)
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
          __56__VCAudioMachineLearningCoordinator_setUpReportingAgent__block_invoke_cold_1();
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
          v11 = "[VCAudioMachineLearningCoordinator setUpReportingAgent]_block_invoke";
          v12 = 1024;
          v13 = 1027;
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
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"AMUUID";
  translatorIdentifier = self->_translatorIdentifier;
  if (translatorIdentifier)
  {
    uUIDString = [(NSUUID *)translatorIdentifier UUIDString];
  }

  else
  {
    uUIDString = &stru_1F570E008;
  }

  v6[0] = uUIDString;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
}

- (__CFDictionary)reportingInitialConfiguration
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"AMLCS";
  v5[0] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_configCallSource];
  v4[1] = @"AMLCU";
  v5[1] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_configUsage];
  v4[2] = @"AMLCDIR";
  v5[2] = [MEMORY[0x1E696AD98] numberWithInt:self->_direction];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

+ (id)errorCodeWithEvent:(unsigned int)event errorPath:(id)path
{
  if (event == 1)
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = @"Failed to enable captions";
    v7 = @"Invalid audio captions translator mode or identifier";
    v8 = 1;
    return [v5 AVConferenceServiceError:32000 detailedCode:v8 returnCode:0 filePath:path description:v6 reason:v7];
  }

  if (!event)
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = @"Failed to prewarm or enable the captions client";
    v7 = @"The coordinator was invalidated";
    v8 = 0;
    return [v5 AVConferenceServiceError:32000 detailedCode:v8 returnCode:0 filePath:path description:v6 reason:v7];
  }

  return 0;
}

intptr_t ___VCAudioMachineLearningCoordinator_StartCaptioning_block_invoke(uint64_t a1, int a2)
{
  v2 = a2;
  v19 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    _VCAudioMachineLearningCoordinator_PushAudioSamplesToRecognizer(*(a1 + 32), *(a1 + 40));
  }

  else if (objc_opt_class() == *(a1 + 48))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ___VCAudioMachineLearningCoordinator_StartCaptioning_block_invoke_cold_1();
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [*(a1 + 48) performSelector:sel_logPrefix];
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
        v8 = *(a1 + 48);
        v9 = 136316162;
        v10 = v5;
        v11 = 2080;
        v12 = "_VCAudioMachineLearningCoordinator_StartCaptioning_block_invoke";
        v13 = 1024;
        v14 = 1109;
        v15 = 2112;
        v16 = v4;
        v17 = 2048;
        v18 = v8;
        _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Tried to start captions but failed.", &v9, 0x30u);
      }
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = v2;
  return dispatch_semaphore_signal(*(*(a1 + 48) + 240));
}

intptr_t ___VCAudioMachineLearningCoordinator_StopCaptioning_block_invoke(uint64_t a1, char a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          ___VCAudioMachineLearningCoordinator_StopCaptioning_block_invoke_cold_1();
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
          v8 = *(a1 + 32);
          v9 = 136316162;
          v10 = v5;
          v11 = 2080;
          v12 = "_VCAudioMachineLearningCoordinator_StopCaptioning_block_invoke";
          v13 = 1024;
          v14 = 1127;
          v15 = 2112;
          v16 = v4;
          v17 = 2048;
          v18 = v8;
          _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Tried to stop captions but failed.", &v9, 0x30u);
        }
      }
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  return dispatch_semaphore_signal(*(*(a1 + 32) + 240));
}

- (void)setUpForTranslatorMode:(unsigned __int8)mode
{
  modeCopy = mode;
  v59 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_stateLock);
  v5 = objc_opt_class();
  if (modeCopy == 2)
  {
    if (v5 == self)
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

      OUTLINED_FUNCTION_1_0();
      *&v47[12] = v38;
      *&v47[14] = "[VCAudioMachineLearningCoordinator setUpForTranslatorMode:]";
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_21();
      *v50 = 2;
      OUTLINED_FUNCTION_40_5();
    }

    else
    {
      OUTLINED_FUNCTION_31_5();
      if (objc_opt_respondsToSelector())
      {
        [(VCAudioMachineLearningCoordinator *)self performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_31())
      {
        return;
      }

      OUTLINED_FUNCTION_8();
      *&v47[12] = v45;
      *&v47[14] = "[VCAudioMachineLearningCoordinator setUpForTranslatorMode:]";
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_8_15();
      *&v50[10] = self;
      *&v50[18] = v46;
      *&v50[20] = 2;
      OUTLINED_FUNCTION_5_5();
    }

    _os_log_error_impl(v39, v40, v41, v42, v43, v44);
    return;
  }

  v6 = MEMORY[0x1E6986650];
  if (v5 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_39())
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_10();
    *&v47[12] = v7;
    *&v47[14] = "[VCAudioMachineLearningCoordinator setUpForTranslatorMode:]";
    OUTLINED_FUNCTION_4_2();
    OUTLINED_FUNCTION_21();
    *v50 = modeCopy;
    OUTLINED_FUNCTION_23();
    v13 = 34;
  }

  else
  {
    OUTLINED_FUNCTION_31_5();
    if (objc_opt_respondsToSelector())
    {
      [(VCAudioMachineLearningCoordinator *)self performSelector:sel_logPrefix];
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *v6;
    if (!os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *v47 = 136316418;
    *&v47[4] = v14;
    OUTLINED_FUNCTION_10_10();
    OUTLINED_FUNCTION_8_15();
    *&v50[10] = self;
    *&v50[18] = v16;
    *&v50[20] = modeCopy;
    v8 = &dword_1DB56E000;
    v11 = " [%s] %s:%d %@(%p) Set up for requested translatorMode=%d";
    v12 = v47;
    v9 = v15;
    v10 = OS_LOG_TYPE_DEFAULT;
    v13 = 54;
  }

  _os_log_impl(v8, v9, v10, v11, v12, v13);
LABEL_12:
  [(VCAudioMachineLearningCoordinator *)self setUpInternalStateForReporting:modeCopy, *v47, *&v47[16]];
  if (modeCopy == 1)
  {
    self->_translatorMode = 1;
    if (![(VCAudioMachineLearningCoordinator *)self setUpAudioCaptionsUsingFrameworkType:3])
    {
      return;
    }

    [(VCAudioCaptions *)self->_audioCaptions setLocale:self->_locale];
    [(VCAudioCaptions *)self->_audioCaptions setSourceLocale:self->_sourceLocale];
    [(VCAudioCaptions *)self->_audioCaptions setTranslatorMode:1];

    self->_translatorIdentifier = [(NSUUID *)[(VCAudioCaptions *)self->_audioCaptions translatorIdentifier] copy];
  }

  else if (!modeCopy)
  {
    self->_translatorMode = 0;
    if (self->_isV2SpeechAPIEnabled)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    if (![(VCAudioMachineLearningCoordinator *)self setUpAudioCaptionsUsingFrameworkType:v17])
    {
      return;
    }

    [(VCAudioCaptions *)self->_audioCaptions setEnableV2SpeechAPI:self->_isV2SpeechAPIEnabled];
    [(VCAudioCaptions *)self->_audioCaptions setLocale:self->_locale];
    [(VCAudioCaptions *)self->_audioCaptions setSourceLocale:self->_sourceLocale];
    [(VCAudioCaptions *)self->_audioCaptions setTranslatorMode:0];

    self->_translatorIdentifier = 0;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_35())
      {
        translatorMode = self->_translatorMode;
        streamToken = [(VCAudioCaptions *)self->_audioCaptions streamToken];
        localeIdentifier = [(NSLocale *)[(VCAudioCaptions *)self->_audioCaptions sourceLocale] localeIdentifier];
        localeIdentifier2 = [(NSLocale *)[(VCAudioCaptions *)self->_audioCaptions locale] localeIdentifier];
        [(VCAudioCaptions *)self->_audioCaptions translatorMode];
        OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_10_10();
        OUTLINED_FUNCTION_21();
        *v50 = translatorMode;
        *&v50[4] = 2048;
        *&v50[6] = streamToken;
        *&v50[14] = 2112;
        *&v50[16] = localeIdentifier;
        v51 = 2112;
        v52 = localeIdentifier2;
        v53 = v23;
        LODWORD(v54) = v24;
        OUTLINED_FUNCTION_16();
        v30 = 70;
LABEL_31:
        _os_log_impl(v25, v26, v27, v28, v29, v30);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_28_0())
    {
      v18 = [OUTLINED_FUNCTION_18_0() performSelector:?];
    }

    else
    {
      v18 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_35())
      {
        v31 = self->_translatorMode;
        streamToken2 = [(VCAudioCaptions *)self->_audioCaptions streamToken];
        localeIdentifier3 = [(NSLocale *)[(VCAudioCaptions *)self->_audioCaptions sourceLocale] localeIdentifier];
        localeIdentifier4 = [(NSLocale *)[(VCAudioCaptions *)self->_audioCaptions locale] localeIdentifier];
        [(VCAudioCaptions *)self->_audioCaptions translatorMode];
        OUTLINED_FUNCTION_10();
        *&v47[12] = v35;
        *&v47[14] = "[VCAudioMachineLearningCoordinator setUpForTranslatorMode:]";
        OUTLINED_FUNCTION_4_2();
        v48 = 549;
        v49 = 2112;
        *v50 = v18;
        *&v50[8] = 2048;
        *&v50[10] = self;
        *&v50[18] = v36;
        *&v50[20] = v31;
        v51 = 2048;
        v52 = streamToken2;
        v53 = 2112;
        v54 = localeIdentifier3;
        v55 = 2112;
        v56 = localeIdentifier4;
        v57 = v36;
        v58 = v37;
        OUTLINED_FUNCTION_16();
        v30 = 90;
        goto LABEL_31;
      }
    }
  }
}

- (void)mediaAnalyzer:(id)analyzer didProduceMediaAnalysis:(id)analysis streamToken:(int64_t)token
{
  v10[7] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  if (!self->_invalidated)
  {
    mediaAnalyzerSourceDelegate = [(VCAudioMachineLearningCoordinator *)self mediaAnalyzerSourceDelegate];
    delegateQueue = self->_delegateQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __87__VCAudioMachineLearningCoordinator_mediaAnalyzer_didProduceMediaAnalysis_streamToken___block_invoke;
    v10[3] = &unk_1E85F50D8;
    v10[5] = analysis;
    v10[6] = token;
    v10[4] = mediaAnalyzerSourceDelegate;
    dispatch_async(delegateQueue, v10);
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (BOOL)setUpReportingAgent
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_isOwnerOfReportingAgent || [(VCObject *)self reportingAgent])
  {
    LOBYTE(v17) = 1;
    return v17;
  }

  v3 = objc_opt_class();
  v4 = MEMORY[0x1E6986650];
  if (v3 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *v4;
      if (OUTLINED_FUNCTION_35())
      {
        *buf = 136315650;
        *v27 = v6;
        OUTLINED_FUNCTION_20_3();
        v28 = 1012;
        v8 = " [%s] %s:%d Set up reporting agent for VCReportingClientTypeSharedTranslator";
        v9 = v7;
        v10 = 28;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_28_0())
    {
      v5 = [OUTLINED_FUNCTION_18_0() performSelector:?];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *v4;
      if (OUTLINED_FUNCTION_39())
      {
        *buf = 136316162;
        *v27 = v11;
        OUTLINED_FUNCTION_20_3();
        v28 = 1012;
        LOWORD(v29[0]) = 2112;
        *(v29 + 2) = v5;
        WORD5(v29[0]) = 2048;
        *(v29 + 12) = self;
        v8 = " [%s] %s:%d %@(%p) Set up reporting agent for VCReportingClientTypeSharedTranslator";
        v9 = v12;
        v10 = 48;
        goto LABEL_13;
      }
    }
  }

  initialStreamToken = self->_initialStreamToken;
  uUIDString = [(NSUUID *)self->_reportingSamplingUUID UUIDString];
  *buf = initialStreamToken;
  v27[0] = 0;
  *&v27[1] = uUIDString;
  *&v27[3] = 0;
  v28 = 27;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  Agent = reportingCreateAgent();
  if (Agent)
  {
    v16 = Agent;
    [OUTLINED_FUNCTION_18_0() setReportingAgent:?];
    CFRelease(v16);
    [(VCObject *)self reportingAgent];
    self->_reportingModuleID = VCReporting_GetDynamicReportingModuleID();
    [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
    [(VCObject *)self reportingAgent];
    [(VCAudioMachineLearningCoordinator *)self clientSpecificUserInfo];
    reportingSetUserInfo();
    [(VCObject *)self reportingAgent];
    reportingRecordingAndTranscriptionServiceUsage();
    [(VCObject *)self reportingAgent];
    reportingStartTimer();
    [(VCAudioMachineLearningCoordinator *)self reportingInitialConfiguration];
    reportingGenericEvent();
    LOBYTE(v17) = 1;
    self->_isOwnerOfReportingAgent = 1;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v17 = OUTLINED_FUNCTION_34();
      if (!v17)
      {
        return v17;
      }

      *buf = 136315650;
      *v27 = v18;
      OUTLINED_FUNCTION_20_3();
      v28 = 1019;
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v19, v20, v21, v22, v23, v24);
    }

    LOBYTE(v17) = 0;
  }

  return v17;
}

- (void)initWithConfiguration:(uint64_t)a1 delegate:.cold.1(uint64_t a1)
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

    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_24_0();
    OUTLINED_FUNCTION_40_5();
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
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_5_5();
      goto LABEL_11;
    }
  }
}

- (void)initWithConfiguration:(uint64_t)a1 delegate:.cold.2(uint64_t a1)
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

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_4_2();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_24_0();
    OUTLINED_FUNCTION_40_5();
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
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_8_15();
      OUTLINED_FUNCTION_5_5();
      goto LABEL_11;
    }
  }
}

- (void)initWithConfiguration:(uint64_t)a1 delegate:.cold.3(uint64_t a1)
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
    [OUTLINED_FUNCTION_18_0() performSelector:?];
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

- (void)initWithConfiguration:(uint64_t)a1 delegate:.cold.4(uint64_t a1)
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
    [OUTLINED_FUNCTION_18_0() performSelector:?];
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

- (void)initWithConfiguration:(uint64_t)a1 delegate:.cold.5(uint64_t a1)
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
    [OUTLINED_FUNCTION_18_0() performSelector:?];
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

- (void)initWithConfiguration:(uint64_t)a1 delegate:.cold.6(uint64_t a1)
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
    [OUTLINED_FUNCTION_18_0() performSelector:?];
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

- (void)initWithConfiguration:(uint64_t)a1 delegate:.cold.7(uint64_t a1)
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
    [OUTLINED_FUNCTION_18_0() performSelector:?];
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

- (void)initWithConfiguration:(uint64_t)a1 delegate:.cold.8(uint64_t a1)
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
    [OUTLINED_FUNCTION_18_0() performSelector:?];
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

- (void)initWithConfiguration:(uint64_t)a1 delegate:.cold.9(uint64_t a1)
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
    [OUTLINED_FUNCTION_18_0() performSelector:?];
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

- (void)initWithConfiguration:(uint64_t)a1 delegate:.cold.10(uint64_t a1)
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
    [OUTLINED_FUNCTION_18_0() performSelector:?];
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

- (void)processAudioControlEventEnable:(uint64_t)a1 moduleID:.cold.1(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_35())
      {
        OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_16();
        v6 = 40;
LABEL_10:
        _os_log_impl(v1, v2, v3, v4, v5, v6);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_28_0())
    {
      [OUTLINED_FUNCTION_18_0() performSelector:?];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_39())
      {
        OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_25_3();
        OUTLINED_FUNCTION_23();
        v6 = 60;
        goto LABEL_10;
      }
    }
  }
}

- (void)processAudioControlEventEnable:(uint64_t)a1 moduleID:.cold.2(uint64_t a1)
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
    [OUTLINED_FUNCTION_18_0() performSelector:?];
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

- (void)processAudioControlEventEnable:(uint64_t)a1 moduleID:.cold.3(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_35())
      {
        OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_16();
        v6 = 40;
LABEL_10:
        _os_log_impl(v1, v2, v3, v4, v5, v6);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_28_0())
    {
      [OUTLINED_FUNCTION_18_0() performSelector:?];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_39())
      {
        OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_25_3();
        OUTLINED_FUNCTION_23();
        v6 = 60;
        goto LABEL_10;
      }
    }
  }
}

- (void)processAudioControlEventEnable:(uint64_t)a1 moduleID:.cold.4(uint64_t a1)
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
    [OUTLINED_FUNCTION_18_0() performSelector:?];
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

- (void)processAudioControlEventEnable:(uint64_t)a1 moduleID:(void *)a2 .cold.5(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() > 4)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_35())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        v10[6] = 382;
        OUTLINED_FUNCTION_16();
        v8 = 28;
LABEL_10:
        _os_log_impl(v3, v4, v5, v6, v7, v8);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_38_0())
    {
      OUTLINED_FUNCTION_37_0();
    }

    if (VRTraceGetErrorLogLevelForModule() > 4)
    {
      VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_4();
        v3 = &dword_1DB56E000;
        v6 = " [%s] %s:%d %@(%p) VCAudioMachineLearningCoordinatorAudioProcessingControlEvent is nil";
        v7 = v10;
        v4 = v9;
        v5 = OS_LOG_TYPE_DEFAULT;
        v8 = 48;
        goto LABEL_10;
      }
    }
  }

  *a2 = 0;
}

- (void)registerStreamWithConfig:(uint64_t)a1 .cold.1(uint64_t a1, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
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

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    v10[6] = 411;
    OUTLINED_FUNCTION_24_0();
    OUTLINED_FUNCTION_16_0();
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
    v9 = *MEMORY[0x1E6986650];
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      v3 = &dword_1DB56E000;
      v6 = " [%s] %s:%d %@(%p) Audio captions stream config should not be nil";
      v7 = v10;
      v4 = v9;
      v5 = OS_LOG_TYPE_ERROR;
      v8 = 48;
      goto LABEL_11;
    }
  }

LABEL_9:
  *a2 = 0;
}

- (void)setUpAudioCaptionsUsingFrameworkType:(uint64_t)a1 .cold.1(uint64_t a1)
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

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_4_2();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_24_0();
    OUTLINED_FUNCTION_40_5();
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
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_8_15();
      OUTLINED_FUNCTION_5_5();
      goto LABEL_11;
    }
  }
}

- (void)lockedEnableCaptions:withError:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __56__VCAudioMachineLearningCoordinator_setUpReportingAgent__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void ___VCAudioMachineLearningCoordinator_StartCaptioning_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void ___VCAudioMachineLearningCoordinator_StopCaptioning_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

@end