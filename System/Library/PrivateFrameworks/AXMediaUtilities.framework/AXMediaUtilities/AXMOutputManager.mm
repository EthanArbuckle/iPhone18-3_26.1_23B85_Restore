@interface AXMOutputManager
- (AXMOutputManager)initWithComponents:(unint64_t)components options:(unint64_t)options;
- (AXMOutputManager)initWithConfiguration:(id)configuration;
- (NSString)description;
- (id)dispatchRequest:(id)request;
- (id)playActiveSound:(id)sound;
- (void)disable;
- (void)dispatcher:(id)dispatcher handleTask:(id)task;
- (void)enableWithCompletion:(id)completion;
- (void)interrupt:(id)interrupt;
- (void)interruptImmediately;
- (void)interruptPolitely;
- (void)playSound:(id)sound;
- (void)speak:(id)speak;
@end

@implementation AXMOutputManager

- (AXMOutputManager)initWithComponents:(unint64_t)components options:(unint64_t)options
{
  v7 = objc_opt_new();
  [v7 setComponents:components];
  [v7 setUsesPrivateAudioSession:options & 1];
  [v7 setHapticEngineUsesAutoShutdown:(options >> 1) & 1];
  [v7 setHapticEngineAutoShutdownTimeout:-1.0];
  v8 = [(AXMOutputManager *)self initWithConfiguration:v7];

  return v8;
}

- (AXMOutputManager)initWithConfiguration:(id)configuration
{
  v29 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v26.receiver = self;
  v26.super_class = AXMOutputManager;
  v5 = [(AXMOutputManager *)&v26 init];
  v6 = v5;
  if (v5)
  {
    [(AXMOutputManager *)v5 setConfiguration:configurationCopy];
    v7 = AXMediaLogOutput();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = configurationCopy;
      _os_log_impl(&dword_1AE37B000, v7, OS_LOG_TYPE_DEFAULT, "Initializing output manager with config: %@", buf, 0xCu);
    }

    if ([configurationCopy usesPrivateAudioSession])
    {
      v8 = objc_alloc_init(AXMAudioSession);
      audioSession = v6->_audioSession;
      v6->_audioSession = v8;
    }

    v6->_state = 0;
    v10 = [[AXMTaskDispatcher alloc] initWithIdentifier:@"OutputManager" delegate:v6];
    outputRequests = v6->_outputRequests;
    v6->_outputRequests = v10;

    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v13 = dispatch_queue_create("OutputManager", v12);
    queue = v6->_queue;
    v6->_queue = v13;

    components = [configurationCopy components];
    array = [MEMORY[0x1E695DF70] array];
    if ((components & 2) != 0 && +[AXMSoundComponent isSupported])
    {
      v17 = objc_alloc_init(AXMSoundComponent);
      queue_soundComponent = v6->_queue_soundComponent;
      v6->_queue_soundComponent = v17;

      if ([configurationCopy usesPrivateAudioSession])
      {
        session = [(AXMAudioSession *)v6->_audioSession session];
        [(AXMSoundComponent *)v6->_queue_soundComponent setAudioSession:session];
      }

      [(NSArray *)array addObject:v6->_queue_soundComponent];
    }

    if ((components & 1) != 0 && +[AXMSpeechComponent isSupported])
    {
      v20 = objc_alloc_init(AXMSpeechComponent);
      queue_speechComponent = v6->_queue_speechComponent;
      v6->_queue_speechComponent = v20;

      [(NSArray *)array addObject:v6->_queue_speechComponent];
    }

    if ((components & 4) != 0 && +[AXMHapticComponent isSupported])
    {
      v22 = objc_alloc_init(AXMHapticComponent);
      queue_hapticComponent = v6->_queue_hapticComponent;
      v6->_queue_hapticComponent = v22;

      -[AXMHapticComponent setAutoShutdownEnabled:](v6->_queue_hapticComponent, "setAutoShutdownEnabled:", [configurationCopy hapticEngineUsesAutoShutdown]);
      [configurationCopy hapticEngineAutoShutdownTimeout];
      [(AXMHapticComponent *)v6->_queue_hapticComponent setAutoShutdownTimeout:?];
      -[AXMHapticComponent setUsesHapticsOnly:](v6->_queue_hapticComponent, "setUsesHapticsOnly:", [configurationCopy hapticEngineUsesHapticsOnly]);
      [(NSArray *)array addObject:v6->_queue_hapticComponent];
    }

    queue_activeComponents = v6->_queue_activeComponents;
    v6->_queue_activeComponents = array;
  }

  return v6;
}

