@interface VCAudioManager
+ (AudioStreamBasicDescription)sessionFormatForSampleRate:(SEL)a3;
+ (id)audioSessionForMode:(int)a3;
+ (id)logPrefixForMode:(int)a3;
+ (id)sharedSystemAudioInputInstance;
+ (id)sharedSystemAudioOutputInstance;
+ (id)sharedVoiceChatInstance;
+ (unsigned)audioIOTypeWithAudioUnitProperties:(id)a3 shouldEnableAudioInput:(BOOL)a4;
- (AVAudioDevice)currentInputDevice;
- (AVAudioDevice)currentOutputDevice;
- (BOOL)addClient:(id)a3;
- (BOOL)computeAllowAudioRecordingWithPreferredClient:(id)a3;
- (BOOL)getAudioSessionMediaProperties:(id)a3 forVPOperatingMode:(unsigned int)a4;
- (BOOL)removeClient:(id)a3;
- (BOOL)resetAUIOWithProperties:(id)a3;
- (BOOL)resetAudioLimiterWithProperties:(id)a3;
- (BOOL)resetAudioSessionWithProperties:(id)a3 interruptSuccessful:(BOOL *)a4;
- (BOOL)setupInterruptThread;
- (BOOL)shouldResetAudioSessionWithProperties:(id)a3;
- (BOOL)shouldResetAudioUnitWithProperties:(id)a3;
- (BOOL)startAUIOWithProperties:(id)a3;
- (BOOL)startAudioSessionWithProperties:(id)a3;
- (BOOL)stateIdleWithAudioUnitProperties:(id)a3 sessionProperties:(id)a4 client:(id)a5 newState:(unsigned int *)a6;
- (BOOL)stateInterruptedShouldGoToStarted:(id)a3;
- (BOOL)stateInterruptedWithAudioUnitProperties:(id)a3 sessionProperties:(id)a4 client:(id)a5 newState:(unsigned int *)a6;
- (BOOL)stateRunningShouldTransitionToStarted:(id)a3;
- (BOOL)stateRunningWithAudioUnitProperties:(id)a3 sessionProperties:(id)a4 client:(id)a5 newState:(unsigned int *)a6;
- (BOOL)stateSessionStartedWithAudioUnitProperties:(id)a3 sessionProperties:(id)a4 client:(id)a5 newState:(unsigned int *)a6;
- (BOOL)updateStateWithAudioIOClient:(id)a3;
- (NSString)description;
- (VCAudioManager)autorelease;
- (VCAudioManager)initWithAudioSessionMode:(int)a3;
- (VCAudioManager)retain;
- (id)newAudioSessionMediaPropertiesForSystemAudioWithPreferredClient:(id)a3 audioUnitProperties:(id)a4 isInput:(BOOL)a5;
- (id)newAudioSessionMediaPropertiesWithPreferredClient:(id)a3 audioUnitProperties:(id)a4;
- (id)newAudioUnitPropertiesForSystemAudioWithPreferredClient:(id)a3 isInput:(BOOL)a4;
- (id)newAudioUnitPropertiesWithPreferredClient:(id)a3;
- (id)preferredClientWithNewClient:(id)a3;
- (int)prewarmingClientOperatingMode;
- (int)registerAudioSessionId:(unsigned int)a3 maxChannelCountMic:(unsigned int)a4 maxChannelCountSpeaker:(unsigned int)a5 spatialMetadata:(OpaqueCMBlockBuffer *)a6;
- (int)registerForMutedTalkerNotification:(id)a3;
- (int)registerForMutedTalkerNotificationWithAUIO:(tagHANDLE *)a3;
- (int)setVolume:(float)a3 withRampTime:(float)a4;
- (int)unregisterForMutedTalkerNotificationWithAUIO:(tagHANDLE *)a3;
- (int)unregisterFromMutedTalkerNotification;
- (unint64_t)retainCount;
- (unsigned)computeSamplePerFrameWithPreferredClient:(id)a3 sampleRate:(unsigned int)a4;
- (unsigned)vpOperationModeForConferenceOperatingMode:(int)a3 deviceRole:(int)a4;
- (void)_cleanupDeadClients;
- (void)activateStartingClient:(id)a3 applyControllerFormat:(BOOL)a4;
- (void)applyAudioSessionMute;
- (void)applyControllerFormatToClients:(id)a3;
- (void)applySessionContextToAudioUnitProperties:(id)a3 preferredClient:(id)a4;
- (void)applySpatialMetadata:(OpaqueCMBlockBuffer *)a3;
- (void)cleanupInterruptThread;
- (void)completeStartForAllStartingClients;
- (void)computeFormatDescription:(AudioStreamBasicDescription *)a3 withPreferredClient:(id)a4;
- (void)computeHardwarePreferences;
- (void)dealloc;
- (void)didSessionEnd;
- (void)didSessionStop;
- (void)didUpdateBasebandCodec:(const _VCRemoteCodecInfo *)a3;
- (void)enterStateStarted;
- (void)flushEventQueue:(opaqueCMSimpleQueue *)a3;
- (void)getPreferredFormat:(AudioStreamBasicDescription *)a3 blockSize:(double *)a4 vpOperatingMode:(unsigned int *)a5 forOperatingMode:(int)a6 deviceRole:(int)a7 suggestedFormat:(AudioStreamBasicDescription *)a8;
- (void)refreshInputMetering;
- (void)refreshOutputMetering;
- (void)refreshRemoteCodecType:(unsigned int)a3 sampleRate:(double)a4;
- (void)registerClientIO:(_VCAudioIOControllerClientIO *)a3 controllerIO:(_VCAudioIOControllerIOState *)a4;
- (void)release;
- (void)removeAllClientsForIO:(_VCAudioIOControllerIOState *)a3;
- (void)resetAudioTimestamps;
- (void)serverDidDie;
- (void)setCurrentInputDevice:(id)a3;
- (void)setCurrentInputDeviceInternal:(id)a3;
- (void)setCurrentOutputDevice:(id)a3;
- (void)setCurrentOutputDeviceInternal:(id)a3;
- (void)setInputMetering;
- (void)setMediaPlaybackOnExternalDevice:(BOOL)a3;
- (void)setMicrophoneMuted:(BOOL)a3;
- (void)setMixingVoiceWithMediaEnabled:(BOOL)a3;
- (void)setMute:(BOOL)a3 forClient:(id)a4;
- (void)setOutputMetering;
- (void)setSpatialMetadata:(OpaqueCMBlockBuffer *)a3 audioSessionId:(unsigned int)a4 completionHandler:(id)a5;
- (void)setupInterruptThread;
- (void)setupSpatialContextWithAudioUnitProperties:(id)a3 forceUpdate:(BOOL)a4;
- (void)setupVAD;
- (void)startClient:(id)a3;
- (void)startInterruptThread;
- (void)startVADWithAudioUnitProperties:(id)a3;
- (void)stateRunningToSessionStarted;
- (void)stateTransitionInterruptedToRunning;
- (void)stateTransitionInterruptedToStarted;
- (void)stateTransitionRunningToInterrupted;
- (void)stopAUIO;
- (void)stopAudioSession;
- (void)stopClient:(id)a3;
- (void)stopInterruptThread;
- (void)unregisterAudioSessionId:(unsigned int)a3;
- (void)unregisterClientIO:(_VCAudioIOControllerClientIO *)a3 controllerIO:(_VCAudioIOControllerIOState *)a4;
- (void)updateClient:(id)a3 settings:(const tagVCAudioIOControllerClientSettings *)a4;
- (void)updateCurrentInputDevice:(id)a3;
- (void)updateCurrentOutputDevice:(id)a3;
- (void)updateDirectionWithClient:(id)a3 settings:(const tagVCAudioIOControllerClientSettings *)a4 isClientRegistered:(BOOL)a5;
- (void)updateSpatialAudioWithClient:(id)a3 settings:(const tagVCAudioIOControllerClientSettings *)a4 isClientRegistered:(BOOL)a5;
- (void)updateVoiceProcessingWithClient:(id)a3 settings:(const tagVCAudioIOControllerClientSettings *)a4 isClientRegistered:(BOOL)a5;
- (void)waitIdleForClient:(id)a3;
@end

@implementation VCAudioManager

+ (id)sharedVoiceChatInstance
{
  if (sharedVoiceChatInstance_onceToken != -1)
  {
    +[VCAudioManager sharedVoiceChatInstance];
  }

  return sharedVoiceChatInstance__VCAudioManagerVoiceChat;
}

VCAudioManager *__41__VCAudioManager_sharedVoiceChatInstance__block_invoke()
{
  result = [[VCAudioManager alloc] initWithAudioSessionMode:0];
  sharedVoiceChatInstance__VCAudioManagerVoiceChat = result;
  return result;
}

+ (id)sharedSystemAudioOutputInstance
{
  if (sharedSystemAudioOutputInstance_onceToken != -1)
  {
    +[VCAudioManager sharedSystemAudioOutputInstance];
  }

  return sharedSystemAudioOutputInstance__VCAudioManagerSystemAudio;
}

VCAudioManager *__49__VCAudioManager_sharedSystemAudioOutputInstance__block_invoke()
{
  result = [[VCAudioManager alloc] initWithAudioSessionMode:1];
  sharedSystemAudioOutputInstance__VCAudioManagerSystemAudio = result;
  return result;
}

+ (id)sharedSystemAudioInputInstance
{
  if (sharedSystemAudioInputInstance_onceToken != -1)
  {
    +[VCAudioManager sharedSystemAudioInputInstance];
  }

  return sharedSystemAudioInputInstance__VCAudioManagerSystemAudioInput;
}

VCAudioManager *__48__VCAudioManager_sharedSystemAudioInputInstance__block_invoke()
{
  result = [[VCAudioManager alloc] initWithAudioSessionMode:2];
  sharedSystemAudioInputInstance__VCAudioManagerSystemAudioInput = result;
  return result;
}

- (VCAudioManager)retain
{
  v3 = *MEMORY[0x1E69E9840];
  if (self->_playbackMode == 3)
  {
    v2.receiver = self;
    v2.super_class = VCAudioManager;
    return [(VCAudioManager *)&v2 retain];
  }

  return self;
}

- (unint64_t)retainCount
{
  v4 = *MEMORY[0x1E69E9840];
  if (self->_playbackMode != 3)
  {
    return -1;
  }

  v3.receiver = self;
  v3.super_class = VCAudioManager;
  return [(VCAudioManager *)&v3 retainCount];
}

- (void)release
{
  v3 = *MEMORY[0x1E69E9840];
  if (self->_playbackMode == 3)
  {
    v2.receiver = self;
    v2.super_class = VCAudioManager;
    [(VCAudioManager *)&v2 release];
  }
}

- (VCAudioManager)autorelease
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->_playbackMode == 3)
  {
    v4.receiver = self;
    v4.super_class = VCAudioManager;
    [(VCAudioManager *)&v4 autorelease];
  }

  return self;
}

- (void)getPreferredFormat:(AudioStreamBasicDescription *)a3 blockSize:(double *)a4 vpOperatingMode:(unsigned int *)a5 forOperatingMode:(int)a6 deviceRole:(int)a7 suggestedFormat:(AudioStreamBasicDescription *)a8
{
  v44 = *MEMORY[0x1E69E9840];
  if (a8)
  {
    mSampleRate = a8->mSampleRate;
  }

  else
  {
    mSampleRate = 24000.0;
  }

  v14 = [(VCAudioManager *)self vpOperationModeForConferenceOperatingMode:*&a6 deviceRole:*&a7];
  if ([+[VCHardwareSettingsEmbedded sharedInstance](VCHardwareSettingsEmbedded deviceClass]== 6 && [+[VCHardwareSettingsEmbedded chipId]< 0x8000 sharedInstance]
  {
    mSampleRate = 16000.0;
  }

  v15 = -[NSDictionary objectForKeyedSubscript:](self->_vpOperatingModeToAudioSessionMediaFormatMapping, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v14]);
  if (v15)
  {
    v16 = v15;
    [v15 preferredBlockSize];
    v18 = v17;
    [v16 preferredSampleRate];
    mSampleRate = v19;
  }

  else
  {
    v18 = 0x3F947AE147AE147BLL;
  }

  v20 = [+[VCDefaults sharedInstance](VCDefaults forceAudioChannelCount];
  if (v20 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v32 = 136315906;
        v33 = v23;
        v34 = 2080;
        v35 = "[VCAudioManager getPreferredFormat:blockSize:vpOperatingMode:forOperatingMode:deviceRole:suggestedFormat:]";
        v36 = 1024;
        v37 = 363;
        v38 = 1024;
        LODWORD(v39) = v21;
        v25 = " [%s] %s:%d using audio channelCount[%d]";
        v26 = v24;
        v27 = 34;
LABEL_23:
        _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, v25, &v32, v27);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v22 = [(VCAudioManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v22 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v32 = 136316418;
        v33 = v28;
        v34 = 2080;
        v35 = "[VCAudioManager getPreferredFormat:blockSize:vpOperatingMode:forOperatingMode:deviceRole:suggestedFormat:]";
        v36 = 1024;
        v37 = 363;
        v38 = 2112;
        v39 = v22;
        v40 = 2048;
        v41 = self;
        v42 = 1024;
        v43 = v21;
        v25 = " [%s] %s:%d %@(%p) using audio channelCount[%d]";
        v26 = v29;
        v27 = 54;
        goto LABEL_23;
      }
    }
  }

  if (!a3)
  {
    goto LABEL_27;
  }

  if (a8)
  {
    v31 = *&a8->mSampleRate;
    v30 = *&a8->mBytesPerPacket;
    *&a3->mBitsPerChannel = *&a8->mBitsPerChannel;
    *&a3->mSampleRate = v31;
    *&a3->mBytesPerPacket = v30;
    a3->mSampleRate = mSampleRate;
LABEL_27:
    if (!a4)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  Format_Float(a3, v21, mSampleRate);
  if (a4)
  {
LABEL_28:
    *a4 = v18;
  }

LABEL_29:
  if (a5)
  {
    *a5 = v14;
  }
}

+ (id)audioSessionForMode:(int)a3
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {

      return +[VCAudioSession sharedSystemAudioInputInstance];
    }

    else if (a3 == 3)
    {
      v5 = [[VCAudioSessionAVAS alloc] initWithMode:1, v3];

      return v5;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {

      return +[VCAudioSession sharedSystemAudioOutputInstance];
    }
  }

  else
  {

    return +[VCAudioSession sharedVoiceChatInstance];
  }

  return result;
}

- (VCAudioManager)initWithAudioSessionMode:(int)a3
{
  v3 = *&a3;
  v19 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = VCAudioManager;
  v4 = [(VCObject *)&v18 init];
  if (!v4)
  {
    return v4;
  }

  [(VCObject *)v4 setLogPrefix:[VCAudioManager logPrefixForMode:v3]];
  snprintf(v4->_sourceData.logPrefix, 0x28uLL, "%s (speaker)", [(NSString *)[(VCObject *)v4 logPrefix] UTF8String]);
  snprintf(v4->_sinkData.logPrefix, 0x28uLL, "%s (mic)", [(NSString *)[(VCObject *)v4 logPrefix] UTF8String]);
  v4->_playbackMode = v3;
  v5 = objc_alloc(MEMORY[0x1E695DEC8]);
  v6 = [v5 initWithObjects:{_stateNotSet, _stateIdle, _stateSessionStarted, _stateRunning, _stateInterrupted, 0}];
  v4->_stateStrings = v6;
  if (!v6)
  {
    [VCAudioManager initWithAudioSessionMode:v4];
    goto LABEL_32;
  }

  v4->_useOptimizedHandoversForTelephony = 0;
  v4->_useOptimizedHandoversForTelephony = +[VCHardwareSettings supportsOptimizedHandoversForTelephony];
  v7 = [VCAudioManager audioSessionForMode:v3];
  v4->_audioSession = v7;
  if (!v7)
  {
    [VCAudioManager initWithAudioSessionMode:v4];
    goto LABEL_32;
  }

  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(62);
  v9 = dispatch_queue_create_with_target_V2("com.apple.AVConference.audiomanagerqueue", 0, CustomRootQueue);
  v4->_dispatchQueue = v9;
  if (!v9)
  {
    [VCAudioManager initWithAudioSessionMode:v4];
    goto LABEL_32;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4->_allClients = v10;
  if (!v10)
  {
    [VCAudioManager initWithAudioSessionMode:v4];
    goto LABEL_32;
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4->_startingIOClients = v11;
  if (!v11)
  {
    [VCAudioManager initWithAudioSessionMode:v4];
    goto LABEL_32;
  }

  v12 = *MEMORY[0x1E695E480];
  if (CMSimpleQueueCreate(*MEMORY[0x1E695E480], 100, &v4->_sourceData.eventQueue) < 0)
  {
    [VCAudioManager initWithAudioSessionMode:v4];
    goto LABEL_32;
  }

  if (CMSimpleQueueCreate(v12, 100, &v4->_sinkData.eventQueue) < 0)
  {
    [VCAudioManager initWithAudioSessionMode:v4];
    goto LABEL_32;
  }

  if ((VCSingleLinkedListInitialize(&v4->_sourceData.clientIOList, VCAudioIOControllerIOState_CompareControllerEntries) & 1) == 0)
  {
    [VCAudioManager initWithAudioSessionMode:v4];
    goto LABEL_32;
  }

  if ((VCSingleLinkedListInitialize(&v4->_sinkData.clientIOList, VCAudioIOControllerIOState_CompareControllerEntries) & 1) == 0)
  {
    [VCAudioManager initWithAudioSessionMode:v4];
    goto LABEL_32;
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4->_spatialContexts = v13;
  if (!v13)
  {
    [VCAudioManager initWithAudioSessionMode:v4];
    goto LABEL_32;
  }

  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4->_audioSessionSinkMuted = v14;
  if (!v14)
  {
    [VCAudioManager initWithAudioSessionMode:v4];
    goto LABEL_32;
  }

  if (!v4->_playbackMode)
  {
    if ([(VCAudioManager *)v4 setupVAD])
    {
      if ([(VCAudioManager *)v4 setupInterruptThread])
      {
        goto LABEL_16;
      }

      [VCAudioManager initWithAudioSessionMode:];
    }

LABEL_32:

    return 0;
  }

LABEL_16:
  v4->_state = 1;
  v4->_interruptThreadState = 1;
  v4->_hAUIO = 0xFFFFFFFFLL;
  pthread_mutex_init(&v4->_interruptingMutex, 0);
  pthread_mutex_init(&v4->_inputDeviceMutex, 0);
  pthread_mutex_init(&v4->_outputDeviceMutex, 0);
  v4->_isInterrupting = 0;
  if (!v4->_playbackMode)
  {
    global_queue = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__VCAudioManager_initWithAudioSessionMode___block_invoke;
    block[3] = &unk_1E85F3778;
    block[4] = v4;
    dispatch_async(global_queue, block);
  }

  v4->_isInDaemon = AVConferenceServer_ProcessIsAVConferenceServer();
  return v4;
}

+ (id)logPrefixForMode:(int)a3
{
  if ((a3 - 1) > 2)
  {
    return @"controllerType=VoiceChat";
  }

  else
  {
    return off_1E85F3950[a3 - 1];
  }
}

- (NSString)description
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = VCAudioManager;
  v4 = [(VCAudioManager *)&v7 description];
  if (self->_playbackMode)
  {
    v5 = "System";
  }

  else
  {
    v5 = "VoiceChat";
  }

  return [v3 stringWithFormat:@"{ %@ controllerType=%s }", v4, v5];
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];

  [(VCAudioManager *)self cleanupInterruptThread];
  VCVoiceDetector_Destroy(&self->_sinkData.voiceDetector);
  VCAudioBufferList_Destroy(&self->_sourceData.secondarySampleBuffer);
  VCAudioBufferList_Destroy(&self->_sourceData.interruptMixDownSampleBuffer);
  eventQueue = self->_sourceData.eventQueue;
  if (eventQueue)
  {
    CFRelease(eventQueue);
  }

  v4 = self->_sinkData.eventQueue;
  if (v4)
  {
    CFRelease(v4);
  }

  dispatch_release(self->_dispatchQueue);
  pthread_mutex_destroy(&self->_outputDeviceMutex);
  pthread_mutex_destroy(&self->_inputDeviceMutex);
  pthread_mutex_destroy(&self->_interruptingMutex);

  v5.receiver = self;
  v5.super_class = VCAudioManager;
  [(VCObject *)&v5 dealloc];
}

- (void)setMicrophoneMuted:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__VCAudioManager_setMicrophoneMuted___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, block);
}

void __37__VCAudioManager_setMicrophoneMuted___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!*(v2 + 920))
  {
    *(v2 + 249) = *(a1 + 40);
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 40);
          v25 = 136315906;
          v26 = v13;
          v27 = 2080;
          v28 = "[VCAudioManager setMicrophoneMuted:]_block_invoke";
          v29 = 1024;
          v30 = 548;
          v31 = 1024;
          LODWORD(v32) = v15;
          v16 = " [%s] %s:%d setMicrophoneMuted:%d";
          v17 = v14;
          v18 = 34;
LABEL_23:
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, &v25, v18);
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

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a1 + 32);
          v22 = *(a1 + 40);
          v25 = 136316418;
          v26 = v19;
          v27 = 2080;
          v28 = "[VCAudioManager setMicrophoneMuted:]_block_invoke";
          v29 = 1024;
          v30 = 548;
          v31 = 2112;
          v32 = v4;
          v33 = 2048;
          v34 = v21;
          v35 = 1024;
          v36 = v22;
          v16 = " [%s] %s:%d %@(%p) setMicrophoneMuted:%d";
          v17 = v20;
          v18 = 54;
          goto LABEL_23;
        }
      }
    }

    if (*(*(a1 + 32) + 168) != 0xFFFFFFFFLL)
    {
      v23 = VCFeatureFlagManager_EnableTransportMute();
      v24 = *(a1 + 40);
      if (v23)
      {
        *(*(a1 + 32) + 440) = v24;
      }

      AUIOSetMute(*(*(a1 + 32) + 168), v24);
    }

    return;
  }

  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136315650;
        v26 = v5;
        v27 = 2080;
        v28 = "[VCAudioManager setMicrophoneMuted:]_block_invoke";
        v29 = 1024;
        v30 = 544;
        v7 = " [%s] %s:%d Not applying mute to the AUIO because this manager does not support it.";
        v8 = v6;
        v9 = 28;
LABEL_15:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, &v25, v9);
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

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v25 = 136316162;
        v26 = v10;
        v27 = 2080;
        v28 = "[VCAudioManager setMicrophoneMuted:]_block_invoke";
        v29 = 1024;
        v30 = 544;
        v31 = 2112;
        v32 = v3;
        v33 = 2048;
        v34 = v12;
        v7 = " [%s] %s:%d %@(%p) Not applying mute to the AUIO because this manager does not support it.";
        v8 = v11;
        v9 = 48;
        goto LABEL_15;
      }
    }
  }
}

- (void)setMixingVoiceWithMediaEnabled:(BOOL)a3
{
  v29 = *MEMORY[0x1E69E9840];
  if (!self->_playbackMode)
  {
    v5 = a3;
    v6 = +[VCAudioSession sharedVoiceChatInstance];
    v17 = *MEMORY[0x1E69B0068];
    v18 = [MEMORY[0x1E696AD98] numberWithBool:v5];
    [v6 updateAudioSessionPropertiesWithProperties:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v18, &v17, 1)}];
    dispatchQueue = self->_dispatchQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __49__VCAudioManager_setMixingVoiceWithMediaEnabled___block_invoke;
    v15[3] = &unk_1E85F37A0;
    v15[4] = self;
    v16 = v5;
    dispatch_async(dispatchQueue, v15);
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
        v20 = v8;
        v21 = 2080;
        v22 = "[VCAudioManager setMixingVoiceWithMediaEnabled:]";
        v23 = 1024;
        v24 = 560;
        v10 = " [%s] %s:%d ignore";
        v11 = v9;
        v12 = 28;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [(VCAudioManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v20 = v13;
        v21 = 2080;
        v22 = "[VCAudioManager setMixingVoiceWithMediaEnabled:]";
        v23 = 1024;
        v24 = 560;
        v25 = 2112;
        v26 = v4;
        v27 = 2048;
        v28 = self;
        v10 = " [%s] %s:%d %@(%p) ignore";
        v11 = v14;
        v12 = 48;
        goto LABEL_13;
      }
    }
  }
}

uint64_t __49__VCAudioManager_setMixingVoiceWithMediaEnabled___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 250) = *(a1 + 40);
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v5 = *(a1 + 40);
    v14 = 136315906;
    v15 = v3;
    v16 = 2080;
    v17 = "[VCAudioManager setMixingVoiceWithMediaEnabled:]_block_invoke";
    v18 = 1024;
    v19 = 572;
    v20 = 1024;
    LODWORD(v21) = v5;
    v6 = " [%s] %s:%d setMixingVoiceWithMediaEnabled:%d";
    v7 = v4;
    v8 = 34;
    goto LABEL_11;
  }

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
      v14 = 136316418;
      v15 = v9;
      v16 = 2080;
      v17 = "[VCAudioManager setMixingVoiceWithMediaEnabled:]_block_invoke";
      v18 = 1024;
      v19 = 572;
      v20 = 2112;
      v21 = v2;
      v22 = 2048;
      v23 = v11;
      v24 = 1024;
      v25 = v12;
      v6 = " [%s] %s:%d %@(%p) setMixingVoiceWithMediaEnabled:%d";
      v7 = v10;
      v8 = 54;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, &v14, v8);
    }
  }

LABEL_12:
  result = *(*(a1 + 32) + 168);
  if (result != 0xFFFFFFFFLL)
  {
    return AUIOSetVoiceMixingMedia(result, *(a1 + 40));
  }

  return result;
}

- (void)setMute:(BOOL)a3 forClient:(id)a4
{
  v7 = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__VCAudioManager_setMute_forClient___block_invoke;
  v5[3] = &unk_1E85F37C8;
  v5[4] = self;
  v5[5] = a4;
  v6 = a3;
  dispatch_async(dispatchQueue, v5);
}

uint64_t __36__VCAudioManager_setMute_forClient___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != *(a1 + 32))
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_12;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    *v19 = 136316674;
    *&v19[4] = v10;
    *&v19[12] = 2080;
    *&v19[14] = "[VCAudioManager setMute:forClient:]_block_invoke";
    *&v19[22] = 1024;
    LODWORD(v20) = 581;
    WORD2(v20) = 2112;
    *(&v20 + 6) = v2;
    HIWORD(v20) = 2048;
    v21 = v12;
    LOWORD(v22) = 2048;
    *(&v22 + 2) = v13;
    WORD5(v22) = 1024;
    HIDWORD(v22) = v14;
    v7 = " [%s] %s:%d %@(%p) client=%p mute=%d";
    v8 = v11;
    v9 = 64;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      *v19 = 136316162;
      *&v19[4] = v3;
      *&v19[12] = 2080;
      *&v19[14] = "[VCAudioManager setMute:forClient:]_block_invoke";
      *&v19[22] = 1024;
      LODWORD(v20) = 581;
      WORD2(v20) = 2048;
      *(&v20 + 6) = v5;
      HIWORD(v20) = 1024;
      LODWORD(v21) = v6;
      v7 = " [%s] %s:%d client=%p mute=%d";
      v8 = v4;
      v9 = 44;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, v19, v9);
    }
  }

LABEL_12:
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{*(a1 + 48), *v19, *&v19[16], v20, v21, v22}];
  result = [*(*(a1 + 32) + 936) setObject:v15 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(*(a1 + 40), "audioSessionId"))}];
  v17 = *(a1 + 32);
  if (*(v17 + 184) >= 3u)
  {
    v18 = [*(v17 + 200) audioSessionId];
    result = [*(a1 + 40) audioSessionId];
    if (v18 == result)
    {
      return [*(a1 + 32) applyAudioSessionMute];
    }
  }

  return result;
}

- (void)applyAudioSessionMute
{
  v36 = *MEMORY[0x1E69E9840];
  if (!self->_playbackMode)
  {
    v4 = -[NSMutableDictionary objectForKeyedSubscript:](self->_audioSessionSinkMuted, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCAudioUnitProperties audioSessionId](self->_currentAudioUnitProperties, "audioSessionId")}]);
    if (v4)
    {
      isMicrophoneMuted = [v4 BOOLValue];
    }

    else
    {
      isMicrophoneMuted = self->_isMicrophoneMuted;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_27;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v16 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties audioSessionId];
      v23 = 136316162;
      v24 = v14;
      v25 = 2080;
      v26 = "[VCAudioManager applyAudioSessionMute]";
      v27 = 1024;
      v28 = 596;
      v29 = 1024;
      *v30 = v16;
      *&v30[4] = 1024;
      *&v30[6] = isMicrophoneMuted;
      v17 = " [%s] %s:%d Applying mute property for audioSessionId=%d, isMuted=%d";
      v18 = v15;
      v19 = 40;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [(VCAudioManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v13 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_27;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v22 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties audioSessionId];
      v23 = 136316674;
      v24 = v20;
      v25 = 2080;
      v26 = "[VCAudioManager applyAudioSessionMute]";
      v27 = 1024;
      v28 = 596;
      v29 = 2112;
      *v30 = v13;
      *&v30[8] = 2048;
      v31 = self;
      v32 = 1024;
      v33 = v22;
      v34 = 1024;
      v35 = isMicrophoneMuted;
      v17 = " [%s] %s:%d %@(%p) Applying mute property for audioSessionId=%d, isMuted=%d";
      v18 = v21;
      v19 = 60;
    }

    _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, &v23, v19);
LABEL_27:
    if (VCFeatureFlagManager_EnableTransportMute())
    {
      self->_sinkData.isMuted = isMicrophoneMuted;
    }

    AUIOSetMute(self->_hAUIO, isMicrophoneMuted);
    return;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = v6;
        v25 = 2080;
        v26 = "[VCAudioManager applyAudioSessionMute]";
        v27 = 1024;
        v28 = 591;
        v8 = " [%s] %s:%d Not applying mute to the AUIO because this manager does not support it.";
        v9 = v7;
        v10 = 28;
LABEL_14:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v23, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAudioManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136316162;
        v24 = v11;
        v25 = 2080;
        v26 = "[VCAudioManager applyAudioSessionMute]";
        v27 = 1024;
        v28 = 591;
        v29 = 2112;
        *v30 = v3;
        *&v30[8] = 2048;
        v31 = self;
        v8 = " [%s] %s:%d %@(%p) Not applying mute to the AUIO because this manager does not support it.";
        v9 = v12;
        v10 = 48;
        goto LABEL_14;
      }
    }
  }
}

- (void)setInputMetering
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_hAUIO != 0xFFFFFFFFLL)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    allClients = self->_allClients;
    v4 = [(NSMutableArray *)allClients countByEnumeratingWithState:&v10 objects:v9 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(allClients);
          }

          if ([*(*(&v10 + 1) + 8 * i) isInputMeteringEnabled])
          {
            v8 = 1;
            goto LABEL_12;
          }
        }

        v5 = [(NSMutableArray *)allClients countByEnumeratingWithState:&v10 objects:v9 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
LABEL_12:
    self->_isInputMeteringEnabled = v8;
    AUIOSetInputMeterEnabled(self->_hAUIO, v8);
  }
}

- (void)setOutputMetering
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_hAUIO != 0xFFFFFFFFLL)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    allClients = self->_allClients;
    v4 = [(NSMutableArray *)allClients countByEnumeratingWithState:&v10 objects:v9 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(allClients);
          }

          if ([*(*(&v10 + 1) + 8 * i) isOuputMeteringEnabled])
          {
            v8 = 1;
            goto LABEL_12;
          }
        }

        v5 = [(NSMutableArray *)allClients countByEnumeratingWithState:&v10 objects:v9 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
LABEL_12:
    self->_isOutputMeteringEnabled = v8;
    AUIOSetOutputMeterEnabled(self->_hAUIO, v8);
  }
}

