@interface VCAudioSession
+ (BOOL)convertAudioSessionProperties:(id)a3 operatingMode:(int *)a4 deviceRole:(int *)a5 enableAudioPreWarming:(BOOL *)a6 audioClockDeviceEnabled:(BOOL *)a7 networkUplinkClockUsesBaseband:(BOOL *)a8;
+ (BOOL)shouldUseHomeKitConfigurationForAudioMode:(id)a3;
+ (id)sharedSystemAudioInputInstance;
+ (id)sharedSystemAudioOutputInstance;
+ (id)sharedVoiceChatInstance;
+ (id)stringForPlaybackMode:(int)a3;
+ (id)stringFromFormat:(const AudioStreamBasicDescription *)a3;
- (BOOL)applyAudioSessionMediaProperties:(id)a3;
- (BOOL)didRequestArrayPropertyChange:(id)a3;
- (BOOL)didRequestBoolPropertyChange:(id)a3;
- (BOOL)didRequestDataPropertyChange:(id)a3;
- (BOOL)didRequestDictionaryPropertyChange:(id)a3;
- (BOOL)didRequestStringPropertyChange:(id)a3;
- (BOOL)didRequestedPropertyChange:(id)a3 propertyClass:(Class)a4 compareSelector:(SEL)a5;
- (BOOL)forceBufferFrames:(int *)a3;
- (BOOL)isAnswerOnHoldUpdateParameters:(id)a3;
- (BOOL)resetClient:(id)a3 mediaSetting:(id)a4 interruptSuccessful:(BOOL *)a5;
- (BOOL)shouldResetAudioSession;
- (BOOL)startClient:(id)a3 clientType:(unsigned __int8)a4 mediaProperties:(id)a5 sessionRef:(unsigned int *)a6;
- (BOOL)stopClient:(id)a3;
- (BOOL)validNewStartingClient:(id)a3;
- (NSDictionary)audioSessionProperties;
- (VCAudioSession)initWithMode:(int)a3;
- (void)addPropertyToBatchedDictionary:(id)a3 property:(id)a4 defaultValue:(id)a5 propertyOrderArray:(id)a6;
- (void)applyAudioModeWithDefaultValue:(void *)a3 shouldApplyRequestedProperty:(BOOL)a4;
- (void)applyAudioSessionPropertiesWithVPOperatingMode:(unsigned int)a3;
- (void)applyDynamicSessionProperties;
- (void)cleanupMicSources;
- (void)dealloc;
- (void)didAvailableSampleRateChange;
- (void)didInterruptionEnded;
- (void)didPause;
- (void)didResume;
- (void)didStop;
- (void)dispatchedRefreshAudioSessionProperties;
- (void)dispatchedSetAudioSessionProperties:(id)a3;
- (void)dispatchedSetAudioToolboxProperties:(id)a3;
- (void)refreshAudioSessionProperties;
- (void)resumeActiveClient;
- (void)selectMicrophoneWithType:(unsigned int)a3;
- (void)selectNewActiveClient;
- (void)serverDidDie;
- (void)setAudioSessionMode:(id)a3;
- (void)setAudioSessionProperties:(id)a3;
- (void)setBlockSizeOnSampleRateChange;
- (void)setUpVPBlockFormatWithProperties:(id)a3;
- (void)updateAudioSessionPropertiesWithProperties:(id)a3;
@end

@implementation VCAudioSession

+ (id)sharedVoiceChatInstance
{
  if (sharedVoiceChatInstance_onceToken_0 != -1)
  {
    +[VCAudioSession sharedVoiceChatInstance];
  }

  return sharedVoiceChatInstance__VCAudioSessionVoiceChat;
}

void __41__VCAudioSession_sharedVoiceChatInstance__block_invoke()
{
  if (!sharedVoiceChatInstance__VCAudioSessionVoiceChat)
  {
    v0 = VCFeatureFlagManager_UseAvconferencedOniOSSpecficFeatures();
    v1 = off_1E85F1F28;
    if (!v0)
    {
      v1 = off_1E85F1F30;
    }

    sharedVoiceChatInstance__VCAudioSessionVoiceChat = [objc_alloc(*v1) initWithMode:0];
  }
}

+ (id)sharedSystemAudioOutputInstance
{
  if (sharedSystemAudioOutputInstance_onceToken_0 != -1)
  {
    +[VCAudioSession sharedSystemAudioOutputInstance];
  }

  return sharedSystemAudioOutputInstance__VCAudioSessionSystemAudioOutput;
}

uint64_t __49__VCAudioSession_sharedSystemAudioOutputInstance__block_invoke()
{
  v0 = VCFeatureFlagManager_UseAvconferencedOniOSSpecficFeatures();
  v1 = off_1E85F1F28;
  if (!v0)
  {
    v1 = off_1E85F1F30;
  }

  result = [objc_alloc(*v1) initWithMode:1];
  sharedSystemAudioOutputInstance__VCAudioSessionSystemAudioOutput = result;
  return result;
}

+ (id)sharedSystemAudioInputInstance
{
  if (sharedSystemAudioInputInstance_onceToken_0 != -1)
  {
    +[VCAudioSession sharedSystemAudioInputInstance];
  }

  return sharedSystemAudioInputInstance__VCAudioSessionSystemAudioInput;
}

uint64_t __48__VCAudioSession_sharedSystemAudioInputInstance__block_invoke()
{
  v0 = VCFeatureFlagManager_UseAvconferencedOniOSSpecficFeatures();
  v1 = off_1E85F1F28;
  if (!v0)
  {
    v1 = off_1E85F1F30;
  }

  result = [objc_alloc(*v1) initWithMode:2];
  sharedSystemAudioInputInstance__VCAudioSessionSystemAudioInput = result;
  return result;
}

- (VCAudioSession)initWithMode:(int)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = VCAudioSession;
  v4 = [(VCObject *)&v17 init];
  v5 = v4;
  if (v4)
  {
    v4->_playbackMode = a3;
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(62);
    v5->_dispatchQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.cmSessionQueue", 0, CustomRootQueue);
    v5->_clients = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5->_isTetheredDisplayMode = CFPreferencesGetAppBooleanValue(@"EnableTetheredDisplayPortMode", *MEMORY[0x1E695E890], 0) != 0;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v8 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        isTetheredDisplayMode = v5->_isTetheredDisplayMode;
        *buf = 136315906;
        v19 = v9;
        v20 = 2080;
        v21 = "[VCAudioSession initWithMode:]";
        v22 = 1024;
        v23 = 134;
        v24 = 1024;
        v25 = isTetheredDisplayMode;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d isTetheredDisplayMode[%d]", buf, 0x22u);
      }
    }

    v5->_currentClientPid = 0x7FFFFFFF;
    v5->_currentAudioSessionProperties = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5->_useOptimizedHandoversForTelephony = +[VCHardwareSettings supportsOptimizedHandoversForTelephony];
    v5->_deferredNetworkUplinkClockEnabled = [VCDefaults BOOLeanValueForKey:@"enableDeferredNetworkUplinkClockUpdate" defaultValue:1];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        useOptimizedHandoversForTelephony = v5->_useOptimizedHandoversForTelephony;
        deferredNetworkUplinkClockEnabled = v5->_deferredNetworkUplinkClockEnabled;
        *buf = 136316162;
        v19 = v12;
        v20 = 2080;
        v21 = "[VCAudioSession initWithMode:]";
        v22 = 1024;
        v23 = 139;
        v24 = 1024;
        v25 = useOptimizedHandoversForTelephony;
        v26 = 1024;
        v27 = deferredNetworkUplinkClockEnabled;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d useOptimizedHandoversForTelephony=%d deferredNetworkUplinkClockEnabled=%d", buf, 0x28u);
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  dispatch_release(self->_dispatchQueue);
  v3.receiver = self;
  v3.super_class = VCAudioSession;
  [(VCObject *)&v3 dealloc];
}

