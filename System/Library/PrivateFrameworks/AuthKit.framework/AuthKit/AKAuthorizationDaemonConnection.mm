@interface AKAuthorizationDaemonConnection
- (AKAuthorizationDaemonConnection)init;
- (AKAuthorizationDaemonConnection)initWithListenerEndpoint:(id)endpoint exportedInterface:(id)interface;
- (id)_connection;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)_connectionInterruptionHandler;
- (void)_connectionInvalidationHandler;
- (void)dealloc;
@end

@implementation AKAuthorizationDaemonConnection

- (AKAuthorizationDaemonConnection)init
{
  v4 = 0;
  v4 = [(AKAuthorizationDaemonConnection *)self initWithListenerEndpoint:0 exportedInterface:?];
  v3 = MEMORY[0x1E69E5928](v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (AKAuthorizationDaemonConnection)initWithListenerEndpoint:(id)endpoint exportedInterface:(id)interface
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, endpoint);
  v9 = 0;
  objc_storeStrong(&v9, interface);
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = AKAuthorizationDaemonConnection;
  selfCopy = [(AKAuthorizationDaemonConnection *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_listenerEndpoint, location[0]);
    objc_storeStrong(&selfCopy->_contextManager, v9);
    selfCopy->_unfairLock._os_unfair_lock_opaque = 0;
  }

  v6 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = _AKLogSiwa();
  v3 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v6, selfCopy);
    _os_log_debug_impl(&dword_193225000, location[0], v3, "%@ deallocated", v6, 0xCu);
  }

  objc_storeStrong(location, 0);
  [(NSXPCConnection *)selfCopy->_connection invalidate];
  objc_storeStrong(&selfCopy->_connection, 0);
  v2.receiver = selfCopy;
  v2.super_class = AKAuthorizationDaemonConnection;
  [(AKAuthorizationDaemonConnection *)&v2 dealloc];
  *MEMORY[0x1E69E9840];
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  _connection = [(AKAuthorizationDaemonConnection *)selfCopy _connection];
  v5 = [_connection remoteObjectProxyWithErrorHandler:location[0]];
  MEMORY[0x1E69E5920](_connection);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  _connection = [(AKAuthorizationDaemonConnection *)selfCopy _connection];
  v5 = [_connection synchronousRemoteObjectProxyWithErrorHandler:location[0]];
  MEMORY[0x1E69E5920](_connection);
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
  v8 = __46__AKAuthorizationDaemonConnection__connection__block_invoke;
  v9 = &unk_1E73D4B18;
  v10[0] = MEMORY[0x1E69E5928](self);
  v4 = ak_unfair_lock_perform_with_result_4(&self->_unfairLock, &v5);
  objc_storeStrong(v10, 0);

  return v4;
}

id __46__AKAuthorizationDaemonConnection__connection__block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  if (!*(a1[4] + 2))
  {
    objc_initWeak(location, a1[4]);
    v1 = _AKAuthorizationDaemonConnectionCreate(*(a1[4] + 4));
    v2 = a1[4];
    v3 = v2[2];
    v2[2] = v1;
    MEMORY[0x1E69E5920](v3);
    v11 = *(a1[4] + 2);
    v10 = +[AKAuthorizationDaemonInterface XPCInterface];
    [v11 setRemoteObjectInterface:?];
    MEMORY[0x1E69E5920](v10);
    [*(a1[4] + 2) setExportedObject:*(a1[4] + 3)];
    v9 = *(a1[4] + 2);
    v8 = +[AKAuthorizationClientInterface XPCInterface];
    [v9 setExportedInterface:?];
    MEMORY[0x1E69E5920](v8);
    v7 = *(a1[4] + 2);
    v19 = MEMORY[0x1E69E9820];
    v20 = -1073741824;
    v21 = 0;
    v22 = __46__AKAuthorizationDaemonConnection__connection__block_invoke_2;
    v23 = &unk_1E73D34E8;
    objc_copyWeak(&v24, location);
    [v7 setInterruptionHandler:&v19];
    v6 = *(a1[4] + 2);
    v13 = MEMORY[0x1E69E9820];
    v14 = -1073741824;
    v15 = 0;
    v16 = __46__AKAuthorizationDaemonConnection__connection__block_invoke_3;
    v17 = &unk_1E73D34E8;
    objc_copyWeak(&v18, location);
    [v6 setInvalidationHandler:&v13];
    [*(a1[4] + 2) resume];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v24);
    objc_destroyWeak(location);
  }

  v4 = *(a1[4] + 2);

  return v4;
}

uint64_t __46__AKAuthorizationDaemonConnection__connection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInterruptionHandler];
  return MEMORY[0x1E69E5920](WeakRetained);
}

uint64_t __46__AKAuthorizationDaemonConnection__connection__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInvalidationHandler];
  return MEMORY[0x1E69E5920](WeakRetained);
}

- (void)_connectionInterruptionHandler
{
  location[2] = self;
  location[1] = a2;
  location[0] = _AKLogSiwa();
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
  selfCopy = self;
  location[1] = a2;
  location[0] = _AKLogSiwa();
  v12 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    log = location[0];
    type = v12;
    __os_log_helper_16_0_0(v11);
    _os_log_debug_impl(&dword_193225000, log, type, "Connection to authorization service invalidated", v11, 2u);
  }

  objc_storeStrong(location, 0);
  p_unfairLock = &selfCopy->_unfairLock;
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __65__AKAuthorizationDaemonConnection__connectionInvalidationHandler__block_invoke;
  v9 = &unk_1E73D34C0;
  v10 = MEMORY[0x1E69E5928](selfCopy);
  ak_unfair_lock_perform_4(p_unfairLock, &v5);
  objc_storeStrong(&v10, 0);
}

@end