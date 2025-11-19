@interface CHHapticEngine
+ (BOOL)resourceIsRegistered:(unint64_t)a3;
+ (id)capabilitiesForHardware;
+ (void)clearResourceMap;
+ (void)dispatchOnGlobal:(id)a3;
- (BOOL)checkEngineRunning:(id *)a3;
- (BOOL)checkEngineStateOnStart:(id *)a3;
- (BOOL)doInitWithOptions:(id)a3 error:(id *)a4;
- (BOOL)doPlayPattern:(id)a3 error:(id *)a4;
- (BOOL)doReferenceAudioResourceByID:(unint64_t)a3;
- (BOOL)doStartEngineAndWait:(id *)a3;
- (BOOL)doStopEngineAndWait:(id *)a3;
- (BOOL)doUnregisterAudioResource:(unint64_t)a3 fromPattern:(BOOL)a4 error:(id *)a5;
- (BOOL)finishInit:(id *)a3;
- (BOOL)hasPublicAudioResourceID:(unint64_t)a3;
- (BOOL)isResourceLoopEnabled:(unint64_t)a3;
- (BOOL)notifyPlayerStarted:(id)a3 atTime:(double)a4;
- (BOOL)playPatternFromData:(NSData *)data error:(NSError *)outError;
- (BOOL)playPatternFromURL:(NSURL *)fileURL error:(NSError *)outError;
- (BOOL)setupSystemSoundAudioSession:(id)a3 needsAudioPowerBudget:(BOOL)a4 error:(id *)a5;
- (BOOL)setupUnsharedAudioSession:(id)a3 isConstantVolume:(BOOL)a4 needsAudioPowerBudget:(BOOL)a5 error:(id *)a6;
- (BOOL)startAndReturnError:(NSError *)outError;
- (BOOL)unregisterAudioResource:(CHHapticAudioResourceID)resourceID error:(NSError *)outError;
- (CHHapticAudioResourceID)registerAudioResource:(NSURL *)resourceURL options:(NSDictionary *)options error:(NSError *)outError;
- (CHHapticEngine)initAndReturnError:(NSError *)error;
- (CHHapticEngine)initWithAudioSession:(AVAudioSession *)audioSession error:(NSError *)error;
- (CHHapticEngine)initWithOptions:(id)a3 error:(id *)a4;
- (NSString)locality;
- (__map_iterator<std::__tree_iterator<std::__value_type<unsigned)doFindPublicAudioResourceID:(unint64_t)a3;
- (double)getDurationForResource:(unint64_t)a3;
- (id).cxx_construct;
- (id)createAdvancedPlayerWithPattern:(CHHapticPattern *)pattern error:(NSError *)outError;
- (id)createAdvancedPlayerWithRingtoneData:(id)a3 error:(id *)a4;
- (id)createAdvancedPlayerWithRingtonePattern:(id)a3 error:(id *)a4;
- (id)createAdvancedPlayerWithVibePatternDictionary:(id)a3 error:(id *)a4;
- (id)createHapticPlayerWithOptions:(id)a3;
- (id)createPlayerWithPattern:(CHHapticPattern *)pattern error:(NSError *)outError;
- (id)createPrivilegedPlayerWithPlayable:(id)a3 error:(id *)a4;
- (id)getAvailableChannel:(id *)a3;
- (id)getMetricsForPlayer:(id)a3;
- (id)getUsageCategory:(id)a3;
- (int64_t)getReporterIDFromAVAudioSession:(id)a3;
- (unint64_t)doRegisterAudioResource:(id)a3 options:(id)a4 fromPattern:(BOOL)a5 error:(id *)a6;
- (unint64_t)idForPublicAudioResourceURL:(id)a3 withOptions:(id)a4;
- (unsigned)getSessionIDFromAVAudioSession:(id)a3;
- (void)addPublicAudioResourceID:(unint64_t)a3 withURL:(id)a4 options:(id)a5;
- (void)beginIdleTimer;
- (void)cancelIdleTimer;
- (void)connectAudioSession:(id)a3;
- (void)createProcessTaskToken;
- (void)dealloc;
- (void)deallocateProcessTaskToken;
- (void)disconnectAudioSession:(id)a3;
- (void)dispatchOnLocal:(id)a3;
- (void)dispatchSyncOnLocal:(id)a3;
- (void)doStartWithCompletionHandler:(id)a3;
- (void)doStopWithCompletionHandler:(id)a3;
- (void)doUnregisterAllAudioResources;
- (void)doUnregisterAllPublicAudioResources;
- (void)handleConnectionError;
- (void)handleFinish:(id)a3;
- (void)handleMediaServerDeath:(id)a3;
- (void)handleMediaServerRecovery:(id)a3;
- (void)notifyPlayerStopped:(id)a3 atTime:(double)a4;
- (void)notifyWhenPlayersFinished:(CHHapticEngineFinishedHandler)finishedHandler;
- (void)prewarmWithCompletionHandler:(id)a3;
- (void)reconfigureAudioSession;
- (void)releaseChannel:(id)a3;
- (void)removePublicAudioResourceID:(unint64_t)a3;
- (void)setAutoShutdownEnabled:(BOOL)autoShutdownEnabled;
- (void)setAutoShutdownTimeout:(double)a3;
- (void)setMuteHapticsWhileRecordingAudio:(BOOL)a3;
- (void)startIdleTimerWithHandler:(id)a3;
- (void)startWithCompletionHandler:(CHHapticCompletionHandler)completionHandler;
- (void)stopAndWait;
- (void)stopPrewarm;
- (void)stopWithCompletionHandler:(CHHapticCompletionHandler)completionHandler;
- (void)storeOptions:(id)a3;
- (void)toggleBehavior:(unint64_t)a3 set:(BOOL)a4;
- (void)updateAudioConfigurations:(id)a3 session:(id)a4;
- (void)updateEngineBehavior;
- (void)updateEngineBehaviorWithError:(id *)a3;
@end

@implementation CHHapticEngine

- (id).cxx_construct
{
  self->_processTaskTokenDict.fObj.fObj = xpc_null_create();
  self->_publicAudioResources.__tree_.__size_ = 0;
  self->_publicAudioResources.__tree_.__end_node_.__left_ = 0;
  self->_publicAudioResources.__tree_.__begin_node_ = &self->_publicAudioResources.__tree_.__end_node_;
  return self;
}

- (void)stopPrewarm
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = CALog::Scope::oslog(kHAPIScope);
  v4 = os_signpost_id_make_with_pointer(v3, self);

  v5 = CALog::Scope::oslog(kHAPIScope);
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v12) = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "HapticEngine_stopPrewarm", " enableTelemetry=YES ", &v12, 2u);
  }

  if (kHAPIScope)
  {
    v7 = *kHAPIScope;
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "CHHapticEngine.mm";
    v14 = 1024;
    v15 = 1224;
    v16 = 2080;
    v17 = "[CHHapticEngine stopPrewarm]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Stopping prewarm on the underlying Haptic Player", &v12, 0x1Cu);
  }

LABEL_11:
  [(AVHapticPlayer *)self->_player stopPrewarm];
  v9 = CALog::Scope::oslog(kHAPIScope);
  v10 = v9;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v12) = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v10, OS_SIGNPOST_INTERVAL_END, v4, "HapticEngine_stopPrewarm", &unk_215703E5B, &v12, 2u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)createProcessTaskToken
{
  v23 = *MEMORY[0x277D85DE8];
  self->_processTaskToken = 0;
  v3 = xpc_null_create();
  v4 = xpc_null_create();

  fObj = self->_processTaskTokenDict.fObj.fObj;
  self->_processTaskTokenDict.fObj.fObj = v3;

  token = 0;
  v6 = task_create_identity_token(*MEMORY[0x277D85F48], &token);
  if (v6)
  {
    if (kHAPIScope)
    {
      v7 = *kHAPIScope;
      if (!v7)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v7 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "CHHapticEngine.mm";
      v17 = 1024;
      v18 = 969;
      v19 = 2080;
      v20 = "[CHHapticEngine createProcessTaskToken]";
      v21 = 1024;
      v22 = v6;
      _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR creating identify token with error %d. Resource memory usage will be billed to server", buf, 0x22u);
    }
  }

  else
  {
    self->_processTaskToken = token;
    applesauce::xpc::dict::create(buf);
    v8 = *buf;
    v9 = xpc_null_create();
    v10 = *buf;
    *buf = v9;

    v11 = self->_processTaskTokenDict.fObj.fObj;
    self->_processTaskTokenDict.fObj.fObj = v8;

    v12 = *buf;
    *buf = 0;

    v7 = CALog::Scope::oslog(&self->_processTaskTokenDict.fObj.fObj);
    xpc_dictionary_set_mach_send();
  }

LABEL_10:
  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateEngineBehavior
{
  v15 = *MEMORY[0x277D85DE8];
  if (kHAPIScope)
  {
    v3 = *kHAPIScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  v5 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315906;
    v8 = "CHHapticEngine.mm";
    v9 = 1024;
    v10 = 865;
    v11 = 2080;
    v12 = "[CHHapticEngine updateEngineBehavior]";
    v13 = 1024;
    v14 = [(CHHapticEngine *)self currentPlayerBehavior];
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Setting player's behavior to 0x%x", &v7, 0x22u);
  }

LABEL_8:
  [(AVHapticPlayer *)self->_player setBehavior:[(CHHapticEngine *)self currentPlayerBehavior]];
  v6 = *MEMORY[0x277D85DE8];
}

+ (id)capabilitiesForHardware
{
  if (+[CHHapticEngine capabilitiesForHardware]::onceToken != -1)
  {
    +[CHHapticEngine capabilitiesForHardware];
  }

  v3 = +[CHHapticEngine capabilitiesForHardware]::sDefaultHardwareCapabilities;

  return v3;
}

- (void)reconfigureAudioSession
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(NSString *)self->_usageCategory isEqualToString:@"SystemSound"])
  {
    v3 = [(CHHapticEngine *)self avAudioSession];
    v4 = [v3 setCategory:*MEMORY[0x277CEFC78] withOptions:2 error:0];

    if ((v4 & 1) == 0)
    {
      if (kHAPIScope)
      {
        v5 = *kHAPIScope;
        if (!v5)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v5 = MEMORY[0x277D86220];
        v6 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315650;
        v9 = "CHHapticEngine.mm";
        v10 = 1024;
        v11 = 1140;
        v12 = 2080;
        v13 = "[CHHapticEngine reconfigureAudioSession]";
        _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Cannot reconfigure audio session for system sound", &v8, 0x1Cu);
      }
    }
  }

LABEL_10:
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __41__CHHapticEngine_capabilitiesForHardware__block_invoke()
{
  +[CHHapticEngine capabilitiesForHardware]::sDefaultHardwareCapabilities = [[CHDefaultHapticDeviceCapability alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)setupUnsharedAudioSession:(id)a3 isConstantVolume:(BOOL)a4 needsAudioPowerBudget:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v8 = a4;
  v37 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (kHAPIScope)
  {
    v10 = *kHAPIScope;
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = @"following ringer";
    *v32 = 136315906;
    *&v32[4] = "CHHapticEngineUsageCategory.mm";
    if (v8)
    {
      v12 = @"with constant";
    }

    *&v32[12] = 1024;
    *&v32[14] = 45;
    v33 = 2080;
    v34 = "[CHHapticEngine(EngineUsageCategory) setupUnsharedAudioSession:isConstantVolume:needsAudioPowerBudget:error:]";
    v35 = 2112;
    v36 = v12;
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Setting SS&H category %@ volume, disabling notifications and NowPlaying for this audio session", v32, 0x26u);
  }

LABEL_10:
  v13 = *MEMORY[0x277CEFC80];
  if ([v9 setCategory:v13 error:a6])
  {
    v14 = *MEMORY[0x277CEFC88];
    if (v8)
    {
      v15 = *MEMORY[0x277CEFC90];

      v14 = v15;
    }

    if (([v9 setMode:v14 error:{a6, *v32}] & 1) == 0)
    {
      if (kHAPIScope)
      {
        v16 = *kHAPIScope;
        if (!v16)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v16 = MEMORY[0x277D86220];
        v19 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v32 = 136315906;
        *&v32[4] = "CHHapticEngineUsageCategory.mm";
        *&v32[12] = 1024;
        *&v32[14] = 56;
        v33 = 2080;
        v34 = "[CHHapticEngine(EngineUsageCategory) setupUnsharedAudioSession:isConstantVolume:needsAudioPowerBudget:error:]";
        v35 = 2112;
        v36 = v14;
        _os_log_impl(&dword_21569A000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Failed to set mode %@ on audio session. Continue", v32, 0x26u);
      }
    }

LABEL_27:
    if ([v9 setAudioHardwareControlFlags:1179648 error:a6])
    {
      goto LABEL_35;
    }

    if (kHAPIScope)
    {
      v20 = *kHAPIScope;
      if (!v20)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v20 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v32 = 136315650;
      *&v32[4] = "CHHapticEngineUsageCategory.mm";
      *&v32[12] = 1024;
      *&v32[14] = 61;
      v33 = 2080;
      v34 = "[CHHapticEngine(EngineUsageCategory) setupUnsharedAudioSession:isConstantVolume:needsAudioPowerBudget:error:]";
      _os_log_impl(&dword_21569A000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Cannot set audio session with session flags. Continue", v32, 0x1Cu);
    }

LABEL_35:
    if ([v9 setPreferredIOBufferFrameSize:256 error:a6])
    {
      goto LABEL_43;
    }

    if (kHAPIScope)
    {
      v22 = *kHAPIScope;
      if (!v22)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v22 = MEMORY[0x277D86220];
      v23 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v32 = 136315906;
      *&v32[4] = "CHHapticEngineUsageCategory.mm";
      *&v32[12] = 1024;
      *&v32[14] = 64;
      v33 = 2080;
      v34 = "[CHHapticEngine(EngineUsageCategory) setupUnsharedAudioSession:isConstantVolume:needsAudioPowerBudget:error:]";
      v35 = 1024;
      LODWORD(v36) = 256;
      _os_log_impl(&dword_21569A000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Cannot set audio buffer frame size to %u. Using default buffer size", v32, 0x22u);
    }

LABEL_43:
    if ([v9 enableNotifications:0 error:a6])
    {
      if ([v9 setParticipatesInNowPlayingAppPolicy:0 error:a6])
      {
        if (!v7)
        {
          goto LABEL_53;
        }

        if (kHAPIScope)
        {
          if (*(kHAPIScope + 8))
          {
            v24 = *kHAPIScope;
            if (v24)
            {
              v25 = v24;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                *v32 = 136315650;
                *&v32[4] = "CHHapticEngineUsageCategory.mm";
                *&v32[12] = 1024;
                *&v32[14] = 77;
                v33 = 2080;
                v34 = "[CHHapticEngine(EngineUsageCategory) setupUnsharedAudioSession:isConstantVolume:needsAudioPowerBudget:error:]";
                _os_log_impl(&dword_21569A000, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Setting NeedsPowerBudgeting property on audio session", v32, 0x1Cu);
              }
            }
          }
        }

        if ([v9 setNeedsHighPowerBudgeting:1 error:a6])
        {
LABEL_53:
          LOBYTE(v17) = 1;
LABEL_69:

          goto LABEL_70;
        }

        if (kHAPIScope)
        {
          v17 = *kHAPIScope;
          if (!v17)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v17 = MEMORY[0x277D86220];
          v31 = MEMORY[0x277D86220];
        }

        if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_67;
        }

        *v32 = 136315650;
        *&v32[4] = "CHHapticEngineUsageCategory.mm";
        *&v32[12] = 1024;
        *&v32[14] = 79;
        v33 = 2080;
        v34 = "[CHHapticEngine(EngineUsageCategory) setupUnsharedAudioSession:isConstantVolume:needsAudioPowerBudget:error:]";
        v27 = "%25s:%-5d %s: Failed to set audio session NeedsPowerBudgeting";
      }

      else
      {
        if (kHAPIScope)
        {
          v17 = *kHAPIScope;
          if (!v17)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v17 = MEMORY[0x277D86220];
          v28 = MEMORY[0x277D86220];
        }

        if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_67;
        }

        *v32 = 136315650;
        *&v32[4] = "CHHapticEngineUsageCategory.mm";
        *&v32[12] = 1024;
        *&v32[14] = 72;
        v33 = 2080;
        v34 = "[CHHapticEngine(EngineUsageCategory) setupUnsharedAudioSession:isConstantVolume:needsAudioPowerBudget:error:]";
        v27 = "%25s:%-5d %s: Failed to disable audio session now-playing policy";
      }
    }

    else
    {
      if (kHAPIScope)
      {
        v17 = *kHAPIScope;
        if (!v17)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v17 = MEMORY[0x277D86220];
        v26 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      *v32 = 136315650;
      *&v32[4] = "CHHapticEngineUsageCategory.mm";
      *&v32[12] = 1024;
      *&v32[14] = 67;
      v33 = 2080;
      v34 = "[CHHapticEngine(EngineUsageCategory) setupUnsharedAudioSession:isConstantVolume:needsAudioPowerBudget:error:]";
      v27 = "%25s:%-5d %s: Failed to disable audio session notifications";
    }

    _os_log_impl(&dword_21569A000, v17, OS_LOG_TYPE_ERROR, v27, v32, 0x1Cu);
LABEL_67:

LABEL_68:
    LOBYTE(v17) = 0;
    goto LABEL_69;
  }

  if (!kHAPIScope)
  {
    v14 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
LABEL_21:
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v32 = 136315650;
      *&v32[4] = "CHHapticEngineUsageCategory.mm";
      *&v32[12] = 1024;
      *&v32[14] = 48;
      v33 = 2080;
      v34 = "[CHHapticEngine(EngineUsageCategory) setupUnsharedAudioSession:isConstantVolume:needsAudioPowerBudget:error:]";
      _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Failed to set category on audio session", v32, 0x1Cu);
    }

    goto LABEL_68;
  }

  v14 = *kHAPIScope;
  if (v14)
  {
    goto LABEL_21;
  }

  LOBYTE(v17) = 0;
LABEL_70:

  v29 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)setupSystemSoundAudioSession:(id)a3 needsAudioPowerBudget:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v40 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (kHAPIScope)
  {
    v8 = *kHAPIScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v32 = 136315650;
    v33 = "CHHapticEngineUsageCategory.mm";
    v34 = 1024;
    v35 = 92;
    v36 = 2080;
    v37 = "[CHHapticEngine(EngineUsageCategory) setupSystemSoundAudioSession:needsAudioPowerBudget:error:]";
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Setting for System Sound, disabling notifications and NowPlaying for this audio session", &v32, 0x1Cu);
  }

LABEL_8:
  if (([v7 setCategory:*MEMORY[0x277CEFC78] withOptions:2 error:a5] & 1) == 0)
  {
    if (kHAPIScope)
    {
      v11 = *kHAPIScope;
      if (!v11)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v11 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    v32 = 136315650;
    v33 = "CHHapticEngineUsageCategory.mm";
    v34 = 1024;
    v35 = 96;
    v36 = 2080;
    v37 = "[CHHapticEngine(EngineUsageCategory) setupSystemSoundAudioSession:needsAudioPowerBudget:error:]";
    v13 = "%25s:%-5d %s: Failed to set category on audio session";
    goto LABEL_42;
  }

  if (([v7 setAudioHardwareControlFlags:18 error:a5] & 1) == 0)
  {
    if (kHAPIScope)
    {
      v10 = *kHAPIScope;
      if (!v10)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v10 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v32 = 136315650;
      v33 = "CHHapticEngineUsageCategory.mm";
      v34 = 1024;
      v35 = 101;
      v36 = 2080;
      v37 = "[CHHapticEngine(EngineUsageCategory) setupSystemSoundAudioSession:needsAudioPowerBudget:error:]";
      _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Cannot set audio session with session flags. Continue", &v32, 0x1Cu);
    }
  }

LABEL_23:
  if ([v7 setPreferredIOBufferFrameSize:512 error:a5])
  {
    goto LABEL_31;
  }

  if (kHAPIScope)
  {
    v15 = *kHAPIScope;
    if (!v15)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v15 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v32 = 136315906;
    v33 = "CHHapticEngineUsageCategory.mm";
    v34 = 1024;
    v35 = 104;
    v36 = 2080;
    v37 = "[CHHapticEngine(EngineUsageCategory) setupSystemSoundAudioSession:needsAudioPowerBudget:error:]";
    v38 = 1024;
    v39 = 512;
    _os_log_impl(&dword_21569A000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Cannot set audio buffer frame size to %u", &v32, 0x22u);
  }

LABEL_31:
  if (([v7 enableNotifications:0 error:a5] & 1) == 0)
  {
    if (kHAPIScope)
    {
      v11 = *kHAPIScope;
      if (!v11)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v11 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    v32 = 136315650;
    v33 = "CHHapticEngineUsageCategory.mm";
    v34 = 1024;
    v35 = 108;
    v36 = 2080;
    v37 = "[CHHapticEngine(EngineUsageCategory) setupSystemSoundAudioSession:needsAudioPowerBudget:error:]";
    v13 = "%25s:%-5d %s: Failed to disable audio session notifications";
    goto LABEL_42;
  }

  if (([v7 setPrefersNoDucking:1 error:a5] & 1) == 0)
  {
    if (kHAPIScope)
    {
      v17 = *kHAPIScope;
      if (!v17)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v17 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v32 = 136315650;
      v33 = "CHHapticEngineUsageCategory.mm";
      v34 = 1024;
      v35 = 112;
      v36 = 2080;
      v37 = "[CHHapticEngine(EngineUsageCategory) setupSystemSoundAudioSession:needsAudioPowerBudget:error:]";
      _os_log_impl(&dword_21569A000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Failed to set not to be ducked by others", &v32, 0x1Cu);
    }
  }

LABEL_48:
  if ([v7 setParticipatesInNowPlayingAppPolicy:0 error:a5])
  {
    goto LABEL_56;
  }

  if (kHAPIScope)
  {
    v21 = *kHAPIScope;
    if (!v21)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v21 = MEMORY[0x277D86220];
    v22 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v32 = 136315650;
    v33 = "CHHapticEngineUsageCategory.mm";
    v34 = 1024;
    v35 = 115;
    v36 = 2080;
    v37 = "[CHHapticEngine(EngineUsageCategory) setupSystemSoundAudioSession:needsAudioPowerBudget:error:]";
    _os_log_impl(&dword_21569A000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Failed to disable audio session now-playing policy", &v32, 0x1Cu);
  }

LABEL_56:
  LODWORD(v20) = 1036831949;
  v23 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
  v24 = [v7 setDuckToLevelScalar:v23 error:a5];

  if ((v24 & 1) == 0)
  {
    if (kHAPIScope)
    {
      v25 = *kHAPIScope;
      if (!v25)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v25 = MEMORY[0x277D86220];
      v26 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v32 = 136315650;
      v33 = "CHHapticEngineUsageCategory.mm";
      v34 = 1024;
      v35 = 118;
      v36 = 2080;
      v37 = "[CHHapticEngine(EngineUsageCategory) setupSystemSoundAudioSession:needsAudioPowerBudget:error:]";
      _os_log_impl(&dword_21569A000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Failed to set duck level", &v32, 0x1Cu);
    }
  }

LABEL_64:
  if (!v6)
  {
    goto LABEL_72;
  }

  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v27 = *kHAPIScope;
      if (v27)
      {
        v28 = v27;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v32 = 136315650;
          v33 = "CHHapticEngineUsageCategory.mm";
          v34 = 1024;
          v35 = 121;
          v36 = 2080;
          v37 = "[CHHapticEngine(EngineUsageCategory) setupSystemSoundAudioSession:needsAudioPowerBudget:error:]";
          _os_log_impl(&dword_21569A000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Setting NeedsPowerBudgeting property on audio session", &v32, 0x1Cu);
        }
      }
    }
  }

  if ([v7 setNeedsHighPowerBudgeting:1 error:a5])
  {
LABEL_72:
    LOBYTE(v11) = 1;
    goto LABEL_73;
  }

  if (kHAPIScope)
  {
    v11 = *kHAPIScope;
    if (!v11)
    {
      goto LABEL_73;
    }
  }

  else
  {
    v11 = MEMORY[0x277D86220];
    v31 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v32 = 136315650;
    v33 = "CHHapticEngineUsageCategory.mm";
    v34 = 1024;
    v35 = 123;
    v36 = 2080;
    v37 = "[CHHapticEngine(EngineUsageCategory) setupSystemSoundAudioSession:needsAudioPowerBudget:error:]";
    v13 = "%25s:%-5d %s: Failed to set audio session NeedsPowerBudgeting";
LABEL_42:
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_ERROR, v13, &v32, 0x1Cu);
  }

LABEL_43:

  LOBYTE(v11) = 0;
LABEL_73:

  v29 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)getUsageCategory:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 valueForKey:@"UsageCategory"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateAudioConfigurations:(id)a3 session:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6 || ![v6 isEqualToString:@"iOSKeyboard"])
  {
    goto LABEL_10;
  }

  if ([(CHHapticEngine *)self playsAudioOnly]|| [(CHHapticEngine *)self playsHapticsOnly])
  {
    if ([(CHHapticEngine *)self playsAudioOnly])
    {
      v15 = 0;
      v8 = [v7 setPreferredIOBufferFrameSize:1024 error:&v15];
      v9 = v15;
      if ((v8 & 1) == 0)
      {
        if (kHAPIScope)
        {
          v10 = *kHAPIScope;
          if (!v10)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v10 = MEMORY[0x277D86220];
          v13 = MEMORY[0x277D86220];
        }

        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

        *buf = 136316162;
        v18 = "CHHapticEngineUsageCategory.mm";
        v19 = 1024;
        v20 = 192;
        v21 = 2080;
        v22 = "[CHHapticEngine(EngineUsageCategory) updateAudioConfigurations:session:]";
        v23 = 1024;
        v24 = 1024;
        v25 = 2112;
        v26 = v9;
        goto LABEL_22;
      }

      goto LABEL_11;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v16 = 0;
  v12 = [v7 setPreferredIOBufferFrameSize:256 error:&v16];
  v9 = v16;
  if ((v12 & 1) == 0)
  {
    if (kHAPIScope)
    {
      v10 = *kHAPIScope;
      if (!v10)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v10 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 136316162;
    v18 = "CHHapticEngineUsageCategory.mm";
    v19 = 1024;
    v20 = 186;
    v21 = 2080;
    v22 = "[CHHapticEngine(EngineUsageCategory) updateAudioConfigurations:session:]";
    v23 = 1024;
    v24 = 256;
    v25 = 2112;
    v26 = v9;
LABEL_22:
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Cannot set audio buffer frame size to %u. Error: %@", buf, 0x2Cu);
LABEL_23:
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)clearResourceMap
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = _sResourceMutex;
  std::mutex::lock(_sResourceMutex);
  v4 = ResourceRegistry::instance(v3);
  if (!ResourceRegistry::empty(v4))
  {
    if (kHAPIScope)
    {
      v5 = *kHAPIScope;
      if (!v5)
      {
LABEL_9:
        ResourceRegistry::clear(v4);
        goto LABEL_10;
      }
    }

    else
    {
      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 136315650;
      v9 = "CHHapticEngine.mm";
      v10 = 1024;
      v11 = 309;
      v12 = 2080;
      v13 = "+[CHHapticEngine clearResourceMap]";
      _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Clearing resource map", &v8, 0x1Cu);
    }

    goto LABEL_9;
  }

LABEL_10:
  std::mutex::unlock(v2);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)toggleBehavior:(unint64_t)a3 set:(BOOL)a4
{
  v4 = a4;
  v7 = [(CHHapticEngine *)self currentPlayerBehavior];
  if (v4)
  {
    v8 = v7 | a3;
  }

  else
  {
    v8 = v7 & ~a3;
  }

  [(CHHapticEngine *)self setCurrentPlayerBehavior:v8];
}

- (void)setMuteHapticsWhileRecordingAudio:(BOOL)a3
{
  [(CHHapticEngine *)self toggleBehavior:512 set:!a3];

  [(CHHapticEngine *)self updateEngineBehavior];
}

- (void)setAutoShutdownEnabled:(BOOL)autoShutdownEnabled
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_autoShutdownEnabled != autoShutdownEnabled)
  {
    v3 = autoShutdownEnabled;
    self->_autoShutdownEnabled = autoShutdownEnabled;
    v4 = self;
    objc_sync_enter(v4);
    if (v3)
    {
      if ([(CHHapticEngine *)v4 running])
      {
        if (kHAPIScope)
        {
          v5 = *kHAPIScope;
          if (!v5)
          {
LABEL_19:
            objc_initWeak(buf, v4);
            v9 = [(CHHapticEngine *)v4 player];
            v12[0] = MEMORY[0x277D85DD0];
            v12[1] = 3221225472;
            v12[2] = __41__CHHapticEngine_setAutoShutdownEnabled___block_invoke;
            v12[3] = &unk_2781C8FE0;
            objc_copyWeak(&v13, buf);
            [v9 finishWithCompletionHandler:v12];

            objc_destroyWeak(&v13);
            objc_destroyWeak(buf);
            goto LABEL_20;
          }
        }

        else
        {
          v5 = MEMORY[0x277D86220];
          v8 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v15 = "CHHapticEngine.mm";
          v16 = 1024;
          v17 = 417;
          v18 = 2080;
          v19 = "[CHHapticEngine setAutoShutdownEnabled:]";
          _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s: auto-shutdown being enabled while running - wait for any existing players", buf, 0x1Cu);
        }

        goto LABEL_19;
      }

LABEL_20:
      objc_sync_exit(v4);

      goto LABEL_21;
    }

    if (kHAPIScope)
    {
      v6 = *kHAPIScope;
      if (!v6)
      {
LABEL_14:
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __41__CHHapticEngine_setAutoShutdownEnabled___block_invoke_160;
        v11[3] = &unk_2781C9700;
        v11[4] = v4;
        [(CHHapticEngine *)v4 dispatchOnLocal:v11];
        goto LABEL_20;
      }
    }

    else
    {
      v6 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v15 = "CHHapticEngine.mm";
      v16 = 1024;
      v17 = 429;
      v18 = 2080;
      v19 = "[CHHapticEngine setAutoShutdownEnabled:]";
      _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_INFO, "%25s:%-5d %s: auto-shutdown being disabled", buf, 0x1Cu);
    }

    goto LABEL_14;
  }

LABEL_21:
  v10 = *MEMORY[0x277D85DE8];
}

void __41__CHHapticEngine_setAutoShutdownEnabled___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (kHAPIScope)
  {
    v4 = *kHAPIScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315650;
    v13 = "CHHapticEngine.mm";
    v14 = 1024;
    v15 = 420;
    v16 = 2080;
    v17 = "[CHHapticEngine setAutoShutdownEnabled:]_block_invoke";
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Top of AV finishWithCompletionHandler block>", &v12, 0x1Cu);
  }

LABEL_8:
  if (!v3)
  {
    goto LABEL_16;
  }

  if (kHAPIScope)
  {
    v6 = *kHAPIScope;
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v12 = 136315906;
    v13 = "CHHapticEngine.mm";
    v14 = 1024;
    v15 = 421;
    v16 = 2080;
    v17 = "[CHHapticEngine setAutoShutdownEnabled:]_block_invoke";
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: finishWithCompletionHandler callback returned error: %@", &v12, 0x26u);
  }

LABEL_16:
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleFinish:v3];
  if (kHAPIScope)
  {
    v9 = *kHAPIScope;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315650;
    v13 = "CHHapticEngine.mm";
    v14 = 1024;
    v15 = 424;
    v16 = 2080;
    v17 = "[CHHapticEngine setAutoShutdownEnabled:]_block_invoke";
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Bottom of AV finishWithCompletionHandler block>", &v12, 0x1Cu);
  }

LABEL_23:
  v11 = *MEMORY[0x277D85DE8];
}

