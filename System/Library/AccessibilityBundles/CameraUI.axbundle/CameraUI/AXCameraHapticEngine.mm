@interface AXCameraHapticEngine
+ (id)_stringForHapticEngineStoppedReason:(int64_t)a3;
- (AXCameraHapticEngine)init;
- (unint64_t)_registerAudioWithResourceWithName:(id)a3;
- (void)_createLevelPlayerIfNeeded;
- (void)_createScreenEdgePlayerIfNeeded;
- (void)_createUnlevelPlayerIfNeeded;
- (void)_performHapticForPlayer:(id)a3;
- (void)_releasePlayers;
- (void)_unregisterAudioResource:(unint64_t)a3;
- (void)dealloc;
- (void)performLevelFeedback;
- (void)performSubjectHitScreenEdgeFeedback;
- (void)performUnlevelFeedback;
@end

@implementation AXCameraHapticEngine

- (AXCameraHapticEngine)init
{
  v19.receiver = self;
  v19.super_class = AXCameraHapticEngine;
  v2 = [(AXCameraHapticEngine *)&v19 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB9130] capabilitiesForHardware];
    if ([v3 supportsHaptics] & 1) != 0 || (objc_msgSend(v3, "supportsAudio"))
    {
      v4 = [MEMORY[0x29EDB8038] sharedInstance];
      v18 = 0;
      [v4 setPrefersNoDucking:1 error:&v18];
      v5 = v18;

      if (v5)
      {
        v6 = AXMediaLogHaptics();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [AXCameraHapticEngine init];
        }
      }

      v7 = objc_alloc(MEMORY[0x29EDB9130]);
      v8 = [MEMORY[0x29EDB8038] sharedInstance];
      v17 = 0;
      v9 = [v7 initWithAudioSession:v8 error:&v17];
      v10 = v17;

      if (!v9 || v10)
      {
        v12 = AXMediaLogHaptics();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [AXCameraHapticEngine init];
        }

        v11 = 0;
      }

      else
      {
        v2->__supportsHaptics = [v3 supportsHaptics];
        v2->__supportsAudio = [v3 supportsAudio];
        objc_storeStrong(&v2->__engine, v9);
        [(AXCameraHapticEngine *)v2 _createLevelPlayerIfNeeded];
        [(AXCameraHapticEngine *)v2 _createUnlevelPlayerIfNeeded];
        [(AXCameraHapticEngine *)v2 _createScreenEdgePlayerIfNeeded];
        [(CHHapticEngine *)v2->__engine setMuteHapticsWhileRecordingAudio:0];
        objc_initWeak(location, v2);
        v14[0] = MEMORY[0x29EDCA5F8];
        v14[1] = 3221225472;
        v14[2] = __28__AXCameraHapticEngine_init__block_invoke;
        v14[3] = &unk_29F2ACAE0;
        objc_copyWeak(&v15, location);
        [(CHHapticEngine *)v2->__engine setResetHandler:v14];
        [(CHHapticEngine *)v2->__engine setAutoShutdownEnabled:1];
        [v9 setStoppedHandler:&__block_literal_global];
        v11 = v2;
        objc_destroyWeak(&v15);
        objc_destroyWeak(location);
      }
    }

    else
    {
      v10 = AXMediaLogHaptics();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_29BC67000, v10, OS_LOG_TYPE_DEFAULT, "Haptics and audio not supported", location, 2u);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __28__AXCameraHapticEngine_init__block_invoke(uint64_t a1)
{
  v2 = AXMediaLogHaptics();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_29BC67000, v2, OS_LOG_TYPE_DEFAULT, "CHHapticEngine reset received", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _releasePlayers];
}

void __28__AXCameraHapticEngine_init__block_invoke_474(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = [AXCameraHapticEngine _stringForHapticEngineStoppedReason:a2];
  v3 = AXMediaLogHaptics();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_29BC67000, v3, OS_LOG_TYPE_DEFAULT, "CHHapticEngine stopped for reason %@", &v4, 0xCu);
  }
}

- (void)dealloc
{
  [(AXCameraHapticEngine *)self _unregisterAudioResource:[(AXCameraHapticEngine *)self _levelAudioResourceID]];
  [(AXCameraHapticEngine *)self _unregisterAudioResource:[(AXCameraHapticEngine *)self _unlevelAudioResourceID]];
  v3.receiver = self;
  v3.super_class = AXCameraHapticEngine;
  [(AXCameraHapticEngine *)&v3 dealloc];
}

