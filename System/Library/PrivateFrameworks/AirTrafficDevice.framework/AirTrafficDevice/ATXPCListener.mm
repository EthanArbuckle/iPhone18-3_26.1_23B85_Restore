@interface ATXPCListener
- (ATXPCListener)init;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)run;
- (id)connections;
- (id)proxyForConnection:(id)a3;
- (void)dealloc;
- (void)stop;
@end

@implementation ATXPCListener

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v28 = 0u;
  v29 = 0u;
  if (v7)
  {
    [v7 auditToken];
    v9 = DWORD1(v29);
  }

  else
  {
    v9 = 0;
  }

  v10 = _ATLogCategoryXPC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v9;
    _os_log_impl(&dword_223819000, v10, OS_LOG_TYPE_DEFAULT, "got connection from pid %i", &buf, 8u);
  }

  v11 = +[ATDeviceService sharedInstance];
  [v8 setExportedObject:v11];

  v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2836FC230];
  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  [v12 setClasses:v15 forSelector:sel_registerForStatusOfDataclasses_enabled_withCompletion_ argumentIndex:0 ofReply:0];

  [v8 setExportedInterface:v12];
  v16 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283709188];
  [v8 setRemoteObjectInterface:v16];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __52__ATXPCListener_listener_shouldAcceptNewConnection___block_invoke;
  v26[3] = &__block_descriptor_36_e5_v8__0l;
  v27 = v9;
  [v8 setInterruptionHandler:v26];
  objc_initWeak(&buf, self);
  objc_initWeak(&location, v8);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __52__ATXPCListener_listener_shouldAcceptNewConnection___block_invoke_102;
  v21[3] = &unk_2784E4B98;
  objc_copyWeak(&v22, &buf);
  objc_copyWeak(&v23, &location);
  v24 = v9;
  [v8 setInvalidationHandler:v21];
  v17 = self->_connections;
  objc_sync_enter(v17);
  [(NSMutableArray *)self->_connections addObject:v8];
  proxyMap = self->_proxyMap;
  v19 = [v8 remoteObjectProxy];
  [(NSMapTable *)proxyMap setObject:v19 forKey:v8];

  objc_sync_exit(v17);
  [v8 resume];
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
  objc_destroyWeak(&buf);

  return 1;
}

void __52__ATXPCListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryXPC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, "xpc connection interrupted from pid: %i", v4, 8u);
  }
}

void __52__ATXPCListener_listener_shouldAcceptNewConnection___block_invoke_102(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = _ATLogCategoryXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v7 = 138543618;
    v8 = WeakRetained;
    v9 = 1024;
    v10 = v5;
    _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection invalidated from pid: %i", &v7, 0x12u);
  }

  if (WeakRetained)
  {
    v6 = WeakRetained[2];
    objc_sync_enter(v6);
    [WeakRetained[3] removeObjectForKey:v3];
    [WeakRetained[2] removeObject:v3];
    objc_sync_exit(v6);
  }
}

- (id)proxyForConnection:(id)a3
{
  v4 = a3;
  v5 = self->_connections;
  objc_sync_enter(v5);
  v6 = [(NSMapTable *)self->_proxyMap objectForKey:v4];
  objc_sync_exit(v5);

  return v6;
}

- (id)connections
{
  v3 = self->_connections;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)self->_connections copy];
  objc_sync_exit(v3);

  return v4;
}

- (void)stop
{
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "ATXPCListener stopping", v6, 2u);
  }

  xpcListener = self->_xpcListener;
  if (xpcListener)
  {
    [(NSXPCListener *)xpcListener invalidate];
    [(NSXPCListener *)self->_xpcListener setDelegate:0];
    v5 = self->_xpcListener;
    self->_xpcListener = 0;
  }
}

- (BOOL)run
{
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "ATXPCListener starting up", v7, 2u);
  }

  v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.atc.xpc"];
  xpcListener = self->_xpcListener;
  self->_xpcListener = v4;

  [(NSXPCListener *)self->_xpcListener setDelegate:self];
  [(NSXPCListener *)self->_xpcListener resume];
  return 1;
}

- (void)dealloc
{
  [(ATXPCListener *)self stop];
  v3.receiver = self;
  v3.super_class = ATXPCListener;
  [(ATXPCListener *)&v3 dealloc];
}

- (ATXPCListener)init
{
  v8.receiver = self;
  v8.super_class = ATXPCListener;
  v2 = [(ATXPCListener *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    connections = v2->_connections;
    v2->_connections = v3;

    v5 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    proxyMap = v2->_proxyMap;
    v2->_proxyMap = v5;
  }

  return v2;
}

@end