- (NSString)locality
{
  v2 = [(CHHapticEngine *)self serverConfig];
  v3 = [v2 currentLocality];

  return v3;
}

- (void)setAutoShutdownTimeout:(double)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (a3 >= 0.0)
  {
    self->_runTimeout = a3;
  }

  else
  {
    if (kHAPIScope)
    {
      v4 = *kHAPIScope;
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v4 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315906;
      v8 = "CHHapticEngine.mm";
      v9 = 1024;
      v10 = 479;
      v11 = 2080;
      v12 = "[CHHapticEngine setAutoShutdownTimeout:]";
      v13 = 2048;
      v14 = a3;
      _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Invalid shutdown timeout (%f) being ignored", &v7, 0x26u);
    }
  }

LABEL_10:
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleMediaServerDeath:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (kHAPIScope)
  {
    v5 = *kHAPIScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315906;
    v13 = "CHHapticEngine.mm";
    v14 = 1024;
    v15 = 501;
    v16 = 2080;
    v17 = "[CHHapticEngine handleMediaServerDeath:]";
    v18 = 2048;
    v19 = self;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Engine %p was notified of server death", &v12, 0x26u);
  }

LABEL_8:
  +[CHHapticEngine clearResourceMap];
  v7 = self;
  objc_sync_enter(v7);
  if (kHAPIScope)
  {
    v8 = *kHAPIScope;
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315650;
    v13 = "CHHapticEngine.mm";
    v14 = 1024;
    v15 = 504;
    v16 = 2080;
    v17 = "[CHHapticEngine handleMediaServerDeath:]";
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Clearing public audio resources", &v12, 0x1Cu);
  }

LABEL_15:
  std::__tree<std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>>>::destroy(&v7->_publicAudioResources, v7->_publicAudioResources.__tree_.__end_node_.__left_);
  player = v7->_player;
  v7->_publicAudioResources.__tree_.__size_ = 0;
  v7->_player = 0;
  v7->_publicAudioResources.__tree_.__begin_node_ = &v7->_publicAudioResources.__tree_.__end_node_;
  v7->_publicAudioResources.__tree_.__end_node_.__left_ = 0;

  objc_sync_exit(v7);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleMediaServerRecovery:(id)a3
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__CHHapticEngine_handleMediaServerRecovery___block_invoke;
  v4[3] = &unk_2781C9728;
  v4[4] = self;
  objc_copyWeak(&v5, &location);
  [CHHapticEngine dispatchOnGlobal:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __44__CHHapticEngine_handleMediaServerRecovery___block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = CALog::Scope::oslog(kHAPIScope);
  v3 = os_signpost_id_make_with_pointer(v2, *(a1 + 32));

  v4 = CALog::Scope::oslog(kHAPIScope);
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "HapticEngine_handleMediaServerRecovery", " enableTelemetry=YES ", buf, 2u);
  }

  if (kHAPIScope)
  {
    v6 = *kHAPIScope;
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    *buf = 136315906;
    v48 = "CHHapticEngine.mm";
    v49 = 1024;
    v50 = 516;
    v51 = 2080;
    v52 = "[CHHapticEngine handleMediaServerRecovery:]_block_invoke";
    v53 = 2048;
    v54 = WeakRetained;
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Attempting to reconnect engine %p to server", buf, 0x26u);
  }

LABEL_11:
  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = v10;
  if (v10)
  {
    if ([v10 isAutoShutdownEnabled])
    {
      [v11 cancelIdleTimer];
    }

    v12 = [v11 avAudioSession];
    *(v11 + 6) = [v11 getSessionIDFromAVAudioSession:v12];

    if (([v11 sessionIsShared] & 1) == 0)
    {
      v13 = [v11 usageCategory];
      v14 = v13 == 0;

      if (!v14)
      {
        v15 = [v11 usageCategory];
        v16 = [v11 avAudioSession];
        v46 = 0;
        v17 = [v11 setupEngineWithCategory:v15 session:v16 needsAudioPowerBudget:objc_msgSend(v11 error:{"needsAudioPowerBudget"), &v46}];
        v18 = v46;

        if ((v17 & 1) == 0)
        {
          Haptic_RaiseException(&cfstr_Chhapticerrorc.isa, &cfstr_FailedToSetUpA.isa, [v18 code]);
        }

LABEL_32:
        if (!*(v11 + 6))
        {
          Haptic_RaiseException(&cfstr_Chhapticerrorc.isa, &cfstr_FailedToSetUpA_0.isa, -4815);
        }

        v22 = [*(a1 + 32) createOptionsFromAudioSessionID:objc_msgSend(v11 shared:"audioSessionID") bypassAudioSession:{objc_msgSend(v11, "sessionIsShared"), 0}];
        v23 = [v11 createHapticPlayerWithOptions:v22];
        v24 = v11[9];
        v11[9] = v23;

        v25 = [HapticServerConfig alloc];
        v26 = v11[9];
        v27 = v11[24];
        v45 = v18;
        v28 = [(HapticServerConfig *)v25 initWithHapticPlayer:v26 withOptions:v27 error:&v45];
        v29 = v45;

        v30 = v11[17];
        v11[17] = v28;

        if (v29)
        {
          Haptic_RaiseException(&cfstr_Chhapticerrorc.isa, &cfstr_FailedToRecrea.isa, [v29 code]);
        }

        v44 = 0;
        v31 = [v11 finishInit:&v44];
        v32 = v44;

        v33 = v32;
        if (!v31)
        {
          goto LABEL_54;
        }

        v34 = [v11 resetHandler];
        v35 = v34 == 0;

        if (v35)
        {
LABEL_46:
          if (kHAPIScope)
          {
            v39 = *kHAPIScope;
            if (!v39)
            {
LABEL_53:
              v41 = [v11 metrics];
              [v41 handleServerRecovery];

LABEL_54:
              v42 = CALog::Scope::oslog(kHAPIScope);
              v19 = v42;
              if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_21569A000, v19, OS_SIGNPOST_INTERVAL_END, v3, "HapticEngine_handleMediaServerRecovery", &unk_215703E5B, buf, 2u);
              }

              goto LABEL_57;
            }
          }

          else
          {
            v39 = MEMORY[0x277D86220];
            v40 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            v48 = "CHHapticEngine.mm";
            v49 = 1024;
            v50 = 557;
            v51 = 2080;
            v52 = "[CHHapticEngine handleMediaServerRecovery:]_block_invoke";
            v53 = 2048;
            v54 = v11;
            _os_log_impl(&dword_21569A000, v39, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Done with reconnect for engine %p", buf, 0x26u);
          }

          goto LABEL_53;
        }

        if (kHAPIScope)
        {
          v36 = *kHAPIScope;
          if (!v36)
          {
LABEL_45:
            v38 = [v11 resetHandler];
            v38[2]();

            goto LABEL_46;
          }
        }

        else
        {
          v36 = MEMORY[0x277D86220];
          v37 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v48 = "CHHapticEngine.mm";
          v49 = 1024;
          v50 = 554;
          v51 = 2080;
          v52 = "[CHHapticEngine handleMediaServerRecovery:]_block_invoke";
          _os_log_impl(&dword_21569A000, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Calling engine-reset handler on default queue", buf, 0x1Cu);
        }

        goto LABEL_45;
      }

      if (kHAPIScope)
      {
        v18 = *kHAPIScope;
        if (!v18)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v18 = MEMORY[0x277D86220];
        v21 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v48 = "CHHapticEngine.mm";
        v49 = 1024;
        v50 = 536;
        v51 = 2080;
        v52 = "[CHHapticEngine handleMediaServerRecovery:]_block_invoke";
        _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Engine had external passed-in auxiliary session. Caller should reconfigure session", buf, 0x1Cu);
      }
    }

    v18 = 0;
    goto LABEL_32;
  }

  if (kHAPIScope)
  {
    v19 = *kHAPIScope;
    if (!v19)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v19 = MEMORY[0x277D86220];
    v20 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v48 = "CHHapticEngine.mm";
    v49 = 1024;
    v50 = 519;
    v51 = 2080;
    v52 = "[CHHapticEngine handleMediaServerRecovery:]_block_invoke";
    _os_log_impl(&dword_21569A000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Engine already destroyed - noop", buf, 0x1Cu);
  }

LABEL_57:

LABEL_58:
  v43 = *MEMORY[0x277D85DE8];
}

- (void)connectAudioSession:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    v5 = AVFASoftLink::getAVAudioSessionMediaServicesWereLostNotification(v4);
    [(AVFASoftLink *)v4 addObserver:self selector:sel_handleMediaServerDeath_ name:v5 object:v8];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = AVFASoftLink::getAVAudioSessionMediaServicesWereResetNotification(v6);
    [(AVFASoftLink *)v6 addObserver:self selector:sel_handleMediaServerRecovery_ name:v7 object:v8];
  }
}

- (void)disconnectAudioSession:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    v5 = AVFASoftLink::getAVAudioSessionMediaServicesWereResetNotification(v4);
    [(AVFASoftLink *)v4 removeObserver:self name:v5 object:v8];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = AVFASoftLink::getAVAudioSessionMediaServicesWereLostNotification(v6);
    [(AVFASoftLink *)v6 removeObserver:self name:v7 object:v8];
  }
}

- (unsigned)getSessionIDFromAVAudioSession:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    AVFASoftLink::getAVAudioSession(v3);
    LODWORD(v5) = [(AVFASoftLink *)v4 opaqueSessionID];
  }

  else
  {
    if (kHAPIScope)
    {
      v5 = *kHAPIScope;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315650;
      v10 = "CHHapticEngine.mm";
      v11 = 1024;
      v12 = 603;
      v13 = 2080;
      v14 = "[CHHapticEngine getSessionIDFromAVAudioSession:]";
      _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: No audio session used. Returning 0", &v9, 0x1Cu);
    }

    LODWORD(v5) = 0;
  }

LABEL_10:

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (int64_t)getReporterIDFromAVAudioSession:(id)a3
{
  v3 = a3;
  AVFASoftLink::getAVAudioSession(v3);
  v4 = [(AVFASoftLink *)v3 reporterID];

  return v4;
}

