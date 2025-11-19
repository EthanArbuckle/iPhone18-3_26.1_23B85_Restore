@interface AFAccessibilityObserver
+ (id)sharedObserver;
- (AFAccessibilityObserver)init;
- (AFAccessibilityState)state;
- (BOOL)_fetchIsVibrationDisabled;
- (id)currentState;
- (void)_setState:(id)a3 clearDirtyFlags:(unint64_t)a4;
- (void)_updateVibrationDisabledPreference;
- (void)_updateVoiceOverTouchEnabledPreference;
- (void)addListener:(id)a3;
- (void)getStateWithCompletion:(id)a3;
- (void)removeListener:(id)a3;
- (void)vibrationDisabledPreferenceDidChange:(id)a3;
- (void)voiceOverTouchEnabledPreferenceDidChange:(id)a3;
@end

@implementation AFAccessibilityObserver

+ (id)sharedObserver
{
  if (sharedObserver_onceToken_49006 != -1)
  {
    dispatch_once(&sharedObserver_onceToken_49006, &__block_literal_global_49007);
  }

  v3 = sharedObserver_sharedObserver_49008;

  return v3;
}

- (id)currentState
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = [(AFAccessibilityState *)self->_state copy];
  stateDirtyFlags = self->_stateDirtyFlags;
  os_unfair_lock_unlock(&self->_stateLock);
  if (stateDirtyFlags)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __39__AFAccessibilityObserver_currentState__block_invoke;
    v8[3] = &__block_descriptor_40_e40_v16__0___AFAccessibilityStateMutating__8l;
    v8[4] = stateDirtyFlags;
    v5 = [v3 mutatedCopyWithMutator:v8];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v6;
}

- (AFAccessibilityState)state
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__48984;
  v10 = __Block_byref_object_dispose__48985;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__AFAccessibilityObserver_state__block_invoke;
  v5[3] = &unk_1E7349810;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_setState:(id)a3 clearDirtyFlags:(unint64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  state = self->_state;
  if (state != v7 && ![(AFAccessibilityState *)state isEqual:v7])
  {
    v9 = self->_state;
    v18 = v7;
    v10 = v7;
    os_unfair_lock_lock(&self->_stateLock);
    objc_storeStrong(&self->_state, a3);
    self->_stateDirtyFlags &= ~a4;
    os_unfair_lock_unlock(&self->_stateLock);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [(NSHashTable *)self->_listeners setRepresentation];
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v19 + 1) + 8 * v15);
          if (objc_opt_respondsToSelector())
          {
            [v16 accessibilityObserver:self stateDidChangeFrom:v9 to:v10];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    v7 = v18;
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_updateVibrationDisabledPreference
{
  if (AFSupportsVibration())
  {
    v3 = [(AFAccessibilityObserver *)self _fetchIsVibrationDisabled];
    state = self->_state;
    if (state)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __61__AFAccessibilityObserver__updateVibrationDisabledPreference__block_invoke;
      v9[3] = &__block_descriptor_33_e40_v16__0___AFAccessibilityStateMutating__8l;
      v10 = v3;
      v5 = [(AFAccessibilityState *)state mutatedCopyWithMutator:v9];
    }

    else
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __61__AFAccessibilityObserver__updateVibrationDisabledPreference__block_invoke_2;
      v7[3] = &__block_descriptor_33_e40_v16__0___AFAccessibilityStateMutating__8l;
      v8 = v3;
      v5 = [AFAccessibilityState newWithBuilder:v7];
    }

    v6 = v5;
    [(AFAccessibilityObserver *)self _setState:v5 clearDirtyFlags:2];
  }
}

uint64_t __61__AFAccessibilityObserver__updateVibrationDisabledPreference__block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return [a2 setIsVibrationDisabled:v2];
}

uint64_t __61__AFAccessibilityObserver__updateVibrationDisabledPreference__block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return [a2 setIsVibrationDisabled:v2];
}

- (void)_updateVoiceOverTouchEnabledPreference
{
  v3 = [(AFAccessibilityObserver *)self _fetchIsVoiceOverTouchEnabled];
  state = self->_state;
  if (state)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__AFAccessibilityObserver__updateVoiceOverTouchEnabledPreference__block_invoke;
    v9[3] = &__block_descriptor_33_e40_v16__0___AFAccessibilityStateMutating__8l;
    v10 = v3;
    v5 = [(AFAccessibilityState *)state mutatedCopyWithMutator:v9];
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65__AFAccessibilityObserver__updateVoiceOverTouchEnabledPreference__block_invoke_2;
    v7[3] = &__block_descriptor_33_e40_v16__0___AFAccessibilityStateMutating__8l;
    v8 = v3;
    v5 = [AFAccessibilityState newWithBuilder:v7];
  }

  v6 = v5;
  [(AFAccessibilityObserver *)self _setState:v5 clearDirtyFlags:1];
}

