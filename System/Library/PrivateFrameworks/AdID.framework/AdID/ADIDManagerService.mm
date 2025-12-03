@interface ADIDManagerService
+ (id)sharedInstance;
- (ADIDManagerService)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (unint64_t)delayForNewForceReconcileRequest;
- (void)forceReconcile:(id)reconcile;
@end

@implementation ADIDManagerService

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__ADIDManagerService_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__onceToken != -1)
  {
    dispatch_once(&sharedInstance__onceToken, block);
  }

  v2 = sharedInstance__instance;

  return v2;
}

uint64_t __36__ADIDManagerService_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance__instance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (ADIDManagerService)init
{
  v11.receiver = self;
  v11.super_class = ADIDManagerService;
  v2 = [(ADIDManagerService *)&v11 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    reconcileArray = v2->_reconcileArray;
    v2->_reconcileArray = array;

    v5 = dispatch_queue_create("com.apple.ap.adprivacyd.forceReconcile", 0);
    forceReconcileQueue = v2->_forceReconcileQueue;
    v2->_forceReconcileQueue = v5;

    v7 = objc_alloc(MEMORY[0x277CCAE98]);
    v8 = [v7 initWithMachServiceName:*MEMORY[0x277CE95B8]];
    listener = v2->_listener;
    v2->_listener = v8;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.private.ap.idmanager"];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    [connectionCopy setExportedObject:self];
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28510D318];
    [connectionCopy setExportedInterface:v8];

    [connectionCopy setInvalidationHandler:&__block_literal_global_1];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Accepted connection from ID manager client."];
    _ADLog();

    [connectionCopy resume];
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Rejected ID manager client with PID %d lacking the appropriate entitlement (%@).", objc_msgSend(connectionCopy, "processIdentifier"), @"com.apple.private.ap.idmanager"];
    _ADLog();
  }

  return bOOLValue;
}

void __57__ADIDManagerService_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"XPC connection invalidated. Lost connection from ID manager client."];
  _ADLog();
}

- (void)forceReconcile:(id)reconcile
{
  reconcileCopy = reconcile;
  delayForNewForceReconcileRequest = [(ADIDManagerService *)self delayForNewForceReconcileRequest];
  if (delayForNewForceReconcileRequest)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Delaying forceReconcile for %lu seconds.", delayForNewForceReconcileRequest];
    _ADLog();
  }

  v7 = dispatch_time(0, 1000000000 * delayForNewForceReconcileRequest);
  forceReconcileQueue = self->_forceReconcileQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ADIDManagerService_forceReconcile___block_invoke;
  block[3] = &unk_278C57FC8;
  v11 = reconcileCopy;
  v9 = reconcileCopy;
  dispatch_after(v7, forceReconcileQueue, block);
}

void __37__ADIDManagerService_forceReconcile___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CE96B8] workQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37__ADIDManagerService_forceReconcile___block_invoke_2;
  v3[3] = &unk_278C57FC8;
  v4 = *(a1 + 32);
  [v2 addOperationWithBlock:v3];
}

void __37__ADIDManagerService_forceReconcile___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CE9658] sharedInstance];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37__ADIDManagerService_forceReconcile___block_invoke_3;
  v3[3] = &unk_278C57FA0;
  v4 = *(a1 + 32);
  [v2 reconcile:v3];
}

void __37__ADIDManagerService_forceReconcile___block_invoke_3(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = [v3 domain];
    v7 = [v4 code];
    v14 = @"Error Description";
    v8 = [v4 description];
    v15[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = [v5 errorWithDomain:v6 code:v7 userInfo:v9];

    v11 = *(a1 + 32);
    if (v11)
    {
      (*(v11 + 16))(v11, v10);
    }
  }

  else
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      (*(v12 + 16))(v12, 0);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (unint64_t)delayForNewForceReconcileRequest
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  date = [MEMORY[0x277CBEAA8] date];
  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = selfCopy->_reconcileArray;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        [date timeIntervalSinceDate:v9];
        if (v10 > 30.0)
        {
          [array addObject:v9];
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)selfCopy->_reconcileArray removeObjectsInArray:array];
  [(NSMutableArray *)selfCopy->_reconcileArray addObject:date];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Times that a forceReconcile have been requested: %@", selfCopy->_reconcileArray];
  _ADLog();

  v12 = [(NSMutableArray *)selfCopy->_reconcileArray count];
  objc_sync_exit(selfCopy);

  v13 = *MEMORY[0x277D85DE8];
  return v12 - 1;
}

@end