- (id)createHapticPlayerWithOptions:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!kHAPIScope)
  {
    v4 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
    goto LABEL_5;
  }

  v4 = *kHAPIScope;
  if (v4)
  {
LABEL_5:
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v23 = "CHHapticEngine.mm";
      v24 = 1024;
      v25 = 626;
      v26 = 2080;
      v27 = "[CHHapticEngine createHapticPlayerWithOptions:]";
      _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating underlying Haptic Player", buf, 0x1Cu);
    }
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = MEMORY[0x277D86220];
  *&v5 = 136315906;
  v20 = v5;
  do
  {
    if (v9)
    {
      if (kHAPIScope)
      {
        v11 = *kHAPIScope;
        if (!v11)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v12 = v10;
        v11 = v10;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = v20;
        v23 = "CHHapticEngine.mm";
        v24 = 1024;
        v25 = 631;
        v26 = 2080;
        v27 = "[CHHapticEngine createHapticPlayerWithOptions:]";
        v28 = 1024;
        LODWORD(v29) = v9;
        _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Attempt #%d...", buf, 0x22u);
      }
    }

LABEL_17:
    v13 = [AVHapticPlayer alloc];
    v21 = v7;
    v14 = [(AVHapticPlayer *)v13 initWithOptions:v3 error:&v21];
    v15 = v21;

    if (v9 > 4)
    {
      break;
    }

    ++v9;
    v7 = v15;
    v8 = v14;
  }

  while (v15);
  if (v15)
  {
    if (kHAPIScope)
    {
      v16 = *kHAPIScope;
      if (!v16)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = v20;
      v23 = "CHHapticEngine.mm";
      v24 = 1024;
      v25 = 635;
      v26 = 2080;
      v27 = "[CHHapticEngine createHapticPlayerWithOptions:]";
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&dword_21569A000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Server failure: %@", buf, 0x26u);
    }

LABEL_28:
    Haptic_RaiseException(&cfstr_Chhapticerrorc.isa, &cfstr_FailedToConnec.isa, [v15 code]);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)handleConnectionError
{
  obj = self;
  objc_sync_enter(obj);
  player = obj->_player;
  obj->_player = 0;

  [(CHHapticEngine *)obj setRunning:0];
  objc_sync_exit(obj);
}

- (BOOL)finishInit:(id *)a3
{
  v50 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__3;
  v41 = __Block_byref_object_dispose__3;
  v42 = 0;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __29__CHHapticEngine_finishInit___block_invoke;
  v35[3] = &unk_2781C8FE0;
  objc_copyWeak(&v36, &location);
  v5 = [(CHHapticEngine *)self player];
  [v5 setConnectionErrorHandler:v35];

  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  if (kHAPIScope)
  {
    v7 = *kHAPIScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v45 = "CHHapticEngine.mm";
    v46 = 1024;
    v47 = 664;
    v48 = 2080;
    v49 = "[CHHapticEngine finishInit:]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Allocating resources...", buf, 0x1Cu);
  }

LABEL_8:
  v9 = [(CHHapticEngine *)self player];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __29__CHHapticEngine_finishInit___block_invoke_185;
  v32[3] = &unk_2781C9750;
  v34 = &v37;
  v10 = v6;
  v33 = v10;
  [v9 allocateRenderResourcesWithCompletionHandler:v32];

  if (kHAPIScope)
  {
    v11 = *kHAPIScope;
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v45 = "CHHapticEngine.mm";
    v46 = 1024;
    v47 = 673;
    v48 = 2080;
    v49 = "[CHHapticEngine finishInit:]";
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Waiting for server...", buf, 0x1Cu);
  }

LABEL_15:
  v13 = dispatch_time(0, 4000000000);
  if (!dispatch_group_wait(v10, v13))
  {
    goto LABEL_24;
  }

  if (!kHAPIScope)
  {
    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
    goto LABEL_20;
  }

  v14 = *kHAPIScope;
  if (v14)
  {
LABEL_20:
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v45 = "CHHapticEngine.mm";
      v46 = 1024;
      v47 = 676;
      v48 = 2080;
      v49 = "[CHHapticEngine finishInit:]";
      _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Server timeout", buf, 0x1Cu);
    }
  }

  v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4810 userInfo:0];
  v17 = v38[5];
  v38[5] = v16;

LABEL_24:
  if (a3)
  {
    *a3 = v38[5];
  }

  v18 = v38[5];
  if (!v18)
  {
    v19 = [(CHHapticEngine *)self sessionIsShared];
    if (v19)
    {
      if (kHAPIScope)
      {
        v20 = *kHAPIScope;
        if (!v20)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v20 = MEMORY[0x277D86220];
        v21 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v45 = "CHHapticEngine.mm";
        v46 = 1024;
        v47 = 686;
        v48 = 2080;
        v49 = "[CHHapticEngine finishInit:]";
        v22 = "%25s:%-5d %s: Default behavior is to follow audio route";
LABEL_40:
        _os_log_impl(&dword_21569A000, v20, OS_LOG_TYPE_DEBUG, v22, buf, 0x1Cu);
      }
    }

    else
    {
      if (kHAPIScope)
      {
        v20 = *kHAPIScope;
        if (!v20)
        {
LABEL_42:
          [(CHHapticEngine *)self setFollowAudioRoute:v19];
          [(CHHapticEngine *)self updateEngineBehavior];
          objc_storeWeak(&location, self);
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __29__CHHapticEngine_finishInit___block_invoke_186;
          v30[3] = &unk_2781C9778;
          objc_copyWeak(&v31, &location);
          v24 = MEMORY[0x21606F540](v30);
          v25 = [(CHHapticEngine *)self player];
          [v25 setStopRunningHandler:v24];

          if (kHAPIScope)
          {
            v26 = *kHAPIScope;
            if (!v26)
            {
LABEL_49:

              objc_destroyWeak(&v31);
              goto LABEL_50;
            }
          }

          else
          {
            v26 = MEMORY[0x277D86220];
            v27 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v45 = "CHHapticEngine.mm";
            v46 = 1024;
            v47 = 730;
            v48 = 2080;
            v49 = "[CHHapticEngine finishInit:]";
            _os_log_impl(&dword_21569A000, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Finished initializing", buf, 0x1Cu);
          }

          goto LABEL_49;
        }
      }

      else
      {
        v20 = MEMORY[0x277D86220];
        v23 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v45 = "CHHapticEngine.mm";
        v46 = 1024;
        v47 = 691;
        v48 = 2080;
        v49 = "[CHHapticEngine finishInit:]";
        v22 = "%25s:%-5d %s: Setting behavior to not follow audio route";
        goto LABEL_40;
      }
    }

    goto LABEL_42;
  }

LABEL_50:

  objc_destroyWeak(&v36);
  _Block_object_dispose(&v37, 8);

  objc_destroyWeak(&location);
  v28 = *MEMORY[0x277D85DE8];
  return v18 == 0;
}

void __29__CHHapticEngine_finishInit___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (kHAPIScope)
  {
    v4 = *kHAPIScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  v6 = v4;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [v3 localizedDescription];
    v15 = 136315906;
    v16 = "CHHapticEngine.mm";
    v17 = 1024;
    v18 = 656;
    v19 = 2080;
    v20 = "[CHHapticEngine finishInit:]_block_invoke";
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Server connection broke with error '%@'", &v15, 0x26u);
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleConnectionError];

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 serverConfig];
  v11 = [v10 usingInternalHaptics];

  if (v11)
  {
    if (kHAPIScope)
    {
      v12 = *kHAPIScope;
      if (!v12)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v12 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315650;
      v16 = "CHHapticEngine.mm";
      v17 = 1024;
      v18 = 659;
      v19 = 2080;
      v20 = "[CHHapticEngine finishInit:]_block_invoke";
      _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Waiting to reconnect", &v15, 0x1Cu);
    }
  }

LABEL_16:

  v14 = *MEMORY[0x277D85DE8];
}

void __29__CHHapticEngine_finishInit___block_invoke_185(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    if (kHAPIScope)
    {
      v5 = *kHAPIScope;
      if (!v5)
      {
LABEL_9:
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
        goto LABEL_10;
      }
    }

    else
    {
      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    v7 = v5;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v4 localizedDescription];
      v12 = 136315906;
      v13 = "CHHapticEngine.mm";
      v14 = 1024;
      v15 = 667;
      v16 = 2080;
      v17 = "[CHHapticEngine finishInit:]_block_invoke";
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Resource allocation failure: %@", &v12, 0x26u);
    }

    goto LABEL_9;
  }

LABEL_10:
  if (kHAPIScope)
  {
    v9 = *kHAPIScope;
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315650;
    v13 = "CHHapticEngine.mm";
    v14 = 1024;
    v15 = 670;
    v16 = 2080;
    v17 = "[CHHapticEngine finishInit:]_block_invoke";
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Releasing lock", &v12, 0x1Cu);
  }

LABEL_17:
  dispatch_group_leave(*(a1 + 32));

  v11 = *MEMORY[0x277D85DE8];
}

void __29__CHHapticEngine_finishInit___block_invoke_186(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (kHAPIScope)
  {
    v4 = *kHAPIScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v11 = "CHHapticEngine.mm";
    v12 = 1024;
    v13 = 698;
    v14 = 2080;
    v15 = "[CHHapticEngine finishInit:]_block_invoke";
    v16 = 1024;
    v17 = a2;
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_INFO, "%25s:%-5d %s: In player's stopRunningHandler block.  Stopped reason: %d", buf, 0x22u);
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __29__CHHapticEngine_finishInit___block_invoke_187;
  v8[3] = &unk_2781C9238;
  objc_copyWeak(v9, (a1 + 32));
  v9[1] = a2;
  [WeakRetained dispatchOnLocal:v8];

  objc_destroyWeak(v9);
  v7 = *MEMORY[0x277D85DE8];
}

void __29__CHHapticEngine_finishInit___block_invoke_187(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isAutoShutdownEnabled];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 cancelIdleTimer];
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = v5;
  if (v5)
  {
    [v5 setRunning:0];
    v7 = [v6 stoppedHandler];

    if (v7)
    {
      v8 = *(a1 + 40) + 2;
      if (v8 >= 6)
      {
        v9 = 0;
      }

      else
      {
        v9 = qword_2156F3A18[v8];
      }

      if (kHAPIScope)
      {
        v10 = *kHAPIScope;
        if (!v10)
        {
LABEL_15:
          v12 = [v6 stoppedHandler];
          v12[2](v12, v9);

          goto LABEL_16;
        }
      }

      else
      {
        v10 = MEMORY[0x277D86220];
        v11 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315906;
        v15 = "CHHapticEngine.mm";
        v16 = 1024;
        v17 = 723;
        v18 = 2080;
        v19 = "[CHHapticEngine finishInit:]_block_invoke";
        v20 = 1024;
        v21 = v9;
        _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Calling engine-stopped handler with reason %d", &v14, 0x22u);
      }

      goto LABEL_15;
    }
  }

LABEL_16:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)startIdleTimerWithHandler:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (kHPWRScope)
  {
    v5 = *kHPWRScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  v7 = v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(CHHapticEngine *)self autoShutdownTimeout];
    *buf = 136315906;
    v21 = "CHHapticEngine.mm";
    v22 = 1024;
    v23 = 752;
    v24 = 2080;
    v25 = "[CHHapticEngine startIdleTimerWithHandler:]";
    v26 = 2048;
    v27 = v8;
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating idle timer for %.3f seconds", buf, 0x26u);
  }

LABEL_8:
  [(CHHapticEngine *)self autoShutdownTimeout];
  v10 = v9;
  dispatchQueue = self->_dispatchQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __44__CHHapticEngine_startIdleTimerWithHandler___block_invoke;
  handler[3] = &unk_2781C9260;
  v19 = v4;
  v12 = v4;
  v13 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, dispatchQueue);
  if (v13)
  {
    v14 = v10;
    v15 = dispatch_time(0, (v14 * 1000000000.0));
    dispatch_source_set_timer(v13, v15, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    dispatch_source_set_event_handler(v13, handler);
    dispatch_resume(v13);
  }

  timer = self->_timer;
  self->_timer = v13;

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __44__CHHapticEngine_startIdleTimerWithHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (kHPWRScope)
  {
    v2 = *kHPWRScope;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "CHHapticEngine.mm";
    v8 = 1024;
    v9 = 754;
    v10 = 2080;
    v11 = "[CHHapticEngine startIdleTimerWithHandler:]_block_invoke";
    _os_log_impl(&dword_21569A000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Calling idle timeout handler on internal queue", &v6, 0x1Cu);
  }

LABEL_8:
  result = (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)beginIdleTimer
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __32__CHHapticEngine_beginIdleTimer__block_invoke;
  v3[3] = &unk_2781C9420;
  objc_copyWeak(&v4, &location);
  [(CHHapticEngine *)self dispatchOnLocal:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __32__CHHapticEngine_beginIdleTimer__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (kHPWRScope)
  {
    v2 = *kHPWRScope;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v11 = "CHHapticEngine.mm";
    v12 = 1024;
    v13 = 763;
    v14 = 2080;
    v15 = "[CHHapticEngine beginIdleTimer]_block_invoke";
    _os_log_impl(&dword_21569A000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Starting idle timer (on async dispatch)", buf, 0x1Cu);
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_initWeak(buf, WeakRetained);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__CHHapticEngine_beginIdleTimer__block_invoke_189;
  v7[3] = &unk_2781C97A0;
  objc_copyWeak(&v9, buf);
  v8 = WeakRetained;
  v5 = WeakRetained;
  [v5 startIdleTimerWithHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  v6 = *MEMORY[0x277D85DE8];
}

void __32__CHHapticEngine_beginIdleTimer__block_invoke_189(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (kHPWRScope)
  {
    v4 = *kHPWRScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v12 = "CHHapticEngine.mm";
    v13 = 1024;
    v14 = 767;
    v15 = 2080;
    v16 = "[CHHapticEngine beginIdleTimer]_block_invoke";
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Stopping engine in response to timeout", buf, 0x1Cu);
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __32__CHHapticEngine_beginIdleTimer__block_invoke_190;
  v8[3] = &unk_2781C97A0;
  objc_copyWeak(&v10, (a1 + 40));
  v9 = *(a1 + 32);
  [WeakRetained stopWithCompletionHandler:v8];

  objc_destroyWeak(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void __32__CHHapticEngine_beginIdleTimer__block_invoke_190(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) stoppedHandler];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __32__CHHapticEngine_beginIdleTimer__block_invoke_2;
    v5[3] = &unk_2781C9260;
    v6 = v3;
    v4 = v3;
    [WeakRetained dispatchOnLocal:v5];
  }
}

uint64_t __32__CHHapticEngine_beginIdleTimer__block_invoke_2(uint64_t result)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(result + 32))
  {
    v1 = result;
    if (kHPWRScope)
    {
      v2 = *kHPWRScope;
      if (!v2)
      {
LABEL_9:
        result = (*(*(v1 + 32) + 16))();
        goto LABEL_10;
      }
    }

    else
    {
      v2 = MEMORY[0x277D86220];
      v3 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = "CHHapticEngine.mm";
      v7 = 1024;
      v8 = 775;
      v9 = 2080;
      v10 = "[CHHapticEngine beginIdleTimer]_block_invoke_2";
      _os_log_impl(&dword_21569A000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Calling client's engine-stopped handler on internal queue", &v5, 0x1Cu);
    }

    goto LABEL_9;
  }

LABEL_10:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)cancelIdleTimer
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(CHHapticEngine *)self timer];

  if (v3)
  {
    if (kHPWRScope)
    {
      v4 = *kHPWRScope;
      if (!v4)
      {
LABEL_9:
        v6 = [(CHHapticEngine *)self timer];
        dispatch_source_cancel(v6);

        [(CHHapticEngine *)self setTimer:0];
        goto LABEL_10;
      }
    }

    else
    {
      v4 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315650;
      v9 = "CHHapticEngine.mm";
      v10 = 1024;
      v11 = 788;
      v12 = 2080;
      v13 = "[CHHapticEngine cancelIdleTimer]";
      _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Cancelling idle timer", &v8, 0x1Cu);
    }

    goto LABEL_9;
  }

LABEL_10:
  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleFinish:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (kHAPIScope)
  {
    v5 = *kHAPIScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v22 = "CHHapticEngine.mm";
    v23 = 1024;
    v24 = 796;
    v25 = 2080;
    v26 = "[CHHapticEngine handleFinish:]";
    v27 = 2048;
    v28 = self;
    v29 = 2112;
    v30 = v4;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Called on engine %p with error %@", buf, 0x30u);
  }

LABEL_8:
  objc_initWeak(&location, self);
  v7 = [(CHHapticEngine *)self clientFinishedHandler];
  v8 = [(CHHapticEngine *)self stoppedHandler];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __31__CHHapticEngine_handleFinish___block_invoke;
  v15[3] = &unk_2781C97C8;
  objc_copyWeak(&v19, &location);
  v9 = v7;
  v17 = v9;
  v10 = v4;
  v16 = v10;
  v11 = v8;
  v18 = v11;
  [(CHHapticEngine *)self dispatchOnLocal:v15];
  if (kHAPIScope)
  {
    v12 = *kHAPIScope;
    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v12 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v22 = "CHHapticEngine.mm";
    v23 = 1024;
    v24 = 860;
    v25 = 2080;
    v26 = "[CHHapticEngine handleFinish:]";
    _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Done handling finish", buf, 0x1Cu);
  }

LABEL_15:
  objc_destroyWeak(&v19);

  objc_destroyWeak(&location);
  v14 = *MEMORY[0x277D85DE8];
}

void __31__CHHapticEngine_handleFinish___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (*(a1 + 40))
  {
    if (kHAPIScope)
    {
      v3 = *kHAPIScope;
      if (!v3)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v3 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v21 = "CHHapticEngine.mm";
      v22 = 1024;
      v23 = 804;
      v24 = 2080;
      v25 = "[CHHapticEngine handleFinish:]_block_invoke";
      _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Calling client's finishedHandler on internal queue", buf, 0x1Cu);
    }

LABEL_12:
    v6 = *(a1 + 32);
    v7 = (*(*(a1 + 40) + 16))();
    if (v7 == 1)
    {
      if (kHAPIScope)
      {
        v8 = *kHAPIScope;
        if (!v8)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v8 = MEMORY[0x277D86220];
        v10 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v21 = "CHHapticEngine.mm";
        v22 = 1024;
        v23 = 806;
        v24 = 2080;
        v25 = "[CHHapticEngine handleFinish:]_block_invoke";
        _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client requested engine stop-on-finish", buf, 0x1Cu);
      }
    }

LABEL_24:
    [WeakRetained setClientFinishedHandler:0];
    if (v7 == 1 && [*(a1 + 32) code] != -4805)
    {
      if (WeakRetained)
      {
        objc_initWeak(buf, WeakRetained);
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __31__CHHapticEngine_handleFinish___block_invoke_191;
        v17[3] = &unk_2781C9058;
        objc_copyWeak(&v19, buf);
        v18 = *(a1 + 48);
        [WeakRetained doStopWithCompletionHandler:v17];

        objc_destroyWeak(&v19);
        objc_destroyWeak(buf);
      }

      else
      {
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __31__CHHapticEngine_handleFinish___block_invoke_194;
        v15[3] = &unk_2781C9260;
        v16 = *(a1 + 48);
        [CHHapticEngine dispatchOnGlobal:v15];
      }

      goto LABEL_35;
    }

    goto LABEL_26;
  }

  if (kHAPIScope)
  {
    v4 = *kHAPIScope;
    if (!v4)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v21 = "CHHapticEngine.mm";
    v22 = 1024;
    v23 = 812;
    v24 = 2080;
    v25 = "[CHHapticEngine handleFinish:]_block_invoke";
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client finishedHandler is nil", buf, 0x1Cu);
  }

LABEL_26:
  if (!kHAPIScope)
  {
    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
    goto LABEL_30;
  }

  v11 = *kHAPIScope;
  if (v11)
  {
LABEL_30:
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v21 = "CHHapticEngine.mm";
      v22 = 1024;
      v23 = 853;
      v24 = 2080;
      v25 = "[CHHapticEngine handleFinish:]_block_invoke";
      _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Requested not to stop-on-finish", buf, 0x1Cu);
    }
  }

  if ([WeakRetained isAutoShutdownEnabled])
  {
    [WeakRetained beginIdleTimer];
  }

LABEL_35:
  v13 = [WeakRetained metrics];
  [WeakRetained currentTime];
  [v13 handleFinishedForPlayersAtTime:?];

  v14 = *MEMORY[0x277D85DE8];
}

void __31__CHHapticEngine_handleFinish___block_invoke_191(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (kHAPIScope)
  {
    v4 = *kHAPIScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v16 = "CHHapticEngine.mm";
    v17 = 1024;
    v18 = 819;
    v19 = 2080;
    v20 = "[CHHapticEngine handleFinish:]_block_invoke";
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Top of doStopWithCompletionHandler block>", buf, 0x1Cu);
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __31__CHHapticEngine_handleFinish___block_invoke_192;
    v13[3] = &unk_2781C9260;
    v7 = &v14;
    v14 = *(a1 + 32);
    [WeakRetained dispatchOnLocal:v13];
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __31__CHHapticEngine_handleFinish___block_invoke_193;
    v11[3] = &unk_2781C9260;
    v7 = &v12;
    v12 = *(a1 + 32);
    [CHHapticEngine dispatchOnGlobal:v11];
  }

  if (kHAPIScope)
  {
    v8 = *kHAPIScope;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v16 = "CHHapticEngine.mm";
    v17 = 1024;
    v18 = 839;
    v19 = 2080;
    v20 = "[CHHapticEngine handleFinish:]_block_invoke";
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Bottom of doStopWithCompletionHandler block>", buf, 0x1Cu);
  }

LABEL_18:
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __31__CHHapticEngine_handleFinish___block_invoke_192(uint64_t result)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(result + 32))
  {
    v1 = result;
    if (kHAPIScope)
    {
      v2 = *kHAPIScope;
      if (!v2)
      {
LABEL_9:
        result = (*(*(v1 + 32) + 16))();
        goto LABEL_10;
      }
    }

    else
    {
      v2 = MEMORY[0x277D86220];
      v3 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = "CHHapticEngine.mm";
      v7 = 1024;
      v8 = 824;
      v9 = 2080;
      v10 = "[CHHapticEngine handleFinish:]_block_invoke";
      _os_log_impl(&dword_21569A000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Calling engine-stopped handler on internal queue", &v5, 0x1Cu);
    }

    goto LABEL_9;
  }

LABEL_10:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __31__CHHapticEngine_handleFinish___block_invoke_193(uint64_t result)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(result + 32))
  {
    v1 = result;
    if (kHAPIScope)
    {
      v2 = *kHAPIScope;
      if (!v2)
      {
LABEL_9:
        result = (*(*(v1 + 32) + 16))();
        goto LABEL_10;
      }
    }

    else
    {
      v2 = MEMORY[0x277D86220];
      v3 = MEMORY[0x277D86220];
    }

    v4 = v2;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x21606F540](*(v1 + 32));
      v7 = 136315906;
      v8 = "CHHapticEngine.mm";
      v9 = 1024;
      v10 = 834;
      v11 = 2080;
      v12 = "[CHHapticEngine handleFinish:]_block_invoke";
      v13 = 2048;
      v14 = v5;
      _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client-supplied stopped handler called on destroyed player - calling captured block %p on global queue", &v7, 0x26u);
    }

    goto LABEL_9;
  }