- (BOOL)getAudioSessionMediaProperties:(id)a3 forVPOperatingMode:(unsigned int)a4
{
  v63 = *MEMORY[0x1E69E9840];
  inData = a4;
  if (!a3)
  {
    return 0;
  }

  outInstance = 0;
  BYTE1(inDesc.componentFlags) = 0;
  HIWORD(inDesc.componentFlags) = 0;
  inDesc.componentFlagsMask = 0;
  strcpy(&inDesc, "uouaoipvlppa");
  Next = AudioComponentFindNext(0, &inDesc);
  if (!Next)
  {
    [VCAudioManager getAudioSessionMediaProperties:forVPOperatingMode:];
    v19 = *buf;
    goto LABEL_36;
  }

  v7 = AudioComponentInstanceNew(Next, &outInstance);
  v47 = v7;
  if (v7)
  {
    v19 = v7 | 0xA01B0000;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioManager getAudioSessionMediaProperties:forVPOperatingMode:];
        }
      }

      goto LABEL_36;
    }

    if (objc_opt_respondsToSelector())
    {
      v30 = [(VCAudioManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v30 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_36;
    }

    v38 = VRTraceErrorLogLevelToCSTR();
    v39 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 136316162;
    v52 = v38;
    v53 = 2080;
    v54 = "[VCAudioManager getAudioSessionMediaProperties:forVPOperatingMode:]";
    v55 = 1024;
    v56 = 665;
    v57 = 2112;
    *v58 = v30;
    *&v58[8] = 2048;
    *&v59 = self;
    v35 = " [%s] %s:%d %@(%p) AudioComponentInstanceNew failed";
    v36 = v39;
    v37 = 48;
    goto LABEL_70;
  }

  v8 = AudioUnitSetProperty(outInstance, 0x846u, 0, 0, &inData, 4u);
  v47 = v8;
  if (v8)
  {
    v19 = v8 | 0xA01B0000;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_36;
      }

      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      *buf = 136316674;
      v52 = v33;
      v53 = 2080;
      v54 = "[VCAudioManager getAudioSessionMediaProperties:forVPOperatingMode:]";
      v55 = 1024;
      v56 = 669;
      v57 = 1024;
      *v58 = inData;
      *&v58[4] = 1024;
      *&v58[6] = v47;
      LOWORD(v59) = 1040;
      *(&v59 + 2) = 4;
      WORD3(v59) = 2080;
      *(&v59 + 1) = &v47;
      v35 = " [%s] %s:%d AudioUnitSetProperty failed to set property kAUVoiceIOProperty_OperationMode %d %d %.4s";
      v36 = v34;
      v37 = 56;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v31 = [(VCAudioManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v31 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_36;
      }

      v40 = VRTraceErrorLogLevelToCSTR();
      v41 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      *buf = 136317186;
      v52 = v40;
      v53 = 2080;
      v54 = "[VCAudioManager getAudioSessionMediaProperties:forVPOperatingMode:]";
      v55 = 1024;
      v56 = 669;
      v57 = 2112;
      *v58 = v31;
      *&v58[8] = 2048;
      *&v59 = self;
      WORD4(v59) = 1024;
      *(&v59 + 10) = inData;
      HIWORD(v59) = 1024;
      v60 = v47;
      v61 = 1040;
      *v62 = 4;
      *&v62[4] = 2080;
      *&v62[6] = &v47;
      v35 = " [%s] %s:%d %@(%p) AudioUnitSetProperty failed to set property kAUVoiceIOProperty_OperationMode %d %d %.4s";
      v36 = v41;
      v37 = 76;
    }

    goto LABEL_70;
  }

  outData = 0.0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(outInstance, 0x84Du, 0, 0, &outData, &ioDataSize);
  if (Property < 0 || outData == 0.0)
  {
    outData = dbl_1DBD453B0[inData == 6];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v52 = v12;
          v53 = 2080;
          v54 = "[VCAudioManager getAudioSessionMediaProperties:forVPOperatingMode:]";
          v55 = 1024;
          v56 = 676;
          v57 = 1024;
          *v58 = inData;
          *&v58[4] = 1024;
          *&v58[6] = Property;
          LOWORD(v59) = 2048;
          *(&v59 + 2) = outData;
          v14 = " [%s] %s:%d Failed to get retrieve preferred sample rate for VP operating mode:%d err=0x%x. Defaulting to: %f";
          v15 = v13;
          v16 = 50;
LABEL_18:
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [(VCAudioManager *)self performSelector:sel_logPrefix];
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
          *buf = 136316930;
          v52 = v17;
          v53 = 2080;
          v54 = "[VCAudioManager getAudioSessionMediaProperties:forVPOperatingMode:]";
          v55 = 1024;
          v56 = 676;
          v57 = 2112;
          *v58 = v10;
          *&v58[8] = 2048;
          *&v59 = self;
          WORD4(v59) = 1024;
          *(&v59 + 10) = inData;
          HIWORD(v59) = 1024;
          v60 = Property;
          v61 = 2048;
          *v62 = outData;
          v14 = " [%s] %s:%d %@(%p) Failed to get retrieve preferred sample rate for VP operating mode:%d err=0x%x. Defaulting to: %f";
          v15 = v18;
          v16 = 70;
          goto LABEL_18;
        }
      }
    }
  }

  v44 = NAN;
  ioDataSize = 8;
  v19 = AudioUnitGetProperty(outInstance, 0x84Eu, 0, 0, &v44, &ioDataSize);
  if (v19 < 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioManager getAudioSessionMediaProperties:forVPOperatingMode:];
        }
      }

      goto LABEL_36;
    }

    if (objc_opt_respondsToSelector())
    {
      v32 = [(VCAudioManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v32 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_36;
    }

    v42 = VRTraceErrorLogLevelToCSTR();
    v43 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 136316418;
    v52 = v42;
    v53 = 2080;
    v54 = "[VCAudioManager getAudioSessionMediaProperties:forVPOperatingMode:]";
    v55 = 1024;
    v56 = 682;
    v57 = 2112;
    *v58 = v32;
    *&v58[8] = 2048;
    *&v59 = self;
    WORD4(v59) = 1024;
    *(&v59 + 10) = v19;
    v35 = " [%s] %s:%d %@(%p) Get property failed (block size): %x";
    v36 = v43;
    v37 = 54;
LABEL_70:
    _os_log_error_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_ERROR, v35, buf, v37);
    goto LABEL_36;
  }

  v20 = [+[VCDefaults sharedInstance](VCDefaults forceAudioHardwareSampleRate];
  if (v20)
  {
    outData = v20;
  }

  [a3 setPreferredSampleRate:?];
  [a3 setPreferredBlockSize:v44];
  [a3 setOperatingMode:0];
  v21 = inData == 6 && self->_useOptimizedHandoversForTelephony;
  [a3 setAudioClockDeviceEnabled:v21];
  [a3 setNetworkUplinkClockUsesBaseband:0];
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v22 = [(VCAudioManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v22 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_36;
    }

    v28 = VRTraceErrorLogLevelToCSTR();
    v29 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    *buf = 136316930;
    v52 = v28;
    v53 = 2080;
    v54 = "[VCAudioManager getAudioSessionMediaProperties:forVPOperatingMode:]";
    v55 = 1024;
    v56 = 694;
    v57 = 2112;
    *v58 = v22;
    *&v58[8] = 2048;
    *&v59 = self;
    WORD4(v59) = 1024;
    *(&v59 + 10) = inData;
    HIWORD(v59) = 1024;
    v60 = outData;
    v61 = 2048;
    *v62 = v44;
    v25 = " [%s] %s:%d %@(%p) Hardware preference for VP operating mode: %d -> sampleRate=%d blockSize=%f";
    v26 = v29;
    v27 = 70;
    goto LABEL_35;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v52 = v23;
      v53 = 2080;
      v54 = "[VCAudioManager getAudioSessionMediaProperties:forVPOperatingMode:]";
      v55 = 1024;
      v56 = 694;
      v57 = 1024;
      *v58 = inData;
      *&v58[4] = 1024;
      *&v58[6] = outData;
      LOWORD(v59) = 2048;
      *(&v59 + 2) = v44;
      v25 = " [%s] %s:%d Hardware preference for VP operating mode: %d -> sampleRate=%d blockSize=%f";
      v26 = v24;
      v27 = 50;
LABEL_35:
      _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
    }
  }

LABEL_36:
  if (outInstance)
  {
    AudioComponentInstanceDispose(outInstance);
  }

  return v19 >= 0;
}

- (void)computeHardwarePreferences
{
  v40 = *MEMORY[0x1E69E9840];
  v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v3 = [&unk_1F579C8E8 countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v37;
    *&v4 = 136315906;
    v21 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v37 != v6)
        {
          objc_enumerationMutation(&unk_1F579C8E8);
        }

        v8 = *(*(&v36 + 1) + 8 * v7);
        v9 = objc_alloc_init(VCAudioSessionMediaProperties);
        if (-[VCAudioManager getAudioSessionMediaProperties:forVPOperatingMode:](self, "getAudioSessionMediaProperties:forVPOperatingMode:", v9, [v8 unsignedIntValue]))
        {
          [v22 setObject:v9 forKeyedSubscript:v8];
          goto LABEL_16;
        }

        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v17 = VRTraceErrorLogLevelToCSTR();
            v18 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v19 = [v8 unsignedIntValue];
              *buf = v21;
              v24 = v17;
              v25 = 2080;
              v26 = "[VCAudioManager computeHardwarePreferences]";
              v27 = 1024;
              v28 = 721;
              v29 = 1024;
              LODWORD(v30) = v19;
              v14 = v18;
              v15 = " [%s] %s:%d Failed to get media properties for VP operatingMode:%u";
              v16 = 34;
              goto LABEL_19;
            }
          }
        }

        else
        {
          v10 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v10 = [(VCAudioManager *)self performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v11 = VRTraceErrorLogLevelToCSTR();
            v12 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v13 = [v8 unsignedIntValue];
              *buf = 136316418;
              v24 = v11;
              v25 = 2080;
              v26 = "[VCAudioManager computeHardwarePreferences]";
              v27 = 1024;
              v28 = 721;
              v29 = 2112;
              v30 = v10;
              v31 = 2048;
              v32 = self;
              v33 = 1024;
              v34 = v13;
              v14 = v12;
              v15 = " [%s] %s:%d %@(%p) Failed to get media properties for VP operatingMode:%u";
              v16 = 54;
LABEL_19:
              _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, v15, buf, v16);
            }
          }
        }

LABEL_16:

        ++v7;
      }

      while (v5 != v7);
      v20 = [&unk_1F579C8E8 countByEnumeratingWithState:&v36 objects:v35 count:16];
      v5 = v20;
    }

    while (v20);
  }

  [(VCAudioManager *)self setVpOperatingModeToAudioSessionMediaFormatMapping:v22, v21];
}

- (void)resetAudioTimestamps
{
  VCAudioIOControllerIOState_ResetControllerTime(&self->_sinkData.timestampInitialized);

  VCAudioIOControllerIOState_ResetControllerTime(&self->_sourceData.timestampInitialized);
}

- (int)prewarmingClientOperatingMode
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allClients = self->_allClients;
  v3 = [(NSMutableArray *)allClients countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(allClients);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if ([v7 isPrewarmingClient])
        {
          LODWORD(v3) = [v7 operatingMode];
          return v3;
        }

        ++v6;
      }

      while (v4 != v6);
      v3 = [(NSMutableArray *)allClients countByEnumeratingWithState:&v10 objects:v9 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (void)flushEventQueue:(opaqueCMSimpleQueue *)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = 0.0;
  if (VRTraceIsInternalOSInstalled())
  {
    v4 = micro();
  }

  v5 = objc_opt_new();
  v6 = CMSimpleQueueDequeue(a3);
  v18[0] = v6;
  for (i = 0; v6; v18[0] = v6)
  {
    v8 = [MEMORY[0x1E696B098] valueWithPointer:v6[1]];
    v9 = [v5 containsObject:v8];
    if ((v9 & 1) == 0)
    {
      [v5 addObject:v8];
    }

    VCAudioIOControllerIOState_ReleaseAudioEvent(v18, v9 ^ 1);
    ++i;
    v6 = CMSimpleQueueDequeue(a3);
  }

  [v5 removeAllObjects];

  LogProfileTimeOverLimit(v4, v10, v11, v12, v13, v14, v15, v16, v17, "[VCAudioManager flushEventQueue:]");
}

- (void)removeAllClientsForIO:(_VCAudioIOControllerIOState *)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  for (i = &a3->clientIOList; ; i = &a3->clientIOList)
  {
    v5[0] = VCSingleLinkedListPop(i);
    if (!v5[0])
    {
      break;
    }

    VCAudioIOControllerIOState_ReleaseAudioEvent(v5, 1);
  }
}

- (BOOL)addClient:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableArray *)self->_allClients containsObject:?];
  if ((v5 & 1) == 0)
  {
    [(VCAudioManager *)self enableSpatialStreamParametersForClient:a3];
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

      v9 = [a3 sinkIO];
      v10 = [a3 sourceIO];
      state = self->_state;
      v12 = [(NSMutableArray *)self->_allClients count];
      *buf = 136317186;
      v24 = v7;
      v25 = 2080;
      v26 = "[VCAudioManager addClient:]";
      v27 = 1024;
      v28 = 813;
      v29 = 2048;
      v30 = a3;
      v31 = 2048;
      v32 = v9;
      v33 = 2048;
      v34 = v10;
      v35 = 1024;
      *v36 = state;
      *&v36[4] = 1024;
      *&v36[6] = v12;
      *v37 = 2048;
      *&v37[2] = [a3 spatialToken];
      v13 = " [%s] %s:%d Adding client[%p] with sinkIO[%p], sourceIO[%p] in current manager state=%d clientCount (before add)=%d spatialToken=%llu";
      v14 = v8;
      v15 = 80;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCAudioManager *)self performSelector:sel_logPrefix];
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
      v17 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v22 = [a3 sinkIO];
      v18 = [a3 sourceIO];
      v19 = self->_state;
      v20 = [(NSMutableArray *)self->_allClients count];
      *buf = 136317698;
      v24 = v16;
      v25 = 2080;
      v26 = "[VCAudioManager addClient:]";
      v27 = 1024;
      v28 = 813;
      v29 = 2112;
      v30 = v6;
      v31 = 2048;
      v32 = self;
      v33 = 2048;
      v34 = a3;
      v35 = 2048;
      *v36 = v22;
      *&v36[8] = 2048;
      *v37 = v18;
      *&v37[8] = 1024;
      v38 = v19;
      v39 = 1024;
      v40 = v20;
      v41 = 2048;
      v42 = [a3 spatialToken];
      v13 = " [%s] %s:%d %@(%p) Adding client[%p] with sinkIO[%p], sourceIO[%p] in current manager state=%d clientCount (before add)=%d spatialToken=%llu";
      v14 = v17;
      v15 = 100;
    }

    _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
LABEL_13:
    [(NSMutableArray *)self->_allClients addObject:a3];
    [VCAudioSmartRoutingManager addClient:a3];
  }

  return v5 ^ 1;
}

- (void)waitIdleForClient:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  if (![VCDefaults BOOLeanValueForKey:@"skipAudioManagerIdleWait" defaultValue:0])
  {
    if (([a3 direction] & 2) == 0)
    {
      goto LABEL_29;
    }

    v6 = dispatch_time(0, 1000000000);
    if (!dispatch_semaphore_wait(*([a3 sinkIO] + 16), v6))
    {
      dispatch_semaphore_signal(*([a3 sinkIO] + 16));
      goto LABEL_29;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_28;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      *v34 = 136316162;
      *&v34[4] = v16;
      *&v34[12] = 2080;
      *&v34[14] = "[VCAudioManager waitIdleForClient:]";
      *&v34[22] = 1024;
      LODWORD(v35) = 832;
      WORD2(v35) = 2048;
      *(&v35 + 6) = a3;
      HIWORD(v35) = 2048;
      v36 = [a3 sinkIO];
      v18 = " [%s] %s:%d Sink run lock semaphore was not signaled! client=%p sinkIO=%p";
      v19 = v17;
      v20 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCAudioManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_28;
      }

      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      *v34 = 136316674;
      *&v34[4] = v21;
      *&v34[12] = 2080;
      *&v34[14] = "[VCAudioManager waitIdleForClient:]";
      *&v34[22] = 1024;
      LODWORD(v35) = 832;
      WORD2(v35) = 2112;
      *(&v35 + 6) = v7;
      HIWORD(v35) = 2048;
      v36 = self;
      *v37 = 2048;
      *&v37[2] = a3;
      *&v37[10] = 2048;
      *&v37[12] = [a3 sinkIO];
      v18 = " [%s] %s:%d %@(%p) Sink run lock semaphore was not signaled! client=%p sinkIO=%p";
      v19 = v22;
      v20 = 68;
    }

    _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v18, v34, v20);
LABEL_28:
    _VCAudioManager_ProcessEventQueue(&self->_sinkData);
LABEL_29:
    if (([a3 direction] & 1) == 0)
    {
      return;
    }

    v23 = dispatch_time(0, 1000000000);
    if (!dispatch_semaphore_wait(*([a3 sourceIO] + 16), v23))
    {
      dispatch_semaphore_signal(*([a3 sourceIO] + 16));
      return;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_43;
      }

      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_43;
      }

      v27 = [a3 sourceIO];
      *v34 = 136316162;
      *&v34[4] = v25;
      *&v34[12] = 2080;
      *&v34[14] = "[VCAudioManager waitIdleForClient:]";
      *&v34[22] = 1024;
      LODWORD(v35) = 842;
      WORD2(v35) = 2048;
      *(&v35 + 6) = a3;
      HIWORD(v35) = 2048;
      v36 = v27;
      v28 = " [%s] %s:%d Source run lock semaphore was not signaled! client=%p sourceIO=%p";
      v29 = v26;
      v30 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v24 = [(VCAudioManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v24 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_43;
      }

      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_43;
      }

      v33 = [a3 sourceIO];
      *v34 = 136316674;
      *&v34[4] = v31;
      *&v34[12] = 2080;
      *&v34[14] = "[VCAudioManager waitIdleForClient:]";
      *&v34[22] = 1024;
      LODWORD(v35) = 842;
      WORD2(v35) = 2112;
      *(&v35 + 6) = v24;
      HIWORD(v35) = 2048;
      v36 = self;
      *v37 = 2048;
      *&v37[2] = a3;
      *&v37[10] = 2048;
      *&v37[12] = v33;
      v28 = " [%s] %s:%d %@(%p) Source run lock semaphore was not signaled! client=%p sourceIO=%p";
      v29 = v32;
      v30 = 68;
    }

    _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, v28, v34, v30);
LABEL_43:
    p_sourceData = &self->_sourceData;
    goto LABEL_44;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_18;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *v34 = 136315906;
    *&v34[4] = v8;
    *&v34[12] = 2080;
    *&v34[14] = "[VCAudioManager waitIdleForClient:]";
    *&v34[22] = 1024;
    LODWORD(v35) = 823;
    WORD2(v35) = 2112;
    *(&v35 + 6) = @"skipAudioManagerIdleWait";
    v10 = " [%s] %s:%d %@ set. Skipping idle wait";
    v11 = v9;
    v12 = 38;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCAudioManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_18;
    }

    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *v34 = 136316418;
    *&v34[4] = v13;
    *&v34[12] = 2080;
    *&v34[14] = "[VCAudioManager waitIdleForClient:]";
    *&v34[22] = 1024;
    LODWORD(v35) = 823;
    WORD2(v35) = 2112;
    *(&v35 + 6) = v5;
    HIWORD(v35) = 2048;
    v36 = self;
    *v37 = 2112;
    *&v37[2] = @"skipAudioManagerIdleWait";
    v10 = " [%s] %s:%d %@(%p) %@ set. Skipping idle wait";
    v11 = v14;
    v12 = 58;
  }

  _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, v34, v12);
LABEL_18:
  _VCAudioManager_ProcessEventQueue([(VCAudioManager *)self sinkIO:*v34]);
  p_sourceData = [(VCAudioManager *)self sourceIO];
LABEL_44:
  _VCAudioManager_ProcessEventQueue(p_sourceData);
}

- (BOOL)removeClient:(id)a3
{
  v5 = [(NSMutableArray *)self->_allClients containsObject:?];
  if (v5)
  {
    if (([a3 direction] & 2) != 0)
    {
      -[VCAudioManager unregisterClientIO:controllerIO:](self, "unregisterClientIO:controllerIO:", [a3 sinkIO], &self->_sinkData);
    }

    if ([a3 direction])
    {
      -[VCAudioManager unregisterClientIO:controllerIO:](self, "unregisterClientIO:controllerIO:", [a3 sourceIO], &self->_sourceData);
    }

    [(VCAudioManager *)self waitIdleForClient:a3];
    [VCAudioSmartRoutingManager removeClient:a3];
    [(NSMutableArray *)self->_allClients removeObject:a3];
    [(NSMutableArray *)self->_startingIOClients removeObject:a3];
    [(VCAudioManager *)self disableSpatialStreamParametersForClient:a3];
  }

  return v5;
}

- (void)_cleanupDeadClients
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  allClients = self->_allClients;
  v5 = [(NSMutableArray *)allClients countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    do
    {
      v8 = 0;
      do
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(allClients);
        }

        v9 = *(*(&v32 + 1) + 8 * v8);
        if (![(__CFString *)v9 delegate])
        {
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v16 = VRTraceErrorLogLevelToCSTR();
              v17 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                v20 = v16;
                v21 = 2080;
                v22 = "[VCAudioManager _cleanupDeadClients]";
                v23 = 1024;
                v24 = 877;
                v25 = 2048;
                v26 = v9;
                v13 = v17;
                v14 = " [%s] %s:%d Removing dead client (%p)!";
                v15 = 38;
LABEL_19:
                _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, v14, buf, v15);
              }
            }
          }

          else
          {
            v10 = &stru_1F570E008;
            if (objc_opt_respondsToSelector())
            {
              v10 = [(VCAudioManager *)self performSelector:sel_logPrefix];
            }

            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v11 = VRTraceErrorLogLevelToCSTR();
              v12 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                *buf = 136316418;
                v20 = v11;
                v21 = 2080;
                v22 = "[VCAudioManager _cleanupDeadClients]";
                v23 = 1024;
                v24 = 877;
                v25 = 2112;
                v26 = v10;
                v27 = 2048;
                v28 = self;
                v29 = 2048;
                v30 = v9;
                v13 = v12;
                v14 = " [%s] %s:%d %@(%p) Removing dead client (%p)!";
                v15 = 58;
                goto LABEL_19;
              }
            }
          }

          [v3 setObject:v9 atIndexedSubscript:{objc_msgSend(v3, "count")}];
          [VCAudioSmartRoutingManager removeClient:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v18 = [(NSMutableArray *)allClients countByEnumeratingWithState:&v32 objects:v31 count:16];
      v6 = v18;
    }

    while (v18);
  }

  [(NSMutableArray *)self->_allClients removeObjectsInArray:v3];
}

- (unsigned)vpOperationModeForConferenceOperatingMode:(int)a3 deviceRole:(int)a4
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_isGKVoiceChat)
  {
    v6 = 3;
    goto LABEL_22;
  }

  if (a3 <= 4)
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v6 = 6;
        goto LABEL_22;
      }
    }

    else if (a3 != 1)
    {
      if (a4 == 1)
      {
        v7 = 5;
      }

      else
      {
        v7 = 4;
      }

      if (a3 == 2)
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (a3 <= 6)
  {
    if (a3 != 5)
    {
LABEL_16:
      v6 = 2;
      goto LABEL_22;
    }

LABEL_19:
    v6 = 7;
    goto LABEL_22;
  }

  if (a3 == 7)
  {
    v6 = 8;
    goto LABEL_22;
  }

  v6 = 0;
  if (a3 == 11)
  {
    goto LABEL_19;
  }

LABEL_22:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136316418;
      v12 = v8;
      v13 = 2080;
      v14 = "[VCAudioManager vpOperationModeForConferenceOperatingMode:deviceRole:]";
      v15 = 1024;
      v16 = 913;
      v17 = 1024;
      v18 = a3;
      v19 = 1024;
      v20 = a4;
      v21 = 1024;
      v22 = v6;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d conferenceMode=%d, deviceRole=%d, vpOperatingMode=%d", &v11, 0x2Eu);
    }
  }

  return v6;
}

- (void)computeFormatDescription:(AudioStreamBasicDescription *)a3 withPreferredClient:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = [a4 clientFormat];
  v8 = *(v7 + 32);
  v9 = *(v7 + 16);
  *&a3->mSampleRate = *v7;
  *&a3->mBytesPerPacket = v9;
  *&a3->mBitsPerChannel = v8;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  allClients = self->_allClients;
  v11 = [(NSMutableArray *)allClients countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(allClients);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        if (([a4 deviceRole] != 2 || objc_msgSend(v16, "deviceRole") == 2) && (objc_msgSend(a4, "deviceRole") == 2 || objc_msgSend(v16, "deviceRole") != 2))
        {
          v17 = *([v16 clientFormat] + 28);
          if (v17 > v13)
          {
            v13 = v17;
          }
        }
      }

      v12 = [(NSMutableArray *)allClients countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  a3->mChannelsPerFrame = v13;
}

- (unsigned)computeSamplePerFrameWithPreferredClient:(id)a3 sampleRate:(unsigned int)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  allClients = self->_allClients;
  v7 = [(NSMutableArray *)allClients countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (!v7)
  {
    return -1;
  }

  v8 = v7;
  v9 = *v20;
  v10 = a4;
  v11 = -1;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(allClients);
      }

      v13 = *(*(&v19 + 1) + 8 * i);
      if (([a3 deviceRole] != 2 || objc_msgSend(v13, "deviceRole") == 2) && (objc_msgSend(a3, "deviceRole") == 2 || objc_msgSend(v13, "deviceRole") != 2))
      {
        v14 = [v13 clientFormat];
        LODWORD(v15) = *(v14 + 40);
        v16 = vcvtad_u64_f64(v10 * v15 / *v14);
        if (v11 >= v16)
        {
          v11 = v16;
        }
      }
    }

    v8 = [(NSMutableArray *)allClients countByEnumeratingWithState:&v19 objects:v18 count:16];
  }

  while (v8);
  return v11;
}

- (BOOL)computeAllowAudioRecordingWithPreferredClient:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allClients = self->_allClients;
  v5 = [(NSMutableArray *)allClients countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (!v5)
  {
    v8 = 1;
    return v8 & 1;
  }

  v6 = v5;
  v7 = *v17;
  v8 = 1;
  do
  {
    v9 = 0;
    do
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(allClients);
      }

      v10 = *(*(&v16 + 1) + 8 * v9);
      if ([a3 deviceRole] != 2 || objc_msgSend(v10, "deviceRole") == 2)
      {
        if ([a3 deviceRole] == 2)
        {
          if ((v8 & 1) == 0)
          {
            v8 = 0;
            goto LABEL_14;
          }

LABEL_13:
          v8 = [v10 allowAudioRecording];
          goto LABEL_14;
        }

        v11 = [v10 deviceRole];
        if (v11 != 2)
        {
          v12 = v8 ^ 1;
          v8 &= v11 == 2;
          if (v12)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        v8 &= 1u;
      }

LABEL_14:
      ++v9;
    }

    while (v6 != v9);
    v13 = [(NSMutableArray *)allClients countByEnumeratingWithState:&v16 objects:v15 count:16];
    v6 = v13;
  }

  while (v13);
  return v8 & 1;
}

- (id)newAudioUnitPropertiesWithPreferredClient:(id)a3
{
  v73 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  if ([a3 isPrewarmingClient] && self->_state >= 2)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return self->_currentAudioUnitProperties;
      }

      v39 = VRTraceErrorLogLevelToCSTR();
      v40 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return self->_currentAudioUnitProperties;
      }

      currentAudioUnitProperties = self->_currentAudioUnitProperties;
      *buf = 136315906;
      *&buf[4] = v39;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioManager newAudioUnitPropertiesWithPreferredClient:]";
      *&buf[22] = 1024;
      *&buf[24] = 972;
      *&buf[28] = 2112;
      *&buf[30] = currentAudioUnitProperties;
      v42 = " [%s] %s:%d Last client is prewarming, ignore its settings. _currentAudioUnitProperties=%@";
      v43 = v40;
      v44 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCAudioManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return self->_currentAudioUnitProperties;
      }

      v45 = VRTraceErrorLogLevelToCSTR();
      v46 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return self->_currentAudioUnitProperties;
      }

      v47 = self->_currentAudioUnitProperties;
      *buf = 136316418;
      *&buf[4] = v45;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioManager newAudioUnitPropertiesWithPreferredClient:]";
      *&buf[22] = 1024;
      *&buf[24] = 972;
      *&buf[28] = 2112;
      *&buf[30] = v5;
      *&buf[38] = 2048;
      *&buf[40] = self;
      *&buf[48] = 2112;
      *&buf[50] = v47;
      v42 = " [%s] %s:%d %@(%p) Last client is prewarming, ignore its settings. _currentAudioUnitProperties=%@";
      v43 = v46;
      v44 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEFAULT, v42, buf, v44);
    return self->_currentAudioUnitProperties;
  }

  v6 = objc_alloc_init(VCAudioUnitProperties);
  v7 = -[VCAudioManager vpOperationModeForConferenceOperatingMode:deviceRole:](self, "vpOperationModeForConferenceOperatingMode:deviceRole:", [a3 operatingMode], objc_msgSend(a3, "deviceRole"));
  *v50 = -1;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v50[8] = v8;
  *&v50[24] = v8;
  [(VCAudioManager *)self computeFormatDescription:v50 withPreferredClient:a3];
  if ([a3 deviceRole] == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [(VCAudioUnitProperties *)v6 setAudioUnitType:v9];
  v10 = [(VCAudioUnitProperties *)v6 frameFormatMic];
  v11 = *&v50[16];
  v12 = *v50;
  *(v10 + 32) = *&v50[32];
  *v10 = v12;
  *(v10 + 16) = v11;
  v13 = [(VCAudioManager *)self computeSamplePerFrameWithPreferredClient:a3 sampleRate:*v50];
  *([(VCAudioUnitProperties *)v6 frameFormatMic]+ 40) = v13;
  [(VCAudioUnitProperties *)v6 setAllowAudioRecording:[(VCAudioManager *)self computeAllowAudioRecordingWithPreferredClient:a3]];
  -[VCAudioUnitProperties setDeviceRole:](v6, "setDeviceRole:", [a3 deviceRole]);
  -[VCAudioUnitProperties setOperatingMode:](v6, "setOperatingMode:", [a3 operatingMode]);
  [(VCAudioUnitProperties *)v6 setVpOperatingMode:v7];
  -[VCAudioUnitProperties setAudioSessionId:](v6, "setAudioSessionId:", [a3 audioSessionId]);
  if ([a3 isRemoteCodecInfoValid])
  {
    [a3 remoteCodecSampleRate];
    [(VCAudioUnitProperties *)v6 setRemoteCodecSampleRate:?];
    v14 = [a3 remoteCodecType];
  }

  else
  {
    [(VCAudioUnitProperties *)v6 setRemoteCodecSampleRate:24000.0];
    v14 = 0;
  }

  [(VCAudioUnitProperties *)v6 setRemoteCodecType:v14];
  if ([a3 isRemoteVersionInfoValid])
  {
    [a3 farEndVersionInfo];
    v61 = v70;
    v62 = v71;
    v63 = v72;
    *&buf[32] = v66;
    *&buf[48] = v67;
    *&buf[64] = v68;
    v60 = v69;
    *buf = v64;
    *&buf[16] = v65;
    [(VCAudioUnitProperties *)v6 setFarEndVersionInfo:buf];
  }

  v15 = [(VCAudioUnitProperties *)v6 frameFormatSpeaker];
  v16 = [(VCAudioUnitProperties *)v6 frameFormatMic];
  v18 = *&v16->format.mBytesPerPacket;
  v17 = *&v16->format.mBitsPerChannel;
  *&v15->format.mSampleRate = *&v16->format.mSampleRate;
  *&v15->format.mBytesPerPacket = v18;
  *&v15->format.mBitsPerChannel = v17;
  if ([(VCAudioUnitProperties *)v6 operatingMode]!= 3 && !self->_isGKVoiceChat)
  {
    [(VCAudioManager *)self applySessionContextToAudioUnitProperties:v6 preferredClient:a3];
  }

  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v57 = v19;
  v58 = v19;
  *__str = v19;
  v56 = v19;
  v53 = v19;
  v54 = v19;
  *v51 = v19;
  v52 = v19;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v23 = [(VCAudioUnitProperties *)v6 audioUnitType];
        v24 = FormatToCStr([(VCAudioUnitProperties *)v6 frameFormatMic], __str, 0x40uLL);
        v25 = FormatToCStr([(VCAudioUnitProperties *)v6 frameFormatSpeaker], v51, 0x40uLL);
        v26 = [(VCAudioUnitProperties *)v6 audioSessionId];
        v27 = [(VCAudioUnitProperties *)v6 frameFormatMic][40];
        v28 = [(VCAudioUnitProperties *)v6 vpOperatingMode];
        *buf = 136317186;
        *&buf[4] = v21;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAudioManager newAudioUnitPropertiesWithPreferredClient:]";
        *&buf[22] = 1024;
        *&buf[24] = 1008;
        *&buf[28] = 1024;
        *&buf[30] = v23;
        *&buf[34] = 2080;
        *&buf[36] = v24;
        *&buf[44] = 2080;
        *&buf[46] = v25;
        *&buf[54] = 1024;
        *&buf[56] = v26;
        *&buf[60] = 1024;
        *&buf[62] = v27;
        *&buf[66] = 1024;
        *&buf[68] = v28;
        v29 = " [%s] %s:%d Selected audio unit properties: UnitType=%d, micFormat=%s speakerFormat=%s audioSessionId=%u samplesPerFrame=%d VPOperatingMode=%d";
        v30 = v22;
        v31 = 72;
