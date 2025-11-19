@interface AdvancedPatternPlayer
- (AdvancedPatternPlayer)initWithRingtoneData:(id)a3 engine:(id)a4 error:(id *)a5;
- (AdvancedPatternPlayer)initWithVibePatternDictionary:(id)a3 engine:(id)a4 error:(id *)a5;
- (BOOL)activateChannelByIndex:(unint64_t)a3 atTime:(double)a4 error:(id *)a5;
- (BOOL)cancelAndReturnError:(id *)a3;
- (BOOL)doResumeAtTime:(double)a3 error:(id *)a4;
- (BOOL)doStartFromPausedAtTime:(double)a3 error:(id *)a4;
- (BOOL)doStartFromStoppedAtTime:(double)a3 error:(id *)a4;
- (BOOL)earlyUnduckAudioAtTime:(double)a3 error:(id *)a4;
- (BOOL)pauseAtTime:(double)a3 error:(id *)a4;
- (BOOL)resumeAtTime:(double)a3 error:(id *)a4;
- (BOOL)scheduleParameterCurve:(id)a3 atTime:(double)a4 error:(id *)a5;
- (BOOL)seekToOffset:(double)a3 error:(id *)a4;
- (BOOL)sendParameters:(id)a3 atTime:(double)a4 error:(id *)a5;
- (BOOL)setVolume:(float)a3 atTime:(double)a4 error:(id *)a5;
- (BOOL)startAtTime:(double)a3 error:(id *)a4;
- (BOOL)stopAtTime:(double)a3 error:(id *)a4;
- (double)patternDuration;
- (double)seekOffset;
- (float)volume;
- (id).cxx_construct;
- (id)completionHandler;
- (void)clearExternalResources:(id)a3;
- (void)clearSeekOffset;
- (void)dealloc;
- (void)finishInit;
- (void)setCompletionHandler:(id)a3;
- (void)setLoopEnd:(double)a3;
- (void)setPlaybackRate:(float)a3;
- (void)setSeekOffset:(double)a3;
- (void)setVolume:(float)a3;
@end

@implementation AdvancedPatternPlayer

- (void)finishInit
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(AVHapticSequence *)self->_sequence eventBehavior];
  WeakRetained = objc_loadWeakRetained(&self->super._engine);
  v5 = [WeakRetained muteHapticsWhileRecordingAudio];

  v6 = 4;
  if (v5)
  {
    v6 = 0;
  }

  [(AVHapticSequence *)self->_sequence setEventBehavior:v6 | v3 & 0xFFFFFFFFFFFFFFFBLL];
  objc_initWeak(&location, self);
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
    *buf = 136315650;
    v14 = "CHHapticAdvancedPatternPlayer.mm";
    v15 = 1024;
    v16 = 60;
    v17 = 2080;
    v18 = "[AdvancedPatternPlayer finishInit]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Setting default completion handler on underlying AVHapticSequence", buf, 0x1Cu);
  }

LABEL_10:
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__AdvancedPatternPlayer_finishInit__block_invoke;
  v10[3] = &unk_2781C8FE0;
  objc_copyWeak(&v11, &location);
  [(AVHapticSequence *)self->_sequence setCompletionHandler:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  v9 = *MEMORY[0x277D85DE8];
}

void __35__AdvancedPatternPlayer_finishInit__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (kHAPIScope)
  {
    v2 = *kHAPIScope;
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

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v6 = 136315906;
    v7 = "CHHapticAdvancedPatternPlayer.mm";
    v8 = 1024;
    v9 = 63;
    v10 = 2080;
    v11 = "[AdvancedPatternPlayer finishInit]_block_invoke";
    v12 = 2048;
    v13 = WeakRetained;
    _os_log_impl(&dword_21569A000, v2, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Player %p default completion handler called", &v6, 0x26u);
  }

LABEL_8:
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_sync_enter(v4);
    [v4 clearSeekOffset];
    [v4 resetState];
    objc_sync_exit(v4);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
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
    v9 = "CHHapticAdvancedPatternPlayer.mm";
    v10 = 1024;
    v11 = 133;
    v12 = 2080;
    v13 = "[AdvancedPatternPlayer dealloc]";
    v14 = 2048;
    v15 = self;
    _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Destroying advanced player %p", buf, 0x26u);
  }