- (NSString)description
{
  state = self->_state;
  if (state > 2)
  {
    v4 = &stru_1F23EA908;
  }

  else
  {
    v4 = off_1E7A1E520[state];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_queue_speechComponent != 0];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_queue_soundComponent != 0];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_queue_hapticComponent != 0];
  v9 = [v5 stringWithFormat:@"AXMOutputManager<%p>: state:'%@'. Speech? %@. Sound? %@. Haptics? %@.", self, v4, v6, v7, v8];

  return v9;
}

- (void)disable
{
  if (self->_usesPrivateAudioSession)
  {
    block[5] = v2;
    block[6] = v3;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__AXMOutputManager_disable__block_invoke;
    block[3] = &unk_1E7A1CCB8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

void __27__AXMOutputManager_disable__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v4 = 0;
  [v1 deactivateSessionWithError:&v4];
  v2 = v4;
  if (v2)
  {
    v3 = AXMediaLogOutput();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __27__AXMOutputManager_disable__block_invoke_cold_1(v2, v3);
    }
  }
}

- (void)enableWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = completionCopy;
    v6 = MEMORY[0x1B2700900]();
    v7 = MEMORY[0x1B2700900]();
  }

  else
  {
    v6 = [&__block_literal_global_28 copy];
    v7 = MEMORY[0x1B2700900]();
  }

  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__AXMOutputManager_enableWithCompletion___block_invoke_2;
  v10[3] = &unk_1E7A1C678;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(queue, v10);
}

void __41__AXMOutputManager_enableWithCompletion___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 16) == 1 && (v3 = *(v2 + 24), v24 = 0, [v3 activateSessionWithError:&v24], (v4 = v24) != 0))
  {
    v5 = v4;
    v6 = AXMediaLogOutput();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __41__AXMOutputManager_enableWithCompletion___block_invoke_2_cold_1(v5, v6);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = dispatch_group_create();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = *(*(a1 + 32) + 72);
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        v11 = 0;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * v11);
          dispatch_group_enter(v5);
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __41__AXMOutputManager_enableWithCompletion___block_invoke_53;
          v18[3] = &unk_1E7A1CCB8;
          v19 = v5;
          [v12 transitionToState:2 completion:v18];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v9);
    }

    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    v15 = *(v14 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__AXMOutputManager_enableWithCompletion___block_invoke_2_54;
    block[3] = &unk_1E7A1C678;
    block[4] = v14;
    v17 = v13;
    dispatch_group_notify(v5, v15, block);
  }
}

uint64_t __41__AXMOutputManager_enableWithCompletion___block_invoke_2_54(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 72);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    v6 = 1;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(v2);
      }

      if ([*(*(&v9 + 1) + 8 * v7) componentState] != 2)
      {
        break;
      }

      if (v4 == ++v7)
      {
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v6 = 2;
  }

  *(*(a1 + 32) + 32) = v6;
  return (*(*(a1 + 40) + 16))();
}

- (id)dispatchRequest:(id)request
{
  requestCopy = request;
  if (self->_state == 2)
  {
    v5 = objc_alloc_init(_AXMOutputRequestTask);
    [(_AXMOutputRequestTask *)v5 setRequest:requestCopy];
    if ([requestCopy interruptsAndClearsQueue])
    {
      unscheduleAllTasks = [(AXMTaskDispatcher *)self->_outputRequests unscheduleAllTasks];
      [(AXMSpeechComponent *)self->_queue_speechComponent stopSpeakingAtNextWord];
    }

    [(AXMTaskDispatcher *)self->_outputRequests scheduleTask:v5];
    handle = [requestCopy handle];
  }

  else
  {
    v8 = AXMediaLogOutput();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1AE37B000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring dispatch request. Output manager not ready", v10, 2u);
    }

    handle = 0;
  }

  return handle;
}