LABEL_29:
        _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v20 = [(VCAudioManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v20 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v32 = VRTraceErrorLogLevelToCSTR();
      v33 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v49 = [(VCAudioUnitProperties *)v6 audioUnitType];
        v34 = FormatToCStr([(VCAudioUnitProperties *)v6 frameFormatMic], __str, 0x40uLL);
        v35 = FormatToCStr([(VCAudioUnitProperties *)v6 frameFormatSpeaker], v51, 0x40uLL);
        v36 = [(VCAudioUnitProperties *)v6 audioSessionId];
        v37 = [(VCAudioUnitProperties *)v6 frameFormatMic][40];
        v38 = [(VCAudioUnitProperties *)v6 vpOperatingMode];
        *buf = 136317698;
        *&buf[4] = v32;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAudioManager newAudioUnitPropertiesWithPreferredClient:]";
        *&buf[22] = 1024;
        *&buf[24] = 1008;
        *&buf[28] = 2112;
        *&buf[30] = v20;
        *&buf[38] = 2048;
        *&buf[40] = self;
        *&buf[48] = 1024;
        *&buf[50] = v49;
        *&buf[54] = 2080;
        *&buf[56] = v34;
        *&buf[64] = 2080;
        *&buf[66] = v35;
        *&buf[74] = 1024;
        *&buf[76] = v36;
        LOWORD(v60) = 1024;
        *(&v60 + 2) = v37;
        WORD3(v60) = 1024;
        DWORD2(v60) = v38;
        v29 = " [%s] %s:%d %@(%p) Selected audio unit properties: UnitType=%d, micFormat=%s speakerFormat=%s audioSessionId=%u samplesPerFrame=%d VPOperatingMode=%d";
        v30 = v33;
        v31 = 92;
        goto LABEL_29;
      }
    }
  }

  return v6;
}

- (id)newAudioUnitPropertiesForSystemAudioWithPreferredClient:(id)a3 isInput:(BOOL)a4
{
  v61 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v4 = a4;
  v7 = objc_alloc_init(VCAudioUnitProperties);
  *v43 = -1;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v43[8] = v8;
  *&v43[24] = v8;
  [(VCAudioManager *)self computeFormatDescription:v43 withPreferredClient:a3];
  [(VCAudioUnitProperties *)v7 setAudioUnitType:1];
  -[VCAudioUnitProperties setDeviceRole:](v7, "setDeviceRole:", [a3 deviceRole]);
  -[VCAudioUnitProperties setOperatingMode:](v7, "setOperatingMode:", [a3 operatingMode]);
  -[VCAudioUnitProperties setAudioSessionId:](v7, "setAudioSessionId:", [a3 audioSessionId]);
  -[VCAudioUnitProperties setProcessIdentifiersForAudioTap:](v7, "setProcessIdentifiersForAudioTap:", [a3 processIdentifiersForAudioTap]);
  -[VCAudioUnitProperties setMuteBehaviorForAudioTap:](v7, "setMuteBehaviorForAudioTap:", [a3 muteBehaviorForAudioTap]);
  if (v4)
  {
    v9 = [(VCAudioUnitProperties *)v7 frameFormatMic];
    v10 = *&v43[16];
    v11 = *v43;
    *(v9 + 32) = *&v43[32];
    *v9 = v11;
    *(v9 + 16) = v10;
    v12 = [(VCAudioManager *)self computeSamplePerFrameWithPreferredClient:a3 sampleRate:*v43];
    *([(VCAudioUnitProperties *)v7 frameFormatMic]+ 40) = v12;
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v59 = v13;
    v60 = v13;
    v58 = v13;
    *__str = v13;
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [(VCAudioManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v14 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v33 = VRTraceErrorLogLevelToCSTR();
        v34 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v35 = [(VCAudioUnitProperties *)v7 audioUnitType];
          v36 = FormatToCStr([(VCAudioUnitProperties *)v7 frameFormatMic], __str, 0x40uLL);
          v37 = [(VCAudioUnitProperties *)v7 frameFormatMic][40];
          *buf = 136316930;
          v45 = v33;
          v46 = 2080;
          v47 = "[VCAudioManager newAudioUnitPropertiesForSystemAudioWithPreferredClient:isInput:]";
          v48 = 1024;
          v49 = 1035;
          v50 = 2112;
          *v51 = v14;
          *&v51[8] = 2048;
          *&v51[10] = self;
          *&v51[18] = 1024;
          v52 = v35;
          v53 = 2080;
          v54 = v36;
          v55 = 1024;
          v56 = v37;
          v26 = " [%s] %s:%d %@(%p) System audio unit properties: UnitType=%d, micFormat=%s samplesPerFrame=%d";
LABEL_25:
          v31 = v34;
          v32 = 70;
          goto LABEL_26;
        }
      }

      return v7;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return v7;
    }

    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return v7;
    }

    v23 = [(VCAudioUnitProperties *)v7 audioUnitType];
    v24 = FormatToCStr([(VCAudioUnitProperties *)v7 frameFormatMic], __str, 0x40uLL);
    v25 = [(VCAudioUnitProperties *)v7 frameFormatMic][40];
    *buf = 136316418;
    v45 = v21;
    v46 = 2080;
    v47 = "[VCAudioManager newAudioUnitPropertiesForSystemAudioWithPreferredClient:isInput:]";
    v48 = 1024;
    v49 = 1035;
    v50 = 1024;
    *v51 = v23;
    *&v51[4] = 2080;
    *&v51[6] = v24;
    *&v51[14] = 1024;
    *&v51[16] = v25;
    v26 = " [%s] %s:%d System audio unit properties: UnitType=%d, micFormat=%s samplesPerFrame=%d";
LABEL_16:
    v31 = v22;
    v32 = 50;
LABEL_26:
    _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, v26, buf, v32);
    return v7;
  }

  v15 = [(VCAudioUnitProperties *)v7 frameFormatSpeaker];
  v16 = *&v43[16];
  v17 = *v43;
  *(v15 + 32) = *&v43[32];
  *v15 = v17;
  *(v15 + 16) = v16;
  v18 = [(VCAudioManager *)self computeSamplePerFrameWithPreferredClient:a3 sampleRate:*v43];
  *([(VCAudioUnitProperties *)v7 frameFormatSpeaker]+ 40) = v18;
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v59 = v19;
  v60 = v19;
  v58 = v19;
  *__str = v19;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return v7;
    }

    v27 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return v7;
    }

    v28 = [(VCAudioUnitProperties *)v7 audioUnitType];
    v29 = FormatToCStr([(VCAudioUnitProperties *)v7 frameFormatSpeaker], __str, 0x40uLL);
    v30 = [(VCAudioUnitProperties *)v7 frameFormatSpeaker][40];
    *buf = 136316418;
    v45 = v27;
    v46 = 2080;
    v47 = "[VCAudioManager newAudioUnitPropertiesForSystemAudioWithPreferredClient:isInput:]";
    v48 = 1024;
    v49 = 1040;
    v50 = 1024;
    *v51 = v28;
    *&v51[4] = 2080;
    *&v51[6] = v29;
    *&v51[14] = 1024;
    *&v51[16] = v30;
    v26 = " [%s] %s:%d System audio unit properties: UnitType=%d, speakerFormat=%s samplesPerFrame=%d";
    goto LABEL_16;
  }

  if (objc_opt_respondsToSelector())
  {
    v20 = [(VCAudioManager *)self performSelector:sel_logPrefix];
  }

  else
  {
    v20 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v38 = VRTraceErrorLogLevelToCSTR();
    v34 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v39 = [(VCAudioUnitProperties *)v7 audioUnitType];
      v40 = FormatToCStr([(VCAudioUnitProperties *)v7 frameFormatSpeaker], __str, 0x40uLL);
      v41 = [(VCAudioUnitProperties *)v7 frameFormatSpeaker][40];
      *buf = 136316930;
      v45 = v38;
      v46 = 2080;
      v47 = "[VCAudioManager newAudioUnitPropertiesForSystemAudioWithPreferredClient:isInput:]";
      v48 = 1024;
      v49 = 1040;
      v50 = 2112;
      *v51 = v20;
      *&v51[8] = 2048;
      *&v51[10] = self;
      *&v51[18] = 1024;
      v52 = v39;
      v53 = 2080;
      v54 = v40;
      v55 = 1024;
      v56 = v41;
      v26 = " [%s] %s:%d %@(%p) System audio unit properties: UnitType=%d, speakerFormat=%s samplesPerFrame=%d";
      goto LABEL_25;
    }
  }

  return v7;
}

- (id)newAudioSessionMediaPropertiesForSystemAudioWithPreferredClient:(id)a3 audioUnitProperties:(id)a4 isInput:(BOOL)a5
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 0;
  }

  v5 = a5;
  v9 = objc_alloc_init(VCAudioSessionMediaProperties);
  v10 = *([a4 frameFormatSpeaker] + 28);
  if (v5)
  {
    v11 = [a4 frameFormatMic];
  }

  else
  {
    v11 = [a4 frameFormatSpeaker];
  }

  if (*v11 == 48000)
  {
    v12 = 48000;
  }

  else
  {
    v12 = 24000;
  }

  IntValueForKey = VCDefaults_GetIntValueForKey(@"forceAudioSampleRate", v12);
  if (v5)
  {
    v14 = *([a4 frameFormatMic] + 40);
    v15 = [a4 frameFormatMic];
  }

  else
  {
    v14 = *([a4 frameFormatSpeaker] + 40);
    v15 = [a4 frameFormatSpeaker];
  }

  v16 = v14 / *v15;
  [(VCAudioSessionMediaProperties *)v9 setPreferredSampleRate:IntValueForKey];
  [(VCAudioSessionMediaProperties *)v9 setPreferredBlockSize:v16];
  -[VCAudioSessionMediaProperties setOperatingMode:](v9, "setOperatingMode:", [a3 operatingMode]);
  *v28 = IntValueForKey;
  *&v28[8] = 0x296C70636DLL;
  *&v28[16] = 4 * (v10 & 0x7FFFFFF);
  *&v28[20] = 1;
  v29 = *&v28[16];
  *v30 = v10;
  *&v30[4] = 32;
  [(VCAudioSessionMediaProperties *)v9 setInputFormat:v28];
  *v28 = IntValueForKey;
  *&v28[8] = 0x296C70636DLL;
  *&v28[16] = 4 * (v10 & 0x7FFFFFF);
  *&v28[20] = 1;
  v29 = *&v28[16];
  *v30 = v10;
  *&v30[4] = 32;
  [(VCAudioSessionMediaProperties *)v9 setOutputFormat:v28];
  -[VCAudioSessionMediaProperties setProcessId:](v9, "setProcessId:", [a3 clientPid]);
  [(VCAudioSessionMediaProperties *)v9 setSessionActive:1];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(VCAudioSessionMediaProperties *)v9 description];
        *v28 = 136315906;
        *&v28[4] = v18;
        *&v28[12] = 2080;
        *&v28[14] = "[VCAudioManager newAudioSessionMediaPropertiesForSystemAudioWithPreferredClient:audioUnitProperties:isInput:]";
        *&v28[22] = 1024;
        v29 = 1082;
        *v30 = 2112;
        *&v30[2] = v20;
        v21 = " [%s] %s:%d System audio session media properties: %@";
        v22 = v19;
        v23 = 38;
LABEL_22:
        _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, v21, v28, v23);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [(VCAudioManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v17 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v26 = [(VCAudioSessionMediaProperties *)v9 description];
        *v28 = 136316418;
        *&v28[4] = v24;
        *&v28[12] = 2080;
        *&v28[14] = "[VCAudioManager newAudioSessionMediaPropertiesForSystemAudioWithPreferredClient:audioUnitProperties:isInput:]";
        *&v28[22] = 1024;
        v29 = 1082;
        *v30 = 2112;
        *&v30[2] = v17;
        *&v30[10] = 2048;
        v31 = self;
        v32 = 2112;
        v33 = v26;
        v21 = " [%s] %s:%d %@(%p) System audio session media properties: %@";
        v22 = v25;
        v23 = 58;
        goto LABEL_22;
      }
    }
  }

  return v9;
}

+ (AudioStreamBasicDescription)sessionFormatForSampleRate:(SEL)a3
{
  retstr->mSampleRate = a4;
  *&retstr->mFormatID = xmmword_1DBD453C0;
  *&retstr->mBytesPerFrame = xmmword_1DBD453D0;
  return result;
}

- (id)newAudioSessionMediaPropertiesWithPreferredClient:(id)a3 audioUnitProperties:(id)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(VCAudioSessionMediaProperties);
  if ([a3 isPrewarmingClient] && self->_state >= 2)
  {

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return self->_currentAudioSessionMediaProperties;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return self->_currentAudioSessionMediaProperties;
      }

      currentAudioSessionMediaProperties = self->_currentAudioSessionMediaProperties;
      *buf = 136315906;
      *&buf[4] = v14;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioManager newAudioSessionMediaPropertiesWithPreferredClient:audioUnitProperties:]";
      *&buf[22] = 1024;
      *&buf[24] = 1119;
      *&buf[28] = 2112;
      *&buf[30] = currentAudioSessionMediaProperties;
      v17 = " [%s] %s:%d Last client is prewarming, ignore its settings. Use _currentAudioSessionMediaProperties=%@";
      v18 = v15;
      v19 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCAudioManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return self->_currentAudioSessionMediaProperties;
      }

      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return self->_currentAudioSessionMediaProperties;
      }

      v28 = self->_currentAudioSessionMediaProperties;
      *buf = 136316418;
      *&buf[4] = v26;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioManager newAudioSessionMediaPropertiesWithPreferredClient:audioUnitProperties:]";
      *&buf[22] = 1024;
      *&buf[24] = 1119;
      *&buf[28] = 2112;
      *&buf[30] = v8;
      *&buf[38] = 2048;
      v56 = self;
      v57 = 2112;
      v58 = v28;
      v17 = " [%s] %s:%d %@(%p) Last client is prewarming, ignore its settings. Use _currentAudioSessionMediaProperties=%@";
      v18 = v27;
      v19 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    return self->_currentAudioSessionMediaProperties;
  }

  v9 = -[VCAudioManager vpOperationModeForConferenceOperatingMode:deviceRole:](self, "vpOperationModeForConferenceOperatingMode:deviceRole:", [a3 operatingMode], objc_msgSend(a3, "deviceRole"));
  v10 = -[NSDictionary objectForKeyedSubscript:](self->_vpOperatingModeToAudioSessionMediaFormatMapping, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v9]);
  [v10 setOperatingMode:{objc_msgSend(a3, "operatingMode")}];
  [v10 preferredSampleRate];
  v12 = v11;
  if (a4 && v11 == 0.0)
  {
    if (*[a4 frameFormatSpeaker] == 0.0)
    {
      goto LABEL_32;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_31;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      v22 = *[a4 frameFormatSpeaker];
      *buf = 136315906;
      *&buf[4] = v20;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioManager newAudioSessionMediaPropertiesWithPreferredClient:audioUnitProperties:]";
      *&buf[22] = 1024;
      *&buf[24] = 1130;
      *&buf[28] = 2048;
      *&buf[30] = v22;
      v23 = " [%s] %s:%d Override sampleRate=%f from audioUnitProperties, due to vpOperatingModeToAudioSessionMediaFormatMapping unavailability";
      v24 = v21;
      v25 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [(VCAudioManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v13 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_31;
      }

      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      v31 = *[a4 frameFormatSpeaker];
      *buf = 136316418;
      *&buf[4] = v29;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioManager newAudioSessionMediaPropertiesWithPreferredClient:audioUnitProperties:]";
      *&buf[22] = 1024;
      *&buf[24] = 1130;
      *&buf[28] = 2112;
      *&buf[30] = v13;
      *&buf[38] = 2048;
      v56 = self;
      v57 = 2048;
      v58 = v31;
      v23 = " [%s] %s:%d %@(%p) Override sampleRate=%f from audioUnitProperties, due to vpOperatingModeToAudioSessionMediaFormatMapping unavailability";
      v24 = v30;
      v25 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
LABEL_31:
    v12 = *[a4 frameFormatSpeaker];
    goto LABEL_32;
  }

  if (!a4)
  {
    goto LABEL_33;
  }

LABEL_32:
  v32 = [a4 frameFormatSpeaker];
  v33 = 48000.0;
  if (*v32 != 48000.0)
  {
LABEL_33:
    v33 = v12;
  }

  *v54 = -1;
  *&v34 = 0xAAAAAAAAAAAAAAAALL;
  *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v54[8] = v34;
  *&v54[24] = v34;
  [VCAudioManager sessionFormatForSampleRate:v33];
  [v10 preferredBlockSize];
  DoubleValueForKey = VCDefaults_GetDoubleValueForKey(@"forceAudioBlockSize", v35);
  if (a4)
  {
    LODWORD(v37) = *([a4 frameFormatSpeaker] + 40);
    v38 = v37 / *[a4 frameFormatSpeaker];
    if (DoubleValueForKey >= v38 || DoubleValueForKey == 0.0)
    {
      DoubleValueForKey = v38;
    }
  }

  [(VCAudioSessionMediaProperties *)v7 setPreferredSampleRate:*v54];
  [(VCAudioSessionMediaProperties *)v7 setPreferredBlockSize:DoubleValueForKey];
  -[VCAudioSessionMediaProperties setOperatingMode:](v7, "setOperatingMode:", [v10 operatingMode]);
  [(VCAudioSessionMediaProperties *)v7 setVpOperatingMode:v9];
  *buf = *v54;
  *&buf[16] = *&v54[16];
  *&buf[32] = *&v54[32];
  [(VCAudioSessionMediaProperties *)v7 setInputFormat:buf];
  if (a4)
  {
    v40 = *([a4 frameFormatSpeaker] + 28);
  }

  else
  {
    v40 = 1;
  }

  *&v54[28] = v40;
  *buf = *v54;
  *&buf[16] = *&v54[16];
  *&buf[32] = *&v54[32];
  [(VCAudioSessionMediaProperties *)v7 setOutputFormat:buf];
  -[VCAudioSessionMediaProperties setProcessId:](v7, "setProcessId:", [a3 clientPid]);
  if (self->_isGKVoiceChat)
  {
    v41 = 0;
  }

  else
  {
    v41 = !self->_isInDaemon || [a3 deviceRole] != 2;
  }

  [(VCAudioSessionMediaProperties *)v7 setSessionActive:v41];
  v42 = self->_useOptimizedHandoversForTelephony && [v10 operatingMode] == 3;
  [(VCAudioSessionMediaProperties *)v7 setAudioClockDeviceEnabled:v42];
  -[VCAudioSessionMediaProperties setNetworkUplinkClockUsesBaseband:](v7, "setNetworkUplinkClockUsesBaseband:", [a3 networkUplinkClockUsesBaseband]);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v44 = VRTraceErrorLogLevelToCSTR();
      v45 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v46 = [(VCAudioSessionMediaProperties *)v7 description];
        *buf = 136315906;
        *&buf[4] = v44;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAudioManager newAudioSessionMediaPropertiesWithPreferredClient:audioUnitProperties:]";
        *&buf[22] = 1024;
        *&buf[24] = 1157;
        *&buf[28] = 2112;
        *&buf[30] = v46;
        v47 = " [%s] %s:%d Selected audio session media properties: %@";
        v48 = v45;
        v49 = 38;
LABEL_62:
        _os_log_impl(&dword_1DB56E000, v48, OS_LOG_TYPE_DEFAULT, v47, buf, v49);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v43 = [(VCAudioManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v43 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v50 = VRTraceErrorLogLevelToCSTR();
      v51 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v52 = [(VCAudioSessionMediaProperties *)v7 description];
        *buf = 136316418;
        *&buf[4] = v50;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAudioManager newAudioSessionMediaPropertiesWithPreferredClient:audioUnitProperties:]";
        *&buf[22] = 1024;
        *&buf[24] = 1157;
        *&buf[28] = 2112;
        *&buf[30] = v43;
        *&buf[38] = 2048;
        v56 = self;
        v57 = 2112;
        v58 = v52;
        v47 = " [%s] %s:%d %@(%p) Selected audio session media properties: %@";
        v48 = v51;
        v49 = 58;
        goto LABEL_62;
      }
    }
  }

  return v7;
}

- (AVAudioDevice)currentInputDevice
{
  pthread_mutex_lock(&self->_inputDeviceMutex);
  v3 = self->_inputDevice;
  pthread_mutex_unlock(&self->_inputDeviceMutex);
  return v3;
}

- (void)setCurrentInputDeviceInternal:(id)a3
{
  pthread_mutex_lock(&self->_inputDeviceMutex);

  self->_inputDevice = a3;

  pthread_mutex_unlock(&self->_inputDeviceMutex);
}

- (void)updateCurrentInputDevice:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__VCAudioManager_updateCurrentInputDevice___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = a3;
  block[5] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __43__VCAudioManager_updateCurrentInputDevice___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(*(a1 + 32) "deviceID")];
  result = [objc_msgSend(*(*(a1 + 40) + 232) "deviceID")];
  if (v2 != result)
  {
    if (objc_opt_class() == *(a1 + 40))
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return [*(a1 + 40) setCurrentInputDeviceInternal:{*(a1 + 32), *v21, *&v21[16], v22, *v23, *&v23[8], *&v23[16], v24}];
      }

      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return [*(a1 + 40) setCurrentInputDeviceInternal:{*(a1 + 32), *v21, *&v21[16], v22, *v23, *&v23[8], *&v23[16], v24}];
      }

      v7 = [objc_msgSend(*(*(a1 + 40) + 232) "deviceName")];
      v8 = [objc_msgSend(*(*(a1 + 40) + 232) "deviceID")];
      v9 = [objc_msgSend(*(a1 + 32) "deviceName")];
      v10 = [objc_msgSend(*(a1 + 32) "deviceID")];
      *v21 = 136316674;
      *&v21[4] = v5;
      *&v21[12] = 2080;
      *&v21[14] = "[VCAudioManager updateCurrentInputDevice:]_block_invoke";
      *&v21[22] = 1024;
      LODWORD(v22) = 1202;
      WORD2(v22) = 2080;
      *(&v22 + 6) = v7;
      HIWORD(v22) = 1024;
      *v23 = v8;
      *&v23[4] = 2080;
      *&v23[6] = v9;
      *&v23[14] = 1024;
      *&v23[16] = v10;
      v11 = " [%s] %s:%d Input device changed via default change listener. current input device=%s deviceID=%u new input device=%s deviceID=%u";
      v12 = v6;
      v13 = 60;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = [*(a1 + 40) performSelector:sel_logPrefix];
      }

      else
      {
        v4 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return [*(a1 + 40) setCurrentInputDeviceInternal:{*(a1 + 32), *v21, *&v21[16], v22, *v23, *&v23[8], *&v23[16], v24}];
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return [*(a1 + 40) setCurrentInputDeviceInternal:{*(a1 + 32), *v21, *&v21[16], v22, *v23, *&v23[8], *&v23[16], v24}];
      }

      v16 = *(a1 + 40);
      v17 = [objc_msgSend(*(v16 + 232) "deviceName")];
      v18 = [objc_msgSend(*(*(a1 + 40) + 232) "deviceID")];
      v19 = [objc_msgSend(*(a1 + 32) "deviceName")];
      v20 = [objc_msgSend(*(a1 + 32) "deviceID")];
      *v21 = 136317186;
      *&v21[4] = v14;
      *&v21[12] = 2080;
      *&v21[14] = "[VCAudioManager updateCurrentInputDevice:]_block_invoke";
      *&v21[22] = 1024;
      LODWORD(v22) = 1202;
      WORD2(v22) = 2112;
      *(&v22 + 6) = v4;
      HIWORD(v22) = 2048;
      *v23 = v16;
      *&v23[8] = 2080;
      *&v23[10] = v17;
      *&v23[18] = 1024;
      *&v23[20] = v18;
      LOWORD(v24) = 2080;
      *(&v24 + 2) = v19;
      WORD5(v24) = 1024;
      HIDWORD(v24) = v20;
      v11 = " [%s] %s:%d %@(%p) Input device changed via default change listener. current input device=%s deviceID=%u new input device=%s deviceID=%u";
      v12 = v15;
      v13 = 80;
    }

    _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, v21, v13);
    return [*(a1 + 40) setCurrentInputDeviceInternal:{*(a1 + 32), *v21, *&v21[16], v22, *v23, *&v23[8], *&v23[16], v24}];
  }

  return result;
}

- (void)setCurrentInputDevice:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__VCAudioManager_setCurrentInputDevice___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_async(dispatchQueue, block);
}

void __40__VCAudioManager_setCurrentInputDevice___block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 256) != 1)
  {
    v3 = [objc_msgSend(*(a1 + 40) "deviceID")];
    if (v3 == [objc_msgSend(*(*(a1 + 32) + 232) "deviceID")])
    {
      return;
    }

    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v25 = [*(a1 + 40) description];
          v26 = [*(*(a1 + 32) + 232) description];
          *v56 = 136316162;
          *&v56[4] = v23;
          *&v56[12] = 2080;
          *&v56[14] = "[VCAudioManager setCurrentInputDevice:]_block_invoke";
          *&v56[22] = 1024;
          LODWORD(v57) = 1215;
          WORD2(v57) = 2112;
          *(&v57 + 6) = v25;
          HIWORD(v57) = 2112;
          *v58 = v26;
          v27 = " [%s] %s:%d Setting input device=%@, previous input device=%@";
          v28 = v24;
          v29 = 48;
LABEL_24:
          _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, v27, v56, v29);
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

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v30 = VRTraceErrorLogLevelToCSTR();
        v31 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v32 = *(a1 + 32);
          v33 = [*(a1 + 40) description];
          v34 = [*(*(a1 + 32) + 232) description];
          *v56 = 136316674;
          *&v56[4] = v30;
          *&v56[12] = 2080;
          *&v56[14] = "[VCAudioManager setCurrentInputDevice:]_block_invoke";
          *&v56[22] = 1024;
          LODWORD(v57) = 1215;
          WORD2(v57) = 2112;
          *(&v57 + 6) = v4;
          HIWORD(v57) = 2048;
          *v58 = v32;
          *&v58[8] = 2112;
          *&v58[10] = v33;
          *&v58[18] = 2112;
          *&v58[20] = v34;
          v27 = " [%s] %s:%d %@(%p) Setting input device=%@, previous input device=%@";
          v28 = v31;
          v29 = 68;
          goto LABEL_24;
        }
      }
    }

    [*(a1 + 32) setCurrentInputDeviceInternal:{*(a1 + 40), *v56, *&v56[16], v57, *v58, *&v58[8], *&v58[24]}];
    v35 = *(a1 + 32);
    if (*(v35 + 184) != 3)
    {
      return;
    }

    [v35 setupIODevicesForAUIO:*(v35 + 168)];
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        return;
      }

      v37 = VRTraceErrorLogLevelToCSTR();
      v38 = *MEMORY[0x1E6986650];
      v39 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = [objc_msgSend(*(*(a1 + 32) + 232) "deviceName")];
          v41 = [objc_msgSend(*(*(a1 + 32) + 232) "deviceID")];
          *v56 = 136316162;
          *&v56[4] = v37;
          *&v56[12] = 2080;
          *&v56[14] = "[VCAudioManager setCurrentInputDevice:]_block_invoke";
          *&v56[22] = 1024;
          LODWORD(v57) = 1219;
          WORD2(v57) = 2080;
          *(&v57 + 6) = v40;
          HIWORD(v57) = 1024;
          *v58 = v41;
          v12 = " [%s] %s:%d Input device change completed. New device=%s deviceID=%u";
          v13 = v38;
          v14 = 44;
          goto LABEL_16;
        }

        return;
      }

      if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v54 = [objc_msgSend(*(*(a1 + 32) + 232) "deviceName")];
      v55 = [objc_msgSend(*(*(a1 + 32) + 232) "deviceID")];
      *v56 = 136316162;
      *&v56[4] = v37;
      *&v56[12] = 2080;
      *&v56[14] = "[VCAudioManager setCurrentInputDevice:]_block_invoke";
      *&v56[22] = 1024;
      LODWORD(v57) = 1219;
      WORD2(v57) = 2080;
      *(&v57 + 6) = v54;
      HIWORD(v57) = 1024;
      *v58 = v55;
      v51 = " [%s] %s:%d Input device change completed. New device=%s deviceID=%u";
      v52 = v38;
      v53 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v36 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v36 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        return;
      }

      v42 = VRTraceErrorLogLevelToCSTR();
      v43 = *MEMORY[0x1E6986650];
      v44 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = *(a1 + 32);
          v46 = [objc_msgSend(*(v45 + 232) "deviceName")];
          v47 = [objc_msgSend(*(*(a1 + 32) + 232) "deviceID")];
          *v56 = 136316674;
          *&v56[4] = v42;
          *&v56[12] = 2080;
          *&v56[14] = "[VCAudioManager setCurrentInputDevice:]_block_invoke";
          *&v56[22] = 1024;
          LODWORD(v57) = 1219;
          WORD2(v57) = 2112;
          *(&v57 + 6) = v36;
          HIWORD(v57) = 2048;
          *v58 = v45;
          *&v58[8] = 2080;
          *&v58[10] = v46;
          *&v58[18] = 1024;
          *&v58[20] = v47;
          v12 = " [%s] %s:%d %@(%p) Input device change completed. New device=%s deviceID=%u";
          v13 = v43;
          v14 = 64;
          goto LABEL_16;
        }

        return;
      }

      if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v48 = *(a1 + 32);
      v49 = [objc_msgSend(*(v48 + 232) "deviceName")];
      v50 = [objc_msgSend(*(*(a1 + 32) + 232) "deviceID")];
      *v56 = 136316674;
      *&v56[4] = v42;
      *&v56[12] = 2080;
      *&v56[14] = "[VCAudioManager setCurrentInputDevice:]_block_invoke";
      *&v56[22] = 1024;
      LODWORD(v57) = 1219;
      WORD2(v57) = 2112;
      *(&v57 + 6) = v36;
      HIWORD(v57) = 2048;
      *v58 = v48;
      *&v58[8] = 2080;
      *&v58[10] = v49;
      *&v58[18] = 1024;
      *&v58[20] = v50;
      v51 = " [%s] %s:%d %@(%p) Input device change completed. New device=%s deviceID=%u";
      v52 = v43;
      v53 = 64;
    }

    _os_log_debug_impl(&dword_1DB56E000, v52, OS_LOG_TYPE_DEBUG, v51, v56, v53);
    return;
  }

  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = [objc_msgSend(*(a1 + 40) "deviceID")];
        v8 = *(a1 + 32);
        v9 = *(v8 + 256);
        v10 = [objc_msgSend(*(v8 + 232) "deviceName")];
        v11 = [objc_msgSend(*(*(a1 + 32) + 232) "deviceID")];
        *v56 = 136316674;
        *&v56[4] = v5;
        *&v56[12] = 2080;
        *&v56[14] = "[VCAudioManager setCurrentInputDevice:]_block_invoke";
        *&v56[22] = 1024;
        LODWORD(v57) = 1211;
        WORD2(v57) = 1024;
        *(&v57 + 6) = v7;
        WORD5(v57) = 1024;
        HIDWORD(v57) = v9;
        *v58 = 2080;
        *&v58[2] = v10;
        *&v58[10] = 1024;
        *&v58[12] = v11;
        v12 = " [%s] %s:%d Ignoring attempt to set newInputDevice=%u since _followSystemInput=%d. Current inputDevice=%s deviceID=%u";
        v13 = v6;
        v14 = 56;
