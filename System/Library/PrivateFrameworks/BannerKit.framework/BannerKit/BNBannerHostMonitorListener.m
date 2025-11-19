@interface BNBannerHostMonitorListener
+ (void)initialize;
- (BNBannerHostMonitorListener)initWithServiceDomain:(id)a3 authorizedBundleIDs:(id)a4;
- (BOOL)_isConnectingProcessAuthorized:(id)a3 error:(id *)a4;
- (BOOL)isBannerHostAvailable;
- (NSString)description;
- (void)_addConnection:(id)a3;
- (void)_notifyObserversWithBlock:(id)a3;
- (void)_removeConnection:(id)a3;
- (void)addObserver:(id)a3;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)removeObserver:(id)a3;
@end

@implementation BNBannerHostMonitorListener

- (BOOL)isBannerHostAvailable
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableArray *)v2->_connections count]!= 0;
  objc_sync_exit(v2);

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    BNRegisterBannerKitLogging();
  }
}

- (BNBannerHostMonitorListener)initWithServiceDomain:(id)a3 authorizedBundleIDs:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v28.receiver = self;
  v28.super_class = BNBannerHostMonitorListener;
  v9 = [(BNBannerHostMonitorListener *)&v28 init];
  if (v9)
  {
    if (!v7)
    {
      [BNBannerHostMonitorListener initWithServiceDomain:a2 authorizedBundleIDs:v9];
    }

    objc_storeStrong(&v9->_authorizedBundleIDs, a4);
    Serial = BSDispatchQueueCreateSerial();
    queue = v9->_queue;
    v9->_queue = Serial;

    v12 = MEMORY[0x1E698F4B8];
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __73__BNBannerHostMonitorListener_initWithServiceDomain_authorizedBundleIDs___block_invoke;
    v25 = &unk_1E81E4648;
    v26 = v7;
    v13 = v9;
    v27 = v13;
    v14 = [v12 listenerWithConfigurator:&v22];
    v15 = v13[2];
    v13[2] = v14;

    v16 = BNLogHostingService;
    if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = [v13 description];
      *buf = 138543618;
      v30 = v19;
      v31 = 2114;
      v32 = v20;
      _os_log_impl(&dword_1C42DC000, v17, OS_LOG_TYPE_DEFAULT, "Initializing new %{public}@ instance: %{public}@", buf, 0x16u);
    }

    [v13[2] activate];
  }

  return v9;
}

void __73__BNBannerHostMonitorListener_initWithServiceDomain_authorizedBundleIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setDomain:v3];
  v4 = +[BNBannerHostMonitorSessionSpecification identifier];
  [v5 setService:v4];

  [v5 setDelegate:*(a1 + 40)];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(BSServiceConnectionListener *)self->_connectionListener domain];
  v6 = [v3 stringWithFormat:@"<%@: %p serviceDomain: %@; authorizedBundleIDs: %@>", v4, self, v5, self->_authorizedBundleIDs];;

  return v6;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = self;
    objc_sync_enter(v5);
    observers = v5->_observers;
    if (!observers)
    {
      v7 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
      v8 = v5->_observers;
      v5->_observers = v7;

      observers = v5->_observers;
    }

    [(NSHashTable *)observers addObject:v9];
    objc_sync_exit(v5);

    v4 = v9;
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = self;
    objc_sync_enter(v5);
    observers = v5->_observers;
    if (observers)
    {
      [(NSHashTable *)observers removeObject:v7];
    }

    objc_sync_exit(v5);

    v4 = v7;
  }
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  v12 = [v9 remoteProcess];
  v20 = 0;
  v13 = [(BNBannerHostMonitorListener *)v11 _isConnectingProcessAuthorized:v12 error:&v20];
  v14 = v20;

  if (v13)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __73__BNBannerHostMonitorListener_listener_didReceiveConnection_withContext___block_invoke;
    v19[3] = &unk_1E81E44F0;
    v19[4] = v11;
    [v9 configureConnection:v19];
    [(BNBannerHostMonitorListener *)v11 _addConnection:v9];
  }

  else
  {
    v15 = BNLogHostingService;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [v14 localizedDescription];
      [(BNBannerHostMonitorListener *)v17 listener:v18 didReceiveConnection:buf withContext:v15];
    }

    [v9 invalidate];
  }

  objc_sync_exit(v11);
}

