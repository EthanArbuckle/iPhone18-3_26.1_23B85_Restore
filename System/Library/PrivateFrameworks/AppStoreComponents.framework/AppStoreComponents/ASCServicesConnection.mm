@interface ASCServicesConnection
+ (ASCServicesConnection)sharedConnection;
+ (OS_os_log)log;
- (ASCServicesConnection)init;
- (NSXPCConnection)connection;
- (id)offerStateServiceWithDelegate:(id)delegate;
- (id)serviceWithBlock:(id)block;
- (id)testConnection;
- (void)connectionWasInterrupted;
- (void)connectionWasInvalidated;
@end

@implementation ASCServicesConnection

+ (ASCServicesConnection)sharedConnection
{
  if (sharedConnection_onceToken != -1)
  {
    +[ASCServicesConnection sharedConnection];
  }

  v3 = sharedConnection_sharedConnection;

  return v3;
}

uint64_t __41__ASCServicesConnection_sharedConnection__block_invoke()
{
  sharedConnection_sharedConnection = objc_alloc_init(ASCServicesConnection);

  return MEMORY[0x2821F96F8]();
}

- (ASCServicesConnection)init
{
  v7.receiver = self;
  v7.super_class = ASCServicesConnection;
  v2 = [(ASCServicesConnection *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.AppStoreComponents.ServiceConnection", v3);
    workQueue = v2->_workQueue;
    v2->_workQueue = v4;
  }

  return v2;
}

- (NSXPCConnection)connection
{
  workQueue = [(ASCServicesConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  connectionIfValid = [(ASCServicesConnection *)self connectionIfValid];
  v5 = connectionIfValid;
  if (connectionIfValid)
  {
    v6 = connectionIfValid;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.appstorecomponentsd.xpc" options:0];
    v7 = ASCServiceBrokerGetInterface();
    [v6 setRemoteObjectInterface:v7];

    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __35__ASCServicesConnection_connection__block_invoke;
    v12[3] = &unk_2781CBD28;
    objc_copyWeak(&v13, &location);
    [v6 setInterruptionHandler:v12];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __35__ASCServicesConnection_connection__block_invoke_2;
    v10[3] = &unk_2781CBD28;
    objc_copyWeak(&v11, &location);
    [v6 setInvalidationHandler:v10];
    workQueue2 = [(ASCServicesConnection *)self workQueue];
    [v6 _setQueue:workQueue2];

    [v6 resume];
    [(ASCServicesConnection *)self setConnectionIfValid:v6];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v6;
}

+ (OS_os_log)log
{
  if (log_onceToken_9 != -1)
  {
    +[ASCServicesConnection log];
  }

  v3 = log_log_9;

  return v3;
}

uint64_t __28__ASCServicesConnection_log__block_invoke()
{
  log_log_9 = os_log_create("com.apple.AppStoreComponents", "ASCServicesConnection");

  return MEMORY[0x2821F96F8]();
}

void __35__ASCServicesConnection_connection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionWasInterrupted];
}

void __35__ASCServicesConnection_connection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionWasInvalidated];
}

- (void)connectionWasInterrupted
{
  workQueue = [(ASCServicesConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = +[ASCServicesConnection log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_21571A000, v4, OS_LOG_TYPE_INFO, "daemon connection interrupted", v6, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ASCServicesConnectionWasInterruptedNotification" object:self];
}

- (void)connectionWasInvalidated
{
  workQueue = [(ASCServicesConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = +[ASCServicesConnection log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_21571A000, v4, OS_LOG_TYPE_INFO, "daemon connection invalidated", v6, 2u);
  }

  [(ASCServicesConnection *)self setConnectionIfValid:0];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ASCServicesConnectionWasInvalidatedNotification" object:self];
}

- (id)serviceWithBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(MEMORY[0x277CEE600]);
  workQueue = [(ASCServicesConnection *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ASCServicesConnection_serviceWithBlock___block_invoke;
  block[3] = &unk_2781CD008;
  block[4] = self;
  v7 = v5;
  v13 = v7;
  v14 = blockCopy;
  v8 = blockCopy;
  dispatch_async(workQueue, block);

  v9 = v14;
  v10 = v7;

  return v7;
}

void __42__ASCServicesConnection_serviceWithBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__ASCServicesConnection_serviceWithBlock___block_invoke_2;
  v4[3] = &unk_2781CBB80;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];

  (*(*(a1 + 48) + 16))();
}

- (id)testConnection
{
  v3 = objc_alloc_init(MEMORY[0x277CEE5F0]);
  workQueue = [(ASCServicesConnection *)self workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__ASCServicesConnection_testConnection__block_invoke;
  v9[3] = &unk_2781CC1F8;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_async(workQueue, v9);

  v6 = v10;
  v7 = v5;

  return v5;
}

void __39__ASCServicesConnection_testConnection__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__ASCServicesConnection_testConnection__block_invoke_2;
  v6[3] = &unk_2781CBB80;
  v7 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v6];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__ASCServicesConnection_testConnection__block_invoke_3;
  v4[3] = &unk_2781CBB80;
  v5 = *(a1 + 40);
  [v3 testConnectionWithReplyHandler:v4];
}

uint64_t __39__ASCServicesConnection_testConnection__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithError:a2];
  }

  else
  {
    return [v2 finishWithSuccess];
  }
}

void __45__ASCServicesConnection_lockupFetcherService__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 completionHandlerAdapter];
  [v4 getLockupFetcherServiceWithReplyHandler:v5];
}

void __39__ASCServicesConnection_metricsService__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 completionHandlerAdapter];
  [v4 getMetricsServiceWithReplyHandler:v5];
}

- (id)offerStateServiceWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__ASCServicesConnection_offerStateServiceWithDelegate___block_invoke;
  v8[3] = &unk_2781CD050;
  v9 = delegateCopy;
  v5 = delegateCopy;
  v6 = [(ASCServicesConnection *)self serviceWithBlock:v8];

  return v6;
}

void __55__ASCServicesConnection_offerStateServiceWithDelegate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 completionHandlerAdapter];
  [v5 getAppOfferStateServiceForDelegate:v4 withReplyHandler:v6];
}

void __39__ASCServicesConnection_utilityService__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 completionHandlerAdapter];
  [v4 getUtilityServiceWithReplyHandler:v5];
}

@end