LABEL_10:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __31__CHHapticEngine_handleFinish___block_invoke_194(uint64_t result)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(result + 32))
  {
    v1 = result;
    if (kHAPIScope)
    {
      v2 = *kHAPIScope;
      if (!v2)
      {
LABEL_9:
        result = (*(*(v1 + 32) + 16))();
        goto LABEL_10;
      }
    }

    else
    {
      v2 = MEMORY[0x277D86220];
      v3 = MEMORY[0x277D86220];
    }

    v4 = v2;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x21606F540](*(v1 + 32));
      v7 = 136315906;
      v8 = "CHHapticEngine.mm";
      v9 = 1024;
      v10 = 846;
      v11 = 2080;
      v12 = "[CHHapticEngine handleFinish:]_block_invoke";
      v13 = 2048;
      v14 = v5;
      _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client-supplied stopped handler called on destroyed player - calling captured block %p on global queue", &v7, 0x26u);
    }

    goto LABEL_9;
  }

LABEL_10:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)updateEngineBehaviorWithError:(id *)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (kHAPIScope)
  {
    v5 = *kHAPIScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  v7 = v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315906;
    v10 = "CHHapticEngine.mm";
    v11 = 1024;
    v12 = 871;
    v13 = 2080;
    v14 = "[CHHapticEngine updateEngineBehaviorWithError:]";
    v15 = 1024;
    v16 = [(CHHapticEngine *)self currentPlayerBehavior];
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Setting player's behavior to 0x%x", &v9, 0x22u);
  }

LABEL_8:
  [(AVHapticPlayer *)self->_player setBehavior:[(CHHapticEngine *)self currentPlayerBehavior] error:a3];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)stopAndWait
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if ([(CHHapticEngine *)v2 running])
  {
    if (kHAPIScope)
    {
      v3 = *kHAPIScope;
      if (!v3)
      {
LABEL_12:
        v7 = [(CHHapticEngine *)v2 stoppedHandler];
        v14 = 0;
        [(CHHapticEngine *)v2 doStopEngineAndWait:&v14];
        v4 = v14;
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __29__CHHapticEngine_stopAndWait__block_invoke;
        v12[3] = &unk_2781C9260;
        v8 = v7;
        v13 = v8;
        [(CHHapticEngine *)v2 dispatchOnLocal:v12];

        goto LABEL_16;
      }
    }

    else
    {
      v3 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      player = v2->_player;
      *buf = 136315906;
      v16 = "CHHapticEngine.mm";
      v17 = 1024;
      v18 = 879;
      v19 = 2080;
      v20 = "[CHHapticEngine stopAndWait]";
      v21 = 2048;
      v22 = player;
      _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Synchronously stopping the underlying player %p", buf, 0x26u);
    }

    goto LABEL_12;
  }

  if (kHAPIScope)
  {
    v4 = *kHAPIScope;
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v10 = v2->_player;
    *buf = 136315906;
    v16 = "CHHapticEngine.mm";
    v17 = 1024;
    v18 = 891;
    v19 = 2080;
    v20 = "[CHHapticEngine stopAndWait]";
    v21 = 2048;
    v22 = v10;
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Underlying player %p not running", buf, 0x26u);
  }

LABEL_16:

LABEL_17:
  objc_sync_exit(v2);

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __29__CHHapticEngine_stopAndWait__block_invoke(uint64_t result)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(result + 32))
  {
    v1 = result;
    if (kHAPIScope)
    {
      v2 = *kHAPIScope;
      if (!v2)
      {
LABEL_9:
        result = (*(*(v1 + 32) + 16))();
        goto LABEL_10;
      }
    }

    else
    {
      v2 = MEMORY[0x277D86220];
      v3 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315650;
      v6 = "CHHapticEngine.mm";
      v7 = 1024;
      v8 = 885;
      v9 = 2080;
      v10 = "[CHHapticEngine stopAndWait]_block_invoke";
      _os_log_impl(&dword_21569A000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Calling stop completion handler on internal queue", &v5, 0x1Cu);
    }

    goto LABEL_9;
  }

LABEL_10:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  v22 = *MEMORY[0x277D85DE8];
  if (kHAPIScope)
  {
    v3 = *kHAPIScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v15 = "CHHapticEngine.mm";
    v16 = 1024;
    v17 = 898;
    v18 = 2080;
    v19 = "[CHHapticEngine dealloc]";
    v20 = 2048;
    v21 = self;
    _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: synchronously stopping and destroying engine %p", buf, 0x26u);
  }

LABEL_8:
  [(CHHapticEngine *)self stopAndWait];
  v5 = [(CHHapticEngine *)self avAudioSession];
  [(CHHapticEngine *)self disconnectAudioSession:v5];

  [(CHHapticEngine *)self doUnregisterAllPublicAudioResources];
  [(CHHapticEngine *)self doUnregisterAllAudioResources];
  [(CHHapticEngine *)self deallocateProcessTaskToken];
  player = self->_player;
  self->_player = 0;

  avAudioSession = self->_avAudioSession;
  self->_avAudioSession = 0;

  stoppedHandler = self->_stoppedHandler;
  self->_stoppedHandler = 0;

  metrics = self->_metrics;
  self->_metrics = 0;

  if (kHAPIScope)
  {
    v10 = *kHAPIScope;
    if (!v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v15 = "CHHapticEngine.mm";
    v16 = 1024;
    v17 = 908;
    v18 = 2080;
    v19 = "[CHHapticEngine dealloc]";
    v20 = 2048;
    v21 = self;
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: done destroying engine %p", buf, 0x26u);
  }

LABEL_15:
  v13.receiver = self;
  v13.super_class = CHHapticEngine;
  [(CHHapticEngine *)&v13 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)storeOptions:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)v4 valueForKey:@"Priority"];

  if (v5)
  {
    v6 = [(NSDictionary *)v4 valueForKey:@"Priority"];
  }

  else
  {
    v6 = @"LowPriority";
  }

  priority = self->_priority;
  self->_priority = &v6->isa;

  v8 = [(NSDictionary *)v4 valueForKey:@"HapticPowerUsage"];

  if (v8)
  {
    v9 = [(NSDictionary *)v4 valueForKey:@"HapticPowerUsage"];
  }

  else
  {
    v9 = @"LowPower";
  }

  hapticPowerUsage = self->_hapticPowerUsage;
  self->_hapticPowerUsage = &v9->isa;

  v11 = [(NSDictionary *)v4 valueForKey:@"AudioPowerUsage"];

  if (v11)
  {
    v12 = [(NSDictionary *)v4 valueForKey:@"AudioPowerUsage"];
  }

  else
  {
    v12 = @"LowPower";
  }

  audioPowerUsage = self->_audioPowerUsage;
  self->_audioPowerUsage = &v12->isa;

  if (!self->_usageCategory)
  {
    v14 = [(NSDictionary *)v4 valueForKey:@"UsageCategory"];

    if (v14)
    {
      v15 = [(NSDictionary *)v4 valueForKey:@"UsageCategory"];
      usageCategory = self->_usageCategory;
      self->_usageCategory = v15;
    }
  }

  storedOptions = self->_storedOptions;
  self->_storedOptions = v4;
}

- (void)deallocateProcessTaskToken
{
  v3 = xpc_null_create();
  v4 = xpc_null_create();

  fObj = self->_processTaskTokenDict.fObj.fObj;
  self->_processTaskTokenDict.fObj.fObj = v3;

  processTaskToken = self->_processTaskToken;
  if (processTaskToken)
  {
    v7 = *MEMORY[0x277D85F48];

    mach_port_deallocate(v7, processTaskToken);
  }
}

- (CHHapticEngine)initAndReturnError:(NSError *)error
{
  v31 = *MEMORY[0x277D85DE8];
  if (setupHapticLogScopes(void)::once != -1)
  {
    setupHapticLogScopes();
  }

  v5 = CALog::Scope::oslog(kHAPIScope);
  v6 = os_signpost_id_make_with_pointer(v5, self);

  v7 = CALog::Scope::oslog(kHAPIScope);
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "HapticEngine_initAndReturnError", " enableTelemetry=YES ", buf, 2u);
  }

  v22.receiver = self;
  v22.super_class = CHHapticEngine;
  v9 = [(CHHapticEngine *)&v22 init];
  if (!v9)
  {
    goto LABEL_21;
  }

  if (kHAPIScope)
  {
    v10 = *kHAPIScope;
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v24 = "CHHapticEngine.mm";
    v25 = 1024;
    v26 = 1051;
    v27 = 2080;
    v28 = "[CHHapticEngine initAndReturnError:]";
    v29 = 2048;
    v30 = v9;
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Creating engine %p with legacy initializer", buf, 0x26u);
  }

LABEL_14:
  v12 = +[CHHapticEngine capabilitiesForHardware];
  v13 = [v12 supportsHaptics];
  if (v13 & 1) != 0 || (v13 = [v12 supportsAudio], (v13))
  {
    v14 = [AVFASoftLink::getAVAudioSession(v13) auxiliarySession];
    avAudioSession = v9->_avAudioSession;
    v9->_avAudioSession = v14;

    objc_storeStrong(&v9->_usageCategory, @"Default");
    if ([(CHHapticEngine *)v9 setupEngineWithCategory:v9->_usageCategory session:v9->_avAudioSession needsAudioPowerBudget:[(CHHapticEngine *)v9 needsAudioPowerBudget] error:error]&& ([(CHHapticEngine *)v9 connectAudioSession:v9->_avAudioSession], v16 = [(CHHapticEngine *)v9 getSessionIDFromAVAudioSession:v9->_avAudioSession], [(CHHapticEngine *)v9 doInit:v16 sessionIsShared:0 options:0 bypassAudioSession:0 error:error]))
    {
      v17 = [[CHMetrics alloc] initWithEngine:v9 audioSessionID:v16 sessionIsShared:v9->_sessionIsShared isSPI:0];
      metrics = v9->_metrics;
      v9->_metrics = v17;
    }

    else
    {
      metrics = v9;
      v9 = 0;
    }

LABEL_21:
    v19 = CALog::Scope::oslog(kHAPIScope);
    v12 = v19;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v12, OS_SIGNPOST_INTERVAL_END, v6, "HapticEngine_initAndReturnError", &unk_215703E5B, buf, 2u);
    }

    goto LABEL_27;
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  }

  v9 = 0;
LABEL_27:

  v20 = *MEMORY[0x277D85DE8];
  return v9;
}

- (CHHapticEngine)initWithAudioSession:(AVAudioSession *)audioSession error:(NSError *)error
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = audioSession;
  if (setupHapticLogScopes(void)::once != -1)
  {
    setupHapticLogScopes();
  }

  v8 = CALog::Scope::oslog(kHAPIScope);
  v9 = os_signpost_id_make_with_pointer(v8, self);

  v10 = CALog::Scope::oslog(kHAPIScope);
  v11 = v10;
  v12 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "HapticEngine_initWithAudioSession", " enableTelemetry=YES ", buf, 2u);
  }

  v13 = +[CHHapticEngine capabilitiesForHardware];
  if ([v13 supportsHaptics] & 1) != 0 || (objc_msgSend(v13, "supportsAudio"))
  {
    v34.receiver = self;
    v34.super_class = CHHapticEngine;
    v14 = [(CHHapticEngine *)&v34 init];
    if (!v14)
    {
      v16 = 0;
      goto LABEL_38;
    }

    if (v7)
    {
      if (kHAPIScope)
      {
        v15 = *kHAPIScope;
        if (!v15)
        {
LABEL_27:
          objc_storeStrong(&v14->_avAudioSession, audioSession);
          goto LABEL_33;
        }
      }

      else
      {
        v15 = MEMORY[0x277D86220];
        v22 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v36 = "CHHapticEngine.mm";
        v37 = 1024;
        v38 = 1100;
        v39 = 2080;
        v40 = "[CHHapticEngine initWithAudioSession:error:]";
        v41 = 2048;
        v42 = v14;
        v43 = 2048;
        v44 = v7;
        _os_log_impl(&dword_21569A000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Creating engine %p with audio session %p", buf, 0x30u);
      }

      goto LABEL_27;
    }

    if (kHAPIScope)
    {
      v20 = *kHAPIScope;
      v21 = v20;
      if (!v20)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v21 = MEMORY[0x277D86220];
      v23 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v36 = "CHHapticEngine.mm";
      v37 = 1024;
      v38 = 1105;
      v39 = 2080;
      v40 = "[CHHapticEngine initWithAudioSession:error:]";
      v41 = 2048;
      v42 = v14;
      _os_log_impl(&dword_21569A000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Creating engine %p with internal audio session", buf, 0x26u);
    }

LABEL_32:
    v24 = [AVFASoftLink::getAVAudioSession(v20) auxiliarySession];
    avAudioSession = v14->_avAudioSession;
    v14->_avAudioSession = v24;

    objc_storeStrong(&v14->_usageCategory, @"DefaultWithConstantVolume");
    if (![(CHHapticEngine *)v14 setupEngineWithCategory:v14->_usageCategory session:v14->_avAudioSession needsAudioPowerBudget:[(CHHapticEngine *)v14 needsAudioPowerBudget] error:error])
    {
      v16 = 0;
LABEL_37:

LABEL_38:
      v30 = CALog::Scope::oslog(kHAPIScope);
      v31 = v30;
      if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_21569A000, v31, OS_SIGNPOST_INTERVAL_END, v9, "HapticEngine_initWithAudioSession", &unk_215703E5B, buf, 2u);
      }

      self = v16;
      v19 = self;
      goto LABEL_42;
    }

LABEL_33:
    [(CHHapticEngine *)v14 connectAudioSession:v14->_avAudioSession];
    v26 = [(CHHapticEngine *)v14 getSessionIDFromAVAudioSession:v14->_avAudioSession];
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"Default", @"Locality", 0}];
    if ([(CHHapticEngine *)v14 doInit:v26 sessionIsShared:v7 != 0 options:v27 bypassAudioSession:0 error:error])
    {
      v28 = [[CHMetrics alloc] initWithEngine:v14 audioSessionID:v26 sessionIsShared:v14->_sessionIsShared isSPI:0];
      metrics = v14->_metrics;
      v14->_metrics = v28;
      v16 = v14;
    }

    else
    {
      v16 = 0;
      metrics = v14;
    }

    v14 = v27;
    goto LABEL_37;
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  }

  v17 = CALog::Scope::oslog(kHAPIScope);
  v18 = v17;
  if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v18, OS_SIGNPOST_INTERVAL_END, v9, "HapticEngine_initWithAudioSession", &unk_215703E5B, buf, 2u);
  }

  v19 = 0;
LABEL_42:

  v32 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)doInitWithOptions:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (kHAPIScope)
  {
    v7 = *kHAPIScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v26 = 136315906;
    v27 = "CHHapticEngine.mm";
    v28 = 1024;
    v29 = 1151;
    v30 = 2080;
    v31 = "[CHHapticEngine doInitWithOptions:error:]";
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: options: '%@'", &v26, 0x26u);
  }

LABEL_8:
  v9 = dispatch_queue_create("CHHapticEngineDispatchQueue", 0);
  dispatchQueue = self->_dispatchQueue;
  self->_dispatchQueue = v9;

  self->_audioSessionID = 0;
  self->_sessionIsShared = 0;
  v11 = [(CHHapticEngine *)self createHapticPlayerWithOptions:v6];
  player = self->_player;
  self->_player = v11;

  self->_runTimeout = 120.0;
  v13 = [[HapticServerConfig alloc] initWithHapticPlayer:self->_player withOptions:v6 error:a4];
  serverConfig = self->_serverConfig;
  self->_serverConfig = v13;

  if (!self->_serverConfig)
  {
    v23 = 0;
    goto LABEL_16;
  }

  self->_currentPlayerBehavior = 2;
  v15 = [(CHHapticEngine *)self serverConfig];
  v16 = [v15 supportsHapticPlayback];

  if ((v16 & 1) == 0)
  {
    v19 = self->_currentPlayerBehavior | 0x10;
    goto LABEL_13;
  }

  v17 = [(CHHapticEngine *)self serverConfig];
  v18 = [v17 supportsAudioPlayback];

  if ((v18 & 1) == 0)
  {
    v19 = 1;
LABEL_13:
    self->_currentPlayerBehavior = v19;
  }

  priority = self->_priority;
  self->_priority = @"LowPriority";

  hapticPowerUsage = self->_hapticPowerUsage;
  self->_hapticPowerUsage = @"HighPower";

  audioPowerUsage = self->_audioPowerUsage;
  self->_audioPowerUsage = @"HighPower";

  v23 = [(CHHapticEngine *)self finishInit:a4];
LABEL_16:

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (CHHapticEngine)initWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (setupHapticLogScopes(void)::once != -1)
  {
    setupHapticLogScopes();
  }

  v7 = CALog::Scope::oslog(kHAPIScope);
  v8 = os_signpost_id_make_with_pointer(v7, self);

  v9 = CALog::Scope::oslog(kHAPIScope);
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "HapticEngine_initWithOptions", " enableTelemetry=YES ", buf, 2u);
  }

  v16.receiver = self;
  v16.super_class = CHHapticEngine;
  v11 = [(CHHapticEngine *)&v16 init];
  v12 = v11;
  if (v11 && ![(CHHapticEngine *)v11 doInitWithOptions:v6 error:a4])
  {

    v12 = 0;
  }

  v13 = CALog::Scope::oslog(kHAPIScope);
  v14 = v13;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v14, OS_SIGNPOST_INTERVAL_END, v8, "HapticEngine_initWithOptions", &unk_215703E5B, buf, 2u);
  }

  return v12;
}

- (void)prewarmWithCompletionHandler:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CALog::Scope::oslog(kHAPIScope);
  v6 = os_signpost_id_make_with_pointer(v5, self);

  v7 = CALog::Scope::oslog(kHAPIScope);
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "HapticEngine_prewarmWithCompletionHandler", " enableTelemetry=YES ", buf, 2u);
  }

  *buf = 0;
  v21 = buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  obj = 0;
  [(CHHapticEngine *)self updateEngineBehaviorWithError:&obj];
  objc_storeStrong(&v25, obj);
  if (kHAPIScope)
  {
    v9 = *kHAPIScope;
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 136315650;
    v27 = "CHHapticEngine.mm";
    v28 = 1024;
    v29 = 1204;
    v30 = 2080;
    v31 = "[CHHapticEngine prewarmWithCompletionHandler:]";
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Prewarming the underlying Haptic Player", v26, 0x1Cu);
  }

LABEL_11:
  player = self->_player;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __47__CHHapticEngine_prewarmWithCompletionHandler___block_invoke;
  v16[3] = &unk_2781C97F0;
  v18 = buf;
  v12 = v4;
  v17 = v12;
  [(AVHapticPlayer *)player prewarmWithCompletionHandler:v16];
  v13 = CALog::Scope::oslog(kHAPIScope);
  v14 = v13;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v26 = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v14, OS_SIGNPOST_INTERVAL_END, v6, "HapticEngine_prewarmWithCompletionHandler", &unk_215703E5B, v26, 2u);
  }

  _Block_object_dispose(buf, 8);
  v15 = *MEMORY[0x277D85DE8];
}

void __47__CHHapticEngine_prewarmWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (v5)
  {
    v6 = v5;

    v4 = v6;
  }

  else if (!v3)
  {
    goto LABEL_11;
  }

  if (kHAPIScope)
  {
    v7 = *kHAPIScope;
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = [v4 localizedDescription];
    v14 = 136315906;
    v15 = "CHHapticEngine.mm";
    v16 = 1024;
    v17 = 1211;
    v18 = 2080;
    v19 = "[CHHapticEngine prewarmWithCompletionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Player prewarm failed: %@", &v14, 0x26u);
  }

LABEL_11:
  if (*(a1 + 32))
  {
    if (kHAPIScope)
    {
      v11 = *kHAPIScope;
      if (!v11)
      {
LABEL_19:
        (*(*(a1 + 32) + 16))();
        goto LABEL_20;
      }
    }

    else
    {
      v11 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315650;
      v15 = "CHHapticEngine.mm";
      v16 = 1024;
      v17 = 1214;
      v18 = 2080;
      v19 = "[CHHapticEngine prewarmWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Calling prewarm completion handler", &v14, 0x1Cu);
    }

    goto LABEL_19;
  }

