@interface VCAudioCaptions
+ (BOOL)captionsSupportedWithErrorCode:(int64_t *)code;
+ (BOOL)isTaskHintSupported:(unsigned __int8)supported withReturnCode:(int64_t *)code;
+ (int64_t)speechRecognitionTaskHintFromCaptionsTaskHint:(unsigned __int8)hint;
- (BOOL)captionsDebugDumpEnabled;
- (BOOL)createAudioConverterWithInputFormat:(const AudioStreamBasicDescription *)format outputFormat:(const AudioStreamBasicDescription *)outputFormat converter:(OpaqueAudioConverter *)converter;
- (BOOL)enableV2SpeechAPI;
- (BOOL)enabled;
- (BOOL)handleStateLoadedError:(id *)error;
- (BOOL)idleStateToState:(int)state withReason:(unsigned __int8)reason error:(id *)error;
- (BOOL)isExplicitLanguageFilterEnabled;
- (BOOL)isFormatForNewLinesEnabled;
- (BOOL)isTaskHintSetWithReturnCode:(int64_t *)code;
- (BOOL)loadedStateToState:(int)state withReason:(unsigned __int8)reason error:(id *)error;
- (BOOL)reallocCopyBufferAllocatorWithFormat:(const AudioStreamBasicDescription *)format;
- (BOOL)runningStateToState:(int)state withReason:(unsigned __int8)reason error:(id *)error;
- (BOOL)shouldEnableCaptions;
- (BOOL)shouldSetLocale:(id)locale withError:(id *)error;
- (BOOL)shouldSetTaskHint:(unsigned __int8)hint withError:(id *)error;
- (BOOL)stoppingStateToState:(int)state withReason:(unsigned __int8)reason error:(id *)error;
- (BOOL)transitionToState:(int)state withReason:(unsigned __int8)reason error:(id *)error;
- (BOOL)updateAudioConverterForStreamDescription:(const AudioStreamBasicDescription *)description;
- (NSLocale)locale;
- (NSLocale)sourceLocale;
- (VCAudioCaptions)initWithDelegate:(id)delegate isLocal:(BOOL)local taskIdentifier:(id)identifier reportingAgent:(opaqueRTCReporting *)agent;
- (id)newPCMSampleBufferWithSamples:(char *)samples numSamples:(int)numSamples pcmFormat:(id)format;
- (id)taskInfoForTask:(id)task;
- (opaqueCMSampleBuffer)convertSamples:(char *)samples numSamples:(int)numSamples;
- (opaqueCMSampleBuffer)createSampleBufferWithFormat:(const AudioStreamBasicDescription *)format samples:(char *)samples numSamples:(int)numSamples;
- (unsigned)callType;
- (unsigned)taskHint;
- (unsigned)translatorMode;
- (void)applyOnIdleWithBlock:(id)block;
- (void)callCompletionHandler:(id)handler withResult:(BOOL)result;
- (void)dealloc;
- (void)dispatchedSetCallType:(unsigned __int8)type;
- (void)dispatchedSetExplicitLanguageFilterEnabled:(BOOL)enabled;
- (void)dispatchedSetFormatForNewLinesEnabled:(BOOL)enabled;
- (void)dispatchedSetLanguageDetectorEnabled:(BOOL)enabled;
- (void)dispatchedSetLanguageDetectorReportingFrequency:(id)frequency;
- (void)dispatchedSetLocale:(id)locale;
- (void)dispatchedSetTaskHint:(unsigned __int8)hint;
- (void)dumpCaptionsIfNeededForCaptionsTranscription:(id)transcription;
- (void)enableCaptions:(BOOL)captions;
- (void)gatherRealtimeStats:(__CFDictionary *)stats;
- (void)loadSpeechAssets;
- (void)prewarmCaptions;
- (void)pushAudioSamples:(opaqueVCAudioBufferList *)samples;
- (void)recordAudioSampleMetrics;
- (void)reportSourceLocale;
- (void)sendTranscriptionResult:(id)result taskInfo:(id)info;
- (void)setCallType:(unsigned __int8)type;
- (void)setEnableV2SpeechAPI:(BOOL)i;
- (void)setExplicitLanguageFilterEnabled:(BOOL)enabled;
- (void)setFormatForNewLinesEnabled:(BOOL)enabled;
- (void)setLanguageDetectorEnabled:(BOOL)enabled;
- (void)setLanguageDetectorReportingFrequency:(id)frequency;
- (void)setLocale:(id)locale;
- (void)setSourceLocale:(id)locale;
- (void)setTaskHint:(unsigned __int8)hint;
- (void)setTranslatorMode:(unsigned __int8)mode;
- (void)shouldEnableCaptions;
- (void)speechAnalyzer:(id)analyzer didProduceLanguageHypothesis:(id)hypothesis;
- (void)speechAnalyzer:(id)analyzer didStopLanguageDetectorWithError:(id)error;
- (void)start:(const AudioStreamBasicDescription *)start forToken:(int64_t)token withCompletionHandler:(id)handler;
- (void)stopWithCompletionHandler:(id)handler;
- (void)updateCaptionsUtteranceDuration;
- (void)updateConfig:(id)config;
@end

@implementation VCAudioCaptions

- (VCAudioCaptions)initWithDelegate:(id)delegate isLocal:(BOOL)local taskIdentifier:(id)identifier reportingAgent:(opaqueRTCReporting *)agent
{
  localCopy = local;
  v53 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioCaptions-init");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioCaptions initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
      *&buf[22] = 1024;
      *&buf[24] = 63;
      *&buf[28] = 2048;
      *&buf[30] = self;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioCaptions-init instance=%p", buf, 0x26u);
    }
  }

  v44.receiver = self;
  v44.super_class = VCAudioCaptions;
  v13 = [(VCObject *)&v44 init];
  v14 = v13;
  if (v13)
  {
    if (!delegate)
    {
      [VCAudioCaptions initWithDelegate:v13 isLocal:? taskIdentifier:? reportingAgent:?];
LABEL_39:
      if (objc_opt_class() == v14)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCAudioCaptions initWithDelegate:isLocal:taskIdentifier:reportingAgent:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v41 = [(VCAudioCaptions *)v14 performSelector:sel_logPrefix];
        }

        else
        {
          v41 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v42 = VRTraceErrorLogLevelToCSTR();
          v43 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            *&buf[4] = v42;
            *&buf[12] = 2080;
            *&buf[14] = "[VCAudioCaptions initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
            *&buf[22] = 1024;
            *&buf[24] = 115;
            *&buf[28] = 2112;
            *&buf[30] = v41;
            *&buf[38] = 2048;
            *&buf[40] = v14;
            _os_log_error_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) VCAudioCaptions-init FAILED", buf, 0x30u);
          }
        }
      }

      return 0;
    }

    v13->_frameworkType = 0;
    v13->_currentUtteranceNumber = 0;
    v13->_recognizerState = 0;
    v13->_copyBufferAllocator = 0;
    v13->_pcmCopyBufferAllocator = 0;
    v13->_taskIdentifier = identifier;
    v14->_useSpeechAnalyzerV2API = VCFeatureFlagManager_UseAnalyzerSpeechAPI();
    v14->_enableSpeechDetector = VCFeatureFlagManager_EnableSpeechDetector();
    v14->_translatorMode = 0;
    v14->_streamToken = 0;
    if (objc_opt_class() == v14)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          useSpeechAnalyzerV2API = v14->_useSpeechAnalyzerV2API;
          enableSpeechDetector = v14->_enableSpeechDetector;
          *buf = 136316930;
          *&buf[4] = v16;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioCaptions initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
          *&buf[22] = 1024;
          *&buf[24] = 77;
          *&buf[28] = 1024;
          *&buf[30] = localCopy;
          *&buf[34] = 2112;
          *&buf[36] = identifier;
          *&buf[44] = 2048;
          *&buf[46] = agent;
          v46 = 1024;
          *v47 = useSpeechAnalyzerV2API;
          *&v47[4] = 1024;
          *&v47[6] = enableSpeechDetector;
          v20 = " [%s] %s:%d Init VCAudioCaptions: isLocal=%{BOOL}d, taskIdentifier=%@, reportingAgent=%p, useSpeechAnalyzerV2API=%{BOOL}d, enableSpeechDetector=%{BOOL}d";
          v21 = v17;
          v22 = 66;
LABEL_16:
          _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = [(VCAudioCaptions *)v14 performSelector:sel_logPrefix];
      }

      else
      {
        v15 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v25 = v14->_useSpeechAnalyzerV2API;
          v26 = v14->_enableSpeechDetector;
          *buf = 136317442;
          *&buf[4] = v23;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioCaptions initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
          *&buf[22] = 1024;
          *&buf[24] = 77;
          *&buf[28] = 2112;
          *&buf[30] = v15;
          *&buf[38] = 2048;
          *&buf[40] = v14;
          *&buf[48] = 1024;
          *&buf[50] = localCopy;
          v46 = 2112;
          *v47 = identifier;
          *&v47[8] = 2048;
          agentCopy = agent;
          v49 = 1024;
          v50 = v25;
          v51 = 1024;
          v52 = v26;
          v20 = " [%s] %s:%d %@(%p) Init VCAudioCaptions: isLocal=%{BOOL}d, taskIdentifier=%@, reportingAgent=%p, useSpeechAnalyzerV2API=%{BOOL}d, enableSpeechDetector=%{BOOL}d";
          v21 = v24;
          v22 = 86;
          goto LABEL_16;
        }
      }
    }

    v14->_audioConverter = 0;
    objc_storeWeak(&v14->_delegate, delegate);
    v14->_isLocal = localCopy;
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
    v28 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCAudioCaptions.captionsQueue", 0, CustomRootQueue);
    v14->_captionsQueue = v28;
    if (v28)
    {
      if (agent)
      {
        v29 = CFRetain(agent);
      }

      else
      {
        v29 = 0;
      }

      v14->_reportingAgent = v29;
      reportingRegisterPeriodicTaskWeak();
      v30 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCAudioCaptions.delegateQueue", 0, CustomRootQueue);
      v14->_delegateQueue = v30;
      if (v30)
      {
        v31 = dispatch_semaphore_create(1);
        v14->_teardownSemaphore = v31;
        if (v31)
        {
          v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v14->_captionTasks = v32;
          if (v32)
          {
            captionsDebugDumpEnabled = [(VCAudioCaptions *)v14 captionsDebugDumpEnabled];
            v14->_isCaptionsDebugDumpEnabled = captionsDebugDumpEnabled;
            if (captionsDebugDumpEnabled)
            {
              v14->_logCaptionsDump = VRLogfileAlloc(0, [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"session_%@", objc_msgSend(objc_msgSend(MEMORY[0x1E696AFB0], "UUID"), "UUIDString")), "UTF8String"], "captions_transcriptions", ".txt", "com.apple.AVConference.VCAudioCaptions.captionsQueue", 9);
            }

            v34 = [ASBDWrapper alloc];
            memset(buf, 0, 40);
            v35 = [(ASBDWrapper *)v34 initWithASBD:buf];
            v14->_captionsFormat = v35;
            if (v35)
            {
              v36 = [ASBDWrapper alloc];
              memset(buf, 0, 40);
              v37 = [(ASBDWrapper *)v36 initWithASBD:buf];
              v14->_inputFormat = v37;
              if (v37)
              {
                MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioCaptions-init Finished");
                if (VRTraceGetErrorLogLevelForModule() >= 6)
                {
                  v38 = VRTraceErrorLogLevelToCSTR();
                  v39 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315906;
                    *&buf[4] = v38;
                    *&buf[12] = 2080;
                    *&buf[14] = "[VCAudioCaptions initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
                    *&buf[22] = 1024;
                    *&buf[24] = 121;
                    *&buf[28] = 2048;
                    *&buf[30] = v14;
                    _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioCaptions-init Finished instance=%p Succeeded", buf, 0x26u);
                  }
                }

                return v14;
              }

              [VCAudioCaptions initWithDelegate:v14 isLocal:? taskIdentifier:? reportingAgent:?];
            }

            else
            {
              [VCAudioCaptions initWithDelegate:v14 isLocal:? taskIdentifier:? reportingAgent:?];
            }
          }

          else
          {
            [VCAudioCaptions initWithDelegate:v14 isLocal:? taskIdentifier:? reportingAgent:?];
          }
        }

        else
        {
          [VCAudioCaptions initWithDelegate:v14 isLocal:? taskIdentifier:? reportingAgent:?];
        }
      }

      else
      {
        [VCAudioCaptions initWithDelegate:v14 isLocal:? taskIdentifier:? reportingAgent:?];
      }
    }

    else
    {
      [VCAudioCaptions initWithDelegate:v14 isLocal:? taskIdentifier:? reportingAgent:?];
    }

    goto LABEL_39;
  }

  return v14;
}

void __74__VCAudioCaptions_initWithDelegate_isLocal_taskIdentifier_reportingAgent___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[6] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 208);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__VCAudioCaptions_initWithDelegate_isLocal_taskIdentifier_reportingAgent___block_invoke_2;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = a2;
  block[5] = a3;
  dispatch_sync(v3, block);
}

- (BOOL)enableV2SpeechAPI
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  captionsQueue = self->_captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__VCAudioCaptions_enableV2SpeechAPI__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(captionsQueue, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setEnableV2SpeechAPI:(BOOL)i
{
  v6 = *MEMORY[0x1E69E9840];
  captionsQueue = self->_captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__VCAudioCaptions_setEnableV2SpeechAPI___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  iCopy = i;
  dispatch_async(captionsQueue, block);
}

void __40__VCAudioCaptions_setEnableV2SpeechAPI___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = VCFeatureFlagManager_UseAnalyzerSpeechAPI();
  *(*(a1 + 32) + 172) = *(a1 + 40) & v2;
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
    v14 = *(a1 + 40);
    v15 = *(v13 + 172);
    v16 = 136316930;
    v17 = v11;
    v18 = 2080;
    v19 = "[VCAudioCaptions setEnableV2SpeechAPI:]_block_invoke";
    v20 = 1024;
    v21 = 142;
    v22 = 2112;
    *v23 = v3;
    *&v23[8] = 2048;
    v24 = v13;
    v25 = 1024;
    v26 = v14;
    v27 = 1024;
    v28 = v2;
    v29 = 1024;
    v30 = v15;
    v8 = " [%s] %s:%d %@(%p) VCAudioCaptions: Client object setting enable=%{BOOL}d (featureFlag=%{BOOL}d), _useSpeechAnalyzerV2API=%{BOOL}d";
    v9 = v12;
    v10 = 66;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = *(*(a1 + 32) + 172);
      v16 = 136316418;
      v17 = v4;
      v18 = 2080;
      v19 = "[VCAudioCaptions setEnableV2SpeechAPI:]_block_invoke";
      v20 = 1024;
      v21 = 142;
      v22 = 1024;
      *v23 = v6;
      *&v23[4] = 1024;
      *&v23[6] = v2;
      LOWORD(v24) = 1024;
      *(&v24 + 2) = v7;
      v8 = " [%s] %s:%d VCAudioCaptions: Client object setting enable=%{BOOL}d (featureFlag=%{BOOL}d), _useSpeechAnalyzerV2API=%{BOOL}d";
      v9 = v5;
      v10 = 46;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v16, v10);
    }
  }

LABEL_12:
  if ((*(*(a1 + 32) + 172) & 1) == 0 && v2)
  {
    reportingSymptom();
  }
}

- (void)dealloc
{
  v33 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v24 = v4;
        v25 = 2080;
        v26 = "[VCAudioCaptions dealloc]";
        v27 = 1024;
        v28 = 150;
        v6 = " [%s] %s:%d VCAudioCaptions-dealloc: Tearing down captions";
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
      v3 = [(VCAudioCaptions *)self performSelector:sel_logPrefix];
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
        v24 = v9;
        v25 = 2080;
        v26 = "[VCAudioCaptions dealloc]";
        v27 = 1024;
        v28 = 150;
        v29 = 2112;
        selfCopy2 = v3;
        v31 = 2048;
        selfCopy = self;
        v6 = " [%s] %s:%d %@(%p) VCAudioCaptions-dealloc: Tearing down captions";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  if (self->_teardownSemaphore)
  {
    v11 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(self->_teardownSemaphore, v11);
    dispatch_semaphore_signal(self->_teardownSemaphore);
  }

  v22 = 0;
  [(VCAudioCaptions *)self transitionToState:0 withReason:2 error:&v22];

  captionsQueue = self->_captionsQueue;
  if (captionsQueue)
  {
    dispatch_release(captionsQueue);
  }

  delegateQueue = self->_delegateQueue;
  if (delegateQueue)
  {
    dispatch_release(delegateQueue);
  }

  objc_storeWeak(&self->_delegate, 0);
  _VCAudioCaptions_DestroyCopyBufferAllocator(self);
  audioBufferAllocator = self->_audioBufferAllocator;
  if (audioBufferAllocator)
  {
    CFRelease(audioBufferAllocator);
    self->_audioBufferAllocator = 0;
  }

  pcmCopyBufferAllocator = self->_pcmCopyBufferAllocator;
  if (pcmCopyBufferAllocator)
  {
    CFRelease(pcmCopyBufferAllocator);
    self->_pcmCopyBufferAllocator = 0;
  }

  teardownSemaphore = self->_teardownSemaphore;
  if (teardownSemaphore)
  {
    dispatch_release(teardownSemaphore);
  }

  [(NSMutableArray *)self->_captionTasks removeAllObjects];

  VRLogfileFree(&self->_logCaptionsDump);
  reportingUnregisterPeriodicTask();
  reportingAgent = self->_reportingAgent;
  if (reportingAgent)
  {
    CFRelease(reportingAgent);
  }

  avAudioPCMAudioBufferAllocator = self->_avAudioPCMAudioBufferAllocator;
  if (avAudioPCMAudioBufferAllocator)
  {
    CFRelease(avAudioPCMAudioBufferAllocator);
    self->_avAudioPCMAudioBufferAllocator = 0;
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioCaptions-dealloc");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v24 = v19;
      v25 = 2080;
      v26 = "[VCAudioCaptions dealloc]";
      v27 = 1024;
      v28 = 197;
      v29 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioCaptions-dealloc instance=%p", buf, 0x26u);
    }
  }

  v21.receiver = self;
  v21.super_class = VCAudioCaptions;
  [(VCObject *)&v21 dealloc];
}

