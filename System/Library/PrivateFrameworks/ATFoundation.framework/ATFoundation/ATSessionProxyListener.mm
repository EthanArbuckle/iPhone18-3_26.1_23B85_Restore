@interface ATSessionProxyListener
- (ATSessionProxyListener)initWithSession:(id)session;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)sessionDidFinish:(id)finish;
- (void)start;
- (void)stop;
@end

@implementation ATSessionProxyListener

- (void)sessionDidFinish:(id)finish
{
  v4 = +[ATSessionServerListener sharedSessionServer];
  [v4 removeSession:self->_session];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v26 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  v9 = _ATLogCategoryXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v24 = 1024;
    v25 = processIdentifier;
    _os_log_impl(&dword_22392A000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Got connection from pid %i", buf, 0x12u);
  }

  v10 = [[ATSessionProxyConnection alloc] initWithSession:self->_session connection:connectionCopy];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ATSessionProxyListener_listener_shouldAcceptNewConnection___block_invoke;
  block[3] = &unk_2784E9608;
  block[4] = self;
  v12 = v10;
  v21 = v12;
  dispatch_sync(queue, block);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __61__ATSessionProxyListener_listener_shouldAcceptNewConnection___block_invoke_2;
  v18[3] = &unk_2784E9328;
  v18[4] = self;
  v19 = processIdentifier;
  [connectionCopy setInterruptionHandler:v18];
  objc_initWeak(buf, v12);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__ATSessionProxyListener_listener_shouldAcceptNewConnection___block_invoke_3;
  v15[3] = &unk_2784E93E8;
  v15[4] = self;
  v17 = processIdentifier;
  objc_copyWeak(&v16, buf);
  [connectionCopy setInvalidationHandler:v15];
  [(ATSessionProxyConnection *)v12 start];
  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

void __61__ATSessionProxyListener_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryXPC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection interrupted from pid: %i", &v6, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __61__ATSessionProxyListener_listener_shouldAcceptNewConnection___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryXPC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    *buf = 138543618;
    v13 = v3;
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection invalidated from pid: %i", buf, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained stop];
    v7 = *(a1 + 32);
    v8 = *(v7 + 24);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61__ATSessionProxyListener_listener_shouldAcceptNewConnection___block_invoke_4;
    v10[3] = &unk_2784E9608;
    v10[4] = v7;
    v11 = v6;
    dispatch_sync(v8, v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ stop", &v5, 0xCu);
  }

  [(NSXPCListener *)self->_listener invalidate];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ starting", &v5, 0xCu);
  }

  [(ATSession *)self->_session addObserver:self];
  [(NSXPCListener *)self->_listener resume];
  v4 = *MEMORY[0x277D85DE8];
}

- (ATSessionProxyListener)initWithSession:(id)session
{
  sessionCopy = session;
  v17.receiver = self;
  v17.super_class = ATSessionProxyListener;
  v6 = [(ATSessionProxyListener *)&v17 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    connections = v6->_connections;
    v6->_connections = v7;

    objc_storeStrong(&v6->_session, session);
    anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    listener = v6->_listener;
    v6->_listener = anonymousListener;

    [(NSXPCListener *)v6->_listener setDelegate:v6];
    endpoint = [(NSXPCListener *)v6->_listener endpoint];
    [(ATSession *)v6->_session setEndpoint:endpoint];

    v12 = objc_opt_class();
    Name = class_getName(v12);
    v14 = dispatch_queue_create(Name, 0);
    queue = v6->_queue;
    v6->_queue = v14;
  }

  return v6;
}

@end