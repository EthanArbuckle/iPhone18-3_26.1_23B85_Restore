@interface AXMHapticComponent
+ (BOOL)isSupported;
- (AXMHapticComponent)init;
- (BOOL)canHandleRequest:(id)a3;
- (void)handleRequest:(id)a3 completion:(id)a4;
- (void)setAutoShutdownTimeout:(double)a3;
- (void)transitionToState:(int64_t)a3 completion:(id)a4;
@end

@implementation AXMHapticComponent

- (AXMHapticComponent)init
{
  v7.receiver = self;
  v7.super_class = AXMHapticComponent;
  v2 = [(AXMOutputComponent *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("AXMHapticComponent", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

+ (BOOL)isSupported
{
  v2 = [MEMORY[0x1E695F570] capabilitiesForHardware];
  v3 = [v2 supportsHaptics];

  return v3;
}

- (void)setAutoShutdownTimeout:(double)a3
{
  self->_autoShutdownTimeout = a3;
  if (a3 >= 0.0)
  {
    [(CHHapticEngine *)self->_engine setAutoShutdownTimeout:?];
  }
}

- (void)transitionToState:(int64_t)a3 completion:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(AXMOutputComponent *)self componentState];
  if (a3 != 2 || v7)
  {
    v19 = AXMediaLogHaptics();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(AXMSoundComponent *)self transitionToState:a3 completion:v19];
    }

    v21.receiver = self;
    v21.super_class = AXMHapticComponent;
    [(AXMOutputComponent *)&v21 transitionToState:a3 completion:v6];
  }

  else
  {
    v24 = 0;
    v8 = [objc_alloc(MEMORY[0x1E695F570]) initWithAudioSession:0 sessionIsShared:0 error:&v24];
    v9 = v24;
    engine = self->_engine;
    self->_engine = v8;

    [(CHHapticEngine *)self->_engine setAutoShutdownEnabled:[(AXMHapticComponent *)self isAutoShutdownEnabled]];
    if (self->_autoShutdownTimeout >= 0.0)
    {
      [(CHHapticEngine *)self->_engine setAutoShutdownTimeout:?];
    }

    [(CHHapticEngine *)self->_engine setPlaysHapticsOnly:self->_usesHapticsOnly];
    v11 = [MEMORY[0x1E695F570] capabilitiesForHardware];
    self->_supportsHaptics = [v11 supportsHaptics];
    self->_supportsAudio = [v11 supportsAudio];
    v12 = AXMediaLogHaptics();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_engine;
      v20 = v9;
      v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[CHHapticEngine isAutoShutdownEnabled](v13, "isAutoShutdownEnabled")}];
      v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v11, "supportsHaptics")}];
      v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v11, "supportsAudio")}];
      v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[CHHapticEngine playsHapticsOnly](self->_engine, "playsHapticsOnly")}];
      *buf = 138413314;
      v26 = v13;
      v27 = 2112;
      v28 = v14;
      v29 = 2112;
      v30 = v15;
      v31 = 2112;
      v32 = v16;
      v33 = 2112;
      v34 = v17;
      _os_log_impl(&dword_1AE37B000, v12, OS_LOG_TYPE_DEFAULT, "Creating haptic engine %@. Auto-shutdown enabled: %@. Supports haptics: %@. Supports audio: %@. Plays Haptics Only: %@", buf, 0x34u);

      v9 = v20;
    }

    if (v9)
    {
      v18 = AXMediaLogHaptics();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [AXMHapticComponent transitionToState:completion:];
      }

      v23.receiver = self;
      v23.super_class = AXMHapticComponent;
      [(AXMOutputComponent *)&v23 transitionToState:1 completion:v6];
    }

    else
    {
      [(CHHapticEngine *)self->_engine setStoppedHandler:&__block_literal_global_34];
      [(CHHapticEngine *)self->_engine setResetHandler:&__block_literal_global_36];
      v22.receiver = self;
      v22.super_class = AXMHapticComponent;
      [(AXMOutputComponent *)&v22 transitionToState:2 completion:v6];
    }
  }
}

void __51__AXMHapticComponent_transitionToState_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = AXMediaLogHaptics();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 134217984;
    v5 = a2;
    _os_log_impl(&dword_1AE37B000, v3, OS_LOG_TYPE_INFO, "Haptic engine stopped. reason: %ld", &v4, 0xCu);
  }
}

void __51__AXMHapticComponent_transitionToState_completion___block_invoke_33()
{
  v0 = AXMediaLogHaptics();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1AE37B000, v0, OS_LOG_TYPE_INFO, "Haptic engine reset", v1, 2u);
  }
}