- (void)gatherRealtimeStats:(__CFDictionary *)stats
{
  v54 = *MEMORY[0x1E69E9840];
  if (stats && self->_lastCaptionsEnabledTime != 0.0)
  {
    v5 = micro();
    self->_captionsEnabledDuration = v5 - self->_lastCaptionsEnabledTime;
    self->_lastCaptionsEnabledTime = v5;
    v31 = llround(self->_captionedAudioDuration / self->_captionsEnabledDuration * 100.0);
    valuePtr = v31;
    v6 = *MEMORY[0x1E695E480];
    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(stats, @"ACFCR", v7);
    CFRelease(v7);
    valuePtr = self->_captionTaskCount;
    v8 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(stats, @"ACTC", v8);
    CFRelease(v8);
    v9 = llround(self->_captionsUtteranceDuration * 1000.0);
    valuePtr = v9;
    v10 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(stats, @"ACUL", v10);
    CFRelease(v10);
    valuePtr = self->_isLocal;
    v11 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(stats, @"ACTX", v11);
    CFRelease(v11);
    detectedLanguageCode = self->_detectedLanguageCode;
    if (detectedLanguageCode)
    {
      v13 = CFStringCreateWithCString(v6, [(NSString *)detectedLanguageCode UTF8String], 0x8000100u);
      if (!v13)
      {
        return;
      }

      v14 = v13;
      CFDictionaryAddValue(stats, @"ACLC", v13);
      CFRelease(v14);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        captioningRequestCount = self->_captioningRequestCount;
        captionsEnabledDuration = self->_captionsEnabledDuration;
        captionedAudioDuration = self->_captionedAudioDuration;
        captionTaskCount = self->_captionTaskCount;
        isLocal = self->_isLocal;
        v21 = self->_detectedLanguageCode;
        valuePtr = 136317954;
        v33 = v15;
        v34 = 2080;
        v35 = "[VCAudioCaptions gatherRealtimeStats:]";
        v36 = 1024;
        v37 = 226;
        v38 = 2048;
        *v39 = captioningRequestCount;
        *&v39[8] = 2048;
        *v40 = captionsEnabledDuration;
        *&v40[8] = 2048;
        v41 = captionedAudioDuration;
        v42 = 2048;
        v43 = captionedAudioDuration / captionsEnabledDuration;
        v44 = 1024;
        v45 = v31;
        v46 = 1024;
        v47 = captionTaskCount;
        v48 = 1024;
        v49 = v9 / captionTaskCount;
        v50 = 1024;
        v51 = isLocal;
        v52 = 2112;
        v53 = v21;
        _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @=@ Health: VCAudioCaptions Reporting Captions RealTime Stats: captioningRequestCount=%lu captionsEnabledDuration=%f captionedAudioDuration=%f captionsRatio=%f (5s * 100)captionsRatio=%d captionTaskCount=%d (movingAverage ms)utteranceDuration=%d isUplink=%d _detectedLanguageCode=%@", &valuePtr, 0x66u);
      }
    }

    self->_captionedAudioDuration = 0.0;
    self->_captionsEnabledDuration = 0.0;
    if (self->_translatorMode)
    {
      valuePtr = self->_currentUtteranceNumber;
      v22 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(stats, @"ACUtteranceCount", v22);
      CFRelease(v22);
      valuePtr = self->_translatedUtteranceNumber;
      v23 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(stats, @"ACTranslatedUtteranceCount", v23);
      CFRelease(v23);
      valuePtr = self->_translatedLatencyAverage;
      v24 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(stats, @"ACTranslatedLatencyAverage", v24);
      CFRelease(v24);
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          currentUtteranceNumber = self->_currentUtteranceNumber;
          translatedUtteranceNumber = self->_translatedUtteranceNumber;
          valuePtr = 136316418;
          translatedLatencyAverage = self->_translatedLatencyAverage;
          v33 = v25;
          v34 = 2080;
          v35 = "[VCAudioCaptions gatherRealtimeStats:]";
          v36 = 1024;
          v37 = 235;
          v38 = 1024;
          *v39 = currentUtteranceNumber;
          *&v39[4] = 1024;
          *&v39[6] = translatedUtteranceNumber;
          *v40 = 2048;
          *&v40[2] = translatedLatencyAverage / 1000.0;
          _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @=@ Health: VCAudioCaptions Reporting Translation RealTime Stats: currentUtteranceNumber=%d, currentUtteranceNumberTranslation=%d, _translatedLatencyAverage=%f seconds", &valuePtr, 0x32u);
        }
      }
    }
  }
}

+ (int64_t)speechRecognitionTaskHintFromCaptionsTaskHint:(unsigned __int8)hint
{
  v3 = 1012;
  if (hint == 2)
  {
    v3 = 1009;
  }

  if (hint == 1)
  {
    return 1004;
  }

  else
  {
    return v3;
  }
}

- (BOOL)createAudioConverterWithInputFormat:(const AudioStreamBasicDescription *)format outputFormat:(const AudioStreamBasicDescription *)outputFormat converter:(OpaqueAudioConverter *)converter
{
  v94 = *MEMORY[0x1E69E9840];
  *converter = 0;
  if (!memcmp(outputFormat, format, 0x28uLL))
  {
    LOBYTE(v10) = 1;
    return v10;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v75 = v11;
        v76 = 2080;
        v77 = "[VCAudioCaptions createAudioConverterWithInputFormat:outputFormat:converter:]";
        v78 = 1024;
        v79 = 280;
        v13 = " [%s] %s:%d Creating converter for captions:";
        v14 = v12;
        v15 = 28;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(VCAudioCaptions *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v75 = v16;
        v76 = 2080;
        v77 = "[VCAudioCaptions createAudioConverterWithInputFormat:outputFormat:converter:]";
        v78 = 1024;
        v79 = 280;
        v80 = 2112;
        v81 = *&v9;
        v82 = 2048;
        *v83 = self;
        v13 = " [%s] %s:%d %@(%p) Creating converter for captions:";
        v14 = v17;
        v15 = 48;
        goto LABEL_13;
      }
    }
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        mSampleRate = format->mSampleRate;
        mFormatID = format->mFormatID;
        mBytesPerPacket = format->mBytesPerPacket;
        mFramesPerPacket = format->mFramesPerPacket;
        mBytesPerFrame = format->mBytesPerFrame;
        mChannelsPerFrame = format->mChannelsPerFrame;
        mBitsPerChannel = format->mBitsPerChannel;
        *buf = 136317442;
        v75 = v19;
        v76 = 2080;
        v77 = "[VCAudioCaptions createAudioConverterWithInputFormat:outputFormat:converter:]";
        v78 = 1024;
        v79 = 289;
        v80 = 2048;
        v81 = mSampleRate;
        v82 = 1024;
        *v83 = mFormatID;
        *&v83[4] = 1024;
        *&v83[6] = mBytesPerPacket;
        LOWORD(v84) = 1024;
        *(&v84 + 2) = mFramesPerPacket;
        HIWORD(v84) = 1024;
        *v85 = mBytesPerFrame;
        *&v85[4] = 1024;
        *v86 = mChannelsPerFrame;
        *&v86[4] = 1024;
        *v87 = mBitsPerChannel;
        v28 = " [%s] %s:%d  InputFormat: samplerate=%f formatid=%x bytePerPacket=%d framesPerPacket=%d bytesPerFrame=%d channelsPerFrame=%d bitsPerChannel=%d";
        v29 = v20;
        v30 = 74;
LABEL_24:
        _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v18 = [(VCAudioCaptions *)self performSelector:sel_logPrefix];
    }

    else
    {
      v18 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v33 = format->mSampleRate;
        v34 = format->mFormatID;
        v35 = format->mBytesPerPacket;
        v36 = format->mFramesPerPacket;
        v37 = format->mBytesPerFrame;
        v38 = format->mChannelsPerFrame;
        v39 = format->mBitsPerChannel;
        *buf = 136317954;
        v75 = v31;
        v76 = 2080;
        v77 = "[VCAudioCaptions createAudioConverterWithInputFormat:outputFormat:converter:]";
        v78 = 1024;
        v79 = 289;
        v80 = 2112;
        v81 = *&v18;
        v82 = 2048;
        *v83 = self;
        *&v83[8] = 2048;
        v84 = v33;
        *v85 = 1024;
        *&v85[2] = v34;
        *v86 = 1024;
        *&v86[2] = v35;
        *v87 = 1024;
        *&v87[2] = v36;
        v88 = 1024;
        v89 = v37;
        v90 = 1024;
        v91 = v38;
        v92 = 1024;
        v93 = v39;
        v28 = " [%s] %s:%d %@(%p)  InputFormat: samplerate=%f formatid=%x bytePerPacket=%d framesPerPacket=%d bytesPerFrame=%d channelsPerFrame=%d bitsPerChannel=%d";
        v29 = v32;
        v30 = 94;
        goto LABEL_24;
      }
    }
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v41 = VRTraceErrorLogLevelToCSTR();
      v42 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v43 = outputFormat->mSampleRate;
        v44 = outputFormat->mFormatID;
        v45 = outputFormat->mBytesPerPacket;
        v46 = outputFormat->mFramesPerPacket;
        v47 = outputFormat->mBytesPerFrame;
        v48 = outputFormat->mChannelsPerFrame;
        v49 = outputFormat->mBitsPerChannel;
        *buf = 136317442;
        v75 = v41;
        v76 = 2080;
        v77 = "[VCAudioCaptions createAudioConverterWithInputFormat:outputFormat:converter:]";
        v78 = 1024;
        v79 = 298;
        v80 = 2048;
        v81 = v43;
        v82 = 1024;
        *v83 = v44;
        *&v83[4] = 1024;
        *&v83[6] = v45;
        LOWORD(v84) = 1024;
        *(&v84 + 2) = v46;
        HIWORD(v84) = 1024;
        *v85 = v47;
        *&v85[4] = 1024;
        *v86 = v48;
        *&v86[4] = 1024;
        *v87 = v49;
        v50 = " [%s] %s:%d  OuputFormat: samplerate=%f formatid=%x bytePerPacket=%d framesPerPacket=%d bytesPerFrame=%d channelsPerFrame=%d bitsPerChannel=%d";
        v51 = v42;
        v52 = 74;
LABEL_35:
        _os_log_impl(&dword_1DB56E000, v51, OS_LOG_TYPE_DEFAULT, v50, buf, v52);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v40 = [(VCAudioCaptions *)self performSelector:sel_logPrefix];
    }

    else
    {
      v40 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v53 = VRTraceErrorLogLevelToCSTR();
      v54 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v55 = outputFormat->mSampleRate;
        v56 = outputFormat->mFormatID;
        v57 = outputFormat->mBytesPerPacket;
        v58 = outputFormat->mFramesPerPacket;
        v59 = outputFormat->mBytesPerFrame;
        v60 = outputFormat->mChannelsPerFrame;
        v61 = outputFormat->mBitsPerChannel;
        *buf = 136317954;
        v75 = v53;
        v76 = 2080;
        v77 = "[VCAudioCaptions createAudioConverterWithInputFormat:outputFormat:converter:]";
        v78 = 1024;
        v79 = 298;
        v80 = 2112;
        v81 = *&v40;
        v82 = 2048;
        *v83 = self;
        *&v83[8] = 2048;
        v84 = v55;
        *v85 = 1024;
        *&v85[2] = v56;
        *v86 = 1024;
        *&v86[2] = v57;
        *v87 = 1024;
        *&v87[2] = v58;
        v88 = 1024;
        v89 = v59;
        v90 = 1024;
        v91 = v60;
        v92 = 1024;
        v93 = v61;
        v50 = " [%s] %s:%d %@(%p)  OuputFormat: samplerate=%f formatid=%x bytePerPacket=%d framesPerPacket=%d bytesPerFrame=%d channelsPerFrame=%d bitsPerChannel=%d";
        v51 = v54;
        v52 = 94;
        goto LABEL_35;
      }
    }
  }

  v62 = AudioConverterNew(format, outputFormat, converter);
  if (v62)
  {
    v63 = v62;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v10)
        {
          return v10;
        }

        [VCAudioCaptions createAudioConverterWithInputFormat:outputFormat:converter:];
      }

LABEL_51:
      LOBYTE(v10) = 0;
      return v10;
    }

    if (objc_opt_respondsToSelector())
    {
      v64 = [(VCAudioCaptions *)self performSelector:sel_logPrefix];
    }

    else
    {
      v64 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_51;
    }

    v68 = VRTraceErrorLogLevelToCSTR();
    v69 = *MEMORY[0x1E6986650];
    v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (v10)
    {
      *buf = 136316418;
      v75 = v68;
      v76 = 2080;
      v77 = "[VCAudioCaptions createAudioConverterWithInputFormat:outputFormat:converter:]";
      v78 = 1024;
      v79 = 302;
      v80 = 2112;
      v81 = *&v64;
      v82 = 2048;
      *v83 = self;
      *&v83[8] = 1024;
      LODWORD(v84) = v63;
      _os_log_error_impl(&dword_1DB56E000, v69, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) newAudioResamplerWithInputFormat failed with error %d", buf, 0x36u);
      goto LABEL_51;
    }
  }

  else
  {
    inPropertyData = 2;
    v65 = AudioConverterSetProperty(*converter, 0x70726D6Du, 4u, &inPropertyData);
    if (v65)
    {
      v66 = v65;
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCAudioCaptions createAudioConverterWithInputFormat:outputFormat:converter:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v67 = [(VCAudioCaptions *)self performSelector:sel_logPrefix];
        }

        else
        {
          v67 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v70 = VRTraceErrorLogLevelToCSTR();
          v71 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            v75 = v70;
            v76 = 2080;
            v77 = "[VCAudioCaptions createAudioConverterWithInputFormat:outputFormat:converter:]";
            v78 = 1024;
            v79 = 308;
            v80 = 2112;
            v81 = *&v67;
            v82 = 2048;
            *v83 = self;
            *&v83[8] = 1024;
            LODWORD(v84) = v66;
            _os_log_error_impl(&dword_1DB56E000, v71, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) AudioConverterSetProperty(kAudioConverterPrimeMethod) failed with error %d", buf, 0x36u);
          }
        }
      }
    }

    LOBYTE(v10) = *converter != 0;
  }

  return v10;
}

- (opaqueCMSampleBuffer)convertSamples:(char *)samples numSamples:(int)numSamples
{
  v56 = *MEMORY[0x1E69E9840];
  if (!self->_audioConverter)
  {
    return 0;
  }

  v29 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  captionsFormat = self->_captionsFormat;
  if (captionsFormat)
  {
    [(ASBDWrapper *)captionsFormat asbd];
    v8 = *&v43;
  }

  else
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    v8 = 0.0;
  }

  v10 = v8 * numSamples;
  inputFormat = self->_inputFormat;
  if (inputFormat)
  {
    [(ASBDWrapper *)inputFormat asbd];
    v12 = *&v40;
  }

  else
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    v12 = 0.0;
  }

  v13 = (v10 / v12);
  ioOutputDataPacketSize = v13;
  v14 = self->_captionsFormat;
  if (v14)
  {
    [(ASBDWrapper *)v14 asbd];
    v15 = v38;
  }

  else
  {
    v15 = 0;
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
  }

  v16 = v15 * v13;
  v17 = (v16 + 15) & 0x1FFFFFFF0;
  v18 = &v28 - v17;
  if (v16)
  {
    memset(&v28 - v17, 170, v16);
  }

  v52 = 1;
  *&outOutputData.mNumberBuffers = 0;
  v53 = 1;
  samplesCopy = samples;
  v19 = self->_inputFormat;
  if (v19)
  {
    [(ASBDWrapper *)v19 asbd];
    v20 = v35;
    v19 = self->_inputFormat;
  }

  else
  {
    v20 = 0;
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
  }

  v54 = v20 * numSamples;
  outOutputData.mNumberBuffers = 1;
  outOutputData.mBuffers[0].mNumberChannels = 1;
  outOutputData.mBuffers[0].mDataByteSize = v16;
  outOutputData.mBuffers[0].mData = v18;
  if (v19)
  {
    [(ASBDWrapper *)v19 asbd];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  v31 = *buf;
  v32 = *&buf[16];
  v33 = *&buf[32];
  v30 = &v52;
  v21 = AudioConverterFillComplexBuffer(self->_audioConverter, captionsAudioConverterCallback, &v30, &ioOutputDataPacketSize, &outOutputData, 0);
  if (v21)
  {
    v22 = v21;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioCaptions convertSamples:numSamples:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v23 = [(VCAudioCaptions *)self performSelector:sel_logPrefix];
      }

      else
      {
        v23 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          *&buf[4] = v24;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioCaptions convertSamples:numSamples:]";
          *&buf[22] = 1024;
          *&buf[24] = 391;
          *&buf[28] = 2112;
          *&buf[30] = v23;
          *&buf[38] = 2048;
          selfCopy = self;
          v49 = 1024;
          v50 = v22;
          _os_log_error_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) AudioConverterFillComplexBuffer failed with %d", buf, 0x36u);
        }
      }
    }

    bzero(v18, v16);
  }

  asbdPointer = [(ASBDWrapper *)self->_captionsFormat asbdPointer];
  v9 = [(VCAudioCaptions *)self createSampleBufferWithFormat:asbdPointer samples:v18 numSamples:ioOutputDataPacketSize];

  return v9;
}

