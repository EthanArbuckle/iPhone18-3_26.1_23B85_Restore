@interface HKXPCConnection
@end

@implementation HKXPCConnection

void __64___HKXPCConnection_resumeWithExportedInterface_remoteInterface___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v2 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_19197B000, v2, OS_LOG_TYPE_DEFAULT, "%@Connection to %@ interrupted", &v8, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained interruptionHandler];

  if (v6)
  {
    v6[2](v6);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __64___HKXPCConnection_resumeWithExportedInterface_remoteInterface___block_invoke_26(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v2 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_19197B000, v2, OS_LOG_TYPE_DEFAULT, "%@Connection to %@ invalidated", &v8, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained invalidationHandler];

  if (v6)
  {
    v6[2](v6);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __43___HKXPCConnection_setInterruptionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained exportedObject];
  objc_initWeak(&location, v2);

  v3 = objc_loadWeakRetained(&location);
  LOBYTE(v2) = objc_opt_respondsToSelector();

  if (v2)
  {
    v4 = objc_loadWeakRetained(&location);
    [v4 connectionInterrupted];
  }

  objc_destroyWeak(&location);
}

void __43___HKXPCConnection_setInvalidationHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained exportedObject];
  [v1 connectionInvalidated];
}

@end