LABEL_8:
  if (![(AVHapticSequence *)self->_sequence invalidated])
  {
    WeakRetained = objc_loadWeakRetained(&self->super._engine);
    [(AdvancedPatternPlayer *)self clearExternalResources:WeakRetained];
  }

  v7.receiver = self;
  v7.super_class = AdvancedPatternPlayer;
  [(AdvancedPatternPlayer *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)clearExternalResources:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
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
          *buf = 136315650;
          v13 = "CHHapticAdvancedPatternPlayer.mm";
          v14 = 1024;
          v15 = 150;
          v16 = 2080;
          v17 = "[AdvancedPatternPlayer clearExternalResources:]";
          _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Clearing any externally-registered audio resources", buf, 0x1Cu);
        }
      }
    }
  }

  for (i = 0; i < [(NSArray *)self->super._events count]; ++i)
  {
    v8 = [(NSArray *)self->super._events objectAtIndexedSubscript:i];
    if (+[CHHapticEngine resourceIsRegistered:](CHHapticEngine, "resourceIsRegistered:", [v8 eventType]))
    {
      v9 = [v8 eventType];
      v11 = 0;
      [v4 doUnregisterAudioResource:v9 fromPattern:1 error:&v11];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)doStartFromStoppedAtTime:(double)a3 error:(id *)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = [(PatternPlayerBase *)self engine];
  v8 = [v7 checkEngineStateOnStart:a4];

  if ((v8 & 1) == 0)
  {
    goto LABEL_12;
  }

  muteState = self->super._muteState;
  if ((muteState - 1) <= 1)
  {
    v10 = muteState == 2;
    [(AdvancedPatternPlayer *)self doSetMute:muteState == 2];
    self->super._muteState = newStateFromOld(self->super._muteState, v10, 1);
  }

  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v11 = *kHAPIScope;
      if (v11)
      {
        v12 = v11;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [(AdvancedPatternPlayer *)self seekOffset];
          v23 = 136315906;
          v24 = "CHHapticAdvancedPatternPlayer.mm";
          v25 = 1024;
          v26 = 173;
          v27 = 2080;
          v28 = "[AdvancedPatternPlayer doStartFromStoppedAtTime:error:]";
          v29 = 2048;
          v30 = v13;
          _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Starting sequence with offset %.3f", &v23, 0x26u);
        }
      }
    }
  }

  sequence = self->_sequence;
  [(AdvancedPatternPlayer *)self seekOffset];
  if ([(AVHapticSequence *)sequence playAtTime:a4 offset:a3 error:v15])
  {
    [(AdvancedPatternPlayer *)self setRunning];
    [(AdvancedPatternPlayer *)self clearSeekOffset];
    v16 = [(PatternPlayerBase *)self engine];
    v17 = [v16 notifyPlayerStarted:self atTime:a3];

    WeakRetained = objc_loadWeakRetained(&self->super._engine);
    v19 = [WeakRetained metrics];
    v20 = [(PatternPlayerBase *)self patternID];
    [v19 handleStartForPlayer:self time:1 isAdvanced:v20 patternID:a3];
  }

  else
  {
LABEL_12:
    v17 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)doStartFromPausedAtTime:(double)a3 error:(id *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v7 = *kHAPIScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [(AdvancedPatternPlayer *)self seekOffset];
          v17 = 136315906;
          v18 = "CHHapticAdvancedPatternPlayer.mm";
          v19 = 1024;
          v20 = 186;
          v21 = 2080;
          v22 = "[AdvancedPatternPlayer doStartFromPausedAtTime:error:]";
          v23 = 2048;
          v24 = v9;
          _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Restarting paused sequence with offset %.3f", &v17, 0x26u);
        }
      }
    }
  }

  if (![(AdvancedPatternPlayer *)self paused])
  {
    [AdvancedPatternPlayer doStartFromPausedAtTime:error:];
  }

  sequence = self->_sequence;
  [(AdvancedPatternPlayer *)self seekOffset];
  v12 = [(AVHapticSequence *)sequence playAtTime:a4 offset:a3 error:v11];
  if (v12)
  {
    [(AdvancedPatternPlayer *)self setRunning];
    WeakRetained = objc_loadWeakRetained(&self->super._engine);
    v14 = [WeakRetained metrics];
    [v14 handleActionForPlayer:self action:2 time:1 isAdvanced:a3];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)doResumeAtTime:(double)a3 error:(id *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  if (![(AdvancedPatternPlayer *)self paused])
  {
    [AdvancedPatternPlayer doResumeAtTime:error:];
  }

  if (!self->_seekOffset.__engaged_)
  {
    goto LABEL_10;
  }

  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v7 = *kHAPIScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [(AdvancedPatternPlayer *)self seekOffset];
          v16 = 136315906;
          v17 = "CHHapticAdvancedPatternPlayer.mm";
          v18 = 1024;
          v19 = 201;
          v20 = 2080;
          v21 = "[AdvancedPatternPlayer doResumeAtTime:error:]";
          v22 = 2048;
          v23 = v9;
          _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Resuming paused sequence with offset %.3f", &v16, 0x26u);
        }
      }
    }
  }

  sequence = self->_sequence;
  [(AdvancedPatternPlayer *)self seekOffset];
  v11 = [(AVHapticSequence *)sequence seekToTime:a4 error:?];
  if (v11)
  {
LABEL_10:
    v11 = [(AVHapticSequence *)self->_sequence resumeAtTime:a4 error:a3];
    if (v11)
    {
      [(AdvancedPatternPlayer *)self setRunning];
      WeakRetained = objc_loadWeakRetained(&self->super._engine);
      v13 = [WeakRetained metrics];
      [v13 handleActionForPlayer:self action:2 time:1 isAdvanced:a3];

      LOBYTE(v11) = 1;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)startAtTime:(double)a3 error:(id *)a4
{
  v32 = *MEMORY[0x277D85DE8];
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
    v22 = 136316162;
    v23 = "CHHapticAdvancedPatternPlayer.mm";
    v24 = 1024;
    v25 = 219;
    v26 = 2080;
    v27 = "[AdvancedPatternPlayer startAtTime:error:]";
    v28 = 2048;
    v29 = self;
    v30 = 2048;
    v31 = a3;
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Starting player %p at time %.3f", &v22, 0x30u);
  }

LABEL_8:
  if (a3 < 0.0)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticAdvancedPatternPlayer.mm", 220, "[AdvancedPatternPlayer startAtTime:error:]", "time >= 0.0", -4840, a4);
LABEL_19:
    v17 = 0;
    goto LABEL_27;
  }

  if (!self->_sequence)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticAdvancedPatternPlayer.mm", 221, "[AdvancedPatternPlayer startAtTime:error:]", "_sequence != nil", -4812, a4);
    goto LABEL_19;
  }

  v9 = CALog::Scope::oslog(kHAPIScope);
  v10 = os_signpost_id_make_with_pointer(v9, self);

  v11 = CALog::Scope::oslog(kHAPIScope);
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v22) = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "AdvancedPatternPlayer_startAtTime", " enableTelemetry=YES ", &v22, 2u);
  }

  v13 = self;
  objc_sync_enter(v13);
  if ([(PatternPlayerBase *)v13 needsResetForAction:2]&& (v14 = [(AVHapticSequence *)self->_sequence resetAtTime:a4 error:a3], *&v15 = v13->_volume, [(AdvancedPatternPlayer *)v13 setVolume:v15], !v14))
  {
    v17 = 0;
  }

  else
  {
    if ([(AdvancedPatternPlayer *)v13 paused])
    {
      v16 = [(AdvancedPatternPlayer *)v13 doStartFromPausedAtTime:a4 error:a3];
    }

    else
    {
      v16 = [(AdvancedPatternPlayer *)v13 doStartFromStoppedAtTime:a4 error:a3];
    }

    v17 = v16;
  }

  objc_sync_exit(v13);

  v18 = CALog::Scope::oslog(kHAPIScope);
  v19 = v18;
  if (v10 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v18))
  {
    LOWORD(v22) = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v19, OS_SIGNPOST_INTERVAL_END, v10, "AdvancedPatternPlayer_startAtTime", &unk_215703E5B, &v22, 2u);
  }

