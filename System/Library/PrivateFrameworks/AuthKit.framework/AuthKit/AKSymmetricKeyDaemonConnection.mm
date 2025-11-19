@interface AKSymmetricKeyDaemonConnection
- (AKSymmetricKeyDaemonConnection)init;
- (AKSymmetricKeyDaemonConnection)initWithListenerEndpoint:(id)a3;
- (id)_connection;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (void)_connectionInterruptionHandler;
- (void)_connectionInvalidationHandler;
- (void)dealloc;
@end

@implementation AKSymmetricKeyDaemonConnection

- (AKSymmetricKeyDaemonConnection)init
{
  v4 = 0;
  v4 = [(AKSymmetricKeyDaemonConnection *)self initWithListenerEndpoint:?];
  v3 = MEMORY[0x1E69E5928](v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (AKSymmetricKeyDaemonConnection)initWithListenerEndpoint:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AKSymmetricKeyDaemonConnection;
  v8 = [(AKSymmetricKeyDaemonConnection *)&v6 init];
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
  v2.super_class = AKSymmetricKeyDaemonConnection;
  [(AKSymmetricKeyDaemonConnection *)&v2 dealloc];
  *MEMORY[0x1E69E9840];
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(AKSymmetricKeyDaemonConnection *)v7 _connection];
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
  v4 = [(AKSymmetricKeyDaemonConnection *)v7 _connection];
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
  v8 = __45__AKSymmetricKeyDaemonConnection__connection__block_invoke;
  v9 = &unk_1E73D4B18;
  v10[0] = MEMORY[0x1E69E5928](self);
  v4 = ak_unfair_lock_perform_with_result(&self->_unfairLock, &v5);
  objc_storeStrong(v10, 0);

  return v4;
}

id __45__AKSymmetricKeyDaemonConnection__connection__block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  if (!*(a1[4] + 2))
  {
    objc_initWeak(location, a1[4]);
    v1 = _AKSymmetricKeyDaemonConnectionCreate(*(a1[4] + 3));
    v2 = a1[4];
    v3 = v2[2];
    v2[2] = v1;
    MEMORY[0x1E69E5920](v3);
    v9 = *(a1[4] + 2);
    v8 = +[AKSymmetricKeyDaemonInterface XPCInterface];
    [v9 setRemoteObjectInterface:?];
    MEMORY[0x1E69E5920](v8);
    v7 = *(a1[4] + 2);
    v17 = MEMORY[0x1E69E9820];
    v18 = -1073741824;
    v19 = 0;
    v20 = __45__AKSymmetricKeyDaemonConnection__connection__block_invoke_2;
    v21 = &unk_1E73D34E8;
    objc_copyWeak(&v22, location);
    [v7 setInterruptionHandler:&v17];
    v6 = *(a1[4] + 2);
    v11 = MEMORY[0x1E69E9820];
    v12 = -1073741824;
    v13 = 0;
    v14 = __45__AKSymmetricKeyDaemonConnection__connection__block_invoke_3;
    v15 = &unk_1E73D34E8;
    objc_copyWeak(&v16, location);
    [v6 setInvalidationHandler:&v11];
    [*(a1[4] + 2) resume];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v22);
    objc_destroyWeak(location);
  }

  v4 = *(a1[4] + 2);

  return v4;
}

uint64_t __45__AKSymmetricKeyDaemonConnection__connection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInterruptionHandler];
  return MEMORY[0x1E69E5920](WeakRetained);
}

uint64_t __45__AKSymmetricKeyDaemonConnection__connection__block_invoke_3(uint64_t a1)
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
    _os_log_debug_impl(&dword_193225000, log, type, "Connection to symmetric key service interrupted", v4, 2u);
  }

  objc_storeStrong(location, 0);
}

- (void)_connectionInvalidationHandler
{
  v14 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v12 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    log = location[0];
    type = v12;
    __os_log_helper_16_0_0(v11);
    _os_log_debug_impl(&dword_193225000, log, type, "Connection to symmetric key service invalidated", v11, 2u);
  }

  objc_storeStrong(location, 0);
  p_unfairLock = &v14->_unfairLock;
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __64__AKSymmetricKeyDaemonConnection__connectionInvalidationHandler__block_invoke;
  v9 = &unk_1E73D34C0;
  v10 = MEMORY[0x1E69E5928](v14);
  ak_unfair_lock_perform(p_unfairLock, &v5);
  objc_storeStrong(&v10, 0);
}

@end