@interface BNBannerHostMonitor
+ (void)initialize;
- (BNBannerHostMonitor)initWithMachName:(id)a3;
- (id)_activeConnection;
- (void)_invalidateConnection;
- (void)dealloc;
@end

@implementation BNBannerHostMonitor

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    BNRegisterBannerKitLogging();
  }
}

- (void)dealloc
{
  [(BNBannerHostMonitor *)self _invalidateConnection];
  v3.receiver = self;
  v3.super_class = BNBannerHostMonitor;
  [(BNBannerHostMonitor *)&v3 dealloc];
}

- (BNBannerHostMonitor)initWithMachName:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    [(BNBannerHostMonitor *)a2 initWithMachName:?];
  }

  v17.receiver = self;
  v17.super_class = BNBannerHostMonitor;
  v6 = [(BNBannerHostMonitor *)&v17 init];
  if (v6)
  {
    v7 = [v5 copy];
    machName = v6->_machName;
    v6->_machName = v7;

    Serial = BSDispatchQueueCreateSerial();
    connectionQueue = v6->_connectionQueue;
    v6->_connectionQueue = Serial;

    v11 = BNLogHostingHost;
    if (os_log_type_enabled(BNLogHostingHost, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [(BNBannerHostMonitor *)v6 description];
      *buf = 138543618;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      _os_log_impl(&dword_1C42DC000, v12, OS_LOG_TYPE_DEFAULT, "Initializing new %{public}@ instance: %{public}@", buf, 0x16u);
    }
  }

  return v6;
}

- (id)_activeConnection
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_connection)
  {
    v3 = MEMORY[0x1E698F498];
    machName = v2->_machName;
    v5 = +[BNBannerHostMonitorSessionSpecification identifier];
    v6 = [v3 endpointForMachName:machName service:v5 instance:0];

    v7 = [MEMORY[0x1E698F490] connectionWithEndpoint:v6];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __40__BNBannerHostMonitor__activeConnection__block_invoke;
    v10[3] = &unk_1E81E44F0;
    v10[4] = v2;
    [v7 configureConnection:v10];
    objc_storeStrong(&v2->_connection, v7);
    [(BSServiceConnection *)v2->_connection activate];
  }

  objc_sync_exit(v2);

  connection = v2->_connection;

  return connection;
}

void __40__BNBannerHostMonitor__activeConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[BNBannerHostMonitorSessionSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[BNBannerHostMonitorSessionSpecification interface];
  if (v5)
  {
    [v3 setInterface:v5];
    [v3 setInterfaceTarget:*(a1 + 32)];
  }

  [v3 setTargetQueue:*(*(a1 + 32) + 16)];
  objc_initWeak(&location, *(a1 + 32));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__BNBannerHostMonitor__activeConnection__block_invoke_2;
  v10[3] = &unk_1E81E44C8;
  objc_copyWeak(&v11, &location);
  [v3 setActivationHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__BNBannerHostMonitor__activeConnection__block_invoke_21;
  v8[3] = &unk_1E81E44C8;
  objc_copyWeak(&v9, &location);
  [v3 setInterruptionHandler:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__BNBannerHostMonitor__activeConnection__block_invoke_22;
  v6[3] = &unk_1E81E44C8;
  objc_copyWeak(&v7, &location);
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __40__BNBannerHostMonitor__activeConnection__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = BNLogHostingHost;
  if (os_log_type_enabled(BNLogHostingHost, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_1C42DC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ (host-side) connection activated", &v10, 0xCu);
  }

  if (WeakRetained)
  {
    v9 = WeakRetained;
    objc_sync_enter(v9);
    [v9 _setActive:1];
    objc_sync_exit(v9);
  }
}

void __40__BNBannerHostMonitor__activeConnection__block_invoke_21(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = BNLogHostingService;
  if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_1C42DC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ (service-side) connection interrupted", &v10, 0xCu);
  }

  if (WeakRetained)
  {
    v9 = WeakRetained;
    objc_sync_enter(v9);
    [v9 _setActive:0];
    [v3 activate];
    objc_sync_exit(v9);
  }
}

void __40__BNBannerHostMonitor__activeConnection__block_invoke_22(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = BNLogHostingHost;
  if (os_log_type_enabled(BNLogHostingHost, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_1C42DC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ (host-side) connection invalidated", &v10, 0xCu);
  }

  if (WeakRetained)
  {
    v9 = WeakRetained;
    objc_sync_enter(v9);
    [v9 _setActive:0];
    [v9 _invalidateConnection];
    objc_sync_exit(v9);
  }
}

- (void)_invalidateConnection
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  connection = obj->_connection;
  if (connection)
  {
    [(BSServiceConnection *)connection invalidate];
    v4 = obj->_connection;
    obj->_connection = 0;

    v2 = obj;
  }

  objc_sync_exit(v2);
}

- (void)initWithMachName:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BNBannerHostMonitor.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"machName"}];
}

@end