LABEL_27:
  v20 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)stopAtTime:(double)a3 error:(id *)a4
{
  v37 = *MEMORY[0x277D85DE8];
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
    v27 = 136316162;
    v28 = "CHHapticAdvancedPatternPlayer.mm";
    v29 = 1024;
    v30 = 242;
    v31 = 2080;
    v32 = "[AdvancedPatternPlayer stopAtTime:error:]";
    v33 = 2048;
    v34 = self;
    v35 = 2048;
    v36 = a3;
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Stopping player %p at time %.3f", &v27, 0x30u);
  }

LABEL_8:
  if (a3 < 0.0)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticAdvancedPatternPlayer.mm", 243, "[AdvancedPatternPlayer stopAtTime:error:]", "time >= 0.0", -4840, a4);
LABEL_26:
    LOBYTE(v17) = 0;
    goto LABEL_27;
  }

  if (!self->_sequence)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticAdvancedPatternPlayer.mm", 244, "[AdvancedPatternPlayer stopAtTime:error:]", "_sequence != nil", -4812, a4);
    goto LABEL_26;
  }

  v9 = CALog::Scope::oslog(kHAPIScope);
  v10 = os_signpost_id_make_with_pointer(v9, self);

  v11 = CALog::Scope::oslog(kHAPIScope);
  v12 = v11;
  v13 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v27) = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "AdvancedPatternPlayer_stopAtTime", " enableTelemetry=YES ", &v27, 2u);
  }

  v14 = self;
  objc_sync_enter(v14);
  WeakRetained = objc_loadWeakRetained(&v14->super._engine);
  v16 = [WeakRetained checkEngineRunning:a4];

  if ((v16 & 1) == 0)
  {
    v23 = CALog::Scope::oslog(kHAPIScope);
    v24 = v23;
    if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      LOWORD(v27) = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v24, OS_SIGNPOST_INTERVAL_END, v10, "AdvancedPatternPlayer_stopAtTime", &unk_215703E5B, &v27, 2u);
    }

    objc_sync_exit(v14);
    goto LABEL_26;
  }

  v17 = [(AVHapticSequence *)self->_sequence stopAtTime:a4 error:a3];
  if (v17)
  {
    v18 = [(PatternPlayerBase *)v14 engine];
    [v18 notifyPlayerStopped:v14 atTime:a3];

    [(AdvancedPatternPlayer *)v14 resetState];
    v19 = objc_loadWeakRetained(&v14->super._engine);
    v20 = [v19 metrics];
    [v20 handleActionForPlayer:v14 action:3 time:1 isAdvanced:a3];
  }

  objc_sync_exit(v14);

  v21 = CALog::Scope::oslog(kHAPIScope);
  v22 = v21;
  if (v13 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v21))
  {
    LOWORD(v27) = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v22, OS_SIGNPOST_INTERVAL_END, v10, "AdvancedPatternPlayer_stopAtTime", &unk_215703E5B, &v27, 2u);
  }

