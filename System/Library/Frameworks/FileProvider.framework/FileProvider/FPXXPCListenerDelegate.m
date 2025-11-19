@interface FPXXPCListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation FPXXPCListenerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FPXXPCListenerDelegate *)self context];
  [(FPXXPCListenerDelegate *)self setContext:0];
  v9 = [(FPXXPCListenerDelegate *)self exportedObject];
  [(FPXXPCListenerDelegate *)self setExportedObject:0];
  if (v8)
  {
    v10 = [(FPXXPCListenerDelegate *)self interface];
    [v7 setExportedInterface:v10];

    [v7 setExportedObject:v9];
    objc_initWeak(&location, v7);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61__FPXXPCListenerDelegate_listener_shouldAcceptNewConnection___block_invoke;
    v15[3] = &unk_1E79399B0;
    v16 = v6;
    [v7 setInvalidationHandler:v15];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__FPXXPCListenerDelegate_listener_shouldAcceptNewConnection___block_invoke_1;
    v13[3] = &unk_1E7939010;
    objc_copyWeak(&v14, &location);
    [v7 setInterruptionHandler:v13];
    [v8 removeListenerDelegate:self];
    [v7 resume];
    objc_destroyWeak(&v14);

    objc_destroyWeak(&location);
  }

  else
  {
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [FPXXPCListenerDelegate listener:v11 shouldAcceptNewConnection:?];
    }
  }

  return v8 != 0;
}

uint64_t __61__FPXXPCListenerDelegate_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __61__FPXXPCListenerDelegate_listener_shouldAcceptNewConnection___block_invoke_cold_1(v2);
  }

  return [*(a1 + 32) invalidate];
}

void __61__FPXXPCListenerDelegate_listener_shouldAcceptNewConnection___block_invoke_1(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __61__FPXXPCListenerDelegate_listener_shouldAcceptNewConnection___block_invoke_1_cold_1(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ not accepting connection because the context is nil", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end