void __73__BNBannerHostMonitorListener_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[BNBannerHostMonitorSessionSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[BNBannerHostMonitorSessionSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  objc_initWeak(&location, *(a1 + 32));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__BNBannerHostMonitorListener_listener_didReceiveConnection_withContext___block_invoke_2;
  v8[3] = &unk_1E81E5150;
  objc_copyWeak(&v9, &location);
  [v3 setActivationHandler:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__BNBannerHostMonitorListener_listener_didReceiveConnection_withContext___block_invoke_23;
  v6[3] = &unk_1E81E4698;
  objc_copyWeak(&v7, &location);
  [v3 setInvalidationHandler:v6];
  [v3 setTargetQueue:*(*(a1 + 32) + 24)];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __73__BNBannerHostMonitorListener_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = BNLogHostingService;
  if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_1C42DC000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ (client-side) connection did activate", &v7, 0xCu);
  }
}

void __73__BNBannerHostMonitorListener_listener_didReceiveConnection_withContext___block_invoke_23(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = BNLogHostingService;
  if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_1C42DC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ (client-side) connection invalidated", &v9, 0xCu);
  }

  [WeakRetained _removeConnection:v3];
}

- (BOOL)_isConnectingProcessAuthorized:(id)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 hasEntitlement:@"com.apple.bannerkit.hostmonitor"];
  authorizedBundleIDs = self->_authorizedBundleIDs;
  v9 = [v6 bundleIdentifier];

  v10 = [(NSSet *)authorizedBundleIDs containsObject:v9];
  v11 = v7 & v10;
  if (a4 && (v7 & v10 & 1) == 0)
  {
    v12 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v13 = v12;
    if ((v7 & 1) == 0)
    {
      [v12 appendString:@"missing entitlement"];
    }

    if (!v10)
    {
      if ([v13 length])
      {
        v14 = @", not an authorized bundle ID";
      }

      else
      {
        v14 = @"not an authorized bundle ID";
      }

      [v13 appendString:v14];
    }

    v15 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A578];
    v19[0] = v13;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *a4 = [v15 errorWithDomain:@"BNBannerSourceErrorDomain" code:0 userInfo:v16];
  }

  return v11;
}

- (void)_addConnection:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  connections = v5->_connections;
  if (!connections)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = v5->_connections;
    v5->_connections = v7;

    connections = v5->_connections;
  }

  [(NSMutableArray *)connections addObject:v4];
  [v4 activate];
  if ([(NSMutableArray *)v5->_connections count]== 1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__BNBannerHostMonitorListener__addConnection___block_invoke;
    block[3] = &unk_1E81E4BC8;
    block[4] = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  objc_sync_exit(v5);
}

uint64_t __46__BNBannerHostMonitorListener__addConnection___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__BNBannerHostMonitorListener__addConnection___block_invoke_2;
  v3[3] = &unk_1E81E5178;
  v3[4] = v1;
  return [v1 _notifyObserversWithBlock:v3];
}

void __46__BNBannerHostMonitorListener__addConnection___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 bannerHostDidBecomeAvailableForMonitorListener:*(a1 + 32)];
  }
}

- (void)_removeConnection:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(NSMutableArray *)v5->_connections removeObject:v4];
  if (![(NSMutableArray *)v5->_connections count])
  {
    connections = v5->_connections;
    v5->_connections = 0;
  }

  if (!v5->_connections)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__BNBannerHostMonitorListener__removeConnection___block_invoke;
    block[3] = &unk_1E81E4BC8;
    block[4] = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  objc_sync_exit(v5);
}

uint64_t __49__BNBannerHostMonitorListener__removeConnection___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__BNBannerHostMonitorListener__removeConnection___block_invoke_2;
  v3[3] = &unk_1E81E5178;
  v3[4] = v1;
  return [v1 _notifyObserversWithBlock:v3];
}

void __49__BNBannerHostMonitorListener__removeConnection___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 bannerHostDidBecomeUnavailableForMonitorListener:*(a1 + 32)];
  }
}

- (void)_notifyObserversWithBlock:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    observers = self->_observers;
    if (observers)
    {
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v6 = [(NSHashTable *)observers copy];
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v4[2](v4, *(*(&v11 + 1) + 8 * v10++));
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }
    }
  }
}

- (void)initWithServiceDomain:(uint64_t)a1 authorizedBundleIDs:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BNBannerHostMonitorListener.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"serviceDomain"}];
}

- (void)listener:(uint8_t *)buf didReceiveConnection:(os_log_t)log withContext:.cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C42DC000, log, OS_LOG_TYPE_ERROR, "%{public}@ (client-side) connection failed to authenticate: %{public}@", buf, 0x16u);
}

@end