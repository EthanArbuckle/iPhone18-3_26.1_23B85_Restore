@interface PatternPlayer
- (BOOL)cancelAndReturnError:(id *)error;
- (BOOL)scheduleParameterCurve:(id)curve atTime:(double)time error:(id *)error;
- (BOOL)sendParameters:(id)parameters atTime:(double)time error:(id *)error;
- (BOOL)startAtTime:(double)time error:(id *)error;
- (BOOL)startAtTime:(double)time withImmediateParameters:(id)parameters error:(id *)error;
- (BOOL)stopAtTime:(double)time error:(id *)error;
- (id)processImmediateParameters:(id)parameters;
- (void)clearExternalResources:(id)resources;
- (void)dealloc;
- (void)doSetMute:(BOOL)mute;
- (void)releaseExternalResources:(id)resources events:(id)events;
@end

@implementation PatternPlayer

- (void)releaseExternalResources:(id)resources events:(id)events
{
  v20 = *MEMORY[0x277D85DE8];
  resourcesCopy = resources;
  eventsCopy = events;
  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v7 = *kHAPIScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v15 = "CHHapticPatternPlayer.mm";
          v16 = 1024;
          v17 = 37;
          v18 = 2080;
          v19 = "[PatternPlayer releaseExternalResources:events:]";
          _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Clearing any externally-registered audio resources", buf, 0x1Cu);
        }
      }
    }
  }

  for (i = 0; i < [eventsCopy count]; ++i)
  {
    v10 = [eventsCopy objectAtIndexedSubscript:i];
    if (+[CHHapticEngine resourceIsRegistered:](CHHapticEngine, "resourceIsRegistered:", [v10 audioResID]))
    {
      audioResID = [v10 audioResID];
      v13 = 0;
      [resourcesCopy doUnregisterAudioResource:audioResID fromPattern:1 error:&v13];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)processImmediateParameters:(id)parameters
{
  parametersCopy = parameters;
  if (parametersCopy)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__PatternPlayer_processImmediateParameters___block_invoke;
    v7[3] = &unk_2781C8F70;
    v5 = dictionary;
    v8 = v5;
    [parametersCopy enumerateKeysAndObjectsUsingBlock:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __44__PatternPlayer_processImmediateParameters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:CHHapticEventParameterIDAudioVolume])
  {
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1000];
    [v7 setObject:v6 forKey:v8];
LABEL_13:

    goto LABEL_14;
  }

  if ([v5 isEqualToString:CHHapticEventParameterIDAudioPitch])
  {
    v9 = *(a1 + 32);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1001];
    [v9 setObject:v6 forKey:v8];
    goto LABEL_13;
  }

  if ([v5 isEqualToString:CHHapticEventParameterIDAudioBrightness])
  {
    v10 = *(a1 + 32);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1013];
    [v10 setObject:v6 forKey:v8];
    goto LABEL_13;
  }

  if ([v5 isEqualToString:CHHapticEventParameterIDAudioPan])
  {
    v11 = *(a1 + 32);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1015];
    [v11 setObject:v6 forKey:v8];
    goto LABEL_13;
  }

  if ([v5 isEqualToString:CHHapticEventParameterIDHapticIntensity])
  {
    v12 = *(a1 + 32);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2000];
    [v12 setObject:v6 forKey:v8];
    goto LABEL_13;
  }

  if ([v5 isEqualToString:CHHapticEventParameterIDHapticSharpness])
  {
    v14 = *(a1 + 32);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2001];
    [v14 setObject:v6 forKey:v8];
    goto LABEL_13;
  }

  v16 = CALog::LogObjIfEnabled(3, kHAPIScope, v13);
  v17 = v16;
  if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315906;
    v19 = "CHHapticPatternPlayer.mm";
    v20 = 1024;
    v21 = 74;
    v22 = 2080;
    v23 = "[PatternPlayer processImmediateParameters:]_block_invoke";
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_21569A000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: EventParameter %@ does not support ImmediateParameter modulation. Ignore", &v18, 0x26u);
  }