LABEL_20:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)doStartWithCompletionHandler:(id)a3
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (kHAPIScope)
  {
    v5 = *kHAPIScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "CHHapticEngine.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1231;
    *&buf[18] = 2080;
    *&buf[20] = "[CHHapticEngine doStartWithCompletionHandler:]";
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Starting underlying Haptic Player", buf, 0x1Cu);
  }

LABEL_8:
  [(CHHapticEngine *)self setRunning:1];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19[0] = 0;
  obj = 0;
  [(CHHapticEngine *)self updateEngineBehaviorWithError:&obj];
  objc_storeStrong(v19, obj);
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__CHHapticEngine_doStartWithCompletionHandler___block_invoke;
  v14[3] = &unk_2781C9700;
  v14[4] = self;
  [(CHHapticEngine *)self dispatchOnLocal:v14];
  [(CHHapticEngine *)self reconfigureAudioSession];
  player = self->_player;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__CHHapticEngine_doStartWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_2781C9840;
  objc_copyWeak(&v13, &location);
  v12 = buf;
  v8 = v4;
  v11 = v8;
  [(AVHapticPlayer *)player startRunningWithCompletionHandler:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
  _Block_object_dispose(buf, 8);

  v9 = *MEMORY[0x277D85DE8];
}

void __47__CHHapticEngine_doStartWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) metrics];
  [v1 handleEngineStart];
}

void __47__CHHapticEngine_doStartWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (kHAPIScope)
  {
    v4 = *kHAPIScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v21 = "CHHapticEngine.mm";
    v22 = 1024;
    v23 = 1241;
    v24 = 2080;
    v25 = "[CHHapticEngine doStartWithCompletionHandler:]_block_invoke_2";
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: In underlying AVHapticPlayer's completion handler block", buf, 0x1Cu);
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = *(*(*(a1 + 40) + 8) + 40);
  if (v7)
  {
    v8 = v7;

    v3 = v8;
  }

  if (WeakRetained)
  {
    objc_initWeak(buf, WeakRetained);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __47__CHHapticEngine_doStartWithCompletionHandler___block_invoke_221;
    v16[3] = &unk_2781C9818;
    objc_copyWeak(&v19, buf);
    v17 = v3;
    v18 = *(a1 + 32);
    v9 = v3;
    [WeakRetained dispatchOnLocal:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __47__CHHapticEngine_doStartWithCompletionHandler___block_invoke_222;
    v13[3] = &unk_2781C9030;
    v10 = *(a1 + 32);
    v14 = v3;
    v15 = v10;
    v11 = v3;
    [CHHapticEngine dispatchOnGlobal:v13];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __47__CHHapticEngine_doStartWithCompletionHandler___block_invoke_221(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (*(a1 + 32))
  {
    if (kHAPIScope)
    {
      v4 = *kHAPIScope;
      if (!v4)
      {
LABEL_11:
        [v3 setRunning:0];
        v8 = [v3 metrics];
        [v8 handleEngineStop];

        goto LABEL_12;
      }
    }

    else
    {
      v4 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    v6 = v4;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) localizedDescription];
      v13 = 136315906;
      v14 = "CHHapticEngine.mm";
      v15 = 1024;
      v16 = 1252;
      v17 = 2080;
      v18 = "[CHHapticEngine doStartWithCompletionHandler:]_block_invoke";
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Player start failed: %@", &v13, 0x26u);
    }

    goto LABEL_11;
  }

  if ([WeakRetained isAutoShutdownEnabled])
  {
    [v3 beginIdleTimer];
  }

LABEL_12:
  if (*(a1 + 40))
  {
    if (kHAPIScope)
    {
      v9 = *kHAPIScope;
      if (!v9)
      {
LABEL_20:
        v11 = *(a1 + 32);
        (*(*(a1 + 40) + 16))();
        goto LABEL_21;
      }
    }

    else
    {
      v9 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315650;
      v14 = "CHHapticEngine.mm";
      v15 = 1024;
      v16 = 1262;
      v17 = 2080;
      v18 = "[CHHapticEngine doStartWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Calling start completion handler on internal queue", &v13, 0x1Cu);
    }

    goto LABEL_20;
  }

LABEL_21:

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __47__CHHapticEngine_doStartWithCompletionHandler___block_invoke_222(uint64_t result)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(result + 40))
  {
    v1 = result;
    if (kHAPIScope)
    {
      v2 = *kHAPIScope;
      if (!v2)
      {
LABEL_9:
        v6 = *(v1 + 32);
        result = (*(*(v1 + 40) + 16))();
        goto LABEL_10;
      }
    }

    else
    {
      v2 = MEMORY[0x277D86220];
      v3 = MEMORY[0x277D86220];
    }

    v4 = v2;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x21606F540](*(v1 + 40));
      v8 = 136315906;
      v9 = "CHHapticEngine.mm";
      v10 = 1024;
      v11 = 1271;
      v12 = 2080;
      v13 = "[CHHapticEngine doStartWithCompletionHandler:]_block_invoke";
      v14 = 2048;
      v15 = v5;
      _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client-supplied completion handler called on destroyed player - calling captured block %p on global queue", &v8, 0x26u);
    }

    goto LABEL_9;
  }

LABEL_10:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)startWithCompletionHandler:(CHHapticCompletionHandler)completionHandler
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = completionHandler;
  if (kHAPIScope)
  {
    v5 = *kHAPIScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v24 = "CHHapticEngine.mm";
    v25 = 1024;
    v26 = 1281;
    v27 = 2080;
    v28 = "[CHHapticEngine startWithCompletionHandler:]";
    v29 = 2048;
    v30 = self;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Called on engine %p", buf, 0x26u);
  }

LABEL_8:
  if (self->_player)
  {
    v7 = CALog::Scope::oslog(kHAPIScope);
    v8 = os_signpost_id_make_with_pointer(v7, self);

    v9 = CALog::Scope::oslog(kHAPIScope);
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "HapticEngine_startWithCompletionHandler", " enableTelemetry=YES ", buf, 2u);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __45__CHHapticEngine_startWithCompletionHandler___block_invoke_225;
    v16[3] = &unk_2781C9868;
    v16[4] = self;
    v17 = v4;
    v18 = v8;
    [(CHHapticEngine *)self dispatchOnLocal:v16];
    v11 = CALog::Scope::oslog(kHAPIScope);
    v12 = v11;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v12, OS_SIGNPOST_INTERVAL_END, v8, "HapticEngine_startWithCompletionHandler", &unk_215703E5B, buf, 2u);
    }
  }

  else
  {
    v22 = 0;
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1282, "[CHHapticEngine startWithCompletionHandler:]", "_player != nil", -4810, &v22);
    v13 = v22;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __45__CHHapticEngine_startWithCompletionHandler___block_invoke;
    v19[3] = &unk_2781C9030;
    v20 = v13;
    v21 = v4;
    v14 = v13;
    [(CHHapticEngine *)self dispatchOnLocal:v19];
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __45__CHHapticEngine_startWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __45__CHHapticEngine_startWithCompletionHandler___block_invoke_225(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) running])
  {
    if (kHAPIScope)
    {
      v2 = *kHAPIScope;
      if (!v2)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v2 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315650;
      v14 = "CHHapticEngine.mm";
      v15 = 1024;
      v16 = 1286;
      v17 = 2080;
      v18 = "[CHHapticEngine startWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_21569A000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Engine already running", &v13, 0x1Cu);
    }

LABEL_12:
    if (!*(a1 + 40))
    {
LABEL_21:
      v9 = CALog::Scope::oslog(kHAPIScope);
      v10 = v9;
      v11 = *(a1 + 48);
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
      {
        LOWORD(v13) = 0;
        _os_signpost_emit_with_name_impl(&dword_21569A000, v10, OS_SIGNPOST_INTERVAL_END, v11, "HapticEngine_startWithCompletionHandler", &unk_215703E5B, &v13, 2u);
      }

      v12 = *MEMORY[0x277D85DE8];
      return;
    }

    if (kHAPIScope)
    {
      v7 = *kHAPIScope;
      if (!v7)
      {
LABEL_20:
        (*(*(a1 + 40) + 16))();
        goto LABEL_21;
      }
    }

    else
    {
      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315650;
      v14 = "CHHapticEngine.mm";
      v15 = 1024;
      v16 = 1288;
      v17 = 2080;
      v18 = "[CHHapticEngine startWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Directly calling start completionHandler on internal queue", &v13, 0x1Cu);
    }

    goto LABEL_20;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *MEMORY[0x277D85DE8];

  [v3 doStartWithCompletionHandler:v4];
}

- (BOOL)doStartEngineAndWait:(id *)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __39__CHHapticEngine_doStartEngineAndWait___block_invoke;
  v21[3] = &unk_2781C9890;
  v21[4] = self;
  v23 = &v24;
  v6 = v5;
  v22 = v6;
  [(CHHapticEngine *)self dispatchOnLocal:v21];
  if (kHAPIScope)
  {
    v7 = *kHAPIScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v31 = "CHHapticEngine.mm";
    v32 = 1024;
    v33 = 1318;
    v34 = 2080;
    v35 = "[CHHapticEngine doStartEngineAndWait:]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Waiting for startup...", buf, 0x1Cu);
  }

LABEL_8:
  v9 = dispatch_time(0, 4000000000);
  if (!dispatch_group_wait(v6, v9))
  {
    goto LABEL_25;
  }

  if (kHAPIScope)
  {
    v10 = *kHAPIScope;
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v31 = "CHHapticEngine.mm";
    v32 = 1024;
    v33 = 1321;
    v34 = 2080;
    v35 = "[CHHapticEngine doStartEngineAndWait:]";
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Startup timeout", buf, 0x1Cu);
  }

LABEL_16:
  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4808 userInfo:0];
  v13 = v25[5];
  v25[5] = v12;

  if (![(CHHapticEngine *)self running])
  {
    goto LABEL_25;
  }

  if (!kHAPIScope)
  {
    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
    goto LABEL_21;
  }

  v14 = *kHAPIScope;
  if (v14)
  {
LABEL_21:
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v31 = "CHHapticEngine.mm";
      v32 = 1024;
      v33 = 1326;
      v34 = 2080;
      v35 = "[CHHapticEngine doStartEngineAndWait:]";
      _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Warning: engine start timed out but server side may be running, triggering async stop", buf, 0x1Cu);
    }
  }

  [(CHHapticEngine *)self stopWithCompletionHandler:&__block_literal_global_228];
LABEL_25:
  if (a3)
  {
    *a3 = v25[5];
  }

  if (kHAPIScope)
  {
    v16 = *kHAPIScope;
    if (!v16)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v31 = "CHHapticEngine.mm";
    v32 = 1024;
    v33 = 1335;
    v34 = 2080;
    v35 = "[CHHapticEngine doStartEngineAndWait:]";
    _os_log_impl(&dword_21569A000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Startup complete", buf, 0x1Cu);
  }

LABEL_34:
  v18 = v25[5] == 0;

  _Block_object_dispose(&v24, 8);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void __39__CHHapticEngine_doStartEngineAndWait___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) running])
  {
    if (kHAPIScope)
    {
      v2 = *kHAPIScope;
      if (!v2)
      {
LABEL_10:
        [*(a1 + 32) reconfigureAudioSession];
        dispatch_group_leave(*(a1 + 40));
        goto LABEL_11;
      }
    }

    else
    {
      v2 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v11 = "CHHapticEngine.mm";
      v12 = 1024;
      v13 = 1313;
      v14 = 2080;
      v15 = "[CHHapticEngine doStartEngineAndWait:]_block_invoke";
      _os_log_impl(&dword_21569A000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Engine already running", buf, 0x1Cu);
    }

    goto LABEL_10;
  }

  v3 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__CHHapticEngine_doStartEngineAndWait___block_invoke_2;
  v8[3] = &unk_2781C9750;
  v7 = *(a1 + 40);
  v4 = v7;
  v9 = v7;
  [v3 doStartWithCompletionHandler:v8];

LABEL_11:
  v6 = *MEMORY[0x277D85DE8];
}

void __39__CHHapticEngine_doStartEngineAndWait___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __39__CHHapticEngine_doStartEngineAndWait___block_invoke_226(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    if (kHAPIScope)
    {
      v3 = *kHAPIScope;
      if (!v3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v3 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    v5 = v3;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [v2 localizedDescription];
      v8 = 136315906;
      v9 = "CHHapticEngine.mm";
      v10 = 1024;
      v11 = 1328;
      v12 = 2080;
      v13 = "[CHHapticEngine doStartEngineAndWait:]_block_invoke";
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: async stop after timeout failed with error %@", &v8, 0x26u);
    }
  }

LABEL_9:

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)startAndReturnError:(NSError *)outError
{
  v24 = *MEMORY[0x277D85DE8];
  if (kHAPIScope)
  {
    v5 = *kHAPIScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315906;
    v17 = "CHHapticEngine.mm";
    v18 = 1024;
    v19 = 1341;
    v20 = 2080;
    v21 = "[CHHapticEngine startAndReturnError:]";
    v22 = 2048;
    v23 = self;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Called on engine %p", &v16, 0x26u);
  }

LABEL_8:
  if (self->_player)
  {
    v7 = CALog::Scope::oslog(kHAPIScope);
    v8 = os_signpost_id_make_with_pointer(v7, self);

    v9 = CALog::Scope::oslog(kHAPIScope);
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      LOWORD(v16) = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "HapticEngine_startAndReturnError", " enableTelemetry=YES ", &v16, 2u);
    }

    v11 = [(CHHapticEngine *)self doStartEngineAndWait:outError];
    v12 = CALog::Scope::oslog(kHAPIScope);
    v13 = v12;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      LOWORD(v16) = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v13, OS_SIGNPOST_INTERVAL_END, v8, "HapticEngine_startAndReturnError", &unk_215703E5B, &v16, 2u);
    }
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1342, "[CHHapticEngine startAndReturnError:]", "_player != nil", -4810, outError);
    v11 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)doStopEngineAndWait:(id *)a3
{
  v37 = *MEMORY[0x277D85DE8];
  [(CHHapticEngine *)self setRunning:0];
  if (kHAPIScope)
  {
    v5 = *kHAPIScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "CHHapticEngine.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1352;
    *&buf[18] = 2080;
    *&buf[20] = "[CHHapticEngine doStopEngineAndWait:]";
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Synchronously stopping underlying Haptic Player", buf, 0x1Cu);
  }

LABEL_8:
  v7 = dispatch_group_create();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__3;
  v35 = __Block_byref_object_dispose__3;
  v36 = 0;
  dispatch_group_enter(v7);
  player = self->_player;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __38__CHHapticEngine_doStopEngineAndWait___block_invoke;
  v25 = &unk_2781C9750;
  v27 = buf;
  v9 = v7;
  v26 = v9;
  [(AVHapticPlayer *)player stopRunningWithCompletionHandler:&v22];
  if (kHAPIScope)
  {
    v10 = *kHAPIScope;
    if (!v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *v28 = 136315650;
    v29 = "CHHapticEngine.mm";
    v30 = 1024;
    v31 = 1364;
    v32 = 2080;
    v33 = "[CHHapticEngine doStopEngineAndWait:]";
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Waiting for player stop...", v28, 0x1Cu);
  }

LABEL_15:
  v12 = dispatch_time(0, 4000000000);
  if (dispatch_group_wait(v9, v12))
  {
    if (kHAPIScope)
    {
      v13 = *kHAPIScope;
      if (!v13)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 136315650;
      v29 = "CHHapticEngine.mm";
      v30 = 1024;
      v31 = 1367;
      v32 = 2080;
      v33 = "[CHHapticEngine doStopEngineAndWait:]";
      v15 = "%25s:%-5d %s: WARNING: timed out waiting for underlying player to stop";
      v16 = v13;
      v17 = OS_LOG_TYPE_DEFAULT;
LABEL_28:
      _os_log_impl(&dword_21569A000, v16, v17, v15, v28, 0x1Cu);
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  if (!kHAPIScope)
  {
    v13 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
LABEL_26:
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *v28 = 136315650;
      v29 = "CHHapticEngine.mm";
      v30 = 1024;
      v31 = 1370;
      v32 = 2080;
      v33 = "[CHHapticEngine doStopEngineAndWait:]";
      v15 = "%25s:%-5d %s: Done waiting for underlying player stop";
      v16 = v13;
      v17 = OS_LOG_TYPE_DEBUG;
      goto LABEL_28;
    }

LABEL_29:

    goto LABEL_30;
  }

  v13 = *kHAPIScope;
  if (v13)
  {
    goto LABEL_26;
  }

LABEL_30:
  if ([(CHHapticEngine *)self isAutoShutdownEnabled:v22])
  {
    [(CHHapticEngine *)self cancelIdleTimer];
  }

  *a3 = *(*&buf[8] + 40);
  v19 = *(*&buf[8] + 40) == 0;

  _Block_object_dispose(buf, 8);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

void __38__CHHapticEngine_doStopEngineAndWait___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (kHAPIScope)
  {
    v4 = *kHAPIScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315650;
    v15 = "CHHapticEngine.mm";
    v16 = 1024;
    v17 = 1357;
    v18 = 2080;
    v19 = "[CHHapticEngine doStopEngineAndWait:]_block_invoke";
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: In underlying AVHapticPlayer's completion handler block for doStopEngineAndWait", &v14, 0x1Cu);
  }

LABEL_8:
  if (v3)
  {
    if (kHAPIScope)
    {
      v6 = *kHAPIScope;
      if (!v6)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v6 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    v8 = v6;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v3 localizedDescription];
      v14 = 136315906;
      v15 = "CHHapticEngine.mm";
      v16 = 1024;
      v17 = 1359;
      v18 = 2080;
      v19 = "[CHHapticEngine doStopEngineAndWait:]_block_invoke";
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Player stop failed: %@", &v14, 0x26u);
    }
  }

LABEL_16:
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v3;
  v12 = v3;

  dispatch_group_leave(*(a1 + 32));
  v13 = *MEMORY[0x277D85DE8];
}

- (void)doStopWithCompletionHandler:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(CHHapticEngine *)self setRunning:0];
  if (kHAPIScope)
  {
    v5 = *kHAPIScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "CHHapticEngine.mm";
    v15 = 1024;
    v16 = 1382;
    v17 = 2080;
    v18 = "[CHHapticEngine doStopWithCompletionHandler:]";
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Stopping underlying Haptic Player", buf, 0x1Cu);
  }

LABEL_8:
  objc_initWeak(buf, self);
  player = self->_player;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__CHHapticEngine_doStopWithCompletionHandler___block_invoke;
  v10[3] = &unk_2781C9058;
  objc_copyWeak(&v12, buf);
  v8 = v4;
  v11 = v8;
  [(AVHapticPlayer *)player stopRunningWithCompletionHandler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);

  v9 = *MEMORY[0x277D85DE8];
}

void __46__CHHapticEngine_doStopWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (kHAPIScope)
  {
    v4 = *kHAPIScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v20 = "CHHapticEngine.mm";
    v21 = 1024;
    v22 = 1385;
    v23 = 2080;
    v24 = "[CHHapticEngine doStopWithCompletionHandler:]_block_invoke";
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: In underlying AVHapticPlayer's completion handler block for doStopWithCompletionHandler", buf, 0x1Cu);
  }

LABEL_8:
  if (!v3)
  {
    goto LABEL_16;
  }

  if (kHAPIScope)
  {
    v6 = *kHAPIScope;
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [v3 localizedDescription];
    *buf = 136315906;
    v20 = "CHHapticEngine.mm";
    v21 = 1024;
    v22 = 1386;
    v23 = 2080;
    v24 = "[CHHapticEngine doStopWithCompletionHandler:]_block_invoke";
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Lower-level player stop failed: %@", buf, 0x26u);
  }

LABEL_16:
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    objc_initWeak(buf, WeakRetained);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__CHHapticEngine_doStopWithCompletionHandler___block_invoke_229;
    v15[3] = &unk_2781C98B8;
    objc_copyWeak(&v18, buf);
    v17 = *(a1 + 32);
    v16 = v3;
    [WeakRetained dispatchOnLocal:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__CHHapticEngine_doStopWithCompletionHandler___block_invoke_230;
    v12[3] = &unk_2781C9030;
    v14 = *(a1 + 32);
    v13 = v3;
    [CHHapticEngine dispatchOnGlobal:v12];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __46__CHHapticEngine_doStopWithCompletionHandler___block_invoke_229(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained isAutoShutdownEnabled])
  {
    [WeakRetained cancelIdleTimer];
  }

  if (WeakRetained)
  {
    v3 = [WeakRetained metrics];
    [v3 handleEngineStop];
  }

  if (*(a1 + 40))
  {
    if (kHAPIScope)
    {
      v4 = *kHAPIScope;
      if (!v4)
      {
LABEL_13:
        v6 = *(a1 + 32);
        (*(*(a1 + 40) + 16))();
        goto LABEL_14;
      }
    }

    else
    {
      v4 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315650;
      v9 = "CHHapticEngine.mm";
      v10 = 1024;
      v11 = 1399;
      v12 = 2080;
      v13 = "[CHHapticEngine doStopWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Calling stop completion handler on internal queue", &v8, 0x1Cu);
    }

    goto LABEL_13;
  }