- (void)speak:(id)speak
{
  speakCopy = speak;
  v6 = objc_alloc_init(AXMOutputRequest);
  [(AXMOutputRequest *)v6 addSpeechItem:speakCopy];

  v5 = [(AXMOutputManager *)self dispatchRequest:v6];
}

- (void)interrupt:(id)interrupt
{
  interruptCopy = interrupt;
  v6 = objc_alloc_init(AXMOutputRequest);
  [(AXMOutputRequest *)v6 setInterruptsAndClearsQueue:1];
  [(AXMOutputRequest *)v6 addSpeechItem:interruptCopy];

  v5 = [(AXMOutputManager *)self dispatchRequest:v6];
}

- (void)interruptImmediately
{
  unscheduleAllTasks = [(AXMTaskDispatcher *)self->_outputRequests unscheduleAllTasks];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__AXMOutputManager_interruptImmediately__block_invoke;
  block[3] = &unk_1E7A1CCB8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __40__AXMOutputManager_interruptImmediately__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 56) stopSpeakingImmediately];
  v2 = *(*(a1 + 32) + 64);

  return [v2 stopCurrentHaptics];
}

- (void)interruptPolitely
{
  unscheduleAllTasks = [(AXMTaskDispatcher *)self->_outputRequests unscheduleAllTasks];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__AXMOutputManager_interruptPolitely__block_invoke;
  block[3] = &unk_1E7A1CCB8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __37__AXMOutputManager_interruptPolitely__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 56) stopSpeakingAtNextWord];
  v2 = *(*(a1 + 32) + 64);

  return [v2 stopCurrentHaptics];
}

- (void)playSound:(id)sound
{
  soundCopy = sound;
  v6 = objc_alloc_init(AXMOutputRequest);
  [(AXMOutputRequest *)v6 addSoundItemWithID:soundCopy];

  v5 = [(AXMOutputManager *)self dispatchRequest:v6];
}

- (id)playActiveSound:(id)sound
{
  soundCopy = sound;
  v5 = objc_alloc_init(AXMOutputRequest);
  [(AXMOutputRequest *)v5 addActiveSoundItemWithID:soundCopy];

  v6 = [(AXMOutputManager *)self dispatchRequest:v5];
  actionHandles = [v6 actionHandles];
  firstObject = [actionHandles firstObject];

  return firstObject;
}

- (void)dispatcher:(id)dispatcher handleTask:(id)task
{
  taskCopy = task;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__AXMOutputManager_dispatcher_handleTask___block_invoke;
  v8[3] = &unk_1E7A1CB30;
  v9 = taskCopy;
  selfCopy = self;
  v7 = taskCopy;
  dispatch_async(queue, v8);
}

void __42__AXMOutputManager_dispatcher_handleTask___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = dispatch_group_create();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = a1;
  v4 = *(*(a1 + 40) + 72);
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v10 = [v2 request];
        v11 = [v9 canHandleRequest:v10];

        if (v11)
        {
          dispatch_group_enter(v3);
          v12 = [v2 request];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __42__AXMOutputManager_dispatcher_handleTask___block_invoke_2;
          v18[3] = &unk_1E7A1CCB8;
          v19 = v3;
          [v9 handleRequest:v12 completion:v18];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v13 = *(*(v15 + 40) + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__AXMOutputManager_dispatcher_handleTask___block_invoke_3;
  block[3] = &unk_1E7A1CCB8;
  v17 = v2;
  v14 = v2;
  dispatch_group_notify(v3, v13, block);
}

void __42__AXMOutputManager_dispatcher_handleTask___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) markAsComplete:1];
  v2 = [*(a1 + 32) request];
  v3 = [v2 completionBlock];

  if (v3)
  {
    v4 = [*(a1 + 32) request];
    v5 = [v4 completionBlock];
    v5[2]();

    v6 = [*(a1 + 32) request];
    [v6 setCompletionBlock:0];
  }
}

void __27__AXMOutputManager_disable__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_ERROR, "Could not de-activate audio session: %@", &v2, 0xCu);
}

void __41__AXMOutputManager_enableWithCompletion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_ERROR, "Could not activate audio session: %@", &v2, 0xCu);
}

@end