LABEL_14:
  v15 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
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
    v10 = "CHHapticPatternPlayer.mm";
    v11 = 1024;
    v12 = 168;
    v13 = 2080;
    v14 = "[PatternPlayer dealloc]";
    v15 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: destroying player %p", buf, 0x26u);
  }

LABEL_8:
  if (![(AVHapticPlayerChannel *)self->_channel invalidated])
  {
    WeakRetained = objc_loadWeakRetained(&self->super._engine);
    [(PatternPlayer *)self clearExternalResources:WeakRetained];
  }

  if (self->_channel)
  {
    v6 = objc_loadWeakRetained(&self->super._engine);
    [v6 releaseChannel:self->_channel];
  }

  v8.receiver = self;
  v8.super_class = PatternPlayer;
  [(PatternPlayer *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)doSetMute:(BOOL)mute
{
  muteCopy = mute;
  v12 = *MEMORY[0x277D85DE8];
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
          v7 = "un";
          *v11 = 136315906;
          *&v11[4] = "CHHapticPatternPlayer.mm";
          *&v11[12] = 1024;
          *&v11[14] = 179;
          *&v11[20] = "[PatternPlayer doSetMute:]";
          *&v11[18] = 2080;
          if (muteCopy)
          {
            v7 = "";
          }

          *&v11[28] = 2080;
          *&v11[30] = v7;
          _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Sending %smute params", v11, 0x26u);
        }
      }
    }
  }

  if (muteCopy)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  [(AVHapticPlayerChannel *)self->_channel setParameter:1014 value:0 atTime:COERCE_DOUBLE(LODWORD(v8)) error:0.0, *v11, *&v11[16]];
  *&v9 = v8;
  [(AVHapticPlayerChannel *)self->_channel setParameter:2014 value:0 atTime:v9 error:0.0];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)clearExternalResources:(id)resources
{
  v18 = *MEMORY[0x277D85DE8];
  resourcesCopy = resources;
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
          v13 = "CHHapticPatternPlayer.mm";
          v14 = 1024;
          v15 = 187;
          v16 = 2080;
          v17 = "[PatternPlayer clearExternalResources:]";
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
      eventType = [v8 eventType];
      v11 = 0;
      [resourcesCopy doUnregisterAudioResource:eventType fromPattern:1 error:&v11];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)startAtTime:(double)time error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
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
    v29 = 136316162;
    v30 = "CHHapticPatternPlayer.mm";
    v31 = 1024;
    v32 = 201;
    v33 = 2080;
    v34 = "[PatternPlayer startAtTime:error:]";
    v35 = 2048;
    selfCopy = self;
    v37 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Starting simple player %p at time %.3f", &v29, 0x30u);
  }

LABEL_8:
  if (time < 0.0)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticPatternPlayer.mm", 202, "[PatternPlayer startAtTime:error:]", "time >= 0.0", -4840, error);
LABEL_24:
    v19 = 0;
    goto LABEL_30;
  }

  v9 = CALog::Scope::oslog(kHAPIScope);
  v10 = os_signpost_id_make_with_pointer(v9, self);

  v11 = CALog::Scope::oslog(kHAPIScope);
  v12 = v11;
  v13 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v29) = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PatternPlayer_startAtTime", " enableTelemetry=YES ", &v29, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->super._engine);
  v15 = [WeakRetained checkEngineStateOnStart:error];

  if ((v15 & 1) == 0)
  {
    v23 = CALog::Scope::oslog(kHAPIScope);
    v24 = v23;
    if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      LOWORD(v29) = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v24, OS_SIGNPOST_INTERVAL_END, v10, "PatternPlayer_startAtTime", &unk_215703E5B, &v29, 2u);
    }

    goto LABEL_24;
  }

  muteState = self->super._muteState;
  if ((muteState - 1) <= 1)
  {
    v17 = muteState == 2;
    [(PatternPlayer *)self doSetMute:muteState == 2];
    self->super._muteState = newStateFromOld(self->super._muteState, v17, 1);
  }

  if ((![(PatternPlayerBase *)self needsResetForAction:2]|| [(AVHapticPlayerChannel *)self->_channel resetAtTime:error error:time]) && [(AVHapticPlayerChannel *)self->_channel sendEvents:self->super._events atTime:error error:time])
  {
    v18 = objc_loadWeakRetained(&self->super._engine);
    v19 = [v18 notifyPlayerStarted:self atTime:time];

    v20 = objc_loadWeakRetained(&self->super._engine);
    metrics = [v20 metrics];
    patternID = [(PatternPlayerBase *)self patternID];
    [metrics handleStartForPlayer:self time:0 isAdvanced:patternID patternID:time];
  }

  else
  {
    v19 = 0;
  }

  v25 = CALog::Scope::oslog(kHAPIScope);
  v26 = v25;
  if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    LOWORD(v29) = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v26, OS_SIGNPOST_INTERVAL_END, v10, "PatternPlayer_startAtTime", &unk_215703E5B, &v29, 2u);
  }