+ (id)_stringForHapticEngineStoppedReason:(int64_t)a3
{
  if ((a3 + 1) > 4)
  {
    return @"Unexpected enum";
  }

  else
  {
    return off_29F2ACB48[a3 + 1];
  }
}

- (void)_releasePlayers
{
  [(AXCameraHapticEngine *)self set_levelPlayer:0];
  [(AXCameraHapticEngine *)self set_unlevelPlayer:0];

  [(AXCameraHapticEngine *)self set_screenEdgePlayer:0];
}

- (void)_createLevelPlayerIfNeeded
{
  v48[3] = *MEMORY[0x29EDCA608];
  v3 = [(AXCameraHapticEngine *)self _levelPlayer];

  if (!v3)
  {
    [(AXCameraHapticEngine *)self set_levelAudioResourceID:[(AXCameraHapticEngine *)self _registerAudioWithResourceWithName:@"inLevel.wav"]];
    if ([(AXCameraHapticEngine *)self _supportsHaptics])
    {
      v4 = objc_alloc(MEMORY[0x29EDB9138]);
      v5 = *MEMORY[0x29EDB9128];
      v6 = objc_alloc(MEMORY[0x29EDB9140]);
      LODWORD(v7) = 1058642330;
      v8 = [v6 initWithParameterID:*MEMORY[0x29EDB9110] value:v7];
      v48[0] = v8;
      v9 = objc_alloc(MEMORY[0x29EDB9140]);
      LODWORD(v10) = 1.0;
      v11 = [v9 initWithParameterID:*MEMORY[0x29EDB9120] value:v10];
      v48[1] = v11;
      v12 = objc_alloc(MEMORY[0x29EDB9140]);
      v13 = [v12 initWithParameterID:*MEMORY[0x29EDB9108] value:0.0];
      v48[2] = v13;
      v14 = [MEMORY[0x29EDB8D80] arrayWithObjects:v48 count:3];
      v43 = [v4 initWithEventType:v5 parameters:v14 relativeTime:0.0];

      v15 = objc_alloc(MEMORY[0x29EDB9138]);
      v16 = *MEMORY[0x29EDB9128];
      v17 = objc_alloc(MEMORY[0x29EDB9140]);
      LODWORD(v18) = 0.75;
      v19 = [v17 initWithParameterID:*MEMORY[0x29EDB9110] value:v18];
      v47[0] = v19;
      v20 = objc_alloc(MEMORY[0x29EDB9140]);
      LODWORD(v21) = 1.0;
      v22 = [v20 initWithParameterID:*MEMORY[0x29EDB9120] value:v21];
      v47[1] = v22;
      v23 = objc_alloc(MEMORY[0x29EDB9140]);
      v24 = [v23 initWithParameterID:*MEMORY[0x29EDB9108] value:0.0];
      v47[2] = v24;
      v25 = [MEMORY[0x29EDB8D80] arrayWithObjects:v47 count:3];
      v26 = [v15 initWithEventType:v16 parameters:v25 relativeTime:0.1];
    }

    else
    {
      v26 = 0;
      v43 = 0;
    }

    if ([(AXCameraHapticEngine *)self _levelAudioResourceID])
    {
      v27 = objc_alloc(MEMORY[0x29EDB9138]);
      v28 = [(AXCameraHapticEngine *)self _levelAudioResourceID];
      v29 = objc_alloc(MEMORY[0x29EDB9140]);
      LODWORD(v30) = 0.75;
      v31 = [v29 initWithParameterID:*MEMORY[0x29EDB9100] value:v30];
      v46 = v31;
      v32 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v46 count:1];
      v33 = [v27 initWithAudioResourceID:v28 parameters:v32 relativeTime:0.0];
    }

    else
    {
      v33 = 0;
    }

    v34 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v35 = v34;
    if (v43)
    {
      [v34 addObject:v43];
    }

    if (v26)
    {
      [v35 addObject:v26];
    }

    if (v33)
    {
      [v35 addObject:v33];
    }

    v36 = objc_alloc(MEMORY[0x29EDB9148]);
    v45 = 0;
    v37 = [v36 initWithEvents:v35 parameters:MEMORY[0x29EDB8E90] error:&v45];
    v38 = v45;
    v39 = [(AXCameraHapticEngine *)self _engine];
    v44 = v38;
    v40 = [v39 createPrivilegedPlayerWithPlayable:v37 error:&v44];
    v41 = v44;

    if (!v40 || v41)
    {
      v42 = AXMediaLogHaptics();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [AXCameraHapticEngine _createLevelPlayerIfNeeded];
      }
    }

    else
    {
      [(AXCameraHapticEngine *)self set_levelPlayer:v40];
    }
  }
}

