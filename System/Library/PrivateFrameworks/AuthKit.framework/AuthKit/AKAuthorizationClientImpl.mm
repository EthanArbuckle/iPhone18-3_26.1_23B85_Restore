@interface AKAuthorizationClientImpl
- (void)dealloc;
- (void)presentAuthorizationUIForContext:(id)a3 completion:(id)a4;
@end

@implementation AKAuthorizationClientImpl

- (void)presentAuthorizationUIForContext:(id)a3 completion:(id)a4
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  if (v25->_uiProvider)
  {
    v9 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E96A0];
    queue = v9;
    v15 = MEMORY[0x1E69E9820];
    v16 = -1073741824;
    v17 = 0;
    v18 = __73__AKAuthorizationClientImpl_presentAuthorizationUIForContext_completion___block_invoke;
    v19 = &unk_1E73D6640;
    v20 = MEMORY[0x1E69E5928](v25);
    v21 = MEMORY[0x1E69E5928](location[0]);
    v22 = MEMORY[0x1E69E5928](v23);
    dispatch_sync(queue, &v15);
    MEMORY[0x1E69E5920](queue);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
  }

  else
  {
    v14 = _AKLogSiwa();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      log = v14;
      type = v13;
      __os_log_helper_16_0_0(v12);
      _os_log_impl(&dword_193225000, log, type, "UI provider is nil", v12, 2u);
    }

    objc_storeStrong(&v14, 0);
    v5 = v23;
    v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7061];
    v5[2](v5, 0);
    MEMORY[0x1E69E5920](v6);
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

uint64_t __73__AKAuthorizationClientImpl_presentAuthorizationUIForContext_completion___block_invoke(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSiwa();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_impl(&dword_193225000, log, type, "Present Authorization call forwarded to UI provider", v5, 2u);
  }

  objc_storeStrong(location, 0);
  return [*(a1[4] + 8) presentAuthorizationUIForContext:a1[5] completion:a1[6]];
}

- (void)dealloc
{
  v8 = self;
  location[1] = a2;
  location[0] = _AKLogSiwa();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_impl(&dword_193225000, log, type, "Authorization Client that has UI provider deallocated", v5, 2u);
  }

  objc_storeStrong(location, 0);
  v4.receiver = v8;
  v4.super_class = AKAuthorizationClientImpl;
  [(AKAuthorizationClientImpl *)&v4 dealloc];
}

@end