LABEL_27:
  v25 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)sendParameters:(id)a3 atTime:(double)a4 error:(id *)a5
{
  v59 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (a4 < 0.0)
  {
    v9 = -4840;
    v10 = "time >= 0.0";
    v11 = 265;
LABEL_27:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticAdvancedPatternPlayer.mm", v11, "[AdvancedPatternPlayer sendParameters:atTime:error:]", v10, v9, a5);
    v36 = 0;
    goto LABEL_37;
  }

  if (!self->_sequence)
  {
    v9 = -4812;
    v10 = "_sequence != nil";
    v11 = 266;
    goto LABEL_27;
  }

  v12 = CALog::Scope::oslog(kHAPIScope);
  v13 = os_signpost_id_make_with_pointer(v12, self);

  v14 = CALog::Scope::oslog(kHAPIScope);
  v15 = v14;
  spid = v13;
  v43 = v13 - 1;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "AdvancedPatternPlayer_sendParameters", " enableTelemetry=YES ", buf, 2u);
  }

  v16 = [(PatternPlayerBase *)self engine];
  [v16 currentTime];
  v18 = v17 > a4;

  if (v18)
  {
    v19 = [(PatternPlayerBase *)self engine];
    [v19 currentTime];
    a4 = v20;
  }

  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v21 = *kHAPIScope;
      if (v21)
      {
        v22 = v21;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316162;
          v50 = "CHHapticAdvancedPatternPlayer.mm";
          v51 = 1024;
          v52 = 271;
          v53 = 2080;
          v54 = "[AdvancedPatternPlayer sendParameters:atTime:error:]";
          v55 = 2048;
          v56 = self;
          v57 = 2048;
          v58 = a4;
          _os_log_impl(&dword_21569A000, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Sending player %p parameters at time %.3f", buf, 0x30u);
        }
      }
    }
  }

  if ([(PatternPlayerBase *)self needsResetForAction:1]&& ![(AVHapticSequence *)self->_sequence resetAtTime:a5 error:a4])
  {
    v36 = 0;
  }

  else
  {
    v23 = [(PatternPlayerBase *)self engine];
    v24 = [CHHapticPattern eventListFromEvents:0 parameters:v8 parameterCurves:0 engine:v23 privileged:0];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v25 = v24;
    v26 = [v25 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v26)
    {
      v41 = v8;
      v27 = *v45;
      while (2)
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v45 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v44 + 1) + 8 * i);
          sequence = self->_sequence;
          v31 = [v29 paramType];
          [v29 value];
          v33 = v32;
          [v29 time];
          v35 = a4 + v34;
          LODWORD(v34) = v33;
          if (![(AVHapticSequence *)sequence setParameter:v31 value:0 channel:a5 atTime:v34 error:v35])
          {
            v36 = 0;
            goto LABEL_29;
          }
        }

        v26 = [v25 countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }

      v36 = 1;
LABEL_29:
      v8 = v41;
    }

    else
    {
      v36 = 1;
    }
  }

  v37 = CALog::Scope::oslog(kHAPIScope);
  v38 = v37;
  if (v43 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v38, OS_SIGNPOST_INTERVAL_END, spid, "AdvancedPatternPlayer_sendParameters", &unk_215703E5B, buf, 2u);
  }

LABEL_37:
  v39 = *MEMORY[0x277D85DE8];
  return v36;
}

- (BOOL)scheduleParameterCurve:(id)a3 atTime:(double)a4 error:(id *)a5
{
  v18 = *MEMORY[0x277D85DE8];
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

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v12 = 136315650;
    v13 = "CHHapticAdvancedPatternPlayer.mm";
    v14 = 1024;
    v15 = 296;
    v16 = 2080;
    v17 = "[AdvancedPatternPlayer scheduleParameterCurve:atTime:error:]";
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Parameter curves are not yet supported on CHHapticAdvancedPlayers", &v12, 0x1Cu);
  }

