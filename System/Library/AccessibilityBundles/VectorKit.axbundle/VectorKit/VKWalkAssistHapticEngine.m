@interface VKWalkAssistHapticEngine
- (VKWalkAssistHapticEngine)init;
- (id)enterPattern;
- (id)exitPattern;
- (id)singlePulsePatternWithIntensity:(float)a3 duration:(double)a4;
- (void)_playHapticFromHapticPattern:(id)a3;
- (void)playEnterHaptic;
- (void)playExitHaptic;
- (void)playSingleHapticPulseWithIntensity:(float)a3 duration:(double)a4;
- (void)setUsesHapticFeedback:(BOOL)a3;
@end

@implementation VKWalkAssistHapticEngine

- (VKWalkAssistHapticEngine)init
{
  v8.receiver = self;
  v8.super_class = VKWalkAssistHapticEngine;
  v2 = [(VKWalkAssistHapticEngine *)&v8 init];
  if (v2 && ([MEMORY[0x29EDB9130] capabilitiesForHardware], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "supportsHaptics"), v3, v4))
  {
    hapticEngine = v2->_hapticEngine;
    v2->_hapticEngine = 0;

    *&v2->_hapticEngineStarted = 0;
    v6 = v2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)playEnterHaptic
{
  v3 = [(VKWalkAssistHapticEngine *)self enterPattern];
  [(VKWalkAssistHapticEngine *)self _playHapticFromHapticPattern:v3];
}

- (void)playExitHaptic
{
  v3 = [(VKWalkAssistHapticEngine *)self exitPattern];
  [(VKWalkAssistHapticEngine *)self _playHapticFromHapticPattern:v3];
}

- (void)playSingleHapticPulseWithIntensity:(float)a3 duration:(double)a4
{
  v5 = [VKWalkAssistHapticEngine singlePulsePatternWithIntensity:"singlePulsePatternWithIntensity:duration:" duration:?];
  [(VKWalkAssistHapticEngine *)self _playHapticFromHapticPattern:v5];
}

- (void)setUsesHapticFeedback:(BOOL)a3
{
  if (self->_usesHapticFeedback != a3)
  {
    if (!a3)
    {
      if (!self->_hapticEngineStarted)
      {
        return;
      }

      objc_initWeak(&location, self);
      hapticEngine = self->_hapticEngine;
      v11 = v16;
      v16[0] = MEMORY[0x29EDCA5F8];
      v16[1] = 3221225472;
      v16[2] = __50__VKWalkAssistHapticEngine_setUsesHapticFeedback___block_invoke_286;
      v16[3] = &unk_29F318470;
      objc_copyWeak(&v17, &location);
      [(CHHapticEngine *)hapticEngine stopWithCompletionHandler:v16];
      self->_usesHapticFeedback = 0;
      goto LABEL_10;
    }

    if (!self->_hapticEngineStarted)
    {
      v4 = [MEMORY[0x29EDB9130] capabilitiesForHardware];
      v5 = [v4 supportsHaptics];

      if (v5)
      {
        v24 = 0;
        v6 = [objc_alloc(MEMORY[0x29EDB9130]) initAndReturnError:&v24];
        v7 = v24;
        v8 = self->_hapticEngine;
        self->_hapticEngine = v6;

        if (v7)
        {
          v9 = AXLogCommon();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
          {
            [VKWalkAssistHapticEngine setUsesHapticFeedback:];
          }

LABEL_14:

          return;
        }

        v12 = self->_hapticEngine;
        v23 = 0;
        [(CHHapticEngine *)v12 startAndReturnError:&v23];
        v13 = v23;
        if (v13)
        {
          v7 = v13;
          v9 = AXLogCommon();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
          {
            [VKWalkAssistHapticEngine setUsesHapticFeedback:];
          }

          goto LABEL_14;
        }

        objc_initWeak(&location, self);
        v14 = self->_hapticEngine;
        v11 = v20;
        v20[0] = MEMORY[0x29EDCA5F8];
        v20[1] = 3221225472;
        v20[2] = __50__VKWalkAssistHapticEngine_setUsesHapticFeedback___block_invoke;
        v20[3] = &unk_29F318420;
        objc_copyWeak(&v21, &location);
        [(CHHapticEngine *)v14 setResetHandler:v20];
        v15 = self->_hapticEngine;
        v18[0] = MEMORY[0x29EDCA5F8];
        v18[1] = 3221225472;
        v18[2] = __50__VKWalkAssistHapticEngine_setUsesHapticFeedback___block_invoke_284;
        v18[3] = &unk_29F318448;
        objc_copyWeak(&v19, &location);
        [(CHHapticEngine *)v15 setStoppedHandler:v18];
        *&self->_hapticEngineStarted = 257;
        objc_destroyWeak(&v19);
LABEL_10:
        objc_destroyWeak(v11 + 4);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __50__VKWalkAssistHapticEngine_setUsesHapticFeedback___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained hapticEngine];
  v9 = 0;
  [v3 startAndReturnError:&v9];
  v4 = v9;

  if (v4)
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_29C6F1000, v5, OS_LOG_TYPE_DEFAULT, "Cannot restart CHHapticEngine: %@", buf, 0xCu);
    }

    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 setUsesHapticFeedback:0];

    v7 = objc_loadWeakRetained((a1 + 32));
    [v7 setHapticEngineStarted:0];
  }

  else
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    [v8 setHapticEngineStarted:1];

    v7 = objc_loadWeakRetained((a1 + 32));
    [v7 setUsesHapticFeedback:1];
  }
}