- (void)_createUnlevelPlayerIfNeeded
{
  v65[3] = *MEMORY[0x29EDCA608];
  v3 = [(AXCameraHapticEngine *)self _unlevelPlayer];

  if (!v3)
  {
    [(AXCameraHapticEngine *)self set_unlevelAudioResourceID:[(AXCameraHapticEngine *)self _registerAudioWithResourceWithName:@"outLevel.aif"]];
    if ([(AXCameraHapticEngine *)self _supportsHaptics])
    {
      v4 = objc_alloc(MEMORY[0x29EDB9138]);
      v5 = *MEMORY[0x29EDB9128];
      v6 = objc_alloc(MEMORY[0x29EDB9140]);
      LODWORD(v7) = 0.75;
      v8 = [v6 initWithParameterID:*MEMORY[0x29EDB9110] value:v7];
      v65[0] = v8;
      v9 = objc_alloc(MEMORY[0x29EDB9140]);
      LODWORD(v10) = 1.0;
      v11 = [v9 initWithParameterID:*MEMORY[0x29EDB9120] value:v10];
      v65[1] = v11;
      v12 = objc_alloc(MEMORY[0x29EDB9140]);
      v13 = [v12 initWithParameterID:*MEMORY[0x29EDB9108] value:0.0];
      v65[2] = v13;
      v14 = [MEMORY[0x29EDB8D80] arrayWithObjects:v65 count:3];
      v58 = [v4 initWithEventType:v5 parameters:v14 relativeTime:0.0];

      v15 = objc_alloc(MEMORY[0x29EDB9138]);
      v16 = MEMORY[0x29EDB9128];
      v17 = *MEMORY[0x29EDB9128];
      v18 = objc_alloc(MEMORY[0x29EDB9140]);
      LODWORD(v19) = 0.75;
      v20 = [v18 initWithParameterID:*MEMORY[0x29EDB9110] value:v19];
      v64[0] = v20;
      v21 = objc_alloc(MEMORY[0x29EDB9140]);
      LODWORD(v22) = 1.0;
      v23 = [v21 initWithParameterID:*MEMORY[0x29EDB9120] value:v22];
      v64[1] = v23;
      v24 = objc_alloc(MEMORY[0x29EDB9140]);
      v25 = [v24 initWithParameterID:*MEMORY[0x29EDB9108] value:0.0];
      v64[2] = v25;
      v26 = [MEMORY[0x29EDB8D80] arrayWithObjects:v64 count:3];
      v27 = [v15 initWithEventType:v17 parameters:v26 relativeTime:0.075];

      v28 = objc_alloc(MEMORY[0x29EDB9138]);
      v57 = *v16;
      v29 = objc_alloc(MEMORY[0x29EDB9140]);
      LODWORD(v30) = 0.75;
      v31 = [v29 initWithParameterID:*MEMORY[0x29EDB9110] value:v30];
      v63[0] = v31;
      v32 = objc_alloc(MEMORY[0x29EDB9140]);
      LODWORD(v33) = 1.0;
      v34 = [v32 initWithParameterID:*MEMORY[0x29EDB9120] value:v33];
      v63[1] = v34;
      v35 = objc_alloc(MEMORY[0x29EDB9140]);
      v36 = [v35 initWithParameterID:*MEMORY[0x29EDB9108] value:0.0];
      v63[2] = v36;
      v37 = [MEMORY[0x29EDB8D80] arrayWithObjects:v63 count:3];
      v38 = [v28 initWithEventType:v57 parameters:v37 relativeTime:0.15];

      v39 = v58;
    }

    else
    {
      v38 = 0;
      v27 = 0;
      v39 = 0;
    }

    if ([(AXCameraHapticEngine *)self _unlevelAudioResourceID])
    {
      v40 = objc_alloc(MEMORY[0x29EDB9138]);
      v41 = [(AXCameraHapticEngine *)self _unlevelAudioResourceID];
      v42 = objc_alloc(MEMORY[0x29EDB9140]);
      LODWORD(v43) = 0.75;
      v44 = [v42 initWithParameterID:*MEMORY[0x29EDB9100] value:v43];
      v62 = v44;
      v45 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v62 count:1];
      v46 = [v40 initWithAudioResourceID:v41 parameters:v45 relativeTime:0.0];
    }

    else
    {
      v46 = 0;
    }

    v47 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v48 = v47;
    if (v39)
    {
      [v47 addObject:v39];
    }

    if (v27)
    {
      [v48 addObject:v27];
    }

    v59 = v27;
    if (v38)
    {
      [v48 addObject:v38];
    }

    v49 = v39;
    if (v46)
    {
      [v48 addObject:v46];
    }

    v50 = objc_alloc(MEMORY[0x29EDB9148]);
    v61 = 0;
    v51 = [v50 initWithEvents:v48 parameters:MEMORY[0x29EDB8E90] error:&v61];
    v52 = v61;
    v53 = [(AXCameraHapticEngine *)self _engine];
    v60 = v52;
    v54 = [v53 createPrivilegedPlayerWithPlayable:v51 error:&v60];
    v55 = v60;

    if (!v54 || v55)
    {
      v56 = AXMediaLogHaptics();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        [AXCameraHapticEngine _createLevelPlayerIfNeeded];
      }
    }

    else
    {
      [(AXCameraHapticEngine *)self set_unlevelPlayer:v54];
    }
  }
}

