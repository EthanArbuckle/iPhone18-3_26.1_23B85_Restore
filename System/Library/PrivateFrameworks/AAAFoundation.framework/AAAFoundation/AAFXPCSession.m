@interface AAFXPCSession
- (AAFXPCSession)initWithRemoteServiceConfig:(id)a3 delegate:(id)a4;
- (AAFXPCSessionDelegate)delegate;
- (NSXPCConnection)connection;
- (id)_unsafe_createNewConnection;
- (id)remoteServiceProxy;
- (id)remoteServiceProxyWithErrorHandler:(id)a3;
- (id)syncRemoteServiceProxy;
- (id)syncRemoteServiceProxyWithErrorHandler:(id)a3;
- (void)_unsafe_destroyXPCConnection;
- (void)activate;
- (void)invalidate;
- (void)resume;
- (void)suspend;
@end

@implementation AAFXPCSession

- (NSXPCConnection)connection
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__AAFXPCSession_connection__block_invoke;
  v5[3] = &unk_1E831BAF8;
  v5[4] = self;
  os_unfair_lock_lock(&self->_connectionLock);
  v3 = __27__AAFXPCSession_connection__block_invoke(v5);
  os_unfair_lock_unlock(&self->_connectionLock);

  return v3;
}

id __27__AAFXPCSession_connection__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (!v2)
  {
    v2 = [*(a1 + 32) _unsafe_createNewConnection];
  }

  return v2;
}

- (AAFXPCSession)initWithRemoteServiceConfig:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = AAFXPCSession;
  v9 = [(AAFXPCSession *)&v13 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    identifier = v9->_identifier;
    v9->_identifier = v10;

    objc_storeStrong(&v9->_remoteServiceConfig, a3);
    objc_storeWeak(&v9->_delegate, v8);
    v9->_connectionLock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

- (id)remoteServiceProxy
{
  v2 = [(AAFXPCSession *)self connection];
  v3 = [v2 remoteObjectProxyWithErrorHandler:&__block_literal_global_2];

  return v3;
}

void __35__AAFXPCSession_remoteServiceProxy__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _AAFLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __35__AAFXPCSession_remoteServiceProxy__block_invoke_cold_1();
  }
}

- (id)remoteServiceProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(AAFXPCSession *)self connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)syncRemoteServiceProxy
{
  v2 = [(AAFXPCSession *)self connection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_2];

  return v3;
}

void __39__AAFXPCSession_syncRemoteServiceProxy__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _AAFLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __35__AAFXPCSession_remoteServiceProxy__block_invoke_cold_1();
  }
}

- (id)syncRemoteServiceProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(AAFXPCSession *)self connection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (void)activate
{
  v3 = _AAFLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(AAFXPCSession *)v3 activate];
  }

  v4 = [(AAFXPCSession *)self connection];
  [v4 activate];
}

- (void)resume
{
  v3 = _AAFLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(AAFXPCSession *)v3 resume];
  }

  v4 = [(AAFXPCSession *)self connection];
  [v4 resume];
}

- (void)suspend
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __24__AAFXPCSession_suspend__block_invoke;
  v3[3] = &unk_1E831BAD0;
  v3[4] = self;
  os_unfair_lock_lock(&self->_connectionLock);
  __24__AAFXPCSession_suspend__block_invoke(v3);
  os_unfair_lock_unlock(&self->_connectionLock);
}

- (void)invalidate
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__AAFXPCSession_invalidate__block_invoke;
  v3[3] = &unk_1E831BAD0;
  v3[4] = self;
  os_unfair_lock_lock(&self->_connectionLock);
  __27__AAFXPCSession_invalidate__block_invoke(v3);
  os_unfair_lock_unlock(&self->_connectionLock);
}

- (void)_unsafe_destroyXPCConnection
{
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;
}

- (id)_unsafe_createNewConnection
{
  v3 = objc_alloc(MEMORY[0x1E696B0B8]);
  v4 = [(AAFXPCSession *)self remoteServiceConfig];
  v5 = [v4 serviceName];
  v6 = [(AAFXPCSession *)self remoteServiceConfig];
  v7 = [v3 initWithMachServiceName:v5 options:{objc_msgSend(v6, "options")}];
  connection = self->_connection;
  self->_connection = v7;

  v9 = [(AAFXPCSessionConfig *)self->_remoteServiceConfig exportedProtocol];

  if (v9)
  {
    v10 = MEMORY[0x1E696B0D0];
    v11 = [(AAFXPCSessionConfig *)self->_remoteServiceConfig exportedProtocol];
    v12 = [v10 interfaceWithProtocol:v11];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->_delegate);
      [v15 configureExportedInterface:v12];
    }

    [(NSXPCConnection *)self->_connection setExportedInterface:v12];
    v16 = objc_loadWeakRetained(&self->_delegate);
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = objc_loadWeakRetained(&self->_delegate);
      v19 = [v18 exportedObject];
      [(NSXPCConnection *)self->_connection setExportedObject:v19];
    }
  }

  v20 = MEMORY[0x1E696B0D0];
  v21 = [(AAFXPCSessionConfig *)self->_remoteServiceConfig remoteProtocol];
  v22 = [v20 interfaceWithProtocol:v21];

  v23 = objc_loadWeakRetained(&self->_delegate);
  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    v25 = objc_loadWeakRetained(&self->_delegate);
    [v25 configureRemoteInterface:v22];
  }

  [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v22];
  objc_initWeak(&location, self->_connection);
  objc_initWeak(&from, self);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __44__AAFXPCSession__unsafe_createNewConnection__block_invoke;
  v31[3] = &unk_1E831BB20;
  objc_copyWeak(&v32, &location);
  objc_copyWeak(&v33, &from);
  [(NSXPCConnection *)self->_connection setInterruptionHandler:v31];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __44__AAFXPCSession__unsafe_createNewConnection__block_invoke_15;
  v28[3] = &unk_1E831BB20;
  objc_copyWeak(&v29, &from);
  objc_copyWeak(&v30, &location);
  [(NSXPCConnection *)self->_connection setInvalidationHandler:v28];
  v26 = self->_connection;
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v26;
}

void __44__AAFXPCSession__unsafe_createNewConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) != 0 && WeakRetained)
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = [v6 delegate];
    [v7 remoteServiceDidInterrupt];
  }

  else
  {
    v6 = _AAFLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __44__AAFXPCSession__unsafe_createNewConnection__block_invoke_cold_1();
    }
  }
}

void __44__AAFXPCSession__unsafe_createNewConnection__block_invoke_15(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
  v4 = [WeakRetained delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) != 0 && v3)
  {
    v6 = [WeakRetained delegate];
    [v6 remoteServiceDidInvalidate];
  }

  else
  {
    v6 = _AAFLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __44__AAFXPCSession__unsafe_createNewConnection__block_invoke_15_cold_1();
    }
  }
}

- (AAFXPCSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __35__AAFXPCSession_remoteServiceProxy__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1C8644000, v0, v1, "Error getting synchronous connection to service : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __44__AAFXPCSession__unsafe_createNewConnection__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1C8644000, v0, v1, "Connection interrupted: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __44__AAFXPCSession__unsafe_createNewConnection__block_invoke_15_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1C8644000, v0, v1, "Connection invalidated: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end