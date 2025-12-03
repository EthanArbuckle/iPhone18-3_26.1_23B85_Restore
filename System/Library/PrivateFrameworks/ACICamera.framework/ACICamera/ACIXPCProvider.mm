@interface ACIXPCProvider
+ (id)remoteServiceClientInterface;
+ (id)remoteServiceManagerInterface;
+ (id)remoteServiceReceiverInterface;
+ (id)remoteServiceSenderInterface;
- (ACIXPCProvider)initWithProvider:(void *)provider;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)dealloc;
- (void)teardownConnection:(id)connection;
@end

@implementation ACIXPCProvider

- (ACIXPCProvider)initWithProvider:(void *)provider
{
  v4 = [(ACIXPCProvider *)self init];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
    accounts = v4->_accounts;
    v4->_accounts = v5;

    v7 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
    servicesLock = v4->_servicesLock;
    v4->_servicesLock = v7;

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.acid.%@", objc_opt_class()];
    v10 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:v9];
    listener = v4->_listener;
    v4->_listener = v10;

    [(NSXPCListener *)v4->_listener setDelegate:v4];
    [(NSXPCListener *)v4->_listener resume];
    aci::SP<aci::SourceManager,&(void ACISPRetain<aci::SourceManager>(aci::SourceManager &)),&(void ACISPRelease<aci::SourceManager>(aci::SourceManager &))>::setPtr(&v4->_provider, provider);
    v12 = v4;
  }

  return v4;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  keyEnumerator = [(NSMapTable *)self->_accounts keyEnumerator];
  v4 = [keyEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        [*(*(&v9 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [keyEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  [(NSMapTable *)self->_accounts removeAllObjects];
  [(NSXPCListener *)self->_listener invalidate];
  v8.receiver = self;
  v8.super_class = ACIXPCProvider;
  [(ACIXPCProvider *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)teardownConnection:(id)connection
{
  v12 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = _aciLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = connectionCopy;
    _os_log_impl(&dword_23C3F5000, v5, OS_LOG_TYPE_DEFAULT, "teardownConnection(%@) begin", &v10, 0xCu);
  }

  v6 = self->_accounts;
  objc_sync_enter(v6);
  v7 = [(NSMapTable *)self->_accounts objectForKey:connectionCopy];
  if (v7)
  {
    [(NSMapTable *)self->_accounts removeObjectForKey:connectionCopy];
  }

  objc_sync_exit(v6);
  if (![(NSMapTable *)self->_accounts count]&& [(NSConditionLock *)self->_servicesLock tryLockWhenCondition:0])
  {
    [(ACIXPCProvider *)self releaseServices];
    [(NSConditionLock *)self->_servicesLock unlockWithCondition:[(NSMapTable *)self->_accounts count]!= 0];
  }

  v8 = _aciLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = connectionCopy;
    _os_log_impl(&dword_23C3F5000, v8, OS_LOG_TYPE_DEFAULT, "teardownConnection(%@) end", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v26 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  objc_initWeak(&location, self);
  v8 = connectionCopy;
  v9 = _aciLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = listenerCopy;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&dword_23C3F5000, v9, OS_LOG_TYPE_DEFAULT, "listener(listener:%@, shouldAcceptNewConnection:%@) begin", buf, 0x16u);
  }

  v10 = [[ACIXPCAccount alloc] initWithXPCConnection:v8 delegate:self->_provider._ptr];
  v11 = +[ACIXPCProvider remoteServiceManagerInterface];
  [v8 setExportedInterface:v11];

  [v8 setExportedObject:v10];
  v12 = +[ACIXPCProvider remoteServiceClientInterface];
  [v8 setRemoteObjectInterface:v12];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __53__ACIXPCProvider_listener_shouldAcceptNewConnection___block_invoke;
  v18[3] = &unk_278BBBDC8;
  objc_copyWeak(&v20, &location);
  v13 = v8;
  v19 = v13;
  [v13 setInvalidationHandler:v18];
  v14 = self->_accounts;
  objc_sync_enter(v14);
  [(NSMapTable *)self->_accounts setObject:v10 forKey:v13];
  objc_sync_exit(v14);

  [(NSConditionLock *)self->_servicesLock lock];
  [(ACIXPCProvider *)self discoverServices];
  [(NSConditionLock *)self->_servicesLock unlockWithCondition:[(NSMapTable *)self->_accounts count]!= 0];
  [v13 resume];
  v15 = _aciLogGeneral();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = listenerCopy;
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&dword_23C3F5000, v15, OS_LOG_TYPE_DEFAULT, "listener(listener:%@, shouldAcceptNewConnection:%@) end", buf, 0x16u);
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

void __53__ACIXPCProvider_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained teardownConnection:*(a1 + 32)];
}

+ (id)remoteServiceManagerInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284F06D18];
  v3 = permissibleClasses();
  v4 = +[ACIXPCProvider remoteServiceSenderInterface];
  v5 = +[ACIXPCProvider remoteServiceClientInterface];
  [v2 setClasses:v3 forSelector:sel_allServices_ argumentIndex:0 ofReply:1];
  [v2 setClasses:v3 forSelector:sel_setProperty_key_property_withReply_ argumentIndex:2 ofReply:0];
  [v2 setClasses:v3 forSelector:sel_getProperty_key_withReply_ argumentIndex:0 ofReply:1];
  [v2 setInterface:v4 forSelector:sel_subscribeService_uuid_endpoint_withReply_ argumentIndex:1 ofReply:1];
  [v2 setInterface:v5 forSelector:sel_registerClient_clientName_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)remoteServiceClientInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284F07058];
  v3 = permissibleClasses();
  [v2 setClasses:v3 forSelector:sel_newEvent_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v3 forSelector:sel_newEvent_withReply_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)remoteServiceSenderInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284F06A68];
  v3 = permissibleClasses();
  [v2 setClasses:v3 forSelector:sel_contentRelease_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)remoteServiceReceiverInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284F069F0];
  v3 = permissibleClasses();
  [v2 setClasses:v3 forSelector:sel_contentReady_withReply_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v3 forSelector:sel_newEvent_ argumentIndex:0 ofReply:0];

  return v2;
}

@end