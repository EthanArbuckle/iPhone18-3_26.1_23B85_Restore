@interface LNExtensionConnectionHandler
- (BOOL)shouldAcceptXPCConnection:(id)a3;
- (LNAppContext)appContext;
- (LNExtensionConnectionHandler)init;
- (LNExtensionConnectionHandler)initWithPrincipalObject:(id)a3;
- (NSMutableSet)clientConnections;
- (void)addClientConnection:(id)a3;
- (void)removeClientConnection:(id)a3;
@end

@implementation LNExtensionConnectionHandler

- (LNAppContext)appContext
{
  appContext = self->_appContext;
  if (!appContext)
  {
    v4 = objc_alloc_init(LNAppContext);
    v5 = self->_appContext;
    self->_appContext = v4;

    appContext = self->_appContext;
  }

  return appContext;
}

- (NSMutableSet)clientConnections
{
  os_unfair_lock_assert_owner(&self->_lock);
  clientConnections = self->_clientConnections;

  return clientConnections;
}

- (BOOL)shouldAcceptXPCConnection:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getLNLogCategoryExecution();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v20 = v4;
    _os_log_impl(&dword_18F0E9000, v5, OS_LOG_TYPE_INFO, "Resuming new XPC connection: %{public}@", buf, 0xCu);
  }

  v6 = [LNClientConnection alloc];
  v7 = [(LNExtensionConnectionHandler *)self connectionListener];
  v8 = [v4 _queue];
  v9 = [(LNExtensionConnectionHandler *)self appContext];
  v10 = [(LNClientConnection *)v6 initWithConnection:v4 connectionListener:v7 queue:v8 appContext:v9];

  [(LNExtensionConnectionHandler *)self addClientConnection:v10];
  objc_initWeak(buf, v10);
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__LNExtensionConnectionHandler_shouldAcceptXPCConnection___block_invoke;
  v15[3] = &unk_1E72B7628;
  objc_copyWeak(&v16, &location);
  objc_copyWeak(&v17, buf);
  [v4 setInterruptionHandler:v15];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__LNExtensionConnectionHandler_shouldAcceptXPCConnection___block_invoke_13;
  v12[3] = &unk_1E72B7628;
  objc_copyWeak(&v13, &location);
  objc_copyWeak(&v14, buf);
  [v4 setInvalidationHandler:v12];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  return 1;
}

void __58__LNExtensionConnectionHandler_shouldAcceptXPCConnection___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = getLNLogCategoryExecution();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [v3 xpcConnection];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_18F0E9000, v4, OS_LOG_TYPE_ERROR, "XPC connection has been interrupted: %{public}@", &v6, 0xCu);
  }

  if (v3)
  {
    [WeakRetained removeClientConnection:v3];
  }
}

void __58__LNExtensionConnectionHandler_shouldAcceptXPCConnection___block_invoke_13(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = getLNLogCategoryExecution();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 xpcConnection];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_18F0E9000, v4, OS_LOG_TYPE_INFO, "XPC connection has been invalidated: %{public}@", &v6, 0xCu);
  }

  if (v3)
  {
    [WeakRetained removeClientConnection:v3];
  }
}

- (void)removeClientConnection:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__LNExtensionConnectionHandler_removeClientConnection___block_invoke;
  aBlock[3] = &unk_1E72B7600;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = [(LNExtensionConnectionHandler *)self clientConnections];
  [v6 removeObject:v4];

  v5[2](v5);
}

- (void)addClientConnection:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__LNExtensionConnectionHandler_addClientConnection___block_invoke;
  aBlock[3] = &unk_1E72B7600;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = [(LNExtensionConnectionHandler *)self clientConnections];
  [v6 addObject:v4];

  v5[2](v5);
}

- (LNExtensionConnectionHandler)initWithPrincipalObject:(id)a3
{
  v5 = a3;
  v6 = [(LNExtensionConnectionHandler *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_principalObject, a3);
    v8 = v7;
  }

  return v7;
}

- (LNExtensionConnectionHandler)init
{
  v13.receiver = self;
  v13.super_class = LNExtensionConnectionHandler;
  v2 = [(LNExtensionConnectionHandler *)&v13 init];
  if (v2)
  {
    v3 = objc_opt_new();
    clientConnections = v2->_clientConnections;
    v2->_clientConnections = v3;

    v5 = [LNConnectionListener alloc];
    v6 = [MEMORY[0x1E696B0D8] anonymousListener];
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v8 = dispatch_queue_create("com.apple.appintents.client-connection-queue", v7);
    v9 = [(LNConnectionListener *)v5 initWithListener:v6 clientConnectionQueue:v8];
    connectionListener = v2->_connectionListener;
    v2->_connectionListener = v9;

    v2->_lock._os_unfair_lock_opaque = 0;
    v11 = v2;
  }

  return v2;
}

@end