LABEL_16:
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, v56, v14);
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
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        v18 = [objc_msgSend(*(a1 + 40) "deviceID")];
        v19 = *(a1 + 32);
        v20 = *(v19 + 256);
        v21 = [objc_msgSend(*(v19 + 232) "deviceName")];
        v22 = [objc_msgSend(*(*(a1 + 32) + 232) "deviceID")];
        *v56 = 136317186;
        *&v56[4] = v15;
        *&v56[12] = 2080;
        *&v56[14] = "[VCAudioManager setCurrentInputDevice:]_block_invoke";
        *&v56[22] = 1024;
        LODWORD(v57) = 1211;
        WORD2(v57) = 2112;
        *(&v57 + 6) = v2;
        HIWORD(v57) = 2048;
        *v58 = v17;
        *&v58[8] = 1024;
        *&v58[10] = v18;
        *&v58[14] = 1024;
        *&v58[16] = v20;
        *&v58[20] = 2080;
        *&v58[22] = v21;
        *&v58[30] = 1024;
        v59 = v22;
        v12 = " [%s] %s:%d %@(%p) Ignoring attempt to set newInputDevice=%u since _followSystemInput=%d. Current inputDevice=%s deviceID=%u";
        v13 = v16;
        v14 = 76;
        goto LABEL_16;
      }
    }
  }
}

- (AVAudioDevice)currentOutputDevice
{
  pthread_mutex_lock(&self->_outputDeviceMutex);
  v3 = self->_outputDevice;
  pthread_mutex_unlock(&self->_outputDeviceMutex);
  return v3;
}

- (void)setCurrentOutputDeviceInternal:(id)a3
{
  pthread_mutex_lock(&self->_outputDeviceMutex);

  self->_outputDevice = a3;

  pthread_mutex_unlock(&self->_outputDeviceMutex);
}

- (void)setCurrentOutputDevice:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__VCAudioManager_setCurrentOutputDevice___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_async(dispatchQueue, block);
}

void __41__VCAudioManager_setCurrentOutputDevice___block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 257) != 1)
  {
    v3 = [objc_msgSend(*(a1 + 40) "deviceID")];
    if (v3 == [objc_msgSend(*(*(a1 + 32) + 240) "deviceID")])
    {
      return;
    }

    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v25 = [objc_msgSend(*(a1 + 40) "deviceID")];
          v26 = [objc_msgSend(*(*(a1 + 32) + 240) "deviceID")];
          *v56 = 136316162;
          *&v56[4] = v23;
          *&v56[12] = 2080;
          *&v56[14] = "[VCAudioManager setCurrentOutputDevice:]_block_invoke";
          *&v56[22] = 1024;
          LODWORD(v57) = 1248;
          WORD2(v57) = 1024;
          *(&v57 + 6) = v25;
          WORD5(v57) = 1024;
          HIDWORD(v57) = v26;
          v27 = " [%s] %s:%d Setting output deviceID=%u, previous output deviceID=%u";
          v28 = v24;
          v29 = 40;
LABEL_24:
          _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, v27, v56, v29);
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

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v30 = VRTraceErrorLogLevelToCSTR();
        v31 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v32 = *(a1 + 32);
          v33 = [objc_msgSend(*(a1 + 40) "deviceID")];
          v34 = [objc_msgSend(*(*(a1 + 32) + 240) "deviceID")];
          *v56 = 136316674;
          *&v56[4] = v30;
          *&v56[12] = 2080;
          *&v56[14] = "[VCAudioManager setCurrentOutputDevice:]_block_invoke";
          *&v56[22] = 1024;
          LODWORD(v57) = 1248;
          WORD2(v57) = 2112;
          *(&v57 + 6) = v4;
          HIWORD(v57) = 2048;
          *v58 = v32;
          *&v58[8] = 1024;
          *&v58[10] = v33;
          *&v58[14] = 1024;
          *&v58[16] = v34;
          v27 = " [%s] %s:%d %@(%p) Setting output deviceID=%u, previous output deviceID=%u";
          v28 = v31;
          v29 = 60;
          goto LABEL_24;
        }
      }
    }

    [*(a1 + 32) setCurrentOutputDeviceInternal:{*(a1 + 40), *v56, *&v56[16], v57, *v58, *&v58[8]}];
    v35 = *(a1 + 32);
    if (*(v35 + 184) != 3)
    {
      return;
    }

    [v35 setupIODevicesForAUIO:*(v35 + 168)];
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        return;
      }

      v37 = VRTraceErrorLogLevelToCSTR();
      v38 = *MEMORY[0x1E6986650];
      v39 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = [objc_msgSend(*(*(a1 + 32) + 240) "deviceName")];
          v41 = [objc_msgSend(*(*(a1 + 32) + 240) "deviceID")];
          *v56 = 136316162;
          *&v56[4] = v37;
          *&v56[12] = 2080;
          *&v56[14] = "[VCAudioManager setCurrentOutputDevice:]_block_invoke";
          *&v56[22] = 1024;
          LODWORD(v57) = 1252;
          WORD2(v57) = 2080;
          *(&v57 + 6) = v40;
          HIWORD(v57) = 1024;
          *v58 = v41;
          v12 = " [%s] %s:%d Output device change completed. New device=%s deviceID=%u";
          v13 = v38;
          v14 = 44;
          goto LABEL_16;
        }

        return;
      }

      if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v54 = [objc_msgSend(*(*(a1 + 32) + 240) "deviceName")];
      v55 = [objc_msgSend(*(*(a1 + 32) + 240) "deviceID")];
      *v56 = 136316162;
      *&v56[4] = v37;
      *&v56[12] = 2080;
      *&v56[14] = "[VCAudioManager setCurrentOutputDevice:]_block_invoke";
      *&v56[22] = 1024;
      LODWORD(v57) = 1252;
      WORD2(v57) = 2080;
      *(&v57 + 6) = v54;
      HIWORD(v57) = 1024;
      *v58 = v55;
      v51 = " [%s] %s:%d Output device change completed. New device=%s deviceID=%u";
      v52 = v38;
      v53 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v36 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v36 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        return;
      }

      v42 = VRTraceErrorLogLevelToCSTR();
      v43 = *MEMORY[0x1E6986650];
      v44 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = *(a1 + 32);
          v46 = [objc_msgSend(*(v45 + 240) "deviceName")];
          v47 = [objc_msgSend(*(*(a1 + 32) + 240) "deviceID")];
          *v56 = 136316674;
          *&v56[4] = v42;
          *&v56[12] = 2080;
          *&v56[14] = "[VCAudioManager setCurrentOutputDevice:]_block_invoke";
          *&v56[22] = 1024;
          LODWORD(v57) = 1252;
          WORD2(v57) = 2112;
          *(&v57 + 6) = v36;
          HIWORD(v57) = 2048;
          *v58 = v45;
          *&v58[8] = 2080;
          *&v58[10] = v46;
          *&v58[18] = 1024;
          *&v58[20] = v47;
          v12 = " [%s] %s:%d %@(%p) Output device change completed. New device=%s deviceID=%u";
          v13 = v43;
          v14 = 64;
          goto LABEL_16;
        }

        return;
      }

      if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v48 = *(a1 + 32);
      v49 = [objc_msgSend(*(v48 + 240) "deviceName")];
      v50 = [objc_msgSend(*(*(a1 + 32) + 240) "deviceID")];
      *v56 = 136316674;
      *&v56[4] = v42;
      *&v56[12] = 2080;
      *&v56[14] = "[VCAudioManager setCurrentOutputDevice:]_block_invoke";
      *&v56[22] = 1024;
      LODWORD(v57) = 1252;
      WORD2(v57) = 2112;
      *(&v57 + 6) = v36;
      HIWORD(v57) = 2048;
      *v58 = v48;
      *&v58[8] = 2080;
      *&v58[10] = v49;
      *&v58[18] = 1024;
      *&v58[20] = v50;
      v51 = " [%s] %s:%d %@(%p) Output device change completed. New device=%s deviceID=%u";
      v52 = v43;
      v53 = 64;
    }

    _os_log_debug_impl(&dword_1DB56E000, v52, OS_LOG_TYPE_DEBUG, v51, v56, v53);
    return;
  }

  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = [objc_msgSend(*(a1 + 40) "deviceID")];
        v8 = *(a1 + 32);
        v9 = *(v8 + 257);
        v10 = [objc_msgSend(*(v8 + 240) "deviceName")];
        v11 = [objc_msgSend(*(*(a1 + 32) + 240) "deviceID")];
        *v56 = 136316674;
        *&v56[4] = v5;
        *&v56[12] = 2080;
        *&v56[14] = "[VCAudioManager setCurrentOutputDevice:]_block_invoke";
        *&v56[22] = 1024;
        LODWORD(v57) = 1244;
        WORD2(v57) = 1024;
        *(&v57 + 6) = v7;
        WORD5(v57) = 1024;
        HIDWORD(v57) = v9;
        *v58 = 2080;
        *&v58[2] = v10;
        *&v58[10] = 1024;
        *&v58[12] = v11;
        v12 = " [%s] %s:%d Ignoring attempt to set newOutputDevice=%u since _followSystemOutput=%d. Current outputDevice=%s deviceID=%u";
        v13 = v6;
        v14 = 56;
LABEL_16:
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, v56, v14);
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
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        v18 = [objc_msgSend(*(a1 + 40) "deviceID")];
        v19 = *(a1 + 32);
        v20 = *(v19 + 257);
        v21 = [objc_msgSend(*(v19 + 240) "deviceName")];
        v22 = [objc_msgSend(*(*(a1 + 32) + 240) "deviceID")];
        *v56 = 136317186;
        *&v56[4] = v15;
        *&v56[12] = 2080;
        *&v56[14] = "[VCAudioManager setCurrentOutputDevice:]_block_invoke";
        *&v56[22] = 1024;
        LODWORD(v57) = 1244;
        WORD2(v57) = 2112;
        *(&v57 + 6) = v2;
        HIWORD(v57) = 2048;
        *v58 = v17;
        *&v58[8] = 1024;
        *&v58[10] = v18;
        *&v58[14] = 1024;
        *&v58[16] = v20;
        *&v58[20] = 2080;
        *&v58[22] = v21;
        v59 = 1024;
        v60 = v22;
        v12 = " [%s] %s:%d %@(%p) Ignoring attempt to set newOutputDevice=%u since _followSystemOutput=%d. Current outputDevice=%s deviceID=%u";
        v13 = v16;
        v14 = 76;
        goto LABEL_16;
      }
    }
  }
}

- (void)updateCurrentOutputDevice:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__VCAudioManager_updateCurrentOutputDevice___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = a3;
  block[5] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __44__VCAudioManager_updateCurrentOutputDevice___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(*(a1 + 32) "deviceID")];
  result = [objc_msgSend(*(*(a1 + 40) + 240) "deviceID")];
  if (v2 != result)
  {
    if (objc_opt_class() == *(a1 + 40))
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return [*(a1 + 40) setCurrentOutputDeviceInternal:{*(a1 + 32), *v21, *&v21[16], v22, *v23, *&v23[8], *&v23[16], v24}];
      }

      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return [*(a1 + 40) setCurrentOutputDeviceInternal:{*(a1 + 32), *v21, *&v21[16], v22, *v23, *&v23[8], *&v23[16], v24}];
      }

      v7 = [objc_msgSend(*(*(a1 + 40) + 240) "deviceName")];
      v8 = [objc_msgSend(*(*(a1 + 40) + 240) "deviceID")];
      v9 = [objc_msgSend(*(a1 + 32) "deviceName")];
      v10 = [objc_msgSend(*(a1 + 32) "deviceID")];
      *v21 = 136316674;
      *&v21[4] = v5;
      *&v21[12] = 2080;
      *&v21[14] = "[VCAudioManager updateCurrentOutputDevice:]_block_invoke";
      *&v21[22] = 1024;
      LODWORD(v22) = 1261;
      WORD2(v22) = 2080;
      *(&v22 + 6) = v7;
      HIWORD(v22) = 1024;
      *v23 = v8;
      *&v23[4] = 2080;
      *&v23[6] = v9;
      *&v23[14] = 1024;
      *&v23[16] = v10;
      v11 = " [%s] %s:%d Output device changed via default change listener. current output device=%s deviceID=%u new output device=%s deviceID=%u";
      v12 = v6;
      v13 = 60;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = [*(a1 + 40) performSelector:sel_logPrefix];
      }

      else
      {
        v4 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return [*(a1 + 40) setCurrentOutputDeviceInternal:{*(a1 + 32), *v21, *&v21[16], v22, *v23, *&v23[8], *&v23[16], v24}];
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return [*(a1 + 40) setCurrentOutputDeviceInternal:{*(a1 + 32), *v21, *&v21[16], v22, *v23, *&v23[8], *&v23[16], v24}];
      }

      v16 = *(a1 + 40);
      v17 = [objc_msgSend(*(v16 + 240) "deviceName")];
      v18 = [objc_msgSend(*(*(a1 + 40) + 240) "deviceID")];
      v19 = [objc_msgSend(*(a1 + 32) "deviceName")];
      v20 = [objc_msgSend(*(a1 + 32) "deviceID")];
      *v21 = 136317186;
      *&v21[4] = v14;
      *&v21[12] = 2080;
      *&v21[14] = "[VCAudioManager updateCurrentOutputDevice:]_block_invoke";
      *&v21[22] = 1024;
      LODWORD(v22) = 1261;
      WORD2(v22) = 2112;
      *(&v22 + 6) = v4;
      HIWORD(v22) = 2048;
      *v23 = v16;
      *&v23[8] = 2080;
      *&v23[10] = v17;
      *&v23[18] = 1024;
      *&v23[20] = v18;
      LOWORD(v24) = 2080;
      *(&v24 + 2) = v19;
      WORD5(v24) = 1024;
      HIDWORD(v24) = v20;
      v11 = " [%s] %s:%d %@(%p) Output device changed via default change listener. current output device=%s deviceID=%u new output device=%s deviceID=%u";
      v12 = v15;
      v13 = 80;
    }

    _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, v21, v13);
    return [*(a1 + 40) setCurrentOutputDeviceInternal:{*(a1 + 32), *v21, *&v21[16], v22, *v23, *&v23[8], *&v23[16], v24}];
  }

  return result;
}

- (void)setMediaPlaybackOnExternalDevice:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__VCAudioManager_setMediaPlaybackOnExternalDevice___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)startAUIOWithProperties:(id)a3
{
  v114 = *MEMORY[0x1E69E9840];
  if (self->_hAUIO == 0xFFFFFFFFLL)
  {
    v79 = objc_alloc_init(SnapshotTimer);
    [(SnapshotTimer *)v79 checkinWithTimeout:@"startAudioIO" forTask:5.0];
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioManager-startAUIOWithProperties");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(VCObject *)self logPrefix];
        v9 = [a3 audioSessionId];
        v10 = [a3 operatingMode];
        v11 = [a3 deviceRole];
        v12 = FourccToCStr([a3 remoteCodecType]);
        [a3 remoteCodecSampleRate];
        isMicrophoneMuted = self->_isMicrophoneMuted;
        *buf = 136317698;
        v95 = v6;
        v96 = 2080;
        v97 = "[VCAudioManager startAUIOWithProperties:]";
        v98 = 1024;
        v99 = 1323;
        v100 = 2048;
        *v101 = self;
        *&v101[8] = 2112;
        *v102 = v8;
        *&v102[8] = 1024;
        v103 = v9;
        v104 = 1024;
        v105 = v10;
        v106 = 1024;
        v107 = v11;
        v108 = 2080;
        v109 = v12;
        v110 = 2048;
        v111 = v14;
        v112 = 1024;
        v113 = isMicrophoneMuted;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioManager-startAUIOWithProperties (%p) %@ AVAudioSession:[%u] Starting AUIO operatingMode[%d] deviceRole[%d] remoteCodecType[%s] remoteCodecRate[%f] isMicrophoneMuted[%d]", buf, 0x5Cu);
      }
    }

    [(VCAudioManager *)self startVADWithAudioUnitProperties:a3];
    isGKVoiceChat = self->_isGKVoiceChat;
    v83 = 0xFFFFFFFFLL;
    v16 = 0x1ECC67000uLL;
    if (isGKVoiceChat)
    {
      v78 = 0;
      self->_sourceData.audioLimiter = 0;
    }

    else
    {
      if (!self->_playbackMode)
      {
        v23 = VCAudioLimiter_Allocate([a3 frameFormatMic]);
        v20 = 472;
        self->_sourceData.audioLimiter = v23;
        if (v23)
        {
          if (VCAudioLimiter_Start(v23))
          {
            v78 = 1;
LABEL_21:
            audioSessionId = self->_sourceData.audioSessionId;
            if (audioSessionId == [a3 audioSessionId])
            {
              goto LABEL_36;
            }

            if (objc_opt_class() == self)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v24 = VRTraceErrorLogLevelToCSTR();
                v25 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  v26 = [a3 audioSessionId];
                  v27 = self->_sourceData.audioSessionId;
                  *buf = 136316162;
                  v95 = v24;
                  v96 = 2080;
                  v97 = "[VCAudioManager startAUIOWithProperties:]";
                  v98 = 1024;
                  v99 = 1339;
                  v100 = 1024;
                  *v101 = v26;
                  *&v101[4] = 1024;
                  *&v101[6] = v27;
                  v28 = " [%s] %s:%d New active audioSessionId=%u previousAudioSessionID=%u";
                  v29 = v25;
                  v30 = 40;
LABEL_35:
                  _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);
                }
              }
            }

            else
            {
              if (objc_opt_respondsToSelector())
              {
                v22 = [(VCAudioManager *)self performSelector:sel_logPrefix];
              }

              else
              {
                v22 = &stru_1F570E008;
              }

              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v31 = VRTraceErrorLogLevelToCSTR();
                v32 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  v33 = [a3 audioSessionId];
                  v34 = self->_sourceData.audioSessionId;
                  *buf = 136316674;
                  v95 = v31;
                  v96 = 2080;
                  v97 = "[VCAudioManager startAUIOWithProperties:]";
                  v98 = 1024;
                  v99 = 1339;
                  v100 = 2112;
                  *v101 = v22;
                  *&v101[8] = 2048;
                  *v102 = self;
                  *&v102[8] = 1024;
                  v103 = v33;
                  v104 = 1024;
                  v105 = v34;
                  v28 = " [%s] %s:%d %@(%p) New active audioSessionId=%u previousAudioSessionID=%u";
                  v29 = v32;
                  v30 = 60;
                  goto LABEL_35;
                }
              }
            }

LABEL_36:
            v35 = [a3 audioSessionId];
            self->_sourceData.audioSessionId = v35;
            self->_sinkData.audioSessionId = v35;
            memset(&v82[3], 170, 64);
            v81 = xmmword_1DBD45420;
            memset(v82, 170, 48);
            v80[0] = xmmword_1DBD453E0;
            memset(&v80[1], 170, 48);
            v36 = [a3 frameFormatSpeaker];
            v38 = v36[1];
            v37 = v36[2];
            v80[0] = *v36;
            v80[1] = v38;
            v80[2] = v37;
            *&v80[3] = &self->_sourceData;
            *(&v80[3] + 1) = VCAudioManager_PullAudioSamples;
            v39 = [a3 frameFormatMic];
            v41 = v39[1];
            v40 = v39[2];
            v81 = *v39;
            v82[0] = v41;
            v82[1] = v40;
            *&v82[2] = &self->_sinkData;
            *(&v82[2] + 1) = VCAudioManager_PushAudioSamples;
            *&v82[3] = VCAudioManager_ErrorProc;
            BYTE8(v82[3]) = !self->_isGKVoiceChat;
            BYTE9(v82[3]) = [a3 audioUnitType] == 2;
            BYTE10(v82[3]) = [VCAudioManager audioIOTypeWithAudioUnitProperties:a3 shouldEnableAudioInput:[(VCAudioManager *)self isSystemAudioOutputPlaybackMode]^ 1];
            *&v82[4] = self->_audioSession;
            *(&v82[4] + 1) = self;
            *&v82[5] = VCAudioManager_InputDeviceSelectionCallback;
            *(&v82[5] + 1) = VCAudioManager_OutputDeviceSelectionCallback;
            *&v82[6] = [a3 processIdentifiersForAudioTap];
            *(&v82[6] + 1) = [a3 muteBehaviorForAudioTap];
            if ([(VCAudioManager *)self isSystemAudioOutputPlaybackMode])
            {
              v42 = &v82[2];
            }

            else
            {
              if (self->_playbackMode != 2)
              {
                goto LABEL_41;
              }

              v42 = &v80[3];
            }

            BYTE8(v82[3]) = 0;
            *v42 = 0;
            *(v42 + 1) = 0;
LABEL_41:
            v43 = AUIOCreateHandle(&v83, v80);
            if (v43 < 0)
            {
              v65 = v43;
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v66 = VRTraceErrorLogLevelToCSTR();
                v67 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  v68 = [a3 audioSessionId];
                  *buf = 136316418;
                  v95 = v66;
                  v96 = 2080;
                  v97 = "[VCAudioManager startAUIOWithProperties:]";
                  v98 = 1024;
                  v99 = 1373;
                  v100 = 1024;
                  *v101 = 1373;
                  *&v101[4] = 1024;
                  *&v101[6] = v68;
                  *v102 = 1024;
                  *&v102[2] = v65;
                  _os_log_error_impl(&dword_1DB56E000, v67, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioManager.m:%d: CMSession:[%u] AUIOCreateHandle failed(%X)", buf, 0x2Eu);
                }
              }
            }

            else
            {
              if (!self->_playbackMode)
              {
                [(VCAudioManager *)self setupIODevicesForAUIO:v83];
              }

              if (self->_isMediaPlaybackOnExternalDevice)
              {
                AUIOSetMediaPlaybackOnExternalDevice(v83, 1);
              }

              if (!self->_playbackMode)
              {
                [(VCAudioManager *)self setupDynamicDuckingVolumeHandlerForAUIO:v83];
              }

              v93 = -1431655766;
              *&v44 = 0xAAAAAAAAAAAAAAAALL;
              *(&v44 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v91 = v44;
              v92 = v44;
              v89 = v44;
              v90 = v44;
              v87 = v44;
              v88 = v44;
              v85 = v44;
              v86 = v44;
              if (a3)
              {
                [a3 farEndVersionInfo];
              }

              else
              {
                v93 = 0;
                v91 = 0u;
                v92 = 0u;
                v89 = 0u;
                v90 = 0u;
                v87 = 0u;
                v88 = 0u;
                v85 = 0u;
                v86 = 0u;
              }

              v45 = v83;
              v46 = [a3 frameFormatMic];
              v47 = [a3 frameFormatSpeaker];
              if ([a3 isFarEndVersionInfoValid])
              {
                v48 = &v85;
              }

              else
              {
                v48 = 0;
              }

              v49 = [a3 allowAudioRecording];
              v50 = [a3 vpOperatingMode];
              v51 = [a3 vpEnableSpatialChat];
              v52 = [a3 remoteCodecType];
              [a3 remoteCodecSampleRate];
              spatialStreamDescriptions = self->_spatialStreamDescriptions;
              v54 = AUIOSetupFormats(v53, v45, v46, v47, v48, v49, v50, v51, v52);
              if (v54 < 0)
              {
                v69 = v54;
                if (objc_opt_class() == self)
                {
                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    VRTraceErrorLogLevelToCSTR();
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      [VCAudioManager startAUIOWithProperties:];
                    }
                  }
                }

                else
                {
                  if (objc_opt_respondsToSelector())
                  {
                    v70 = [(VCAudioManager *)self performSelector:sel_logPrefix, spatialStreamDescriptions];
                  }

                  else
                  {
                    v70 = &stru_1F570E008;
                  }

                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    v75 = VRTraceErrorLogLevelToCSTR();
                    v76 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136316418;
                      v95 = v75;
                      v96 = 2080;
                      v97 = "[VCAudioManager startAUIOWithProperties:]";
                      v98 = 1024;
                      v99 = 1387;
                      v100 = 2112;
                      *v101 = v70;
                      *&v101[8] = 2048;
                      *v102 = self;
                      *&v102[8] = 1024;
                      v103 = v69;
                      _os_log_error_impl(&dword_1DB56E000, v76, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) AUIOSetupFormats() failed. hResult=0x%08X", buf, 0x36u);
                    }
                  }
                }
              }

              else
              {
                v55 = [(VCAudioManager *)self registerForMutedTalkerNotificationWithAUIO:v83, spatialStreamDescriptions];
                if (v55 < 0)
                {
                  v61 = v55;
                  if (objc_opt_class() == self)
                  {
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                      {
                        [VCAudioManager startAUIOWithProperties:];
                      }
                    }
                  }

                  else
                  {
                    if (objc_opt_respondsToSelector())
                    {
                      v62 = [(VCAudioManager *)self performSelector:sel_logPrefix];
                    }

                    else
                    {
                      v62 = &stru_1F570E008;
                    }

                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      v63 = VRTraceErrorLogLevelToCSTR();
                      v64 = *MEMORY[0x1E6986650];
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136316418;
                        v95 = v63;
                        v96 = 2080;
                        v97 = "[VCAudioManager startAUIOWithProperties:]";
                        v98 = 1024;
                        v99 = 1391;
                        v100 = 2112;
                        *v101 = v62;
                        *&v101[8] = 2048;
                        *v102 = self;
                        *&v102[8] = 1024;
                        v103 = v61;
                        _os_log_error_impl(&dword_1DB56E000, v64, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to register muted talker notification callback hResult=0x%08X", buf, 0x36u);
                      }
                    }
                  }
                }

                self->_hAUIO = v83;
                [(VCAudioManager *)self setupSpatialContextWithAudioUnitProperties:a3 forceUpdate:1];
                [(VCAudioManager *)self applyAudioSessionMute];
                v56 = AUIOStart(v83);
                if ((v56 & 0x80000000) == 0)
                {
                  [(VCAudioManager *)self setInputMetering];
                  [(VCAudioManager *)self setOutputMetering];
                  v83 = 0xFFFFFFFFLL;
                  v19 = 1;
                  goto LABEL_58;
                }

                v71 = v56;
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  v72 = VRTraceErrorLogLevelToCSTR();
                  v73 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    v74 = [a3 audioSessionId];
                    *buf = 136316418;
                    v95 = v72;
                    v96 = 2080;
                    v97 = "[VCAudioManager startAUIOWithProperties:]";
                    v98 = 1024;
                    v99 = 1410;
                    v100 = 1024;
                    *v101 = 1410;
                    *&v101[4] = 1024;
                    *&v101[6] = v74;
                    *v102 = 2048;
                    *&v102[2] = v71;
                    _os_log_error_impl(&dword_1DB56E000, v73, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioManager.m:%d: [CMSession]:%u AUIOStart failed(%08lX)", buf, 0x32u);
                  }
                }
              }

              v16 = 0x1ECC67000;
              v20 = 472;
            }

LABEL_93:
            if (v83 != 0xFFFFFFFFLL)
            {
              self->_hAUIO = 0xFFFFFFFFLL;
              AUIOCloseHandle();
              if (v78)
              {
                VCAudioLimiter_Stop(*(&self->super._logPrefix + v20));
              }

              VCAudioDucker_Destroy((&self->super._logPrefix + v20));
              VCVoiceDetector_Stop(*(&self->_currentAudioUnitProperties + *(v16 + 3356)));
              v19 = 0;
              goto LABEL_61;
            }

            v19 = 0;
LABEL_58:
            MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioManager-startAUIOWithProperties");
            if (VRTraceGetErrorLogLevelForModule() >= 6)
            {
              v57 = VRTraceErrorLogLevelToCSTR();
              v58 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v59 = [(VCObject *)self logPrefix];
                *buf = 136316162;
                v95 = v57;
                v96 = 2080;
                v97 = "[VCAudioManager startAUIOWithProperties:]";
                v98 = 1024;
                v99 = 1428;
                v100 = 2048;
                *v101 = self;
                *&v101[8] = 2112;
                *v102 = v59;
                _os_log_impl(&dword_1DB56E000, v58, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioManager-startAUIOWithProperties (%p) %@ startAudioIO is completed", buf, 0x30u);
              }
            }

LABEL_61:
            [(SnapshotTimer *)v79 checkout];

            return v19;
          }

          [(VCAudioManager *)472 startAUIOWithProperties:buf, &v84];
        }

        else
        {
          [(VCAudioManager *)472 startAUIOWithProperties:buf, &v84];
        }

        v20 = *buf;
        v78 = v84;
        goto LABEL_93;
      }

      v78 = 0;
    }

    v20 = 472;
    goto LABEL_21;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioManager startAUIOWithProperties:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [(VCAudioManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v95 = v17;
        v96 = 2080;
        v97 = "[VCAudioManager startAUIOWithProperties:]";
        v98 = 1024;
        v99 = 1314;
        v100 = 2112;
        *v101 = v4;
        *&v101[8] = 2048;
        *v102 = self;
        _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) AUIO already exists", buf, 0x30u);
      }
    }
  }

  return 0;
}

+ (unsigned)audioIOTypeWithAudioUnitProperties:(id)a3 shouldEnableAudioInput:(BOOL)a4
{
  v4 = a4;
  if (+[VCHardwareSettings deviceClass]== 8)
  {
    if ([a3 operatingMode] == 12)
    {
      return 2;
    }

    else
    {
      return 4;
    }
  }

  else if (v4)
  {
    if ([a3 operatingMode] == 12)
    {
      return 1;
    }

    else if ([a3 audioUnitType] == 2)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }

  else
  {
    return 2;
  }
}