- (void)_createScreenEdgePlayerIfNeeded
{
  v27[3] = *MEMORY[0x29EDCA608];
  v3 = [(AXCameraHapticEngine *)self _screenEdgePlayer];

  if (!v3)
  {
    if ([(AXCameraHapticEngine *)self _supportsHaptics])
    {
      v4 = objc_alloc(MEMORY[0x29EDB9138]);
      v5 = *MEMORY[0x29EDB9128];
      v6 = objc_alloc(MEMORY[0x29EDB9140]);
      LODWORD(v7) = 1.0;
      v8 = [v6 initWithParameterID:*MEMORY[0x29EDB9110] value:v7];
      v27[0] = v8;
      v9 = objc_alloc(MEMORY[0x29EDB9140]);
      LODWORD(v10) = 1.0;
      v11 = [v9 initWithParameterID:*MEMORY[0x29EDB9120] value:v10];
      v27[1] = v11;
      v12 = objc_alloc(MEMORY[0x29EDB9140]);
      v13 = [v12 initWithParameterID:*MEMORY[0x29EDB9108] value:0.0];
      v27[2] = v13;
      v14 = [MEMORY[0x29EDB8D80] arrayWithObjects:v27 count:3];
      v15 = [v4 initWithEventType:v5 parameters:v14 relativeTime:0.0];

      v16 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
      v17 = v16;
      if (v15)
      {
        [v16 addObject:v15];
      }
    }

    else
    {
      v17 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    }

    v18 = objc_alloc(MEMORY[0x29EDB9148]);
    v26 = 0;
    v19 = [v18 initWithEvents:v17 parameters:MEMORY[0x29EDB8E90] error:&v26];
    v20 = v26;
    v21 = [(AXCameraHapticEngine *)self _engine];
    v25 = v20;
    v22 = [v21 createPrivilegedPlayerWithPlayable:v19 error:&v25];
    v23 = v25;

    if (!v22 || v23)
    {
      v24 = AXMediaLogHaptics();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [AXCameraHapticEngine _createLevelPlayerIfNeeded];
      }
    }

    else
    {
      [(AXCameraHapticEngine *)self set_screenEdgePlayer:v22];
    }
  }
}

