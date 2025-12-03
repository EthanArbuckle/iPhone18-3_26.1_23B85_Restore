@interface AVTCoreDataRemoteChangesObserver
- (AVTCoreDataRemoteChangesObserver)initWithConfiguration:(id)configuration workQueue:(id)queue coalescer:(id)coalescer environment:(id)environment;
- (BOOL)isObservingChanges;
- (id)changeTransactionsForToken:(id)token managedObjectContext:(id)context;
- (void)addChangesHandler:(id)handler;
- (void)performManagedObjectContextWork:(id)work;
- (void)processRemoteChangeNotification:(id)notification completion:(id)completion;
- (void)registerCoalescerEventHandler;
- (void)startObservingChanges;
@end

@implementation AVTCoreDataRemoteChangesObserver

- (AVTCoreDataRemoteChangesObserver)initWithConfiguration:(id)configuration workQueue:(id)queue coalescer:(id)coalescer environment:(id)environment
{
  configurationCopy = configuration;
  queueCopy = queue;
  coalescerCopy = coalescer;
  environmentCopy = environment;
  v24.receiver = self;
  v24.super_class = AVTCoreDataRemoteChangesObserver;
  v15 = [(AVTCoreDataRemoteChangesObserver *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_configuration, configuration);
    logger = [environmentCopy logger];
    logger = v16->_logger;
    v16->_logger = logger;

    objc_storeStrong(&v16->_workQueue, queue);
    objc_storeStrong(&v16->_coalescer, coalescer);
    objc_storeStrong(&v16->_environment, environment);
    array = [MEMORY[0x277CBEB18] array];
    changeHandlers = v16->_changeHandlers;
    v16->_changeHandlers = array;

    array2 = [MEMORY[0x277CBEB18] array];
    transactionsForPendingChanges = v16->_transactionsForPendingChanges;
    v16->_transactionsForPendingChanges = array2;
  }

  return v16;
}

- (void)addChangesHandler:(id)handler
{
  handlerCopy = handler;
  observationToken = [(AVTCoreDataRemoteChangesObserver *)self observationToken];

  if (observationToken)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Add handler before starting to observe!"];
  }

  changeHandlers = [(AVTCoreDataRemoteChangesObserver *)self changeHandlers];
  v6 = [handlerCopy copy];

  v7 = MEMORY[0x245CF3540](v6);
  [changeHandlers addObject:v7];
}

- (void)registerCoalescerEventHandler
{
  objc_initWeak(&location, self);
  coalescer = [(AVTCoreDataRemoteChangesObserver *)self coalescer];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__AVTCoreDataRemoteChangesObserver_registerCoalescerEventHandler__block_invoke;
  v4[3] = &unk_278CFA408;
  objc_copyWeak(&v5, &location);
  [coalescer registerEventForCoalescingWithLabel:@"NSPersistentStoreRemoteChangeNotification" handler:v4];

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
  observationToken = [(AVTCoreDataRemoteChangesObserver *)self observationToken];

  if (observationToken)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Already observing!"];
  }

  [(AVTCoreDataRemoteChangesObserver *)self registerCoalescerEventHandler];
  configuration = [(AVTCoreDataRemoteChangesObserver *)self configuration];
  persistentStoreCoordinator = [configuration persistentStoreCoordinator];

  logger = [(AVTCoreDataRemoteChangesObserver *)self logger];
  v7 = [persistentStoreCoordinator description];
  [logger logStartObservingRemoteChangeNotificationFrom:v7];

  objc_initWeak(&location, self);
  environment = [(AVTCoreDataRemoteChangesObserver *)self environment];
  notificationCenter = [environment notificationCenter];
  v10 = *MEMORY[0x277CBE260];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __57__AVTCoreDataRemoteChangesObserver_startObservingChanges__block_invoke;
  v15 = &unk_278CFA0D0;
  objc_copyWeak(&v16, &location);
  v11 = [notificationCenter addObserverForName:v10 object:persistentStoreCoordinator queue:0 usingBlock:&v12];
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
  observationToken = [(AVTCoreDataRemoteChangesObserver *)self observationToken];
  v3 = observationToken != 0;

  return v3;
}

- (void)processRemoteChangeNotification:(id)notification completion:(id)completion
{
  notificationCopy = notification;
  completionCopy = completion;
  logger = [(AVTCoreDataRemoteChangesObserver *)self logger];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__AVTCoreDataRemoteChangesObserver_processRemoteChangeNotification_completion___block_invoke;
  v11[3] = &unk_278CFA7B0;
  v11[4] = self;
  v12 = notificationCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = notificationCopy;
  [logger processingRemoteChangeNotification:v11];
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

- (id)changeTransactionsForToken:(id)token managedObjectContext:(id)context
{
  contextCopy = context;
  tokenCopy = token;
  logger = [(AVTCoreDataRemoteChangesObserver *)self logger];
  v9 = [tokenCopy description];
  [logger logInspectingChangesForExportAfterToken:v9];

  v10 = [MEMORY[0x277CBE4B0] fetchHistoryTransactionForToken:tokenCopy];

  [v10 setResultType:5];
  v17 = 0;
  v11 = [contextCopy executeRequest:v10 error:&v17];

  v12 = v17;
  if (v11)
  {
    result = [v11 result];
  }

  else
  {
    logger2 = [(AVTCoreDataRemoteChangesObserver *)self logger];
    v15 = [v12 description];
    [logger2 logErrorFetchingChangeHistory:v15];

    result = 0;
  }

  return result;
}

- (void)performManagedObjectContextWork:(id)work
{
  workCopy = work;
  configuration = [(AVTCoreDataRemoteChangesObserver *)self configuration];
  createManagedObjectContext = [configuration createManagedObjectContext];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__AVTCoreDataRemoteChangesObserver_performManagedObjectContextWork___block_invoke;
  v9[3] = &unk_278CFA5D0;
  v10 = createManagedObjectContext;
  selfCopy = self;
  v12 = workCopy;
  v7 = workCopy;
  v8 = createManagedObjectContext;
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