- (BOOL)isAnswerOnHoldUpdateParameters:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:*MEMORY[0x1E69AFDF8]];
  if (v4)
  {
    LODWORD(v4) = [v4 BOOLValue];
    if (v4)
    {
      if ([a3 objectForKeyedSubscript:*MEMORY[0x1E69AFCC0]])
      {
        LOBYTE(v4) = 0;
      }

      else
      {
        LOBYTE(v4) = [a3 objectForKeyedSubscript:*MEMORY[0x1E69AFCE8]] == 0;
      }
    }
  }

  return v4;
}

- (NSDictionary)audioSessionProperties
{
  v27 = *MEMORY[0x1E69E9840];
  requestedAudioSessionProperties = self->_requestedAudioSessionProperties;
  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"simulateAppleCalling", 0);
  v4 = MEMORY[0x1E69AFDB0];
  v5 = MEMORY[0x1E69AFCC0];
  v6 = MEMORY[0x1E69AF6F8];
  v7 = MEMORY[0x1E69AFCE8];
  if (BoolValueForKey)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v22 = v8;
        v23 = 2080;
        v24 = "[VCAudioSession audioSessionProperties]";
        v25 = 1024;
        v26 = 183;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Forcing apple calling", buf, 0x1Cu);
      }
    }

    v10 = *v5;
    v19[0] = *v4;
    v19[1] = v10;
    v11 = *v6;
    v20[0] = &unk_1F5799A68;
    v20[1] = v11;
    v19[2] = *v7;
    v20[2] = *MEMORY[0x1E69AF988];
    requestedAudioSessionProperties = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
  }

  if (VCDefaults_GetBoolValueForKey(@"forceIbisMode", 0))
  {
    v12 = *v5;
    v17[0] = *v4;
    v17[1] = v12;
    v13 = *v6;
    v18[0] = &unk_1F5799A68;
    v18[1] = v13;
    v17[2] = *v7;
    v18[2] = *MEMORY[0x1E69AF868];
    requestedAudioSessionProperties = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v22 = v14;
        v23 = 2080;
        v24 = "[VCAudioSession audioSessionProperties]";
        v25 = 1024;
        v26 = 194;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Forcing Ibis mode", buf, 0x1Cu);
      }
    }
  }

  return &requestedAudioSessionProperties->super;
}

- (void)setAudioSessionProperties:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__VCAudioSession_setAudioSessionProperties___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_async(dispatchQueue, block);
}

uint64_t __44__VCAudioSession_setAudioSessionProperties___block_invoke(uint64_t a1)
{
  [*(a1 + 32) dispatchedSetAudioSessionProperties:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 dispatchedSetAudioToolboxProperties:v3];
}

- (void)dispatchedSetAudioToolboxProperties:(id)a3
{
  if ([a3 objectForKeyedSubscript:@"AVAudioClientAudioToolboxAudioIOPropertiesKey"])
  {
    v5 = [a3 objectForKeyedSubscript:@"AVAudioClientAudioToolboxAudioIOPropertiesKey"];

    [(VCAudioSession *)self setAudioIOProperties:v5];
  }
}

- (void)dispatchedSetAudioSessionProperties:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    __str = 0;
    v5 = a3 ? [objc_msgSend(a3 "description")] : "<nil>";
    asprintf(&__str, "%s", v5);
    if (__str)
    {
      __lasts = 0;
      v6 = strtok_r(__str, "\n", &__lasts);
      v7 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v8 = VRTraceErrorLogLevelToCSTR();
          v9 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v28 = v8;
            v29 = 2080;
            v30 = "[VCAudioSession dispatchedSetAudioSessionProperties:]";
            v31 = 1024;
            v32 = 231;
            v33 = 2080;
            v34 = "";
            v35 = 2080;
            v36 = v6;
            _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v6 = strtok_r(0, "\n", &__lasts);
      }

      while (v6);
      free(__str);
    }
  }

  if ([(VCAudioSession *)self isAnswerOnHoldUpdateParameters:a3])
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_requestedAudioSessionProperties, "setObject:forKeyedSubscript:", [a3 objectForKeyedSubscript:*MEMORY[0x1E69AFDF8]], *MEMORY[0x1E69AFDF8]);
    if ([(VCAudioSession *)self hasStarted])
    {
      [(VCAudioSession *)self setSpeakerProperty:a3];
    }
  }

  else
  {
    v10 = [a3 objectForKeyedSubscript:@"AVAudioClientBatchMXPropertiesKey"];
    v11 = *MEMORY[0x1E69AFCC0];
    if (([a3 objectForKeyedSubscript:*MEMORY[0x1E69AFCC0]] || -[NSMutableDictionary objectForKeyedSubscript:](v10, "objectForKeyedSubscript:", v11)) && ((v12 = *MEMORY[0x1E69AFCE8], objc_msgSend(a3, "objectForKeyedSubscript:", *MEMORY[0x1E69AFCE8])) || -[NSMutableDictionary objectForKeyedSubscript:](v10, "objectForKeyedSubscript:", v12)))
    {

      self->_requestedAudioSessionProperties = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:a3];
      if (v10)
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v13 = [(NSMutableDictionary *)v10 allKeys];
        v14 = [v13 countByEnumeratingWithState:&v23 objects:v22 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v24;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v24 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v23 + 1) + 8 * i);
              if ([(NSMutableDictionary *)self->_requestedAudioSessionProperties objectForKeyedSubscript:v18])
              {
                requestedAudioSessionProperties = self->_requestedAudioSessionProperties;
              }

              else
              {
                requestedAudioSessionProperties = v10;
              }

              [(NSMutableDictionary *)self->_requestedAudioSessionProperties setObject:[(NSMutableDictionary *)requestedAudioSessionProperties objectForKeyedSubscript:v18] forKeyedSubscript:v18];
            }

            v15 = [v13 countByEnumeratingWithState:&v23 objects:v22 count:16];
          }

          while (v15);
        }
      }

      if ([(VCAudioSession *)self hasStarted])
      {
        [(VCAudioSession *)self applyDynamicSessionProperties];
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioSession dispatchedSetAudioSessionProperties:];
      }
    }
  }
}

- (void)applyDynamicSessionProperties
{
  v3 = *MEMORY[0x1E69AFFD8];
  if ([(VCAudioSession *)self didRequestDictionaryPropertyChange:*MEMORY[0x1E69AFFD8]])
  {
    [(VCAudioSession *)self applyRequestedProperty:v3 defaultValue:0];
  }

  v4 = *MEMORY[0x1E69B0068];
  if ([(VCAudioSession *)self didRequestBoolPropertyChange:*MEMORY[0x1E69B0068]])
  {
    [(VCAudioSession *)self applyRequestedProperty:v4 defaultValue:MEMORY[0x1E695E110]];
  }

  v5 = *MEMORY[0x1E69AFC80];
  if ([(VCAudioSession *)self didRequestArrayPropertyChange:*MEMORY[0x1E69AFC80]])
  {
    [(VCAudioSession *)self applyRequestedProperty:v5 defaultValue:MEMORY[0x1E695E0F0]];
  }

  if (self->_useOptimizedHandoversForTelephony && [(VCAudioSession *)self didRequestBoolPropertyChange:@"kVirtualAudioPluginVPBlockConfigurationNetworkUplinkClockUsesBaseband"])
  {
    [(VCAudioSession *)self applyRequestedProperty:@"kVirtualAudioPluginVPBlockConfigurationNetworkUplinkClockUsesBaseband" defaultValue:MEMORY[0x1E695E110]];
  }

  v6 = *MEMORY[0x1E69B0340];
  if ([(VCAudioSession *)self didRequestBoolPropertyChange:*MEMORY[0x1E69B0340]])
  {
    v7 = MEMORY[0x1E695E110];

    [(VCAudioSession *)self applyRequestedProperty:v6 defaultValue:v7];
  }
}

