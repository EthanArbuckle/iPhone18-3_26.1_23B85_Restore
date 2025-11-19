@interface GCKeyboardInput
- (BOOL)hasButton:(int64_t)a3;
- (GCControllerButtonInput)buttonForKeyCode:(GCKeyCode)code;
- (GCKeyboardInput)initWithIdentifier:(id)a3;
- (void)_handleKeyboardEvent:(_DWORD *)a1;
- (void)setKeyboardEventSource:(id)a3;
@end

@implementation GCKeyboardInput

- (GCKeyboardInput)initWithIdentifier:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = GCKeyboardInput;
  v3 = [(GCPhysicalInputProfile *)&v26 initWithIdentifier:a3];
  if (v3)
  {
    v4 = ::allCodes();
    v5 = [MEMORY[0x1E695DFD8] setWithArray:v4];
    allCodes = v3->_allCodes;
    v3->_allCodes = v5;

    v7 = 231;
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:231];
    do
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [(NSArray *)v8 addObject:v9];

      --v7;
    }

    while (v7);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v4;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        v14 = 0;
        do
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v22 + 1) + 8 * v14) longValue];
          memset(v20, 0, sizeof(v20));
          v21 = 0;
          *&v20[0] = nameForKeyCode(v15);
          WORD4(v20[0]) = 257;
          v16 = [(GCPhysicalInputProfile *)v3 _keyboardButtonWithInfo:v20];
          [v16 setKeyCode:v15];
          [(NSArray *)v8 setObject:v16 atIndexedSubscript:v15];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v12);
    }

    keys = v3->_keys;
    v3->_keys = v8;

    v3->_numberOfKeysPressed = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)hasButton:(int64_t)a3
{
  allCodes = self->_allCodes;
  v4 = [MEMORY[0x1E696AD98] numberWithLong:a3];
  LOBYTE(allCodes) = [(NSSet *)allCodes containsObject:v4];

  return allCodes;
}

- (GCControllerButtonInput)buttonForKeyCode:(GCKeyCode)code
{
  if ([(GCKeyboardInput *)self hasButton:?])
  {
    v5 = [(NSArray *)self->_keys objectAtIndexedSubscript:code];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __48__GCKeyboardInput_PubSub___handleKeyboardEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) valueDidChangeHandler];
  v3 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 40));
  }

  v4 = *(a1 + 32);
  v5 = v4[85];
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64) != 0;
    (*(v5 + 16))();
    v4 = *(a1 + 32);
  }

  v9 = [v4 keyChangedHandlerPrivate];

  if (v9)
  {
    v10 = [*(a1 + 32) keyChangedHandlerPrivate];
    (v10)[2](v10, *(a1 + 32), *(a1 + 40), *(a1 + 56), *(a1 + 64) != 0);
  }

  v11 = _gc_log_signpost();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);

  if (v12)
  {
    __48__GCKeyboardInput_PubSub___handleKeyboardEvent___block_invoke_cold_1(a1);
  }
}

- (void)setKeyboardEventSource:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  keyboardEventObservation = self->_keyboardEventObservation;
  self->_keyboardEventObservation = 0;

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__GCKeyboardInput_PubSub__setKeyboardEventSource___block_invoke;
  v8[3] = &unk_1E841B298;
  objc_copyWeak(&v9, &location);
  v6 = [v4 observeKeyboardEvents:v8];
  v7 = self->_keyboardEventObservation;
  self->_keyboardEventObservation = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_handleKeyboardEvent:(_DWORD *)a1
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 usage];
    v6 = [v4 down];
    if ([v4 usagePage] == 7 && (v5 & 0x8000000000000000) == 0 && objc_msgSend(a1, "hasButton:", v5))
    {
      [a1 _receivedEvent];
      v7 = [a1 device];
      v8 = _gc_log_signpost();
      v9 = os_signpost_id_generate(v8);
      v10 = _gc_log_signpost();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

      if (v11)
      {
        v23 = v8;
        v24 = v23;
        if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
        {
          v25 = [v4 timestamp];
          [a1 lastEventTimestamp];
          *buf = 134218496;
          v42 = v7;
          v43 = 2048;
          v44 = v25;
          v45 = 2048;
          v46 = v26;
          _os_signpost_emit_with_name_impl(&dword_1D2CD5000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v9, "GCKeyboardInput.handle.KeyboardEvent", "{device: %p, eventTimestamp: %llu, lastEventTimestamp: %f}", buf, 0x20u);
        }
      }

      v12 = [a1 buttonForKeyCode:v5];
      v34 = v9;
      if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v33 = v7;
        v14 = [a1 handlerQueue];
        *&v15 = v6;
        v13 = [v12 _setValue:v14 queue:v15];
        if (v13)
        {
          v16 = a1[166];
          if (v6)
          {
            v17 = v16 + 1;
          }

          else
          {
            v17 = v16 - 1;
          }

          a1[166] = v17 & ~(v17 >> 31);
          v32 = os_signpost_id_generate(v8);
          v18 = _gc_log_signpost();
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);

          if (v19)
          {
            log = v8;
            if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(log))
            {
              v29 = [v4 timestamp];
              [a1 lastEventTimestamp];
              *buf = 134218496;
              v42 = v33;
              v43 = 2048;
              v44 = v29;
              v45 = 2048;
              v46 = v30;
              _os_signpost_emit_with_name_impl(&dword_1D2CD5000, log, OS_SIGNPOST_INTERVAL_BEGIN, v32, "GCKeyboardInput.callback", "{device: %p, eventTimestamp: %llu, lastEventTimestamp: %f}", buf, 0x20u);
            }
          }

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __48__GCKeyboardInput_PubSub___handleKeyboardEvent___block_invoke;
          block[3] = &unk_1E841B270;
          block[4] = a1;
          v36 = v12;
          v38 = v5;
          v39 = v6;
          v37 = v8;
          v40 = v32;
          dispatch_async(v14, block);
        }

        v7 = v33;
      }

      else
      {
        v13 = 0;
      }

      v20 = _gc_log_signpost();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

      if (v21)
      {
        v27 = v8;
        v28 = v27;
        if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
        {
          *buf = 67109120;
          LODWORD(v42) = v13;
          _os_signpost_emit_with_name_impl(&dword_1D2CD5000, v28, OS_SIGNPOST_INTERVAL_END, v34, "GCKeyboardInput.handle.KeyboardEvent", "{handled: %u}", buf, 8u);
        }
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __50__GCKeyboardInput_PubSub__setKeyboardEventSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(GCKeyboardInput *)WeakRetained _handleKeyboardEvent:v3];
}

void __48__GCKeyboardInput_PubSub___handleKeyboardEvent___block_invoke_cold_1(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = v2;
  v4 = *(a1 + 72);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1D2CD5000, v3, OS_SIGNPOST_INTERVAL_END, v4, "GCKeyboardInput.callback", "{}", v5, 2u);
  }
}

@end