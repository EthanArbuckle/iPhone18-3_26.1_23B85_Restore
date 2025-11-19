@interface ASReachabilityManager
+ (id)sharedInstanceForServiceIdentifier:(id)a3;
- (id)_initWithServiceIdentifier:(id)a3;
- (void)_addDestinationsToQuery:(id)a3 updateHandler:(id)a4 completionHandler:(id)a5;
- (void)queryDestinations:(id)a3 updateHandler:(id)a4 completionHandler:(id)a5;
@end

@implementation ASReachabilityManager

+ (id)sharedInstanceForServiceIdentifier:(id)a3
{
  v3 = a3;
  if (sharedInstanceForServiceIdentifier__once != -1)
  {
    +[ASReachabilityManager sharedInstanceForServiceIdentifier:];
  }

  v4 = [sharedInstanceForServiceIdentifier__sharedInstanceByServiceIdentifier objectForKey:v3];
  if (!v4)
  {
    v4 = [[ASReachabilityManager alloc] _initWithServiceIdentifier:v3];
    [sharedInstanceForServiceIdentifier__sharedInstanceByServiceIdentifier setObject:v4 forKey:v3];
  }

  return v4;
}

uint64_t __60__ASReachabilityManager_sharedInstanceForServiceIdentifier___block_invoke()
{
  sharedInstanceForServiceIdentifier__sharedInstanceByServiceIdentifier = [MEMORY[0x277CBEB38] dictionary];

  return MEMORY[0x2821F96F8]();
}

- (id)_initWithServiceIdentifier:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = ASReachabilityManager;
  v6 = [(ASReachabilityManager *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceIdentifier, a3);
    v8 = objc_alloc_init(ASReachabilityStatusCache);
    statusCache = v7->_statusCache;
    v7->_statusCache = v8;

    v10 = objc_alloc_init(MEMORY[0x277CCABD8]);
    queryOperationQueue = v7->_queryOperationQueue;
    v7->_queryOperationQueue = v10;

    [(NSOperationQueue *)v7->_queryOperationQueue setMaxConcurrentOperationCount:1];
    v12 = HKCreateSerialDispatchQueue();
    [(NSOperationQueue *)v7->_queryOperationQueue setUnderlyingQueue:v12];
  }

  return v7;
}

- (void)_addDestinationsToQuery:(id)a3 updateHandler:(id)a4 completionHandler:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  ASLoggingInitialize();
  v11 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    *buf = 134217984;
    v40 = [v8 count];
    _os_log_impl(&dword_23E4FA000, v12, OS_LOG_TYPE_DEFAULT, "Reachability: Request for %lu destinations", buf, 0xCu);
  }

  v13 = [(ASReachabilityStatusCache *)self->_statusCache statusesForDestinations:v8];
  if ([v13 count])
  {
    ASLoggingInitialize();
    v14 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [v13 count];
      *buf = 134217984;
      v40 = v16;
      _os_log_impl(&dword_23E4FA000, v15, OS_LOG_TYPE_DEFAULT, "Reachability: Hit %lu destinations in cache first pass", buf, 0xCu);
    }

    v9[2](v9, v13);
  }

  v17 = MEMORY[0x277CCAC30];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __81__ASReachabilityManager__addDestinationsToQuery_updateHandler_completionHandler___block_invoke;
  v36[3] = &unk_278C462A0;
  v18 = v13;
  v37 = v18;
  v19 = [v17 predicateWithBlock:v36];
  v20 = [v8 filteredSetUsingPredicate:v19];

  if ([v20 count])
  {
    v21 = objc_alloc_init(ASReachabilityQueryOperation);
    [(ASReachabilityQueryOperation *)v21 setUpdateHandler:v9];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __81__ASReachabilityManager__addDestinationsToQuery_updateHandler_completionHandler___block_invoke_2;
    v33[3] = &unk_278C462C8;
    v34 = v18;
    v28 = v10;
    v35 = v10;
    [(ASReachabilityQueryOperation *)v21 setCompletionHandler:v33];
    [(ASReachabilityQueryOperation *)v21 setDestinations:v20];
    [(ASReachabilityQueryOperation *)v21 setStatusCache:self->_statusCache];
    [(ASReachabilityQueryOperation *)v21 setServiceIdentifier:self->_serviceIdentifier];
    [(ASReachabilityQueryOperation *)v21 setQueuePriority:8];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v22 = [(NSOperationQueue *)self->_queryOperationQueue operations];
    v23 = [v22 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v30;
      do
      {
        v26 = 0;
        do
        {
          if (*v30 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [*(*(&v29 + 1) + 8 * v26++) setQueuePriority:-4];
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v24);
    }

    [(NSOperationQueue *)self->_queryOperationQueue addOperation:v21];
    v10 = v28;
  }

  else
  {
    (*(v10 + 2))(v10, v18);
  }

  v27 = *MEMORY[0x277D85DE8];
}

BOOL __81__ASReachabilityManager__addDestinationsToQuery_updateHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  v3 = v2 == 0;

  return v3;
}

void __81__ASReachabilityManager__addDestinationsToQuery_updateHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 mutableCopy];
  [v5 addEntriesFromDictionary:v4];

  (*(*(a1 + 40) + 16))();
}

- (void)queryDestinations:(id)a3 updateHandler:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v12 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__ASReachabilityManager_queryDestinations_updateHandler_completionHandler___block_invoke;
  v13[3] = &unk_278C46318;
  v14 = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__ASReachabilityManager_queryDestinations_updateHandler_completionHandler___block_invoke_3;
  v11[3] = &unk_278C46318;
  v9 = v12;
  v10 = v8;
  [(ASReachabilityManager *)self _addDestinationsToQuery:a3 updateHandler:v13 completionHandler:v11];
}

void __75__ASReachabilityManager_queryDestinations_updateHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __75__ASReachabilityManager_queryDestinations_updateHandler_completionHandler___block_invoke_2;
    v4[3] = &unk_278C462F0;
    v6 = *(a1 + 32);
    v5 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }
}

void __75__ASReachabilityManager_queryDestinations_updateHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __75__ASReachabilityManager_queryDestinations_updateHandler_completionHandler___block_invoke_4;
    v4[3] = &unk_278C462F0;
    v6 = *(a1 + 32);
    v5 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }
}

@end