- (void)dispatchedRefreshAudioSessionProperties
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = *MEMORY[0x1E69AFCC0];
  if ([(VCAudioSession *)self didRequestStringPropertyChange:*MEMORY[0x1E69AFCC0]])
  {
    [(VCAudioSession *)self applyRequestedProperty:v3 defaultValue:*MEMORY[0x1E69AF6F8]];
  }

  if ([(VCAudioSession *)self didRequestStringPropertyChange:*MEMORY[0x1E69AFCE8]])
  {
    [(VCAudioSession *)self applyAudioModeWithDefaultValue:*MEMORY[0x1E69AF8D0] shouldApplyRequestedProperty:1];
  }

  v4 = *MEMORY[0x1E69AFF90];
  if ([(VCAudioSession *)self didRequestArrayPropertyChange:*MEMORY[0x1E69AFF90]])
  {
    [(VCAudioSession *)self applyRequestedProperty:v4 defaultValue:0];
  }

  if (self->_useOptimizedHandoversForTelephony && [(VCAudioSession *)self didRequestBoolPropertyChange:@"kVirtualAudioPluginVPBlockConfigurationNetworkUplinkClockUsesBaseband"])
  {
    v5 = MEMORY[0x1E695E110];

    [(VCAudioSession *)self applyRequestedProperty:@"kVirtualAudioPluginVPBlockConfigurationNetworkUplinkClockUsesBaseband" defaultValue:v5];
  }
}

- (void)refreshAudioSessionProperties
{
  v3[5] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__VCAudioSession_refreshAudioSessionProperties__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_sync(dispatchQueue, v3);
}

- (void)updateAudioSessionPropertiesWithProperties:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__VCAudioSession_updateAudioSessionPropertiesWithProperties___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_async(dispatchQueue, block);
}

void __61__VCAudioSession_updateAudioSessionPropertiesWithProperties___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 184);
  if (v2)
  {
    v3 = [v2 mutableCopy];
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v4 = v3;
  [v3 addEntriesFromDictionary:*(a1 + 40)];
  [*(a1 + 32) dispatchedSetAudioSessionProperties:v4];
}

- (BOOL)didRequestBoolPropertyChange:(id)a3
{
  v5 = [(NSDictionary *)[(VCAudioSession *)self audioSessionProperties] objectForKeyedSubscript:a3];
  if (v5)
  {
    v6 = v5;
    v7 = [(NSMutableDictionary *)self->_currentAudioSessionProperties objectForKeyedSubscript:a3];
    if (v7)
    {
      v8 = [v7 BOOLValue];
      LOBYTE(v5) = v8 ^ [v6 BOOLValue];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (BOOL)didRequestedPropertyChange:(id)a3 propertyClass:(Class)a4 compareSelector:(SEL)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = [(NSMutableDictionary *)self->_currentAudioSessionProperties objectForKeyedSubscript:?];
  v10 = [(NSDictionary *)[(VCAudioSession *)self audioSessionProperties] objectForKeyedSubscript:a3];
  if (v10)
  {
    v11 = v10;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        v12 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v12)
        {
          return v12;
        }

        v15 = NSStringFromClass(a4);
        v16 = objc_opt_class();
        v18 = 136316418;
        v19 = v13;
        v20 = 2080;
        v21 = "[VCAudioSession didRequestedPropertyChange:propertyClass:compareSelector:]";
        v22 = 1024;
        v23 = 358;
        v24 = 2112;
        v25 = v15;
        v26 = 2112;
        v27 = a3;
        v28 = 2112;
        v29 = NSStringFromClass(v16);
        _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unexpected class=%@ for property=%@. Expected class=%@", &v18, 0x3Au);
      }

      LOBYTE(v12) = 0;
      return v12;
    }

    if (v9)
    {
      LOBYTE(v12) = [v9 performSelector:a5 withObject:v11] == 0;
    }

    else
    {
      LOBYTE(v12) = 1;
    }
  }

  else
  {
    LOBYTE(v12) = v9 != 0;
  }

  return v12;
}

- (BOOL)didRequestStringPropertyChange:(id)a3
{
  v5 = objc_opt_class();

  return [(VCAudioSession *)self didRequestedPropertyChange:a3 propertyClass:v5 compareSelector:sel_isEqualToString_];
}

- (BOOL)didRequestArrayPropertyChange:(id)a3
{
  v5 = objc_opt_class();

  return [(VCAudioSession *)self didRequestedPropertyChange:a3 propertyClass:v5 compareSelector:sel_isEqualToArray_];
}

- (BOOL)didRequestDataPropertyChange:(id)a3
{
  v5 = objc_opt_class();

  return [(VCAudioSession *)self didRequestedPropertyChange:a3 propertyClass:v5 compareSelector:sel_isEqualToData_];
}

- (BOOL)didRequestDictionaryPropertyChange:(id)a3
{
  v5 = objc_opt_class();

  return [(VCAudioSession *)self didRequestedPropertyChange:a3 propertyClass:v5 compareSelector:sel_isEqualToDictionary_];
}

- (void)applyAudioSessionPropertiesWithVPOperatingMode:(unsigned int)a3
{
  v3 = *&a3;
  v37 = *MEMORY[0x1E69E9840];
  if (self->_playbackMode == 1 && a3 == 0 || a3 == 7)
  {
    v7 = &unk_1F5799A80;
  }

  else
  {
    v7 = &unk_1F5799A68;
  }

  self->_vpOperatingMode = a3;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      vpOperatingMode = self->_vpOperatingMode;
      *buf = 136316162;
      v28 = v8;
      v29 = 2080;
      v30 = "[VCAudioSession applyAudioSessionPropertiesWithVPOperatingMode:]";
      v31 = 1024;
      v32 = 398;
      v33 = 1024;
      v34 = vpOperatingMode;
      v35 = 1024;
      v36 = [v7 intValue];
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _vpOperatingMode=%d, priority=%d", buf, 0x28u);
    }
  }

  v11 = [-[NSDictionary objectForKeyedSubscript:](-[VCAudioSession audioSessionProperties](self "audioSessionProperties")];
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(VCAudioSession *)self addPropertyToBatchedDictionary:v11 property:*MEMORY[0x1E69AFDB0] defaultValue:v7 propertyOrderArray:v12];
  [(VCAudioSession *)self addPropertyToBatchedDictionary:v11 property:*MEMORY[0x1E69AFCC0] defaultValue:*MEMORY[0x1E69AF6F8] propertyOrderArray:v12];
  v13 = *MEMORY[0x1E69AF8D0];
  [(VCAudioSession *)self addPropertyToBatchedDictionary:v11 property:*MEMORY[0x1E69AFCE8] defaultValue:*MEMORY[0x1E69AF8D0] propertyOrderArray:v12];
  [(VCAudioSession *)self addPropertyToBatchedDictionary:v11 property:*MEMORY[0x1E69AFDF8] defaultValue:MEMORY[0x1E695E110] propertyOrderArray:v12];
  [(VCAudioSession *)self addPropertyToBatchedDictionary:v11 property:*MEMORY[0x1E69AFFD8] defaultValue:0 propertyOrderArray:v12];
  [(VCAudioSession *)self addPropertyToBatchedDictionary:v11 property:*MEMORY[0x1E69AFF90] defaultValue:0 propertyOrderArray:v12];
  buf[0] = 0;
  if ([(VCAudioSession *)self shouldSetupSharePlayWithOperatingMode:v3 isSharePlayCapable:buf])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:buf[0]];
    v15 = *MEMORY[0x1E69B00E0];
    [v11 setObject:v14 forKeyedSubscript:*MEMORY[0x1E69B00E0]];
    [v12 addObject:v15];
  }

  if (buf[0] == 1)
  {
    [(VCAudioSession *)self addPropertyToBatchedDictionary:v11 property:*MEMORY[0x1E69B0068] defaultValue:MEMORY[0x1E695E110] propertyOrderArray:v12];
  }

  [(VCAudioSession *)self addPropertyToBatchedDictionary:v11 property:*MEMORY[0x1E69B0340] defaultValue:MEMORY[0x1E695E110] propertyOrderArray:v12];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = [v11 allKeys];
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v23 + 1) + 8 * i);
        if (([v12 containsObject:v21] & 1) == 0)
        {
          [v12 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v18);
  }

  [(VCAudioSession *)self applyRequestedProperties:v11 propertyOrder:v12];

  [(VCAudioSession *)self applyAudioModeWithDefaultValue:v13 shouldApplyRequestedProperty:0];
}