- (BOOL)handleStateLoadedError:(id *)error
{
  v4 = [(VCAudioCaptions *)self setUpCaptionsWithError:error];
  if (v4)
  {
    self->_recognizerState = 1;
  }

  return v4;
}

- (BOOL)idleStateToState:(int)state withReason:(unsigned __int8)reason error:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  if ((state - 1) >= 2)
  {
    if (!state)
    {
      return 1;
    }

    if (error)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", reason, "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Captions/VCAudioCaptions.m", 432];
      v10 = 3;
      v9 = 7;
      goto LABEL_10;
    }
  }

  else
  {
    v12[0] = 0;
    if ([VCAudioCaptions captionsSupportedWithErrorCode:v12, reason])
    {
      return [(VCAudioCaptions *)self handleStateLoadedError:error];
    }

    if (error)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Captions/VCAudioCaptions.m", 423];
      v9 = v12[0];
      v10 = 2;
LABEL_10:
      v11 = [VCSessionErrorUtils VCSessionCaptionsErrorEvent:v10 errorPath:v8 returnCode:v9];
      result = 0;
      *error = v11;
      return result;
    }
  }

  return 0;
}

- (BOOL)loadedStateToState:(int)state withReason:(unsigned __int8)reason error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  if (state == 2)
  {
    if ([(VCAudioCaptions *)self startCaptionsWithError:error])
    {
      streamToken = self->_streamToken;
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__VCAudioCaptions_loadedStateToState_withReason_error___block_invoke;
      block[3] = &unk_1E85F4180;
      reasonCopy = reason;
      block[4] = self;
      block[5] = streamToken;
      dispatch_async(delegateQueue, block);
      self->_recognizerState = 2;
      goto LABEL_7;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v10)
        {
          return v10;
        }

        [VCAudioCaptions loadedStateToState:withReason:error:];
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [(VCAudioCaptions *)self performSelector:sel_logPrefix];
      }

      else
      {
        v12 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v10)
        {
          return v10;
        }

        *buf = 136316162;
        v19 = v13;
        v20 = 2080;
        v21 = "[VCAudioCaptions loadedStateToState:withReason:error:]";
        v22 = 1024;
        v23 = 464;
        v24 = 2112;
        v25 = v12;
        v26 = 2048;
        selfCopy = self;
        _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to setup speech captions processing for running", buf, 0x30u);
      }
    }

    goto LABEL_20;
  }

  if (state != 1)
  {
    if (!state)
    {
      self->_recognizerState = 0;
      [(VCAudioCaptions *)self finishCaptions:*&state];
      goto LABEL_7;
    }

    if (error)
    {
      v11 = +[VCSessionErrorUtils VCSessionCaptionsErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionCaptionsErrorEvent:errorPath:returnCode:", 3, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", reason, "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Captions/VCAudioCaptions.m", 469], 7);
      LOBYTE(v10) = 0;
      *error = v11;
      return v10;
    }

LABEL_20:
    LOBYTE(v10) = 0;
    return v10;
  }

LABEL_7:
  LOBYTE(v10) = 1;
  return v10;
}

uint64_t __55__VCAudioCaptions_loadedStateToState_withReason_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);

  return [v2 didStartCaptioningWithReason:v3 streamToken:v4];
}

- (BOOL)runningStateToState:(int)state withReason:(unsigned __int8)reason error:(id *)error
{
  if (state < 2)
  {
    goto LABEL_4;
  }

  if (state == 2)
  {
    return 1;
  }

  if (state == 3)
  {
LABEL_4:
    self->_recognizerState = 3;
    [(VCAudioCaptions *)self handleStateStopping];
    [(VCAudioCaptions *)self updateCaptionsUtteranceDuration];
    return 1;
  }

  return 0;
}

- (BOOL)stoppingStateToState:(int)state withReason:(unsigned __int8)reason error:(id *)error
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = 1;
  if (state >= 2)
  {
    if (state != 3)
    {
      v5 = 0;
      if (error)
      {
        *error = +[VCSessionErrorUtils VCSessionCaptionsErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionCaptionsErrorEvent:errorPath:returnCode:", 3, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", reason, "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Captions/VCAudioCaptions.m", 519], 7);
      }
    }
  }

  else
  {
    self->_recognizerState = 1;
    [(VCAudioCaptions *)self destroyCaptions];
    streamToken = self->_streamToken;
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__VCAudioCaptions_stoppingStateToState_withReason_error___block_invoke;
    block[3] = &unk_1E85F4180;
    reasonCopy = reason;
    block[4] = self;
    block[5] = streamToken;
    dispatch_async(delegateQueue, block);
  }

  return v5;
}

uint64_t __57__VCAudioCaptions_stoppingStateToState_withReason_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);

  return [v2 didStopCaptioningWithReason:v3 streamToken:v4];
}

- (BOOL)transitionToState:(int)state withReason:(unsigned __int8)reason error:(id *)error
{
  v51[4] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  reasonCopy = reason;
  errorCopy = error;
  v36 = 1;
  v51[0] = sel_idleStateToState_withReason_error_;
  v51[1] = sel_loadedStateToState_withReason_error_;
  v51[2] = sel_runningStateToState_withReason_error_;
  v51[3] = sel_stoppingStateToState_withReason_error_;
  if (self->_recognizerState == state)
  {
    return v36;
  }

  *&v5 = 136315906;
  v35 = v5;
  while (1)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          recognizerState = self->_recognizerState;
          *buf = 136316162;
          v41 = v14;
          v42 = 2080;
          v43 = "[VCAudioCaptions transitionToState:withReason:error:]";
          v44 = 1024;
          v45 = 536;
          v46 = 1024;
          *v47 = recognizerState;
          *&v47[4] = 1024;
          *&v47[6] = stateCopy;
          v11 = v15;
          v12 = " [%s] %s:%d Captions State Transition: From=%d To=%d";
          v13 = 40;
          goto LABEL_12;
        }
      }
    }

    else
    {
      v7 = &stru_1F570E008;
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCAudioCaptions *)self performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v10 = self->_recognizerState;
          *buf = 136316674;
          v41 = v8;
          v42 = 2080;
          v43 = "[VCAudioCaptions transitionToState:withReason:error:]";
          v44 = 1024;
          v45 = 536;
          v46 = 2112;
          *v47 = v7;
          *&v47[8] = 2048;
          selfCopy3 = self;
          v49 = 1024;
          *v50 = v10;
          *&v50[4] = 1024;
          *&v50[6] = stateCopy;
          v11 = v9;
          v12 = " [%s] %s:%d %@(%p) Captions State Transition: From=%d To=%d";
          v13 = 60;
LABEL_12:
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, v13);
        }
      }
    }

    v17 = [(VCAudioCaptions *)self methodSignatureForSelector:v51[self->_recognizerState], v35];
    v18 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v17];
    [v18 setTarget:self];
    [v18 setSelector:v51[self->_recognizerState]];
    [v18 setArgument:&stateCopy atIndex:2];
    [v18 setArgument:&reasonCopy atIndex:3];
    [v18 setArgument:&errorCopy atIndex:4];
    [v18 invoke];
    v36 = 0;
    [v18 getReturnValue:&v36];
    if (!v36)
    {
      break;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_24;
      }

      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      v28 = self->_recognizerState;
      *buf = v35;
      v41 = v26;
      v42 = 2080;
      v43 = "[VCAudioCaptions transitionToState:withReason:error:]";
      v44 = 1024;
      v45 = 553;
      v46 = 1024;
      *v47 = v28;
      v23 = v27;
      v24 = " [%s] %s:%d New captions state: %d";
      v25 = 34;
    }

    else
    {
      v19 = &stru_1F570E008;
      if (objc_opt_respondsToSelector())
      {
        v19 = [(VCAudioCaptions *)self performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_24;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      v22 = self->_recognizerState;
      *buf = 136316418;
      v41 = v20;
      v42 = 2080;
      v43 = "[VCAudioCaptions transitionToState:withReason:error:]";
      v44 = 1024;
      v45 = 553;
      v46 = 2112;
      *v47 = v19;
      *&v47[8] = 2048;
      selfCopy3 = self;
      v49 = 1024;
      *v50 = v22;
      v23 = v21;
      v24 = " [%s] %s:%d %@(%p) New captions state: %d";
      v25 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, v24, buf, v25);
LABEL_24:
    if (self->_recognizerState == stateCopy)
    {
      return v36;
    }
  }

  if (errorCopy && *errorCopy)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v30 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioCaptions transitionToState:v30 withReason:&errorCopy error:?];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v29 = [(VCAudioCaptions *)self performSelector:sel_logPrefix];
      }

      else
      {
        v29 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v31 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          if (*errorCopy)
          {
            v34 = [objc_msgSend(*errorCopy "description")];
          }

          else
          {
            v34 = "<nil>";
          }

          *buf = 136316418;
          v41 = v31;
          v42 = 2080;
          v43 = "[VCAudioCaptions transitionToState:withReason:error:]";
          v44 = 1024;
          v45 = 549;
          v46 = 2112;
          *v47 = v29;
          *&v47[8] = 2048;
          selfCopy3 = self;
          v49 = 2080;
          *v50 = v34;
          _os_log_error_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed captions state transition. Error=%s", buf, 0x3Au);
        }
      }
    }
  }

  return v36;
}

- (void)prewarmCaptions
{
  v3[5] = *MEMORY[0x1E69E9840];
  captionsQueue = self->_captionsQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__VCAudioCaptions_prewarmCaptions__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(captionsQueue, v3);
}

void __34__VCAudioCaptions_prewarmCaptions__block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 169) & 1) != 0 || (*(v1 + 168) & 1) != 0 || !+[VCAudioCaptions captionsSupported])
  {
    return;
  }

  v23 = 0;
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_15;
    }

    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 136315650;
    v25 = v4;
    v26 = 2080;
    v27 = "[VCAudioCaptions prewarmCaptions]_block_invoke";
    v28 = 1024;
    v29 = 566;
    v6 = " [%s] %s:%d Prewarming captions";
    v7 = v5;
    v8 = 28;
    goto LABEL_14;
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) performSelector:sel_logPrefix];
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
      v11 = *(a1 + 32);
      *buf = 136316162;
      v25 = v9;
      v26 = 2080;
      v27 = "[VCAudioCaptions prewarmCaptions]_block_invoke";
      v28 = 1024;
      v29 = 566;
      v30 = 2112;
      v31 = v3;
      v32 = 2048;
      v33 = v11;
      v6 = " [%s] %s:%d %@(%p) Prewarming captions";
      v7 = v10;
      v8 = 48;
LABEL_14:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }
  }

LABEL_15:
  v12 = [*(a1 + 32) transitionToState:1 withReason:2 error:&v23];
  if (v23)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  *(*(a1 + 32) + 169) = v13;
  if ((*(*(a1 + 32) + 169) & 1) == 0)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v25 = v15;
          v26 = 2080;
          v27 = "[VCAudioCaptions prewarmCaptions]_block_invoke";
          v28 = 1024;
          v29 = 572;
          v30 = 2112;
          v31 = v23;
          v17 = " [%s] %s:%d Failed to prewarm captions with error=%@";
          v18 = v16;
          v19 = 38;
LABEL_29:
          _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v14 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a1 + 32);
          *buf = 136316418;
          v25 = v20;
          v26 = 2080;
          v27 = "[VCAudioCaptions prewarmCaptions]_block_invoke";
          v28 = 1024;
          v29 = 572;
          v30 = 2112;
          v31 = v14;
          v32 = 2048;
          v33 = v22;
          v34 = 2112;
          v35 = v23;
          v17 = " [%s] %s:%d %@(%p) Failed to prewarm captions with error=%@";
          v18 = v21;
          v19 = 58;
          goto LABEL_29;
        }
      }
    }
  }
}

- (void)enableCaptions:(BOOL)captions
{
  v6 = *MEMORY[0x1E69E9840];
  captionsQueue = self->_captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__VCAudioCaptions_enableCaptions___block_invoke;
  block[3] = &unk_1E85F37A0;
  captionsCopy = captions;
  block[4] = self;
  dispatch_async(captionsQueue, block);
}

uint64_t __34__VCAudioCaptions_enableCaptions___block_invoke_63(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 168);

  return [v2 didEnableCaptions:v4 error:v3];
}

uint64_t __34__VCAudioCaptions_enableCaptions___block_invoke_66(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 40);
  v4 = (*(*(a1 + 32) + 168) & 1) == 0;

  return [v2 didDisableCaptions:v4 error:v3];
}

- (BOOL)shouldEnableCaptions
{
  v30 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_captionsQueue);
  v17 = 0;
  if (![VCAudioCaptions captionsSupportedWithErrorCode:&v17])
  {
    goto LABEL_19;
  }

  if (self->_frameworkType != 3 && self->_useSpeechAnalyzerV2API && ([+[VCSpeechFrameworkWrapper defaultSpeechFrameworkWrapper](VCSpeechFrameworkWrapper "defaultSpeechFrameworkWrapper")] & 1) == 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_18;
      }

      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      taskHint = self->_taskHint;
      localeIdentifier = [(NSLocale *)self->_locale localeIdentifier];
      *buf = 136316162;
      v19 = v4;
      v20 = 2080;
      v21 = "[VCAudioCaptions shouldEnableCaptions]";
      v22 = 1024;
      v23 = 633;
      v24 = 1024;
      *v25 = taskHint;
      *&v25[4] = 2112;
      *&v25[6] = localeIdentifier;
      v8 = " [%s] %s:%d Speech assets not found for taskHint=%d locale=%@";
      v9 = v5;
      v10 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [(VCAudioCaptions *)self performSelector:sel_logPrefix];
      }

      else
      {
        v11 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_18;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      v14 = self->_taskHint;
      localeIdentifier2 = [(NSLocale *)self->_locale localeIdentifier];
      *buf = 136316674;
      v19 = v12;
      v20 = 2080;
      v21 = "[VCAudioCaptions shouldEnableCaptions]";
      v22 = 1024;
      v23 = 633;
      v24 = 2112;
      *v25 = v11;
      *&v25[8] = 2048;
      *&v25[10] = self;
      v26 = 1024;
      v27 = v14;
      v28 = 2112;
      v29 = localeIdentifier2;
      v8 = " [%s] %s:%d %@(%p) Speech assets not found for taskHint=%d locale=%@";
      v9 = v13;
      v10 = 64;
    }

    _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
LABEL_18:
    v17 = 11;
LABEL_19:
    [(VCAudioCaptions *)&v17 shouldEnableCaptions];
    return 0;
  }

  return 1;
}

uint64_t __39__VCAudioCaptions_shouldEnableCaptions__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 168);

  return [v2 didEnableCaptions:v4 error:v3];
}

+ (BOOL)captionsSupportedWithErrorCode:(int64_t *)code
{
  v32 = *MEMORY[0x1E69E9840];
  if (!+[VCHardwareSettings isCaptionsSupported])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v6 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v6)
        {
          goto LABEL_20;
        }

        +[VCAudioCaptions captionsSupportedWithErrorCode:];
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        v6 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v6)
        {
          goto LABEL_20;
        }

        v22 = 136316162;
        v23 = v9;
        v24 = 2080;
        v25 = "+[VCAudioCaptions captionsSupportedWithErrorCode:]";
        v26 = 1024;
        v27 = 656;
        v28 = 2112;
        v29 = v7;
        v30 = 2048;
        selfCopy3 = self;
        _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Captions is hardware restricted", &v22, 0x30u);
      }
    }

    LOBYTE(v6) = 0;