- (BOOL)canHandleRequest:(id)a3
{
  v3 = [a3 hapticActions];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)handleRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AXMHapticComponent_handleRequest_completion___block_invoke;
  block[3] = &unk_1E7A1EAD0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __47__AXMHapticComponent_handleRequest_completion___block_invoke(uint64_t a1)
{
  v50[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) hapticActions];
  v3 = [v2 firstObject];
  v4 = [v3 hapticFileURL];

  v5 = [*(a1 + 32) hapticActions];
  v6 = [v5 firstObject];
  [v6 hapticIntensity];
  v8 = v7;

  v9 = [v4 pathExtension];
  v10 = [v9 lowercaseString];
  if ([v10 isEqualToString:@"ahap"])
  {

LABEL_6:
    goto LABEL_7;
  }

  v11 = [v4 pathExtension];
  v12 = [v11 lowercaseString];
  v13 = [v12 isEqualToString:@"json"];

  if ((v13 & 1) == 0)
  {
    v9 = AXMediaLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __47__AXMHapticComponent_handleRequest_completion___block_invoke_cold_1(v9);
    }

    goto LABEL_6;
  }

LABEL_7:
  v14 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v4];
  v43 = 0;
  v15 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v14 options:0 error:&v43];
  v16 = v43;
  if (!v16 && v15)
  {
    v42 = 0;
    v17 = [objc_alloc(MEMORY[0x1E695F5A0]) initWithDictionary:v15 error:&v42];
    v16 = v42;
    if (v16 || !v17)
    {
      v20 = AXMediaLogHaptics();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __47__AXMHapticComponent_handleRequest_completion___block_invoke_cold_7();
      }

      goto LABEL_18;
    }

    v18 = *(*(a1 + 40) + 24);
    v41 = 0;
    [v18 startAndReturnError:&v41];
    v19 = v41;
    if (v19)
    {
      v16 = v19;
      v20 = AXMediaLogHaptics();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __47__AXMHapticComponent_handleRequest_completion___block_invoke_cold_3();
      }
    }

    else
    {
      v22 = *(*(a1 + 40) + 24);
      v40 = 0;
      v23 = [v22 createPlayerWithPattern:v17 error:&v40];
      v16 = v40;
      v24 = *(a1 + 40);
      v25 = *(v24 + 32);
      *(v24 + 32) = v23;

      if (v16)
      {
        v20 = AXMediaLogHaptics();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          __47__AXMHapticComponent_handleRequest_completion___block_invoke_cold_4();
        }
      }

      else
      {
        v26 = objc_alloc(MEMORY[0x1E695F568]);
        *&v27 = v8;
        v20 = [v26 initWithParameterID:*MEMORY[0x1E695F490] value:v27 relativeTime:0.0];
        v28 = *(*(a1 + 40) + 32);
        v50[0] = v20;
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
        v39 = 0;
        [v28 sendParameters:v29 atTime:&v39 error:0.0];
        v16 = v39;

        v30 = AXMediaLogHaptics();
        v31 = v30;
        if (v16)
        {
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            __47__AXMHapticComponent_handleRequest_completion___block_invoke_cold_5();
          }
        }

        else
        {
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v32 = *(a1 + 40);
            v33 = *(v32 + 24);
            v34 = *(v32 + 32);
            *buf = 138412802;
            v45 = v33;
            v46 = 2112;
            v47 = v34;
            v48 = 2048;
            v49 = v8;
            _os_log_impl(&dword_1AE37B000, v31, OS_LOG_TYPE_INFO, "Requesting haptic. Engine: %@. Player: %@. Intensity: %.2f", buf, 0x20u);
          }

          v35 = *(*(a1 + 40) + 32);
          v38 = 0;
          [v35 startAtTime:&v38 error:0.0];
          v16 = v38;
          if (!v16)
          {
            goto LABEL_18;
          }

          v31 = AXMediaLogHaptics();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            __47__AXMHapticComponent_handleRequest_completion___block_invoke_cold_6();
          }
        }
      }
    }

LABEL_18:

    goto LABEL_19;
  }

  v17 = AXMediaLogHaptics();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    __47__AXMHapticComponent_handleRequest_completion___block_invoke_cold_2();
  }

LABEL_19:

  v21 = *(*(a1 + 40) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AXMHapticComponent_handleRequest_completion___block_invoke_48;
  block[3] = &unk_1E7A1D038;
  v37 = *(a1 + 48);
  dispatch_async(v21, block);
}

@end