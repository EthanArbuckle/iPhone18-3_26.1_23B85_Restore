@interface AXMSoundComponent
- (AXMSoundComponent)init;
- (BOOL)_startEngineIfNeeded:(id *)a3;
- (BOOL)canHandleRequest:(id)a3;
- (id)_scheduleActiveSound:(id)a3;
- (void)_scheduleOneShotSound:(id)a3 completion:(id)a4;
- (void)_stopActiveSound:(id)a3;
- (void)dealloc;
- (void)handleRequest:(id)a3 completion:(id)a4;
- (void)transitionToState:(int64_t)a3 completion:(id)a4;
@end

@implementation AXMSoundComponent

- (AXMSoundComponent)init
{
  v11.receiver = self;
  v11.super_class = AXMSoundComponent;
  v2 = [(AXMOutputComponent *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = [v3 addObserverForName:*MEMORY[0x1E6958028] object:0 queue:0 usingBlock:&__block_literal_global_33];
    configChangedObserverToken = v2->_configChangedObserverToken;
    v2->_configChangedObserverToken = v4;

    v6 = objc_alloc_init(MEMORY[0x1E69583F8]);
    engine = v2->_engine;
    v2->_engine = v6;

    v8 = [MEMORY[0x1E695DF70] array];
    activeSounds = v2->_activeSounds;
    v2->_activeSounds = v8;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self->_configChangedObserverToken];

  v4.receiver = self;
  v4.super_class = AXMSoundComponent;
  [(AXMSoundComponent *)&v4 dealloc];
}

- (void)transitionToState:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(AXMOutputComponent *)self componentState];
  if (a3 != 2 || v7)
  {
    v11 = AXMediaLogHaptics();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(AXMSoundComponent *)self transitionToState:a3 completion:v11];
    }

    v19.receiver = self;
    v19.super_class = AXMSoundComponent;
    [(AXMOutputComponent *)&v19 transitionToState:a3 completion:v6];
  }

  else
  {
    v22 = 0;
    v8 = [(AXMSoundComponent *)self _startEngineIfNeeded:&v22];
    v9 = v22;
    v10 = v9;
    if (!v8 || v9)
    {
      v12 = AXMediaLogHaptics();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(AXMSoundComponent *)v10 transitionToState:v12 completion:v13, v14, v15, v16, v17, v18];
      }

      v21.receiver = self;
      v21.super_class = AXMSoundComponent;
      [(AXMOutputComponent *)&v21 transitionToState:1 completion:v6];
    }

    else
    {
      v20.receiver = self;
      v20.super_class = AXMSoundComponent;
      [(AXMOutputComponent *)&v20 transitionToState:2 completion:v6];
    }
  }
}

- (BOOL)canHandleRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 oneShotSoundActions];
  if ([v4 count])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 activeSoundActions];
    v5 = [v6 count] != 0;
  }

  return v5;
}

- (void)handleRequest:(id)a3 completion:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v32 = a4;
  v33 = v5;
  group = dispatch_group_create();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = [v5 oneShotSoundActions];
  v7 = [v6 countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v47;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v46 + 1) + 8 * i);
        v12 = objc_alloc(MEMORY[0x1E6958408]);
        v13 = [v11 soundFileURL];
        v45 = 0;
        v14 = [v12 initForReading:v13 error:&v45];
        v15 = v45;

        if (v15)
        {
          v16 = AXMediaLogSounds();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v52 = v5;
            v53 = 2112;
            v54 = v15;
            _os_log_error_impl(&dword_1AE37B000, v16, OS_LOG_TYPE_ERROR, "Could not handle audio request: %@. Error:%@", buf, 0x16u);
          }
        }

        else
        {
          dispatch_group_enter(group);
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = __46__AXMSoundComponent_handleRequest_completion___block_invoke;
          v43[3] = &unk_1E7A1CCB8;
          v44 = group;
          [(AXMSoundComponent *)self _scheduleOneShotSound:v14 completion:v43];
          v16 = v44;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v8);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v17 = [v5 activeSoundActions];
  v18 = [v17 countByEnumeratingWithState:&v39 objects:v50 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v40;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v40 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v39 + 1) + 8 * j);
        v23 = objc_alloc(MEMORY[0x1E6958408]);
        v24 = [v22 soundFileURL];
        v38 = 0;
        v25 = [v23 initForReading:v24 error:&v38];
        v26 = v38;

        if (v26)
        {
          v27 = AXMediaLogSounds();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v52 = v33;
            v53 = 2112;
            v54 = v26;
            _os_log_error_impl(&dword_1AE37B000, v27, OS_LOG_TYPE_ERROR, "Could not handle audio request: %@. Error:%@", buf, 0x16u);
          }
        }

        else
        {
          v27 = [(AXMSoundComponent *)self _scheduleActiveSound:v25];
          if (v27)
          {
            v28 = objc_alloc_init(AXMActiveSoundOutputActionHandleImpl);
            [(AXMActiveSoundOutputActionHandleImpl *)v28 setActiveSound:v27];
            [(AXMActiveSoundOutputActionHandleImpl *)v28 setSoundComponent:self];
            v29 = [v22 handle];
            [v29 setHandleProvider:v28];
          }
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v39 objects:v50 count:16];
    }

    while (v19);
  }

  v30 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__AXMSoundComponent_handleRequest_completion___block_invoke_67;
  block[3] = &unk_1E7A1D038;
  v37 = v32;
  v31 = v32;
  dispatch_group_notify(group, v30, block);
}