LABEL_8:
  if (a4 >= 0.0)
  {
    if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
    }
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticAdvancedPatternPlayer.mm", 297, "[AdvancedPatternPlayer scheduleParameterCurve:atTime:error:]", "time >= 0.0", -4840, a5);
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)pauseAtTime:(double)a3 error:(id *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = self;
  objc_sync_enter(v6);
  WeakRetained = objc_loadWeakRetained(&v6->super._engine);
  v8 = [WeakRetained checkEngineRunning:a4];

  if ((v8 & 1) == 0)
  {
    goto LABEL_18;
  }

  if (![(AdvancedPatternPlayer *)v6 paused])
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
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v19 = 136316162;
      v20 = "CHHapticAdvancedPatternPlayer.mm";
      v21 = 1024;
      v22 = 310;
      v23 = 2080;
      v24 = "[AdvancedPatternPlayer pauseAtTime:error:]";
      v25 = 2048;
      v26 = v6;
      v27 = 2048;
      v28 = a3;
      _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Pausing player %p at time %.3f", &v19, 0x30u);
    }

LABEL_11:
    if (a3 >= 0.0)
    {
      if (v6->_sequence)
      {
        v15 = objc_loadWeakRetained(&v6->super._engine);
        v16 = [v15 metrics];
        [v16 handleActionForPlayer:v6 action:1 time:1 isAdvanced:a3];

        if ([(AVHapticSequence *)v6->_sequence pauseAtTime:a4 error:a3])
        {
          [(AdvancedPatternPlayer *)v6 setPaused];
          goto LABEL_3;
        }

LABEL_18:
        v9 = 0;
        goto LABEL_19;
      }

      v12 = -4812;
      v13 = "_sequence != nil";
      v14 = 312;
    }

    else
    {
      v12 = -4840;
      v13 = "time >= 0.0";
      v14 = 311;
    }

    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticAdvancedPatternPlayer.mm", v14, "[AdvancedPatternPlayer pauseAtTime:error:]", v13, v12, a4);
    goto LABEL_18;
  }

LABEL_3:
  v9 = 1;
LABEL_19:
  objc_sync_exit(v6);

  v17 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)resumeAtTime:(double)a3 error:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = self;
  objc_sync_enter(v6);
  WeakRetained = objc_loadWeakRetained(&v6->super._engine);
  v8 = [WeakRetained checkEngineRunning:a4];

  if ((v8 & 1) == 0)
  {
    goto LABEL_17;
  }

  if (![(AdvancedPatternPlayer *)v6 paused])
  {
    v10 = 1;
    goto LABEL_18;
  }

  if (!kHAPIScope)
  {
    v9 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
    goto LABEL_8;
  }

  v9 = *kHAPIScope;
  if (v9)
  {
LABEL_8:
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v17 = 136316162;
      v18 = "CHHapticAdvancedPatternPlayer.mm";
      v19 = 1024;
      v20 = 332;
      v21 = 2080;
      v22 = "[AdvancedPatternPlayer resumeAtTime:error:]";
      v23 = 2048;
      v24 = v6;
      v25 = 2048;
      v26 = a3;
      _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Resuming player %p at time %.3f", &v17, 0x30u);
    }
  }

  if (a3 < 0.0)
  {
    v12 = -4840;
    v13 = "time >= 0.0";
    v14 = 333;
LABEL_16:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticAdvancedPatternPlayer.mm", v14, "[AdvancedPatternPlayer resumeAtTime:error:]", v13, v12, a4);
LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  if (!v6->_sequence)
  {
    v12 = -4812;
    v13 = "_sequence != nil";
    v14 = 334;
    goto LABEL_16;
  }

  v10 = [(AdvancedPatternPlayer *)v6 doResumeAtTime:a4 error:a3];
LABEL_18:
  objc_sync_exit(v6);

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)seekToOffset:(double)a3 error:(id *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = self;
  objc_sync_enter(v6);
  if ([(AdvancedPatternPlayer *)v6 running]&& ![(AdvancedPatternPlayer *)v6 paused])
  {
    if (kHAPIScope)
    {
      v10 = *kHAPIScope;
      if (!v10)
      {
LABEL_18:
        v9 = [(AVHapticSequence *)v6->_sequence seekToTime:a4 error:a3];
        [(AdvancedPatternPlayer *)v6 clearSeekOffset];
        goto LABEL_19;
      }
    }

    else
    {
      v10 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136316162;
      v15 = "CHHapticAdvancedPatternPlayer.mm";
      v16 = 1024;
      v17 = 351;
      v18 = 2080;
      v19 = "[AdvancedPatternPlayer seekToOffset:error:]";
      v20 = 2048;
      v21 = v6;
      v22 = 2048;
      v23 = a3;
      _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Seeking on player %p to offset %.2f", &v14, 0x30u);
    }

    goto LABEL_18;
  }

  if (!kHAPIScope)
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
    goto LABEL_7;
  }

  v7 = *kHAPIScope;
  if (v7)
  {
LABEL_7:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136316162;
      v15 = "CHHapticAdvancedPatternPlayer.mm";
      v16 = 1024;
      v17 = 347;
      v18 = 2080;
      v19 = "[AdvancedPatternPlayer seekToOffset:error:]";
      v20 = 2048;
      v21 = v6;
      v22 = 2048;
      v23 = a3;
      _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Caching player %p offset %.2f for later start/resume", &v14, 0x30u);
    }
  }

  [(AdvancedPatternPlayer *)v6 setSeekOffset:a3];
  v9 = 1;