- (void)addPropertyToBatchedDictionary:(id)a3 property:(id)a4 defaultValue:(id)a5 propertyOrderArray:(id)a6
{
  if ([(NSDictionary *)[(VCAudioSession *)self audioSessionProperties] objectForKeyedSubscript:a4])
  {
    v11 = [(VCAudioSession *)self audioSessionProperties];
  }

  else
  {
    v12 = [a3 objectForKeyedSubscript:a4];
    v11 = a3;
    if (!v12)
    {
      goto LABEL_5;
    }
  }

  a5 = [(NSDictionary *)v11 objectForKeyedSubscript:a4];
LABEL_5:
  if (a5)
  {
    [a3 setObject:a5 forKeyedSubscript:a4];

    [a6 addObject:a4];
  }
}

- (BOOL)forceBufferFrames:(int *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3 && !self->_isTetheredDisplayMode)
  {
    v3 = CFPreferencesCopyAppValue(@"forceAudioBufferFrames", @"com.apple.VideoConference");
    if (v3)
    {
      v5 = v3;
      Value = CFNumberGetValue(v3, kCFNumberSInt32Type, a3);
      CFRelease(v5);
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v9 = *a3;
          v10 = " ";
          v12 = 136316162;
          if (!Value)
          {
            v10 = "failed";
          }

          v13 = v7;
          v14 = 2080;
          v15 = "[VCAudioSession forceBufferFrames:]";
          v16 = 1024;
          v17 = 484;
          v18 = 1024;
          v19 = v9;
          v20 = 2080;
          v21 = v10;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d forceAudioBufferFrames to %d %s", &v12, 0x2Cu);
        }
      }

      LOBYTE(v3) = Value != 0;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)setBlockSizeOnSampleRateChange
{
  v3[5] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__VCAudioSession_setBlockSizeOnSampleRateChange__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(dispatchQueue, v3);
}

uint64_t __48__VCAudioSession_setBlockSizeOnSampleRateChange__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v2;
      v11 = 2080;
      v12 = "[VCAudioSession setBlockSizeOnSampleRateChange]_block_invoke";
      v13 = 1024;
      v14 = 492;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", &v9, 0x1Cu);
    }
  }

  v4 = *(a1 + 32);
  [objc_msgSend(v4[26] "mediaProperties")];
  v6 = v5;
  [objc_msgSend(*(*(a1 + 32) + 208) "mediaProperties")];
  return [v4 setBlockSize:0 sampleRate:v6 force:v7];
}

+ (id)stringFromFormat:(const AudioStreamBasicDescription *)a3
{
  v9 = *MEMORY[0x1E69E9840];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7 = v3;
  v8 = v3;
  *__str = v3;
  v6 = v3;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@" audioStreamBasicDescription=%s", FormatToCStr(a3, __str, 0x40uLL)];
}

- (void)setUpVPBlockFormatWithProperties:(id)a3
{
  v53[5] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    [a3 inputFormat];
    if (HIDWORD(v40) >= 2)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          [a3 inputFormat];
          *buf = 136315906;
          v43 = v5;
          v44 = 2080;
          v45 = "[VCAudioSession setUpVPBlockFormatWithProperties:]";
          v46 = 1024;
          v47 = 509;
          v48 = 1024;
          LODWORD(v49) = v38;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d skipping setting kCMSessionProperty_VPBlockConfiguration channelCount=%d", buf, 0x22u);
        }
      }

      return;
    }
  }

  else
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
  }

  *v37 = -1;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v37[8] = v7;
  *&v37[24] = v7;
  if (a3)
  {
    [a3 inputFormat];
  }

  else
  {
    memset(v37, 0, sizeof(v37));
  }

  v8 = [MEMORY[0x1E695DEF0] dataWithBytes:v37 length:40];
  *&v36[0] = -1;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(v36 + 8) = v9;
  *(&v36[1] + 8) = v9;
  if (a3)
  {
    [a3 outputFormat];
  }

  else
  {
    memset(v36, 0, 40);
  }

  v10 = [MEMORY[0x1E695DEF0] dataWithBytes:v36 length:40];
  v32 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a3, "vpOperatingMode")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a3, "networkUplinkClockUsesBaseband")}];
  v13 = MEMORY[0x1E696AD98];
  if (a3)
  {
    [a3 outputFormat];
    v14 = v35 > 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v13 numberWithBool:v14];
  v16 = MEMORY[0x1E695DF90];
  v52[0] = [MEMORY[0x1E696AEC0] stringWithUTF8String:"vp client input format"];
  v53[0] = v8;
  v52[1] = [MEMORY[0x1E696AEC0] stringWithUTF8String:"vp client output format"];
  v53[1] = v10;
  v52[2] = [MEMORY[0x1E696AEC0] stringWithUTF8String:"vp client operation mode"];
  v53[2] = v32;
  v52[3] = [MEMORY[0x1E696AEC0] stringWithUTF8String:"vp_muteControlledByAVSC"];
  v53[3] = v11;
  v52[4] = [MEMORY[0x1E696AEC0] stringWithUTF8String:"vp client stereo chat enabled"];
  v53[4] = v15;
  v17 = [v16 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v53, v52, 5)}];
  v18 = v17;
  if (self->_useOptimizedHandoversForTelephony && self->_audioClockDeviceEnabled)
  {
    [v17 setValue:v12 forKey:@"network uplink clock uses baseband"];
  }

  [(VCAudioSession *)self setVPBlockConfigurationProperties:v18];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v21 = [objc_opt_class() stringFromFormat:v37];
      *buf = 136315906;
      v43 = v19;
      v44 = 2080;
      v45 = "[VCAudioSession setUpVPBlockFormatWithProperties:]";
      v46 = 1024;
      v47 = 530;
      v48 = 2112;
      v49 = v21;
      _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ('vp client input format' inFormat=%@)", buf, 0x26u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v24 = [objc_opt_class() stringFromFormat:v36];
      *buf = 136315906;
      v43 = v22;
      v44 = 2080;
      v45 = "[VCAudioSession setUpVPBlockFormatWithProperties:]";
      v46 = 1024;
      v47 = 531;
      v48 = 2112;
      v49 = v24;
      _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ('vp client output format' outFormat=%@)", buf, 0x26u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v25 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v32 unsignedIntValue];
      *buf = 136315906;
      v43 = v25;
      v44 = 2080;
      v45 = "[VCAudioSession setUpVPBlockFormatWithProperties:]";
      v46 = 1024;
      v47 = 532;
      v48 = 1024;
      LODWORD(v49) = v27;
      _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ('vp client operation mode' opModeNumber=%u)", buf, 0x22u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v28 = VRTraceErrorLogLevelToCSTR();
    v29 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        [a3 inputFormat];
        v30 = v34;
        [a3 outputFormat];
        v31 = v33;
      }

      else
      {
        v31 = 0;
        v30 = 0;
      }

      *buf = 136316162;
      v43 = v28;
      v44 = 2080;
      v45 = "[VCAudioSession setUpVPBlockFormatWithProperties:]";
      v46 = 1024;
      v47 = 533;
      v48 = 2048;
      v49 = v30;
      v50 = 2048;
      v51 = v31;
      _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d kCMSessionProperty_VPBlockConfiguration sampleRateIn=%f, sampleRateOut=%f", buf, 0x30u);
    }
  }

  self->_vpBlock = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v18];
}

