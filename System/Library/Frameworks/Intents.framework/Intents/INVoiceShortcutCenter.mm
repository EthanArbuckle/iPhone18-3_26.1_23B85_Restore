@interface INVoiceShortcutCenter
+ (INVoiceShortcutCenter)sharedCenter;
+ (void)initialize;
- (INVoiceShortcutCenter)init;
- (id)_initWithVoiceShortcutClient:(id)client;
- (void)getAllVoiceShortcutsWithCompletion:(void *)completionHandler;
- (void)getVoiceShortcutWithIdentifier:(NSUUID *)identifier completion:(void *)completionHandler;
- (void)setShortcutSuggestions:(NSArray *)suggestions;
@end

@implementation INVoiceShortcutCenter

- (void)setShortcutSuggestions:(NSArray *)suggestions
{
  v5 = [(NSArray *)suggestions if_objectsPassingTest:&__block_literal_global_42342];
  v3 = INContainingBundleIdentifierForCurrentProcess();
  v4 = _INVCVoiceShortcutClient();
  [v4 setShortcutSuggestions:v5 forAppWithBundleIdentifier:v3];
}

uint64_t __48__INVoiceShortcutCenter_setShortcutSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 intent];
  if (v3)
  {
    v4 = [v2 intent];
    v5 = _INIsIntentValidForSuggestion(v4);
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)getVoiceShortcutWithIdentifier:(NSUUID *)identifier completion:(void *)completionHandler
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = identifier;
  v7 = completionHandler;
  voiceShortcutClient = [(INVoiceShortcutCenter *)self voiceShortcutClient];
  if (!voiceShortcutClient)
  {
    v11 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "[INVoiceShortcutCenter getVoiceShortcutWithIdentifier:completion:]";
      _os_log_error_impl(&dword_18E991000, v11, OS_LOG_TYPE_ERROR, "%s No VoiceShortcutClient; completing with nil and error", buf, 0xCu);
    }

    v12 = @"No INVoiceShortcutClient";
    goto LABEL_10;
  }

  if (!v6)
  {
    v13 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "[INVoiceShortcutCenter getVoiceShortcutWithIdentifier:completion:]";
      _os_log_error_impl(&dword_18E991000, v13, OS_LOG_TYPE_ERROR, "%s Client passed a nil voice shortcut identifier; completing with nil and error", buf, 0xCu);
    }

    v12 = @"Client passed a nil voice shortcut identifier";
LABEL_10:
    v10 = _INVoiceShortcutError(7001, v12, 0);
    v7[2](v7, 0, v10);
    goto LABEL_11;
  }

  uUIDString = [(NSUUID *)v6 UUIDString];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__INVoiceShortcutCenter_getVoiceShortcutWithIdentifier_completion___block_invoke;
  v15[3] = &unk_1E7280618;
  v16 = v6;
  v17 = v7;
  [voiceShortcutClient getVoiceShortcutWithIdentifier:uUIDString completion:v15];

  v10 = v16;
LABEL_11:

  v14 = *MEMORY[0x1E69E9840];
}

void __67__INVoiceShortcutCenter_getVoiceShortcutWithIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [[INVoiceShortcut alloc] _initWithVCVoiceShortcut:v5];
    if (v7)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v11 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        v16 = 136315394;
        v17 = "[INVoiceShortcutCenter getVoiceShortcutWithIdentifier:completion:]_block_invoke";
        v18 = 2114;
        v19 = v5;
        _os_log_error_impl(&dword_18E991000, v11, OS_LOG_TYPE_ERROR, "%s Failed to create an INVoiceShortcut from VCVoiceShortcut=%{public}@", &v16, 0x16u);
      }

      v12 = *(a1 + 40);
      v13 = _INVoiceShortcutError(7000, @"Failed to create an INVoiceShortcut", 0);
      (*(v12 + 16))(v12, 0, v13);
    }

    goto LABEL_12;
  }

  v8 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    v15 = *(a1 + 32);
    v16 = 136315650;
    v17 = "[INVoiceShortcutCenter getVoiceShortcutWithIdentifier:completion:]_block_invoke";
    v18 = 2114;
    v19 = v15;
    v20 = 2114;
    v21 = v6;
    _os_log_error_impl(&dword_18E991000, v8, OS_LOG_TYPE_ERROR, "%s Error from -getVoiceShortcutWithIdentifier=%{public}@: %{public}@", &v16, 0x20u);
  }

  v9 = dyld_program_sdk_at_least();
  v10 = *(a1 + 40);
  if (!v9)
  {
    v7 = _INVoiceShortcutError(7001, @"Failed to get voice shortcut", v6);
    (*(v10 + 16))(v10, 0, v7);
LABEL_12:

    goto LABEL_13;
  }

  (*(v10 + 16))(v10, 0, 0);
