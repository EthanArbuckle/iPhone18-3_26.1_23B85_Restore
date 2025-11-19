@interface AVTCoreDataRemoteChangesObserver
- (AVTCoreDataRemoteChangesObserver)initWithConfiguration:(id)a3 workQueue:(id)a4 coalescer:(id)a5 environment:(id)a6;
- (BOOL)isObservingChanges;
- (id)changeTransactionsForToken:(id)a3 managedObjectContext:(id)a4;
- (void)addChangesHandler:(id)a3;
- (void)performManagedObjectContextWork:(id)a3;
- (void)processRemoteChangeNotification:(id)a3 completion:(id)a4;
- (void)registerCoalescerEventHandler;
- (void)startObservingChanges;
@end

@implementation AVTCoreDataRemoteChangesObserver

- (AVTCoreDataRemoteChangesObserver)initWithConfiguration:(id)a3 workQueue:(id)a4 coalescer:(id)a5 environment:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = AVTCoreDataRemoteChangesObserver;
  v15 = [(AVTCoreDataRemoteChangesObserver *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_configuration, a3);
    v17 = [v14 logger];
    logger = v16->_logger;
    v16->_logger = v17;

    objc_storeStrong(&v16->_workQueue, a4);
    objc_storeStrong(&v16->_coalescer, a5);
    objc_storeStrong(&v16->_environment, a6);
    v19 = [MEMORY[0x277CBEB18] array];
    changeHandlers = v16->_changeHandlers;
    v16->_changeHandlers = v19;

    v21 = [MEMORY[0x277CBEB18] array];
    transactionsForPendingChanges = v16->_transactionsForPendingChanges;
    v16->_transactionsForPendingChanges = v21;
  }

  return v16;
}

- (void)addChangesHandler:(id)a3
{
  v4 = a3;
  v5 = [(AVTCoreDataRemoteChangesObserver *)self observationToken];

  if (v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Add handler before starting to observe!"];
  }

  v8 = [(AVTCoreDataRemoteChangesObserver *)self changeHandlers];
  v6 = [v4 copy];

  v7 = MEMORY[0x245CF3540](v6);
  [v8 addObject:v7];
}

- (void)registerCoalescerEventHandler
{
  objc_initWeak(&location, self);
  v3 = [(AVTCoreDataRemoteChangesObserver *)self coalescer];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__AVTCoreDataRemoteChangesObserver_registerCoalescerEventHandler__block_invoke;
  v4[3] = &unk_278CFA408;
  objc_copyWeak(&v5, &location);
  [v3 registerEventForCoalescingWithLabel:@"NSPersistentStoreRemoteChangeNotification" handler:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __65__AVTCoreDataRemoteChangesObserver_registerCoalescerEventHandler__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __65__AVTCoreDataRemoteChangesObserver_registerCoalescerEventHandler__block_invoke_2;
  v2[3] = &unk_278CFA6E8;
  v2[4] = WeakRetained;
  [WeakRetained performManagedObjectContextWork:v2];
}

void __65__AVTCoreDataRemoteChangesObserver_registerCoalescerEventHandler__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) transactionsForPendingChanges];
  v5 = [v4 copy];

  v6 = [*(a1 + 32) transactionsForPendingChanges];
  [v6 removeAllObjects];

  v7 = [*(a1 + 32) logger];
  v8 = [v5 count];
  v9 = [*(a1 + 32) changeHandlers];
  [v7 logDispatchingRemoteChangeWithTransactionCount:v8 handlersCount:{objc_msgSend(v9, "count")}];

  v10 = [*(a1 + 32) changeHandlers];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__AVTCoreDataRemoteChangesObserver_registerCoalescerEventHandler__block_invoke_3;
  v13[3] = &unk_278CFA6C0;
  v14 = v3;
  v15 = v5;
  v11 = v5;
  v12 = v3;
  [v10 enumerateObjectsUsingBlock:v13];
}

- (void)startObservingChanges
{
  v3 = [(AVTCoreDataRemoteChangesObserver *)self observationToken];

  if (v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Already observing!"];
  }

  [(AVTCoreDataRemoteChangesObserver *)self registerCoalescerEventHandler];
  v4 = [(AVTCoreDataRemoteChangesObserver *)self configuration];
  v5 = [v4 persistentStoreCoordinator];

  v6 = [(AVTCoreDataRemoteChangesObserver *)self logger];
  v7 = [v5 description];
  [v6 logStartObservingRemoteChangeNotificationFrom:v7];

  objc_initWeak(&location, self);
  v8 = [(AVTCoreDataRemoteChangesObserver *)self environment];
  v9 = [v8 notificationCenter];
  v10 = *MEMORY[0x277CBE260];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __57__AVTCoreDataRemoteChangesObserver_startObservingChanges__block_invoke;
  v15 = &unk_278CFA0D0;
  objc_copyWeak(&v16, &location);
  v11 = [v9 addObserverForName:v10 object:v5 queue:0 usingBlock:&v12];
  [(AVTCoreDataRemoteChangesObserver *)self setObservationToken:v11, v12, v13, v14, v15];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __57__AVTCoreDataRemoteChangesObserver_startObservingChanges__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = os_transaction_create();
    v6 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__AVTCoreDataRemoteChangesObserver_startObservingChanges__block_invoke_2;
    block[3] = &unk_278CFA738;
    block[4] = WeakRetained;
    v9 = v3;
    v10 = v5;
    v7 = v5;
    dispatch_async(v6, block);
  }
}

