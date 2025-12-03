@interface ATSessionServerListener
+ (id)sharedSessionServer;
- (ATSessionServerListener)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_dumpDebugInformation;
- (void)addSession:(id)session;
- (void)cancelSessionWithIdentifier:(id)identifier completion:(id)completion;
- (void)fetchActiveSessionCountForSessionTypeIdentifier:(id)identifier completion:(id)completion;
- (void)fetchSessionsWithTypeIdentifier:(id)identifier completion:(id)completion;
- (void)removeSession:(id)session;
- (void)start;
- (void)stop;
@end

@implementation ATSessionServerListener

- (void)_dumpDebugInformation
{
  v24 = *MEMORY[0x277D85DE8];
  obj = self->_sessionProxiesBySessionID;
  objc_sync_enter(obj);
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSMutableDictionary *)self->_sessionProxiesBySessionID count];
    *buf = 138543618;
    selfCopy = self;
    v22 = 2048;
    v23 = v4;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ dumping info for %lu session proxies", buf, 0x16u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_sessionProxiesBySessionID objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = _ATLogCategoryFramework_Oversize();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          session = [v9 session];
          v12 = [session debugDescription];
          *buf = 138543362;
          selfCopy = v12;
          _os_log_impl(&dword_22392A000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  objc_sync_exit(obj);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)fetchActiveSessionCountForSessionTypeIdentifier:(id)identifier completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  selfCopy = self;
  completionCopy = completion;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_sessionProxiesBySessionID objectEnumerator];
  v8 = [objectEnumerator countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        if (identifierCopy)
        {
          session = [*(*(&v24 + 1) + 8 * i) session];
          sessionTypeIdentifier = [session sessionTypeIdentifier];
          v16 = [sessionTypeIdentifier isEqualToString:identifierCopy];

          if (!v16)
          {
            continue;
          }
        }

        session2 = [v13 session];
        if ([session2 isCancelled])
        {
        }

        else
        {
          session3 = [v13 session];
          v19 = ~[session3 isFinished];

          v10 += v19 & 1;
        }
      }

      v9 = [objectEnumerator countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v20 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v29 = selfCopy;
    v30 = 2048;
    v31 = v10;
    v32 = 2114;
    v33 = identifierCopy;
    _os_log_impl(&dword_22392A000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ found %lu active sessions for %{public}@", buf, 0x20u);
  }

  completionCopy[2](completionCopy, v10, 0);
  v21 = *MEMORY[0x277D85DE8];
}