LABEL_14:

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __46__CHHapticEngine_doStopWithCompletionHandler___block_invoke_230(uint64_t result)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(result + 40))
  {
    v1 = result;
    if (kHAPIScope)
    {
      v2 = *kHAPIScope;
      if (!v2)
      {
LABEL_9:
        v6 = *(v1 + 32);
        result = (*(*(v1 + 40) + 16))();
        goto LABEL_10;
      }
    }

    else
    {
      v2 = MEMORY[0x277D86220];
      v3 = MEMORY[0x277D86220];
    }

    v4 = v2;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x21606F540](*(v1 + 40));
      v8 = 136315906;
      v9 = "CHHapticEngine.mm";
      v10 = 1024;
      v11 = 1408;
      v12 = 2080;
      v13 = "[CHHapticEngine doStopWithCompletionHandler:]_block_invoke";
      v14 = 2048;
      v15 = v5;
      _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client-supplied completion handler called on destroyed player - calling captured block %p on global queue", &v8, 0x26u);
    }

    goto LABEL_9;
  }

LABEL_10:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)stopWithCompletionHandler:(CHHapticCompletionHandler)completionHandler
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = completionHandler;
  if (kHAPIScope)
  {
    v5 = *kHAPIScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v25 = "CHHapticEngine.mm";
    v26 = 1024;
    v27 = 1418;
    v28 = 2080;
    v29 = "[CHHapticEngine stopWithCompletionHandler:]";
    v30 = 2048;
    v31 = self;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Called on engine %p", buf, 0x26u);
  }

LABEL_8:
  if (self->_player)
  {
    v7 = CALog::Scope::oslog(kHAPIScope);
    v8 = os_signpost_id_make_with_pointer(v7, self);

    v9 = CALog::Scope::oslog(kHAPIScope);
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "HapticEngine_stopWithCompletionHandler", " enableTelemetry=YES ", buf, 2u);
    }

    objc_initWeak(buf, self);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __44__CHHapticEngine_stopWithCompletionHandler___block_invoke_231;
    v17[3] = &unk_2781C98E0;
    objc_copyWeak(&v19, buf);
    v18 = v4;
    [(CHHapticEngine *)self dispatchOnLocal:v17];
    v11 = CALog::Scope::oslog(kHAPIScope);
    v12 = v11;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *v16 = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v12, OS_SIGNPOST_INTERVAL_END, v8, "HapticEngine_stopWithCompletionHandler", &unk_215703E5B, v16, 2u);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  else
  {
    v23 = 0;
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1419, "[CHHapticEngine stopWithCompletionHandler:]", "_player != nil", -4810, &v23);
    v13 = v23;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __44__CHHapticEngine_stopWithCompletionHandler___block_invoke;
    v20[3] = &unk_2781C9030;
    v21 = v13;
    v22 = v4;
    v14 = v13;
    [(CHHapticEngine *)self dispatchOnLocal:v20];
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __44__CHHapticEngine_stopWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __44__CHHapticEngine_stopWithCompletionHandler___block_invoke_231(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (![WeakRetained running])
  {
    if (kHAPIScope)
    {
      v3 = *kHAPIScope;
      if (!v3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v3 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = "CHHapticEngine.mm";
      v10 = 1024;
      v11 = 1428;
      v12 = 2080;
      v13 = "[CHHapticEngine stopWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Engine not running", &v8, 0x1Cu);
    }

LABEL_10:
    if (!*(a1 + 32))
    {
      goto LABEL_19;
    }

    if (kHAPIScope)
    {
      v5 = *kHAPIScope;
      if (!v5)
      {
LABEL_18:
        (*(*(a1 + 32) + 16))();
        goto LABEL_19;
      }
    }

    else
    {
      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = "CHHapticEngine.mm";
      v10 = 1024;
      v11 = 1430;
      v12 = 2080;
      v13 = "[CHHapticEngine stopWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Directly calling stop completionHandler on internal queue", &v8, 0x1Cu);
    }

    goto LABEL_18;
  }

  [WeakRetained doStopWithCompletionHandler:*(a1 + 32)];
LABEL_19:

  v7 = *MEMORY[0x277D85DE8];
}

- (void)notifyWhenPlayersFinished:(CHHapticEngineFinishedHandler)finishedHandler
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = finishedHandler;
  if (kHAPIScope)
  {
    v5 = *kHAPIScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  v7 = v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x21606F540](v4);
    *buf = 136316162;
    v20 = "CHHapticEngine.mm";
    v21 = 1024;
    v22 = 1440;
    v23 = 2080;
    v24 = "[CHHapticEngine notifyWhenPlayersFinished:]";
    v25 = 2048;
    v26 = self;
    v27 = 2048;
    v28 = v8;
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Called on engine %p with finishedHandler %p", buf, 0x30u);
  }

LABEL_8:
  if (self->_player)
  {
    v9 = self;
    objc_sync_enter(v9);
    [(CHHapticEngine *)v9 setClientFinishedHandler:v4];
    objc_initWeak(buf, v9);
    v10 = [(CHHapticEngine *)v9 player];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __44__CHHapticEngine_notifyWhenPlayersFinished___block_invoke_2;
    v13[3] = &unk_2781C8FE0;
    objc_copyWeak(&v14, buf);
    [v10 finishWithCompletionHandler:v13];

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
    objc_sync_exit(v9);
  }

  else
  {
    v18 = 0;
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1441, "[CHHapticEngine notifyWhenPlayersFinished:]", "_player != nil", -4810, &v18);
    v11 = v18;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __44__CHHapticEngine_notifyWhenPlayersFinished___block_invoke;
    v15[3] = &unk_2781C9030;
    v16 = v11;
    v17 = v4;
    v9 = v11;
    [(CHHapticEngine *)self dispatchOnLocal:v15];
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __44__CHHapticEngine_notifyWhenPlayersFinished___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __44__CHHapticEngine_notifyWhenPlayersFinished___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (kHAPIScope)
  {
    v4 = *kHAPIScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315650;
    v11 = "CHHapticEngine.mm";
    v12 = 1024;
    v13 = 1447;
    v14 = 2080;
    v15 = "[CHHapticEngine notifyWhenPlayersFinished:]_block_invoke_2";
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Top of AV finishWithCompletionHandler block>", &v10, 0x1Cu);
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleFinish:v3];
  if (kHAPIScope)
  {
    v7 = *kHAPIScope;
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315650;
    v11 = "CHHapticEngine.mm";
    v12 = 1024;
    v13 = 1450;
    v14 = 2080;
    v15 = "[CHHapticEngine notifyWhenPlayersFinished:]_block_invoke";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Bottom of AV finishWithCompletionHandler block>", &v10, 0x1Cu);
  }

LABEL_15:
  v9 = *MEMORY[0x277D85DE8];
}

- (id)createPlayerWithPattern:(CHHapticPattern *)pattern error:(NSError *)outError
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = pattern;
  if (kHAPIScope)
  {
    v7 = *kHAPIScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315650;
    v13 = "CHHapticEngine.mm";
    v14 = 1024;
    v15 = 1584;
    v16 = 2080;
    v17 = "[CHHapticEngine createPlayerWithPattern:error:]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating player from pattern", &v12, 0x1Cu);
  }

LABEL_8:
  if (self->_player)
  {
    v9 = [[PatternPlayer alloc] initWithPlayable:v6 engine:self privileged:0 error:outError];
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1585, "[CHHapticEngine createPlayerWithPattern:error:]", "_player != nil", -4810, outError);
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createAdvancedPlayerWithPattern:(CHHapticPattern *)pattern error:(NSError *)outError
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = pattern;
  if (kHAPIScope)
  {
    v7 = *kHAPIScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315650;
    v13 = "CHHapticEngine.mm";
    v14 = 1024;
    v15 = 1591;
    v16 = 2080;
    v17 = "[CHHapticEngine createAdvancedPlayerWithPattern:error:]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating advanced player from pattern", &v12, 0x1Cu);
  }

LABEL_8:
  if (self->_player)
  {
    v9 = [[AdvancedPatternPlayer alloc] initWithPattern:v6 engine:self privileged:0 error:outError];
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1592, "[CHHapticEngine createAdvancedPlayerWithPattern:error:]", "_player != nil", -4810, outError);
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createAdvancedPlayerWithRingtoneData:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (kHAPIScope)
  {
    v7 = *kHAPIScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315650;
    v13 = "CHHapticEngine.mm";
    v14 = 1024;
    v15 = 1600;
    v16 = 2080;
    v17 = "[CHHapticEngine createAdvancedPlayerWithRingtoneData:error:]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating advanced player from ringtone data", &v12, 0x1Cu);
  }

LABEL_8:
  if (self->_player)
  {
    v9 = [[AdvancedPatternPlayer alloc] initWithRingtoneData:v6 engine:self error:a4];
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1601, "[CHHapticEngine createAdvancedPlayerWithRingtoneData:error:]", "_player != nil", -4810, a4);
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createAdvancedPlayerWithVibePatternDictionary:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (kHAPIScope)
  {
    v7 = *kHAPIScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315650;
    v13 = "CHHapticEngine.mm";
    v14 = 1024;
    v15 = 1609;
    v16 = 2080;
    v17 = "[CHHapticEngine createAdvancedPlayerWithVibePatternDictionary:error:]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating advanced player from vibe pattern dictionary", &v12, 0x1Cu);
  }

LABEL_8:
  if (self->_player)
  {
    v9 = [[AdvancedPatternPlayer alloc] initWithVibePatternDictionary:v6 engine:self error:a4];
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1610, "[CHHapticEngine createAdvancedPlayerWithVibePatternDictionary:error:]", "_player != nil", -4810, a4);
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createAdvancedPlayerWithRingtonePattern:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (kHAPIScope)
  {
    v7 = *kHAPIScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315650;
    v13 = "CHHapticEngine.mm";
    v14 = 1024;
    v15 = 1617;
    v16 = 2080;
    v17 = "[CHHapticEngine createAdvancedPlayerWithRingtonePattern:error:]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating advanced player from ringtone pattern", &v12, 0x1Cu);
  }

LABEL_8:
  if (self->_player)
  {
    v9 = [[AdvancedPatternPlayer alloc] initWithPattern:v6 engine:self privileged:1 error:a4];
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1618, "[CHHapticEngine createAdvancedPlayerWithRingtonePattern:error:]", "_player != nil", -4810, a4);
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createPrivilegedPlayerWithPlayable:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (kHAPIScope)
  {
    v7 = *kHAPIScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315650;
    v13 = "CHHapticEngine.mm";
    v14 = 1024;
    v15 = 1626;
    v16 = 2080;
    v17 = "[CHHapticEngine createPrivilegedPlayerWithPlayable:error:]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating privileged player from Playable", &v12, 0x1Cu);
  }

LABEL_8:
  if (self->_player)
  {
    v9 = [[PatternPlayer alloc] initWithPlayable:v6 engine:self privileged:1 error:a4];
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1627, "[CHHapticEngine createPrivilegedPlayerWithPlayable:error:]", "_player != nil", -4810, a4);
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (double)getDurationForResource:(unint64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = _sResourceMutex;
  std::mutex::lock(_sResourceMutex);
  v6 = ResourceRegistry::instance(v5);
  DurationForResource = ResourceRegistry::getDurationForResource(v6, a3);
  if ((v8 & 1) == 0)
  {
    if (kHAPIScope)
    {
      v10 = *kHAPIScope;
      if (!v10)
      {
LABEL_10:
        v9 = 0.0;
        goto LABEL_11;
      }
    }

    else
    {
      v10 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315906;
      v15 = "CHHapticEngine.mm";
      v16 = 1024;
      v17 = 1642;
      v18 = 2080;
      v19 = "[CHHapticEngine getDurationForResource:]";
      v20 = 1024;
      v21 = a3;
      _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Cannot find resource referenced by ID %u. Returning 0.0", &v14, 0x22u);
    }

    goto LABEL_10;
  }

  v9 = *&DurationForResource;
LABEL_11:
  std::mutex::unlock(v4);
  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)isResourceLoopEnabled:(unint64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = _sResourceMutex;
  std::mutex::lock(_sResourceMutex);
  v6 = ResourceRegistry::instance(v5);
  isResourceLoopEnabled = ResourceRegistry::isResourceLoopEnabled(v6, a3);
  LOBYTE(v8) = isResourceLoopEnabled;
  if ((isResourceLoopEnabled & 0x100) == 0)
  {
    if (kHAPIScope)
    {
      v8 = *kHAPIScope;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315906;
      v13 = "CHHapticEngine.mm";
      v14 = 1024;
      v15 = 1654;
      v16 = 2080;
      v17 = "[CHHapticEngine isResourceLoopEnabled:]";
      v18 = 1024;
      v19 = a3;
      _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Cannot find resource referenced by ID %u. Returning FALSE", &v12, 0x22u);
    }

    LOBYTE(v8) = 0;
  }

LABEL_9:
  std::mutex::unlock(v4);
  v10 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

- (id)getMetricsForPlayer:(id)a3
{
  v3 = [(CHMetrics *)self->_metrics getMetricsForPlayer:a3];

  return v3;
}

- (__map_iterator<std::__tree_iterator<std::__value_type<unsigned)doFindPublicAudioResourceID:(unint64_t)a3
{
  left = self->_publicAudioResources.__tree_.__end_node_.__left_;
  p_end_node = &self->_publicAudioResources.__tree_.__end_node_;
  v4 = left;
  if (!left)
  {
    return p_end_node;
  }

  v6.var0.var0 = p_end_node;
  do
  {
    v7 = v4[4];
    v8 = v7 >= a3;
    v9 = v7 < a3;
    if (v8)
    {
      v6.var0.var0 = v4;
    }

    v4 = v4[v9];
  }

  while (v4);
  if (v6.var0.var0 == p_end_node || *(v6.var0.var0 + 4) > a3)
  {
    return p_end_node;
  }

  return v6;
}

- (void)addPublicAudioResourceID:(unint64_t)a3 withURL:(id)a4 options:(id)a5
{
  v6 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v8 = a4;
  v9 = a5;
  if (kHAPIScope)
  {
    v10 = *kHAPIScope;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    *&buf[4] = "CHHapticEngine.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1693;
    v17 = 2080;
    v18 = "[CHHapticEngine addPublicAudioResourceID:withURL:options:]";
    v19 = 2048;
    v20 = self;
    v21 = 1024;
    v22 = v6;
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Engine %p adding resID %u to public resource list", buf, 0x2Cu);
  }

LABEL_8:
  if (&self->_publicAudioResources.__tree_.__end_node_ != [(CHHapticEngine *)self doFindPublicAudioResourceID:v15])
  {
    [CHHapticEngine addPublicAudioResourceID:withURL:options:];
  }

  v12 = v8;
  *buf = v12;
  v13 = v9;
  *&buf[8] = v13;
  std::__tree<std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>>>::__emplace_unique_key_args<unsigned long,unsigned long &,std::tuple<NSURL * {__strong},NSDictionary * {__strong}>>(&self->_publicAudioResources, &v15);

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasPublicAudioResourceID:(unint64_t)a3
{
  v3 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v5.var0.var0 = [(CHHapticEngine *)self doFindPublicAudioResourceID:?];
  p_end_node = &self->_publicAudioResources.__tree_.__end_node_;
  if (kHAPIScope)
  {
    v7 = *kHAPIScope;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = "did not find";
    v12 = 136316418;
    v13 = "CHHapticEngine.mm";
    v14 = 1024;
    v15 = 1702;
    v17 = "[CHHapticEngine hasPublicAudioResourceID:]";
    v16 = 2080;
    if (p_end_node != v5.var0.var0)
    {
      v9 = "found";
    }

    v18 = 2048;
    v19 = self;
    v20 = 2080;
    v21 = v9;
    v22 = 1024;
    v23 = v3;
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Engine %p %s resID %u", &v12, 0x36u);
  }

LABEL_10:
  result = p_end_node != v5.var0.var0;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)idForPublicAudioResourceURL:(id)a3 withOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  begin_node = self->_publicAudioResources.__tree_.__begin_node_;
  p_end_node = &self->_publicAudioResources.__tree_.__end_node_;
  if (begin_node != &self->_publicAudioResources.__tree_.__end_node_)
  {
    do
    {
      left = begin_node[4].__left_;
      v11 = begin_node[5].__left_;
      v12 = begin_node[6].__left_;
      v13 = [v11 absoluteString];
      v14 = [v6 absoluteString];
      if ([v13 isEqualToString:v14])
      {
        v15 = [v12 isEqualToDictionary:v7];

        if (v15)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      v16 = begin_node[1].__left_;
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = v16->__left_;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = begin_node[2].__left_;
          v18 = v17->__left_ == begin_node;
          begin_node = v17;
        }

        while (!v18);
      }

      begin_node = v17;
    }

    while (v17 != p_end_node);
  }

  left = 0;
LABEL_13:

  return left;
}

- (void)removePublicAudioResourceID:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (kHAPIScope)
  {
    v5 = *kHAPIScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136316162;
    v10 = "CHHapticEngine.mm";
    v11 = 1024;
    v12 = 1718;
    v13 = 2080;
    v14 = "[CHHapticEngine removePublicAudioResourceID:]";
    v15 = 2048;
    v16 = self;
    v17 = 1024;
    v18 = a3;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Engine %p removing resID %u from public resource list", &v9, 0x2Cu);
  }

LABEL_8:
  v7 = [(CHHapticEngine *)self doFindPublicAudioResourceID:a3];
  if (&self->_publicAudioResources.__tree_.__end_node_ == v7)
  {
    [CHHapticEngine removePublicAudioResourceID:];
  }

  std::__tree<std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>>>::erase(&self->_publicAudioResources, v7);
  v8 = *MEMORY[0x277D85DE8];
}

+ (BOOL)resourceIsRegistered:(unint64_t)a3
{
  v4 = _sResourceMutex;
  std::mutex::lock(_sResourceMutex);
  v6 = ResourceRegistry::instance(v5);
  LOBYTE(a3) = ResourceRegistry::isResourceRegistered(v6, a3);
  std::mutex::unlock(v4);
  return a3;
}

- (CHHapticAudioResourceID)registerAudioResource:(NSURL *)resourceURL options:(NSDictionary *)options error:(NSError *)outError
{
  v8 = resourceURL;
  v9 = options;
  v10 = [(CHHapticEngine *)self player];

  if (v10)
  {
    v11 = CALog::Scope::oslog(kHAPIScope);
    v12 = os_signpost_id_make_with_pointer(v11, self);

    v13 = CALog::Scope::oslog(kHAPIScope);
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "HapticEngine_registerAudioResource", " enableTelemetry=YES ", buf, 2u);
    }

    v15 = self;
    objc_sync_enter(v15);
    v16 = MEMORY[0x277CBEC10];
    if (v9)
    {
      v16 = v9;
    }

    v17 = v16;

    v18 = [(CHHapticEngine *)v15 idForPublicAudioResourceURL:v8 withOptions:v17];
    if (!v18)
    {
      v25 = 0;
      v18 = [(CHHapticEngine *)v15 doRegisterAudioResource:v8 options:v17 fromPattern:0 error:&v25];
      v19 = v25;
      if (!v19 && v18)
      {
        [(CHHapticEngine *)v15 addPublicAudioResourceID:v18 withURL:v8 options:v17];
      }

      if (outError)
      {
        v20 = v19;
        *outError = v19;
      }
    }

    objc_sync_exit(v15);

    v21 = CALog::Scope::oslog(kHAPIScope);
    v22 = v21;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *v24 = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v22, OS_SIGNPOST_INTERVAL_END, v12, "HapticEngine_registerAudioResource", &unk_215703E5B, v24, 2u);
    }
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1732, "[CHHapticEngine registerAudioResource:options:error:]", "self.player != nil", -4810, outError);
    v18 = 0;
    v17 = v9;
  }

  return v18;
}

- (BOOL)unregisterAudioResource:(CHHapticAudioResourceID)resourceID error:(NSError *)outError
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = [(CHHapticEngine *)self player];

  if (!v7)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1757, "[CHHapticEngine unregisterAudioResource:error:]", "self.player != nil", -4810, outError);
    v13 = 0;
    goto LABEL_23;
  }

  v8 = CALog::Scope::oslog(kHAPIScope);
  v9 = os_signpost_id_make_with_pointer(v8, self);

  v10 = CALog::Scope::oslog(kHAPIScope);
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(v20) = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "HapticEngine_unregisterAudioResource", " enableTelemetry=YES ", &v20, 2u);
  }

  v12 = self;
  objc_sync_enter(v12);
  if ([(CHHapticEngine *)v12 hasPublicAudioResourceID:resourceID])
  {
    if ([(CHHapticEngine *)v12 doUnregisterAudioResource:resourceID fromPattern:0 error:outError])
    {
      [(CHHapticEngine *)v12 removePublicAudioResourceID:resourceID];
      v13 = 1;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (kHAPIScope)
  {
    v14 = *kHAPIScope;
    if (!v14)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v20 = 136315906;
    v21 = "CHHapticEngine.mm";
    v22 = 1024;
    v23 = 1768;
    v24 = 2080;
    v25 = "[CHHapticEngine unregisterAudioResource:error:]";
    v26 = 1024;
    v27 = resourceID;
    _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: audio resource ID %u not registered on this CHHapticEngine", &v20, 0x22u);
  }

LABEL_16:
  if (outError)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4824 userInfo:0];
    *outError = v13 = 0;
    goto LABEL_19;
  }

LABEL_18:
  v13 = 0;