- (BOOL)applyAudioSessionMediaProperties:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v6 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315650;
      v18 = v7;
      v19 = 2080;
      v20 = "[VCAudioSession applyAudioSessionMediaProperties:]";
      v21 = 1024;
      v22 = 545;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", &v17, 0x1Cu);
    }
  }

  self->_vpOperatingMode = [a3 vpOperatingMode];
  self->_operatingMode = [a3 operatingMode];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      operatingMode = self->_operatingMode;
      vpOperatingMode = self->_vpOperatingMode;
      v17 = 136316162;
      v18 = v9;
      v19 = 2080;
      v20 = "[VCAudioSession applyAudioSessionMediaProperties:]";
      v21 = 1024;
      v22 = 549;
      v23 = 1024;
      v24 = operatingMode;
      v25 = 1024;
      v26 = vpOperatingMode;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _operatingMode=%d, _vpOperatingMode=%d", &v17, 0x28u);
    }
  }

  [a3 preferredSampleRate];
  [(VCAudioSession *)self setSampleRate:?];
  [a3 preferredBlockSize];
  v14 = v13;
  [a3 preferredSampleRate];
  [(VCAudioSession *)self setBlockSize:1 sampleRate:v14 force:v15];
  -[VCAudioSession setOptimizedTelephonyHandoverSettings:networkUplinkClockUsesBaseband:](self, "setOptimizedTelephonyHandoverSettings:networkUplinkClockUsesBaseband:", [a3 audioClockDeviceEnabled], objc_msgSend(a3, "networkUplinkClockUsesBaseband"));
  if (!self->_playbackMode)
  {
    [(VCAudioSession *)self internalSelectMicrophoneWithType:self->_selectedMicrophone];
    if (!VCDefaults_GetBoolValueForKey(@"skipSettingVPBlockConfiguration", 0))
    {
      [(VCAudioSession *)self setUpVPBlockFormatWithProperties:a3];
    }
  }

  return 1;
}

- (BOOL)validNewStartingClient:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  clients = self->_clients;
  v6 = [(NSMutableArray *)clients countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v32 != v8)
      {
        objc_enumerationMutation(clients);
      }

      v10 = *(*(&v31 + 1) + 8 * v9);
      if ([v10 notificationClient] == a3)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)clients countByEnumeratingWithState:&v31 objects:v30 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = [v10 clientType];
    if (v12 == 1)
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
    }

    if (objc_opt_class() == self)
    {
      if (v13 > VRTraceGetErrorLogLevelForModule())
      {
        goto LABEL_23;
      }

      VRTraceErrorLogLevelToCSTR();
      if (v12 != 1)
      {
        v11 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v11)
        {
          return v11;
        }

        [VCAudioSession validNewStartingClient:];
        goto LABEL_38;
      }

      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioSession validNewStartingClient:];
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        [VCAudioSession validNewStartingClient:];
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [(VCAudioSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v14 = &stru_1F570E008;
      }

      if (v13 > VRTraceGetErrorLogLevelForModule())
      {
LABEL_23:
        if (v12 != 1)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      if (v12 != 1)
      {
        v18 = *MEMORY[0x1E6986650];
        v11 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v11)
        {
          return v11;
        }

        v20 = 136316162;
        v21 = v15;
        v22 = 2080;
        v23 = "[VCAudioSession validNewStartingClient:]";
        v24 = 1024;
        v25 = 592;
        v26 = 2112;
        v27 = v14;
        v28 = 2048;
        v29 = self;
        _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Client has already been started", &v20, 0x30u);
        goto LABEL_38;
      }

      IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
      v17 = *MEMORY[0x1E6986650];
      if (IsOSFaultDisabled)
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v20 = 136316162;
          v21 = v15;
          v22 = 2080;
          v23 = "[VCAudioSession validNewStartingClient:]";
          v24 = 1024;
          v25 = 592;
          v26 = 2112;
          v27 = v14;
          v28 = 2048;
          v29 = self;
          _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Client has already been started", &v20, 0x30u);
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        v20 = 136316162;
        v21 = v15;
        v22 = 2080;
        v23 = "[VCAudioSession validNewStartingClient:]";
        v24 = 1024;
        v25 = 592;
        v26 = 2112;
        v27 = v14;
        v28 = 2048;
        v29 = self;
        _os_log_fault_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_FAULT, " [%s] %s:%d %@(%p) Client has already been started", &v20, 0x30u);
      }
    }

LABEL_37:
    [VCAudioSession terminateProcess:@"Unexpected already started state when default client requested start" terminateSource:@"VCAudioSession" agent:0];
LABEL_38:
    LOBYTE(v11) = 0;
    return v11;
  }

LABEL_9:
  LOBYTE(v11) = 1;
  return v11;
}

+ (id)stringForPlaybackMode:(int)a3
{
  if (a3 < 3)
  {
    return off_1E85F6658[a3];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      +[VCAudioSession stringForPlaybackMode:];
    }
  }

  return @"Unknown";
}

- (BOOL)startClient:(id)a3 clientType:(unsigned __int8)a4 mediaProperties:(id)a5 sessionRef:(unsigned int *)a6
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__VCAudioSession_startClient_clientType_mediaProperties_sessionRef___block_invoke;
  block[3] = &unk_1E85F65E8;
  block[4] = self;
  block[5] = a3;
  block[6] = a5;
  block[7] = &v11;
  block[8] = a6;
  v10 = a4;
  dispatch_sync(dispatchQueue, block);
  v7 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v7;
}

- (BOOL)shouldResetAudioSession
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__VCAudioSession_shouldResetAudioSession__block_invoke;
  block[3] = &unk_1E85F3868;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(dispatchQueue, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __41__VCAudioSession_shouldResetAudioSession__block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = &OBJC_IVAR___VCRateControlAlgorithmLayeredContinuousTier__bandwidthWall;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    __str = 0;
    v3 = *(*(a1 + 32) + 184);
    v4 = v3 ? [objc_msgSend(v3 "description")] : "<nil>";
    asprintf(&__str, "Requested settings: %s", v4);
    if (__str)
    {
      v23 = a1;
      __lasts = 0;
      v5 = strtok_r(__str, "\n", &__lasts);
      v6 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v7 = VRTraceErrorLogLevelToCSTR();
          v8 = *v6;
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v28 = v7;
            v29 = 2080;
            v30 = "[VCAudioSession shouldResetAudioSession]_block_invoke";
            v31 = 1024;
            v32 = 659;
            v33 = 2080;
            v34 = "";
            v35 = 2080;
            v36 = v5;
            _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v5 = strtok_r(0, "\n", &__lasts);
      }

      while (v5);
      free(__str);
      a1 = v23;
      v2 = &OBJC_IVAR___VCRateControlAlgorithmLayeredContinuousTier__bandwidthWall;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    __str = 0;
    v9 = *(*(a1 + 32) + 192);
    v10 = v9 ? [objc_msgSend(v9 "description")] : "<nil>";
    asprintf(&__str, "Existing settings: %s", v10);
    if (__str)
    {
      v24 = a1;
      __lasts = 0;
      v11 = strtok_r(__str, "\n", &__lasts);
      v12 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v13 = VRTraceErrorLogLevelToCSTR();
          v14 = *v12;
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v28 = v13;
            v29 = 2080;
            v30 = "[VCAudioSession shouldResetAudioSession]_block_invoke";
            v31 = 1024;
            v32 = 660;
            v33 = 2080;
            v34 = "";
            v35 = 2080;
            v36 = v11;
            _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v11 = strtok_r(0, "\n", &__lasts);
      }

      while (v11);
      free(__str);
      a1 = v24;
      v2 = &OBJC_IVAR___VCRateControlAlgorithmLayeredContinuousTier__bandwidthWall;
    }
  }

  v15 = v2[691];
  v16 = *MEMORY[0x1E69AFCE8];
  v17 = [*(*(a1 + 32) + v15) objectForKeyedSubscript:*MEMORY[0x1E69AFCE8]];
  v18 = [*(*(a1 + 32) + 192) objectForKeyedSubscript:v16];
  if (v17 | v18)
  {
    if (([v17 isEqualToString:v18] & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v21 = [*(*(a1 + 32) + 192) objectForKeyedSubscript:v16];
          v22 = [*(*(a1 + 32) + v15) objectForKeyedSubscript:v16];
          *buf = 136316162;
          v28 = v19;
          v29 = 2080;
          v30 = "[VCAudioSession shouldResetAudioSession]_block_invoke";
          v31 = 1024;
          v32 = 666;
          v33 = 2112;
          v34 = v21;
          v35 = 2112;
          v36 = v22;
          _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Reset needed, audio mode:%@ -> %@", buf, 0x30u);
        }
      }
    }
  }
}

