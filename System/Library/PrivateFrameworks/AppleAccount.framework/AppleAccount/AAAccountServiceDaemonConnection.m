@interface AAAccountServiceDaemonConnection
- (AAAccountServiceDaemonConnection)initWithListenerEndpoint:(id)a3;
- (id)_connection;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (void)_connectionInvalidationHandler;
- (void)dealloc;
@end

@implementation AAAccountServiceDaemonConnection

- (AAAccountServiceDaemonConnection)initWithListenerEndpoint:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AAAccountServiceDaemonConnection;
  v6 = [(AAAccountServiceDaemonConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listenerEndpoint, a3);
    v7->_unfairLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_DEBUG, "%@ deallocated", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(AAAccountServiceDaemonConnection *)a2 remoteObjectProxyWithErrorHandler:?];
  }

  v6 = [(AAAccountServiceDaemonConnection *)self _connection];
  v7 = [v6 remoteObjectProxyWithErrorHandler:v5];

  return v7;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(AAAccountServiceDaemonConnection *)a2 synchronousRemoteObjectProxyWithErrorHandler:?];
  }

  v6 = [(AAAccountServiceDaemonConnection *)self _connection];
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v5];

  return v7;
}

- (id)_connection
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__AAAccountServiceDaemonConnection__connection__block_invoke;
  v5[3] = &unk_1E7C9A840;
  v5[4] = self;
  os_unfair_lock_lock(&self->_unfairLock);
  v3 = __47__AAAccountServiceDaemonConnection__connection__block_invoke(v5);
  os_unfair_lock_unlock(&self->_unfairLock);

  return v3;
}

id __47__AAAccountServiceDaemonConnection__connection__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  if (!v3)
  {
    objc_initWeak(&location, v2);
    v4 = *(*(a1 + 32) + 24);
    v5 = objc_alloc(MEMORY[0x1E696B0B8]);
    if (v4)
    {
      v6 = [v5 initWithListenerEndpoint:v4];
    }

    else
    {
      v6 = [v5 initWithMachServiceName:@"com.apple.aa.accountService.xpc" options:0];
    }

    v7 = v6;

    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    *(v8 + 16) = v7;

    v10 = *(*(a1 + 32) + 16);
    v11 = +[AAAccountServiceDaemonInterface XPCInterface];
    [v10 setRemoteObjectInterface:v11];

    [*(*(a1 + 32) + 16) setInterruptionHandler:&__block_literal_global];
    v12 = *(*(a1 + 32) + 16);
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __47__AAAccountServiceDaemonConnection__connection__block_invoke_41;
    v18 = &unk_1E7C9A818;
    objc_copyWeak(&v19, &location);
    [v12 setInvalidationHandler:&v15];
    [*(*(a1 + 32) + 16) resume];
    v13 = _AALogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __47__AAAccountServiceDaemonConnection__connection__block_invoke_cold_1(v13);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    v3 = *(*(a1 + 32) + 16);
  }

  return v3;
}

void __47__AAAccountServiceDaemonConnection__connection__block_invoke_2()
{
  v0 = _AALogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __47__AAAccountServiceDaemonConnection__connection__block_invoke_2_cold_1(v0);
  }
}

void __47__AAAccountServiceDaemonConnection__connection__block_invoke_41(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInvalidationHandler];
}

- (void)_connectionInvalidationHandler
{
  v3 = _AALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(AAAccountServiceDaemonConnection *)v3 _connectionInvalidationHandler];
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__AAAccountServiceDaemonConnection__connectionInvalidationHandler__block_invoke;
  v4[3] = &unk_1E7C9A868;
  v4[4] = self;
  os_unfair_lock_lock(&self->_unfairLock);
  __66__AAAccountServiceDaemonConnection__connectionInvalidationHandler__block_invoke(v4);
  os_unfair_lock_unlock(&self->_unfairLock);
}

void __66__AAAccountServiceDaemonConnection__connectionInvalidationHandler__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

- (void)remoteObjectProxyWithErrorHandler:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AAAccountServiceDaemonConnection.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
}

- (void)synchronousRemoteObjectProxyWithErrorHandler:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AAAccountServiceDaemonConnection.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
}

@end