LABEL_30:
  v27 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)stopAtTime:(double)time error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
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
    v26 = 136316162;
    v27 = "CHHapticPatternPlayer.mm";
    v28 = 1024;
    v29 = 232;
    v30 = 2080;
    v31 = "[PatternPlayer stopAtTime:error:]";
    v32 = 2048;
    selfCopy = self;
    v34 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Stopping simple player %p at time %.3f", &v26, 0x30u);
  }

LABEL_8:
  if (time < 0.0)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticPatternPlayer.mm", 233, "[PatternPlayer stopAtTime:error:]", "time >= 0.0", -4840, error);
LABEL_24:
    LOBYTE(v16) = 0;
    goto LABEL_25;
  }

  v9 = CALog::Scope::oslog(kHAPIScope);
  v10 = os_signpost_id_make_with_pointer(v9, self);

  v11 = CALog::Scope::oslog(kHAPIScope);
  v12 = v11;
  v13 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v26) = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PatternPlayer_stopAtTime", " enableTelemetry=YES ", &v26, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->super._engine);
  v15 = [WeakRetained checkEngineRunning:error];

  if ((v15 & 1) == 0)
  {
    v22 = CALog::Scope::oslog(kHAPIScope);
    v23 = v22;
    if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      LOWORD(v26) = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v23, OS_SIGNPOST_INTERVAL_END, v10, "PatternPlayer_stopAtTime", &unk_215703E5B, &v26, 2u);
    }

    goto LABEL_24;
  }

  v16 = [(AVHapticPlayerChannel *)self->_channel clearEvents:error error:time];
  if (v16)
  {
    v17 = objc_loadWeakRetained(&self->super._engine);
    [v17 notifyPlayerStopped:self atTime:time];

    v18 = objc_loadWeakRetained(&self->super._engine);
    metrics = [v18 metrics];
    [metrics handleActionForPlayer:self action:3 time:0 isAdvanced:time];
  }

  v20 = CALog::Scope::oslog(kHAPIScope);
  v21 = v20;
  if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    LOWORD(v26) = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v21, OS_SIGNPOST_INTERVAL_END, v10, "PatternPlayer_stopAtTime", &unk_215703E5B, &v26, 2u);
  }

LABEL_25:
  v24 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)sendParameters:(id)parameters atTime:(double)time error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v9 = *kHAPIScope;
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v22 = 136316162;
          v23 = "CHHapticPatternPlayer.mm";
          v24 = 1024;
          v25 = 250;
          v26 = 2080;
          v27 = "[PatternPlayer sendParameters:atTime:error:]";
          v28 = 2048;
          selfCopy = self;
          v30 = 2048;
          timeCopy = time;
          _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Sending simple player %p parameters at time %.3f", &v22, 0x30u);
        }
      }
    }
  }

  if (time >= 0.0)
  {
    v12 = CALog::Scope::oslog(kHAPIScope);
    v13 = os_signpost_id_make_with_pointer(v12, self);

    v14 = CALog::Scope::oslog(kHAPIScope);
    v15 = v14;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      LOWORD(v22) = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PatternPlayer_sendParameters", " enableTelemetry=YES ", &v22, 2u);
    }

    if ([(PatternPlayerBase *)self needsResetForAction:1]&& ![(AVHapticPlayerChannel *)self->_channel resetAtTime:error error:time])
    {
      v11 = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->super._engine);
      v17 = [CHHapticPattern eventListFromEvents:0 parameters:parametersCopy parameterCurves:0 engine:WeakRetained privileged:0];

      v11 = [(AVHapticPlayerChannel *)self->_channel sendEvents:v17 atTime:error error:time];
    }

    v18 = CALog::Scope::oslog(kHAPIScope);
    v19 = v18;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      LOWORD(v22) = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v19, OS_SIGNPOST_INTERVAL_END, v13, "PatternPlayer_sendParameters", &unk_215703E5B, &v22, 2u);
    }
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticPatternPlayer.mm", 251, "[PatternPlayer sendParameters:atTime:error:]", "time >= 0.0", -4840, error);
    v11 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)cancelAndReturnError:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
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
    v23 = 136315906;
    v24 = "CHHapticPatternPlayer.mm";
    v25 = 1024;
    v26 = 273;
    v27 = 2080;
    v28 = "[PatternPlayer cancelAndReturnError:]";
    v29 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Cancelling events on simple player %p immediately", &v23, 0x26u);
  }