LABEL_20:
    v5 = 8;
    if (!code)
    {
      return v6;
    }

    goto LABEL_34;
  }

  if (([+[VCSpeechFrameworkWrapper defaultSpeechFrameworkWrapper](VCSpeechFrameworkWrapper "defaultSpeechFrameworkWrapper")] & 1) == 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v6 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v6)
        {
          goto LABEL_33;
        }

        +[VCAudioCaptions captionsSupportedWithErrorCode:];
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        v6 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v6)
        {
          goto LABEL_33;
        }

        v22 = 136316162;
        v23 = v12;
        v24 = 2080;
        v25 = "+[VCAudioCaptions captionsSupportedWithErrorCode:]";
        v26 = 1024;
        v27 = 659;
        v28 = 2112;
        v29 = v8;
        v30 = 2048;
        selfCopy3 = self;
        _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Speech framework not properly soft linked.", &v22, 0x30u);
      }
    }

    LOBYTE(v6) = 0;
LABEL_33:
    v5 = 1;
    if (!code)
    {
      return v6;
    }

    goto LABEL_34;
  }

  if ([+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-captions-enabled" userDefaultKey:@"audioCaptionsEnabled" defaultValue:&unk_1F57985C8 isDoubleType:{0), "BOOLValue"}])
  {
    v5 = 0;
    LOBYTE(v6) = 1;
    if (!code)
    {
      return v6;
    }

LABEL_34:
    *code = v5;
    return v6;
  }

  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [self performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_44;
    }

    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    v6 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!v6)
    {
      goto LABEL_45;
    }

    v22 = 136316162;
    v23 = v19;
    v24 = 2080;
    v25 = "+[VCAudioCaptions captionsSupportedWithErrorCode:]";
    v26 = 1024;
    v27 = 665;
    v28 = 2112;
    v29 = v11;
    v30 = 2048;
    selfCopy3 = self;
    v16 = " [%s] %s:%d %@(%p) Captions disabled via storebag or default";
    v17 = v20;
    v18 = 48;
    goto LABEL_43;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    v6 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!v6)
    {
      goto LABEL_45;
    }

    v22 = 136315650;
    v23 = v14;
    v24 = 2080;
    v25 = "+[VCAudioCaptions captionsSupportedWithErrorCode:]";
    v26 = 1024;
    v27 = 665;
    v16 = " [%s] %s:%d Captions disabled via storebag or default";
    v17 = v15;
    v18 = 28;
LABEL_43:
    _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, &v22, v18);
  }

LABEL_44:
  LOBYTE(v6) = 0;
LABEL_45:
  v5 = 10;
  if (code)
  {
    goto LABEL_34;
  }

  return v6;
}

- (BOOL)enabled
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  captionsQueue = self->_captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__VCAudioCaptions_enabled__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(captionsQueue, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSLocale)locale
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  captionsQueue = self->_captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__VCAudioCaptions_locale__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(captionsQueue, block);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)applyOnIdleWithBlock:(id)block
{
  v7[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_captionsQueue);
  recognizerState = self->_recognizerState;
  v7[0] = 0;
  if (recognizerState)
  {
    [(VCAudioCaptions *)self transitionToState:0 withReason:2 error:v7];
    if (v7[0])
    {
      [VCAudioCaptions applyOnIdleWithBlock:?];
    }

    else
    {
      (*(block + 2))(block);
      [(VCAudioCaptions *)self transitionToState:recognizerState withReason:2 error:v7];
    }
  }

  else
  {
    v6 = *(block + 2);

    v6(block);
  }
}

uint64_t __39__VCAudioCaptions_dispatchedSetLocale___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];

  *(*(a1 + 32) + 296) = *(a1 + 40);
  v3 = @"ACLocale";
  v4[0] = [*(*(a1 + 32) + 296) localeIdentifier];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  return reportingGenericEvent();
}

- (void)setLocale:(id)locale
{
  block[6] = *MEMORY[0x1E69E9840];
  captionsQueue = self->_captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__VCAudioCaptions_setLocale___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = locale;
  dispatch_async(captionsQueue, block);
}

- (NSLocale)sourceLocale
{
  v7[6] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3052000000;
  v7[3] = __Block_byref_object_copy__0;
  v7[4] = __Block_byref_object_dispose__0;
  v7[5] = 0;
  captionsQueue = self->_captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__VCAudioCaptions_sourceLocale__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = v7;
  dispatch_sync(captionsQueue, block);
  sourceLocale = self->_sourceLocale;
  _Block_object_dispose(v7, 8);
  return sourceLocale;
}

- (void)reportSourceLocale
{
  v6[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_captionsQueue);
  v5 = @"ACSourceLocale";
  sourceLocale = self->_sourceLocale;
  if (sourceLocale)
  {
    localeIdentifier = [(NSLocale *)sourceLocale localeIdentifier];
  }

  else
  {
    localeIdentifier = &stru_1F570E008;
  }

  v6[0] = localeIdentifier;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  reportingGenericEvent();
}

- (void)setSourceLocale:(id)locale
{
  block[6] = *MEMORY[0x1E69E9840];
  captionsQueue = self->_captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__VCAudioCaptions_setSourceLocale___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = locale;
  dispatch_async(captionsQueue, block);
}

void __35__VCAudioCaptions_setSourceLocale___block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = [*(a1 + 40) localeIdentifier];
        v6 = [*(*(a1 + 32) + 304) localeIdentifier];
        v7 = *(*(a1 + 32) + 184);
        *buf = 136316418;
        v40 = v3;
        v41 = 2080;
        v42 = "[VCAudioCaptions setSourceLocale:]_block_invoke";
        v43 = 1024;
        v44 = 771;
        v45 = 2112;
        v46 = v5;
        v47 = 2112;
        v48 = v6;
        v49 = 1024;
        LODWORD(v50) = v7;
        v8 = " [%s] %s:%d Setting to sourceLocale=%@, current _sourceLocale=%@, state=%u";
        v9 = v4;
        v10 = 54;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
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
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v14 = [*(a1 + 40) localeIdentifier];
        v15 = [*(*(a1 + 32) + 304) localeIdentifier];
        v16 = *(*(a1 + 32) + 184);
        *buf = 136316930;
        v40 = v11;
        v41 = 2080;
        v42 = "[VCAudioCaptions setSourceLocale:]_block_invoke";
        v43 = 1024;
        v44 = 771;
        v45 = 2112;
        v46 = v2;
        v47 = 2048;
        v48 = v13;
        v49 = 2112;
        v50 = v14;
        v51 = 2112;
        v52 = v15;
        v53 = 1024;
        v54 = v16;
        v8 = " [%s] %s:%d %@(%p) Setting to sourceLocale=%@, current _sourceLocale=%@, state=%u";
        v9 = v12;
        v10 = 74;
        goto LABEL_11;
      }
    }
  }

  v17 = [objc_msgSend(*(a1 + 40) "localeIdentifier")];
  v18 = *(a1 + 32);
  if (v17)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v25 = [*(*(a1 + 32) + 304) localeIdentifier];
          *buf = 136315906;
          v40 = v23;
          v41 = 2080;
          v42 = "[VCAudioCaptions setSourceLocale:]_block_invoke";
          v43 = 1024;
          v44 = 773;
          v45 = 2112;
          v46 = v25;
          v26 = " [%s] %s:%d Source locale already set to required value of sourceLocale=%@";
          v27 = v24;
          v28 = 38;
LABEL_35:
          _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
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

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v29 = VRTraceErrorLogLevelToCSTR();
        v30 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v31 = *(a1 + 32);
          v32 = [*(v31 + 304) localeIdentifier];
          *buf = 136316418;
          v40 = v29;
          v41 = 2080;
          v42 = "[VCAudioCaptions setSourceLocale:]_block_invoke";
          v43 = 1024;
          v44 = 773;
          v45 = 2112;
          v46 = v19;
          v47 = 2048;
          v48 = v31;
          v49 = 2112;
          v50 = v32;
          v26 = " [%s] %s:%d %@(%p) Source locale already set to required value of sourceLocale=%@";
          v27 = v30;
          v28 = 58;
          goto LABEL_35;
        }
      }
    }
  }

  else
  {
    if (*(v18 + 184) != 2)
    {

      *(*(a1 + 32) + 304) = [*(a1 + 40) copy];
      [*(a1 + 32) reportSourceLocale];
      v21 = *(a1 + 32);
      v22 = *(v21 + 216);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __35__VCAudioCaptions_setSourceLocale___block_invoke_85;
      block[3] = &unk_1E85F3778;
      block[4] = v21;
      dispatch_async(v22, block);
      return;
    }

    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v33 = VRTraceErrorLogLevelToCSTR();
        v34 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v40 = v33;
          v41 = 2080;
          v42 = "[VCAudioCaptions setSourceLocale:]_block_invoke";
          v43 = 1024;
          v44 = 777;
          v26 = " [%s] %s:%d Source locale cannot be updated in SpeechRecognizerStateRunning";
          v27 = v34;
          v28 = 28;
          goto LABEL_35;
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v20 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v20 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v35 = VRTraceErrorLogLevelToCSTR();
        v36 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v37 = *(a1 + 32);
          *buf = 136316162;
          v40 = v35;
          v41 = 2080;
          v42 = "[VCAudioCaptions setSourceLocale:]_block_invoke";
          v43 = 1024;
          v44 = 777;
          v45 = 2112;
          v46 = v20;
          v47 = 2048;
          v48 = v37;
          v26 = " [%s] %s:%d %@(%p) Source locale cannot be updated in SpeechRecognizerStateRunning";
          v27 = v36;
          v28 = 48;
          goto LABEL_35;
        }
      }
    }
  }
}

uint64_t __35__VCAudioCaptions_setSourceLocale___block_invoke_85(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];

  return [v1 captions:? didChangeSourceLocale:?];
}

- (unsigned)taskHint
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  captionsQueue = self->_captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__VCAudioCaptions_taskHint__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(captionsQueue, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setTaskHint:(unsigned __int8)hint
{
  v6 = *MEMORY[0x1E69E9840];
  captionsQueue = self->_captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__VCAudioCaptions_setTaskHint___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  hintCopy = hint;
  dispatch_async(captionsQueue, block);
}

uint64_t __41__VCAudioCaptions_dispatchedSetTaskHint___block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 320) = *(a1 + 40);
  v2 = @"ACSpeechModel";
  v3[0] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*(*(a1 + 32) + 320)];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  return reportingGenericEvent();
}

- (BOOL)isExplicitLanguageFilterEnabled
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  captionsQueue = self->_captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__VCAudioCaptions_isExplicitLanguageFilterEnabled__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(captionsQueue, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setExplicitLanguageFilterEnabled:(BOOL)enabled
{
  v6 = *MEMORY[0x1E69E9840];
  captionsQueue = self->_captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__VCAudioCaptions_setExplicitLanguageFilterEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  enabledCopy = enabled;
  dispatch_async(captionsQueue, block);
}

uint64_t __62__VCAudioCaptions_dispatchedSetExplicitLanguageFilterEnabled___block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 321) = *(a1 + 40);
  v2 = @"ACExplicitLanguageFilterEnabled";
  v3[0] = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 321)];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  return reportingGenericEvent();
}

- (BOOL)isFormatForNewLinesEnabled
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  captionsQueue = self->_captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__VCAudioCaptions_isFormatForNewLinesEnabled__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(captionsQueue, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setFormatForNewLinesEnabled:(BOOL)enabled
{
  v6 = *MEMORY[0x1E69E9840];
  captionsQueue = self->_captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__VCAudioCaptions_setFormatForNewLinesEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  enabledCopy = enabled;
  dispatch_async(captionsQueue, block);
}

- (unsigned)callType
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  captionsQueue = self->_captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__VCAudioCaptions_callType__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(captionsQueue, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setCallType:(unsigned __int8)type
{
  v6 = *MEMORY[0x1E69E9840];
  captionsQueue = self->_captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__VCAudioCaptions_setCallType___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  typeCopy = type;
  dispatch_async(captionsQueue, block);
}

- (void)updateConfig:(id)config
{
  block[6] = *MEMORY[0x1E69E9840];
  captionsQueue = self->_captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__VCAudioCaptions_updateConfig___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = config;
  dispatch_async(captionsQueue, block);
}

uint64_t __32__VCAudioCaptions_updateConfig___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 40);

  return [v2 didConfigureCaptionsWithError:v3];
}

- (BOOL)shouldSetLocale:(id)locale withError:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_captionsQueue);
  if (self->_locale && ([objc_msgSend(locale "localeIdentifier")] & 1) == 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_14;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      localeIdentifier = [(NSLocale *)self->_locale localeIdentifier];
      *buf = 136316162;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioCaptions shouldSetLocale:withError:]";
      *&buf[22] = 1024;
      LODWORD(v20) = 954;
      WORD2(v20) = 2112;
      *(&v20 + 6) = localeIdentifier;
      HIWORD(v20) = 2112;
      selfCopy = [locale localeIdentifier];
      v12 = " [%s] %s:%d Attempting to overwrite existing locale=%@ with locale=%@";
      v13 = v10;
      v14 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCAudioCaptions *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3 || (v15 = VRTraceErrorLogLevelToCSTR(), v16 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
      {
LABEL_14:
        if (error)
        {
LABEL_15:
          v17 = +[VCSessionErrorUtils VCSessionCaptionsErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionCaptionsErrorEvent:errorPath:returnCode:", 10, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Captions/VCAudioCaptions.m", 958, *buf, *&buf[16], v20, selfCopy, *v22, *&v22[16], v23], 15);
          result = 0;
          *error = v17;
          return result;
        }

        return 0;
      }

      localeIdentifier2 = [(NSLocale *)self->_locale localeIdentifier];
      *buf = 136316674;
      *&buf[4] = v15;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioCaptions shouldSetLocale:withError:]";
      *&buf[22] = 1024;
      LODWORD(v20) = 954;
      WORD2(v20) = 2112;
      *(&v20 + 6) = v8;
      HIWORD(v20) = 2048;
      selfCopy = self;
      *v22 = 2112;
      *&v22[2] = localeIdentifier2;
      *&v22[10] = 2112;
      *&v22[12] = [locale localeIdentifier];
      v12 = " [%s] %s:%d %@(%p) Attempting to overwrite existing locale=%@ with locale=%@";
      v13 = v16;
      v14 = 68;
    }

    _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
    if (error)
    {
      goto LABEL_15;
    }

    return 0;
  }

  return 1;
}

- (BOOL)isTaskHintSetWithReturnCode:(int64_t *)code
{
  v29 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_captionsQueue);
  v5 = self->_taskHint - 1;
  if (v5 <= 1)
  {
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCAudioCaptions *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      taskHint = self->_taskHint;
      v17 = 136316418;
      v18 = v13;
      v19 = 2080;
      v20 = "[VCAudioCaptions isTaskHintSetWithReturnCode:]";
      v21 = 1024;
      v22 = 976;
      v23 = 2112;
      v24 = v6;
      v25 = 2048;
      selfCopy = self;
      v27 = 1024;
      v28 = taskHint;
      v10 = " [%s] %s:%d %@(%p) Attempting to overwrite taskHint=%d";
      v11 = v14;
      v12 = 54;
      goto LABEL_12;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = self->_taskHint;
        v17 = 136315906;
        v18 = v7;
        v19 = 2080;
        v20 = "[VCAudioCaptions isTaskHintSetWithReturnCode:]";
        v21 = 1024;
        v22 = 976;
        v23 = 1024;
        LODWORD(v24) = v9;
        v10 = " [%s] %s:%d Attempting to overwrite taskHint=%d";
        v11 = v8;
        v12 = 34;
LABEL_12:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v17, v12);
      }
    }
  }

LABEL_13:
  if (code)
  {
    *code = 16 * (v5 < 2);
  }

  return v5 < 2;
}

+ (BOOL)isTaskHintSupported:(unsigned __int8)supported withReturnCode:(int64_t *)code
{
  v9 = *MEMORY[0x1E69E9840];
  if (supported == 1)
  {
LABEL_4:
    v5 = 1;
    if (!code)
    {
      return v5;
    }

    goto LABEL_11;
  }

  if (supported == 2)
  {
    if (([+[VCSpeechFrameworkWrapper defaultSpeechFrameworkWrapper](VCSpeechFrameworkWrapper "defaultSpeechFrameworkWrapper")] & 1) == 0)
    {
      [VCAudioCaptions isTaskHintSupported:? withReturnCode:?];
      v5 = v8;
      if (!code)
      {
        return v5;
      }

      goto LABEL_11;
    }

    goto LABEL_4;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v5 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v5)
    {
      goto LABEL_10;
    }

    +[VCAudioCaptions isTaskHintSupported:withReturnCode:];
  }

  v5 = 0;
LABEL_10:
  if (!code)
  {
    return v5;
  }

LABEL_11:
  v6 = 17;
  if (v5)
  {
    v6 = 0;
  }

  *code = v6;
  return v5;
}

- (void)setLanguageDetectorEnabled:(BOOL)enabled
{
  v6 = *MEMORY[0x1E69E9840];
  captionsQueue = self->_captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__VCAudioCaptions_setLanguageDetectorEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  enabledCopy = enabled;
  dispatch_async(captionsQueue, block);
}

- (void)dispatchedSetLanguageDetectorEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v27 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_captionsQueue);
  if (VCDefaults_GetBoolValueForKey(@"languageDetectorEnabled", enabledCopy) && self->_useSpeechAnalyzerV2API)
  {
    self->_languageDetectorEnabled = [(VCAudioCaptions *)self enableLanguageDetector:enabledCopy];
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        languageDetectorEnabled = self->_languageDetectorEnabled;
        v15 = 136315906;
        v16 = v6;
        v17 = 2080;
        v18 = "[VCAudioCaptions dispatchedSetLanguageDetectorEnabled:]";
        v19 = 1024;
        v20 = 1040;
        v21 = 1024;
        LODWORD(v22) = languageDetectorEnabled;
        v9 = " [%s] %s:%d _languageDetectorEnabled=%d";
        v10 = v7;
        v11 = 34;
LABEL_14:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCAudioCaptions *)self performSelector:sel_logPrefix];
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
        v14 = self->_languageDetectorEnabled;
        v15 = 136316418;
        v16 = v12;
        v17 = 2080;
        v18 = "[VCAudioCaptions dispatchedSetLanguageDetectorEnabled:]";
        v19 = 1024;
        v20 = 1040;
        v21 = 2112;
        v22 = v5;
        v23 = 2048;
        selfCopy = self;
        v25 = 1024;
        v26 = v14;
        v9 = " [%s] %s:%d %@(%p) _languageDetectorEnabled=%d";
        v10 = v13;
        v11 = 54;
        goto LABEL_14;
      }
    }
  }

  reportingGenericEvent();
}

- (void)setLanguageDetectorReportingFrequency:(id)frequency
{
  block[6] = *MEMORY[0x1E69E9840];
  captionsQueue = self->_captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__VCAudioCaptions_setLanguageDetectorReportingFrequency___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = frequency;
  dispatch_async(captionsQueue, block);
}

- (void)dispatchedSetLanguageDetectorReportingFrequency:(id)frequency
{
  dispatch_assert_queue_V2(self->_captionsQueue);
  if (frequency)
  {

    self->_languageDetectorReportingFrequency = frequency;
  }
}

- (void)callCompletionHandler:(id)handler withResult:(BOOL)result
{
  if (handler)
  {
    (*(handler + 2))(handler, result);
  }
}

- (unsigned)translatorMode
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  captionsQueue = self->_captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__VCAudioCaptions_translatorMode__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(captionsQueue, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setTranslatorMode:(unsigned __int8)mode
{
  v6 = *MEMORY[0x1E69E9840];
  captionsQueue = self->_captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__VCAudioCaptions_setTranslatorMode___block_invoke;
  block[3] = &unk_1E85F37A0;
  modeCopy = mode;
  block[4] = self;
  dispatch_async(captionsQueue, block);
}

void __37__VCAudioCaptions_setTranslatorMode___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 != *(v3 + 345))
  {
    *(v3 + 345) = v2;
    return;
  }

  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v15 = 136315906;
        v16 = v5;
        v17 = 2080;
        v18 = "[VCAudioCaptions setTranslatorMode:]_block_invoke";
        v19 = 1024;
        v20 = 1077;
        v21 = 1024;
        LODWORD(v22) = v7;
        v8 = " [%s] %s:%d Already in the desired translatorMode=%d";
        v9 = v6;
        v10 = 34;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v15, v10);
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

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v14 = *(a1 + 40);
        v15 = 136316418;
        v16 = v11;
        v17 = 2080;
        v18 = "[VCAudioCaptions setTranslatorMode:]_block_invoke";
        v19 = 1024;
        v20 = 1077;
        v21 = 2112;
        v22 = v4;
        v23 = 2048;
        v24 = v13;
        v25 = 1024;
        v26 = v14;
        v8 = " [%s] %s:%d %@(%p) Already in the desired translatorMode=%d";
        v9 = v12;
        v10 = 54;
        goto LABEL_13;
      }
    }
  }
}

- (void)updateCaptionsUtteranceDuration
{
  v22 = *MEMORY[0x1E69E9840];
  lastAudioProcessedTime = self->_lastAudioProcessedTime;
  v3 = CMTimeGetSeconds(&lastAudioProcessedTime) - self->_captionsLastUtteranceStart;
  self->_captionsUtteranceDuration = v3 + self->_captionsUtteranceDuration;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        captionTaskCount = self->_captionTaskCount;
        LODWORD(lastAudioProcessedTime.value) = 136316162;
        *(&lastAudioProcessedTime.value + 4) = v5;
        LOWORD(lastAudioProcessedTime.flags) = 2080;
        *(&lastAudioProcessedTime.flags + 2) = "[VCAudioCaptions updateCaptionsUtteranceDuration]";
        HIWORD(lastAudioProcessedTime.epoch) = 1024;
        v15 = 1087;
        v16 = 1024;
        *v17 = captionTaskCount;
        *&v17[4] = 2048;
        *&v17[6] = v3;
        v8 = " [%s] %s:%d Ending currentTaskCount=%d utteranceDuration=%f";
        v9 = v6;
        v10 = 44;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &lastAudioProcessedTime, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [(VCAudioCaptions *)self performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = self->_captionTaskCount;
        LODWORD(lastAudioProcessedTime.value) = 136316674;
        *(&lastAudioProcessedTime.value + 4) = v11;
        LOWORD(lastAudioProcessedTime.flags) = 2080;
        *(&lastAudioProcessedTime.flags + 2) = "[VCAudioCaptions updateCaptionsUtteranceDuration]";
        HIWORD(lastAudioProcessedTime.epoch) = 1024;
        v15 = 1087;
        v16 = 2112;
        *v17 = v4;
        *&v17[8] = 2048;
        *&v17[10] = self;
        v18 = 1024;
        v19 = v13;
        v20 = 2048;
        v21 = v3;
        v8 = " [%s] %s:%d %@(%p) Ending currentTaskCount=%d utteranceDuration=%f";
        v9 = v12;
        v10 = 64;
        goto LABEL_11;
      }
    }
  }
}

void __VCAudioCaptions_ConvertSamplesToPCM_block_invoke(uint64_t a1)
{
  CFAllocatorDeallocate(*(*(*(a1 + 32) + 8) + 24), *(a1 + 40));
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {

    CFRelease(v2);
  }
}

- (BOOL)reallocCopyBufferAllocatorWithFormat:(const AudioStreamBasicDescription *)format
{
  v45 = *MEMORY[0x1E69E9840];
  _VCAudioCaptions_DestroyCopyBufferAllocator(self);
  if ((VCMemoryUtil_IsAddressSanitizerEnabled() & 1) != 0 || VCMemoryUtil_IsProbabilisticGuardMallocEnabled())
  {
    self->_copyBufferAllocator = *MEMORY[0x1E695E480];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_18;
      }

      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v31 = 136315650;
      v32 = v7;
      v33 = 2080;
      v34 = "[VCAudioCaptions reallocCopyBufferAllocatorWithFormat:]";
      v35 = 1024;
      v36 = 1166;
      v9 = " [%s] %s:%d Disable copy buffer pool allocator. Use default allocator instead.";
      v10 = v8;
      v11 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCAudioCaptions *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_18;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v31 = 136316162;
      v32 = v16;
      v33 = 2080;
      v34 = "[VCAudioCaptions reallocCopyBufferAllocatorWithFormat:]";
      v35 = 1024;
      v36 = 1166;
      v37 = 2112;
      *v38 = v6;
      *&v38[8] = 2048;
      *v39 = self;
      v9 = " [%s] %s:%d %@(%p) Disable copy buffer pool allocator. Use default allocator instead.";
      v10 = v17;
      v11 = 48;
    }

LABEL_17:
    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v31, v11);
LABEL_18:
    LOBYTE(v18) = 1;
    return v18;
  }

  LODWORD(v5) = format->mBytesPerPacket;
  v12 = (format->mSampleRate * v5 * 20.0 / 1000.0);
  v13 = VCAudioBufferAllocatorCreate(*MEMORY[0x1E695E480], v12, 2u);
  self->_copyBufferAllocator = v13;
  v14 = objc_opt_class();
  if (v13)
  {
    if (v14 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_18;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      mSampleRate = format->mSampleRate;
      mBytesPerPacket = format->mBytesPerPacket;
      v31 = 136316418;
      v32 = v20;
      v33 = 2080;
      v34 = "[VCAudioCaptions reallocCopyBufferAllocatorWithFormat:]";
      v35 = 1024;
      v36 = 1174;
      v37 = 1024;
      *v38 = mSampleRate;
      *&v38[4] = 1024;
      *&v38[6] = mBytesPerPacket;
      *v39 = 2048;
      *&v39[2] = v12;
      v9 = " [%s] %s:%d Create captions copy buffer allocator: sampleRate=%d bytesPerPacket=%d bufferSize=%zu";
      v10 = v21;
      v11 = 50;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = [(VCAudioCaptions *)self performSelector:sel_logPrefix];
      }

      else
      {
        v15 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_18;
      }

      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v26 = format->mSampleRate;
      v27 = format->mBytesPerPacket;
      v31 = 136316930;
      v32 = v24;
      v33 = 2080;
      v34 = "[VCAudioCaptions reallocCopyBufferAllocatorWithFormat:]";
      v35 = 1024;
      v36 = 1174;
      v37 = 2112;
      *v38 = v15;
      *&v38[8] = 2048;
      *v39 = self;
      *&v39[8] = 1024;
      v40 = v26;
      v41 = 1024;
      v42 = v27;
      v43 = 2048;
      v44 = v12;
      v9 = " [%s] %s:%d %@(%p) Create captions copy buffer allocator: sampleRate=%d bytesPerPacket=%d bufferSize=%zu";
      v10 = v25;
      v11 = 70;
    }

    goto LABEL_17;
  }

  if (v14 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v18 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v18)
      {
        return v18;
      }

      [VCAudioCaptions reallocCopyBufferAllocatorWithFormat:];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v19 = [(VCAudioCaptions *)self performSelector:sel_logPrefix];
    }

    else
    {
      v19 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x1E6986650];
      v18 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v18)
      {
        return v18;
      }

      v31 = 136316162;
      v32 = v28;
      v33 = 2080;
      v34 = "[VCAudioCaptions reallocCopyBufferAllocatorWithFormat:]";
      v35 = 1024;
      v36 = 1171;
      v37 = 2112;
      *v38 = v19;
      *&v38[8] = 2048;
      *v39 = self;
      _os_log_error_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create the copy buffer allocator for captions", &v31, 0x30u);
    }
  }

  LOBYTE(v18) = 0;
  return v18;
}

- (void)start:(const AudioStreamBasicDescription *)start forToken:(int64_t)token withCompletionHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  mSampleRate = start->mSampleRate;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__VCAudioCaptions_start_forToken_withCompletionHandler___block_invoke;
  block[3] = &unk_1E85F4E70;
  block[5] = handler;
  block[6] = token;
  block[4] = self;
  *&block[7] = mSampleRate;
  v7 = *&start->mBytesPerFrame;
  v10 = *&start->mFormatID;
  v11 = v7;
  v8 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, block);
  dispatch_async(self->_captionsQueue, v8);
}

uint64_t __56__VCAudioCaptions_start_forToken_withCompletionHandler___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 552) = *(a1 + 48);
  v2 = *(*(a1 + 32) + 170);
  v3 = objc_opt_class();
  v4 = *(a1 + 32);
  if (v2 != 1)
  {
    if (v3 == v4)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1 + 48);
          *v50 = 136315906;
          *&v50[4] = v7;
          *&v50[12] = 2080;
          *&v50[14] = "[VCAudioCaptions start:forToken:withCompletionHandler:]_block_invoke";
          *&v50[22] = 1024;
          *&v50[24] = 1189;
          *&v50[28] = 2048;
          *&v50[30] = v9;
          v10 = " [%s] %s:%d Starting the speech processing for token=%ld";
          v11 = v8;
          v12 = 38;
LABEL_23:
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, v50, v12);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(a1 + 32);
          v21 = *(a1 + 48);
          *v50 = 136316418;
          *&v50[4] = v18;
          *&v50[12] = 2080;
          *&v50[14] = "[VCAudioCaptions start:forToken:withCompletionHandler:]_block_invoke";
          *&v50[22] = 1024;
          *&v50[24] = 1189;
          *&v50[28] = 2112;
          *&v50[30] = v6;
          *&v50[38] = 2048;
          v51 = v20;
          *v52 = 2048;
          *&v52[2] = v21;
          v10 = " [%s] %s:%d %@(%p) Starting the speech processing for token=%ld";
          v11 = v19;
          v12 = 58;
          goto LABEL_23;
        }
      }
    }

    if (!+[VCAudioCaptions shouldAllocateNewAllocator:streamDesc:referenceStreamDesc:](VCAudioCaptions, "shouldAllocateNewAllocator:streamDesc:referenceStreamDesc:", *(*(a1 + 32) + 224), a1 + 56, [*(*(a1 + 32) + 488) asbdPointer]))
    {
      goto LABEL_41;
    }

    v22 = [*(a1 + 32) reallocCopyBufferAllocatorWithFormat:a1 + 56];
    v15 = *(a1 + 32);
    if ((v22 & 1) == 0)
    {
      goto LABEL_60;
    }

    if (*(v15 + 240))
    {
      CFRelease(*(v15 + 240));
      *(*(a1 + 32) + 240) = 0;
    }

    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_39;
      }

      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_39;
      }

      v27 = *(a1 + 56);
      v28 = *(a1 + 72);
      v29 = 274877907 * (v27 * v28 * 20.0);
      *v50 = 136316418;
      *&v50[4] = v25;
      *&v50[12] = 2080;
      *&v50[14] = "[VCAudioCaptions start:forToken:withCompletionHandler:]_block_invoke";
      *&v50[22] = 1024;
      *&v50[24] = 1196;
      *&v50[28] = 1024;
      *&v50[30] = v27;
      *&v50[34] = 1024;
      *&v50[36] = v28;
      LOWORD(v51) = 1024;
      *(&v51 + 2) = (v29 >> 38) + (v29 >> 63);
      v30 = " [%s] %s:%d Create PCM copy buffer allocator: sampleRate=%d, bytesPerPacket=%d, capacity=%d";
      v31 = v26;
      v32 = 46;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v23 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v23 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_39;
      }

      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_39;
      }

      v35 = *(a1 + 56);
      v36 = *(a1 + 72);
      v37 = *(a1 + 32);
      v38 = 274877907 * (v35 * v36 * 20.0);
      *v50 = 136316930;
      *&v50[4] = v33;
      *&v50[12] = 2080;
      *&v50[14] = "[VCAudioCaptions start:forToken:withCompletionHandler:]_block_invoke";
      *&v50[22] = 1024;
      *&v50[24] = 1196;
      *&v50[28] = 2112;
      *&v50[30] = v23;
      *&v50[38] = 2048;
      v51 = v37;
      *v52 = 1024;
      *&v52[2] = v35;
      *&v52[6] = 1024;
      *&v52[8] = v36;
      *&v52[12] = 1024;
      *&v52[14] = (v38 >> 63) + (SHIDWORD(v38) >> 6);
      v30 = " [%s] %s:%d %@(%p) Create PCM copy buffer allocator: sampleRate=%d, bytesPerPacket=%d, capacity=%d";
      v31 = v34;
      v32 = 66;
    }

    _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, v30, v50, v32);
LABEL_39:
    LODWORD(v24) = *(a1 + 72);
    *(*(a1 + 32) + 240) = VCAudioBufferAllocatorCreate(*MEMORY[0x1E695E480], (*(a1 + 56) * v24 * 20.0 / 1000.0), 2u);
    v39 = *(a1 + 32);
    if (*(v39 + 240))
    {
      *(v39 + 536) = 1;
LABEL_41:
      v40 = *(*(a1 + 32) + 488);
      v41 = *(a1 + 72);
      *v50 = *(a1 + 56);
      *&v50[16] = v41;
      *&v50[32] = *(a1 + 88);
      [v40 setAsbd:v50];
      v42 = *(a1 + 32);
      if (*(v42 + 168) == 1 && (*v50 = 0, v43 = [v42 transitionToState:2 withReason:2 error:v50], v42 = *(a1 + 32), (v43 & 1) == 0))
      {
        _VCAudioCaptions_DestroyCopyBufferAllocator(v42);
        v42 = *(a1 + 32);
        if (*(v42 + 240))
        {
          CFRelease(*(v42 + 240));
          v17 = 0;
          *(*(a1 + 32) + 240) = 0;
          v42 = *(a1 + 32);
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 1;
      }

      *(v42 + 170) = v17;
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      return [v15 callCompletionHandler:v16 withResult:{v17, *v50, *&v50[16], *&v50[24], v51, *v52, *&v52[8], v53}];
    }

    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __56__VCAudioCaptions_start_forToken_withCompletionHandler___block_invoke_cold_1();
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v44 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v44 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v45 = VRTraceErrorLogLevelToCSTR();
        v46 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v49 = *(a1 + 32);
          *v50 = 136316162;
          *&v50[4] = v45;
          *&v50[12] = 2080;
          *&v50[14] = "[VCAudioCaptions start:forToken:withCompletionHandler:]_block_invoke";
          *&v50[22] = 1024;
          *&v50[24] = 1199;
          *&v50[28] = 2112;
          *&v50[30] = v44;
          *&v50[38] = 2048;
          v51 = v49;
          _os_log_error_impl(&dword_1DB56E000, v46, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create the PCM copy buffer allocator for captions", v50, 0x30u);
        }
      }
    }

    v15 = *(a1 + 32);
    if (*(v15 + 224))
    {
      _VCAudioCaptions_DestroyCopyBufferAllocator(v15);
      v15 = *(a1 + 32);
    }