LABEL_19:
  objc_sync_exit(v6);

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)cancelAndReturnError:(id *)a3
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315906;
    v10 = "CHHapticAdvancedPatternPlayer.mm";
    v11 = 1024;
    v12 = 361;
    v13 = 2080;
    v14 = "[AdvancedPatternPlayer cancelAndReturnError:]";
    v15 = 2048;
    v16 = self;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Cancelling commands for player %p immediately", &v9, 0x26u);
  }

LABEL_8:
  result = [(AVHapticSequence *)self->_sequence cancelAndReturnError:a3];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (double)patternDuration
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(AdvancedPatternPlayer *)v2 paused];
  objc_sync_exit(v2);

  v4 = 1800.0;
  if (!v3 && ![(AVHapticSequence *)v2->_sequence loopingEnabled])
  {
    patternDuration = v2->super._patternDuration;
    [(AVHapticSequence *)v2->_sequence playbackRate];
    return patternDuration / v6;
  }

  return v4;
}

- (void)setLoopEnd:(double)a3
{
  if (a3 >= 0.0)
  {
    v3 = a3;
    *&a3 = a3;
    if ([(AVHapticSequence *)self->_sequence setLoopLength:0 error:a3])
    {
      self->_loopEnd = v3;
    }
  }
}

- (void)setPlaybackRate:(float)a3
{
  if (a3 > 0.0)
  {
    [(AVHapticSequence *)self->_sequence setPlaybackRate:?];
  }
}

- (void)setCompletionHandler:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
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

  v7 = v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = MEMORY[0x21606F540](v4);
    *buf = 136315906;
    v18 = "CHHapticAdvancedPatternPlayer.mm";
    v19 = 1024;
    v20 = 449;
    v21 = 2080;
    v22 = "[AdvancedPatternPlayer setCompletionHandler:]";
    v23 = 2048;
    v24 = v8;
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Wrapping client's completion handler block %p in our block and setting on underlying AVHapticSequence", buf, 0x26u);
  }

LABEL_8:
  v9 = MEMORY[0x21606F540](v4);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v9;

  objc_initWeak(buf, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__AdvancedPatternPlayer_setCompletionHandler___block_invoke;
  v14[3] = &unk_2781C9058;
  objc_copyWeak(&v16, buf);
  v15 = v4;
  sequence = self->_sequence;
  v12 = v4;
  [(AVHapticSequence *)sequence setCompletionHandler:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
  v13 = *MEMORY[0x277D85DE8];
}

void __46__AdvancedPatternPlayer_setCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained engine];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __46__AdvancedPatternPlayer_setCompletionHandler___block_invoke_2;
    v14[3] = &unk_2781C9008;
    v7 = v5;
    v15 = v7;
    v17 = *(a1 + 32);
    v16 = v3;
    [v6 dispatchOnLocal:v14];

    v8 = v7;
    objc_sync_enter(v8);
    [v8 resetState];
    v9 = &v15;
    v10 = &v17;
    objc_sync_exit(v8);
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__AdvancedPatternPlayer_setCompletionHandler___block_invoke_13;
    v11[3] = &unk_2781C9030;
    v13 = *(a1 + 32);
    v12 = v3;
    [CHHapticEngine dispatchOnGlobal:v11];
    v9 = &v13;
    v10 = &v12;
  }
}

void __46__AdvancedPatternPlayer_setCompletionHandler___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (kHAPIScope)
  {
    v2 = *kHAPIScope;
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

  v4 = v2;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = MEMORY[0x21606F540](*(a1 + 48));
    v11 = 136316162;
    v12 = "CHHapticAdvancedPatternPlayer.mm";
    v13 = 1024;
    v14 = 457;
    v15 = 2080;
    v16 = "[AdvancedPatternPlayer setCompletionHandler:]_block_invoke_2";
    v17 = 2048;
    v18 = v5;
    v19 = 2048;
    v20 = v6;
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Player %p client-supplied completion handler called - calling captured block %p on internal queue", &v11, 0x30u);
  }