- (BOOL)shouldResetAudioUnitWithProperties:(id)a3
{
  v90 = *MEMORY[0x1E69E9840];
  v5 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties allowAudioRecording];
  if (v5 == [a3 allowAudioRecording])
  {
    v7 = *[(VCAudioUnitProperties *)self->_currentAudioUnitProperties frameFormatMic];
    if (v7 == *[a3 frameFormatMic])
    {
      v13 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties frameFormatMic][40];
      if (v13 == *([a3 frameFormatMic] + 40))
      {
        v14 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties frameFormatMic][28];
        if (v14 == *([a3 frameFormatMic] + 28))
        {
          v15 = *[(VCAudioUnitProperties *)self->_currentAudioUnitProperties frameFormatSpeaker];
          if (v15 == *[a3 frameFormatSpeaker])
          {
            v34 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties frameFormatSpeaker][40];
            if (v34 == *([a3 frameFormatSpeaker] + 40))
            {
              v35 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties frameFormatSpeaker][28];
              if (v35 == *([a3 frameFormatSpeaker] + 28))
              {
                v36 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties vpOperatingMode];
                if (v36 == [a3 vpOperatingMode])
                {
                  v37 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties vpEnableSpatialChat];
                  if (v37 == [a3 vpEnableSpatialChat])
                  {
                    return 0;
                  }

                  if (objc_opt_class() == self)
                  {
                    if (VRTraceGetErrorLogLevelForModule() < 7)
                    {
                      return 1;
                    }

                    v71 = VRTraceErrorLogLevelToCSTR();
                    v10 = *MEMORY[0x1E6986650];
                    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      return 1;
                    }

                    v72 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties vpEnableSpatialChat];
                    v77 = 136316162;
                    v78 = v71;
                    v79 = 2080;
                    v80 = "[VCAudioManager shouldResetAudioUnitWithProperties:]";
                    v81 = 1024;
                    v82 = 1505;
                    v83 = 1024;
                    *v84 = v72;
                    *&v84[4] = 1024;
                    *&v84[6] = [a3 vpEnableSpatialChat];
                    v12 = " [%s] %s:%d VP spatial chat flag changed: %d->%d";
                    goto LABEL_97;
                  }

                  if (objc_opt_respondsToSelector())
                  {
                    v38 = [(VCAudioManager *)self performSelector:sel_logPrefix];
                  }

                  else
                  {
                    v38 = &stru_1F570E008;
                  }

                  if (VRTraceGetErrorLogLevelForModule() < 7)
                  {
                    return 1;
                  }

                  v75 = VRTraceErrorLogLevelToCSTR();
                  v18 = *MEMORY[0x1E6986650];
                  if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    return 1;
                  }

                  v76 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties vpEnableSpatialChat];
                  v77 = 136316674;
                  v78 = v75;
                  v79 = 2080;
                  v80 = "[VCAudioManager shouldResetAudioUnitWithProperties:]";
                  v81 = 1024;
                  v82 = 1505;
                  v83 = 2112;
                  *v84 = v38;
                  *&v84[8] = 2048;
                  v85 = self;
                  v86 = 1024;
                  v87 = v76;
                  v88 = 1024;
                  v89 = [a3 vpEnableSpatialChat];
                  v12 = " [%s] %s:%d %@(%p) VP spatial chat flag changed: %d->%d";
                }

                else
                {
                  if (objc_opt_class() == self)
                  {
                    if (VRTraceGetErrorLogLevelForModule() < 7)
                    {
                      return 1;
                    }

                    v67 = VRTraceErrorLogLevelToCSTR();
                    v10 = *MEMORY[0x1E6986650];
                    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      return 1;
                    }

                    v68 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties vpOperatingMode];
                    v77 = 136316162;
                    v78 = v67;
                    v79 = 2080;
                    v80 = "[VCAudioManager shouldResetAudioUnitWithProperties:]";
                    v81 = 1024;
                    v82 = 1501;
                    v83 = 1024;
                    *v84 = v68;
                    *&v84[4] = 1024;
                    *&v84[6] = [a3 vpOperatingMode];
                    v12 = " [%s] %s:%d VP operating mode changed: %d->%d";
                    goto LABEL_97;
                  }

                  if (objc_opt_respondsToSelector())
                  {
                    v59 = [(VCAudioManager *)self performSelector:sel_logPrefix];
                  }

                  else
                  {
                    v59 = &stru_1F570E008;
                  }

                  if (VRTraceGetErrorLogLevelForModule() < 7)
                  {
                    return 1;
                  }

                  v69 = VRTraceErrorLogLevelToCSTR();
                  v18 = *MEMORY[0x1E6986650];
                  if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    return 1;
                  }

                  v70 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties vpOperatingMode];
                  v77 = 136316674;
                  v78 = v69;
                  v79 = 2080;
                  v80 = "[VCAudioManager shouldResetAudioUnitWithProperties:]";
                  v81 = 1024;
                  v82 = 1501;
                  v83 = 2112;
                  *v84 = v59;
                  *&v84[8] = 2048;
                  v85 = self;
                  v86 = 1024;
                  v87 = v70;
                  v88 = 1024;
                  v89 = [a3 vpOperatingMode];
                  v12 = " [%s] %s:%d %@(%p) VP operating mode changed: %d->%d";
                }
              }

              else
              {
                if (objc_opt_class() == self)
                {
                  if (VRTraceGetErrorLogLevelForModule() < 7)
                  {
                    return 1;
                  }

                  v60 = VRTraceErrorLogLevelToCSTR();
                  v10 = *MEMORY[0x1E6986650];
                  if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    return 1;
                  }

                  v61 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties frameFormatSpeaker][28];
                  v62 = *([a3 frameFormatSpeaker] + 28);
                  v77 = 136316162;
                  v78 = v60;
                  v79 = 2080;
                  v80 = "[VCAudioManager shouldResetAudioUnitWithProperties:]";
                  v81 = 1024;
                  v82 = 1497;
                  v83 = 1024;
                  *v84 = v61;
                  *&v84[4] = 1024;
                  *&v84[6] = v62;
                  v12 = " [%s] %s:%d Speaker channels per frame changed: %d->%d";
                  goto LABEL_97;
                }

                if (objc_opt_respondsToSelector())
                {
                  v52 = [(VCAudioManager *)self performSelector:sel_logPrefix];
                }

                else
                {
                  v52 = &stru_1F570E008;
                }

                if (VRTraceGetErrorLogLevelForModule() < 7)
                {
                  return 1;
                }

                v63 = VRTraceErrorLogLevelToCSTR();
                v18 = *MEMORY[0x1E6986650];
                if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  return 1;
                }

                v64 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties frameFormatSpeaker][28];
                v65 = *([a3 frameFormatSpeaker] + 28);
                v77 = 136316674;
                v78 = v63;
                v79 = 2080;
                v80 = "[VCAudioManager shouldResetAudioUnitWithProperties:]";
                v81 = 1024;
                v82 = 1497;
                v83 = 2112;
                *v84 = v52;
                *&v84[8] = 2048;
                v85 = self;
                v86 = 1024;
                v87 = v64;
                v88 = 1024;
                v89 = v65;
                v12 = " [%s] %s:%d %@(%p) Speaker channels per frame changed: %d->%d";
              }
            }

            else
            {
              if (objc_opt_class() == self)
              {
                if (VRTraceGetErrorLogLevelForModule() < 7)
                {
                  return 1;
                }

                v53 = VRTraceErrorLogLevelToCSTR();
                v10 = *MEMORY[0x1E6986650];
                if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  return 1;
                }

                v54 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties frameFormatSpeaker][40];
                v55 = *([a3 frameFormatSpeaker] + 40);
                v77 = 136316162;
                v78 = v53;
                v79 = 2080;
                v80 = "[VCAudioManager shouldResetAudioUnitWithProperties:]";
                v81 = 1024;
                v82 = 1493;
                v83 = 1024;
                *v84 = v54;
                *&v84[4] = 1024;
                *&v84[6] = v55;
                v12 = " [%s] %s:%d Speaker samples per frame changed: %d->%d";
                goto LABEL_97;
              }

              if (objc_opt_respondsToSelector())
              {
                v51 = [(VCAudioManager *)self performSelector:sel_logPrefix];
              }

              else
              {
                v51 = &stru_1F570E008;
              }

              if (VRTraceGetErrorLogLevelForModule() < 7)
              {
                return 1;
              }

              v56 = VRTraceErrorLogLevelToCSTR();
              v18 = *MEMORY[0x1E6986650];
              if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                return 1;
              }

              v57 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties frameFormatSpeaker][40];
              v58 = *([a3 frameFormatSpeaker] + 40);
              v77 = 136316674;
              v78 = v56;
              v79 = 2080;
              v80 = "[VCAudioManager shouldResetAudioUnitWithProperties:]";
              v81 = 1024;
              v82 = 1493;
              v83 = 2112;
              *v84 = v51;
              *&v84[8] = 2048;
              v85 = self;
              v86 = 1024;
              v87 = v57;
              v88 = 1024;
              v89 = v58;
              v12 = " [%s] %s:%d %@(%p) Speaker samples per frame changed: %d->%d";
            }
          }

          else
          {
            if (objc_opt_class() == self)
            {
              if (VRTraceGetErrorLogLevelForModule() < 7)
              {
                return 1;
              }

              v45 = VRTraceErrorLogLevelToCSTR();
              v10 = *MEMORY[0x1E6986650];
              if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                return 1;
              }

              v46 = *[(VCAudioUnitProperties *)self->_currentAudioUnitProperties frameFormatSpeaker];
              v47 = *[a3 frameFormatSpeaker];
              v77 = 136316162;
              v78 = v45;
              v79 = 2080;
              v80 = "[VCAudioManager shouldResetAudioUnitWithProperties:]";
              v81 = 1024;
              v82 = 1489;
              v83 = 1024;
              *v84 = v46;
              *&v84[4] = 1024;
              *&v84[6] = v47;
              v12 = " [%s] %s:%d Speaker sample rate changed: %d->%d";
              goto LABEL_97;
            }

            if (objc_opt_respondsToSelector())
            {
              v16 = [(VCAudioManager *)self performSelector:sel_logPrefix];
            }

            else
            {
              v16 = &stru_1F570E008;
            }

            if (VRTraceGetErrorLogLevelForModule() < 7)
            {
              return 1;
            }

            v48 = VRTraceErrorLogLevelToCSTR();
            v18 = *MEMORY[0x1E6986650];
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              return 1;
            }

            v49 = *[(VCAudioUnitProperties *)self->_currentAudioUnitProperties frameFormatSpeaker];
            v50 = *[a3 frameFormatSpeaker];
            v77 = 136316674;
            v78 = v48;
            v79 = 2080;
            v80 = "[VCAudioManager shouldResetAudioUnitWithProperties:]";
            v81 = 1024;
            v82 = 1489;
            v83 = 2112;
            *v84 = v16;
            *&v84[8] = 2048;
            v85 = self;
            v86 = 1024;
            v87 = v49;
            v88 = 1024;
            v89 = v50;
            v12 = " [%s] %s:%d %@(%p) Speaker sample rate changed: %d->%d";
          }
        }

        else
        {
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() < 7)
            {
              return 1;
            }

            v39 = VRTraceErrorLogLevelToCSTR();
            v10 = *MEMORY[0x1E6986650];
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              return 1;
            }

            v40 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties frameFormatMic][28];
            v41 = *([a3 frameFormatMic] + 28);
            v77 = 136316162;
            v78 = v39;
            v79 = 2080;
            v80 = "[VCAudioManager shouldResetAudioUnitWithProperties:]";
            v81 = 1024;
            v82 = 1485;
            v83 = 1024;
            *v84 = v40;
            *&v84[4] = 1024;
            *&v84[6] = v41;
            v12 = " [%s] %s:%d Mic channels per frame changed: %d->%d";
            goto LABEL_97;
          }

          if (objc_opt_respondsToSelector())
          {
            v27 = [(VCAudioManager *)self performSelector:sel_logPrefix];
          }

          else
          {
            v27 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            return 1;
          }

          v42 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            return 1;
          }

          v43 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties frameFormatMic][28];
          v44 = *([a3 frameFormatMic] + 28);
          v77 = 136316674;
          v78 = v42;
          v79 = 2080;
          v80 = "[VCAudioManager shouldResetAudioUnitWithProperties:]";
          v81 = 1024;
          v82 = 1485;
          v83 = 2112;
          *v84 = v27;
          *&v84[8] = 2048;
          v85 = self;
          v86 = 1024;
          v87 = v43;
          v88 = 1024;
          v89 = v44;
          v12 = " [%s] %s:%d %@(%p) Mic channels per frame changed: %d->%d";
        }
      }

      else
      {
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            return 1;
          }

          v28 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            return 1;
          }

          v29 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties frameFormatMic][40];
          v30 = *([a3 frameFormatMic] + 40);
          v77 = 136316162;
          v78 = v28;
          v79 = 2080;
          v80 = "[VCAudioManager shouldResetAudioUnitWithProperties:]";
          v81 = 1024;
          v82 = 1481;
          v83 = 1024;
          *v84 = v29;
          *&v84[4] = 1024;
          *&v84[6] = v30;
          v12 = " [%s] %s:%d Mic samples per frame changed: %d->%d";
          goto LABEL_97;
        }

        if (objc_opt_respondsToSelector())
        {
          v26 = [(VCAudioManager *)self performSelector:sel_logPrefix];
        }

        else
        {
          v26 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          return 1;
        }

        v31 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          return 1;
        }

        v32 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties frameFormatMic][40];
        v33 = *([a3 frameFormatMic] + 40);
        v77 = 136316674;
        v78 = v31;
        v79 = 2080;
        v80 = "[VCAudioManager shouldResetAudioUnitWithProperties:]";
        v81 = 1024;
        v82 = 1481;
        v83 = 2112;
        *v84 = v26;
        *&v84[8] = 2048;
        v85 = self;
        v86 = 1024;
        v87 = v32;
        v88 = 1024;
        v89 = v33;
        v12 = " [%s] %s:%d %@(%p) Mic samples per frame changed: %d->%d";
      }
    }

    else
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          return 1;
        }

        v20 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          return 1;
        }

        v21 = *[(VCAudioUnitProperties *)self->_currentAudioUnitProperties frameFormatMic];
        v22 = *[a3 frameFormatMic];
        v77 = 136316162;
        v78 = v20;
        v79 = 2080;
        v80 = "[VCAudioManager shouldResetAudioUnitWithProperties:]";
        v81 = 1024;
        v82 = 1477;
        v83 = 1024;
        *v84 = v21;
        *&v84[4] = 1024;
        *&v84[6] = v22;
        v12 = " [%s] %s:%d Mic sample rate changed: %d->%d";
        goto LABEL_97;
      }

      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCAudioManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 1;
      }

      v23 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      v24 = *[(VCAudioUnitProperties *)self->_currentAudioUnitProperties frameFormatMic];
      v25 = *[a3 frameFormatMic];
      v77 = 136316674;
      v78 = v23;
      v79 = 2080;
      v80 = "[VCAudioManager shouldResetAudioUnitWithProperties:]";
      v81 = 1024;
      v82 = 1477;
      v83 = 2112;
      *v84 = v8;
      *&v84[8] = 2048;
      v85 = self;
      v86 = 1024;
      v87 = v24;
      v88 = 1024;
      v89 = v25;
      v12 = " [%s] %s:%d %@(%p) Mic sample rate changed: %d->%d";
    }

LABEL_102:
    v73 = v18;
    v74 = 60;
    goto LABEL_103;
  }

  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCAudioManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 1;
    }

    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v19 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties allowAudioRecording];
    v77 = 136316674;
    v78 = v17;
    v79 = 2080;
    v80 = "[VCAudioManager shouldResetAudioUnitWithProperties:]";
    v81 = 1024;
    v82 = 1473;
    v83 = 2112;
    *v84 = v6;
    *&v84[8] = 2048;
    v85 = self;
    v86 = 1024;
    v87 = v19;
    v88 = 1024;
    v89 = [a3 allowAudioRecording];
    v12 = " [%s] %s:%d %@(%p) Recording changed: %d->%d";
    goto LABEL_102;
  }

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

  v11 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties allowAudioRecording];
  v77 = 136316162;
  v78 = v9;
  v79 = 2080;
  v80 = "[VCAudioManager shouldResetAudioUnitWithProperties:]";
  v81 = 1024;
  v82 = 1473;
  v83 = 1024;
  *v84 = v11;
  *&v84[4] = 1024;
  *&v84[6] = [a3 allowAudioRecording];
  v12 = " [%s] %s:%d Recording changed: %d->%d";
LABEL_97:
  v73 = v10;
  v74 = 40;
LABEL_103:
  _os_log_impl(&dword_1DB56E000, v73, OS_LOG_TYPE_DEFAULT, v12, &v77, v74);
  return 1;
}

- (BOOL)shouldResetAudioSessionWithProperties:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(VCAudioSessionMediaProperties *)self->_currentAudioSessionMediaProperties description];
        *v37 = 136315906;
        *&v37[4] = v6;
        *&v37[12] = 2080;
        *&v37[14] = "[VCAudioManager shouldResetAudioSessionWithProperties:]";
        *&v37[22] = 1024;
        LODWORD(v38) = 1513;
        WORD2(v38) = 2112;
        *(&v38 + 6) = v8;
        v9 = " [%s] %s:%d Current settings: %@";
        v10 = v7;
        v11 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v37, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCAudioManager *)self performSelector:sel_logPrefix];
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
        v14 = [(VCAudioSessionMediaProperties *)self->_currentAudioSessionMediaProperties description];
        *v37 = 136316418;
        *&v37[4] = v12;
        *&v37[12] = 2080;
        *&v37[14] = "[VCAudioManager shouldResetAudioSessionWithProperties:]";
        *&v37[22] = 1024;
        LODWORD(v38) = 1513;
        WORD2(v38) = 2112;
        *(&v38 + 6) = v5;
        HIWORD(v38) = 2048;
        v39 = self;
        LOWORD(v40) = 2112;
        *(&v40 + 2) = v14;
        v9 = " [%s] %s:%d %@(%p) Current settings: %@";
        v10 = v13;
        v11 = 58;
        goto LABEL_11;
      }
    }
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v18 = [a3 description];
        *v37 = 136315906;
        *&v37[4] = v16;
        *&v37[12] = 2080;
        *&v37[14] = "[VCAudioManager shouldResetAudioSessionWithProperties:]";
        *&v37[22] = 1024;
        LODWORD(v38) = 1514;
        WORD2(v38) = 2112;
        *(&v38 + 6) = v18;
        v19 = " [%s] %s:%d New settings: %@";
        v20 = v17;
        v21 = 38;
LABEL_22:
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, v37, v21);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v15 = [(VCAudioManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v15 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v24 = [a3 description];
        *v37 = 136316418;
        *&v37[4] = v22;
        *&v37[12] = 2080;
        *&v37[14] = "[VCAudioManager shouldResetAudioSessionWithProperties:]";
        *&v37[22] = 1024;
        LODWORD(v38) = 1514;
        WORD2(v38) = 2112;
        *(&v38 + 6) = v15;
        HIWORD(v38) = 2048;
        v39 = self;
        LOWORD(v40) = 2112;
        *(&v40 + 2) = v24;
        v19 = " [%s] %s:%d %@(%p) New settings: %@";
        v20 = v23;
        v21 = 58;
        goto LABEL_22;
      }
    }
  }

  v25 = [(VCAudioSessionMediaProperties *)self->_currentAudioSessionMediaProperties isSessionActive:*v37];
  if (v25)
  {
    if ([(VCAudioSessionMediaProperties *)self->_currentAudioSessionMediaProperties isEqual:a3])
    {
      LOBYTE(v25) = [(VCAudioSession *)self->_audioSession shouldResetAudioSession];
      return v25;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_37;
      }

      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      v29 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties audioSessionId];
      *v37 = 136315906;
      *&v37[4] = v27;
      *&v37[12] = 2080;
      *&v37[14] = "[VCAudioManager shouldResetAudioSessionWithProperties:]";
      *&v37[22] = 1024;
      LODWORD(v38) = 1520;
      WORD2(v38) = 1024;
      *(&v38 + 6) = v29;
      v30 = " [%s] %s:%d [CMSession]:%u Session properties changed!";
      v31 = v28;
      v32 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v26 = [(VCAudioManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v26 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_37;
      }

      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      v35 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties audioSessionId];
      *v37 = 136316418;
      *&v37[4] = v33;
      *&v37[12] = 2080;
      *&v37[14] = "[VCAudioManager shouldResetAudioSessionWithProperties:]";
      *&v37[22] = 1024;
      LODWORD(v38) = 1520;
      WORD2(v38) = 2112;
      *(&v38 + 6) = v26;
      HIWORD(v38) = 2048;
      v39 = self;
      LOWORD(v40) = 1024;
      *(&v40 + 2) = v35;
      v30 = " [%s] %s:%d %@(%p) [CMSession]:%u Session properties changed!";
      v31 = v34;
      v32 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, v30, v37, v32);
LABEL_37:
    LOBYTE(v25) = 1;
  }

  return v25;
}

- (BOOL)resetAUIOWithProperties:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v27 = -1431655766;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v5;
  v26 = v5;
  v23 = v5;
  v24 = v5;
  v21 = v5;
  v22 = v5;
  v19 = v5;
  v20 = v5;
  if (a3)
  {
    [a3 farEndVersionInfo];
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
  }

  hAUIO = self->_hAUIO;
  v7 = [a3 frameFormatMic];
  v8 = [a3 frameFormatSpeaker];
  v9 = [a3 allowAudioRecording];
  v10 = [a3 vpOperatingMode];
  v11 = [a3 vpEnableSpatialChat];
  v12 = [a3 remoteCodecType];
  [a3 remoteCodecSampleRate];
  v14 = AUIOSetupFormats(v13, hAUIO, v7, v8, &v19, v9, v10, v11, v12);
  if (v14 < 0 && v14 != -2145714174)
  {
    [VCAudioManager resetAUIOWithProperties:];
  }

  else
  {
    IsReady = AUIOReceiverIsReady();
    if ((IsReady & 0x80000000) == 0 || IsReady == -2145714174)
    {
      return IsReady >= 0 || IsReady == -2145714174;
    }

    [VCAudioManager resetAUIOWithProperties:];
  }

  IsReady = v18;
  return IsReady >= 0 || IsReady == -2145714174;
}

- (BOOL)resetAudioLimiterWithProperties:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties frameFormatSpeaker][40];
  if (v5 != *([a3 frameFormatSpeaker] + 40))
  {
    p_audioLimiter = &self->_sourceData.audioLimiter;
    audioLimiter = self->_sourceData.audioLimiter;
    if (audioLimiter)
    {
      VCAudioLimiter_Stop(audioLimiter);
      VCAudioDucker_Destroy(&self->_sourceData.audioLimiter);
    }

    if (!self->_isGKVoiceChat && !self->_playbackMode)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_19;
        }

        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        v12 = *([a3 frameFormatSpeaker] + 40);
        *v20 = 136315906;
        *&v20[4] = v10;
        *&v20[12] = 2080;
        *&v20[14] = "[VCAudioManager resetAudioLimiterWithProperties:]";
        *&v20[22] = 1024;
        LODWORD(v21) = 1551;
        WORD2(v21) = 1024;
        *(&v21 + 6) = v12;
        v13 = " [%s] %s:%d reset audio limiter: %d";
        v14 = v11;
        v15 = 34;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v9 = [(VCAudioManager *)self performSelector:sel_logPrefix];
        }

        else
        {
          v9 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_19;
        }

        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        v18 = *([a3 frameFormatSpeaker] + 40);
        *v20 = 136316418;
        *&v20[4] = v16;
        *&v20[12] = 2080;
        *&v20[14] = "[VCAudioManager resetAudioLimiterWithProperties:]";
        *&v20[22] = 1024;
        LODWORD(v21) = 1551;
        WORD2(v21) = 2112;
        *(&v21 + 6) = v9;
        HIWORD(v21) = 2048;
        v22 = self;
        LOWORD(v23) = 1024;
        *(&v23 + 2) = v18;
        v13 = " [%s] %s:%d %@(%p) reset audio limiter: %d";
        v14 = v17;
        v15 = 54;
      }

      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, v20, v15);
LABEL_19:
      v19 = VCAudioLimiter_Allocate([a3 frameFormatMic]);
      *p_audioLimiter = v19;
      return VCAudioLimiter_Start(v19);
    }
  }

  return 1;
}

- (void)stopAUIO
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)registerClientIO:(_VCAudioIOControllerClientIO *)a3 controllerIO:(_VCAudioIOControllerIOState *)a4
{
  v47 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        state = self->_state;
        *buf = 136316418;
        v32 = v8;
        v33 = 2080;
        v34 = "[VCAudioManager registerClientIO:controllerIO:]";
        v35 = 1024;
        v36 = 1582;
        v37 = 2048;
        v38 = a3;
        v39 = 2048;
        v40 = a4;
        v41 = 1024;
        LODWORD(v42) = state;
        v11 = " [%s] %s:%d Registering clientIO[%p] controllerIO[%p] in current manager state=%d";
        v12 = v9;
        v13 = 54;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCAudioManager *)self performSelector:sel_logPrefix];
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
        v16 = self->_state;
        *buf = 136316930;
        v32 = v14;
        v33 = 2080;
        v34 = "[VCAudioManager registerClientIO:controllerIO:]";
        v35 = 1024;
        v36 = 1582;
        v37 = 2112;
        v38 = v7;
        v39 = 2048;
        v40 = self;
        v41 = 2048;
        v42 = a3;
        v43 = 2048;
        v44 = a4;
        v45 = 1024;
        v46 = v16;
        v11 = " [%s] %s:%d %@(%p) Registering clientIO[%p] controllerIO[%p] in current manager state=%d";
        v12 = v15;
        v13 = 74;
        goto LABEL_11;
      }
    }
  }

  v17 = VCAudioIOControllerIOState_NewAudioEvent(0, a3);
  v30 = v17;
  v18 = dispatch_time(0, 1000000000);
  if (!dispatch_semaphore_wait(*(v17[1] + 16), v18))
  {
    goto LABEL_24;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v32 = v20;
        v33 = 2080;
        v34 = "[VCAudioManager registerClientIO:controllerIO:]";
        v35 = 1024;
        v36 = 1589;
        v37 = 2048;
        v38 = a3;
        v22 = " [%s] %s:%d Wait on run lock semaphore timed out! clientIO=%p";
        v23 = v21;
        v24 = 38;
LABEL_23:
        _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v19 = [(VCAudioManager *)self performSelector:sel_logPrefix];
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
        *buf = 136316418;
        v32 = v25;
        v33 = 2080;
        v34 = "[VCAudioManager registerClientIO:controllerIO:]";
        v35 = 1024;
        v36 = 1589;
        v37 = 2112;
        v38 = v19;
        v39 = 2048;
        v40 = self;
        v41 = 2048;
        v42 = a3;
        v22 = " [%s] %s:%d %@(%p) Wait on run lock semaphore timed out! clientIO=%p";
        v23 = v26;
        v24 = 58;
        goto LABEL_23;
      }
    }
  }

LABEL_24:
  pthread_mutex_lock(&self->_interruptingMutex);
  if ([(VCAudioManager *)self audioCallbacksRunning])
  {
    if (CMSimpleQueueEnqueue(a4->eventQueue, v17))
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCAudioManager registerClientIO:controllerIO:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v27 = [(VCAudioManager *)self performSelector:sel_logPrefix];
        }

        else
        {
          v27 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v28 = VRTraceErrorLogLevelToCSTR();
          v29 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v32 = v28;
            v33 = 2080;
            v34 = "[VCAudioManager registerClientIO:controllerIO:]";
            v35 = 1024;
            v36 = 1595;
            v37 = 2112;
            v38 = v27;
            v39 = 2048;
            v40 = self;
            _os_log_error_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) CMSimpleQueueEnqueue Full", buf, 0x30u);
          }
        }
      }

      VCAudioIOControllerIOState_ReleaseAudioEvent(&v30, 1);
    }
  }

  else
  {
    VCAudioIOControllerIOState_RegisterClientIO(a4, &v30);
  }

  pthread_mutex_unlock(&self->_interruptingMutex);
}

- (void)unregisterClientIO:(_VCAudioIOControllerClientIO *)a3 controllerIO:(_VCAudioIOControllerIOState *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        state = self->_state;
        *buf = 136316418;
        v23 = v8;
        v24 = 2080;
        v25 = "[VCAudioManager unregisterClientIO:controllerIO:]";
        v26 = 1024;
        v27 = 1606;
        v28 = 2048;
        v29 = a3;
        v30 = 2048;
        v31 = a4;
        v32 = 1024;
        LODWORD(v33) = state;
        v11 = " [%s] %s:%d Unregistering clientIO[%p] controllerIO[%p] in current manager state=%d";
        v12 = v9;
        v13 = 54;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCAudioManager *)self performSelector:sel_logPrefix];
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
        v16 = self->_state;
        *buf = 136316930;
        v23 = v14;
        v24 = 2080;
        v25 = "[VCAudioManager unregisterClientIO:controllerIO:]";
        v26 = 1024;
        v27 = 1606;
        v28 = 2112;
        v29 = v7;
        v30 = 2048;
        v31 = self;
        v32 = 2048;
        v33 = a3;
        v34 = 2048;
        v35 = a4;
        v36 = 1024;
        v37 = v16;
        v11 = " [%s] %s:%d %@(%p) Unregistering clientIO[%p] controllerIO[%p] in current manager state=%d";
        v12 = v15;
        v13 = 74;
        goto LABEL_11;
      }
    }
  }

  v17 = VCAudioIOControllerIOState_NewAudioEvent(1, a3);
  v21 = v17;
  pthread_mutex_lock(&self->_interruptingMutex);
  if ([(VCAudioManager *)self audioCallbacksRunning])
  {
    if (CMSimpleQueueEnqueue(a4->eventQueue, v17))
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCAudioManager unregisterClientIO:controllerIO:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v18 = [(VCAudioManager *)self performSelector:sel_logPrefix];
        }

        else
        {
          v18 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v19 = VRTraceErrorLogLevelToCSTR();
          v20 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v23 = v19;
            v24 = 2080;
            v25 = "[VCAudioManager unregisterClientIO:controllerIO:]";
            v26 = 1024;
            v27 = 1613;
            v28 = 2112;
            v29 = v18;
            v30 = 2048;
            v31 = self;
            _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) CMSimpleQueueEnqueue Full", buf, 0x30u);
          }
        }
      }

      VCAudioIOControllerIOState_ReleaseAudioEvent(&v21, 0);
    }
  }

  else
  {
    VCAudioIOControllerIOState_UnregisterClientIO(a4, &v21);
  }

  pthread_mutex_unlock(&self->_interruptingMutex);
}

- (void)completeStartForAllStartingClients
{
  v34 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  startingIOClients = self->_startingIOClients;
  v4 = [(NSMutableArray *)startingIOClients countByEnumeratingWithState:&v30 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v31;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(startingIOClients);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v15 = VRTraceErrorLogLevelToCSTR();
            v16 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v18 = v15;
              v19 = 2080;
              v20 = "[VCAudioManager completeStartForAllStartingClients]";
              v21 = 1024;
              v22 = 1625;
              v23 = 2048;
              v24 = v8;
              v12 = v16;
              v13 = " [%s] %s:%d controller did start client (audioIO=%p)";
              v14 = 38;
              goto LABEL_15;
            }
          }
        }

        else
        {
          v9 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v9 = [(VCAudioManager *)self performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v10 = VRTraceErrorLogLevelToCSTR();
            v11 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316418;
              v18 = v10;
              v19 = 2080;
              v20 = "[VCAudioManager completeStartForAllStartingClients]";
              v21 = 1024;
              v22 = 1625;
              v23 = 2112;
              v24 = v9;
              v25 = 2048;
              v26 = self;
              v27 = 2048;
              v28 = v8;
              v12 = v11;
              v13 = " [%s] %s:%d %@(%p) controller did start client (audioIO=%p)";
              v14 = 58;
LABEL_15:
              _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, v14);
            }
          }
        }

        [-[__CFString delegate](v8 "delegate")];
      }

      v5 = [(NSMutableArray *)startingIOClients countByEnumeratingWithState:&v30 objects:v29 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_startingIOClients removeAllObjects];
}