LABEL_60:
    v16 = *(a1 + 40);
    v17 = 0;
    return [v15 callCompletionHandler:v16 withResult:{v17, *v50, *&v50[16], *&v50[24], v51, *v52, *&v52[8], v53}];
  }

  if (v3 == v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __56__VCAudioCaptions_start_forToken_withCompletionHandler___block_invoke_cold_2();
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v48 = *(a1 + 32);
        *v50 = 136316162;
        *&v50[4] = v13;
        *&v50[12] = 2080;
        *&v50[14] = "[VCAudioCaptions start:forToken:withCompletionHandler:]_block_invoke";
        *&v50[22] = 1024;
        *&v50[24] = 1185;
        *&v50[28] = 2112;
        *&v50[30] = v5;
        *&v50[38] = 2048;
        v51 = v48;
        _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Starting speech processing but it is already started", v50, 0x30u);
      }
    }
  }

  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = 1;
  return [v15 callCompletionHandler:v16 withResult:{v17, *v50, *&v50[16], *&v50[24], v51, *v52, *&v52[8], v53}];
}

- (void)stopWithCompletionHandler:(id)handler
{
  block[6] = *MEMORY[0x1E69E9840];
  captionsQueue = self->_captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__VCAudioCaptions_stopWithCompletionHandler___block_invoke;
  block[3] = &unk_1E85F4E98;
  block[4] = self;
  block[5] = handler;
  dispatch_async(captionsQueue, block);
}

uint64_t __45__VCAudioCaptions_stopWithCompletionHandler___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v2 = *(a1 + 32);
  if (*(v2 + 170))
  {
    *(v2 + 170) = 0;
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 7 || (v5 = VRTraceErrorLogLevelToCSTR(), v6 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
      {
LABEL_19:
        v15 = *(a1 + 32);
        if (v15[46] == 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = [v15 transitionToState:1 withReason:2 error:&v22];
          v15 = *(a1 + 32);
        }

        v17 = *(a1 + 40);
        return [v15 callCompletionHandler:v17 withResult:v16];
      }

      v7 = *(*(a1 + 32) + 552);
      *buf = 136315906;
      v24 = v5;
      v25 = 2080;
      v26 = "[VCAudioCaptions stopWithCompletionHandler:]_block_invoke";
      v27 = 1024;
      v28 = 1239;
      v29 = 2048;
      v30 = v7;
      v8 = " [%s] %s:%d Stopping the speech captions processing for token=%ld";
      v9 = v6;
      v10 = 38;
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

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_19;
      }

      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v13 = *(a1 + 32);
      v14 = *(v13 + 552);
      *buf = 136316418;
      v24 = v11;
      v25 = 2080;
      v26 = "[VCAudioCaptions stopWithCompletionHandler:]_block_invoke";
      v27 = 1024;
      v28 = 1239;
      v29 = 2112;
      v30 = v3;
      v31 = 2048;
      v32 = v13;
      v33 = 2048;
      v34 = v14;
      v8 = " [%s] %s:%d %@(%p) Stopping the speech captions processing for token=%ld";
      v9 = v12;
      v10 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    goto LABEL_19;
  }

  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __45__VCAudioCaptions_stopWithCompletionHandler___block_invoke_cold_1();
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
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 32);
        *buf = 136316162;
        v24 = v18;
        v25 = 2080;
        v26 = "[VCAudioCaptions stopWithCompletionHandler:]_block_invoke";
        v27 = 1024;
        v28 = 1234;
        v29 = 2112;
        v30 = v4;
        v31 = 2048;
        v32 = v21;
        _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Stopping speech captions processing but it is already stopped", buf, 0x30u);
      }
    }
  }

  v15 = *(a1 + 32);
  v17 = *(a1 + 40);
  v16 = 0;
  return [v15 callCompletionHandler:v17 withResult:v16];
}

- (id)taskInfoForTask:(id)task
{
  v37 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  captionTasks = self->_captionTasks;
  v6 = [(NSMutableArray *)captionTasks countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (!v6)
  {
LABEL_9:
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        return 0;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v20 = 136315906;
      v21 = v12;
      v22 = 2080;
      v23 = "[VCAudioCaptions taskInfoForTask:]";
      v24 = 1024;
      v25 = 1255;
      v26 = 2048;
      taskCopy = task;
      v14 = " [%s] %s:%d We could not find the corresponding taskInfo for the task=%p";
      v15 = v13;
      v16 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [(VCAudioCaptions *)self performSelector:sel_logPrefix];
      }

      else
      {
        v11 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        return 0;
      }

      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v20 = 136316418;
      v21 = v17;
      v22 = 2080;
      v23 = "[VCAudioCaptions taskInfoForTask:]";
      v24 = 1024;
      v25 = 1255;
      v26 = 2112;
      taskCopy = v11;
      v28 = 2048;
      selfCopy = self;
      v30 = 2048;
      taskCopy2 = task;
      v14 = " [%s] %s:%d %@(%p) We could not find the corresponding taskInfo for the task=%p";
      v15 = v18;
      v16 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, &v20, v16);
    return 0;
  }

  v7 = v6;
  v8 = *v34;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v34 != v8)
    {
      objc_enumerationMutation(captionTasks);
    }

    v10 = *(*(&v33 + 1) + 8 * v9);
    if ([v10 task] == task)
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [(NSMutableArray *)captionTasks countByEnumeratingWithState:&v33 objects:v32 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      goto LABEL_9;
    }
  }
}

- (opaqueCMSampleBuffer)createSampleBufferWithFormat:(const AudioStreamBasicDescription *)format samples:(char *)samples numSamples:(int)numSamples
{
  v44 = *MEMORY[0x1E69E9840];
  formatDescriptionOut = 0;
  sbuf = 0;
  mBytesPerPacket = format->mBytesPerPacket;
  mSampleRate = format->mSampleRate;
  self->_timescale = mSampleRate;
  v9 = mBytesPerPacket * numSamples;
  currentTime = self->_currentTime;
  epoch = self->_epoch;
  self->_currentTime = currentTime + numSamples;
  if (numSamples < 0)
  {
    ++self->_epoch;
  }

  *(&bufferList.mNumberBuffers + 1) = -1431655766;
  bufferList.mNumberBuffers = 1;
  bufferList.mBuffers[0].mNumberChannels = 1;
  bufferList.mBuffers[0].mDataByteSize = v9;
  bufferList.mBuffers[0].mData = samples;
  v12 = *MEMORY[0x1E695E480];
  if (CMAudioFormatDescriptionCreate(*MEMORY[0x1E695E480], format, 0, 0, 0, 0, 0, &formatDescriptionOut))
  {
    [VCAudioCaptions createSampleBufferWithFormat:&presentationTimeStamp samples:? numSamples:?];
    return presentationTimeStamp.value;
  }

  presentationTimeStamp.value = currentTime;
  presentationTimeStamp.timescale = mSampleRate;
  presentationTimeStamp.flags = 1;
  presentationTimeStamp.epoch = epoch;
  v13 = CMAudioSampleBufferCreateWithPacketDescriptions(v12, 0, 0, 0, 0, formatDescriptionOut, numSamples, &presentationTimeStamp, 0, &sbuf);
  CFRelease(formatDescriptionOut);
  if (v13)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 0;
      }

      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      LODWORD(presentationTimeStamp.value) = 136315906;
      *(&presentationTimeStamp.value + 4) = v19;
      LOWORD(presentationTimeStamp.flags) = 2080;
      *(&presentationTimeStamp.flags + 2) = "[VCAudioCaptions createSampleBufferWithFormat:samples:numSamples:]";
      HIWORD(presentationTimeStamp.epoch) = 1024;
      v36 = 1292;
      v37 = 1024;
      LODWORD(v38) = v13;
      v21 = " [%s] %s:%d Failed to create the CMSampleBuffer description for captions: %d";
      v22 = v20;
      v23 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v16 = [(VCAudioCaptions *)self performSelector:sel_logPrefix];
      }

      else
      {
        v16 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 0;
      }

      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      LODWORD(presentationTimeStamp.value) = 136316418;
      *(&presentationTimeStamp.value + 4) = v29;
      LOWORD(presentationTimeStamp.flags) = 2080;
      *(&presentationTimeStamp.flags + 2) = "[VCAudioCaptions createSampleBufferWithFormat:samples:numSamples:]";
      HIWORD(presentationTimeStamp.epoch) = 1024;
      v36 = 1292;
      v37 = 2112;
      v38 = v16;
      v39 = 2048;
      selfCopy2 = self;
      v41 = 1024;
      v42 = v13;
      v21 = " [%s] %s:%d %@(%p) Failed to create the CMSampleBuffer description for captions: %d";
      v22 = v30;
      v23 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, v21, &presentationTimeStamp, v23);
    return 0;
  }

  v14 = CMSampleBufferSetDataBufferFromAudioBufferList(sbuf, v12, self->_audioBufferAllocator, 0, &bufferList);
  if (!v14)
  {
    return sbuf;
  }

  v17 = v14;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(presentationTimeStamp.value) = 136315906;
        *(&presentationTimeStamp.value + 4) = v24;
        LOWORD(presentationTimeStamp.flags) = 2080;
        *(&presentationTimeStamp.flags + 2) = "[VCAudioCaptions createSampleBufferWithFormat:samples:numSamples:]";
        HIWORD(presentationTimeStamp.epoch) = 1024;
        v36 = 1295;
        v37 = 1024;
        LODWORD(v38) = v17;
        v26 = " [%s] %s:%d Failed to create the CMSampleBuffer for captions: %d";
        v27 = v25;
        v28 = 34;
LABEL_30:
        _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, v26, &presentationTimeStamp, v28);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v18 = [(VCAudioCaptions *)self performSelector:sel_logPrefix];
    }

    else
    {
      v18 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(presentationTimeStamp.value) = 136316418;
        *(&presentationTimeStamp.value + 4) = v31;
        LOWORD(presentationTimeStamp.flags) = 2080;
        *(&presentationTimeStamp.flags + 2) = "[VCAudioCaptions createSampleBufferWithFormat:samples:numSamples:]";
        HIWORD(presentationTimeStamp.epoch) = 1024;
        v36 = 1295;
        v37 = 2112;
        v38 = v18;
        v39 = 2048;
        selfCopy2 = self;
        v41 = 1024;
        v42 = v17;
        v26 = " [%s] %s:%d %@(%p) Failed to create the CMSampleBuffer for captions: %d";
        v27 = v32;
        v28 = 54;
        goto LABEL_30;
      }
    }
  }

  result = sbuf;
  if (sbuf)
  {
    CFRelease(sbuf);
    return 0;
  }

  return result;
}

- (id)newPCMSampleBufferWithSamples:(char *)samples numSamples:(int)numSamples pcmFormat:(id)format
{
  v66 = *MEMORY[0x1E69E9840];
  v62 = 0;
  inputFormat = self->_inputFormat;
  if (inputFormat)
  {
    [(ASBDWrapper *)inputFormat asbd];
    v10 = v45;
  }

  else
  {
    v10 = 0;
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
  }

  v11 = (v10 * numSamples);
  v12 = MEMORY[0x1E1288880](self->_pcmCopyBufferAllocator, v11, 3961529423, 0);
  v13 = v12;
  if (!v12)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 0;
      }

      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v19 = self->_inputFormat;
      if (v19)
      {
        [(ASBDWrapper *)v19 asbd];
        v20 = v42;
      }

      else
      {
        v20 = 0;
        v43 = 0;
        v41 = 0u;
        v42 = 0u;
      }

      *buf = 136316418;
      v48 = v17;
      v49 = 2080;
      v50 = "[VCAudioCaptions newPCMSampleBufferWithSamples:numSamples:pcmFormat:]";
      v51 = 1024;
      v52 = 1314;
      v53 = 1024;
      *v54 = numSamples;
      *&v54[4] = 1024;
      *&v54[6] = v20;
      LOWORD(selfCopy2) = 1024;
      *(&selfCopy2 + 2) = v11;
      v26 = " [%s] %s:%d Failed to allocate PCM buffer for captions: numSamples=%d,  bytesPerPacket=%d, totalCapacity=%d";
      v27 = v18;
      v28 = 46;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v16 = [(VCAudioCaptions *)self performSelector:sel_logPrefix];
      }

      else
      {
        v16 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 0;
      }

      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v24 = self->_inputFormat;
      if (v24)
      {
        [(ASBDWrapper *)v24 asbd];
        v25 = v39;
      }

      else
      {
        v25 = 0;
        v40 = 0;
        v38 = 0u;
        v39 = 0u;
      }

      *buf = 136316930;
      v48 = v21;
      v49 = 2080;
      v50 = "[VCAudioCaptions newPCMSampleBufferWithSamples:numSamples:pcmFormat:]";
      v51 = 1024;
      v52 = 1314;
      v53 = 2112;
      *v54 = v16;
      *&v54[8] = 2048;
      selfCopy2 = self;
      v56 = 1024;
      numSamplesCopy = numSamples;
      v58 = 1024;
      v59 = v25;
      v60 = 1024;
      v61 = v11;
      v26 = " [%s] %s:%d %@(%p) Failed to allocate PCM buffer for captions: numSamples=%d,  bytesPerPacket=%d, totalCapacity=%d";
      v27 = v22;
      v28 = 66;
    }

    _os_log_error_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
    return 0;
  }

  memcpy(v12, samples, v11);
  LODWORD(v62) = 1;
  v63 = 1;
  v64 = v11;
  v65 = v13;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  pcmCopyBufferAllocator = self->_pcmCopyBufferAllocator;
  if (pcmCopyBufferAllocator)
  {
    pcmCopyBufferAllocator = CFRetain(pcmCopyBufferAllocator);
  }

  v37 = pcmCopyBufferAllocator;
  self->_timescale = *[(AVAudioFormat *)self->_frameworkAudioFormat streamDescription:MEMORY[0x1E69E9820]];
  self->_currentTime += numSamples;
  if (numSamples < 0)
  {
    ++self->_epoch;
  }

  v15 = [objc_alloc(MEMORY[0x1E6958440]) initWithPCMFormat:format bufferListNoCopy:&v62 deallocator:&v33];
  if (!v15)
  {
    CFAllocatorDeallocate(v35[3], v13);
    v29 = v35[3];
    if (v29)
    {
      CFRelease(v29);
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioCaptions newPCMSampleBufferWithSamples:numSamples:pcmFormat:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v30 = [(VCAudioCaptions *)self performSelector:sel_logPrefix];
      }

      else
      {
        v30 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v31 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v48 = v31;
          v49 = 2080;
          v50 = "[VCAudioCaptions newPCMSampleBufferWithSamples:numSamples:pcmFormat:]";
          v51 = 1024;
          v52 = 1333;
          v53 = 2112;
          *v54 = v30;
          *&v54[8] = 2048;
          selfCopy2 = self;
          _os_log_error_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to init PCM audio buffer.", buf, 0x30u);
        }
      }
    }
  }

  _Block_object_dispose(&v34, 8);
  return v15;
}

void __70__VCAudioCaptions_newPCMSampleBufferWithSamples_numSamples_pcmFormat___block_invoke(uint64_t a1)
{
  CFAllocatorDeallocate(*(*(*(a1 + 32) + 8) + 24), *(a1 + 40));
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {

    CFRelease(v2);
  }
}

- (BOOL)updateAudioConverterForStreamDescription:(const AudioStreamBasicDescription *)description
{
  v9 = *MEMORY[0x1E69E9840];
  inAudioConverter = 0;
  if (description)
  {
    if (![VCAudioCaptions shouldAllocateNewAllocator:self->_audioConverter streamDesc:description referenceStreamDesc:[(ASBDWrapper *)self->_captionsFormat asbdPointer]]&& !self->_inputFormatDidChange)
    {
      return 1;
    }

    if ([(VCAudioCaptions *)self createAudioConverterWithInputFormat:[(ASBDWrapper *)self->_inputFormat asbdPointer:inAudioConverter] outputFormat:description converter:&inAudioConverter])
    {
      self->_inputFormatDidChange = 0;
      audioConverter = self->_audioConverter;
      if (audioConverter != inAudioConverter)
      {
        if (audioConverter)
        {
          AudioConverterDispose(audioConverter);
          self->_audioConverter = 0;
          self->_isAudioConverterActive = 0;
        }

        CFAllocatorDeallocate(self->_previousConverterSamplesAllocator, self->_previousConverterSamples);
        self->_previousConverterSamples = 0;
        previousConverterSamplesAllocator = self->_previousConverterSamplesAllocator;
        self->_previousConverterSamplesAllocator = 0;
        if (previousConverterSamplesAllocator)
        {
          CFRelease(previousConverterSamplesAllocator);
        }

        self->_audioConverter = inAudioConverter;
        self->_isAudioConverterActive = 0;
      }

      return 1;
    }

    [VCAudioCaptions updateAudioConverterForStreamDescription:?];
  }

  else
  {
    [VCAudioCaptions updateAudioConverterForStreamDescription:?];
  }

  result = inAudioConverter;
  if (inAudioConverter)
  {
    AudioConverterDispose(inAudioConverter);
    return 0;
  }

  return result;
}

