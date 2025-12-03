@interface AAUIPrivateEmailUpdateCacheHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_removePrivateEmailKey:(id)key withCompletion:(id)completion;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation AAUIPrivateEmailUpdateCacheHook

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  v9 = [attributes objectForKeyedSubscript:@"privateEmailKey"];
  [(AAUIPrivateEmailUpdateCacheHook *)self _removePrivateEmailKey:v9 withCompletion:completionCopy];
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  clientInfo = [model clientInfo];
  v8 = [clientInfo objectForKeyedSubscript:@"privateEmailKey"];

  [(AAUIPrivateEmailUpdateCacheHook *)self _removePrivateEmailKey:v8 withCompletion:completionCopy];
}

- (void)_removePrivateEmailKey:(id)key withCompletion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  v7 = objc_alloc_init(MEMORY[0x1E698DDC0]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__AAUIPrivateEmailUpdateCacheHook__removePrivateEmailKey_withCompletion___block_invoke;
  v10[3] = &unk_1E820C580;
  v11 = keyCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = keyCopy;
  [v7 removePrivateEmailKey:v9 completion:v10];
}

void __73__AAUIPrivateEmailUpdateCacheHook__removePrivateEmailKey_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _AAUILogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __73__AAUIPrivateEmailUpdateCacheHook__removePrivateEmailKey_withCompletion___block_invoke_cold_1(a1, v3, v5);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 16);
LABEL_10:
      v7();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "private email remove for key %@ is success", &v10, 0xCu);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      v7 = *(v9 + 16);
      goto LABEL_10;
    }
  }
}

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [@"action:hideMyEmailUpdateCache" isEqualToString:name];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKeyedSubscript:@"action"];
  v5 = [@"action:hideMyEmailUpdateCache" isEqualToString:v4];

  return v5;
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

void __73__AAUIPrivateEmailUpdateCacheHook__removePrivateEmailKey_withCompletion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1C5355000, log, OS_LOG_TYPE_ERROR, "private email remove for key %@ failed with error %@", &v4, 0x16u);
}

@end