- (unint64_t)_registerAudioWithResourceWithName:(id)a3
{
  v4 = a3;
  if ([(AXCameraHapticEngine *)self _supportsAudio])
  {
    v5 = [v4 stringByDeletingPathExtension];
    v6 = [v4 pathExtension];
    v7 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
    v8 = [v7 URLForResource:v5 withExtension:v6];
    if (v8)
    {
      v9 = [(AXCameraHapticEngine *)self _engine];
      v14 = 0;
      v10 = [v9 registerAudioResource:v8 options:MEMORY[0x29EDB8EA0] error:&v14];
      v11 = v14;

      if (v10 && !v11)
      {
        goto LABEL_12;
      }

      v12 = AXMediaLogHaptics();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [AXCameraHapticEngine _registerAudioWithResourceWithName:];
      }
    }

    else
    {
      v11 = AXMediaLogHaptics();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [AXCameraHapticEngine _registerAudioWithResourceWithName:];
      }
    }

    v10 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (void)_unregisterAudioResource:(unint64_t)a3
{
  if (a3)
  {
    v4 = [(AXCameraHapticEngine *)self _engine];
    v8 = 0;
    v5 = [v4 unregisterAudioResource:a3 error:&v8];
    v6 = v8;

    if (!v5 || v6)
    {
      v7 = AXMediaLogHaptics();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [AXCameraHapticEngine _unregisterAudioResource:];
      }
    }
  }
}

- (void)_performHapticForPlayer:(id)a3
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = AXMediaLogHaptics();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_29BC67000, v6, OS_LOG_TYPE_INFO, "Playing haptic/sound for: %@", buf, 0xCu);
    }

    v7 = [(AXCameraHapticEngine *)self _engine];
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __48__AXCameraHapticEngine__performHapticForPlayer___block_invoke;
    v8[3] = &unk_29F2ACB28;
    v9 = v4;
    [v7 startWithCompletionHandler:v8];

    v6 = v9;
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29BC67000, v6, OS_LOG_TYPE_DEFAULT, "Trying to play haptic with nil player", buf, 2u);
  }
}

void __48__AXCameraHapticEngine__performHapticForPlayer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AXMediaLogHaptics();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __48__AXCameraHapticEngine__performHapticForPlayer___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v10 = 0;
    v6 = [v5 startAtTime:&v10 error:0.0];
    v7 = v10;
    v4 = v7;
    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      v9 = AXMediaLogHaptics();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __48__AXCameraHapticEngine__performHapticForPlayer___block_invoke_cold_2();
      }
    }
  }
}

- (void)performLevelFeedback
{
  [(AXCameraHapticEngine *)self _createLevelPlayerIfNeeded];
  v3 = [(AXCameraHapticEngine *)self _levelPlayer];
  [(AXCameraHapticEngine *)self _performHapticForPlayer:v3];
}

- (void)performUnlevelFeedback
{
  [(AXCameraHapticEngine *)self _createUnlevelPlayerIfNeeded];
  v3 = [(AXCameraHapticEngine *)self _unlevelPlayer];
  [(AXCameraHapticEngine *)self _performHapticForPlayer:v3];
}

- (void)performSubjectHitScreenEdgeFeedback
{
  v15 = *MEMORY[0x29EDCA608];
  Current = CFAbsoluteTimeGetCurrent();
  [(AXCameraHapticEngine *)self _lastScreenEdgeTimestamp];
  v5 = Current - v4;
  [(AXCameraHapticEngine *)self screenEdgeFeedbackCooldownTime];
  if (v6 > 0.0 && v5 < v6)
  {
    v9 = v6;
    v10 = AXMediaLogHaptics();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218240;
      v12 = v5;
      v13 = 2048;
      v14 = v9;
      _os_log_impl(&dword_29BC67000, v10, OS_LOG_TYPE_DEFAULT, "Suppressing screen edge feedback %.3f seconds after previous feedback (cooldown time is %.3f)", &v11, 0x16u);
    }
  }

  else
  {
    [(AXCameraHapticEngine *)self _createScreenEdgePlayerIfNeeded];
    v8 = [(AXCameraHapticEngine *)self _screenEdgePlayer];
    [(AXCameraHapticEngine *)self _performHapticForPlayer:v8];

    [(AXCameraHapticEngine *)self set_lastScreenEdgeTimestamp:Current];
  }
}

- (void)_registerAudioWithResourceWithName:.cold.1()
{
  v5 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_29BC67000, v1, OS_LOG_TYPE_ERROR, "Error registering audio resource %@: %@", v2, 0x16u);
}

@end