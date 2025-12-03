@interface FPXXPCListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation FPXXPCListenerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  context = [(FPXXPCListenerDelegate *)self context];
  [(FPXXPCListenerDelegate *)self setContext:0];
  exportedObject = [(FPXXPCListenerDelegate *)self exportedObject];
  [(FPXXPCListenerDelegate *)self setExportedObject:0];
  if (context)
  {
    interface = [(FPXXPCListenerDelegate *)self interface];
    [connectionCopy setExportedInterface:interface];

    [connectionCopy setExportedObject:exportedObject];
    objc_initWeak(&location, connectionCopy);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61__FPXXPCListenerDelegate_listener_shouldAcceptNewConnection___block_invoke;
    v15[3] = &unk_1E79399B0;
    v16 = listenerCopy;
    [connectionCopy setInvalidationHandler:v15];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__FPXXPCListenerDelegate_listener_shouldAcceptNewConnection___block_invoke_1;
    v13[3] = &unk_1E7939010;
    objc_copyWeak(&v14, &location);
    [connectionCopy setInterruptionHandler:v13];
    [context removeListenerDelegate:self];
    [connectionCopy resume];
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

  return context != 0;
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