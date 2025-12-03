@interface ATMessageLinkProxyListener
- (ATMessageLinkProxyListener)initWithMessageLink:(id)link;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)start;
- (void)stop;
@end

@implementation ATMessageLinkProxyListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v29 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  v9 = _ATLogCategoryXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v27 = 1024;
    v28 = processIdentifier;
    _os_log_impl(&dword_22392A000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Got connection from pid %i", buf, 0x12u);
  }

  v10 = [[ATMessageLinkProxyConnection alloc] initWithMessageLink:self->_messageLink connection:connectionCopy];
  v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283700858];
  [connectionCopy setExportedInterface:v11];

  [connectionCopy setExportedObject:v10];
  v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283702DF8];
  [connectionCopy setRemoteObjectInterface:v12];

  objc_initWeak(buf, v10);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __65__ATMessageLinkProxyListener_listener_shouldAcceptNewConnection___block_invoke;
  v22[3] = &unk_2784E93E8;
  v22[4] = self;
  v24 = processIdentifier;
  objc_copyWeak(&v23, buf);
  [connectionCopy setInterruptionHandler:v22];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __65__ATMessageLinkProxyListener_listener_shouldAcceptNewConnection___block_invoke_69;
  v18 = &unk_2784E93E8;
  selfCopy2 = self;
  v21 = processIdentifier;
  objc_copyWeak(&v20, buf);
  [connectionCopy setInvalidationHandler:&v15];
  [connectionCopy resume];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

void __65__ATMessageLinkProxyListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryXPC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v7 = 138543618;
    v8 = v3;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ connection interrupted from pid: %i", &v7, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained stop];

  v6 = *MEMORY[0x277D85DE8];
}

void __65__ATMessageLinkProxyListener_listener_shouldAcceptNewConnection___block_invoke_69(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryXPC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v7 = 138543618;
    v8 = v3;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ connection invalidated from pid: %i", &v7, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained stop];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ stopping", &v8, 0xCu);
  }

  listener = self->_listener;
  if (listener)
  {
    [(NSXPCListener *)listener invalidate];
    [(NSXPCListener *)self->_listener setDelegate:0];
    v5 = self->_listener;
    self->_listener = 0;
  }

  messageLink = self->_messageLink;
  self->_messageLink = 0;

  v7 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ starting", &v7, 0xCu);
  }

  anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
  listener = self->_listener;
  self->_listener = anonymousListener;

  [(NSXPCListener *)self->_listener setDelegate:self];
  [(NSXPCListener *)self->_listener resume];
  v6 = *MEMORY[0x277D85DE8];
}

- (ATMessageLinkProxyListener)initWithMessageLink:(id)link
{
  linkCopy = link;
  v9.receiver = self;
  v9.super_class = ATMessageLinkProxyListener;
  v6 = [(ATMessageLinkProxyListener *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messageLink, link);
  }

  return v7;
}

@end