LABEL_19:
  objc_sync_exit(v12);

  v16 = CALog::Scope::oslog(kHAPIScope);
  v17 = v16;
  if (v9 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v16))
  {
    LOWORD(v20) = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v17, OS_SIGNPOST_INTERVAL_END, v9, "HapticEngine_unregisterAudioResource", &unk_215703E5B, &v20, 2u);
  }

LABEL_23:
  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)doUnregisterAllPublicAudioResources
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_publicAudioResources.__tree_.__size_)
  {
    if (kHAPIScope)
    {
      v3 = *kHAPIScope;
      if (!v3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v3 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v16 = "CHHapticEngine.mm";
      v17 = 1024;
      v18 = 1778;
      v19 = 2080;
      v20 = "[CHHapticEngine doUnregisterAllPublicAudioResources]";
      _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Attempting to remove all remaining public audio resources for this engine", buf, 0x1Cu);
    }
  }

LABEL_9:
  begin_node = self->_publicAudioResources.__tree_.__begin_node_;
  p_end_node = &self->_publicAudioResources.__tree_.__end_node_;
  if (begin_node != &self->_publicAudioResources.__tree_.__end_node_)
  {
    do
    {
      left = begin_node[4].__left_;
      v8 = begin_node[5].__left_;
      v9 = begin_node[6].__left_;
      v14 = 0;
      [(CHHapticEngine *)self doUnregisterAudioResource:left fromPattern:0 error:&v14];

      v10 = begin_node[1].__left_;
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = v10->__left_;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = begin_node[2].__left_;
          v12 = v11->__left_ == begin_node;
          begin_node = v11;
        }

        while (!v12);
      }

      begin_node = v11;
    }

    while (v11 != p_end_node);
  }

  std::__tree<std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>>>::destroy(&self->_publicAudioResources, self->_publicAudioResources.__tree_.__end_node_.__left_);
  self->_publicAudioResources.__tree_.__end_node_.__left_ = 0;
  self->_publicAudioResources.__tree_.__size_ = 0;
  self->_publicAudioResources.__tree_.__begin_node_ = p_end_node;
  v13 = *MEMORY[0x277D85DE8];
}

- (void)doUnregisterAllAudioResources
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [(CHHapticEngine *)self player];
  v4 = _sResourceMutex;
  std::mutex::lock(_sResourceMutex);
  v6 = ResourceRegistry::instance(v5);
  ResourceRegistry::cleanUpRefCountKey(v6, self, v20);
  if (v3)
  {
    for (i = v21; i; i = *i)
    {
      if (kHAPIScope)
      {
        v8 = *kHAPIScope;
        if (!v8)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v8 = MEMORY[0x277D86220];
        v9 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = i[2];
        *buf = 136315906;
        *&buf[4] = "CHHapticEngine.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1802;
        *&buf[18] = 2080;
        *&buf[20] = "[CHHapticEngine doUnregisterAllAudioResources]";
        *&buf[28] = 1024;
        *&buf[30] = v10;
        _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: releasing resource ID %u from engine dealloc", buf, 0x22u);
      }

LABEL_10:
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = __Block_byref_object_copy__3;
      *&buf[32] = __Block_byref_object_dispose__3;
      v33 = 0;
      v11 = i[2];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __47__CHHapticEngine_doUnregisterAllAudioResources__block_invoke;
      v19[3] = &unk_2781C93A8;
      v19[4] = buf;
      if (([v3 releaseCustomAudioEvent:v11 reply:v19] & 1) == 0)
      {
        if (!kHAPIScope)
        {
          v13 = MEMORY[0x277D86220];
          v14 = MEMORY[0x277D86220];
          v12 = v13;
LABEL_15:
          v15 = v12;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = i[2];
            v17 = [*(*&buf[8] + 40) localizedDescription];
            *v22 = 136316162;
            v23 = "CHHapticEngine.mm";
            v24 = 1024;
            v25 = 1807;
            v26 = 2080;
            v27 = "[CHHapticEngine doUnregisterAllAudioResources]";
            v28 = 1024;
            v29 = v16;
            v30 = 2112;
            v31 = v17;
            _os_log_impl(&dword_21569A000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: unable to release server-side audio resource with ID %u: %@", v22, 0x2Cu);
          }

          goto LABEL_18;
        }

        v12 = *kHAPIScope;
        if (v12)
        {
          goto LABEL_15;
        }
      }

LABEL_18:
      _Block_object_dispose(buf, 8);
    }
  }

  std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::~__hash_table(v20);
  std::mutex::unlock(v4);

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)playPatternFromURL:(NSURL *)fileURL error:(NSError *)outError
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = fileURL;
  if (!self->_player)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1813, "[CHHapticEngine playPatternFromURL:error:]", "_player != nil", -4810, outError);
    v15 = 0;
    goto LABEL_43;
  }

  v7 = CALog::Scope::oslog(kHAPIScope);
  v8 = os_signpost_id_make_with_pointer(v7, self);

  v9 = CALog::Scope::oslog(kHAPIScope);
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "HapticEngine_playPatternFromURL", " enableTelemetry=YES ", buf, 2u);
  }

  if (v6)
  {
    if ([(NSURL *)v6 isFileURL])
    {
      v11 = [(NSURL *)v6 path];
      v12 = [v11 pathExtension];
      v13 = [v12 isEqualToString:@"plist"];

      if (v13)
      {
        if (kHAPIScope)
        {
          v14 = *kHAPIScope;
          if (!v14)
          {
LABEL_32:
            v35 = 0;
            v24 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v6 error:&v35];
            v25 = v35;
            v34 = v25;
            v21 = [[CHHapticPattern alloc] initWithDictionary:v24 error:&v34];
            v20 = v34;

            goto LABEL_33;
          }
        }

        else
        {
          v14 = MEMORY[0x277D86220];
          v23 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v37 = "CHHapticEngine.mm";
          v38 = 1024;
          v39 = 1820;
          v40 = 2080;
          v41 = "[CHHapticEngine playPatternFromURL:error:]";
          _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating haptic pattern from plist...", buf, 0x1Cu);
        }

        goto LABEL_32;
      }
    }

    if (kHAPIScope)
    {
      v16 = *kHAPIScope;
      if (!v16)
      {
LABEL_22:
        v33 = 0;
        v19 = [[CHHapticPattern alloc] initWithContentsOfURL:v6 error:&v33];
        v20 = v33;
        v21 = v19;
LABEL_33:
        if (v21)
        {
          v32 = v20;
          v15 = [(CHHapticEngine *)self doPlayPattern:v21 error:&v32];
          v26 = v32;

          v20 = v26;
        }

        else
        {
          v15 = 0;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v16 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v37 = "CHHapticEngine.mm";
      v38 = 1024;
      v39 = 1825;
      v40 = 2080;
      v41 = "[CHHapticEngine playPatternFromURL:error:]";
      _os_log_impl(&dword_21569A000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating haptic pattern from JSON or AHAP...", buf, 0x1Cu);
    }

    goto LABEL_22;
  }

  if (!kHAPIScope)
  {
    v17 = MEMORY[0x277D86220];
    v22 = MEMORY[0x277D86220];
    goto LABEL_24;
  }

  v17 = *kHAPIScope;
  if (v17)
  {
LABEL_24:
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v37 = "CHHapticEngine.mm";
      v38 = 1024;
      v39 = 1836;
      v40 = 2080;
      v41 = "[CHHapticEngine playPatternFromURL:error:]";
      _os_log_impl(&dword_21569A000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Incoming fileURL cannot be nil", buf, 0x1Cu);
    }
  }

  v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-50 userInfo:0];
  v15 = 0;
LABEL_37:
  if (outError)
  {
    v27 = v20;
    *outError = v20;
  }

  v28 = CALog::Scope::oslog(kHAPIScope);
  v29 = v28;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v29, OS_SIGNPOST_INTERVAL_END, v8, "HapticEngine_playPatternFromURL", &unk_215703E5B, buf, 2u);
  }

LABEL_43:
  v30 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)playPatternFromData:(NSData *)data error:(NSError *)outError
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = data;
  if (self->_player)
  {
    v7 = CALog::Scope::oslog(kHAPIScope);
    v8 = os_signpost_id_make_with_pointer(v7, self);

    v9 = CALog::Scope::oslog(kHAPIScope);
    v10 = v9;
    v11 = v8 - 1;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "HapticEngine_playPatternFromData", " enableTelemetry=YES ", buf, 2u);
    }

    if (v6)
    {
      v31 = 0;
      v12 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v31];
      v13 = v31;
      if (v12)
      {
        goto LABEL_9;
      }

      v30 = 0;
      v12 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:0 error:&v30];
      v14 = v30;

      if (v12)
      {
        v13 = v14;
LABEL_9:
        v29 = v13;
        v15 = [[CHHapticPattern alloc] initWithDictionary:v12 error:&v29];
        v14 = v29;

        if (v15)
        {
          v28 = v14;
          v16 = [(CHHapticEngine *)self doPlayPattern:v15 error:&v28];
          v17 = v28;

          v14 = v17;
        }

        else
        {
          v16 = 0;
        }

        if (!outError)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      if (kHAPIScope)
      {
        v23 = *kHAPIScope;
        if (!v23)
        {
LABEL_34:
          if (outError)
          {
            *outError = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4814 userInfo:0];
          }

          v25 = CALog::Scope::oslog(kHAPIScope);
          v22 = v25;
          if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_21569A000, v22, OS_SIGNPOST_INTERVAL_END, v8, "HapticEngine_playPatternFromData", &unk_215703E5B, buf, 2u);
          }

          v16 = 0;
          goto LABEL_40;
        }
      }

      else
      {
        v23 = MEMORY[0x277D86220];
        v24 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v33 = "CHHapticEngine.mm";
        v34 = 1024;
        v35 = 1861;
        v36 = 2080;
        v37 = "[CHHapticEngine playPatternFromData:error:]";
        _os_log_impl(&dword_21569A000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Incoming NSData is invalid", buf, 0x1Cu);
      }

      goto LABEL_34;
    }

    if (kHAPIScope)
    {
      v18 = *kHAPIScope;
      if (!v18)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v18 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v33 = "CHHapticEngine.mm";
      v34 = 1024;
      v35 = 1876;
      v36 = 2080;
      v37 = "[CHHapticEngine playPatternFromData:error:]";
      _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Incoming NSData cannot be nil", buf, 0x1Cu);
    }

LABEL_22:
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-50 userInfo:0];
    v16 = 0;
    if (!outError)
    {
LABEL_24:
      v21 = CALog::Scope::oslog(kHAPIScope);
      v22 = v21;
      if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_21569A000, v22, OS_SIGNPOST_INTERVAL_END, v8, "HapticEngine_playPatternFromData", &unk_215703E5B, buf, 2u);
      }

LABEL_40:

      goto LABEL_41;
    }

LABEL_23:
    v20 = v14;
    *outError = v14;
    goto LABEL_24;
  }

  _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1848, "[CHHapticEngine playPatternFromData:error:]", "_player != nil", -4810, outError);
  v16 = 0;
LABEL_41:

  v26 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)doPlayPattern:(id)a3 error:(id *)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (kHAPIScope)
  {
    v7 = *kHAPIScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "CHHapticEngine.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1889;
    *&buf[18] = 2080;
    *&buf[20] = "[CHHapticEngine doPlayPattern:error:]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Creating Pattern Player", buf, 0x1Cu);
  }

LABEL_8:
  v9 = [(CHHapticEngine *)self createPlayerWithPattern:v6 error:a4];
  if (!v9)
  {
    v11 = 0;
    goto LABEL_26;
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__3;
  v40 = __Block_byref_object_dispose__3;
  v41 = 0;
  if (!kHAPIScope)
  {
    v10 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
    goto LABEL_14;
  }

  v10 = *kHAPIScope;
  if (v10)
  {
LABEL_14:
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v33 = 136315650;
      v34 = "CHHapticEngine.mm";
      v35 = 1024;
      v36 = 1899;
      v37 = 2080;
      v38 = "[CHHapticEngine doPlayPattern:error:]";
      _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Starting CHHapticEngine...", v33, 0x1Cu);
    }
  }

  v13 = dispatch_group_create();
  dispatch_group_enter(v13);
  objc_initWeak(v33, self);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __38__CHHapticEngine_doPlayPattern_error___block_invoke;
  v23[3] = &unk_2781C9930;
  v26 = buf;
  v14 = v13;
  v24 = v14;
  objc_copyWeak(&v28, v33);
  v27 = &v29;
  v25 = v9;
  [(CHHapticEngine *)self startWithCompletionHandler:v23];
  v15 = dispatch_time(0, 4000000000);
  v16 = dispatch_group_wait(v14, v15);
  v18 = (*&buf[8] + 40);
  v17 = *(*&buf[8] + 40);
  if (a4 && v17)
  {
    v11 = 0;
    *a4 = v17;
  }

  else
  {
    if (v16)
    {
      v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4808 userInfo:0];
      v20 = v19;
      objc_storeStrong(v18, v19);
      *(v30 + 24) = 0;
    }

    if (a4)
    {
      *a4 = *(*&buf[8] + 40);
    }

    v11 = *(v30 + 24);
  }

  objc_destroyWeak(&v28);
  objc_destroyWeak(v33);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v29, 8);
LABEL_26:

  v21 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

void __38__CHHapticEngine_doPlayPattern_error___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    if (kHAPIScope)
    {
      v5 = *kHAPIScope;
      if (!v5)
      {
LABEL_10:
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
        dispatch_group_leave(*(a1 + 32));
        goto LABEL_11;
      }
    }

    else
    {
      v5 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *location = 136315906;
      *&location[4] = "CHHapticEngine.mm";
      v20 = 1024;
      v21 = 1906;
      v22 = 2080;
      v23 = "[CHHapticEngine doPlayPattern:error:]_block_invoke";
      v24 = 2112;
      v25 = v4;
      _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Cannot start haptic engine: error %@", location, 0x26u);
    }

    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  objc_initWeak(location, WeakRetained);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __38__CHHapticEngine_doPlayPattern_error___block_invoke_246;
  v15[3] = &unk_2781C9908;
  objc_copyWeak(&v18, location);
  v13 = *(a1 + 56);
  v7 = *(a1 + 40);
  *&v8 = v13;
  *(&v8 + 1) = *(a1 + 48);
  v14 = v8;
  v9 = *(a1 + 32);
  *&v10 = v7;
  *(&v10 + 1) = v9;
  v17 = v14;
  v16 = v10;
  [WeakRetained dispatchOnLocal:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(location);

LABEL_11:
  v12 = *MEMORY[0x277D85DE8];
}

void __38__CHHapticEngine_doPlayPattern_error___block_invoke_246(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained currentTime];
    v5 = v4;
    if (kHAPIScope)
    {
      v6 = *kHAPIScope;
      if (!v6)
      {
LABEL_9:
        v8 = *(a1 + 32);
        v9 = *(*(a1 + 56) + 8);
        obj = *(v9 + 40);
        v10 = [v8 startAtTime:&obj error:v5];
        objc_storeStrong((v9 + 40), obj);
        *(*(*(a1 + 48) + 8) + 24) = v10;
        goto LABEL_10;
      }
    }

    else
    {
      v6 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v14 = "CHHapticEngine.mm";
      v15 = 1024;
      v16 = 1918;
      v17 = 2080;
      v18 = "[CHHapticEngine doPlayPattern:error:]_block_invoke";
      _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Starting Pattern Player...", buf, 0x1Cu);
    }

    goto LABEL_9;
  }

LABEL_10:
  dispatch_group_leave(*(a1 + 40));

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)dispatchOnGlobal:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CHHapticEngine_CHHapticEngineInternal__dispatchOnGlobal___block_invoke;
  block[3] = &unk_2781C9260;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

- (void)dispatchOnLocal:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v5 = *kHAPIScope;
      if (v5)
      {
        v6 = v5;
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          v7 = MEMORY[0x21606F540](v4);
          *buf = 136315906;
          v14 = "CHHapticEngine.mm";
          v15 = 1024;
          v16 = 1998;
          v17 = 2080;
          v18 = "[CHHapticEngine(CHHapticEngineInternal) dispatchOnLocal:]";
          v19 = 2048;
          v20 = v7;
          _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Dispatching block %p async...>", buf, 0x26u);
        }
      }
    }
  }

  if (in_dispatch_sync == 1)
  {
    [CHHapticEngine(CHHapticEngineInternal) dispatchOnLocal:];
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CHHapticEngine_CHHapticEngineInternal__dispatchOnLocal___block_invoke;
  block[3] = &unk_2781C9260;
  v12 = v4;
  v9 = v4;
  dispatch_async(dispatchQueue, block);

  v10 = *MEMORY[0x277D85DE8];
}

void __58__CHHapticEngine_CHHapticEngineInternal__dispatchOnLocal___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  (*(*(a1 + 32) + 16))();
  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v1 = *kHAPIScope;
      if (v1)
      {
        v2 = v1;
        if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
        {
          v4 = 136315650;
          v5 = "CHHapticEngine.mm";
          v6 = 1024;
          v7 = 2002;
          v8 = 2080;
          v9 = "[CHHapticEngine(CHHapticEngineInternal) dispatchOnLocal:]_block_invoke";
          _os_log_impl(&dword_21569A000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Block async dispatch complete>", &v4, 0x1Cu);
        }
      }
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)dispatchSyncOnLocal:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v5 = *kHAPIScope;
      if (v5)
      {
        v6 = v5;
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          v7 = MEMORY[0x21606F540](v4);
          *buf = 136315906;
          v14 = "CHHapticEngine.mm";
          v15 = 1024;
          v16 = 2008;
          v17 = 2080;
          v18 = "[CHHapticEngine(CHHapticEngineInternal) dispatchSyncOnLocal:]";
          v19 = 2048;
          v20 = v7;
          _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Dispatching block %p sync...>", buf, 0x26u);
        }
      }
    }
  }

  in_dispatch_sync = 1;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__CHHapticEngine_CHHapticEngineInternal__dispatchSyncOnLocal___block_invoke;
  block[3] = &unk_2781C9260;
  v12 = v4;
  v9 = v4;
  dispatch_sync(dispatchQueue, block);
  in_dispatch_sync = 0;

  v10 = *MEMORY[0x277D85DE8];
}

void __62__CHHapticEngine_CHHapticEngineInternal__dispatchSyncOnLocal___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  (*(*(a1 + 32) + 16))();
  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v1 = *kHAPIScope;
      if (v1)
      {
        v2 = v1;
        if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
        {
          v4 = 136315650;
          v5 = "CHHapticEngine.mm";
          v6 = 1024;
          v7 = 2012;
          v8 = 2080;
          v9 = "[CHHapticEngine(CHHapticEngineInternal) dispatchSyncOnLocal:]_block_invoke";
          _os_log_impl(&dword_21569A000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Block sync dispatch complete>", &v4, 0x1Cu);
        }
      }
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (BOOL)checkEngineStateOnStart:(id *)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(CHHapticEngine *)self isAutoShutdownEnabled]&& ![(CHHapticEngine *)self running])
  {
    if (kHAPIScope)
    {
      v6 = *kHAPIScope;
      if (!v6)
      {
LABEL_13:
        result = [(CHHapticEngine *)self doStartEngineAndWait:a3];
        goto LABEL_14;
      }
    }

    else
    {
      v6 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315650;
      v10 = "CHHapticEngine.mm";
      v11 = 1024;
      v12 = 2020;
      v13 = 2080;
      v14 = "[CHHapticEngine(CHHapticEngineInternal) checkEngineStateOnStart:]";
      _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: AutoShutdown on and engine stopped - auto start", &v9, 0x1Cu);
    }

    goto LABEL_13;
  }

  if ([(CHHapticEngine *)self running])
  {
    result = 1;
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 2024, "[CHHapticEngine(CHHapticEngineInternal) checkEngineStateOnStart:]", "self.running", -4805, a3);
    result = 0;
  }

LABEL_14:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)checkEngineRunning:(id *)a3
{
  v4 = [(CHHapticEngine *)self running];
  if (!v4)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 2031, "[CHHapticEngine(CHHapticEngineInternal) checkEngineRunning:]", "self.running", -4805, a3);
  }

  return v4;
}

- (BOOL)notifyPlayerStarted:(id)a3 atTime:(double)a4
{
  v4 = self;
  objc_sync_enter(v4);
  objc_initWeak(&location, v4);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__CHHapticEngine_CHHapticEngineInternal__notifyPlayerStarted_atTime___block_invoke;
  v10[3] = &unk_2781C9420;
  objc_copyWeak(&v11, &location);
  [(CHHapticEngine *)v4 dispatchOnLocal:v10];
  v5 = [(CHHapticEngine *)v4 player];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__CHHapticEngine_CHHapticEngineInternal__notifyPlayerStarted_atTime___block_invoke_2;
  v8[3] = &unk_2781C8FE0;
  objc_copyWeak(&v9, &location);
  v6 = [v5 finishWithCompletionHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  objc_sync_exit(v4);

  return v6;
}

void __69__CHHapticEngine_CHHapticEngineInternal__notifyPlayerStarted_atTime___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isAutoShutdownEnabled])
  {
    [WeakRetained cancelIdleTimer];
  }
}