- (BOOL)resetClient:(id)a3 mediaSetting:(id)a4 interruptSuccessful:(BOOL *)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__VCAudioSession_resetClient_mediaSetting_interruptSuccessful___block_invoke;
  v8[3] = &unk_1E85F6610;
  v8[4] = self;
  v8[5] = a3;
  v8[6] = a4;
  v8[7] = &v9;
  v8[8] = a5;
  dispatch_sync(dispatchQueue, v8);
  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __63__VCAudioSession_resetClient_mediaSetting_interruptSuccessful___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v23 = v2;
      v24 = 2080;
      v25 = "[VCAudioSession resetClient:mediaSetting:interruptSuccessful:]_block_invoke";
      v26 = 1024;
      v27 = 676;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", buf, 0x1Cu);
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(*(a1 + 32) + 216);
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        if ([v9 notificationClient] == *(a1 + 40))
        {
          [v9 setMediaProperties:*(a1 + 48)];
          goto LABEL_14;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
  result = [*(*(a1 + 32) + 208) notificationClient];
  if (result == *(a1 + 40))
  {
    if ([*(a1 + 32) didRequestStringPropertyChange:*MEMORY[0x1E69AFCC0]])
    {
      [*(a1 + 32) applyAudioSessionPropertiesWithVPOperatingMode:{objc_msgSend(*(a1 + 48), "vpOperatingMode")}];
    }

    else if ([*(a1 + 32) didRequestStringPropertyChange:*MEMORY[0x1E69AFCE8]])
    {
      [*(a1 + 32) upgradeAudioSessionProperties];
      result = [*(a1 + 32) applyAudioSessionMediaProperties:{objc_msgSend(*(*(a1 + 32) + 208), "mediaProperties")}];
      goto LABEL_22;
    }

    [*(a1 + 32) applyAudioSessionMediaProperties:*(a1 + 48)];
    v11 = [*(a1 + 32) startInternal];
    v12 = *(a1 + 64);
    if (v12)
    {
      *v12 = v11;
    }

    v13 = *(a1 + 32);
    [*(a1 + 48) preferredBlockSize];
    v15 = v14;
    [*(a1 + 48) preferredSampleRate];
    result = [v13 setBlockSize:0 sampleRate:v15 force:v16];
  }

LABEL_22:
  *(*(*(a1 + 56) + 8) + 24) = 1;
  return result;
}

- (void)resumeActiveClient
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCAudioSession resumeActiveClient]";
      v12 = 1024;
      v13 = 718;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", &v8, 0x1Cu);
    }
  }

  [(VCAudioSession *)self applyAudioSessionMediaProperties:[(VCAudioSessionClient *)self->_activeClient mediaProperties]];
  [(VCAudioSession *)self startInternal];
  [(VCAudioSessionMediaProperties *)[(VCAudioSessionClient *)self->_activeClient mediaProperties] preferredBlockSize];
  v6 = v5;
  [(VCAudioSessionMediaProperties *)[(VCAudioSessionClient *)self->_activeClient mediaProperties] preferredSampleRate];
  [(VCAudioSession *)self setBlockSize:1 sampleRate:v6 force:v7];
}

- (void)selectNewActiveClient
{
  v15 = *MEMORY[0x1E69E9840];
  if (!self->_activeClient)
  {
    self->_activeClient = [(NSMutableArray *)self->_clients lastObject];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        activeClient = self->_activeClient;
        v7 = 136315906;
        v8 = v3;
        v9 = 2080;
        v10 = "[VCAudioSession selectNewActiveClient]";
        v11 = 1024;
        v12 = 729;
        v13 = 2048;
        v14 = activeClient;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d New active client:%p", &v7, 0x26u);
      }
    }

    v6 = self->_activeClient;
    if (v6)
    {
      if (!self->_isInterrupted)
      {
        [(VCAudioSession *)self applyAudioSessionMediaProperties:[(VCAudioSessionClient *)v6 mediaProperties]];
      }
    }
  }
}

- (BOOL)stopClient:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  dispatchQueue = self->_dispatchQueue;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__VCAudioSession_stopClient___block_invoke;
  v6[3] = &unk_1E85F6638;
  v6[4] = a3;
  v6[5] = self;
  v6[6] = &v7;
  dispatch_sync(dispatchQueue, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __29__VCAudioSession_stopClient___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 136315906;
      v21 = v2;
      v22 = 2080;
      v23 = "[VCAudioSession stopClient:]_block_invoke";
      v24 = 1024;
      v25 = 743;
      v26 = 2048;
      v27 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Client:%p", buf, 0x26u);
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = *(*(a1 + 40) + 216);
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
LABEL_6:
    v9 = 0;
    while (1)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v16 + 1) + 8 * v9);
      if ([v10 notificationClient] == *(a1 + 32))
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_6;
        }

        goto LABEL_18;
      }
    }

    if (!v10)
    {
      goto LABEL_18;
    }

    [*(*(a1 + 40) + 216) removeObject:v10];
    v11 = *(a1 + 40);
    v12 = *(v11 + 208);
    if (v12 == v10)
    {

      *(*(a1 + 40) + 208) = 0;
      v11 = *(a1 + 40);
    }

    v13 = [*(v11 + 216) count];
    v14 = *(a1 + 40);
    if (v13)
    {
      [v14 selectNewActiveClient];
    }

    else
    {
      [v14 stopSession];
      [*(a1 + 40) invalidateCache];
      [*(a1 + 40) cleanupMicSources];
      *(*(a1 + 40) + 256) = 0;
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
LABEL_18:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __29__VCAudioSession_stopClient___block_invoke_cold_1();
      }
    }
  }
}

- (void)didAvailableSampleRateChange
{
  v3[5] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__VCAudioSession_didAvailableSampleRateChange__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(dispatchQueue, v3);
}

uint64_t __46__VCAudioSession_didAvailableSampleRateChange__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(*(a1 + 32) + 216);
  result = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v8 + 1) + 8 * v5) notificationClient];
        if (objc_opt_respondsToSelector())
        {
          [v6 didSessionSampleRateChange];
        }

        ++v5;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

- (void)serverDidDie
{
  v3[5] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __30__VCAudioSession_serverDidDie__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(dispatchQueue, v3);
}

uint64_t __30__VCAudioSession_serverDidDie__block_invoke(uint64_t a1)
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

        [objc_msgSend(*(*(&v7 + 1) + 8 * v5++) "notificationClient")];
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v7 objects:v6 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

- (void)didPause
{
  v3[5] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __26__VCAudioSession_didPause__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(dispatchQueue, v3);
}

uint64_t __26__VCAudioSession_didPause__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 208) clientType];
  if (result == 1)
  {
    result = [objc_msgSend(*(*(a1 + 32) + 208) "notificationClient")];
  }

  *(*(a1 + 32) + 256) = 1;
  return result;
}

- (void)didResume
{
  v3[5] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__VCAudioSession_didResume__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(dispatchQueue, v3);
}

uint64_t __27__VCAudioSession_didResume__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 256) = 0;
  v2 = [*(*(a1 + 32) + 208) clientType];
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = [v3[26] notificationClient];

    return [v4 didSessionResume];
  }

  else
  {

    return [v3 resumeActiveClient];
  }
}

- (void)didStop
{
  v3[5] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __25__VCAudioSession_didStop__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(dispatchQueue, v3);
}

uint64_t __25__VCAudioSession_didStop__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 208) clientType];
  if (result == 1)
  {
    result = [objc_msgSend(*(*(a1 + 32) + 208) "notificationClient")];
  }

  *(*(a1 + 32) + 256) = 1;
  return result;
}

- (void)didInterruptionEnded
{
  v3[5] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__VCAudioSession_didInterruptionEnded__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(dispatchQueue, v3);
}

uint64_t __38__VCAudioSession_didInterruptionEnded__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 256) = 0;
  v2 = [*(*(a1 + 32) + 208) clientType];
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = [v3[26] notificationClient];

    return [v4 didSessionEnd];
  }

  else
  {

    return [v3 resumeActiveClient];
  }
}

