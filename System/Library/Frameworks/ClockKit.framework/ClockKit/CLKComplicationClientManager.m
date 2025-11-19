@interface CLKComplicationClientManager
+ (id)sharedClientManager;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CLKComplicationClientManager)init;
- (NSDictionary)clientsByIdentifier;
- (id)waitForClientWithIdentifier:(id)a3 handler:(id)a4;
- (void)_addClient:(id)a3;
- (void)_removeClient:(id)a3;
- (void)dealloc;
- (void)enumerateClientsWithBlock:(id)a3;
- (void)stopWaitingForClientWithIdentifier:(id)a3 forToken:(id)a4;
@end

@implementation CLKComplicationClientManager

+ (id)sharedClientManager
{
  if (sharedClientManager_onceToken != -1)
  {
    +[CLKComplicationClientManager sharedClientManager];
  }

  v3 = sharedClientManager___sharedClientManager;

  return v3;
}

uint64_t __51__CLKComplicationClientManager_sharedClientManager__block_invoke()
{
  v0 = objc_alloc_init(CLKComplicationClientManager);
  v1 = sharedClientManager___sharedClientManager;
  sharedClientManager___sharedClientManager = v0;

  result = CLKIsClockFaceApp();
  if (result)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.ClockKit.complicationserver"];
    v4 = sharedClientManager___listener;
    sharedClientManager___listener = v3;

    [sharedClientManager___listener setDelegate:sharedClientManager___sharedClientManager];
    [sharedClientManager___listener resume];
    v5 = [@"com.apple.ClockKit.complicationservicedidstart" UTF8String];

    return notify_post(v5);
  }

  return result;
}

- (CLKComplicationClientManager)init
{
  v22.receiver = self;
  v22.super_class = CLKComplicationClientManager;
  v2 = [(CLKComplicationClientManager *)&v22 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clientsByIdentifier = v2->_clientsByIdentifier;
    v2->_clientsByIdentifier = v3;

    v5 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    clientsByIdentifierLock = v2->_clientsByIdentifierLock;
    v2->_clientsByIdentifierLock = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    waitForClientRegistriesByIdentifier = v2->_waitForClientRegistriesByIdentifier;
    v2->_waitForClientRegistriesByIdentifier = v7;

    v9 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    waitForClientRegistriesByIdentifierLock = v2->_waitForClientRegistriesByIdentifierLock;
    v2->_waitForClientRegistriesByIdentifierLock = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    anonymousClients = v2->_anonymousClients;
    v2->_anonymousClients = v11;

    v13 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    anonymousClientsLock = v2->_anonymousClientsLock;
    v2->_anonymousClientsLock = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    clientPIDs = v2->_clientPIDs;
    v2->_clientPIDs = v15;

    v17 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    clientPIDsLock = v2->_clientPIDsLock;
    v2->_clientPIDsLock = v17;

    v19 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    nextWaitForClientTokenValueLock = v2->_nextWaitForClientTokenValueLock;
    v2->_nextWaitForClientTokenValueLock = v19;
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CLKComplicationClientManager;
  [(CLKComplicationClientManager *)&v2 dealloc];
}

- (NSDictionary)clientsByIdentifier
{
  [(NSLock *)self->_clientsByIdentifierLock lock];
  v3 = [(NSMutableDictionary *)self->_clientsByIdentifier copy];
  [(NSLock *)self->_clientsByIdentifierLock unlock];

  return v3;
}

- (void)enumerateClientsWithBlock:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_clientsByIdentifierLock lock];
  v5 = [(NSMutableDictionary *)self->_clientsByIdentifier copy];
  [(NSLock *)self->_clientsByIdentifierLock unlock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__CLKComplicationClientManager_enumerateClientsWithBlock___block_invoke;
  v7[3] = &unk_278A1F628;
  v8 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

- (id)waitForClientWithIdentifier:(id)a3 handler:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(NSLock *)self->_clientsByIdentifierLock lock];
  v8 = [(NSMutableDictionary *)self->_clientsByIdentifier objectForKey:v6];
  [(NSLock *)self->_clientsByIdentifierLock unlock];
  if (v8)
  {
    v7[2](v7, v8);
    v9 = 0;
  }

  else
  {
    [(NSLock *)self->_nextWaitForClientTokenValueLock lock];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_nextWaitForClientTokenValue];
    nextWaitForClientTokenValueLock = self->_nextWaitForClientTokenValueLock;
    ++self->_nextWaitForClientTokenValue;
    [(NSLock *)nextWaitForClientTokenValueLock unlock];
    v11 = CLKLoggingObjectForDomain(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_23702D000, v11, OS_LOG_TYPE_DEFAULT, "Waiting for client with identifier %@ (token = %@)...", &v16, 0x16u);
    }

    [(NSLock *)self->_waitForClientRegistriesByIdentifierLock lock];
    v12 = [(NSMutableDictionary *)self->_waitForClientRegistriesByIdentifier objectForKey:v6];
    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(NSMutableDictionary *)self->_waitForClientRegistriesByIdentifier setObject:v12 forKey:v6];
    }

    [(NSLock *)self->_waitForClientRegistriesByIdentifierLock unlock];
    v13 = [v7 copy];
    v14 = MEMORY[0x2383C4AF0]();
    [v12 setObject:v14 forKey:v9];
  }

  return v9;
}