void __57__AVTCoreDataRemoteChangesObserver_startObservingChanges__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__AVTCoreDataRemoteChangesObserver_startObservingChanges__block_invoke_3;
  v3[3] = &unk_278CFA710;
  v4 = *(a1 + 48);
  [v1 processRemoteChangeNotification:v2 completion:v3];
}

- (BOOL)isObservingChanges
{
  v2 = [(AVTCoreDataRemoteChangesObserver *)self observationToken];
  v3 = v2 != 0;

  return v3;
}

- (void)processRemoteChangeNotification:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVTCoreDataRemoteChangesObserver *)self logger];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__AVTCoreDataRemoteChangesObserver_processRemoteChangeNotification_completion___block_invoke;
  v11[3] = &unk_278CFA7B0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 processingRemoteChangeNotification:v11];
}

void __79__AVTCoreDataRemoteChangesObserver_processRemoteChangeNotification_completion___block_invoke(id *a1)
{
  v2 = [a1[4] logger];
  v3 = [a1[5] description];
  v4 = [a1[5] object];
  v5 = [v3 stringByAppendingFormat:@" object:%@", v4];
  [v2 logReceivedRemoteChange:v5];

  v6 = [a1[5] userInfo];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CBE200]];

  v8 = a1[4];
  if (v7)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __79__AVTCoreDataRemoteChangesObserver_processRemoteChangeNotification_completion___block_invoke_2;
    v10[3] = &unk_278CFA788;
    v10[4] = v8;
    v11 = v7;
    v12 = a1[6];
    [v8 performManagedObjectContextWork:v10];
  }

  else
  {
    v9 = [a1[4] logger];
    [v9 logNotificationDoesntContainChangeHistoryToken];

    (*(a1[6] + 2))();
  }
}

void __79__AVTCoreDataRemoteChangesObserver_processRemoteChangeNotification_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) changeTransactionsForToken:*(a1 + 40) managedObjectContext:a2];
  v4 = [*(a1 + 32) transactionsForPendingChanges];
  [v4 addObjectsFromArray:v3];

  v5 = [*(a1 + 32) coalescer];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__AVTCoreDataRemoteChangesObserver_processRemoteChangeNotification_completion___block_invoke_3;
  v6[3] = &unk_278CFA760;
  v7 = *(a1 + 48);
  [v5 eventDidOccur:v6];
}

- (id)changeTransactionsForToken:(id)a3 managedObjectContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AVTCoreDataRemoteChangesObserver *)self logger];
  v9 = [v7 description];
  [v8 logInspectingChangesForExportAfterToken:v9];

  v10 = [MEMORY[0x277CBE4B0] fetchHistoryTransactionForToken:v7];

  [v10 setResultType:5];
  v17 = 0;
  v11 = [v6 executeRequest:v10 error:&v17];

  v12 = v17;
  if (v11)
  {
    v13 = [v11 result];
  }

  else
  {
    v14 = [(AVTCoreDataRemoteChangesObserver *)self logger];
    v15 = [v12 description];
    [v14 logErrorFetchingChangeHistory:v15];

    v13 = 0;
  }

  return v13;
}

- (void)performManagedObjectContextWork:(id)a3
{
  v4 = a3;
  v5 = [(AVTCoreDataRemoteChangesObserver *)self configuration];
  v6 = [v5 createManagedObjectContext];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__AVTCoreDataRemoteChangesObserver_performManagedObjectContextWork___block_invoke;
  v9[3] = &unk_278CFA5D0;
  v10 = v6;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v6;
  [v8 performBlockAndWait:v9];
}

void __68__AVTCoreDataRemoteChangesObserver_performManagedObjectContextWork___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBE4F8] currentQueryGenerationToken];
  v9 = 0;
  v4 = [v2 setQueryGenerationFromToken:v3 error:&v9];
  v5 = v9;

  if (v4)
  {
    v6 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = [*(a1 + 40) logger];
    v8 = [v5 description];
    [v7 logErrorPinningContextToCurrentQueryGenerationToken:v8];
  }
}

@end