LABEL_8:
  v7 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
  v8 = [*(a1 + 32) engine];
  v9 = [v8 metrics];
  [v9 handleActionForPlayer:*(a1 + 32) action:3 time:1 isAdvanced:0.0];

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __46__AdvancedPatternPlayer_setCompletionHandler___block_invoke_13(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (kHAPIScope)
  {
    v2 = *kHAPIScope;
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

  v4 = v2;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x21606F540](*(a1 + 40));
    v9 = 136315906;
    v10 = "CHHapticAdvancedPatternPlayer.mm";
    v11 = 1024;
    v12 = 468;
    v13 = 2080;
    v14 = "[AdvancedPatternPlayer setCompletionHandler:]_block_invoke";
    v15 = 2048;
    v16 = v5;
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client-supplied completion handler called on destroyed player - calling captured block %p on global queue", &v9, 0x26u);
  }

LABEL_8:
  v6 = *(a1 + 32);
  result = (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)completionHandler
{
  v2 = MEMORY[0x21606F540](self->_completionHandler, a2);

  return v2;
}

- (AdvancedPatternPlayer)initWithRingtoneData:(id)a3 engine:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v26.receiver = self;
  v26.super_class = AdvancedPatternPlayer;
  v10 = [(AdvancedPatternPlayer *)&v26 init];
  if (v10)
  {
    v11 = CALog::Scope::oslog(kHAPIScope);
    v12 = os_signpost_id_make_with_pointer(v11, v10);

    v13 = CALog::Scope::oslog(kHAPIScope);
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *v25 = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "AdvancedPatternPlayer_initWithRingtoneData", " enableTelemetry=YES ", v25, 2u);
    }

    objc_storeWeak(&v10->super._engine, v9);
    events = v10->super._events;
    v10->super._events = 0;

    v10->_volume = 1.0;
    v16 = [AVHapticSequence alloc];
    v17 = [v9 player];
    v18 = [(AVHapticSequence *)v16 initWithData:v8 player:v17 error:a5];
    sequence = v10->_sequence;
    v10->_sequence = v18;

    v20 = v10->_sequence;
    if (v20)
    {
      [(AVHapticSequence *)v20 duration];
      v10->super._patternDuration = v21;
      [(AdvancedPatternPlayer *)v10 finishInit];
    }

    else
    {

      v10 = 0;
    }

    v22 = CALog::Scope::oslog(kHAPIScope);
    v23 = v22;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *v25 = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v23, OS_SIGNPOST_INTERVAL_END, v12, "AdvancedPatternPlayer_initWithRingtoneData", &unk_215703E5B, v25, 2u);
    }
  }

  return v10;
}

- (AdvancedPatternPlayer)initWithVibePatternDictionary:(id)a3 engine:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v26.receiver = self;
  v26.super_class = AdvancedPatternPlayer;
  v10 = [(AdvancedPatternPlayer *)&v26 init];
  if (v10)
  {
    v11 = CALog::Scope::oslog(kHAPIScope);
    v12 = os_signpost_id_make_with_pointer(v11, v10);

    v13 = CALog::Scope::oslog(kHAPIScope);
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *v25 = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "AdvancedPatternPlayer_initWithVibePatternDictionary", " enableTelemetry=YES ", v25, 2u);
    }

    objc_storeWeak(&v10->super._engine, v9);
    events = v10->super._events;
    v10->super._events = 0;

    v10->_state = 0;
    if (v10->_seekOffset.__engaged_)
    {
      v10->_seekOffset.__engaged_ = 0;
    }

    v10->_volume = 1.0;
    v10->super._previousAction = 0;
    v16 = [AVHapticSequence alloc];
    v17 = [v9 player];
    v18 = [(AVHapticSequence *)v16 initWithDictionary:v8 player:v17 error:a5];
    sequence = v10->_sequence;
    v10->_sequence = v18;

    v20 = v10->_sequence;
    if (v20)
    {
      [(AVHapticSequence *)v20 duration];
      v10->super._patternDuration = v21;
      [(AdvancedPatternPlayer *)v10 finishInit];
    }

    else
    {

      v10 = 0;
    }

    v22 = CALog::Scope::oslog(kHAPIScope);
    v23 = v22;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *v25 = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v23, OS_SIGNPOST_INTERVAL_END, v12, "AdvancedPatternPlayer_initWithVibePatternDictionary", &unk_215703E5B, v25, 2u);
    }
  }

  return v10;
}

- (BOOL)activateChannelByIndex:(unint64_t)a3 atTime:(double)a4 error:(id *)a5
{
  if (a4 >= 0.0)
  {
    sequence = self->_sequence;

    return [AVHapticSequence activateChannelByIndex:"activateChannelByIndex:atTime:error:" atTime:a3 error:?];
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticAdvancedPatternPlayer.mm", 533, "[AdvancedPatternPlayer activateChannelByIndex:atTime:error:]", "time >= 0.0", -4840, a5);
    return 0;
  }
}