- (void)applyAudioModeWithDefaultValue:(void *)a3 shouldApplyRequestedProperty:(BOOL)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69AFCE8];
  if (a4)
  {
    [(VCAudioSession *)self applyRequestedProperty:*MEMORY[0x1E69AFCE8] defaultValue:a3];
  }

  v6 = [(NSMutableDictionary *)self->_currentAudioSessionProperties objectForKeyedSubscript:v5];
  if (![v6 isEqualToString:*MEMORY[0x1E69AF950]])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_24;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *v24 = 136315650;
      *&v24[4] = v10;
      *&v24[12] = 2080;
      *&v24[14] = "[VCAudioSession applyAudioModeWithDefaultValue:shouldApplyRequestedProperty:]";
      *&v24[22] = 1024;
      LODWORD(v25) = 879;
      v12 = " [%s] %s:%d Tearing down beamforming";
      v13 = v11;
      v14 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCAudioSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
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

      *v24 = 136316162;
      *&v24[4] = v20;
      *&v24[12] = 2080;
      *&v24[14] = "[VCAudioSession applyAudioModeWithDefaultValue:shouldApplyRequestedProperty:]";
      *&v24[22] = 1024;
      LODWORD(v25) = 879;
      WORD2(v25) = 2112;
      *(&v25 + 6) = v8;
      HIWORD(v25) = 2048;
      v26 = self;
      v12 = " [%s] %s:%d %@(%p) Tearing down beamforming";
      v13 = v21;
      v14 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, v24, v14);
LABEL_24:
    [(VCAudioSession *)self cleanupMicSources:*v24];
    return;
  }

  if (self->_micSourceFront)
  {
    v7 = 0;
  }

  else
  {
    v7 = self->_micSourceBack == 0;
  }

  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(VCAudioSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_30;
    }

    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    *v24 = 136316418;
    *&v24[4] = v22;
    *&v24[12] = 2080;
    *&v24[14] = "[VCAudioSession applyAudioModeWithDefaultValue:shouldApplyRequestedProperty:]";
    *&v24[22] = 1024;
    LODWORD(v25) = 873;
    WORD2(v25) = 2112;
    *(&v25 + 6) = v9;
    HIWORD(v25) = 2048;
    v26 = self;
    LOWORD(v27) = 1024;
    *(&v27 + 2) = v7;
    v17 = " [%s] %s:%d %@(%p) shouldSetUpInputBeamforming=%{BOOL}d";
    v18 = v23;
    v19 = 54;
    goto LABEL_29;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 136315906;
      *&v24[4] = v15;
      *&v24[12] = 2080;
      *&v24[14] = "[VCAudioSession applyAudioModeWithDefaultValue:shouldApplyRequestedProperty:]";
      *&v24[22] = 1024;
      LODWORD(v25) = 873;
      WORD2(v25) = 1024;
      *(&v25 + 6) = v7;
      v17 = " [%s] %s:%d shouldSetUpInputBeamforming=%{BOOL}d";
      v18 = v16;
      v19 = 34;
LABEL_29:
      _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, v24, v19);
    }
  }

LABEL_30:
  if (v7)
  {
    [(VCAudioSession *)self setupInputBeamforming];
  }

  [(VCAudioSession *)self internalSelectMicrophoneWithType:self->_selectedMicrophone, *v24, *&v24[8], v25, v26, v27, v28];
}

- (void)setAudioSessionMode:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__VCAudioSession_setAudioSessionMode___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_async(dispatchQueue, block);
}

uint64_t __38__VCAudioSession_setAudioSessionMode___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 184) setObject:*(a1 + 40) forKeyedSubscript:*MEMORY[0x1E69AFCE8]];
  [*(a1 + 32) applyAudioModeWithDefaultValue:0 shouldApplyRequestedProperty:1];
  result = VCDefaults_GetBoolValueForKey(@"skipSettingVPBlockConfiguration", 0);
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = [v3[26] mediaProperties];

    return [v3 setUpVPBlockFormatWithProperties:v4];
  }

  return result;
}

- (void)cleanupMicSources
{
  self->_micSourceFront = 0;

  self->_micSourceBack = 0;
}

- (void)selectMicrophoneWithType:(unsigned int)a3
{
  v6 = *MEMORY[0x1E69E9840];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__VCAudioSession_selectMicrophoneWithType___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, block);
}

+ (BOOL)shouldUseHomeKitConfigurationForAudioMode:(id)a3
{
  if (+[VCHardwareSettings deviceClass](VCHardwareSettings, "deviceClass") == 4 && ([a3 isEqualToString:*MEMORY[0x1E69AF828]] & 1) != 0)
  {
    return 1;
  }

  v5 = *MEMORY[0x1E69AF960];

  return [a3 isEqualToString:v5];
}

+ (BOOL)convertAudioSessionProperties:(id)a3 operatingMode:(int *)a4 deviceRole:(int *)a5 enableAudioPreWarming:(BOOL *)a6 audioClockDeviceEnabled:(BOOL *)a7 networkUplinkClockUsesBaseband:(BOOL *)a8
{
  v57 = *MEMORY[0x1E69E9840];
  if (!a3 || !a4 || !a5 || !a6 || !a7 || !a8)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      v21 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v21)
      {
        return v21;
      }

      v40 = 136317186;
      v41 = v25;
      v42 = 2080;
      v43 = "+[VCAudioSession convertAudioSessionProperties:operatingMode:deviceRole:enableAudioPreWarming:audioClockDeviceEnabled:networkUplinkClockUsesBaseband:]";
      v44 = 1024;
      v45 = 952;
      v46 = 2048;
      *v47 = a3;
      *&v47[8] = 2048;
      v48 = a5;
      v49 = 2048;
      v50 = a4;
      v51 = 2048;
      v52 = a6;
      v53 = 2048;
      v54 = a7;
      v55 = 2048;
      v56 = a8;
      v22 = " [%s] %s:%d Invalid parameters: sessionProperties=%p deviceRole=%p operationMode=%p prewarming=%p audioClockDeviceEnabled=%p networkUplinkClockUsesBaseband=%p";
      v23 = v26;
      v24 = 88;
LABEL_20:
      _os_log_error_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_ERROR, v22, &v40, v24);
    }

LABEL_21:
    LOBYTE(v21) = 0;
    return v21;
  }

  v14 = *MEMORY[0x1E69AFCE8];
  v15 = [a3 objectForKeyedSubscript:*MEMORY[0x1E69AFCE8]];
  if (!v15)
  {
    v15 = [objc_msgSend(a3 objectForKeyedSubscript:{@"AVAudioClientBatchMXPropertiesKey", "objectForKeyedSubscript:", v14}];
  }

  v16 = [a3 objectForKeyedSubscript:@"kAUVoiceIOProperty_OperationMode"];
  v17 = v16;
  if (v15)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      v21 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v21)
      {
        return v21;
      }

      v40 = 136316162;
      v41 = v19;
      v42 = 2080;
      v43 = "+[VCAudioSession convertAudioSessionProperties:operatingMode:deviceRole:enableAudioPreWarming:audioClockDeviceEnabled:networkUplinkClockUsesBaseband:]";
      v44 = 1024;
      v45 = 961;
      v46 = 2048;
      *v47 = v15;
      *&v47[8] = 2048;
      v48 = v17;
      v22 = " [%s] %s:%d Audio parameters missing audioMode=%p operationMode=%p";
      v23 = v20;
      v24 = 48;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v27 = [a3 objectForKeyedSubscript:@"kVirtualAudioPluginVPBlockConfigurationNetworkUplinkClockUsesBaseband"];
  *a4 = 0;
  *a5 = 0;
  *a6 = 1;
  if ([v15 isEqualToString:*MEMORY[0x1E69AF950]])
  {
    *a4 = 1;
LABEL_29:
    *a5 = 0;
    goto LABEL_30;
  }

  if ([v15 isEqualToString:*MEMORY[0x1E69AF988]])
  {
    if ([v17 integerValue] == 8)
    {
      v29 = 7;
    }

    else
    {
      v29 = 2;
    }

    goto LABEL_28;
  }

  if (![v15 isEqualToString:*MEMORY[0x1E69AF8D0]])
  {
    if ([v15 isEqualToString:*MEMORY[0x1E69AF868]])
    {
      v29 = 3;
LABEL_28:
      *a4 = v29;
      goto LABEL_29;
    }

    if (![VCAudioSession shouldUseHomeKitConfigurationForAudioMode:v15])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v37 = VRTraceErrorLogLevelToCSTR();
        v38 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioSession convertAudioSessionProperties:v37 operatingMode:v15 deviceRole:v38 enableAudioPreWarming:? audioClockDeviceEnabled:? networkUplinkClockUsesBaseband:?];
        }
      }

      goto LABEL_30;
    }