- (void)cancelSessionWithIdentifier:(id)identifier completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v27 = 2114;
    v28 = identifierCopy;
    _os_log_impl(&dword_22392A000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ cancelling session. id=%{public}@", buf, 0x16u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_sessionProxiesBySessionID objectEnumerator];
  v10 = [objectEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        session = [v14 session];
        sessionIdentifier = [session sessionIdentifier];
        v17 = [sessionIdentifier isEqualToString:identifierCopy];

        if (v17)
        {
          session2 = [v14 session];
          [session2 cancel];
        }
      }

      v11 = [objectEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  completionCopy[2](completionCopy, 0);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)fetchSessionsWithTypeIdentifier:(id)identifier completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v21 = objc_opt_new();
  allSessions = [MEMORY[0x277CEA468] allSessions];
  v8 = [allSessions copy];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        sessionTypeIdentifier = [v14 sessionTypeIdentifier];
        if ([sessionTypeIdentifier isEqualToString:identifierCopy])
        {
          sessionProxiesBySessionID = self->_sessionProxiesBySessionID;
          sessionIdentifier = [v14 sessionIdentifier];
          v18 = [(NSMutableDictionary *)sessionProxiesBySessionID objectForKey:sessionIdentifier];

          if (v18)
          {
            [v21 addObject:v14];
          }
        }

        else
        {
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  completionCopy[2](completionCopy, v21, 0);
  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v19 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  v7 = _ATLogCategoryXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v17 = 1024;
    v18 = processIdentifier;
    _os_log_impl(&dword_22392A000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Got connection from pid %i", buf, 0x12u);
  }

  [connectionCopy setExportedObject:self];
  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2836FC920];
  [connectionCopy setExportedInterface:v8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__ATSessionServerListener_listener_shouldAcceptNewConnection___block_invoke;
  v13[3] = &unk_2784E9328;
  v13[4] = self;
  v14 = processIdentifier;
  [connectionCopy setInterruptionHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__ATSessionServerListener_listener_shouldAcceptNewConnection___block_invoke_56;
  v11[3] = &unk_2784E9328;
  v11[4] = self;
  v12 = processIdentifier;
  [connectionCopy setInvalidationHandler:v11];
  [connectionCopy resume];

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

void __62__ATSessionServerListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
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

void __62__ATSessionServerListener_listener_shouldAcceptNewConnection___block_invoke_56(uint64_t a1)
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
    _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection invalidated from pid: %i", &v6, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeSession:(id)session
{
  v20 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  sessionProxiesBySessionID = self->_sessionProxiesBySessionID;
  sessionIdentifier = [sessionCopy sessionIdentifier];
  v7 = [(NSMutableDictionary *)sessionProxiesBySessionID objectForKey:sessionIdentifier];

  if (v7)
  {
    [v7 stop];
    v8 = self->_sessionProxiesBySessionID;
    objc_sync_enter(v8);
    v9 = self->_sessionProxiesBySessionID;
    sessionIdentifier2 = [sessionCopy sessionIdentifier];
    [(NSMutableDictionary *)v9 removeObjectForKey:sessionIdentifier2];

    objc_sync_exit(v8);
  }

  v11 = _ATLogCategoryFramework();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  v13 = *MEMORY[0x277CEA420];
  if (v12)
  {
    v16 = 138543618;
    v17 = v13;
    v18 = 2114;
    v19 = sessionCopy;
    _os_log_impl(&dword_22392A000, v11, OS_LOG_TYPE_DEFAULT, "posting %{public}@ notification for removing session %{public}@", &v16, 0x16u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, v13, 0, 0, 1u);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)addSession:(id)session
{
  v18 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = [[ATSessionProxyListener alloc] initWithSession:sessionCopy];
  v6 = self->_sessionProxiesBySessionID;
  objc_sync_enter(v6);
  sessionProxiesBySessionID = self->_sessionProxiesBySessionID;
  sessionIdentifier = [sessionCopy sessionIdentifier];
  [(NSMutableDictionary *)sessionProxiesBySessionID setObject:v5 forKey:sessionIdentifier];

  objc_sync_exit(v6);
  [(ATSessionProxyListener *)v5 start];
  v9 = _ATLogCategoryFramework();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  v11 = *MEMORY[0x277CEA420];
  if (v10)
  {
    v14 = 138543618;
    v15 = v11;
    v16 = 2114;
    v17 = sessionCopy;
    _os_log_impl(&dword_22392A000, v9, OS_LOG_TYPE_DEFAULT, "posting %{public}@ notification for adding session %{public}@", &v14, 0x16u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, v11, 0, 0, 1u);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
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
    selfCopy = self;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ starting", &v8, 0xCu);
  }

  v4 = objc_alloc(MEMORY[0x277CCAE98]);
  v5 = [v4 initWithMachServiceName:*MEMORY[0x277CEA400]];
  listener = self->_listener;
  self->_listener = v5;

  [(NSXPCListener *)self->_listener setDelegate:self];
  [(NSXPCListener *)self->_listener resume];
  v7 = *MEMORY[0x277D85DE8];
}

- (ATSessionServerListener)init
{
  v7.receiver = self;
  v7.super_class = ATSessionServerListener;
  v2 = [(ATSessionServerListener *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sessionProxiesBySessionID = v2->_sessionProxiesBySessionID;
    v2->_sessionProxiesBySessionID = v3;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__dumpDebugInformation name:*MEMORY[0x277CEA3D8] object:0];
  }

  return v2;
}

+ (id)sharedSessionServer
{
  if (sharedSessionServer_onceToken != -1)
  {
    dispatch_once(&sharedSessionServer_onceToken, &__block_literal_global_330);
  }

  v3 = sharedSessionServer_server;

  return v3;
}

uint64_t __46__ATSessionServerListener_sharedSessionServer__block_invoke()
{
  sharedSessionServer_server = objc_alloc_init(ATSessionServerListener);

  return MEMORY[0x2821F96F8]();
}

@end