- (BOOL)setVolume:(float)a3 atTime:(double)a4 error:(id *)a5
{
  if (a4 >= 0.0)
  {
    sequence = self->_sequence;

    return [AVHapticSequence setVolume:"setVolume:atTime:error:" atTime:? error:?];
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticAdvancedPatternPlayer.mm", 539, "[AdvancedPatternPlayer setVolume:atTime:error:]", "time >= 0.0", -4840, a5);
    return 0;
  }
}

- (BOOL)earlyUnduckAudioAtTime:(double)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  if (a3 >= 0.0)
  {
    if (kHAPIScope)
    {
      v8 = *kHAPIScope;
      if (!v8)
      {
LABEL_10:
        result = [(AVHapticSequence *)self->_sequence earlyUnduckAudioAtTime:a4 error:a3];
        goto LABEL_11;
      }
    }

    else
    {
      v8 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136316162;
      v12 = "CHHapticAdvancedPatternPlayer.mm";
      v13 = 1024;
      v14 = 546;
      v15 = 2080;
      v16 = "[AdvancedPatternPlayer earlyUnduckAudioAtTime:error:]";
      v17 = 2048;
      v18 = self;
      v19 = 2048;
      v20 = a3;
      _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Setting player %p to early unduck audio at time %.3f", &v11, 0x30u);
    }

    goto LABEL_10;
  }

  _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticAdvancedPatternPlayer.mm", 545, "[AdvancedPatternPlayer earlyUnduckAudioAtTime:error:]", "time >= 0.0", -4840, a4);
  result = 0;
LABEL_11:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (float)volume
{
  v2 = self;
  objc_sync_enter(v2);
  volume = v2->_volume;
  objc_sync_exit(v2);

  return volume;
}

- (void)setVolume:(float)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
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
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v17 = "CHHapticAdvancedPatternPlayer.mm";
    v18 = 1024;
    v19 = 560;
    v20 = 2080;
    v21 = "[AdvancedPatternPlayer setVolume:]";
    v22 = 2048;
    v23 = v4;
    v24 = 2048;
    v25 = a3;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Setting player %p audio and haptics volume to %.3f. Server will clamp volume argument to [0, 1]", buf, 0x30u);
  }

LABEL_8:
  sequence = v4->_sequence;
  v15 = 0;
  *&v6 = a3;
  [(AVHapticSequence *)sequence setVolume:&v15 atTime:v6 error:0.0];
  v9 = v15;
  if (v9)
  {
    if (kHAPIScope)
    {
      v10 = *kHAPIScope;
      if (!v10)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v10 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    v12 = v10;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v9 localizedDescription];
      *buf = 136316418;
      v17 = "CHHapticAdvancedPatternPlayer.mm";
      v18 = 1024;
      v19 = 563;
      v20 = 2080;
      v21 = "[AdvancedPatternPlayer setVolume:]";
      v22 = 2048;
      v23 = v4;
      v24 = 2048;
      v25 = a3;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Error setting player %p audio and haptics volume to %.3f: %@", buf, 0x3Au);
    }
  }

  else
  {
    v4->_volume = a3;
  }

LABEL_17:

  objc_sync_exit(v4);
  v14 = *MEMORY[0x277D85DE8];
}

- (double)seekOffset
{
  v2 = self;
  objc_sync_enter(v2);
  val = 0.0;
  if (v2->_seekOffset.__engaged_)
  {
    val = v2->_seekOffset.var0.__val_;
  }

  objc_sync_exit(v2);

  return val;
}

- (void)setSeekOffset:(double)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_seekOffset.var0.__val_ = a3;
  obj->_seekOffset.__engaged_ = 1;
  objc_sync_exit(obj);
}

- (void)clearSeekOffset
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_seekOffset.__engaged_)
  {
    obj->_seekOffset.__engaged_ = 0;
  }

  objc_sync_exit(obj);
}

- (id).cxx_construct
{
  *(self + 72) = 0;
  *(self + 80) = 0;
  return self;
}

- (void)doStartFromPausedAtTime:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v0 = 136315394;
    v1 = "CHHapticAdvancedPatternPlayer.mm";
    v2 = 1024;
    v3 = 187;
    _os_log_impl(&dword_21569A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE [(self.paused) != 0 is false]: ", &v0, 0x12u);
  }

  __break(1u);
}

- (void)doResumeAtTime:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v0 = 136315394;
    v1 = "CHHapticAdvancedPatternPlayer.mm";
    v2 = 1024;
    v3 = 199;
    _os_log_impl(&dword_21569A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE [(self.paused) != 0 is false]: ", &v0, 0x12u);
  }

  __break(1u);
}

@end