LABEL_13:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)getAllVoiceShortcutsWithCompletion:(void *)completionHandler
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = completionHandler;
  voiceShortcutClient = [(INVoiceShortcutCenter *)self voiceShortcutClient];
  if (voiceShortcutClient)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__INVoiceShortcutCenter_getAllVoiceShortcutsWithCompletion___block_invoke;
    v8[3] = &unk_1E7285360;
    v9 = v4;
    [voiceShortcutClient getVoiceShortcutsWithCompletion:v8];
  }

  else
  {
    v6 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v11 = "[INVoiceShortcutCenter getAllVoiceShortcutsWithCompletion:]";
      _os_log_error_impl(&dword_18E991000, v6, OS_LOG_TYPE_ERROR, "%s No VoiceShortcutClient; completing with nil", buf, 0xCu);
    }

    (*(v4 + 2))(v4, 0, 0);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __60__INVoiceShortcutCenter_getAllVoiceShortcutsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v20 = a1;
    v21 = v6;
    v8 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = v5;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        v13 = 0;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * v13);
          v15 = [[INVoiceShortcut alloc] _initWithVCVoiceShortcut:v14];
          if (v15)
          {
            [v8 addObject:v15];
          }

          else
          {
            v16 = INSiriLogContextIntents;
            if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v29 = "[INVoiceShortcutCenter getAllVoiceShortcutsWithCompletion:]_block_invoke";
              v30 = 2114;
              v31 = v14;
              _os_log_error_impl(&dword_18E991000, v16, OS_LOG_TYPE_ERROR, "%s Failed to create an INVoiceShortcut from VCVoiceShortcut=%{public}@", buf, 0x16u);
            }
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    (*(*(v20 + 32) + 16))();
    v7 = v21;
    v5 = v22;
  }

  else
  {
    v17 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "[INVoiceShortcutCenter getAllVoiceShortcutsWithCompletion:]_block_invoke";
      v30 = 2114;
      v31 = v7;
      _os_log_error_impl(&dword_18E991000, v17, OS_LOG_TYPE_ERROR, "%s Error from -getVoiceShortcutsWithCompletion: %{public}@", buf, 0x16u);
    }

    v18 = *(a1 + 32);
    v8 = _INVoiceShortcutError(7001, @"Failed to get voice shortcuts", v7);
    (*(v18 + 16))(v18, 0, v8);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (INVoiceShortcutCenter)init
{
  v3 = _INVCVoiceShortcutClient();
  v4 = [(INVoiceShortcutCenter *)self _initWithVoiceShortcutClient:v3];

  return v4;
}

- (id)_initWithVoiceShortcutClient:(id)client
{
  v13 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  v10.receiver = self;
  v10.super_class = INVoiceShortcutCenter;
  v6 = [(INVoiceShortcutCenter *)&v10 init];
  if (v6)
  {
    if (!clientCopy)
    {
      v7 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v12 = "[INVoiceShortcutCenter _initWithVoiceShortcutClient:]";
        _os_log_error_impl(&dword_18E991000, v7, OS_LOG_TYPE_ERROR, "%s No VoiceShortcutClient; initing without one", buf, 0xCu);
      }
    }

    objc_storeStrong(&v6->_voiceShortcutClient, client);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (INVoiceShortcutCenter)sharedCenter
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__INVoiceShortcutCenter_sharedCenter__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedCenter_onceToken != -1)
  {
    dispatch_once(&sharedCenter_onceToken, block);
  }

  v2 = sharedCenter_sharedCenter;

  return v2;
}

uint64_t __37__INVoiceShortcutCenter_sharedCenter__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = sharedCenter_sharedCenter;
  sharedCenter_sharedCenter = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

+ (void)initialize
{
  if (objc_opt_class() == self && INLogInitIfNeeded_once != -1)
  {

    dispatch_once(&INLogInitIfNeeded_once, &__block_literal_global_72043);
  }
}

@end