LABEL_8:
  v7 = CALog::Scope::oslog(kHAPIScope);
  v8 = os_signpost_id_make_with_pointer(v7, self);

  v9 = CALog::Scope::oslog(kHAPIScope);
  v10 = v9;
  v11 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v23) = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PatternPlayer_cancelAndReturnError", " enableTelemetry=YES ", &v23, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->super._engine);
  v13 = [WeakRetained checkEngineRunning:error];

  if (v13)
  {
    v14 = [(AVHapticPlayerChannel *)self->_channel clearEvents:error error:0.0];
    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->super._engine);
      [v15 notifyPlayerStopped:self atTime:0.0];

      v16 = objc_loadWeakRetained(&self->super._engine);
      metrics = [v16 metrics];
      [metrics handleActionForPlayer:self action:3 time:0 isAdvanced:0.0];
    }

    v18 = CALog::Scope::oslog(kHAPIScope);
    v19 = v18;
    if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      LOWORD(v23) = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v19, OS_SIGNPOST_INTERVAL_END, v8, "PatternPlayer_cancelAndReturnError", &unk_215703E5B, &v23, 2u);
    }
  }

  else
  {
    v20 = CALog::Scope::oslog(kHAPIScope);
    v19 = v20;
    if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      LOWORD(v23) = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v19, OS_SIGNPOST_INTERVAL_END, v8, "PatternPlayer_cancelAndReturnError", &unk_215703E5B, &v23, 2u);
    }

    LOBYTE(v14) = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)scheduleParameterCurve:(id)curve atTime:(double)time error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  curveCopy = curve;
  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v9 = *kHAPIScope;
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v31 = "CHHapticPatternPlayer.mm";
          v32 = 1024;
          v33 = 290;
          v34 = 2080;
          v35 = "[PatternPlayer scheduleParameterCurve:atTime:error:]";
          v36 = 2048;
          selfCopy = self;
          _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Sending player %p a parameter curve", buf, 0x26u);
        }
      }
    }
  }

  if (time >= 0.0)
  {
    v12 = CALog::Scope::oslog(kHAPIScope);
    v13 = os_signpost_id_make_with_pointer(v12, self);

    v14 = CALog::Scope::oslog(kHAPIScope);
    v15 = v14;
    v16 = v13 - 1;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PatternPlayer_scheduleParameterCurve", " enableTelemetry=YES ", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->super._engine);
    v18 = [WeakRetained checkEngineRunning:error];

    if (v18)
    {
      if ([(PatternPlayerBase *)self needsResetForAction:1]&& ![(AVHapticPlayerChannel *)self->_channel resetAtTime:error error:time])
      {
        v11 = 0;
      }

      else
      {
        [curveCopy relativeTime];
        v20 = v19;
        [curveCopy setRelativeTime:0.0];
        v29 = curveCopy;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
        v22 = objc_loadWeakRetained(&self->super._engine);
        v23 = [CHHapticPattern eventListFromEvents:0 parameters:0 parameterCurves:v21 engine:v22 privileged:0];

        v11 = [(AVHapticPlayerChannel *)self->_channel sendEvents:v23 atTime:error error:time];
        [curveCopy setRelativeTime:v20];
      }

      v26 = CALog::Scope::oslog(kHAPIScope);
      v25 = v26;
      if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_21569A000, v25, OS_SIGNPOST_INTERVAL_END, v13, "PatternPlayer_scheduleParameterCurve", &unk_215703E5B, buf, 2u);
      }
    }

    else
    {
      v24 = CALog::Scope::oslog(kHAPIScope);
      v25 = v24;
      if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_21569A000, v25, OS_SIGNPOST_INTERVAL_END, v13, "PatternPlayer_scheduleParameterCurve", &unk_215703E5B, buf, 2u);
      }

      v11 = 0;
    }
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticPatternPlayer.mm", 291, "[PatternPlayer scheduleParameterCurve:atTime:error:]", "time >= 0.0", -4840, error);
    v11 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)startAtTime:(double)time withImmediateParameters:(id)parameters error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  if (kHAPIScope)
  {
    v9 = *kHAPIScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v31 = 136316162;
    v32 = "CHHapticPatternPlayer.mm";
    v33 = 1024;
    v34 = 319;
    v35 = 2080;
    v36 = "[PatternPlayer startAtTime:withImmediateParameters:error:]";
    v37 = 2048;
    selfCopy = self;
    v39 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Starting simple player extended %p at time %.3f", &v31, 0x30u);
  }