- (void)stopWaitingForClientWithIdentifier:(id)a3 forToken:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = CLKLoggingObjectForDomain(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_23702D000, v8, OS_LOG_TYPE_DEFAULT, "Stop waiting for client with identifier %@ (token = %@)...", &v10, 0x16u);
    }

    [(NSLock *)self->_waitForClientRegistriesByIdentifierLock lock];
    v9 = [(NSMutableDictionary *)self->_waitForClientRegistriesByIdentifier objectForKey:v6];
    [(NSLock *)self->_waitForClientRegistriesByIdentifierLock unlock];
    [v9 removeObjectForKey:v7];
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__CLKComplicationClientManager_listener_shouldAcceptNewConnection___block_invoke;
  v8[3] = &unk_278A1F590;
  v9 = v5;
  v10 = self;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  return 1;
}

void __67__CLKComplicationClientManager_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = [[CLKComplicationClient alloc] initWithConnection:*(a1 + 32)];
  [*(*(a1 + 40) + 48) lock];
  [*(*(a1 + 40) + 40) addObject:v2];
  [*(*(a1 + 40) + 48) unlock];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__CLKComplicationClientManager_listener_shouldAcceptNewConnection___block_invoke_2;
  v4[3] = &unk_278A1F650;
  v4[4] = *(a1 + 40);
  [(CLKComplicationClient *)v2 setCheckinHandler:v4];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__CLKComplicationClientManager_listener_shouldAcceptNewConnection___block_invoke_3;
  v3[3] = &unk_278A1F650;
  v3[4] = *(a1 + 40);
  [(CLKComplicationClient *)v2 setInvalidationHandler:v3];
  [*(a1 + 32) resume];
}

void __67__CLKComplicationClientManager_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 48);
  v4 = a2;
  [v3 lock];
  [*(*(a1 + 32) + 40) removeObject:v4];
  [*(*(a1 + 32) + 48) unlock];
  [*(a1 + 32) _addClient:v4];
}

void __67__CLKComplicationClientManager_listener_shouldAcceptNewConnection___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 48);
  v4 = a2;
  [v3 lock];
  [*(*(a1 + 32) + 40) removeObject:v4];
  [*(*(a1 + 32) + 48) unlock];
  [*(a1 + 32) _removeClient:v4];
}

- (void)_addClient:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 clientIdentifier];
  v6 = CLKLoggingObjectForDomain(1);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 138412290;
      v23 = v5;
      _os_log_impl(&dword_23702D000, v6, OS_LOG_TYPE_DEFAULT, "Adding client with identifier %@", buf, 0xCu);
    }

    [(NSLock *)self->_clientPIDsLock lock];
    clientPIDs = self->_clientPIDs;
    v9 = [v4 pid];
    [(NSMutableSet *)clientPIDs addObject:v9];

    [(NSLock *)self->_clientPIDsLock unlock];
    [(NSLock *)self->_clientsByIdentifierLock lock];
    [(NSMutableDictionary *)self->_clientsByIdentifier setObject:v4 forKey:v5];
    [(NSLock *)self->_clientsByIdentifierLock unlock];
    clientRegistrationHandler = self->_clientRegistrationHandler;
    if (clientRegistrationHandler)
    {
      clientRegistrationHandler[2](clientRegistrationHandler, v4);
    }

    [(NSLock *)self->_waitForClientRegistriesByIdentifierLock lock];
    v11 = [(NSMutableDictionary *)self->_waitForClientRegistriesByIdentifier objectForKey:v5];
    [(NSMutableDictionary *)self->_waitForClientRegistriesByIdentifier removeObjectForKey:v5];
    [(NSLock *)self->_waitForClientRegistriesByIdentifierLock unlock];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = [v11 allValues];
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v12);
          }

          (*(*(*(&v17 + 1) + 8 * v16++) + 16))();
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 138412290;
      v23 = v4;
      _os_log_impl(&dword_23702D000, v6, OS_LOG_TYPE_DEFAULT, "Invalidating client due to no identifier %@", buf, 0xCu);
    }

    [v4 invalidate];
  }
}

- (void)_removeClient:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CLKLoggingObjectForDomain(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 clientIdentifier];
    v20 = 138412290;
    v21 = v6;
    _os_log_impl(&dword_23702D000, v5, OS_LOG_TYPE_DEFAULT, "Removing client with identifier %@", &v20, 0xCu);
  }

  clientUnregistrationHandler = self->_clientUnregistrationHandler;
  if (clientUnregistrationHandler)
  {
    clientUnregistrationHandler[2](clientUnregistrationHandler, v4);
  }

  [(NSLock *)self->_clientsByIdentifierLock lock];
  clientsByIdentifier = self->_clientsByIdentifier;
  v9 = [v4 clientIdentifier];
  v10 = [(NSMutableDictionary *)clientsByIdentifier objectForKey:v9];

  if (v10 == v4)
  {
    v16 = self->_clientsByIdentifier;
    v17 = [v4 clientIdentifier];
    [(NSMutableDictionary *)v16 removeObjectForKey:v17];

    [(NSLock *)self->_clientPIDsLock lock];
    clientPIDs = self->_clientPIDs;
    v19 = [v4 pid];
    [(NSMutableSet *)clientPIDs removeObject:v19];

    [(NSLock *)self->_clientPIDsLock unlock];
  }

  else
  {
    v11 = CLKLoggingObjectForDomain(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v4 clientIdentifier];
      v13 = self->_clientsByIdentifier;
      v14 = [v4 clientIdentifier];
      v15 = [(NSMutableDictionary *)v13 objectForKey:v14];
      v20 = 138412802;
      v21 = v12;
      v22 = 2112;
      v23 = v4;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_23702D000, v11, OS_LOG_TYPE_DEFAULT, "Attempting to remove wrong CLKComplicationClient with identifier %@ (%@ for %@)", &v20, 0x20u);
    }
  }

  [(NSLock *)self->_clientsByIdentifierLock unlock];
}

@end