- (void)pushAudioSamples:(opaqueVCAudioBufferList *)samples
{
  v43 = *MEMORY[0x1E69E9840];
  if (self->_isEnabled && self->_isStarted)
  {
    SampleCount = VCAudioBufferList_GetSampleCount(samples);
    AudioBufferList = VCAudioBufferList_GetAudioBufferList(samples);
    HostTime = VCAudioBufferList_GetHostTime(samples);
    SampleFormat = VCAudioBufferList_GetSampleFormat(samples);
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = MEMORY[0x1E1288880](self->_copyBufferAllocator, (*(SampleFormat + 16) * SampleCount), 695489742, 0);
    v9 = v25[3];
    if (v9)
    {
      memcpy(v9, *(AudioBufferList + 16), (*(SampleFormat + 16) * SampleCount));
      copyBufferAllocator = self->_copyBufferAllocator;
      if (copyBufferAllocator)
      {
        copyBufferAllocator = CFRetain(copyBufferAllocator);
      }

      captionsQueue = self->_captionsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__VCAudioCaptions_pushAudioSamples___block_invoke;
      block[3] = &unk_1E85F4EC0;
      block[4] = self;
      block[5] = &v24;
      block[6] = copyBufferAllocator;
      v23 = SampleCount;
      *&block[7] = HostTime;
      dispatch_async(captionsQueue, block);
      goto LABEL_7;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_7;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v15 = *(SampleFormat + 16);
      *buf = 136316418;
      v29 = v13;
      v30 = 2080;
      v31 = "[VCAudioCaptions pushAudioSamples:]";
      v32 = 1024;
      v33 = 1420;
      v34 = 1024;
      *v35 = SampleCount;
      *&v35[4] = 1024;
      *&v35[6] = v15;
      LOWORD(selfCopy) = 1024;
      *(&selfCopy + 2) = v15 * SampleCount;
      v16 = " [%s] %s:%d Failed to allocate copy buffer for captions: %d %d %d";
      v17 = v14;
      v18 = 46;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [(VCAudioCaptions *)self performSelector:sel_logPrefix];
      }

      else
      {
        v12 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_7;
      }

      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v21 = *(SampleFormat + 16);
      *buf = 136316930;
      v29 = v19;
      v30 = 2080;
      v31 = "[VCAudioCaptions pushAudioSamples:]";
      v32 = 1024;
      v33 = 1420;
      v34 = 2112;
      *v35 = v12;
      *&v35[8] = 2048;
      selfCopy = self;
      v37 = 1024;
      v38 = SampleCount;
      v39 = 1024;
      v40 = v21;
      v41 = 1024;
      v42 = v21 * SampleCount;
      v16 = " [%s] %s:%d %@(%p) Failed to allocate copy buffer for captions: %d %d %d";
      v17 = v20;
      v18 = 66;
    }

    _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
LABEL_7:
    _Block_object_dispose(&v24, 8);
  }
}

void __36__VCAudioCaptions_pushAudioSamples___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(a1 + 48) != *(v2 + 224))
  {
    CFAllocatorDeallocate(*(v2 + 456), *(v2 + 448));
    *(v2 + 448) = 0;
    v3 = *(v2 + 456);
    *(v2 + 456) = 0;
    if (v3)
    {
      CFRelease(v3);
    }

    CFAllocatorDeallocate(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24));
    goto LABEL_30;
  }

  v4 = [*(a1 + 32) shouldPushSamples];
  v5 = *(a1 + 32);
  if (!v4)
  {
    if (v5[472] != 1)
    {
      goto LABEL_26;
    }

    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_25;
      }

      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      if (*(*(a1 + 32) + 172))
      {
        v9 = "V2";
      }

      else
      {
        v9 = "V1";
      }

      v22 = 136315906;
      v23 = v7;
      v24 = 2080;
      v25 = "[VCAudioCaptions pushAudioSamples:]_block_invoke";
      v26 = 1024;
      v27 = 1435;
      v28 = 2080;
      v29 = v9;
      v10 = " [%s] %s:%d Reset audio converter for ASR version=%s";
      v11 = v8;
      v12 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_25;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      v15 = *(a1 + 32);
      if (*(v15 + 172))
      {
        v16 = "V2";
      }

      else
      {
        v16 = "V1";
      }

      v22 = 136316418;
      v23 = v13;
      v24 = 2080;
      v25 = "[VCAudioCaptions pushAudioSamples:]_block_invoke";
      v26 = 1024;
      v27 = 1435;
      v28 = 2112;
      v29 = v6;
      v30 = 2048;
      v31 = v15;
      v32 = 2080;
      v33 = v16;
      v10 = " [%s] %s:%d %@(%p) Reset audio converter for ASR version=%s";
      v11 = v14;
      v12 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v22, v12);
LABEL_25:
    AudioConverterReset(*(*(a1 + 32) + 464));
    *(*(a1 + 32) + 472) = 0;
    goto LABEL_26;
  }

  [v5 pushSamples:*(*(*(a1 + 40) + 8) + 24) numSamples:*(a1 + 64) hostTime:*(a1 + 56)];
LABEL_26:
  v17 = *(a1 + 48);
  v18 = *(a1 + 32);
  v19 = *(*(*(a1 + 40) + 8) + 24);
  CFAllocatorDeallocate(*(v18 + 456), *(v18 + 448));
  *(v18 + 448) = v19;
  v20 = *(v18 + 456);
  *(v18 + 456) = v17;
  if (v17)
  {
    CFRetain(v17);
  }

  if (v20)
  {
    CFRelease(v20);
  }

LABEL_30:
  v21 = *(a1 + 48);
  if (v21)
  {
    CFRelease(v21);
  }
}

- (void)recordAudioSampleMetrics
{
  v10 = *MEMORY[0x1E69E9840];
  currentTime = self->_currentTime;
  timescale = self->_timescale;
  epoch = self->_epoch;
  p_lastAudioProcessedTime = &self->_lastAudioProcessedTime;
  if (self->_lastAudioProcessedTime.flags)
  {
    v9.value = self->_currentTime;
    v9.timescale = timescale;
    v9.flags = 1;
    v9.epoch = epoch;
    Seconds = CMTimeGetSeconds(&v9);
    v9 = *p_lastAudioProcessedTime;
    v7 = Seconds - CMTimeGetSeconds(&v9);
  }

  else
  {
    v9.value = self->_currentTime;
    v9.timescale = timescale;
    v9.flags = 1;
    v9.epoch = epoch;
    v7 = CMTimeGetSeconds(&v9);
  }

  self->_captionedAudioDuration = v7 + self->_captionedAudioDuration;
  p_lastAudioProcessedTime->value = currentTime;
  p_lastAudioProcessedTime->timescale = timescale;
  p_lastAudioProcessedTime->flags = 1;
  p_lastAudioProcessedTime->epoch = epoch;
  ++self->_captioningRequestCount;
}

- (void)sendTranscriptionResult:(id)result taskInfo:(id)info
{
  v30 = *MEMORY[0x1E69E9840];
  if ([(VCAudioCaptions *)self delegate])
  {
    if (info)
    {
      v7 = objc_opt_class();
      if (result)
      {
        if (v7 == self)
        {
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            goto LABEL_15;
          }

          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_15;
          }

          *buf = 136315906;
          v19 = v9;
          v20 = 2080;
          v21 = "[VCAudioCaptions sendTranscriptionResult:taskInfo:]";
          v22 = 1024;
          v23 = 1477;
          v24 = 2112;
          resultCopy = result;
          v11 = " [%s] %s:%d transcription=%@";
          v12 = v10;
          v13 = 38;
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v8 = [(VCAudioCaptions *)self performSelector:sel_logPrefix];
          }

          else
          {
            v8 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            goto LABEL_15;
          }

          v14 = VRTraceErrorLogLevelToCSTR();
          v15 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_15;
          }

          *buf = 136316418;
          v19 = v14;
          v20 = 2080;
          v21 = "[VCAudioCaptions sendTranscriptionResult:taskInfo:]";
          v22 = 1024;
          v23 = 1477;
          v24 = 2112;
          resultCopy = v8;
          v26 = 2048;
          selfCopy = self;
          v28 = 2112;
          resultCopy2 = result;
          v11 = " [%s] %s:%d %@(%p) transcription=%@";
          v12 = v15;
          v13 = 58;
        }

        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_15:
        [(VCAudioCaptions *)self dumpCaptionsIfNeededForCaptionsTranscription:result];
        delegateQueue = self->_delegateQueue;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __52__VCAudioCaptions_sendTranscriptionResult_taskInfo___block_invoke;
        v17[3] = &unk_1E85F37F0;
        v17[4] = self;
        v17[5] = result;
        dispatch_async(delegateQueue, v17);
        [info setUpdateNumber:{objc_msgSend(info, "updateNumber") + 1}];
        return;
      }

      [VCAudioCaptions sendTranscriptionResult:? taskInfo:?];
    }

    else
    {
      [VCAudioCaptions sendTranscriptionResult:? taskInfo:?];
    }
  }

  else
  {
    [VCAudioCaptions sendTranscriptionResult:? taskInfo:?];
  }
}

uint64_t __52__VCAudioCaptions_sendTranscriptionResult_taskInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 40);

  return [v2 didUpdateCaptions:v3];
}

- (void)dumpCaptionsIfNeededForCaptionsTranscription:(id)transcription
{
  v35 = *MEMORY[0x1E69E9840];
  if (transcription && self->_logCaptionsDump)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_14;
      }

      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 136316674;
      v22 = v6;
      v23 = 2080;
      v24 = "[VCAudioCaptions dumpCaptionsIfNeededForCaptionsTranscription:]";
      v25 = 1024;
      v26 = 1491;
      v27 = 1024;
      *v28 = [transcription isFinal];
      *&v28[4] = 1024;
      *&v28[6] = [transcription isLocal];
      *v29 = 2048;
      *&v29[2] = [transcription streamToken];
      *v30 = 2080;
      *&v30[2] = [objc_msgSend(transcription "formattedText")];
      v8 = " [%s] %s:%d isFinal=%d, isLocal=%d, streamToken=%ld, formattedText=%s";
      v9 = v7;
      v10 = 60;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCAudioCaptions *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_14;
      }

      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 136317186;
      v22 = v11;
      v23 = 2080;
      v24 = "[VCAudioCaptions dumpCaptionsIfNeededForCaptionsTranscription:]";
      v25 = 1024;
      v26 = 1491;
      v27 = 2112;
      *v28 = v5;
      *&v28[8] = 2048;
      *v29 = self;
      *&v29[8] = 1024;
      *v30 = [transcription isFinal];
      *&v30[4] = 1024;
      *&v30[6] = [transcription isLocal];
      v31 = 2048;
      streamToken = [transcription streamToken];
      v33 = 2080;
      v34 = [objc_msgSend(transcription "formattedText")];
      v8 = " [%s] %s:%d %@(%p) isFinal=%d, isLocal=%d, streamToken=%ld, formattedText=%s";
      v9 = v12;
      v10 = 80;
    }

    _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_14:
    if ([transcription isFinal])
    {
      logCaptionsDump = self->_logCaptionsDump;
      v14 = [objc_msgSend(transcription "formattedText")];
      VRLogfilePrintWithTimestamp(logCaptionsDump, "%s \n", v15, v16, v17, v18, v19, v20, v14);
    }
  }
}

- (void)speechAnalyzer:(id)analyzer didProduceLanguageHypothesis:(id)hypothesis
{
  block[6] = *MEMORY[0x1E69E9840];
  captionsQueue = self->_captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__VCAudioCaptions_speechAnalyzer_didProduceLanguageHypothesis___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = hypothesis;
  dispatch_async(captionsQueue, block);
}

void __63__VCAudioCaptions_speechAnalyzer_didProduceLanguageHypothesis___block_invoke(uint64_t a1)
{
  block[8] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = v2;
    v4 = [[VCCaptionsLanguageDetectorResults alloc] initWithSFLanguageDetectorResult:*(a1 + 40)];
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 32);
      v7 = *(v6 + 552);
      v8 = *(v6 + 216);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__VCAudioCaptions_speechAnalyzer_didProduceLanguageHypothesis___block_invoke_2;
      block[3] = &unk_1E85F4AB8;
      block[4] = v3;
      block[5] = v6;
      block[6] = v5;
      block[7] = v7;
      dispatch_async(v8, block);

      *(*(a1 + 32) + 576) = [(VCCaptionsLanguageDetectorResults *)v5 detectedLanguageCode];
    }
  }
}

- (void)speechAnalyzer:(id)analyzer didStopLanguageDetectorWithError:(id)error
{
  block[6] = *MEMORY[0x1E69E9840];
  captionsQueue = self->_captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__VCAudioCaptions_speechAnalyzer_didStopLanguageDetectorWithError___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = error;
  dispatch_async(captionsQueue, block);
}

__n128 __67__VCAudioCaptions_speechAnalyzer_didStopLanguageDetectorWithError___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 32);
    v6 = *(v5 + 552);
    v7 = *(v5 + 216);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__VCAudioCaptions_speechAnalyzer_didStopLanguageDetectorWithError___block_invoke_2;
    block[3] = &unk_1E85F4AB8;
    block[4] = v2;
    v9 = v4;
    v10 = v6;
    dispatch_async(v7, block);
  }

  return result;
}

- (BOOL)captionsDebugDumpEnabled
{
  ManagedBoolValueForKey = VCDefaults_GetManagedBoolValueForKey(@"enableCaptionsDump", 0);
  if (ManagedBoolValueForKey)
  {

    LOBYTE(ManagedBoolValueForKey) = VRTraceIsInternalOSInstalled();
  }

  return ManagedBoolValueForKey;
}

- (void)loadSpeechAssets
{
  dispatch_assert_queue_V2(self->_captionsQueue);
  if (VCDefaults_GetBoolValueForKey(@"loadSpeechTranscriptionAssets", 0) && self->_locale && [(VCAudioCaptions *)self isTaskHintSetWithReturnCode:0])
  {
    v3 = +[VCSpeechFrameworkWrapper defaultSpeechFrameworkWrapper];
    taskHint = self->_taskHint;
    locale = self->_locale;
    taskIdentifier = self->_taskIdentifier;

    [v3 loadTranscriptionAssetsWithTaskHint:taskHint withLocale:locale withTaskIdentifier:taskIdentifier withCompletionHandler:0];
  }
}

void __34__VCAudioCaptions_enableCaptions___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v2 = *(a1 + 40);
  v3 = objc_opt_class();
  v4 = *(a1 + 32);
  if (v2 != 1)
  {
    if (v3 == v4)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_30;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_35())
      {
        goto LABEL_30;
      }

      v32 = 136315650;
      v33 = v12;
      OUTLINED_FUNCTION_36_0();
      v34 = 596;
      OUTLINED_FUNCTION_22_0();
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [*(a1 + 32) performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_30;
      }

      v26 = VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_39())
      {
        goto LABEL_30;
      }

      v32 = 136316162;
      v33 = v26;
      OUTLINED_FUNCTION_35_1();
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_10_1();
    }

    _os_log_impl(v13, v14, v15, v16, v17, v18);
LABEL_30:
    v27 = *(a1 + 32);
    if (*(v27 + 168) != *(a1 + 40))
    {
      if ([v27 transitionToState:0 withReason:2 error:&v31])
      {
        v28 = *(a1 + 40);
        *(*(a1 + 32) + 168) = v28;
        *(*(a1 + 32) + 169) = v28;
        *(*(a1 + 32) + 368) = micro() - *(*(a1 + 32) + 376) + *(*(a1 + 32) + 368);
        *(*(a1 + 32) + 408) = 0;
        *(*(a1 + 32) + 368) = 0;
        *(*(a1 + 32) + 376) = 0;
      }

      v27 = *(a1 + 32);
      if (*(v27 + 560))
      {
        VRLogFileLog(*(v27 + 560), "VCAudioCaptions-captionsDump");
        v27 = *(a1 + 32);
      }
    }

    v24 = *(v27 + 216);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__VCAudioCaptions_enableCaptions___block_invoke_66;
    block[3] = &unk_1E85F37F0;
    block[4] = v27;
    block[5] = v31;
    v25 = block;
    goto LABEL_36;
  }

  if (v3 == v4)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_18;
    }

    v5 = VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_35())
    {
      goto LABEL_18;
    }

    v32 = 136315650;
    v33 = v5;
    OUTLINED_FUNCTION_36_0();
    v34 = 582;
    OUTLINED_FUNCTION_22_0();
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 32) performSelector:sel_logPrefix];
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_18;
    }

    v19 = VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_39())
    {
      goto LABEL_18;
    }

    v32 = 136316162;
    v33 = v19;
    OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_17_1();
    OUTLINED_FUNCTION_10_1();
  }

  _os_log_impl(v6, v7, v8, v9, v10, v11);