LABEL_8:
  if (time >= 0.0)
  {
    v11 = CALog::Scope::oslog(kHAPIScope);
    v12 = os_signpost_id_make_with_pointer(v11, self);

    v13 = CALog::Scope::oslog(kHAPIScope);
    v14 = v13;
    v15 = v12 - 1;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      LOWORD(v31) = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PatternPlayer_startAtTime_withImmediateParameters", " enableTelemetry=YES ", &v31, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->super._engine);
    v17 = [WeakRetained checkEngineStateOnStart:error];

    if (v17)
    {
      muteState = self->super._muteState;
      if ((muteState - 1) <= 1)
      {
        [(PatternPlayer *)self doSetMute:muteState == 2];
        self->super._muteState = newStateFromOld(self->super._muteState, muteState == 2, 1);
      }

      if ([(PatternPlayerBase *)self needsResetForAction:2]&& ![(AVHapticPlayerChannel *)self->_channel resetAtTime:error error:time])
      {
        LOBYTE(error) = 0;
      }

      else
      {
        channel = self->_channel;
        events = self->super._events;
        v21 = [(PatternPlayer *)self processImmediateParameters:parametersCopy];
        LODWORD(error) = [(AVHapticPlayerChannel *)channel sendEvents:events withImmediateParameters:v21 atTime:error error:time];

        if (error)
        {
          v22 = objc_loadWeakRetained(&self->super._engine);
          LOBYTE(error) = [v22 notifyPlayerStarted:self atTime:time];

          v23 = objc_loadWeakRetained(&self->super._engine);
          metrics = [v23 metrics];
          patternID = [(PatternPlayerBase *)self patternID];
          [metrics handleStartForPlayer:self time:0 isAdvanced:patternID patternID:time];
        }
      }

      v28 = CALog::Scope::oslog(kHAPIScope);
      v27 = v28;
      if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
      {
        LOWORD(v31) = 0;
        _os_signpost_emit_with_name_impl(&dword_21569A000, v27, OS_SIGNPOST_INTERVAL_END, v12, "PatternPlayer_startAtTime_withImmediateParameters", &unk_215703E5B, &v31, 2u);
      }
    }

    else
    {
      v26 = CALog::Scope::oslog(kHAPIScope);
      v27 = v26;
      if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        LOWORD(v31) = 0;
        _os_signpost_emit_with_name_impl(&dword_21569A000, v27, OS_SIGNPOST_INTERVAL_END, v12, "PatternPlayer_startAtTime_withImmediateParameters", &unk_215703E5B, &v31, 2u);
      }

      LOBYTE(error) = 0;
    }
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticPatternPlayer.mm", 320, "[PatternPlayer startAtTime:withImmediateParameters:error:]", "time >= 0.0", -4840, error);
    LOBYTE(error) = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return error;
}

@end