void __50__VKWalkAssistHapticEngine_setUsesHapticFeedback___block_invoke_284(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHapticEngineStarted:0];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setUsesHapticFeedback:0];

  v6 = AXLogCommon();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2 <= 1)
  {
    if (a2 == -1)
    {
      if (v7)
      {
        v11 = 0;
        v8 = "CHHapticEngine stopped: System Error";
        v9 = &v11;
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    if (a2 == 1)
    {
      if (v7)
      {
        v14 = 0;
        v8 = "CHHapticEngine stopped: Audio Session Interrupt";
        v9 = &v14;
LABEL_16:
        _os_log_impl(&dword_29C6F1000, v6, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

LABEL_10:
    if (v7)
    {
      v10 = 0;
      v8 = "CHHapticEngine stopped: Unknown reason";
      v9 = &v10;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (a2 == 2)
  {
    if (v7)
    {
      *buf = 0;
      v8 = "CHHapticEngine stopped: Application Suspended";
      v9 = buf;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (a2 != 3)
  {
    goto LABEL_10;
  }

  if (v7)
  {
    v12 = 0;
    v8 = "CHHapticEngine stopped: Idle Timeout";
    v9 = &v12;
    goto LABEL_16;
  }

LABEL_17:
}

void __50__VKWalkAssistHapticEngine_setUsesHapticFeedback___block_invoke_286(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = [WeakRetained hapticEngineStarted];

    if (v6)
    {
      v7 = objc_loadWeakRetained((a1 + 32));
      [v7 setUsesHapticFeedback:1];
    }

    v8 = AXLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __50__VKWalkAssistHapticEngine_setUsesHapticFeedback___block_invoke_286_cold_1();
    }
  }

  else
  {
    [WeakRetained setHapticEngineStarted:0];
  }
}

- (id)enterPattern
{
  v18[2] = *MEMORY[0x29EDCA608];
  v2 = objc_alloc(MEMORY[0x29EDB9140]);
  LODWORD(v3) = 1.0;
  v4 = [v2 initWithParameterID:*MEMORY[0x29EDB9110] value:v3];
  v5 = objc_alloc(MEMORY[0x29EDB9140]);
  LODWORD(v6) = 1.0;
  v7 = [v5 initWithParameterID:*MEMORY[0x29EDB9118] value:v6];
  v8 = objc_alloc(MEMORY[0x29EDB9138]);
  v9 = *MEMORY[0x29EDB9128];
  v18[0] = v4;
  v18[1] = v7;
  v10 = [MEMORY[0x29EDB8D80] arrayWithObjects:v18 count:2];
  v11 = [v8 initWithEventType:v9 parameters:v10 relativeTime:0.0];

  v12 = objc_alloc(MEMORY[0x29EDB9148]);
  v17 = v11;
  v13 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v17 count:1];
  v16 = 0;
  v14 = [v12 initWithEvents:v13 parameters:MEMORY[0x29EDB8E90] error:&v16];

  return v14;
}

- (id)exitPattern
{
  v32[2] = *MEMORY[0x29EDCA608];
  v2 = objc_alloc(MEMORY[0x29EDB9140]);
  v3 = MEMORY[0x29EDB9110];
  LODWORD(v4) = 1058642330;
  v28 = [v2 initWithParameterID:*MEMORY[0x29EDB9110] value:v4];
  v5 = objc_alloc(MEMORY[0x29EDB9140]);
  v6 = MEMORY[0x29EDB9118];
  LODWORD(v7) = 1050253722;
  v8 = [v5 initWithParameterID:*MEMORY[0x29EDB9118] value:v7];
  v9 = objc_alloc(MEMORY[0x29EDB9138]);
  v10 = MEMORY[0x29EDB9128];
  v11 = *MEMORY[0x29EDB9128];
  v32[0] = v28;
  v32[1] = v8;
  v12 = [MEMORY[0x29EDB8D80] arrayWithObjects:v32 count:2];
  v13 = [v9 initWithEventType:v11 parameters:v12 relativeTime:0.0];

  v14 = objc_alloc(MEMORY[0x29EDB9140]);
  LODWORD(v15) = 1050253722;
  v16 = [v14 initWithParameterID:*v3 value:v15];
  v17 = objc_alloc(MEMORY[0x29EDB9140]);
  LODWORD(v18) = 1050253722;
  v19 = [v17 initWithParameterID:*v6 value:v18];
  v20 = objc_alloc(MEMORY[0x29EDB9138]);
  v21 = *v10;
  v31[0] = v16;
  v31[1] = v19;
  v22 = [MEMORY[0x29EDB8D80] arrayWithObjects:v31 count:2];
  v23 = [v20 initWithEventType:v21 parameters:v22 relativeTime:0.125];

  v24 = objc_alloc(MEMORY[0x29EDB9148]);
  v30[0] = v13;
  v30[1] = v23;
  v25 = [MEMORY[0x29EDB8D80] arrayWithObjects:v30 count:2];
  v29 = 0;
  v26 = [v24 initWithEvents:v25 parameters:MEMORY[0x29EDB8E90] error:&v29];

  return v26;
}

- (id)singlePulsePatternWithIntensity:(float)a3 duration:(double)a4
{
  v19[1] = *MEMORY[0x29EDCA608];
  v6 = objc_alloc(MEMORY[0x29EDB9140]);
  *&v7 = a3;
  v8 = [v6 initWithParameterID:*MEMORY[0x29EDB9110] value:v7];
  v9 = objc_alloc(MEMORY[0x29EDB9138]);
  v10 = *MEMORY[0x29EDB9128];
  v19[0] = v8;
  v11 = [MEMORY[0x29EDB8D80] arrayWithObjects:v19 count:1];
  v12 = [v9 initWithEventType:v10 parameters:v11 relativeTime:0.0 duration:a4];

  v13 = objc_alloc(MEMORY[0x29EDB9148]);
  v18 = v12;
  v14 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v18 count:1];
  v17 = 0;
  v15 = [v13 initWithEvents:v14 parameters:MEMORY[0x29EDB8E90] error:&v17];

  return v15;
}

- (void)_playHapticFromHapticPattern:(id)a3
{
  v12[4] = *MEMORY[0x29EDCA608];
  v4 = a3;
  if (v4 && self->_usesHapticFeedback)
  {
    if (!self->_hapticEngineStarted)
    {
      hapticEngine = self->_hapticEngine;
      v12[0] = 0;
      [(CHHapticEngine *)hapticEngine startAndReturnError:v12];
      v6 = v12[0];
      if (v6)
      {
        v7 = v6;
        v8 = AXLogCommon();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          [VKWalkAssistHapticEngine _playHapticFromHapticPattern:];
        }

LABEL_13:

        goto LABEL_14;
      }

      self->_hapticEngineStarted = 1;
    }

    v9 = self->_hapticEngine;
    v11 = 0;
    v8 = [(CHHapticEngine *)v9 createAdvancedPlayerWithPattern:v4 error:&v11];
    v7 = v11;
    if (v7)
    {
      v10 = AXLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [VKWalkAssistHapticEngine _playHapticFromHapticPattern:];
      }
    }

    else
    {
      [v8 startAtTime:0 error:0.0];
    }

    goto LABEL_13;
  }

LABEL_14:
}

@end