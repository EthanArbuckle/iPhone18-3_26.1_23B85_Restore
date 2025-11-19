@interface ATServiceProxyListener
- (ATService)service;
- (ATServiceProxyListener)initWithService:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)start;
- (void)stop;
@end

@implementation ATServiceProxyListener

- (ATService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 processIdentifier];
  v7 = _ATLogCategoryXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v25 = self;
    v26 = 1024;
    v27 = v6;
    _os_log_impl(&dword_22392A000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ got connection from pid %i", buf, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_service);
  v9 = [[ATServiceProxyConnection alloc] initWithService:WeakRetained connection:v5];
  [v5 setExportedObject:v9];
  v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283702C50];
  [v5 setRemoteObjectInterface:v10];
  v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2836FDFF0];
  [v5 setExportedInterface:v11];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __61__ATServiceProxyListener_listener_shouldAcceptNewConnection___block_invoke;
  v22[3] = &__block_descriptor_36_e5_v8__0l;
  v23 = v6;
  [v5 setInterruptionHandler:v22];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __61__ATServiceProxyListener_listener_shouldAcceptNewConnection___block_invoke_54;
  v18 = &unk_2784E90E0;
  v21 = v6;
  v19 = self;
  v20 = v9;
  v12 = v9;
  [v5 setInvalidationHandler:&v15];
  [WeakRetained addObserver:{v12, v15, v16, v17, v18, v19}];
  [v5 resume];

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

void __61__ATServiceProxyListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "connection interrupted from pid: %i", v5, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __61__ATServiceProxyListener_listener_shouldAcceptNewConnection___block_invoke_54(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "connection invalidated from pid: %i", v6, 8u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained removeObserver:*(a1 + 40)];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ stopping", &v7, 0xCu);
  }

  listener = self->_listener;
  if (listener)
  {
    [(NSXPCListener *)listener invalidate];
    [(NSXPCListener *)self->_listener setDelegate:0];
    v5 = self->_listener;
    self->_listener = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ starting", &v8, 0xCu);
  }

  v4 = objc_alloc(MEMORY[0x277CCAE98]);
  v5 = [v4 initWithMachServiceName:*MEMORY[0x277CEA3F8]];
  listener = self->_listener;
  self->_listener = v5;

  [(NSXPCListener *)self->_listener setDelegate:self];
  [(NSXPCListener *)self->_listener resume];
  v7 = *MEMORY[0x277D85DE8];
}

- (ATServiceProxyListener)initWithService:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ATServiceProxyListener;
  v5 = [(ATServiceProxyListener *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_service, v4);
  }

  return v6;
}

@end