- (void)activateStartingClient:(id)a3 applyControllerFormat:(BOOL)a4
{
  if (a3)
  {
    v4 = a4;
    if (([(NSMutableArray *)self->_startingIOClients containsObject:?]& 1) == 0)
    {
      if (v4)
      {
        v7 = [(VCAudioManager *)self isSystemAudioOutputPlaybackMode];
        v8 = [a3 delegate];
        currentAudioUnitProperties = self->_currentAudioUnitProperties;
        if (v7)
        {
          v10 = [(VCAudioUnitProperties *)currentAudioUnitProperties frameFormatSpeaker];
        }

        else
        {
          v10 = [(VCAudioUnitProperties *)currentAudioUnitProperties frameFormatMic];
        }

        [v8 controllerFormatChanged:v10];
      }

      if ([a3 direction])
      {
        -[VCAudioManager registerClientIO:controllerIO:](self, "registerClientIO:controllerIO:", [a3 sourceIO], &self->_sourceData);
      }

      if (([a3 direction] & 2) != 0)
      {
        -[VCAudioManager registerClientIO:controllerIO:](self, "registerClientIO:controllerIO:", [a3 sinkIO], &self->_sinkData);
      }

      startingIOClients = self->_startingIOClients;

      [(NSMutableArray *)startingIOClients addObject:a3];
    }
  }
}

- (void)applyControllerFormatToClients:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allClients = self->_allClients;
  v6 = [(NSMutableArray *)allClients countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(allClients);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ((-[VCAudioUnitProperties audioUnitType](self->_currentAudioUnitProperties, "audioUnitType") != 2 || [v10 deviceRole] == 2) && (-[VCAudioUnitProperties audioUnitType](self->_currentAudioUnitProperties, "audioUnitType") != 1 || objc_msgSend(v10, "deviceRole") != 2))
        {
          if ([(VCAudioManager *)self isSystemAudioOutputPlaybackMode:-1])
          {
            v11 = [a3 frameFormatSpeaker];
          }

          else
          {
            v11 = [a3 frameFormatMic];
          }

          v12 = *v11;
          v13 = v11[2];
          v15 = v11[1];
          HIDWORD(v15) = *([v10 clientFormat] + 28);
          [objc_msgSend(v10 "delegate")];
        }
      }

      v7 = [(NSMutableArray *)allClients countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v7);
  }
}

- (int)registerForMutedTalkerNotificationWithAUIO:(tagHANDLE *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3 == 0xFFFFFFFFLL || [(VCAudioUnitProperties *)self->_currentAudioUnitProperties audioUnitType]!= 1 || !self->_mutedTalkerNotificationHandler)
  {
    return 0;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__VCAudioManager_registerForMutedTalkerNotificationWithAUIO___block_invoke;
  v15[3] = &unk_1E85F3818;
  v15[4] = self;
  v5 = AUIORegisterMutedTalkerNotificationEventListener(a3, v15);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v17 = v8;
        v18 = 2080;
        v19 = "[VCAudioManager registerForMutedTalkerNotificationWithAUIO:]";
        v20 = 1024;
        v21 = 1693;
        v22 = 1024;
        LODWORD(v23) = v5;
        v10 = " [%s] %s:%d Registered for mutedTalker notification. result=0x%08x";
        v11 = v9;
        v12 = 34;
LABEL_16:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCAudioManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v17 = v13;
        v18 = 2080;
        v19 = "[VCAudioManager registerForMutedTalkerNotificationWithAUIO:]";
        v20 = 1024;
        v21 = 1693;
        v22 = 2112;
        v23 = v6;
        v24 = 2048;
        v25 = self;
        v26 = 1024;
        v27 = v5;
        v10 = " [%s] %s:%d %@(%p) Registered for mutedTalker notification. result=0x%08x";
        v11 = v14;
        v12 = 54;
        goto LABEL_16;
      }
    }
  }

  return v5;
}

uint64_t __61__VCAudioManager_registerForMutedTalkerNotificationWithAUIO___block_invoke(uint64_t result, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2 <= 1)
  {
    v3 = result;
    if (objc_opt_class() == *(result + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        return (*(*(*(v3 + 32) + 952) + 16))(*(*(v3 + 32) + 952), a2, v5, v6, v7, v8, v9, v10);
      }

      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return (*(*(*(v3 + 32) + 952) + 16))(*(*(v3 + 32) + 952), a2, v5, v6, v7, v8, v9, v10);
      }

      v19 = 136315906;
      v20 = v11;
      v21 = 2080;
      v22 = "[VCAudioManager registerForMutedTalkerNotificationWithAUIO:]_block_invoke";
      v23 = 1024;
      v24 = 1690;
      v25 = 1024;
      LODWORD(v26) = a2;
      v13 = " [%s] %s:%d Handle mutedTalkerNotification type=%d";
      v14 = v12;
      v15 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = [*(v3 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v4 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        return (*(*(*(v3 + 32) + 952) + 16))(*(*(v3 + 32) + 952), a2, v5, v6, v7, v8, v9, v10);
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return (*(*(*(v3 + 32) + 952) + 16))(*(*(v3 + 32) + 952), a2, v5, v6, v7, v8, v9, v10);
      }

      v18 = *(v3 + 32);
      v19 = 136316418;
      v20 = v16;
      v21 = 2080;
      v22 = "[VCAudioManager registerForMutedTalkerNotificationWithAUIO:]_block_invoke";
      v23 = 1024;
      v24 = 1690;
      v25 = 2112;
      v26 = v4;
      v27 = 2048;
      v28 = v18;
      v29 = 1024;
      v30 = a2;
      v13 = " [%s] %s:%d %@(%p) Handle mutedTalkerNotification type=%d";
      v14 = v17;
      v15 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, &v19, v15);
    return (*(*(*(v3 + 32) + 952) + 16))(*(*(v3 + 32) + 952), a2, v5, v6, v7, v8, v9, v10);
  }

  return result;
}

- (int)unregisterForMutedTalkerNotificationWithAUIO:(tagHANDLE *)a3
{
  v27 = *MEMORY[0x1E69E9840];
  if (a3 == 0xFFFFFFFFLL || [(VCAudioUnitProperties *)self->_currentAudioUnitProperties audioUnitType]!= 1 || !self->_mutedTalkerNotificationHandler)
  {
    return 0;
  }

  v5 = AUIORegisterMutedTalkerNotificationEventListener(a3, 0);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315906;
        v16 = v8;
        v17 = 2080;
        v18 = "[VCAudioManager unregisterForMutedTalkerNotificationWithAUIO:]";
        v19 = 1024;
        v20 = 1705;
        v21 = 1024;
        LODWORD(v22) = v5;
        v10 = " [%s] %s:%d Unregistered from muted talker notification. result=0x%08x";
        v11 = v9;
        v12 = 34;
LABEL_16:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCAudioManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136316418;
        v16 = v13;
        v17 = 2080;
        v18 = "[VCAudioManager unregisterForMutedTalkerNotificationWithAUIO:]";
        v19 = 1024;
        v20 = 1705;
        v21 = 2112;
        v22 = v6;
        v23 = 2048;
        v24 = self;
        v25 = 1024;
        v26 = v5;
        v10 = " [%s] %s:%d %@(%p) Unregistered from muted talker notification. result=0x%08x";
        v11 = v14;
        v12 = 54;
        goto LABEL_16;
      }
    }
  }

  return v5;
}

- (int)registerForMutedTalkerNotification:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    dispatchQueue = self->_dispatchQueue;
    v12 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__VCAudioManager_registerForMutedTalkerNotification___block_invoke;
    block[3] = &unk_1E85F3840;
    block[5] = a3;
    block[6] = buf;
    block[4] = self;
    dispatch_sync(dispatchQueue, block);
    v5 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v5 = -2144534527;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioManager registerForMutedTalkerNotification:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCAudioManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          *&buf[4] = v8;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioManager registerForMutedTalkerNotification:]";
          *&buf[22] = 1024;
          v12 = 1712;
          v13 = 2112;
          v14 = v7;
          v15 = 2048;
          v16 = self;
          _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Muted talker notification handler is nil", buf, 0x30u);
        }
      }
    }
  }

  return v5;
}

void __53__VCAudioManager_registerForMutedTalkerNotification___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 952))
  {
    *(*(*(a1 + 48) + 8) + 24) = -2144534487;
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __53__VCAudioManager_registerForMutedTalkerNotification___block_invoke_cold_1();
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
          v11 = "[VCAudioManager registerForMutedTalkerNotification:]_block_invoke";
          v12 = 1024;
          v13 = 1719;
          v14 = 2112;
          v15 = v2;
          v16 = 2048;
          v17 = v7;
          _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Muted talker notification handler already registered", &v8, 0x30u);
        }
      }
    }
  }

  else
  {
    *(*(a1 + 32) + 952) = _Block_copy(*(a1 + 40));
    v3 = *(a1 + 32);
    v4 = v3[21];

    [v3 registerForMutedTalkerNotificationWithAUIO:v4];
  }
}

- (int)unregisterFromMutedTalkerNotification
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__VCAudioManager_unregisterFromMutedTalkerNotification__block_invoke;
  block[3] = &unk_1E85F3868;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(dispatchQueue, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __55__VCAudioManager_unregisterFromMutedTalkerNotification__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[119])
  {
    [v2 unregisterForMutedTalkerNotificationWithAUIO:v2[21]];
    _Block_release(*(*(a1 + 32) + 952));
    *(*(a1 + 32) + 952) = 0;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = -2144534507;
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __55__VCAudioManager_unregisterFromMutedTalkerNotification__block_invoke_cold_1();
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
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v6 = *(a1 + 32);
          v7 = 136316162;
          v8 = v4;
          v9 = 2080;
          v10 = "[VCAudioManager unregisterFromMutedTalkerNotification]_block_invoke";
          v11 = 1024;
          v12 = 1733;
          v13 = 2112;
          v14 = v3;
          v15 = 2048;
          v16 = v6;
          _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Muted talker notification handler not registered", &v7, 0x30u);
        }
      }
    }
  }
}

- (int)registerAudioSessionId:(unsigned int)a3 maxChannelCountMic:(unsigned int)a4 maxChannelCountSpeaker:(unsigned int)a5 spatialMetadata:(OpaqueCMBlockBuffer *)a6
{
  v7 = *&a5;
  v8 = *&a4;
  v9 = *&a3;
  v40 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v29 = v12;
        v30 = 2080;
        v31 = "[VCAudioManager registerAudioSessionId:maxChannelCountMic:maxChannelCountSpeaker:spatialMetadata:]";
        v32 = 1024;
        v33 = 1752;
        v34 = 1024;
        LODWORD(v35) = v9;
        v14 = " [%s] %s:%d Register session context for audioSessionId=%u";
        v15 = v13;
        v16 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [(VCAudioManager *)self performSelector:sel_logPrefix];
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
        *buf = 136316418;
        v29 = v17;
        v30 = 2080;
        v31 = "[VCAudioManager registerAudioSessionId:maxChannelCountMic:maxChannelCountSpeaker:spatialMetadata:]";
        v32 = 1024;
        v33 = 1752;
        v34 = 2112;
        v35 = v11;
        v36 = 2048;
        v37 = self;
        v38 = 1024;
        v39 = v9;
        v14 = " [%s] %s:%d %@(%p) Register session context for audioSessionId=%u";
        v15 = v18;
        v16 = 54;
        goto LABEL_11;
      }
    }
  }

  v19 = [[VCAudioUnitSpatialContext alloc] initWithAudioSessionId:v9 maxChannelCountMic:v8 maxChannelCountSpeaker:v7 spatialMetadata:a6];
  if (v19)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__VCAudioManager_registerAudioSessionId_maxChannelCountMic_maxChannelCountSpeaker_spatialMetadata___block_invoke;
    block[3] = &unk_1E85F3890;
    v27 = v9;
    block[4] = self;
    block[5] = v19;
    dispatch_async(dispatchQueue, block);
    v21 = 0;
  }

  else
  {
    v21 = -2144534525;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioManager registerAudioSessionId:maxChannelCountMic:maxChannelCountSpeaker:spatialMetadata:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v23 = [(VCAudioManager *)self performSelector:sel_logPrefix];
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
          v29 = v24;
          v30 = 2080;
          v31 = "[VCAudioManager registerAudioSessionId:maxChannelCountMic:maxChannelCountSpeaker:spatialMetadata:]";
          v32 = 1024;
          v33 = 1758;
          v34 = 2112;
          v35 = v23;
          v36 = 2048;
          v37 = self;
          v38 = 1024;
          v39 = v9;
          _os_log_error_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to allocate audio session context for audioSessionId=%u", buf, 0x36u);
        }
      }
    }
  }

  return v21;
}

void __99__VCAudioManager_registerAudioSessionId_maxChannelCountMic_maxChannelCountSpeaker_spatialMetadata___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 928) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48))}])
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __99__VCAudioManager_registerAudioSessionId_maxChannelCountMic_maxChannelCountSpeaker_spatialMetadata___block_invoke_cold_1();
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

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v8 = *(a1 + 32);
          v9 = *(a1 + 48);
          v10 = 136316418;
          v11 = v6;
          v12 = 2080;
          v13 = "[VCAudioManager registerAudioSessionId:maxChannelCountMic:maxChannelCountSpeaker:spatialMetadata:]_block_invoke";
          v14 = 1024;
          v15 = 1764;
          v16 = 2112;
          v17 = v2;
          v18 = 2048;
          v19 = v8;
          v20 = 1024;
          v21 = v9;
          _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Session context for audioSessionId=%u is already registered", &v10, 0x36u);
        }
      }
    }
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 928);
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 48)];

    [v4 setObject:v3 forKeyedSubscript:v5];
  }
}

- (void)unregisterAudioSessionId:(unsigned int)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v17 = v6;
        v18 = 2080;
        v19 = "[VCAudioManager unregisterAudioSessionId:]";
        v20 = 1024;
        v21 = 1773;
        v22 = 1024;
        LODWORD(v23) = a3;
        v8 = " [%s] %s:%d Unregister session context for audioSessionId=%u";
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
      v5 = [(VCAudioManager *)self performSelector:sel_logPrefix];
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
        v17 = v11;
        v18 = 2080;
        v19 = "[VCAudioManager unregisterAudioSessionId:]";
        v20 = 1024;
        v21 = 1773;
        v22 = 2112;
        v23 = v5;
        v24 = 2048;
        v25 = self;
        v26 = 1024;
        v27 = a3;
        v8 = " [%s] %s:%d %@(%p) Unregister session context for audioSessionId=%u";
        v9 = v12;
        v10 = 54;
        goto LABEL_11;
      }
    }
  }

  dispatchQueue = self->_dispatchQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __43__VCAudioManager_unregisterAudioSessionId___block_invoke;
  v14[3] = &unk_1E85F38B8;
  v14[4] = self;
  v15 = a3;
  dispatch_async(dispatchQueue, v14);
}

void __43__VCAudioManager_unregisterAudioSessionId___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 40);
  if ([*(*(a1 + 32) + 928) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 40))}])
  {
    v3 = *(*(v2 - 1) + 928);
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*v2];

    [v3 setObject:0 forKeyedSubscript:v4];
  }

  else if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __43__VCAudioManager_unregisterAudioSessionId___block_invoke_cold_1();
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
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 32);
        v9 = *(a1 + 40);
        v10 = 136316418;
        v11 = v6;
        v12 = 2080;
        v13 = "[VCAudioManager unregisterAudioSessionId:]_block_invoke";
        v14 = 1024;
        v15 = 1779;
        v16 = 2112;
        v17 = v5;
        v18 = 2048;
        v19 = v8;
        v20 = 1024;
        v21 = v9;
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Session context for audioSessionId=%u is not registered", &v10, 0x36u);
      }
    }
  }
}

- (void)setSpatialMetadata:(OpaqueCMBlockBuffer *)a3 audioSessionId:(unsigned int)a4 completionHandler:(id)a5
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    CFRetain(a3);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__VCAudioManager_setSpatialMetadata_audioSessionId_completionHandler___block_invoke;
  block[3] = &unk_1E85F38E0;
  v11 = a4;
  block[5] = a5;
  block[6] = a3;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)applySpatialMetadata:(OpaqueCMBlockBuffer *)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = 0;
  totalLengthOut = 0;
  if (a3)
  {
    DataPointer = CMBlockBufferGetDataPointer(a3, 0, 0, &totalLengthOut, &v22);
    if (DataPointer)
    {
      [(VCAudioManager *)self applySpatialMetadata:v6, v7, v8, v9, v10, v11, v22, totalLengthOut, SWORD2(totalLengthOut), *buf, *&buf[8], v25, *(&v25 + 1), v26, *v27, *&v27[8], *&v27[16], *&v27[24], v28, v29, v30, v31];
      return;
    }

    v12 = AUIOSetSpatialMetadata();
    if (v12 < 0)
    {
      v13 = v12;
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          return;
        }

        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 136316418;
        *&buf[4] = v15;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAudioManager applySpatialMetadata:]";
        *&buf[22] = 1024;
        LODWORD(v25) = 1826;
        WORD2(v25) = 2048;
        *(&v25 + 6) = a3;
        HIWORD(v25) = 2048;
        v26 = totalLengthOut;
        *v27 = 1024;
        *&v27[2] = v13;
        v17 = " [%s] %s:%d Failed to apply the metadata buffer. spatialMetadata=%p, dataBufferLength=%zu, status=%08x";
        v18 = v16;
        v19 = 54;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v14 = [(VCAudioManager *)self performSelector:sel_logPrefix, v22];
        }

        else
        {
          v14 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          return;
        }

        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 136316930;
        *&buf[4] = v20;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAudioManager applySpatialMetadata:]";
        *&buf[22] = 1024;
        LODWORD(v25) = 1826;
        WORD2(v25) = 2112;
        *(&v25 + 6) = v14;
        HIWORD(v25) = 2048;
        v26 = self;
        *v27 = 2048;
        *&v27[2] = a3;
        *&v27[10] = 2048;
        *&v27[12] = totalLengthOut;
        *&v27[20] = 1024;
        *&v27[22] = v13;
        v17 = " [%s] %s:%d %@(%p) Failed to apply the metadata buffer. spatialMetadata=%p, dataBufferLength=%zu, status=%08x";
        v18 = v21;
        v19 = 74;
      }

      _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    }
  }
}

- (void)setupSpatialContextWithAudioUnitProperties:(id)a3 forceUpdate:(BOOL)a4
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = [a3 spatialContext];
  v8 = v7;
  currentSpatialContext = self->_currentSpatialContext;
  if (a4 || v7 != currentSpatialContext)
  {

    v10 = v8;
    self->_currentSpatialContext = v10;
    v11 = [(VCAudioUnitSpatialContext *)v10 spatialMetadata];

    [(VCAudioManager *)self applySpatialMetadata:v11];
  }
}

- (void)startVADWithAudioUnitProperties:(id)a3
{
  if (!self->_playbackMode)
  {
    self->_sinkData.isForcedMediaPriorityEnabled = [+[VCDefaults sharedInstance](VCDefaults forceAudioPriorityEnabled];
    self->_sinkData.forcedMediaPriorityLastUpdateTime = -1.79769313e308;
    voiceDetector = self->_sinkData.voiceDetector;
    v7 = [a3 frameFormatMic];

    VCVoiceDetector_Start(voiceDetector, v7);
  }
}

- (BOOL)stateIdleWithAudioUnitProperties:(id)a3 sessionProperties:(id)a4 client:(id)a5 newState:(unsigned int *)a6
{
  *a6 = 1;
  if (![(NSMutableArray *)self->_allClients count:a3])
  {
    [(VCAudioManager *)self resetAudioTimestamps];
    [(NSMutableDictionary *)self->_audioSessionSinkMuted removeAllObjects];
    goto LABEL_5;
  }

  v9 = [(VCAudioManager *)self startAudioSessionWithProperties:a4];
  if (v9)
  {
    self->_isSuspended = 0;
    *a6 = 2;
LABEL_5:
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (void)enterStateStarted
{
  v27 = *MEMORY[0x1E69E9840];
  if (self->_state - 3 <= 1)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          state = self->_state;
          *v23 = 136316418;
          *&v23[4] = v4;
          *&v23[12] = 2080;
          *&v23[14] = "[VCAudioManager enterStateStarted]";
          *&v23[22] = 1024;
          LODWORD(v24) = 1983;
          WORD2(v24) = 2048;
          *(&v24 + 6) = self;
          HIWORD(v24) = 2048;
          p_sourceData = &self->_sourceData;
          *v26 = 1024;
          *&v26[2] = state;
          v7 = " [%s] %s:%d [%p] Flushing eventQueue of source controllerIO[%p] in current manager state=%d";
          v8 = v5;
          v9 = 54;
LABEL_12:
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, v23, v9);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [(VCAudioManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = self->_state;
          *v23 = 136316930;
          *&v23[4] = v10;
          *&v23[12] = 2080;
          *&v23[14] = "[VCAudioManager enterStateStarted]";
          *&v23[22] = 1024;
          LODWORD(v24) = 1983;
          WORD2(v24) = 2112;
          *(&v24 + 6) = v3;
          HIWORD(v24) = 2048;
          p_sourceData = self;
          *v26 = 2048;
          *&v26[2] = self;
          *&v26[10] = 2048;
          *&v26[12] = &self->_sourceData;
          *&v26[20] = 1024;
          *&v26[22] = v12;
          v7 = " [%s] %s:%d %@(%p) [%p] Flushing eventQueue of source controllerIO[%p] in current manager state=%d";
          v8 = v11;
          v9 = 74;
          goto LABEL_12;
        }
      }
    }

    [(VCAudioManager *)self flushEventQueue:self->_sourceData.eventQueue, *v23, *&v23[16], v24, p_sourceData, *v26, *&v26[16]];
    if (objc_opt_class() == self)
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

      v16 = self->_state;
      *v23 = 136316418;
      *&v23[4] = v14;
      *&v23[12] = 2080;
      *&v23[14] = "[VCAudioManager enterStateStarted]";
      *&v23[22] = 1024;
      LODWORD(v24) = 1985;
      WORD2(v24) = 2048;
      *(&v24 + 6) = self;
      HIWORD(v24) = 2048;
      p_sourceData = &self->_sinkData;
      *v26 = 1024;
      *&v26[2] = v16;
      v17 = " [%s] %s:%d [%p] Flushing eventQueue of sink controllerIO[%p] in current manager state=%d";
      v18 = v15;
      v19 = 54;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [(VCAudioManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v13 = &stru_1F570E008;
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

      v22 = self->_state;
      *v23 = 136316930;
      *&v23[4] = v20;
      *&v23[12] = 2080;
      *&v23[14] = "[VCAudioManager enterStateStarted]";
      *&v23[22] = 1024;
      LODWORD(v24) = 1985;
      WORD2(v24) = 2112;
      *(&v24 + 6) = v13;
      HIWORD(v24) = 2048;
      p_sourceData = self;
      *v26 = 2048;
      *&v26[2] = self;
      *&v26[10] = 2048;
      *&v26[12] = &self->_sinkData;
      *&v26[20] = 1024;
      *&v26[22] = v22;
      v17 = " [%s] %s:%d %@(%p) [%p] Flushing eventQueue of sink controllerIO[%p] in current manager state=%d";
      v18 = v21;
      v19 = 74;
    }

    _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, v23, v19);
LABEL_24:
    [(VCAudioManager *)self flushEventQueue:self->_sinkData.eventQueue, *v23, *&v23[8], v24, p_sourceData, *v26, *&v26[8], *&v26[16], *&v26[24]];
    [(VCAudioManager *)self removeAllClientsForIO:&self->_sinkData];
    [(VCAudioManager *)self removeAllClientsForIO:&self->_sourceData];
    VCAudioBufferList_Destroy(&self->_sourceData.secondarySampleBuffer);
    VCAudioBufferList_Destroy(&self->_sourceData.interruptMixDownSampleBuffer);
    [(VCAudioManager *)self setCurrentAudioUnitProperties:0];
  }
}

- (BOOL)stateSessionStartedWithAudioUnitProperties:(id)a3 sessionProperties:(id)a4 client:(id)a5 newState:(unsigned int *)a6
{
  v42 = *MEMORY[0x1E69E9840];
  *a6 = 2;
  if (-[NSMutableArray count](self->_allClients, "count") && (v11 = -[VCAudioSessionMediaProperties isSessionActive](self->_currentAudioSessionMediaProperties, "isSessionActive"), v11 == [a4 isSessionActive]))
  {
    if (a5 && ([(NSMutableArray *)self->_startingIOClients containsObject:a5]& 1) == 0)
    {
      [(NSMutableArray *)self->_startingIOClients addObject:a5];
      v26 = 1;
    }

    else
    {
      v26 = 0;
    }

    v27 = a6;
    if ([(VCAudioManager *)self shouldResetAudioSessionWithProperties:a4, a5])
    {
      [(VCAudioManager *)self resetAudioSessionWithProperties:a4 interruptSuccessful:0];
    }

    [(VCAudioManager *)self setCurrentAudioUnitProperties:a3];
    VCAudioBufferList_AllocateFrame([(VCAudioUnitProperties *)self->_currentAudioUnitProperties frameFormatSpeaker], &self->_sourceData.secondarySampleBuffer);
    p_sourceData = &self->_sourceData;
    VCAudioBufferList_AllocateFrame([(VCAudioUnitProperties *)self->_currentAudioUnitProperties frameFormatMic], &self->_sourceData.interruptMixDownSampleBuffer);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    allClients = self->_allClients;
    v15 = [(NSMutableArray *)allClients countByEnumeratingWithState:&v38 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v39;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(allClients);
          }

          v19 = *(*(&v38 + 1) + 8 * i);
          if ((-[VCAudioUnitProperties audioUnitType](self->_currentAudioUnitProperties, "audioUnitType") != 2 || [v19 deviceRole] == 2) && (-[VCAudioUnitProperties audioUnitType](self->_currentAudioUnitProperties, "audioUnitType") != 1 || objc_msgSend(v19, "deviceRole") != 2))
          {
            v20 = [(VCAudioManager *)self isSystemAudioOutputPlaybackMode];
            v21 = [v19 delegate];
            if (v20)
            {
              v22 = [a3 frameFormatSpeaker];
            }

            else
            {
              v22 = [a3 frameFormatMic];
            }

            [v21 controllerFormatChanged:v22];
            if (([v19 direction] & 2) != 0)
            {
              -[VCAudioManager registerClientIO:controllerIO:](self, "registerClientIO:controllerIO:", [v19 sinkIO], &self->_sinkData);
            }

            if ([v19 direction])
            {
              -[VCAudioManager registerClientIO:controllerIO:](self, "registerClientIO:controllerIO:", [v19 sourceIO], p_sourceData);
            }
          }
        }

        v16 = [(NSMutableArray *)allClients countByEnumeratingWithState:&v38 objects:v37 count:16];
      }

      while (v16);
    }

    [(VCAudioManager *)self resetChannelMask];
    if ([(VCAudioManager *)self startAUIOWithProperties:a3])
    {
      *v27 = 3;
      if (VCDefaults_GetBoolValueForKey(@"forceMixingVoiceWithMediaEnabled", self->_isMixingVoiceWithMediaEnabled))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v23 = VRTraceErrorLogLevelToCSTR();
          v24 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v30 = v23;
            v31 = 2080;
            v32 = "[VCAudioManager stateSessionStartedWithAudioUnitProperties:sessionProperties:client:newState:]";
            v33 = 1024;
            v34 = 2042;
            v35 = 1024;
            v36 = 1;
            _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting Voice Mixing Enabled=%d", buf, 0x22u);
          }
        }

        v12 = 1;
        [(VCAudioManager *)self setMixingVoiceWithMediaEnabled:1];
      }

      else
      {
        return 1;
      }
    }

    else
    {
      VCAudioBufferList_Destroy(&self->_sourceData.secondarySampleBuffer);
      VCAudioBufferList_Destroy(&self->_sourceData.interruptMixDownSampleBuffer);
      [(VCAudioManager *)self removeAllClientsForIO:&self->_sinkData];
      [(VCAudioManager *)self removeAllClientsForIO:p_sourceData];
      if (v26)
      {
        -[NSMutableArray removeObject:](self->_startingIOClients, "removeObject:", [v25 delegate]);
      }

      return 0;
    }
  }

  else
  {
    self->_isSuspended = 0;
    [(VCAudioManager *)self stopAudioSession];
    v12 = 1;
    *a6 = 1;
  }

  return v12;
}

- (BOOL)stateRunningShouldTransitionToStarted:(id)a3
{
  if (![(NSMutableArray *)self->_allClients count])
  {
    return 1;
  }

  v5 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties audioUnitType];
  return v5 != [a3 audioUnitType];
}

- (void)stateRunningToSessionStarted
{
  [(VCAudioManager *)self stopAUIO];

  [(VCAudioManager *)self enterStateStarted];
}

- (void)stateTransitionRunningToInterrupted
{
  [(VCAudioManager *)self stopAUIO];

  [(VCAudioManager *)self startInterruptThread];
}