LABEL_18:
  if (![*(a1 + 32) shouldEnableCaptions])
  {
    return;
  }

  v20 = *(a1 + 32);
  if (*(v20 + 168) != *(a1 + 40))
  {
    if (*(v20 + 170))
    {
      v21 = 2;
    }

    else
    {
      v21 = 1;
    }

    v22 = [v20 transitionToState:v21 withReason:2 error:&v31];
    v20 = *(a1 + 32);
    if (v22)
    {
      v23 = *(a1 + 40);
      *(v20 + 168) = v23;
      *(*(a1 + 32) + 169) = v23;
      *(*(a1 + 32) + 376) = micro();
      v20 = *(a1 + 32);
    }
  }

  v24 = *(v20 + 216);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __34__VCAudioCaptions_enableCaptions___block_invoke_63;
  v30[3] = &unk_1E85F37F0;
  v30[4] = v20;
  v30[5] = v31;
  v25 = v30;
LABEL_36:
  dispatch_async(v24, v25);
}

- (void)dispatchedSetLocale:(id)locale
{
  v35 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_captionsQueue);
  v18 = [VCDefaults copyStringValueForKey:@"forceAVCCaptionsLocale"];
  localeIdentifier = [(NSLocale *)self->_locale localeIdentifier];
  if (v18)
  {
    if (![(NSString *)localeIdentifier isEqualToString:?])
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v18];
      v7 = v18;
      v8 = v6;
      goto LABEL_9;
    }
  }

  else if (!-[NSString isEqualToString:](localeIdentifier, "isEqualToString:", [locale localeIdentifier]))
  {
    v8 = [locale copy];
    v7 = 0;
LABEL_9:

    if (v8)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        if (OUTLINED_FUNCTION_30_1())
        {
          localeIdentifier2 = v18;
          if (!v18)
          {
            localeIdentifier2 = [locale localeIdentifier];
          }

          v19 = localeIdentifier2;
          localeIdentifier3 = [(NSLocale *)self->_locale localeIdentifier];
          recognizerState = self->_recognizerState;
          v21 = 136316674;
          v22 = v9;
          v23 = 2080;
          v24 = "[VCAudioCaptions dispatchedSetLocale:]";
          v25 = 1024;
          v26 = 731;
          v27 = 2048;
          selfCopy = self;
          v29 = 2112;
          v30 = v19;
          v31 = 2112;
          v32 = localeIdentifier3;
          v33 = 1024;
          v34 = recognizerState;
          OUTLINED_FUNCTION_18_1();
          _os_log_impl(v13, v14, v15, v16, v17, 0x40u);
        }
      }

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __39__VCAudioCaptions_dispatchedSetLocale___block_invoke;
      v20[3] = &unk_1E85F37F0;
      v20[4] = self;
      v20[5] = v8;
      [(VCAudioCaptions *)self applyOnIdleWithBlock:v20];
    }

    return;
  }
}

- (void)dispatchedSetTaskHint:(unsigned __int8)hint
{
  OUTLINED_FUNCTION_34_0();
  v36 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(v5 + 208));
  IntValueForKey = VCDefaults_GetIntValueForKey(@"forceAVCCaptionsTaskHint", v4);
  if (IntValueForKey != v3[320])
  {
    v7 = IntValueForKey;
    if (objc_opt_class() == v3)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_39())
      {
        goto LABEL_13;
      }

      v25 = 136316418;
      v26 = v9;
      OUTLINED_FUNCTION_20_0();
      v27 = v10;
      *v28 = v7;
      *&v28[4] = v10;
      *&v28[6] = v11;
      LOWORD(v29) = v10;
      *(&v29 + 2) = v12;
      OUTLINED_FUNCTION_16_4();
      v18 = 46;
    }

    else
    {
      if (OUTLINED_FUNCTION_39_1())
      {
        v8 = OUTLINED_FUNCTION_38_1();
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v19 = VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_30_1())
      {
        goto LABEL_13;
      }

      v25 = 136316930;
      v26 = v19;
      OUTLINED_FUNCTION_20_0();
      v27 = 2112;
      *v28 = v8;
      *&v28[8] = 2048;
      v29 = v3;
      v30 = v20;
      v31 = v7;
      v32 = v20;
      v33 = v21;
      v34 = v20;
      v35 = v22;
      OUTLINED_FUNCTION_18_1();
      v18 = 66;
    }

    _os_log_impl(v13, v14, v15, v16, v17, v18);
LABEL_13:
    OUTLINED_FUNCTION_6_7();
    v23[1] = 3221225472;
    v23[2] = __41__VCAudioCaptions_dispatchedSetTaskHint___block_invoke;
    v23[3] = &unk_1E85F38B8;
    v23[4] = v3;
    v24 = v7;
    [v3 applyOnIdleWithBlock:v23];
  }
}

- (void)dispatchedSetExplicitLanguageFilterEnabled:(BOOL)enabled
{
  OUTLINED_FUNCTION_34_0();
  dispatch_assert_queue_V2(*(v5 + 208));
  if (*(v3 + 321) != v4 && *(v3 + 172) == 1)
  {
    if (objc_opt_class() == v3)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_39())
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_28_1();
      OUTLINED_FUNCTION_16_4();
      v11 = 40;
    }

    else
    {
      if (OUTLINED_FUNCTION_39_1())
      {
        OUTLINED_FUNCTION_38_1();
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_30_1())
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_13_2();
      OUTLINED_FUNCTION_18_1();
      v11 = 60;
    }

    _os_log_impl(v6, v7, v8, v9, v10, v11);
LABEL_13:
    OUTLINED_FUNCTION_6_7();
    OUTLINED_FUNCTION_31_1(v12, v13, v14, v15, v16, v17, v18, v19, v20, 3221225472, v21, v22, v23, v24);
  }
}

- (void)dispatchedSetFormatForNewLinesEnabled:(BOOL)enabled
{
  OUTLINED_FUNCTION_34_0();
  dispatch_assert_queue_V2(*(v5 + 208));
  if (*(v3 + 344) != v4 && *(v3 + 172) == 1)
  {
    if (objc_opt_class() == v3)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_39())
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_28_1();
      OUTLINED_FUNCTION_16_4();
      v11 = 40;
    }

    else
    {
      if (OUTLINED_FUNCTION_39_1())
      {
        OUTLINED_FUNCTION_38_1();
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_30_1())
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_13_2();
      OUTLINED_FUNCTION_18_1();
      v11 = 60;
    }

    _os_log_impl(v6, v7, v8, v9, v10, v11);
LABEL_13:
    OUTLINED_FUNCTION_6_7();
    OUTLINED_FUNCTION_31_1(v12, v13, v14, v15, v16, v17, v18, v19, v20, 3221225472, v21, v22, v23, v24);
  }
}

- (void)dispatchedSetCallType:(unsigned __int8)type
{
  OUTLINED_FUNCTION_34_0();
  v31 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(v5 + 208));
  if (*(v3 + 322) != v4)
  {
    if (objc_opt_class() == v3)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v7 = VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_39())
      {
        goto LABEL_13;
      }

      v21 = 136316162;
      v22 = v7;
      v23 = 2080;
      OUTLINED_FUNCTION_29_1();
      v24 = v8;
      *v25 = v4;
      *&v25[4] = v8;
      *&v25[6] = v9;
      OUTLINED_FUNCTION_16_4();
      v15 = 40;
    }

    else
    {
      if (OUTLINED_FUNCTION_39_1())
      {
        v6 = OUTLINED_FUNCTION_38_1();
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_30_1())
      {
        goto LABEL_13;
      }

      v21 = 136316674;
      v22 = v16;
      v23 = 2080;
      OUTLINED_FUNCTION_29_1();
      v24 = 2112;
      *v25 = v6;
      *&v25[8] = 2048;
      v26 = v3;
      v27 = v17;
      v28 = v4;
      v29 = v17;
      v30 = v18;
      OUTLINED_FUNCTION_18_1();
      v15 = 60;
    }

    _os_log_impl(v10, v11, v12, v13, v14, v15);
LABEL_13:
    *(v3 + 322) = v4;
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{v4, @"ACCallType"}];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    reportingGenericEvent();
  }
}

void __32__VCAudioCaptions_updateConfig___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (([*(*(a1 + 32) + 288) isEqualToCaptionsConfig:*(a1 + 40)] & 1) == 0 && objc_msgSend(*(a1 + 32), "shouldSetLocale:withError:", objc_msgSend(*(a1 + 40), "locale"), v7) && objc_msgSend(*(a1 + 32), "shouldSetTaskHint:withError:", objc_msgSend(*(a1 + 40), "taskHint"), v7))
  {
    v2 = *(a1 + 32);
    v3 = v2[46];
    if (v3)
    {
      if (![*(a1 + 32) transitionToState:0 withReason:2 error:v7])
      {
        goto LABEL_9;
      }

      v2 = *(a1 + 32);
    }

    [v2 dispatchedSetLocale:{objc_msgSend(*(a1 + 40), "locale")}];
    [*(a1 + 40) taskHint];
    [OUTLINED_FUNCTION_27_0() dispatchedSetTaskHint:?];
    [*(a1 + 32) dispatchedSetLanguageDetectorReportingFrequency:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", objc_msgSend(*(a1 + 40), "languageDetectorReportingFrequency"))}];
    [*(a1 + 40) languageDetectorEnabled];
    [OUTLINED_FUNCTION_27_0() dispatchedSetLanguageDetectorEnabled:?];
    [*(a1 + 40) isExplicitLanguageFilterEnabled];
    [OUTLINED_FUNCTION_27_0() dispatchedSetExplicitLanguageFilterEnabled:?];
    [*(a1 + 40) callType];
    [OUTLINED_FUNCTION_27_0() dispatchedSetCallType:?];
    [*(a1 + 40) isFormatForNewLinesEnabled];
    [OUTLINED_FUNCTION_27_0() dispatchedSetFormatForNewLinesEnabled:?];

    *(*(a1 + 32) + 288) = [*(a1 + 40) copy];
    [*(a1 + 32) loadSpeechAssets];
    if (v3)
    {
      [*(a1 + 32) transitionToState:v3 withReason:2 error:v7];
    }
  }

LABEL_9:
  v4 = *(a1 + 32);
  v5 = *(v4 + 216);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__VCAudioCaptions_updateConfig___block_invoke_2;
  v6[3] = &unk_1E85F37F0;
  v6[4] = v4;
  v6[5] = v7[0];
  dispatch_async(v5, v6);
}

- (BOOL)shouldSetTaskHint:(unsigned __int8)hint withError:(id *)error
{
  hintCopy = hint;
  v10[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_captionsQueue);
  v10[0] = 0;
  if (self->_taskHint != hintCopy && [(VCAudioCaptions *)self isTaskHintSetWithReturnCode:v10])
  {
    v7 = 0;
    if (!error)
    {
      return v7;
    }
  }

  else
  {
    v7 = [VCAudioCaptions isTaskHintSupported:hintCopy withReturnCode:v10];
    if (!error)
    {
      return v7;
    }
  }

  if (v10[0])
  {
    1021 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Captions/VCAudioCaptions.m", 1021];
    *error = [VCSessionErrorUtils VCSessionCaptionsErrorEvent:10 errorPath:1021 returnCode:v10[0]];
  }

  return v7;
}

- (void)initWithDelegate:(uint64_t)a1 isLocal:taskIdentifier:reportingAgent:.cold.1(uint64_t a1)
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

- (void)initWithDelegate:(uint64_t)a1 isLocal:taskIdentifier:reportingAgent:.cold.2(uint64_t a1)
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

- (void)initWithDelegate:(uint64_t)a1 isLocal:taskIdentifier:reportingAgent:.cold.3(uint64_t a1)
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

- (void)initWithDelegate:(uint64_t)a1 isLocal:taskIdentifier:reportingAgent:.cold.4(uint64_t a1)
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

- (void)initWithDelegate:(uint64_t)a1 isLocal:taskIdentifier:reportingAgent:.cold.5(uint64_t a1)
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

- (void)initWithDelegate:(uint64_t)a1 isLocal:taskIdentifier:reportingAgent:.cold.6(uint64_t a1)
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

- (void)initWithDelegate:(uint64_t)a1 isLocal:taskIdentifier:reportingAgent:.cold.7(uint64_t a1)
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

- (void)initWithDelegate:isLocal:taskIdentifier:reportingAgent:.cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)createAudioConverterWithInputFormat:outputFormat:converter:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)createAudioConverterWithInputFormat:outputFormat:converter:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)convertSamples:numSamples:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)loadedStateToState:withReason:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)transitionToState:(uint64_t)a1 withReason:(void *)a2 error:.cold.1(uint64_t a1, void ***a2)
{
  v2 = **a2;
  if (v2)
  {
    [objc_msgSend(v2 "description")];
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x26u);
}

- (void)shouldEnableCaptions
{
  v5 = +[VCSessionErrorUtils VCSessionCaptionsErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionCaptionsErrorEvent:errorPath:returnCode:", 1, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Captions/VCAudioCaptions.m", 639], *self);
  v6 = *(a2 + 216);
  *a3 = MEMORY[0x1E69E9820];
  a3[1] = 3221225472;
  a3[2] = __39__VCAudioCaptions_shouldEnableCaptions__block_invoke;
  a3[3] = &unk_1E85F37F0;
  a3[4] = a2;
  a3[5] = v5;
  dispatch_async(v6, a3);
}

+ (void)captionsSupportedWithErrorCode:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

+ (void)captionsSupportedWithErrorCode:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)applyOnIdleWithBlock:(void *)a1 .cold.1(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (OUTLINED_FUNCTION_35())
      {
        v15 = 136315906;
        v16 = v3;
        v17 = 2080;
        OUTLINED_FUNCTION_19_1();
        v18 = v5;
        v6 = &dword_1DB56E000;
        v7 = " [%s] %s:%d Failed state transition with error=%@";
        v8 = &v15;
        v9 = v4;
        v10 = OS_LOG_TYPE_DEFAULT;
        v11 = 38;
LABEL_11:
        _os_log_impl(v6, v9, v10, v7, v8, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_30_1())
      {
        v15 = 136316418;
        v16 = v12;
        v17 = 2080;
        OUTLINED_FUNCTION_19_1();
        v18 = v2;
        v19 = 2048;
        v20 = a1;
        v21 = v13;
        v22 = v14;
        OUTLINED_FUNCTION_18_1();
        v11 = 58;
        goto LABEL_11;
      }
    }
  }
}

+ (void)isTaskHintSupported:(_BYTE *)a1 withReturnCode:.cold.1(_BYTE *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315906;
      v6 = v2;
      v7 = 2080;
      v8 = "+[VCAudioCaptions isTaskHintSupported:withReturnCode:]";
      OUTLINED_FUNCTION_4_2();
      v9 = 995;
      v10 = v4;
      v11 = 2;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unsupported taskHint=%d", &v5, 0x22u);
    }
  }

  *a1 = 0;
}

+ (void)isTaskHintSupported:withReturnCode:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)reallocCopyBufferAllocatorWithFormat:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __56__VCAudioCaptions_start_forToken_withCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __56__VCAudioCaptions_start_forToken_withCompletionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __45__VCAudioCaptions_stopWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)createSampleBufferWithFormat:(void *)a1 samples:(void *)a2 numSamples:.cold.1(void *a1, void *a2)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_35())
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_22_0();
LABEL_10:
        _os_log_impl(v4, v5, v6, v7, v8, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [a1 performSelector:sel_logPrefix];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_30_1())
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_18_1();
        v9 = 48;
        goto LABEL_10;
      }
    }
  }

  *a2 = 0;
}

- (void)newPCMSampleBufferWithSamples:numSamples:pcmFormat:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)updateAudioConverterForStreamDescription:(uint64_t)a1 .cold.1(uint64_t a1)
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

- (void)updateAudioConverterForStreamDescription:(uint64_t)a1 .cold.2(uint64_t a1)
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

- (void)sendTranscriptionResult:(char)a1 taskInfo:.cold.1(char a1)
{
  if (a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_4_0();
        OUTLINED_FUNCTION_22_0();
LABEL_10:
        _os_log_impl(v1, v2, v3, v4, v5, v6);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      OUTLINED_FUNCTION_6_1();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_39())
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_10_1();
        goto LABEL_10;
      }
    }
  }
}

- (void)sendTranscriptionResult:(uint64_t)a1 taskInfo:.cold.2(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_4_0();
        OUTLINED_FUNCTION_22_0();
LABEL_10:
        _os_log_impl(v1, v2, v3, v4, v5, v6);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_28_0())
    {
      OUTLINED_FUNCTION_6_1();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_39())
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_10_1();
        goto LABEL_10;
      }
    }
  }
}

- (void)sendTranscriptionResult:(uint64_t)a1 taskInfo:.cold.3(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_4_0();
        OUTLINED_FUNCTION_22_0();
LABEL_10:
        _os_log_impl(v1, v2, v3, v4, v5, v6);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_28_0())
    {
      OUTLINED_FUNCTION_6_1();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_39())
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_10_1();
        goto LABEL_10;
      }
    }
  }
}

@end