- (id)_scheduleActiveSound:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AXMActiveSound);
  [(AXMActiveSound *)v5 connectToEngine:self->_engine];
  v17 = 0;
  v6 = [(AXMActiveSound *)v5 beginPlayback:v4 withError:&v17];

  v7 = v17;
  if (v6)
  {
    [(NSMutableArray *)self->_activeSounds addObject:v5];
    v8 = v5;
  }

  else
  {
    v9 = AXMediaLogSounds();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(AXMSoundComponent *)v7 _scheduleActiveSound:v9, v10, v11, v12, v13, v14, v15];
    }

    [(AXMActiveSound *)v5 disconnectFromEngine:self->_engine];
    v8 = 0;
  }

  return v8;
}

- (void)_scheduleOneShotSound:(id)a3 completion:(id)a4
{
  v6 = a4;
  oneShotSoundPlayer = self->_oneShotSoundPlayer;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__AXMSoundComponent__scheduleOneShotSound_completion___block_invoke;
  v9[3] = &unk_1E7A1D038;
  v10 = v6;
  v8 = v6;
  [(AVAudioPlayerNode *)oneShotSoundPlayer scheduleFile:a3 atTime:0 completionHandler:v9];
  [(AVAudioPlayerNode *)self->_oneShotSoundPlayer play];
}

uint64_t __54__AXMSoundComponent__scheduleOneShotSound_completion___block_invoke(uint64_t a1)
{
  v2 = AXMediaLogSounds();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AE37B000, v2, OS_LOG_TYPE_INFO, "One-shot sound player did finish playing sound", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)_startEngineIfNeeded:(id *)a3
{
  if (!self->_oneShotSoundPlayer)
  {
    v5 = objc_alloc_init(MEMORY[0x1E6958458]);
    oneShotSoundPlayer = self->_oneShotSoundPlayer;
    self->_oneShotSoundPlayer = v5;

    [(AVAudioEngine *)self->_engine attachNode:self->_oneShotSoundPlayer];
    v7 = [(AVAudioEngine *)self->_engine mainMixerNode];
    v8 = [objc_alloc(MEMORY[0x1E6958418]) initStandardFormatWithSampleRate:2 channels:44100.0];
    -[AVAudioEngine connect:to:fromBus:toBus:format:](self->_engine, "connect:to:fromBus:toBus:format:", self->_oneShotSoundPlayer, v7, 0, [v7 nextAvailableInputBus], v8);
  }

  if ([(AVAudioEngine *)self->_engine isRunning])
  {
    v9 = 0;
    v10 = 1;
  }

  else
  {
    engine = self->_engine;
    v21 = 0;
    v10 = [(AVAudioEngine *)engine startAndReturnError:&v21];
    v9 = v21;
    if (v9)
    {
      v12 = AXMediaLogSounds();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(AXMSoundComponent *)v9 _startEngineIfNeeded:v12, v13, v14, v15, v16, v17, v18];
      }
    }
  }

  if (a3)
  {
    v19 = v9;
    *a3 = v9;
  }

  return v10;
}

- (void)_stopActiveSound:(id)a3
{
  if (a3)
  {
    engine = self->_engine;
    v5 = a3;
    [v5 disconnectFromEngine:engine];
    [(NSMutableArray *)self->_activeSounds removeObject:v5];
  }
}

- (void)transitionToState:(NSObject *)a3 completion:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "componentState")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_1AE37B000, a3, OS_LOG_TYPE_ERROR, "Unexpected state change. from %@. to %@", &v7, 0x16u);
}

@end