- (BOOL)stateRunningWithAudioUnitProperties:(id)a3 sessionProperties:(id)a4 client:(id)a5 newState:(unsigned int *)a6
{
  v58 = *MEMORY[0x1E69E9840];
  *a6 = 3;
  if ([(VCAudioManager *)self stateRunningShouldTransitionToStarted:?])
  {
    [(VCAudioManager *)self stateRunningToSessionStarted];
    v11 = 2;
LABEL_5:
    *a6 = v11;
    return 1;
  }

  if ([(VCAudioManager *)self stateRunningShouldTransitionToInterrupted:a3])
  {
    [(VCAudioManager *)self stateTransitionRunningToInterrupted];
    v11 = 4;
    goto LABEL_5;
  }

  v12 = [(VCAudioManager *)self shouldResetAudioSessionWithProperties:a4];
  v13 = [(VCAudioManager *)self shouldResetAudioUnitWithProperties:a3];
  v14 = v13 | v12;
  if (((v13 | v12) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (objc_opt_class() == self)
  {
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

    v43 = [a3 audioSessionId];
    v18 = *([a3 frameFormatMic] + 40);
    *buf = 136316162;
    v46 = v16;
    v47 = 2080;
    v48 = "[VCAudioManager stateRunningWithAudioUnitProperties:sessionProperties:client:newState:]";
    v49 = 1024;
    v50 = 2096;
    v51 = 1024;
    *v52 = v43;
    *&v52[4] = 1024;
    *&v52[6] = v18;
    v19 = " [%s] %s:%d [CMSession]:%u reset audio unit: %d";
    v20 = v17;
    v21 = 40;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v15 = [(VCAudioManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v15 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_18;
    }

    v44 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v42 = [a3 audioSessionId];
    v23 = *([a3 frameFormatMic] + 40);
    *buf = 136316674;
    v46 = v44;
    v47 = 2080;
    v48 = "[VCAudioManager stateRunningWithAudioUnitProperties:sessionProperties:client:newState:]";
    v49 = 1024;
    v50 = 2096;
    v51 = 2112;
    *v52 = v15;
    *&v52[8] = 2048;
    v53 = self;
    v54 = 1024;
    v55 = v42;
    v56 = 1024;
    v57 = v23;
    v19 = " [%s] %s:%d %@(%p) [CMSession]:%u reset audio unit: %d";
    v20 = v22;
    v21 = 60;
  }

  _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
LABEL_18:
  v24 = AUIOSuspend(self->_hAUIO, v13);
  if (v24 < 0 && v24 != -2145714174)
  {
    [VCAudioManager stateRunningWithAudioUnitProperties:sessionProperties:client:newState:];
    return buf[0];
  }

  VCAudioBufferList_Destroy(&self->_sourceData.secondarySampleBuffer);
  VCAudioBufferList_Destroy(&self->_sourceData.interruptMixDownSampleBuffer);
  [(VCAudioManager *)self applyControllerFormatToClients:a3];
LABEL_21:
  if (v12 && ![(VCAudioManager *)self resetAudioSessionWithProperties:a4 interruptSuccessful:0])
  {
    [VCAudioManager stateRunningWithAudioUnitProperties:sessionProperties:client:newState:];
    return buf[0];
  }

  if (v13)
  {
    VCVoiceDetector_Stop(self->_sinkData.voiceDetector);
  }

  audioSessionId = self->_sourceData.audioSessionId;
  if (audioSessionId == [a3 audioSessionId])
  {
    goto LABEL_37;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_37;
    }

    v27 = VRTraceErrorLogLevelToCSTR();
    v28 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    v29 = [a3 audioSessionId];
    v30 = self->_sourceData.audioSessionId;
    *buf = 136316162;
    v46 = v27;
    v47 = 2080;
    v48 = "[VCAudioManager stateRunningWithAudioUnitProperties:sessionProperties:client:newState:]";
    v49 = 1024;
    v50 = 2115;
    v51 = 1024;
    *v52 = v29;
    *&v52[4] = 1024;
    *&v52[6] = v30;
    v31 = " [%s] %s:%d New active audioSessionId=%u previousAudioSessionID=%u";
    v32 = v28;
    v33 = 40;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v26 = [(VCAudioManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v26 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_37;
    }

    v34 = VRTraceErrorLogLevelToCSTR();
    v35 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    v36 = [a3 audioSessionId];
    v37 = self->_sourceData.audioSessionId;
    *buf = 136316674;
    v46 = v34;
    v47 = 2080;
    v48 = "[VCAudioManager stateRunningWithAudioUnitProperties:sessionProperties:client:newState:]";
    v49 = 1024;
    v50 = 2115;
    v51 = 2112;
    *v52 = v26;
    *&v52[8] = 2048;
    v53 = self;
    v54 = 1024;
    v55 = v36;
    v56 = 1024;
    v57 = v37;
    v31 = " [%s] %s:%d %@(%p) New active audioSessionId=%u previousAudioSessionID=%u";
    v32 = v35;
    v33 = 60;
  }

  _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
LABEL_37:
  -[VCAudioUnitProperties setOperatingMode:](self->_currentAudioUnitProperties, "setOperatingMode:", [a3 operatingMode]);
  [(VCAudioManager *)self setupSpatialContextWithAudioUnitProperties:a3 forceUpdate:0];
  v38 = [a3 audioSessionId];
  self->_sourceData.audioSessionId = v38;
  self->_sinkData.audioSessionId = v38;
  [(VCAudioUnitProperties *)self->_currentAudioUnitProperties setAudioSessionId:v38];
  [(VCAudioManager *)self applyAudioSessionMute];
  [(VCAudioManager *)self activateStartingClient:a5 applyControllerFormat:(v14 & 1) == 0];
  if ((v14 & 1) == 0)
  {
    goto LABEL_45;
  }

  _VCAudioManager_ProcessEventQueue(&self->_sinkData);
  _VCAudioManager_ProcessEventQueue(&self->_sourceData);
  VCAudioBufferList_AllocateFrame([a3 frameFormatSpeaker], &self->_sourceData.secondarySampleBuffer);
  VCAudioBufferList_AllocateFrame([a3 frameFormatMic], &self->_sourceData.interruptMixDownSampleBuffer);
  if (v13)
  {
    if (![(VCAudioManager *)self resetAUIOWithProperties:a3])
    {
      [VCAudioManager stateRunningWithAudioUnitProperties:sessionProperties:client:newState:];
      return buf[0];
    }

    [(VCAudioManager *)self startVADWithAudioUnitProperties:a3];
  }

  if (![(VCAudioManager *)self resetAudioLimiterWithProperties:a3])
  {
    [VCAudioManager stateRunningWithAudioUnitProperties:sessionProperties:client:newState:];
    return buf[0];
  }

  [(VCAudioManager *)self setCurrentAudioUnitProperties:a3];
  v39 = AUIOResume();
  if (v39 < 0 && v39 != -2145714174)
  {
    [VCAudioManager stateRunningWithAudioUnitProperties:sessionProperties:client:newState:];
  }

  else
  {
LABEL_45:
    IsReady = AUIOReceiverIsReady();
    if ((IsReady & 0x80000000) == 0 || IsReady == -2145714174)
    {
      [(VCAudioManager *)self completeStartForAllStartingClients];
      return 1;
    }

    [VCAudioManager stateRunningWithAudioUnitProperties:sessionProperties:client:newState:];
  }

  return buf[0];
}

- (BOOL)stateInterruptedShouldGoToStarted:(id)a3
{
  if (![(NSMutableArray *)self->_allClients count])
  {
    return 1;
  }

  v5 = [(VCAudioUnitProperties *)self->_currentAudioUnitProperties audioUnitType];
  return v5 != [a3 audioUnitType];
}

- (void)stateTransitionInterruptedToRunning
{
  [(VCAudioManager *)self stopInterruptThread];
  [(VCAudioManager *)self resetChannelMask];
  currentAudioUnitProperties = self->_currentAudioUnitProperties;

  [(VCAudioManager *)self startAUIOWithProperties:currentAudioUnitProperties];
}

- (void)stateTransitionInterruptedToStarted
{
  [(VCAudioManager *)self stopInterruptThread];

  [(VCAudioManager *)self enterStateStarted];
}

- (BOOL)stateInterruptedWithAudioUnitProperties:(id)a3 sessionProperties:(id)a4 client:(id)a5 newState:(unsigned int *)a6
{
  v44 = *MEMORY[0x1E69E9840];
  *a6 = 4;
  if ([(VCAudioManager *)self stateInterruptedShouldGoToStarted:?])
  {
    [(VCAudioManager *)self stateTransitionInterruptedToStarted];
    v11 = 2;
LABEL_7:
    *a6 = v11;
    return 1;
  }

  if (a5)
  {
    v39[0] = 0;
    [(VCAudioManager *)self resetAudioSessionWithProperties:a4 interruptSuccessful:v39];
    self->_isSuspended = v39[0] ^ 1;
  }

  if ([(VCAudioManager *)self stateInterruptedShouldGoToRunning:a3])
  {
    [(VCAudioManager *)self stateTransitionInterruptedToRunning];
    v11 = 3;
    goto LABEL_7;
  }

  v12 = [(VCAudioManager *)self shouldResetAudioSessionWithProperties:a4];
  v13 = [(VCAudioManager *)self shouldResetAudioUnitWithProperties:a3]|| v12;
  if (v13)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_20;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v17 = *([a3 frameFormatMic] + 40);
      *v39 = 136315906;
      *&v39[4] = v15;
      *&v39[12] = 2080;
      *&v39[14] = "[VCAudioManager stateInterruptedWithAudioUnitProperties:sessionProperties:client:newState:]";
      *&v39[22] = 1024;
      LODWORD(v40) = 2202;
      WORD2(v40) = 1024;
      *(&v40 + 6) = v17;
      v18 = " [%s] %s:%d reset audio unit: %d";
      v19 = v16;
      v20 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [(VCAudioManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v14 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_20;
      }

      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v23 = *([a3 frameFormatMic] + 40);
      *v39 = 136316418;
      *&v39[4] = v21;
      *&v39[12] = 2080;
      *&v39[14] = "[VCAudioManager stateInterruptedWithAudioUnitProperties:sessionProperties:client:newState:]";
      *&v39[22] = 1024;
      LODWORD(v40) = 2202;
      WORD2(v40) = 2112;
      *(&v40 + 6) = v14;
      HIWORD(v40) = 2048;
      v41 = self;
      LOWORD(v42) = 1024;
      *(&v42 + 2) = v23;
      v18 = " [%s] %s:%d %@(%p) reset audio unit: %d";
      v19 = v22;
      v20 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v18, v39, v20);
LABEL_20:
    [(VCAudioManager *)self stopInterruptThread:*v39];
    VCAudioBufferList_Destroy(&self->_sourceData.secondarySampleBuffer);
    VCAudioBufferList_Destroy(&self->_sourceData.interruptMixDownSampleBuffer);
    [(VCAudioManager *)self applyControllerFormatToClients:a3];
  }

  if (v12)
  {
    [(VCAudioManager *)self resetAudioSessionWithProperties:a4 interruptSuccessful:0];
  }

  -[VCAudioUnitProperties setOperatingMode:](self->_currentAudioUnitProperties, "setOperatingMode:", [a3 operatingMode]);
  audioSessionId = self->_sourceData.audioSessionId;
  if (audioSessionId == [a3 audioSessionId])
  {
    goto LABEL_35;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_35;
    }

    v26 = VRTraceErrorLogLevelToCSTR();
    v27 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    v28 = [a3 audioSessionId];
    v29 = self->_sourceData.audioSessionId;
    *v39 = 136316162;
    *&v39[4] = v26;
    *&v39[12] = 2080;
    *&v39[14] = "[VCAudioManager stateInterruptedWithAudioUnitProperties:sessionProperties:client:newState:]";
    *&v39[22] = 1024;
    LODWORD(v40) = 2216;
    WORD2(v40) = 1024;
    *(&v40 + 6) = v28;
    WORD5(v40) = 1024;
    HIDWORD(v40) = v29;
    v30 = " [%s] %s:%d New active audioSessionId=%u previousAudioSessionID=%u";
    v31 = v27;
    v32 = 40;
    goto LABEL_34;
  }

  if (objc_opt_respondsToSelector())
  {
    v25 = [(VCAudioManager *)self performSelector:sel_logPrefix];
  }

  else
  {
    v25 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v33 = VRTraceErrorLogLevelToCSTR();
    v34 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v35 = [a3 audioSessionId];
      v36 = self->_sourceData.audioSessionId;
      *v39 = 136316674;
      *&v39[4] = v33;
      *&v39[12] = 2080;
      *&v39[14] = "[VCAudioManager stateInterruptedWithAudioUnitProperties:sessionProperties:client:newState:]";
      *&v39[22] = 1024;
      LODWORD(v40) = 2216;
      WORD2(v40) = 2112;
      *(&v40 + 6) = v25;
      HIWORD(v40) = 2048;
      v41 = self;
      LOWORD(v42) = 1024;
      *(&v42 + 2) = v35;
      HIWORD(v42) = 1024;
      LODWORD(v43) = v36;
      v30 = " [%s] %s:%d %@(%p) New active audioSessionId=%u previousAudioSessionID=%u";
      v31 = v34;
      v32 = 60;
LABEL_34:
      _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, v30, v39, v32);
    }
  }

LABEL_35:
  v37 = [a3 audioSessionId];
  self->_sourceData.audioSessionId = v37;
  self->_sinkData.audioSessionId = v37;
  [(VCAudioUnitProperties *)self->_currentAudioUnitProperties setAudioSessionId:v37];
  [(VCAudioManager *)self applyAudioSessionMute];
  [(VCAudioManager *)self activateStartingClient:a5 applyControllerFormat:(v13 & 1) == 0];
  if (v13)
  {
    VCAudioBufferList_AllocateFrame([a3 frameFormatSpeaker], &self->_sourceData.secondarySampleBuffer);
    VCAudioBufferList_AllocateFrame([a3 frameFormatMic], &self->_sourceData.interruptMixDownSampleBuffer);
    [(VCAudioManager *)self setCurrentAudioUnitProperties:a3];
    [(VCAudioManager *)self startInterruptThread];
  }

  [(VCAudioManager *)self completeStartForAllStartingClients];
  return 1;
}

- (id)preferredClientWithNewClient:(id)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  if (!a3 || [a3 isPrewarmingClient])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(NSMutableArray *)self->_allClients reverseObjectEnumerator];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if (![v10 isPrewarmingClient])
          {
            v3 = v10;
            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v12 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
    if (!v3)
    {
      return [(NSMutableArray *)self->_allClients lastObject];
    }
  }

  return v3;
}

- (BOOL)updateStateWithAudioIOClient:(id)a3
{
  v101 = *MEMORY[0x1E69E9840];
  v83 = 0;
  v5 = [(VCAudioManager *)self preferredClientWithNewClient:?];
  [(VCAudioManager *)self _cleanupDeadClients];
  v78 = a3;
  if (a3)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v85 = v7;
          v86 = 2080;
          v87 = "[VCAudioManager updateStateWithAudioIOClient:]";
          v88 = 1024;
          v89 = 2263;
          v90 = 2112;
          v91 = v78;
          v9 = " [%s] %s:%d new client: %@";
          v10 = v8;
          v11 = 38;
LABEL_12:
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCAudioManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v85 = v12;
          v86 = 2080;
          v87 = "[VCAudioManager updateStateWithAudioIOClient:]";
          v88 = 1024;
          v89 = 2263;
          v90 = 2112;
          v91 = v6;
          v92 = 2048;
          *v93 = self;
          *&v93[8] = 2112;
          *&v93[10] = v78;
          v9 = " [%s] %s:%d %@(%p) new client: %@";
          v10 = v13;
          v11 = 58;
          goto LABEL_12;
        }
      }
    }
  }

  playbackMode = self->_playbackMode;
  if (playbackMode)
  {
    v79 = [(VCAudioManager *)self newAudioUnitPropertiesForSystemAudioWithPreferredClient:v5 isInput:playbackMode == 2];
    v80 = [(VCAudioManager *)self newAudioSessionMediaPropertiesForSystemAudioWithPreferredClient:v5 audioUnitProperties:v79 isInput:self->_playbackMode == 2];
    v15 = v79;
    if (self->_playbackMode != 2)
    {
      v16 = [v79 frameFormatSpeaker];
      goto LABEL_18;
    }
  }

  else
  {
    v79 = [(VCAudioManager *)self newAudioUnitPropertiesWithPreferredClient:v5];
    v80 = [(VCAudioManager *)self newAudioSessionMediaPropertiesWithPreferredClient:v5 audioUnitProperties:v79];
    v15 = v79;
  }

  v16 = [v15 frameFormatMic];
LABEL_18:
  v17 = v16;
  v18 = [(NSMutableArray *)self->_allClients count];
  v19 = objc_opt_class();
  if (v18)
  {
    if (v19 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_46;
      }

      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      v24 = [(NSMutableArray *)self->_allClients count];
      v25 = *v17;
      v26 = *(v17 + 40);
      if (v80)
      {
        [v80 outputFormat];
        v27 = v82;
      }

      else
      {
        v27 = 0;
      }

      *buf = 136317186;
      v85 = v22;
      v86 = 2080;
      v87 = "[VCAudioManager updateStateWithAudioIOClient:]";
      v88 = 1024;
      v89 = 2280;
      v90 = 2048;
      v91 = self;
      v92 = 2048;
      *v93 = v78;
      *&v93[8] = 1024;
      *&v93[10] = v24;
      *&v93[14] = 1024;
      *&v93[16] = v25;
      *v94 = 1024;
      *&v94[2] = v26;
      *&v94[6] = 1024;
      *&v94[8] = v27;
      v37 = " [%s] %s:%d (%p) audioIO=%p clientCount:%d AUIO=%d/%d AudioSession=%d";
      v38 = v23;
      v39 = 72;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v20 = [(VCAudioManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v20 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_46;
      }

      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      v30 = [(NSMutableArray *)self->_allClients count];
      v31 = *v17;
      v32 = *(v17 + 40);
      if (v80)
      {
        [v80 outputFormat];
        v33 = v81;
      }

      else
      {
        v33 = 0;
      }

      *buf = 136317698;
      v85 = v28;
      v86 = 2080;
      v87 = "[VCAudioManager updateStateWithAudioIOClient:]";
      v88 = 1024;
      v89 = 2280;
      v90 = 2112;
      v91 = v20;
      v92 = 2048;
      *v93 = self;
      *&v93[8] = 2048;
      *&v93[10] = self;
      *&v93[18] = 2048;
      *v94 = v78;
      *&v94[8] = 1024;
      *&v94[10] = v30;
      v95 = 1024;
      v96 = v31;
      v97 = 1024;
      v98 = v32;
      v99 = 1024;
      v100 = v33;
      v37 = " [%s] %s:%d %@(%p) (%p) audioIO=%p clientCount:%d AUIO=%d/%d AudioSession=%d";
      v38 = v29;
      v39 = 92;
    }
  }

  else if (v19 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_46;
    }

    v34 = VRTraceErrorLogLevelToCSTR();
    v35 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_46;
    }

    v36 = [(NSMutableArray *)self->_allClients count];
    *buf = 136316418;
    v85 = v34;
    v86 = 2080;
    v87 = "[VCAudioManager updateStateWithAudioIOClient:]";
    v88 = 1024;
    v89 = 2282;
    v90 = 2048;
    v91 = self;
    v92 = 2048;
    *v93 = v78;
    *&v93[8] = 1024;
    *&v93[10] = v36;
    v37 = " [%s] %s:%d (%p) audioIO=%p clientCount:%d AUIO=-/- AudioSession=-";
    v38 = v35;
    v39 = 54;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v21 = [(VCAudioManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v21 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_46;
    }

    v40 = VRTraceErrorLogLevelToCSTR();
    v41 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_46;
    }

    v42 = [(NSMutableArray *)self->_allClients count];
    *buf = 136316930;
    v85 = v40;
    v86 = 2080;
    v87 = "[VCAudioManager updateStateWithAudioIOClient:]";
    v88 = 1024;
    v89 = 2282;
    v90 = 2112;
    v91 = v21;
    v92 = 2048;
    *v93 = self;
    *&v93[8] = 2048;
    *&v93[10] = self;
    *&v93[18] = 2048;
    *v94 = v78;
    *&v94[8] = 1024;
    *&v94[10] = v42;
    v37 = " [%s] %s:%d %@(%p) (%p) audioIO=%p clientCount:%d AUIO=-/- AudioSession=-";
    v38 = v41;
    v39 = 74;
  }

  _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, v37, buf, v39);
LABEL_46:
  v43 = 0x1ECC67000;
  v44 = v78;
  v45 = MEMORY[0x1E6986650];
  while (1)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v54 = VRTraceErrorLogLevelToCSTR();
        v55 = *v45;
        if (os_log_type_enabled(*v45, OS_LOG_TYPE_DEFAULT))
        {
          v56 = [(NSArray *)self->_stateStrings objectAtIndexedSubscript:self->_state];
          state = self->_state;
          v43 = 0x1ECC67000uLL;
          *buf = 136316162;
          v85 = v54;
          v86 = 2080;
          v87 = "[VCAudioManager updateStateWithAudioIOClient:]";
          v88 = 1024;
          v89 = 2286;
          v90 = 2112;
          v91 = v56;
          v92 = 1024;
          *v93 = state;
          v51 = v55;
          v52 = " [%s] %s:%d Process state: %@ (%d)";
          v53 = 44;
          goto LABEL_56;
        }
      }
    }

    else
    {
      v46 = &stru_1F570E008;
      if (objc_opt_respondsToSelector())
      {
        v46 = [(VCAudioManager *)self performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v47 = VRTraceErrorLogLevelToCSTR();
        v48 = *v45;
        if (os_log_type_enabled(*v45, OS_LOG_TYPE_DEFAULT))
        {
          v49 = [(NSArray *)self->_stateStrings objectAtIndexedSubscript:self->_state];
          v50 = self->_state;
          v43 = 0x1ECC67000;
          *buf = 136316674;
          v85 = v47;
          v86 = 2080;
          v87 = "[VCAudioManager updateStateWithAudioIOClient:]";
          v88 = 1024;
          v89 = 2286;
          v90 = 2112;
          v91 = v46;
          v92 = 2048;
          *v93 = self;
          *&v93[8] = 2112;
          *&v93[10] = v49;
          *&v93[18] = 1024;
          *v94 = v50;
          v51 = v48;
          v52 = " [%s] %s:%d %@(%p) Process state: %@ (%d)";
          v53 = 64;
LABEL_56:
          _os_log_impl(&dword_1DB56E000, v51, OS_LOG_TYPE_DEFAULT, v52, buf, v53);
        }
      }
    }

    v58 = *(v43 + 3400);
    v59 = *(&self->super.super.isa + v58);
    v60 = 1;
    if (v59 > 2)
    {
      if (v59 == 3)
      {
        v61 = [(VCAudioManager *)self stateRunningWithAudioUnitProperties:v79 sessionProperties:v80 client:v44 newState:&v83];
      }

      else
      {
        if (v59 != 4)
        {
          goto LABEL_67;
        }

        v61 = [(VCAudioManager *)self stateInterruptedWithAudioUnitProperties:v79 sessionProperties:v80 client:v44 newState:&v83];
      }
    }

    else if (v59 == 1)
    {
      v61 = [(VCAudioManager *)self stateIdleWithAudioUnitProperties:v79 sessionProperties:v80 client:v44 newState:&v83];
    }

    else
    {
      if (v59 != 2)
      {
        goto LABEL_67;
      }

      v61 = [(VCAudioManager *)self stateSessionStartedWithAudioUnitProperties:v79 sessionProperties:v80 client:v44 newState:&v83];
    }

    v60 = v61;
LABEL_67:
    v62 = v83;
    if (v83 == *(&self->super.super.isa + v58))
    {
      break;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_78;
      }

      v72 = VRTraceErrorLogLevelToCSTR();
      v73 = *v45;
      if (!os_log_type_enabled(*v45, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_78;
      }

      v74 = [(NSArray *)self->_stateStrings objectAtIndexedSubscript:*(&self->super.super.isa + v58)];
      v75 = *(&self->super.super.isa + v58);
      v43 = 0x1ECC67000;
      v76 = [(NSArray *)self->_stateStrings objectAtIndexedSubscript:v83];
      *buf = 136316674;
      v85 = v72;
      v86 = 2080;
      v87 = "[VCAudioManager updateStateWithAudioIOClient:]";
      v88 = 1024;
      v89 = 2305;
      v90 = 2112;
      v91 = v74;
      v92 = 1024;
      *v93 = v75;
      v45 = MEMORY[0x1E6986650];
      *&v93[4] = 2112;
      *&v93[6] = v76;
      *&v93[14] = 1024;
      *&v93[16] = v83;
      v69 = v73;
      v70 = " [%s] %s:%d State change: %@ (%d) -> %@ (%d)";
      v71 = 60;
    }

    else
    {
      v63 = &stru_1F570E008;
      if (objc_opt_respondsToSelector())
      {
        v63 = [(VCAudioManager *)self performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_78;
      }

      v64 = VRTraceErrorLogLevelToCSTR();
      v65 = *v45;
      if (!os_log_type_enabled(*v45, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_78;
      }

      v66 = [(NSArray *)self->_stateStrings objectAtIndexedSubscript:*(&self->super.super.isa + v58)];
      v67 = *(&self->super.super.isa + v58);
      v45 = MEMORY[0x1E6986650];
      v68 = [(NSArray *)self->_stateStrings objectAtIndexedSubscript:v83];
      *buf = 136317186;
      v85 = v64;
      v86 = 2080;
      v87 = "[VCAudioManager updateStateWithAudioIOClient:]";
      v88 = 1024;
      v89 = 2305;
      v90 = 2112;
      v91 = v63;
      v92 = 2048;
      *v93 = self;
      *&v93[8] = 2112;
      *&v93[10] = v66;
      v43 = 0x1ECC67000;
      *&v93[18] = 1024;
      *v94 = v67;
      v44 = v78;
      *&v94[4] = 2112;
      *&v94[6] = v68;
      v95 = 1024;
      v96 = v83;
      v69 = v65;
      v70 = " [%s] %s:%d %@(%p) State change: %@ (%d) -> %@ (%d)";
      v71 = 80;
    }

    _os_log_impl(&dword_1DB56E000, v69, OS_LOG_TYPE_DEFAULT, v70, buf, v71);
LABEL_78:
    v62 = v83;
    *(&self->super.super.isa + v58) = v83;
    if (!v60)
    {
      goto LABEL_81;
    }
  }

  *(&self->super.super.isa + v58) = v83;
LABEL_81:
  if (v62 != 3)
  {
    pthread_mutex_lock(&self->_interruptingMutex);
    self->_isInterrupting = 0;
    pthread_mutex_unlock(&self->_interruptingMutex);
  }

  return v60;
}

- (void)startClient:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    dispatchQueue = self->_dispatchQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __30__VCAudioManager_startClient___block_invoke;
    v8[3] = &unk_1E85F37F0;
    v8[4] = a3;
    v8[5] = self;
    dispatch_async(dispatchQueue, v8);
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioManager startClient:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCAudioManager *)self performSelector:sel_logPrefix];
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
        *buf = 136316162;
        v10 = v6;
        v11 = 2080;
        v12 = "[VCAudioManager startClient:]";
        v13 = 1024;
        v14 = 2324;
        v15 = 2112;
        v16 = v5;
        v17 = 2048;
        v18 = self;
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Client is nil!", buf, 0x30u);
      }
    }
  }
}

void __30__VCAudioManager_startClient___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  if ([*(a1 + 32) deviceRole] == 3 || objc_msgSend(*v2, "deviceRole") == 4 || objc_msgSend(*v2, "deviceRole") == 9)
  {
    [objc_msgSend(*(a1 + 32) "delegate")];
    if (objc_opt_class() != *(a1 + 40))
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [*(a1 + 40) performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return;
      }

      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v27 = *(a1 + 40);
      v28 = [*(a1 + 32) deviceRole];
      *buf = 136316418;
      v34 = v6;
      v35 = 2080;
      v36 = "[VCAudioManager startClient:]_block_invoke";
      v37 = 1024;
      v38 = 2333;
      v39 = 2112;
      v40 = v3;
      v41 = 2048;
      v42 = v27;
      v43 = 1024;
      LODWORD(v44) = v28;
      v24 = " [%s] %s:%d %@(%p) Invalid device role: %d!";
      v25 = v7;
      v26 = 54;
LABEL_41:
      _os_log_error_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
      return;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __30__VCAudioManager_startClient___block_invoke_cold_3(v4, v2, v5);
      }
    }

    return;
  }

  if ([*(a1 + 40) addClient:*(a1 + 32)])
  {
    if (objc_opt_class() == *(a1 + 40))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = *v2;
          *buf = 136315906;
          v34 = v10;
          v35 = 2080;
          v36 = "[VCAudioManager startClient:]_block_invoke";
          v37 = 1024;
          v38 = 2342;
          v39 = 2048;
          v40 = v12;
          v13 = " [%s] %s:%d controller start client (audioIO=%p)";
          v14 = v11;
          v15 = 38;
LABEL_31:
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [*(a1 + 40) performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(a1 + 32);
          v18 = *(a1 + 40);
          *buf = 136316418;
          v34 = v16;
          v35 = 2080;
          v36 = "[VCAudioManager startClient:]_block_invoke";
          v37 = 1024;
          v38 = 2342;
          v39 = 2112;
          v40 = v8;
          v41 = 2048;
          v42 = v18;
          v43 = 2048;
          v44 = v19;
          v13 = " [%s] %s:%d %@(%p) controller start client (audioIO=%p)";
          v14 = v17;
          v15 = 58;
          goto LABEL_31;
        }
      }
    }

    if (([*(a1 + 40) updateStateWithAudioIOClient:*(a1 + 32)] & 1) == 0)
    {
      if (objc_opt_class() == *(a1 + 40))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            __30__VCAudioManager_startClient___block_invoke_cold_2();
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v20 = [*(a1 + 40) performSelector:sel_logPrefix];
        }

        else
        {
          v20 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v29 = VRTraceErrorLogLevelToCSTR();
          v30 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v32 = *(a1 + 32);
            v31 = *(a1 + 40);
            *buf = 136316418;
            v34 = v29;
            v35 = 2080;
            v36 = "[VCAudioManager startClient:]_block_invoke";
            v37 = 1024;
            v38 = 2344;
            v39 = 2112;
            v40 = v20;
            v41 = 2048;
            v42 = v31;
            v43 = 2048;
            v44 = v32;
            _os_log_error_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) controller start client FAILED (audioIO=%p)", buf, 0x3Au);
          }
        }
      }

      [*(a1 + 40) removeClient:*(a1 + 32)];
      if (([*(a1 + 40) updateStateWithAudioIOClient:0] & 1) == 0)
      {
        [VCAudioManager terminateProcess:@"Failed to recover AUIO state on client start failure" terminateSource:@"VCAudioManager" agent:*(*(a1 + 40) + 8)];
      }

      [objc_msgSend(*v2 "delegate")];
    }

    return;
  }

  [objc_msgSend(*(a1 + 32) "delegate")];
  if (objc_opt_class() == *(a1 + 40))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __30__VCAudioManager_startClient___block_invoke_cold_1();
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [*(a1 + 40) performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 40);
        *buf = 136316162;
        v34 = v21;
        v35 = 2080;
        v36 = "[VCAudioManager startClient:]_block_invoke";
        v37 = 1024;
        v38 = 2339;
        v39 = 2112;
        v40 = v9;
        v41 = 2048;
        v42 = v23;
        v24 = " [%s] %s:%d %@(%p) Client already registered!";
        v25 = v22;
        v26 = 48;
        goto LABEL_41;
      }
    }
  }
}

- (void)stopClient:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    dispatchQueue = self->_dispatchQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __29__VCAudioManager_stopClient___block_invoke;
    v8[3] = &unk_1E85F37F0;
    v8[4] = self;
    v8[5] = a3;
    dispatch_async(dispatchQueue, v8);
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioManager stopClient:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCAudioManager *)self performSelector:sel_logPrefix];
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
        *buf = 136316162;
        v10 = v6;
        v11 = 2080;
        v12 = "[VCAudioManager stopClient:]";
        v13 = 1024;
        v14 = 2358;
        v15 = 2112;
        v16 = v5;
        v17 = 2048;
        v18 = self;
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Client is nil!", buf, 0x30u);
      }
    }
  }
}

uint64_t __29__VCAudioManager_stopClient___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 40);
  if (([*(a1 + 32) removeClient:*(a1 + 40)] & 1) == 0)
  {
    [objc_msgSend(*v2 "delegate")];
  }

  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *v2;
        *buf = 136315906;
        v39 = v4;
        v40 = 2080;
        v41 = "[VCAudioManager stopClient:]_block_invoke";
        v42 = 1024;
        v43 = 2366;
        v44 = 2048;
        v45 = v6;
        v7 = " [%s] %s:%d controller stop client (audioIO=%p)";
        v8 = v5;
        v9 = 38;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
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

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v13 = *(a1 + 40);
        *buf = 136316418;
        v39 = v10;
        v40 = 2080;
        v41 = "[VCAudioManager stopClient:]_block_invoke";
        v42 = 1024;
        v43 = 2366;
        v44 = 2112;
        v45 = v3;
        v46 = 2048;
        v47 = v12;
        v48 = 2048;
        v49 = v13;
        v7 = " [%s] %s:%d %@(%p) controller stop client (audioIO=%p)";
        v8 = v11;
        v9 = 58;
        goto LABEL_13;
      }
    }
  }

  if ([*(a1 + 32) updateStateWithAudioIOClient:0])
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_33;
      }

      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v19 = *v2;
      *buf = 136315906;
      v39 = v17;
      v40 = 2080;
      v41 = "[VCAudioManager stopClient:]_block_invoke";
      v42 = 1024;
      v43 = 2368;
      v44 = 2048;
      v45 = v19;
      v20 = " [%s] %s:%d controller did stop client (audioIO=%p)";
      v21 = v18;
      v22 = 38;
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

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_33;
      }

      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      *buf = 136316418;
      v39 = v23;
      v40 = 2080;
      v41 = "[VCAudioManager stopClient:]_block_invoke";
      v42 = 1024;
      v43 = 2368;
      v44 = 2112;
      v45 = v14;
      v46 = 2048;
      v47 = v25;
      v48 = 2048;
      v49 = v26;
      v20 = " [%s] %s:%d %@(%p) controller did stop client (audioIO=%p)";
      v21 = v24;
      v22 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
LABEL_33:
    v27 = [*v2 delegate];
    v28 = 1;
    v29 = 0;
    return [v27 didStop:v28 error:v29];
  }

  v15 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailCode:0 description:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Client (%p) failed to stop", *(a1 + 40))}];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __29__VCAudioManager_stopClient___block_invoke_cold_2();
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        __29__VCAudioManager_stopClient___block_invoke_cold_1();
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v16 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v16 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      v30 = VRTraceErrorLogLevelToCSTR();
      IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
      v32 = *MEMORY[0x1E6986650];
      if (IsOSFaultDisabled)
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v33 = *(a1 + 32);
          v34 = *(a1 + 40);
          *buf = 136316418;
          v39 = v30;
          v40 = 2080;
          v41 = "[VCAudioManager stopClient:]_block_invoke";
          v42 = 1024;
          v43 = 2372;
          v44 = 2112;
          v45 = v16;
          v46 = 2048;
          v47 = v33;
          v48 = 2048;
          v49 = v34;
          _os_log_error_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) controller stop client FAILED (audioIO=%p)", buf, 0x3Au);
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        v35 = *(a1 + 32);
        v36 = *(a1 + 40);
        *buf = 136316418;
        v39 = v30;
        v40 = 2080;
        v41 = "[VCAudioManager stopClient:]_block_invoke";
        v42 = 1024;
        v43 = 2372;
        v44 = 2112;
        v45 = v16;
        v46 = 2048;
        v47 = v35;
        v48 = 2048;
        v49 = v36;
        _os_log_fault_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_FAULT, " [%s] %s:%d %@(%p) controller stop client FAILED (audioIO=%p)", buf, 0x3Au);
      }
    }
  }

  v27 = [*v2 delegate];
  v28 = 0;
  v29 = v15;
  return [v27 didStop:v28 error:v29];
}

