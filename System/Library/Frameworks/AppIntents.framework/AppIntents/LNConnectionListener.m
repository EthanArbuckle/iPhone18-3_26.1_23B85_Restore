@interface LNConnectionListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (LNConnectionListener)initWithListener:(id)a3 clientConnectionQueue:(id)a4;
- (NSMutableSet)clientConnections;
- (void)addClientConnection:(id)a3;
- (void)cleanUp:(void *)a1;
- (void)dealloc;
- (void)removeClientConnection:(id)a3;
@end

@implementation LNConnectionListener

- (NSMutableSet)clientConnections
{
  os_unfair_lock_assert_owner(&self->_lock);
  clientConnections = self->_clientConnections;

  return clientConnections;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = getLNLogCategoryExecution();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v22 = v7;
    _os_log_impl(&dword_18F0E9000, v8, OS_LOG_TYPE_INFO, "Resuming new XPC connection: %{public}@", buf, 0xCu);
  }

  v9 = [LNClientConnection alloc];
  v10 = [v7 _queue];
  v11 = [(LNConnectionListener *)self appContext];
  v12 = [(LNClientConnection *)v9 initWithConnection:v7 connectionListener:self queue:v10 appContext:v11];

  [(LNConnectionListener *)self addClientConnection:v12];
  objc_initWeak(buf, v12);
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59__LNConnectionListener_listener_shouldAcceptNewConnection___block_invoke;
  v17[3] = &unk_1E72B7628;
  objc_copyWeak(&v18, &location);
  objc_copyWeak(&v19, buf);
  [v7 setInterruptionHandler:v17];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__LNConnectionListener_listener_shouldAcceptNewConnection___block_invoke_15;
  v14[3] = &unk_1E72B7628;
  objc_copyWeak(&v15, &location);
  objc_copyWeak(&v16, buf);
  [v7 setInvalidationHandler:v14];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  return 1;
}

void __59__LNConnectionListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
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

  [(LNConnectionListener *)WeakRetained cleanUp:v3];
}

void __59__LNConnectionListener_listener_shouldAcceptNewConnection___block_invoke_15(uint64_t a1)
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

  [(LNConnectionListener *)WeakRetained cleanUp:v3];
}

- (void)cleanUp:(void *)a1
{
  if (a1 && a2)
  {
    v3 = a2;
    [a1 removeClientConnection:v3];
    v4 = [a1 appContext];
    v5 = [v3 xpcConnection];
    [v4 removeAllDeferredOutputsFor:v5];

    v7 = [a1 appContext];
    v6 = [v3 xpcConnection];

    [v7 removeContextForConnection:v6];
  }
}

- (void)removeClientConnection:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__LNConnectionListener_removeClientConnection___block_invoke;
  aBlock[3] = &unk_1E72B7600;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = [(LNConnectionListener *)self clientConnections];
  [v6 removeObject:v4];

  v5[2](v5);
}

- (void)addClientConnection:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__LNConnectionListener_addClientConnection___block_invoke;
  aBlock[3] = &unk_1E72B7600;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = [(LNConnectionListener *)self clientConnections];
  [v6 addObject:v4];

  v5[2](v5);
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = getLNLogCategoryExecution();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543362;
    v8 = v5;
    _os_log_impl(&dword_18F0E9000, v3, OS_LOG_TYPE_INFO, "%{public}@ deallocated", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = LNConnectionListener;
  [(LNConnectionListener *)&v6 dealloc];
}

- (LNConnectionListener)initWithListener:(id)a3 clientConnectionQueue:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = LNConnectionListener;
  v9 = [(LNConnectionListener *)&v21 init];
  if (v9)
  {
    v10 = objc_alloc_init(LNAppContext);
    appContext = v9->_appContext;
    v9->_appContext = v10;

    v12 = objc_opt_new();
    clientConnections = v9->_clientConnections;
    v9->_clientConnections = v12;

    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_clientConnectionQueue, a4);
    objc_storeStrong(&v9->_xpcListener, a3);
    [(NSXPCListener *)v9->_xpcListener setDelegate:v9];
    [(NSXPCListener *)v9->_xpcListener resume];
    if (NSClassFromString(&cfstr_Uiview.isa))
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x2050000000;
      v14 = get_AppIntentsUIKitBridgeLoaderClass_softClass;
      v25 = get_AppIntentsUIKitBridgeLoaderClass_softClass;
      if (!get_AppIntentsUIKitBridgeLoaderClass_softClass)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v27 = __get_AppIntentsUIKitBridgeLoaderClass_block_invoke;
        v28 = &unk_1E72B75A0;
        v29 = &v22;
        __get_AppIntentsUIKitBridgeLoaderClass_block_invoke(&buf);
        v14 = v23[3];
      }

      v15 = v14;
      _Block_object_dispose(&v22, 8);
      [v14 loadBridge];
    }

    v16 = getLNLogCategoryExecution();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v18;
      _os_log_impl(&dword_18F0E9000, v16, OS_LOG_TYPE_INFO, "%{public}@ instantiated", &buf, 0xCu);
    }

    v19 = v9;
  }

  return v9;
}

@end