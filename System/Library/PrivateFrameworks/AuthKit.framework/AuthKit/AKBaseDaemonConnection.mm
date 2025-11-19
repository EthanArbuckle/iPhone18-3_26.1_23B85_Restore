@interface AKBaseDaemonConnection
- (AKBaseDaemonConnection)init;
- (AKBaseDaemonConnection)initWithListenerEndpoint:(id)a3;
- (id)XPCInterface;
- (id)_connection;
- (id)machServiceName;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (void)_connectionInterruptionHandler;
- (void)_connectionInvalidationHandler;
- (void)dealloc;
@end

@implementation AKBaseDaemonConnection

- (AKBaseDaemonConnection)init
{
  v4 = 0;
  v4 = [(AKBaseDaemonConnection *)self initWithListenerEndpoint:?];
  v3 = MEMORY[0x1E69E5928](v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (AKBaseDaemonConnection)initWithListenerEndpoint:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AKBaseDaemonConnection;
  v8 = [(AKBaseDaemonConnection *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(&v8->_listenerEndpoint, location[0]);
    v8->_unfairLock._os_unfair_lock_opaque = 0;
  }

  v5 = MEMORY[0x1E69E5928](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v3 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v6, v5);
    _os_log_debug_impl(&dword_193225000, location[0], v3, "%@ deallocated", v6, 0xCu);
  }

  objc_storeStrong(location, 0);
  [(NSXPCConnection *)v5->_connection invalidate];
  objc_storeStrong(&v5->_connection, 0);
  v2.receiver = v5;
  v2.super_class = AKBaseDaemonConnection;
  [(AKBaseDaemonConnection *)&v2 dealloc];
  *MEMORY[0x1E69E9840];
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(AKBaseDaemonConnection *)v7 _connection];
  v5 = [v4 remoteObjectProxyWithErrorHandler:location[0]];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(AKBaseDaemonConnection *)v7 _connection];
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:location[0]];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)_connection
{
  v10[2] = self;
  v10[1] = a2;
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __37__AKBaseDaemonConnection__connection__block_invoke;
  v9 = &unk_1E73D4B18;
  v10[0] = MEMORY[0x1E69E5928](self);
  v4 = ak_unfair_lock_perform_with_result_3(&self->_unfairLock, &v5);
  objc_storeStrong(v10, 0);

  return v4;
}

id __37__AKBaseDaemonConnection__connection__block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  if (!*(a1[4] + 2))
  {
    objc_initWeak(location, a1[4]);
    if (*(a1[4] + 3))
    {
      v14 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:*(a1[4] + 3)];
      v1 = a1[4];
      v2 = v1[2];
      v1[2] = v14;
      MEMORY[0x1E69E5920](v2);
    }

    else
    {
      v13 = objc_alloc(MEMORY[0x1E696B0B8]);
      v11 = [a1[4] machServiceName];
      v12 = [v13 initWithMachServiceName:? options:?];
      v3 = a1[4];
      v4 = v3[2];
      v3[2] = v12;
      MEMORY[0x1E69E5920](v4);
      MEMORY[0x1E69E5920](v11);
    }

    v10 = *(a1[4] + 2);
    v9 = [a1[4] XPCInterface];
    [v10 setRemoteObjectInterface:?];
    MEMORY[0x1E69E5920](v9);
    v8 = *(a1[4] + 2);
    v22 = MEMORY[0x1E69E9820];
    v23 = -1073741824;
    v24 = 0;
    v25 = __37__AKBaseDaemonConnection__connection__block_invoke_2;
    v26 = &unk_1E73D34E8;
    objc_copyWeak(&v27, location);
    [v8 setInterruptionHandler:&v22];
    v7 = *(a1[4] + 2);
    v16 = MEMORY[0x1E69E9820];
    v17 = -1073741824;
    v18 = 0;
    v19 = __37__AKBaseDaemonConnection__connection__block_invoke_3;
    v20 = &unk_1E73D34E8;
    objc_copyWeak(&v21, location);
    [v7 setInvalidationHandler:&v16];
    [*(a1[4] + 2) resume];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v27);
    objc_destroyWeak(location);
  }

  v5 = *(a1[4] + 2);

  return v5;
}

uint64_t __37__AKBaseDaemonConnection__connection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInterruptionHandler];
  return MEMORY[0x1E69E5920](WeakRetained);
}

uint64_t __37__AKBaseDaemonConnection__connection__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInvalidationHandler];
  return MEMORY[0x1E69E5920](WeakRetained);
}

- (void)_connectionInterruptionHandler
{
  location[2] = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v5 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_debug_impl(&dword_193225000, log, type, "Connection to authorization service interrupted", v4, 2u);
  }

  objc_storeStrong(location, 0);
}

- (void)_connectionInvalidationHandler
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = self;
  v13[2] = a2;
  v3 = [(NSXPCConnection *)self->_connection _xpcConnection];
  v4 = xpc_connection_copy_invalidation_reason();
  MEMORY[0x1E69E5920](v3);
  v13[1] = v4;
  v13[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", v4];
  location = _AKLogSystem();
  v11 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v15, v13[0]);
    _os_log_debug_impl(&dword_193225000, location, v11, "Connection to authorization service invalidated: %@", v15, 0xCu);
  }

  objc_storeStrong(&location, 0);
  p_unfairLock = &v14->_unfairLock;
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __56__AKBaseDaemonConnection__connectionInvalidationHandler__block_invoke;
  v9 = &unk_1E73D34C0;
  v10 = MEMORY[0x1E69E5928](v14);
  ak_unfair_lock_perform_2(p_unfairLock, &v5);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(v13, 0);
  *MEMORY[0x1E69E9840];
}

- (id)machServiceName
{
  exception = [MEMORY[0x1E695DF30] exceptionWithName:@"-machServiceName must be implemented by a subclass" reason:0 userInfo:?];
  v2 = exception;
  objc_exception_throw(exception);
}

- (id)XPCInterface
{
  exception = [MEMORY[0x1E695DF30] exceptionWithName:@"-XPCInterface must be implemented by a subclass" reason:0 userInfo:?];
  v2 = exception;
  objc_exception_throw(exception);
}

@end