uint64_t __65__AFAccessibilityObserver__updateVoiceOverTouchEnabledPreference__block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return [a2 setIsVoiceOverTouchEnabled:v2];
}

uint64_t __65__AFAccessibilityObserver__updateVoiceOverTouchEnabledPreference__block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return [a2 setIsVoiceOverTouchEnabled:v2];
}

- (BOOL)_fetchIsVibrationDisabled
{
  v2 = AFSupportsVibration();
  if (v2)
  {
    LOBYTE(v2) = softLink_AXSVibrationDisabled() != 0;
  }

  return v2;
}

- (void)vibrationDisabledPreferenceDidChange:(id)a3
{
  os_unfair_lock_lock(&self->_stateLock);
  self->_stateDirtyFlags |= 2uLL;
  os_unfair_lock_unlock(&self->_stateLock);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__AFAccessibilityObserver_vibrationDisabledPreferenceDidChange___block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)voiceOverTouchEnabledPreferenceDidChange:(id)a3
{
  os_unfair_lock_lock(&self->_stateLock);
  self->_stateDirtyFlags |= 1uLL;
  os_unfair_lock_unlock(&self->_stateLock);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__AFAccessibilityObserver_voiceOverTouchEnabledPreferenceDidChange___block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)removeListener:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__AFAccessibilityObserver_removeListener___block_invoke;
    v7[3] = &unk_1E7349860;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (void)addListener:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__AFAccessibilityObserver_addListener___block_invoke;
    v7[3] = &unk_1E7349860;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (void)getStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__AFAccessibilityObserver_getStateWithCompletion___block_invoke;
    v7[3] = &unk_1E7349838;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

void __39__AFAccessibilityObserver_currentState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  if (v4)
  {
    [v3 setIsVoiceOverTouchEnabled:0];
    v3 = v5;
    v4 = *(a1 + 32);
  }

  if ((v4 & 2) != 0)
  {
    [v5 setIsVibrationDisabled:0];
    v3 = v5;
  }
}

- (AFAccessibilityObserver)init
{
  v15.receiver = self;
  v15.super_class = AFAccessibilityObserver;
  v2 = [(AFAccessibilityObserver *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v5 = dispatch_queue_create("AFAccessibilityObserver", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v2->_stateLock._os_unfair_lock_opaque = 0;
    v7 = [AFAccessibilityState newWithBuilder:&__block_literal_global_5_48990];
    state = v2->_state;
    v2->_state = v7;

    v9 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
    listeners = v2->_listeners;
    v2->_listeners = v9;

    v11 = v2->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31__AFAccessibilityObserver_init__block_invoke_2;
    block[3] = &unk_1E73497C8;
    v14 = v2;
    dispatch_async(v11, block);
  }

  return v2;
}

void __31__AFAccessibilityObserver_init__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = getkAXSVoiceOverTouchEnabledNotification();
  if (v3)
  {
    [v2 addObserver:*(a1 + 32) selector:sel_voiceOverTouchEnabledPreferenceDidChange_ name:v3 object:0];
  }

  if (AFSupportsVibration())
  {
    v4 = getkAXSVibrationDisabledPreferenceDidChangeNotification();
    if (v4)
    {
      [v2 addObserver:*(a1 + 32) selector:sel_vibrationDisabledPreferenceDidChange_ name:v4 object:0];
    }
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__AFAccessibilityObserver_init__block_invoke_3;
  v6[3] = &unk_1E73497A0;
  v7 = *(a1 + 32);
  v5 = [AFAccessibilityState newWithBuilder:v6];
  [*(a1 + 32) _setState:v5 clearDirtyFlags:3];
}

void __31__AFAccessibilityObserver_init__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  if ([v3 _fetchIsVoiceOverTouchEnabled])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [v6 setIsVoiceOverTouchEnabled:v4];
  if ([*(a1 + 32) _fetchIsVibrationDisabled])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [v6 setIsVibrationDisabled:v5];
}

void __31__AFAccessibilityObserver_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setIsVoiceOverTouchEnabled:0];
  [v2 setIsVibrationDisabled:0];
}

void __41__AFAccessibilityObserver_sharedObserver__block_invoke()
{
  v0 = objc_alloc_init(AFAccessibilityObserver);
  v1 = sharedObserver_sharedObserver_49008;
  sharedObserver_sharedObserver_49008 = v0;
}

@end