- (void)updateClient:(id)a3 settings:(const tagVCAudioIOControllerClientSettings *)a4
{
  v7 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a4)
    {
      dispatchQueue = self->_dispatchQueue;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __40__VCAudioManager_updateClient_settings___block_invoke;
      v5[3] = &unk_1E85F3890;
      v5[4] = self;
      v5[5] = a3;
      v6 = *a4;
      dispatch_async(dispatchQueue, v5);
    }

    else
    {
      [VCAudioManager updateClient:? settings:?];
    }
  }

  else
  {
    [VCAudioManager updateClient:? settings:?];
  }
}

uint64_t __40__VCAudioManager_updateClient_settings___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        v6 = *(*(a1 + 32) + 184);
        *v17 = 136316162;
        *&v17[4] = v3;
        *&v17[12] = 2080;
        *&v17[14] = "[VCAudioManager updateClient:settings:]_block_invoke";
        *&v17[22] = 1024;
        LODWORD(v18) = 2460;
        WORD2(v18) = 2048;
        *(&v18 + 6) = v5;
        HIWORD(v18) = 1024;
        LODWORD(v19) = v6;
        v7 = " [%s] %s:%d Update client[%p]. Current manager state=%d";
        v8 = v4;
        v9 = 44;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, v17, v9);
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
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v13 = *(a1 + 40);
        v14 = *(v12 + 184);
        *v17 = 136316674;
        *&v17[4] = v10;
        *&v17[12] = 2080;
        *&v17[14] = "[VCAudioManager updateClient:settings:]_block_invoke";
        *&v17[22] = 1024;
        LODWORD(v18) = 2460;
        WORD2(v18) = 2112;
        *(&v18 + 6) = v2;
        HIWORD(v18) = 2048;
        v19 = v12;
        LOWORD(v20) = 2048;
        *(&v20 + 2) = v13;
        WORD5(v20) = 1024;
        HIDWORD(v20) = v14;
        v7 = " [%s] %s:%d %@(%p) Update client[%p]. Current manager state=%d";
        v8 = v11;
        v9 = 64;
        goto LABEL_11;
      }
    }
  }

  v15 = [*(*(a1 + 32) + 216) containsObject:{*(a1 + 40), *v17, *&v17[16], v18, v19, v20}];
  [*(a1 + 32) updateDirectionWithClient:*(a1 + 40) settings:a1 + 48 isClientRegistered:v15];
  [*(a1 + 32) updateSpatialAudioWithClient:*(a1 + 40) settings:a1 + 48 isClientRegistered:v15];
  return [*(a1 + 32) updateVoiceProcessingWithClient:*(a1 + 40) settings:a1 + 48 isClientRegistered:v15];
}

- (void)refreshInputMetering
{
  v3[5] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__VCAudioManager_refreshInputMetering__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(dispatchQueue, v3);
}

- (void)refreshOutputMetering
{
  v3[5] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__VCAudioManager_refreshOutputMetering__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(dispatchQueue, v3);
}

- (void)refreshRemoteCodecType:(unsigned int)a3 sampleRate:(double)a4
{
  v7 = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__VCAudioManager_refreshRemoteCodecType_sampleRate___block_invoke;
  v5[3] = &unk_1E85F3908;
  v5[4] = self;
  *&v5[5] = a4;
  v6 = a3;
  dispatch_async(dispatchQueue, v5);
}

uint64_t __52__VCAudioManager_refreshRemoteCodecType_sampleRate___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 200) audioUnitType];
  if (result == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 184);
    if (v4 == 3 || v4 == 2 && *(v3 + 255) == 1)
    {
      [*(v3 + 200) setRemoteCodecSampleRate:*(a1 + 40)];
      [*(*(a1 + 32) + 200) setRemoteCodecType:*(a1 + 48)];
      v5 = *(*(a1 + 32) + 168);
      v6 = *(a1 + 48);
      v7 = *(a1 + 40);

      return AUIOSetRemoteCodecInfo(v7, v5, v6);
    }
  }

  return result;
}

- (BOOL)startAudioSessionWithProperties:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  [(VCAudioManager *)self setCurrentAudioSessionMediaProperties:?];
  if (![(VCAudioSessionMediaProperties *)self->_currentAudioSessionMediaProperties isSessionActive])
  {
    return 1;
  }

  v15 = 0;
  if (self->_playbackMode == 1)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_15;
      }

      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 136315650;
      v19 = v7;
      v20 = 2080;
      v21 = "[VCAudioManager startAudioSessionWithProperties:]";
      v22 = 1024;
      v23 = 2505;
      v9 = " [%s] %s:%d Setting kCMSessionProperty_IsExpanseCallSession";
      v10 = v8;
      v11 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCAudioManager *)self performSelector:sel_logPrefix];
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

      *buf = 136316162;
      v19 = v12;
      v20 = 2080;
      v21 = "[VCAudioManager startAudioSessionWithProperties:]";
      v22 = 1024;
      v23 = 2505;
      v24 = 2112;
      v25 = v5;
      v26 = 2048;
      v27 = self;
      v9 = " [%s] %s:%d %@(%p) Setting kCMSessionProperty_IsExpanseCallSession";
      v10 = v13;
      v11 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_15:
    v14 = +[VCAudioSession sharedVoiceChatInstance];
    v16 = *MEMORY[0x1E69B0068];
    v17 = MEMORY[0x1E695E118];
    [v14 updateAudioSessionPropertiesWithProperties:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v17, &v16, 1)}];
  }

  return [(VCAudioSession *)self->_audioSession startClient:self clientType:1 mediaProperties:a3 sessionRef:&v15];
}

- (BOOL)resetAudioSessionWithProperties:(id)a3 interruptSuccessful:(BOOL *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (a3)
        {
          [a3 outputFormat];
          v10 = v22;
        }

        else
        {
          v10 = 0;
        }

        *buf = 136315906;
        v24 = v8;
        v25 = 2080;
        v26 = "[VCAudioManager resetAudioSessionWithProperties:interruptSuccessful:]";
        v27 = 1024;
        v28 = 2518;
        v29 = 1024;
        LODWORD(v30) = v10;
        v14 = " [%s] %s:%d sampleRate=%d";
        v15 = v9;
        v16 = 34;
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCAudioManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (a3)
        {
          [a3 outputFormat];
          v13 = *&v19;
        }

        else
        {
          v13 = 0;
          v21 = 0;
          v19 = 0u;
          v20 = 0u;
        }

        *buf = 136316418;
        v24 = v11;
        v25 = 2080;
        v26 = "[VCAudioManager resetAudioSessionWithProperties:interruptSuccessful:]";
        v27 = 1024;
        v28 = 2518;
        v29 = 2112;
        v30 = v7;
        v31 = 2048;
        v32 = self;
        v33 = 1024;
        v34 = v13;
        v14 = " [%s] %s:%d %@(%p) sampleRate=%d";
        v15 = v12;
        v16 = 54;
LABEL_17:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      }
    }
  }

  if ([a3 isSessionActive] && !-[VCAudioSession resetClient:mediaSetting:interruptSuccessful:](self->_audioSession, "resetClient:mediaSetting:interruptSuccessful:", self, a3, a4))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v17 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v17)
      {
        return v17;
      }

      [VCAudioManager resetAudioSessionWithProperties:interruptSuccessful:];
    }

    LOBYTE(v17) = 0;
  }

  else
  {
    [(VCAudioManager *)self setCurrentAudioSessionMediaProperties:a3];
    LOBYTE(v17) = 1;
  }

  return v17;
}

- (void)stopAudioSession
{
  if ([(VCAudioSessionMediaProperties *)self->_currentAudioSessionMediaProperties isSessionActive])
  {
    [(VCAudioSession *)self->_audioSession stopClient:self];
  }

  [(VCAudioManager *)self setCurrentAudioSessionMediaProperties:0];
}

- (BOOL)setupInterruptThread
{
  v3 = objc_alloc_init(VCAudioRelay);
  self->_interruptThread = v3;
  if (v3)
  {
    v4 = objc_alloc_init(VCAudioRelayIO);
    self->_interruptThreadClient = v4;
    if (self->_interruptThread)
    {
      [(VCAudioRelayIO *)v4 setMicCallback:VCAudioManager_PushAudioSamples];
      [(VCAudioRelayIO *)self->_interruptThreadClient setMicCallbackContext:&self->_sinkData];
      [(VCAudioRelayIO *)self->_interruptThreadClient setSpeakerCallback:VCAudioManager_PullAudioSamples];
      [(VCAudioRelayIO *)self->_interruptThreadClient setSpeakerCallbackContext:&self->_sourceData];
      if ([(VCAudioRelay *)self->_interruptThread setClientIO:self->_interruptThreadClient withError:0])
      {
        return 1;
      }
    }

    else
    {
      [(VCAudioManager *)self setupInterruptThread];
    }
  }

  else
  {
    [(VCAudioManager *)self setupInterruptThread];
  }

  [(VCAudioManager *)self cleanupInterruptThread];
  return 0;
}

- (void)cleanupInterruptThread
{
  self->_interruptThreadClient = 0;

  self->_interruptThread = 0;
}

- (void)startInterruptThread
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)stopInterruptThread
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_interruptThreadState != 1)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_13;
      }

      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *v11 = 136315650;
      *&v11[4] = v4;
      *&v11[12] = 2080;
      *&v11[14] = "[VCAudioManager stopInterruptThread]";
      *&v11[22] = 1024;
      LODWORD(v12) = 2603;
      v6 = " [%s] %s:%d Stop the interrupt thread";
      v7 = v5;
      v8 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [(VCAudioManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_13;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *v11 = 136316162;
      *&v11[4] = v9;
      *&v11[12] = 2080;
      *&v11[14] = "[VCAudioManager stopInterruptThread]";
      *&v11[22] = 1024;
      LODWORD(v12) = 2603;
      WORD2(v12) = 2112;
      *(&v12 + 6) = v3;
      HIWORD(v12) = 2048;
      v13 = self;
      v6 = " [%s] %s:%d %@(%p) Stop the interrupt thread";
      v7 = v10;
      v8 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v11, v8);
LABEL_13:
    [(VCAudioRelay *)self->_interruptThread stopClientIO:*v11];
    self->_interruptThreadState = 1;
  }
}

- (void)didSessionStop
{
  v4[5] = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_interruptingMutex);
  self->_isInterrupting = 1;
  _VCAudioManager_ProcessEventQueue(&self->_sinkData);
  _VCAudioManager_ProcessEventQueue(&self->_sourceData);
  pthread_mutex_unlock(&self->_interruptingMutex);
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__VCAudioManager_didSessionStop__block_invoke;
  v4[3] = &unk_1E85F3778;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

void __32__VCAudioManager_didSessionStop__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 136315650;
        *&v20[4] = v3;
        *&v20[12] = 2080;
        *&v20[14] = "[VCAudioManager didSessionStop]_block_invoke";
        *&v20[22] = 1024;
        LODWORD(v21) = 2620;
        v5 = " [%s] %s:%d CMSession interrupt begin";
        v6 = v4;
        v7 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v5, v20, v7);
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
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        *v20 = 136316162;
        *&v20[4] = v8;
        *&v20[12] = 2080;
        *&v20[14] = "[VCAudioManager didSessionStop]_block_invoke";
        *&v20[22] = 1024;
        LODWORD(v21) = 2620;
        WORD2(v21) = 2112;
        *(&v21 + 6) = v2;
        HIWORD(v21) = 2048;
        v22 = v10;
        v5 = " [%s] %s:%d %@(%p) CMSession interrupt begin";
        v6 = v9;
        v7 = 48;
        goto LABEL_11;
      }
    }
  }

  *(*(a1 + 32) + 255) = 1;
  [*(a1 + 32) updateStateWithAudioIOClient:{0, *v20, *&v20[16], v21, v22}];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 136315650;
        *&v20[4] = v12;
        *&v20[12] = 2080;
        *&v20[14] = "[VCAudioManager didSessionStop]_block_invoke";
        *&v20[22] = 1024;
        LODWORD(v21) = 2624;
        v14 = " [%s] %s:%d CMSession interrupt begin, audio manager is now paused";
        v15 = v13;
        v16 = 28;
LABEL_22:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, v20, v16);
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

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 32);
        *v20 = 136316162;
        *&v20[4] = v17;
        *&v20[12] = 2080;
        *&v20[14] = "[VCAudioManager didSessionStop]_block_invoke";
        *&v20[22] = 1024;
        LODWORD(v21) = 2624;
        WORD2(v21) = 2112;
        *(&v21 + 6) = v11;
        HIWORD(v21) = 2048;
        v22 = v19;
        v14 = " [%s] %s:%d %@(%p) CMSession interrupt begin, audio manager is now paused";
        v15 = v18;
        v16 = 48;
        goto LABEL_22;
      }
    }
  }
}

- (void)didSessionEnd
{
  v3[5] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __31__VCAudioManager_didSessionEnd__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(dispatchQueue, v3);
}

void __31__VCAudioManager_didSessionEnd__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 136315650;
        *&v20[4] = v3;
        *&v20[12] = 2080;
        *&v20[14] = "[VCAudioManager didSessionEnd]_block_invoke";
        *&v20[22] = 1024;
        LODWORD(v21) = 2630;
        v5 = " [%s] %s:%d CMSession interrupt end";
        v6 = v4;
        v7 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v5, v20, v7);
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
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        *v20 = 136316162;
        *&v20[4] = v8;
        *&v20[12] = 2080;
        *&v20[14] = "[VCAudioManager didSessionEnd]_block_invoke";
        *&v20[22] = 1024;
        LODWORD(v21) = 2630;
        WORD2(v21) = 2112;
        *(&v21 + 6) = v2;
        HIWORD(v21) = 2048;
        v22 = v10;
        v5 = " [%s] %s:%d %@(%p) CMSession interrupt end";
        v6 = v9;
        v7 = 48;
        goto LABEL_11;
      }
    }
  }

  *(*(a1 + 32) + 255) = 0;
  [*(a1 + 32) resetAudioSessionWithProperties:objc_msgSend(*(a1 + 32) interruptSuccessful:{"currentAudioSessionMediaProperties", *v20, *&v20[16], v21, v22), 0}];
  [*(a1 + 32) updateStateWithAudioIOClient:0];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 136315650;
        *&v20[4] = v12;
        *&v20[12] = 2080;
        *&v20[14] = "[VCAudioManager didSessionEnd]_block_invoke";
        *&v20[22] = 1024;
        LODWORD(v21) = 2634;
        v14 = " [%s] %s:%d CMSession interrupt end, audio manager resume completed";
        v15 = v13;
        v16 = 28;
LABEL_22:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, v20, v16);
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

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 32);
        *v20 = 136316162;
        *&v20[4] = v17;
        *&v20[12] = 2080;
        *&v20[14] = "[VCAudioManager didSessionEnd]_block_invoke";
        *&v20[22] = 1024;
        LODWORD(v21) = 2634;
        WORD2(v21) = 2112;
        *(&v21 + 6) = v11;
        HIWORD(v21) = 2048;
        v22 = v19;
        v14 = " [%s] %s:%d %@(%p) CMSession interrupt end, audio manager resume completed";
        v15 = v18;
        v16 = 48;
        goto LABEL_22;
      }
    }
  }
}

- (void)serverDidDie
{
  v3[5] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __30__VCAudioManager_serverDidDie__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(dispatchQueue, v3);
}

uint64_t __30__VCAudioManager_serverDidDie__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(*(a1 + 32) + 216);
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

        [objc_msgSend(*(*(&v7 + 1) + 8 * v5++) "delegate")];
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v7 objects:v6 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

- (void)didUpdateBasebandCodec:(const _VCRemoteCodecInfo *)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioManager didUpdateBasebandCodec:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [(VCAudioManager *)self performSelector:sel_logPrefix];
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
        v7 = 136316162;
        v8 = v5;
        v9 = 2080;
        v10 = "[VCAudioManager didUpdateBasebandCodec:]";
        v11 = 1024;
        v12 = 2662;
        v13 = 2112;
        v14 = v4;
        v15 = 2048;
        v16 = self;
        _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unexpected SPI call", &v7, 0x30u);
      }
    }
  }
}

- (int)setVolume:(float)a3 withRampTime:(float)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__VCAudioManager_setVolume_withRampTime___block_invoke;
  v7[3] = &unk_1E85F3930;
  v7[4] = self;
  v7[5] = &v10;
  v8 = a3;
  v9 = a4;
  dispatch_sync(dispatchQueue, v7);
  v5 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t __41__VCAudioManager_setVolume_withRampTime___block_invoke(uint64_t a1)
{
  result = AUIOSetDynamicDuckerVolume();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __70__VCAudioManager_setSpatialMetadata_audioSessionId_completionHandler___block_invoke()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v2 = [*(*(v0 + 32) + 928) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(v0 + 56))}];
  if (v2)
  {
    v3 = v2;
    [v2 setSpatialMetadata:*(v1 + 48)];
    v4 = *(v1 + 32);
    if (v4[118] == v3)
    {
      [v4 applySpatialMetadata:*(v1 + 48)];
    }

    goto LABEL_4;
  }

  if (objc_opt_class() == *(v1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_4;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_4;
    }

    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_24();
    v11 = 34;
LABEL_16:
    _os_log_error_impl(v6, v7, v8, v9, v10, v11);
    goto LABEL_4;
  }

  if (objc_opt_respondsToSelector())
  {
    [*(v1 + 32) performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_17_0();
      v11 = 54;
      goto LABEL_16;
    }
  }

LABEL_4:
  (*(*(v1 + 40) + 16))();
  v5 = *(v1 + 48);
  if (v5)
  {
    CFRelease(v5);
  }

  OUTLINED_FUNCTION_39_0();
}

- (void)applySessionContextToAudioUnitProperties:(id)a3 preferredClient:(id)a4
{
  OUTLINED_FUNCTION_40_0();
  v7 = v4;
  if (*(v4 + 904) == 1)
  {
    if (objc_opt_class() == v4)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_16;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_35())
      {
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_24_0();
      v20 = OS_LOG_TYPE_DEFAULT;
      v21 = 34;
    }

    else
    {
      if (OUTLINED_FUNCTION_28_0())
      {
        [OUTLINED_FUNCTION_18_0() performSelector:?];
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_16;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_35_0();
    }

    _os_log_impl(v16, v17, v20, v18, v19, v21);
LABEL_16:
    OUTLINED_FUNCTION_39_0();
    return;
  }

  v8 = v5;
  v9 = [v6 audioSessionId];
  v10 = [*(v7 + 928) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v9)}];
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v10;
  v12 = [v10 maxChannelCountMic];
  *([v8 frameFormatMic] + 28) = v12;
  v13 = [v11 maxChannelCountSpeaker];
  *([v8 frameFormatSpeaker] + 28) = v13;
  [v8 setSpatialContext:v11];
  OUTLINED_FUNCTION_39_0();

  [v14 setVpEnableSpatialChat:?];
}

- (void)updateDirectionWithClient:(id)a3 settings:(const tagVCAudioIOControllerClientSettings *)a4 isClientRegistered:(BOOL)a5
{
  v5 = a5;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v9 = [a3 direction];
  var0 = a4->var0;
  if (v9 == var0)
  {
    return;
  }

  v11 = v9;
  [a3 setDirection:var0];
  if (!v5 || self->_state == 1)
  {
    return;
  }

  if ((var0 ^ v11))
  {
    v12 = [a3 sourceIO];
    p_sourceData = &self->_sourceData;
    if (var0)
    {
      [(VCAudioManager *)self registerClientIO:v12 controllerIO:p_sourceData];
      if (((var0 ^ v11) & 2) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

    [(VCAudioManager *)self unregisterClientIO:v12 controllerIO:p_sourceData];
  }

  if (((var0 ^ v11) & 2) == 0)
  {
    return;
  }

LABEL_10:
  v14 = [a3 sinkIO];
  p_sinkData = &self->_sinkData;
  if ((var0 & 2) != 0)
  {

    [(VCAudioManager *)self registerClientIO:v14 controllerIO:p_sinkData];
  }

  else
  {

    [(VCAudioManager *)self unregisterClientIO:v14 controllerIO:p_sinkData];
  }
}

- (void)updateSpatialAudioWithClient:(id)a3 settings:(const tagVCAudioIOControllerClientSettings *)a4 isClientRegistered:(BOOL)a5
{
  v5 = a5;
  v39 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [a3 setSpatialAudioDisabled:a4->var1];
  if (!v5 || self->_spatialAudioDisabled == [a3 spatialAudioDisabled])
  {
    return;
  }

  self->_spatialAudioDisabled = [a3 spatialAudioDisabled];
  v9 = [OUTLINED_FUNCTION_18_0() updateStateWithAudioIOClient:?];
  v10 = objc_opt_class();
  if ((v9 & 1) == 0)
  {
    if (v10 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return;
      }

      VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (!OUTLINED_FUNCTION_34())
      {
        return;
      }

      OUTLINED_FUNCTION_1_0();
      v32 = v20;
      OUTLINED_FUNCTION_6();
      v33 = 2422;
      v34 = 2048;
      v35 = a3;
      v21 = &dword_1DB56E000;
      v22 = " [%s] %s:%d controller update FAILED (audioIO=%p)";
      v23 = &v30;
      v24 = v19;
      v25 = OS_LOG_TYPE_ERROR;
      v26 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [(VCAudioManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v11 = &stru_1F570E008;
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
      v32 = v28;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      v35 = v11;
      OUTLINED_FUNCTION_19_0();
      v36 = self;
      v37 = v29;
      v38 = a3;
      OUTLINED_FUNCTION_17_0();
      v26 = 58;
    }

    _os_log_error_impl(v21, v24, v25, v22, v23, v26);
    return;
  }

  if (v10 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_35())
      {
        v30 = 136315906;
        v31 = v12;
        OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_22();
        OUTLINED_FUNCTION_24_0();
        v17 = OS_LOG_TYPE_DEFAULT;
        v18 = 34;
LABEL_19:
        _os_log_impl(v13, v14, v17, v15, v16, v18);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_28_0())
    {
      [OUTLINED_FUNCTION_18_0() performSelector:?];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v30 = 136316418;
        v31 = v27;
        OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_25_0();
        OUTLINED_FUNCTION_35_0();
        goto LABEL_19;
      }
    }
  }
}

- (void)updateVoiceProcessingWithClient:(id)a3 settings:(const tagVCAudioIOControllerClientSettings *)a4 isClientRegistered:(BOOL)a5
{
  v5 = a5;
  v31 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  var2 = a4->var2;
  v10 = [a3 isVoiceActivityEnabled];
  var3 = a4->var3;
  v12 = [a3 isMediaPriorityEnabled];
  if (var2 != v10 || var3 != v12)
  {
    [a3 setIsVoiceActivityEnabled:a4->var2];
    [a3 setIsMediaPriorityEnabled:a4->var3];
    if (v5)
    {
      pthread_mutex_lock(&self->_interruptingMutex);
      if (![(VCAudioManager *)self audioCallbacksRunning])
      {
        goto LABEL_18;
      }

      v24 = VCAudioIOControllerIOState_NewAudioEvent(2, 0);
      if (!CMSimpleQueueEnqueue(self->_sinkData.eventQueue, v24))
      {
        goto LABEL_18;
      }

      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_17;
        }

        v15 = VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_28())
        {
          goto LABEL_17;
        }

        *buf = 136315650;
        v26 = v15;
        OUTLINED_FUNCTION_30_0();
        OUTLINED_FUNCTION_16_0();
      }

      else
      {
        if (OUTLINED_FUNCTION_28_0())
        {
          v14 = [OUTLINED_FUNCTION_18_0() performSelector:?];
        }

        else
        {
          v14 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_17;
        }

        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x1E6986650];
        if (!OUTLINED_FUNCTION_40())
        {
          goto LABEL_17;
        }

        *buf = 136316162;
        v26 = v22;
        OUTLINED_FUNCTION_30_0();
        v27 = 2112;
        v28 = v14;
        v29 = 2048;
        v30 = self;
        v16 = &dword_1DB56E000;
        v19 = " [%s] %s:%d %@(%p) CMSimpleQueueEnqueue Full";
        v20 = buf;
        v17 = v23;
        v18 = OS_LOG_TYPE_ERROR;
        v21 = 48;
      }

      _os_log_error_impl(v16, v17, v18, v19, v20, v21);
LABEL_17:
      VCAudioIOControllerIOState_ReleaseAudioEvent(&v24, 1);
LABEL_18:
      pthread_mutex_unlock(&self->_interruptingMutex);
    }
  }
}

- (void)initWithAudioSessionMode:(uint64_t)a1 .cold.1(uint64_t a1)
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

- (void)initWithAudioSessionMode:(uint64_t)a1 .cold.2(uint64_t a1)
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

- (void)initWithAudioSessionMode:.cold.3()
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

- (void)initWithAudioSessionMode:(uint64_t)a1 .cold.4(uint64_t a1)
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

- (void)initWithAudioSessionMode:(uint64_t)a1 .cold.5(uint64_t a1)
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

- (void)initWithAudioSessionMode:(uint64_t)a1 .cold.6(uint64_t a1)
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

- (void)initWithAudioSessionMode:(uint64_t)a1 .cold.7(uint64_t a1)
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

- (void)initWithAudioSessionMode:(uint64_t)a1 .cold.8(uint64_t a1)
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

- (void)initWithAudioSessionMode:(uint64_t)a1 .cold.9(uint64_t a1)
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

- (void)initWithAudioSessionMode:(uint64_t)a1 .cold.10(uint64_t a1)
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

- (void)initWithAudioSessionMode:(uint64_t)a1 .cold.11(uint64_t a1)
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

- (void)initWithAudioSessionMode:(uint64_t)a1 .cold.12(uint64_t a1)
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

- (void)getAudioSessionMediaProperties:forVPOperatingMode:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)getAudioSessionMediaProperties:forVPOperatingMode:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)getAudioSessionMediaProperties:forVPOperatingMode:.cold.3()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  if (objc_opt_class() == v2)
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
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_17_0();
      v8 = 48;
      goto LABEL_11;
    }
  }

LABEL_9:
  *v1 = -2145714154;
  OUTLINED_FUNCTION_39_0();
}

- (void)startAUIOWithProperties:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)startAUIOWithProperties:(_BYTE *)a3 .cold.2(int a1, _DWORD *a2, _BYTE *a3)
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
      _os_log_error_impl(v6, v7, v8, v9, v10, 0x22u);
    }
  }

  *a3 = 0;
  *a2 = a1;
}

- (void)startAUIOWithProperties:(_BYTE *)a3 .cold.3(int a1, _DWORD *a2, _BYTE *a3)
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
      _os_log_error_impl(v6, v7, v8, v9, v10, 0x22u);
    }
  }

  *a3 = 0;
  *a2 = a1;
}

- (void)startAUIOWithProperties:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)startAUIOWithProperties:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)resetAUIOWithProperties:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
    }
  }

  *v0 = v1;
}

- (void)resetAUIOWithProperties:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
    }
  }

  *v0 = v1;
}

- (void)registerClientIO:controllerIO:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)unregisterClientIO:controllerIO:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)registerForMutedTalkerNotification:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __53__VCAudioManager_registerForMutedTalkerNotification___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __55__VCAudioManager_unregisterFromMutedTalkerNotification__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)registerAudioSessionId:maxChannelCountMic:maxChannelCountSpeaker:spatialMetadata:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __99__VCAudioManager_registerAudioSessionId_maxChannelCountMic_maxChannelCountSpeaker_spatialMetadata___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __43__VCAudioManager_unregisterAudioSessionId___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)applySpatialMetadata:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_40_0();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  v29 = v28;
  a16 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == v28)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_35())
      {
        OUTLINED_FUNCTION_1_0();
        a11 = v31;
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_21();
        *(&a13 + 6) = v27;
        OUTLINED_FUNCTION_24_0();
        v36 = 34;
LABEL_11:
        _os_log_impl(v32, v33, OS_LOG_TYPE_DEFAULT, v34, v35, v36);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_38_0())
    {
      v30 = OUTLINED_FUNCTION_37_0();
    }

    else
    {
      v30 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_8();
        a11 = v38;
        OUTLINED_FUNCTION_6();
        LODWORD(a13) = 1824;
        WORD2(a13) = 2112;
        *(&a13 + 6) = v30;
        HIWORD(a13) = 2048;
        a14 = v29;
        LOWORD(a15) = v39;
        *(&a15 + 2) = v27;
        v32 = &dword_1DB56E000;
        v34 = " [%s] %s:%d %@(%p) Failed to retrieve the metadata buffer. osStatus=%d";
        v35 = &a9;
        v33 = v37;
        v36 = 54;
        goto LABEL_11;
      }
    }
  }

  OUTLINED_FUNCTION_39_0();
}

- (void)setupVAD
{
  OUTLINED_FUNCTION_40_0();
  a22 = v23;
  a23 = v24;
  v26 = v25;
  v28 = v27;
  a15 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == v27)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_35())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        LODWORD(a12) = 1879;
        OUTLINED_FUNCTION_24_0();
        v34 = 28;
LABEL_11:
        _os_log_impl(v30, v31, OS_LOG_TYPE_DEFAULT, v32, v33, v34);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_38_0())
    {
      v29 = OUTLINED_FUNCTION_37_0();
    }

    else
    {
      v29 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      v35 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_29();
        *(&a12 + 6) = v29;
        OUTLINED_FUNCTION_19_0();
        a13 = v28;
        v30 = &dword_1DB56E000;
        v32 = " [%s] %s:%d %@(%p) Failed to create the VAD";
        v33 = &a9;
        v31 = v35;
        v34 = 48;
        goto LABEL_11;
      }
    }
  }

  *v26 = 0;
  OUTLINED_FUNCTION_39_0();
}

- (void)stateRunningWithAudioUnitProperties:sessionProperties:client:newState:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)stateRunningWithAudioUnitProperties:sessionProperties:client:newState:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)stateRunningWithAudioUnitProperties:sessionProperties:client:newState:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)stateRunningWithAudioUnitProperties:sessionProperties:client:newState:.cold.4()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)stateRunningWithAudioUnitProperties:sessionProperties:client:newState:.cold.5()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)stateRunningWithAudioUnitProperties:sessionProperties:client:newState:.cold.6()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)startClient:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __30__VCAudioManager_startClient___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __30__VCAudioManager_startClient___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __30__VCAudioManager_startClient___block_invoke_cold_3(uint64_t a1, id *a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  [*a2 deviceRole];
  OUTLINED_FUNCTION_11();
  v7 = v4;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  v8 = v5;
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid device role: %d!", v6, 0x22u);
}

- (void)stopClient:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __29__VCAudioManager_stopClient___block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  _os_log_fault_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_FAULT, " [%s] %s:%d controller stop client FAILED (audioIO=%p)", v1, 0x26u);
}

void __29__VCAudioManager_stopClient___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)updateClient:(uint64_t)a1 settings:.cold.1(uint64_t a1)
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

- (void)updateClient:(uint64_t)a1 settings:.cold.2(uint64_t a1)
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

- (void)resetAudioSessionWithProperties:interruptSuccessful:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupInterruptThread
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

- (void)didUpdateBasebandCodec:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

@end