void __69__CHHapticEngine_CHHapticEngineInternal__notifyPlayerStarted_atTime___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (kHAPIScope)
  {
    v4 = *kHAPIScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315650;
    v13 = "CHHapticEngine.mm";
    v14 = 1024;
    v15 = 2047;
    v16 = 2080;
    v17 = "[CHHapticEngine(CHHapticEngineInternal) notifyPlayerStarted:atTime:]_block_invoke_2";
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Top of AV finishWithCompletionHandler block>", &v12, 0x1Cu);
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!v3)
  {
    goto LABEL_16;
  }

  if (kHAPIScope)
  {
    v7 = *kHAPIScope;
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v12 = 136315906;
    v13 = "CHHapticEngine.mm";
    v14 = 1024;
    v15 = 2049;
    v16 = 2080;
    v17 = "[CHHapticEngine(CHHapticEngineInternal) notifyPlayerStarted:atTime:]_block_invoke";
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: finishWithCompletionHandler callback returned error: %@", &v12, 0x26u);
  }

LABEL_16:
  if (WeakRetained)
  {
    [WeakRetained handleFinish:v3];
  }

  if (kHAPIScope)
  {
    v9 = *kHAPIScope;
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315650;
    v13 = "CHHapticEngine.mm";
    v14 = 1024;
    v15 = 2053;
    v16 = 2080;
    v17 = "[CHHapticEngine(CHHapticEngineInternal) notifyPlayerStarted:atTime:]_block_invoke";
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Bottom of AV finishWithCompletionHandler block>", &v12, 0x1Cu);
  }

LABEL_25:
  v11 = *MEMORY[0x277D85DE8];
}

- (void)notifyPlayerStopped:(id)a3 atTime:(double)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (kHAPIScope)
  {
    v6 = *kHAPIScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136316162;
    v10 = "CHHapticEngine.mm";
    v11 = 1024;
    v12 = 2061;
    v13 = 2080;
    v14 = "[CHHapticEngine(CHHapticEngineInternal) notifyPlayerStopped:atTime:]";
    v15 = 2048;
    v16 = v5;
    v17 = 2048;
    v18 = a4;
    _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: player %p notified engine it will be stopping at time %.3f", &v9, 0x30u);
  }

LABEL_8:
  v8 = *MEMORY[0x277D85DE8];
}

- (id)getAvailableChannel:(id *)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(AVHapticPlayer *)self->_player addChannel:a3];
  if (!v3)
  {
    if (kHAPIScope)
    {
      v4 = *kHAPIScope;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v4 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "CHHapticEngine.mm";
      v10 = 1024;
      v11 = 2068;
      v12 = 2080;
      v13 = "[CHHapticEngine(CHHapticEngineInternal) getAvailableChannel:]";
      _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unable to add an additional player channel", &v8, 0x1Cu);
    }
  }

LABEL_9:
  v6 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)releaseChannel:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  player = self->_player;
  v9 = 0;
  v4 = [(AVHapticPlayer *)player removeChannel:a3 error:&v9];
  v5 = v9;
  if (!v4)
  {
    if (kHAPIScope)
    {
      v6 = *kHAPIScope;
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v11 = "CHHapticEngine.mm";
      v12 = 1024;
      v13 = 2079;
      v14 = 2080;
      v15 = "[CHHapticEngine(CHHapticEngineInternal) releaseChannel:]";
      _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: This channel was not registered", buf, 0x1Cu);
    }
  }

LABEL_9:

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)doReferenceAudioResourceByID:(unint64_t)a3
{
  v25 = *MEMORY[0x277D85DE8];
  if (kHAPIScope)
  {
    v5 = *kHAPIScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v17 = 136315906;
    v18 = "CHHapticEngine.mm";
    v19 = 1024;
    v20 = 2085;
    v21 = 2080;
    v22 = "[CHHapticEngine(CHHapticEngineInternal) doReferenceAudioResourceByID:]";
    v23 = 1024;
    v24 = a3;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Adding reference to audio resource ID %u from pattern", &v17, 0x22u);
  }

LABEL_8:
  v7 = _sResourceMutex;
  std::mutex::lock(_sResourceMutex);
  v9 = ResourceRegistry::instance(v8);
  v10 = ResourceRegistry::incrementReferenceCountNoCreate(v9, a3, self);
  if (!v10)
  {
    if (kHAPIScope)
    {
      v11 = *kHAPIScope;
      if (!v11)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v11 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    v17 = 136315906;
    v18 = "CHHapticEngine.mm";
    v19 = 1024;
    v20 = 2093;
    v21 = 2080;
    v22 = "[CHHapticEngine(CHHapticEngineInternal) doReferenceAudioResourceByID:]";
    v23 = 1024;
    v24 = a3;
    v13 = "%25s:%-5d %s: Resource ID %u not previously registered!";
    goto LABEL_21;
  }

  if (kHAPIScope)
  {
    v11 = *kHAPIScope;
    if (!v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v17 = 136315906;
    v18 = "CHHapticEngine.mm";
    v19 = 1024;
    v20 = 2090;
    v21 = 2080;
    v22 = "[CHHapticEngine(CHHapticEngineInternal) doReferenceAudioResourceByID:]";
    v23 = 1024;
    v24 = v10;
    v13 = "%25s:%-5d %s:    found it - reference count now %u";
LABEL_21:
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_INFO, v13, &v17, 0x22u);
  }

LABEL_22:

LABEL_23:
  std::mutex::unlock(v7);
  v15 = *MEMORY[0x277D85DE8];
  return v10 != 0;
}

- (unint64_t)doRegisterAudioResource:(id)a3 options:(id)a4 fromPattern:(BOOL)a5 error:(id *)a6
{
  v6 = a5;
  v77 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v64 = v9;
  v56 = a4;
  v55 = [(CHHapticEngine *)self player];
  if (kHAPIScope)
  {
    v10 = *kHAPIScope;
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = "Public";
    *buf = 136316162;
    *&buf[4] = "CHHapticEngine.mm";
    *&buf[12] = 1024;
    *&buf[14] = 2101;
    *&buf[20] = "[CHHapticEngine(CHHapticEngineInternal) doRegisterAudioResource:options:fromPattern:error:]";
    *&buf[18] = 2080;
    if (v6)
    {
      v12 = "Pattern";
    }

    *&buf[28] = 2080;
    *&buf[30] = v12;
    *&buf[38] = 2112;
    v66 = v9;
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Registering %s audio resource '%@'", buf, 0x30u);
  }

LABEL_10:
  v52 = _sResourceMutex;
  std::mutex::lock(_sResourceMutex);
  v14 = ResourceRegistry::instance(v13);
  IdealMatch = ResourceRegistry::findIdealMatch(v14, v64, v56, self);
  v17 = IdealMatch;
  if (v14 + 1 == IdealMatch)
  {
    if (kHAPIScope)
    {
      v22 = *kHAPIScope;
      if (!v22)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v22 = MEMORY[0x277D86220];
      v30 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "CHHapticEngine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2177;
      *&buf[18] = 2080;
      *&buf[20] = "[CHHapticEngine(CHHapticEngineInternal) doRegisterAudioResource:options:fromPattern:error:]";
      _os_log_impl(&dword_21569A000, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Resource not already registered - creating new entry", buf, 0x1Cu);
    }

LABEL_36:
    std::allocate_shared[abi:ne200100]<AudioResource,std::allocator<AudioResource>,NSURL * {__strong}&,0>();
  }

  v18 = v16;
  v19 = *(IdealMatch + 5);
  v20 = *(IdealMatch + 6);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (kHAPIScope)
  {
    v21 = *kHAPIScope;
    if (!v21)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = MEMORY[0x277D86220];
    v23 = MEMORY[0x277D86220];
  }

  v24 = v21;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v25 = *v19;
    v26 = [v25 absoluteString];
    v27 = *(v17 + 4);
    *buf = 136316162;
    *&buf[4] = "CHHapticEngine.mm";
    *&buf[12] = 1024;
    *&buf[18] = 2080;
    *&buf[14] = 2112;
    *&buf[20] = "[CHHapticEngine(CHHapticEngineInternal) doRegisterAudioResource:options:fromPattern:error:]";
    *&buf[28] = 2112;
    *&buf[30] = v26;
    *&buf[38] = 1024;
    LODWORD(v66) = v27;
    _os_log_impl(&dword_21569A000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: -- Entry list has '%@' with ID %u", buf, 0x2Cu);
  }

LABEL_23:
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v18)
  {
    if (kHAPIScope)
    {
      v28 = *kHAPIScope;
      if (!v28)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v28 = MEMORY[0x277D86220];
      v31 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v32 = *(v17 + 4);
      *buf = 136315906;
      *&buf[4] = "CHHapticEngine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2118;
      *&buf[18] = 2080;
      *&buf[20] = "[CHHapticEngine(CHHapticEngineInternal) doRegisterAudioResource:options:fromPattern:error:]";
      *&buf[28] = 1024;
      *&buf[30] = v32;
      _os_log_impl(&dword_21569A000, v28, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Resource already registered and request uses matching options - referencing existing ID (%u)", buf, 0x22u);
    }

LABEL_41:
    v33 = *(v17 + 4);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__3;
    *&buf[32] = __Block_byref_object_dispose__3;
    v66 = 0;
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __92__CHHapticEngine_CHHapticEngineInternal__doRegisterAudioResource_options_fromPattern_error___block_invoke;
    v63[3] = &unk_2781C93A8;
    v63[4] = buf;
    if ([v55 referenceCustomAudioEvent:v33 reply:{v63, v52}])
    {
      goto LABEL_67;
    }

    if (kHAPIScope)
    {
      v34 = *kHAPIScope;
      if (!v34)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v34 = MEMORY[0x277D86220];
      v41 = MEMORY[0x277D86220];
    }

    v42 = v34;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = [*(*&buf[8] + 40) localizedDescription];
      v67 = 136316162;
      v68 = "CHHapticEngine.mm";
      v69 = 1024;
      v70 = 2122;
      v71 = 2080;
      v72 = "[CHHapticEngine(CHHapticEngineInternal) doRegisterAudioResource:options:fromPattern:error:]";
      v73 = 1024;
      v74 = v33;
      v75 = 2112;
      v76 = v43;
      _os_log_impl(&dword_21569A000, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: unable to reference server-side audio resource with ID %u: %@", &v67, 0x2Cu);
    }

LABEL_67:
    if (!*(*&buf[8] + 40))
    {
      ResourceRegistry::incrementReferenceCountNoCreate(v14, v33, self);
      goto LABEL_78;
    }

    if (kHAPIScope)
    {
      v44 = *kHAPIScope;
      if (!v44)
      {
LABEL_76:
        v33 = 0;
        if (a6)
        {
          *a6 = *(*&buf[8] + 40);
        }

LABEL_78:
        _Block_object_dispose(buf, 8);

        if (!v20)
        {
          goto LABEL_92;
        }

        goto LABEL_91;
      }
    }

    else
    {
      v44 = MEMORY[0x277D86220];
      v45 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v67 = 136315650;
      v68 = "CHHapticEngine.mm";
      v69 = 1024;
      v70 = 2124;
      v71 = 2080;
      v72 = "[CHHapticEngine(CHHapticEngineInternal) doRegisterAudioResource:options:fromPattern:error:]";
      _os_log_impl(&dword_21569A000, v44, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Returning ID 0 due to error", &v67, 0x1Cu);
    }

    goto LABEL_76;
  }

  if (kHAPIScope)
  {
    v29 = *kHAPIScope;
    if (!v29)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v29 = MEMORY[0x277D86220];
    v35 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v36 = *(v17 + 4);
    *buf = 136315906;
    *&buf[4] = "CHHapticEngine.mm";
    *&buf[12] = 1024;
    *&buf[14] = 2140;
    *&buf[18] = 2080;
    *&buf[20] = "[CHHapticEngine(CHHapticEngineInternal) doRegisterAudioResource:options:fromPattern:error:]";
    *&buf[28] = 1024;
    *&buf[30] = v36;
    _os_log_impl(&dword_21569A000, v29, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Resource already registered but request uses options - copy existing ID (%u) as new ID", buf, 0x22u);
  }

LABEL_49:
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000uLL;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__3;
  *&buf[32] = __Block_byref_object_dispose__3;
  v66 = 0;
  v37 = *(v17 + 4);
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __92__CHHapticEngine_CHHapticEngineInternal__doRegisterAudioResource_options_fromPattern_error___block_invoke_485;
  v62[3] = &unk_2781C9380;
  v62[4] = &v57;
  v62[5] = buf;
  [v55 copyCustomAudioEvent:v37 options:v56 reply:{v62, v52}];
  if (*(*&buf[8] + 40))
  {
    if (kHAPIScope)
    {
      v38 = *kHAPIScope;
      if (!v38)
      {
LABEL_60:
        v33 = 0;
        if (a6)
        {
          *a6 = *(*&buf[8] + 40);
        }

        goto LABEL_90;
      }
    }

    else
    {
      v38 = MEMORY[0x277D86220];
      v40 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v67 = 136315650;
      v68 = "CHHapticEngine.mm";
      v69 = 1024;
      v70 = 2168;
      v71 = 2080;
      v72 = "[CHHapticEngine(CHHapticEngineInternal) doRegisterAudioResource:options:fromPattern:error:]";
      _os_log_impl(&dword_21569A000, v38, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Returning ID 0 due to error", &v67, 0x1Cu);
    }

    goto LABEL_60;
  }

  if (!kHAPIScope)
  {
    v39 = MEMORY[0x277D86220];
    v46 = MEMORY[0x277D86220];
    goto LABEL_81;
  }

  v39 = *kHAPIScope;
  if (v39)
  {
LABEL_81:
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v47 = v58[3];
      v67 = 136316162;
      v68 = "CHHapticEngine.mm";
      v69 = 1024;
      v70 = 2153;
      v71 = 2080;
      v72 = "[CHHapticEngine(CHHapticEngineInternal) doRegisterAudioResource:options:fromPattern:error:]";
      v73 = 1024;
      v74 = v47;
      v75 = 2112;
      v76 = v64;
      _os_log_impl(&dword_21569A000, v39, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Returning ID %u for copied resource '%@'", &v67, 0x2Cu);
    }
  }

  v48 = v58[3];
  v60 = v19;
  v61 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v49 = ResourceRegistry::emplace(v14, v48, &v60, *v19, v56, self);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  if ((v49 & 1) == 0)
  {
    [CHHapticEngine(CHHapticEngineInternal) doRegisterAudioResource:options:fromPattern:error:];
  }

  v33 = v58[3];
LABEL_90:
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v57, 8);
  if (v20)
  {
LABEL_91:
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

LABEL_92:
  std::mutex::unlock(v53);

  v50 = *MEMORY[0x277D85DE8];
  return v33;
}

void __92__CHHapticEngine_CHHapticEngineInternal__doRegisterAudioResource_options_fromPattern_error___block_invoke_485(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (v6)
  {
    if (kHAPIScope)
    {
      v7 = *kHAPIScope;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    v9 = v7;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v6 localizedDescription];
      v12 = 136315906;
      v13 = "CHHapticEngine.mm";
      v14 = 1024;
      v15 = 2149;
      v16 = 2080;
      v17 = "[CHHapticEngine(CHHapticEngineInternal) doRegisterAudioResource:options:fromPattern:error:]_block_invoke";
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Server failed to copy custom audio event: %@", &v12, 0x26u);
    }
  }

LABEL_9:

  v11 = *MEMORY[0x277D85DE8];
}

void __92__CHHapticEngine_CHHapticEngineInternal__doRegisterAudioResource_options_fromPattern_error___block_invoke_490(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (v6)
  {
    if (kHAPIScope)
    {
      v7 = *kHAPIScope;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    v9 = v7;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v6 localizedDescription];
      v12 = 136315906;
      v13 = "CHHapticEngine.mm";
      v14 = 1024;
      v15 = 2206;
      v16 = 2080;
      v17 = "[CHHapticEngine(CHHapticEngineInternal) doRegisterAudioResource:options:fromPattern:error:]_block_invoke";
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Server failed to create custom audio event: %@", &v12, 0x26u);
    }
  }

LABEL_9:

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)doUnregisterAudioResource:(unint64_t)a3 fromPattern:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v46 = *MEMORY[0x277D85DE8];
  v9 = [(CHHapticEngine *)self player];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__3;
  v36 = __Block_byref_object_dispose__3;
  v37 = 0;
  if (kHAPIScope)
  {
    v10 = *kHAPIScope;
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = "public-loaded";
    *buf = 136316162;
    v39 = "CHHapticEngine.mm";
    v41 = 2235;
    v43 = "[CHHapticEngine(CHHapticEngineInternal) doUnregisterAudioResource:fromPattern:error:]";
    v40 = 1024;
    v42 = 2080;
    if (v6)
    {
      v12 = "pattern-loaded";
    }

    v44 = 2080;
    *v45 = v12;
    *&v45[8] = 1024;
    *&v45[10] = a3;
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Attempting to remove %s ID %u", buf, 0x2Cu);
  }

LABEL_10:
  v13 = _sResourceMutex;
  std::mutex::lock(_sResourceMutex);
  v15 = ResourceRegistry::instance(v14);
  v16 = ResourceRegistry::decrementReferenceCount(v15, a3, self);
  if (v16)
  {
    if (v16 == 1)
    {
      if (kHAPIScope)
      {
        v18 = *kHAPIScope;
        if (!v18)
        {
          v19 = 1;
          goto LABEL_48;
        }
      }

      else
      {
        v18 = MEMORY[0x277D86220];
        v21 = MEMORY[0x277D86220];
      }

      v19 = 1;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v39 = "CHHapticEngine.mm";
        v40 = 1024;
        v41 = 2247;
        v42 = 2080;
        v43 = "[CHHapticEngine(CHHapticEngineInternal) doUnregisterAudioResource:fromPattern:error:]";
        _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_INFO, "%25s:%-5d %s:    found it and decrementing refcount", buf, 0x1Cu);
      }

      goto LABEL_47;
    }

    if (v16 != 2)
    {
LABEL_41:
      v19 = 0;
      goto LABEL_48;
    }

    if (kHAPIScope)
    {
      v17 = *kHAPIScope;
      if (!v17)
      {
LABEL_35:
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __86__CHHapticEngine_CHHapticEngineInternal__doUnregisterAudioResource_fromPattern_error___block_invoke;
        v31[3] = &unk_2781C93A8;
        v31[4] = &v32;
        v24 = [v9 releaseCustomAudioEvent:a3 reply:v31];
        v19 = v24;
        if (v9)
        {
          v25 = v24;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {
LABEL_48:
          if (a5)
          {
            goto LABEL_49;
          }

          goto LABEL_50;
        }

        if (kHAPIScope)
        {
          v26 = *kHAPIScope;
          if (!v26)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v26 = MEMORY[0x277D86220];
          v27 = MEMORY[0x277D86220];
        }

        v18 = v26;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v28 = [v33[5] localizedDescription];
          *buf = 136316162;
          v39 = "CHHapticEngine.mm";
          v40 = 1024;
          v41 = 2255;
          v42 = 2080;
          v43 = "[CHHapticEngine(CHHapticEngineInternal) doUnregisterAudioResource:fromPattern:error:]";
          v44 = 1024;
          *v45 = a3;
          *&v45[4] = 2112;
          *&v45[6] = v28;
          _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: unable to release server-side audio resource with ID %u: %@", buf, 0x2Cu);
        }

        v19 = 0;
LABEL_47:

        goto LABEL_48;
      }
    }

    else
    {
      v17 = MEMORY[0x277D86220];
      v23 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v39 = "CHHapticEngine.mm";
      v40 = 1024;
      v41 = 2252;
      v42 = 2080;
      v43 = "[CHHapticEngine(CHHapticEngineInternal) doUnregisterAudioResource:fromPattern:error:]";
      _os_log_impl(&dword_21569A000, v17, OS_LOG_TYPE_INFO, "%25s:%-5d %s:    found it and refcount is at zero - erasing and releasing on server", buf, 0x1Cu);
    }

    goto LABEL_35;
  }

  if (!kHAPIScope)
  {
    v20 = MEMORY[0x277D86220];
    v22 = MEMORY[0x277D86220];
    goto LABEL_26;
  }

  v20 = *kHAPIScope;
  if (v20)
  {
LABEL_26:
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v39 = "CHHapticEngine.mm";
      v40 = 1024;
      v41 = 2242;
      v42 = 2080;
      v43 = "[CHHapticEngine(CHHapticEngineInternal) doUnregisterAudioResource:fromPattern:error:]";
      v44 = 1024;
      *v45 = a3;
      _os_log_impl(&dword_21569A000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: could not find audio resource with ID %u", buf, 0x22u);
    }
  }

  if (a5)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4824 userInfo:0];
    *a5 = v19 = 0;
LABEL_49:
    *a5 = v33[5];
    goto LABEL_50;
  }

  v19 = 0;
LABEL_50:
  std::mutex::unlock(v13);
  _Block_object_dispose(&v32, 8);

  v29 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)addPublicAudioResourceID:withURL:options:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0(&dword_21569A000, MEMORY[0x277D86220], v0, "%25s:%-5d ASSERTION FAILURE [([self doFindPublicAudioResourceID:resourceID] == std::end(_publicAudioResources)) != 0 is false]: ", v1, v2, v3, v4, 2u);
  }

  __break(1u);
}

- (void)removePublicAudioResourceID:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0(&dword_21569A000, MEMORY[0x277D86220], v0, "%25s:%-5d ASSERTION FAILURE [(result != std::end(_publicAudioResources)) != 0 is false]: ", v1, v2, v3, v4, 2u);
  }

  __break(1u);
}

@end