LABEL_45:
    v29 = 5;
    goto LABEL_28;
  }

  if ([v17 integerValue] == 6)
  {
    v35 = +[VCHardwareSettings supportsOptimizedHandoversForTelephony];
    v36 = 0;
    *a4 = 3;
    *a5 = 0;
    *a7 = v35;
    if (v35)
    {
      v36 = [v27 BOOLValue];
    }

    *a8 = v36;
    *a6 = v36;
    goto LABEL_30;
  }

  if ([v17 integerValue] == 7)
  {
    goto LABEL_45;
  }

  *a4 = 2;
  *a5 = 1;
  *a6 = 0;
LABEL_30:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v30 = VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v32 = *a4;
      v33 = *a5;
      v34 = *a6;
      v40 = 136316418;
      v41 = v30;
      v42 = 2080;
      v43 = "+[VCAudioSession convertAudioSessionProperties:operatingMode:deviceRole:enableAudioPreWarming:audioClockDeviceEnabled:networkUplinkClockUsesBaseband:]";
      v44 = 1024;
      v45 = 1005;
      v46 = 1024;
      *v47 = v32;
      *&v47[4] = 1024;
      *&v47[6] = v33;
      LOWORD(v48) = 1024;
      *(&v48 + 2) = v34;
      _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d converting Properties to operating mode:%d deviceRole:%d enableAudioPreWarming:%d", &v40, 0x2Eu);
    }
  }

  LOBYTE(v21) = *a4 != 0;
  return v21;
}

void __68__VCAudioSession_startClient_clientType_mediaProperties_sessionRef___block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioSession-startingClient");
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v4 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 6)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_4_16())
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(v5 + 260);
      [VCAudioSession stringForPlaybackMode:v7];
      OUTLINED_FUNCTION_0_9();
      v51 = 616;
      v52 = 2048;
      v53 = v5;
      v54 = 2048;
      v55 = v6;
      v56 = v8;
      v57 = v7;
      v58 = 2112;
      v59 = v9;
      OUTLINED_FUNCTION_16();
      _os_log_impl(v10, v11, v12, v13, v14, 0x40u);
    }
  }

  if ([*(a1 + 32) validNewStartingClient:*(a1 + 40)])
  {
    v1 = 216;
    v15 = [*(*(a1 + 32) + 216) count];
    v16 = *(a1 + 32);
    if (v15)
    {
      [v16 dispatchedRefreshAudioSessionProperties];
LABEL_8:
      v17 = objc_alloc_init(VCAudioSessionClient);
      [(VCAudioSessionClient *)v17 setNotificationClient:*(a1 + 40)];
      [(VCAudioSessionClient *)v17 setMediaProperties:*(a1 + 48)];
      [(VCAudioSessionClient *)v17 setClientType:*(a1 + 72)];
      [*(*(a1 + 32) + 216) addObject:v17];
      if ([*(*(a1 + 32) + 208) clientType] != 1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v18 = VRTraceErrorLogLevelToCSTR();
          v1 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
          {
            v46 = 136315906;
            v47 = v18;
            v48 = 2080;
            v49 = "[VCAudioSession startClient:clientType:mediaProperties:sessionRef:]_block_invoke";
            v50 = 1024;
            v51 = 634;
            v52 = 2048;
            v53 = v17;
            _os_log_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Select new active client:%p", &v46, 0x26u);
          }
        }

        *(*(a1 + 32) + 208) = v17;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        VRTraceErrorLogLevelToCSTR();
        if (OUTLINED_FUNCTION_4_16())
        {
          OUTLINED_FUNCTION_0_9();
          v51 = 640;
          OUTLINED_FUNCTION_16();
          _os_log_impl(v19, v20, v21, v22, v23, 0x1Cu);
        }
      }

      [*(a1 + 32) applyAudioSessionMediaProperties:{objc_msgSend(*(*(a1 + 32) + 208), "mediaProperties")}];
      [*(a1 + 32) startInternal];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        VRTraceErrorLogLevelToCSTR();
        if (OUTLINED_FUNCTION_4_16())
        {
          OUTLINED_FUNCTION_0_9();
          v51 = 646;
          OUTLINED_FUNCTION_16();
          _os_log_impl(v24, v25, v26, v27, v28, 0x1Cu);
        }
      }

      v29 = *(a1 + 32);
      [objc_msgSend(v29[26] "mediaProperties")];
      v31 = v30;
      [objc_msgSend(*(*(a1 + 32) + 208) "mediaProperties")];
      [v29 setBlockSize:0 sampleRate:v31 force:v32];
      *(*(*(a1 + 56) + 8) + 24) = 1;
      goto LABEL_20;
    }

    *(*(*(a1 + 56) + 8) + 24) = [v16 startSessionWithMediaProperties:*(a1 + 48) sessionRef:*(a1 + 64)];
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      goto LABEL_8;
    }

    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_4_16())
      {
        OUTLINED_FUNCTION_0_9();
        v51 = 621;
        OUTLINED_FUNCTION_16();
        _os_log_impl(v41, v42, v43, v44, v45, 0x1Cu);
      }
    }
  }

LABEL_20:
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioSession-startedClient");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_4_16())
    {
      v33 = *(a1 + 32);
      v34 = *(a1 + 40);
      v35 = *(*(*(a1 + 56) + 8) + 24);
      v46 = 136316418;
      v47 = v1;
      v48 = 2080;
      v49 = "[VCAudioSession startClient:clientType:mediaProperties:sessionRef:]_block_invoke";
      v50 = 1024;
      v51 = 650;
      v52 = 2048;
      v53 = v33;
      v54 = 2048;
      v55 = v34;
      v56 = 1024;
      v57 = v35;
      OUTLINED_FUNCTION_16();
      _os_log_impl(v36, v37, v38, v39, v40, 0x36u);
    }
  }
}

- (void)dispatchedSetAudioSessionProperties:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v3 = v0;
  v4 = "[VCAudioSession dispatchedSetAudioSessionProperties:]";
  v5 = 1024;
  v6 = 247;
  v7 = v0;
  v8 = "[VCAudioSession dispatchedSetAudioSessionProperties:]";
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d :%s:audioParams does not include audio category or audio mode, Not setting requestedSessionParams", v2, 0x26u);
}

- (void)validNewStartingClient:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Client has already been started", v2, v3, v4, v5, v6);
}

- (void)validNewStartingClient:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_8();
  _os_log_fault_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_FAULT, " [%s] %s:%d Client has already been started", v1, 0x1Cu);
}

+ (void)stringForPlaybackMode:.cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  v5 = "+[VCAudioSession stringForPlaybackMode:]";
  v6 = 1024;
  v7 = 608;
  v8 = 1024;
  v9 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unknown playbackMode=%d", v3, 0x22u);
}

+ (void)convertAudioSessionProperties:(NSObject *)a3 operatingMode:deviceRole:enableAudioPreWarming:audioClockDeviceEnabled:networkUplinkClockUsesBaseband:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "+[VCAudioSession convertAudioSessionProperties:operatingMode:deviceRole:enableAudioPreWarming:audioClockDeviceEnabled:networkUplinkClockUsesBaseband:]";
  v8 = 1024;
  v9 = 1003;
  v10 = 2080;
  v11 = [objc_msgSend(a2 "description")];
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Could not infer operating mode from audioMode = %s", &v4, 0x26u);
}

@end