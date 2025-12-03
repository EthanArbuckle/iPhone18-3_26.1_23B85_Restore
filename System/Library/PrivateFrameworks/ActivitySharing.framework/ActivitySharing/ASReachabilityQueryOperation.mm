@interface ASReachabilityQueryOperation
- (ASReachabilityQueryOperation)init;
- (ASReachabilityStatusCache)statusCache;
- (void)_queryTimedOut;
- (void)batchQueryController:(id)controller updatedDestinationsStatus:(id)status onService:(id)service error:(id)error;
- (void)finish;
- (void)start;
@end

@implementation ASReachabilityQueryOperation

- (ASReachabilityQueryOperation)init
{
  v3.receiver = self;
  v3.super_class = ASReachabilityQueryOperation;
  result = [(ASReachabilityQueryOperation *)&v3 init];
  if (result)
  {
    result->_finished = 0;
    result->_executing = 0;
  }

  return result;
}

- (void)start
{
  v58 = *MEMORY[0x277D85DE8];
  if ([(ASReachabilityQueryOperation *)self isCancelled])
  {
    [(ASReachabilityQueryOperation *)self willChangeValueForKey:@"isFinished"];
    self->_finished = 1;
    v3 = *MEMORY[0x277D85DE8];

    [(ASReachabilityQueryOperation *)self didChangeValueForKey:@"isFinished"];
  }

  else
  {
    [(ASReachabilityQueryOperation *)self willChangeValueForKey:@"isExecuting"];
    self->_executing = 1;
    [(ASReachabilityQueryOperation *)self didChangeValueForKey:@"isExecuting"];
    ASLoggingInitialize();
    v4 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      destinations = self->_destinations;
      v6 = v4;
      *buf = 134217984;
      v57 = [(NSSet *)destinations count];
      _os_log_impl(&dword_23E4FA000, v6, OS_LOG_TYPE_DEFAULT, "Reachability: Starting for %lu destinations", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_statusCache);
    v8 = [WeakRetained statusesForDestinations:self->_destinations];

    v9 = [v8 mutableCopy];
    results = self->_results;
    self->_results = v9;

    if ([v8 count])
    {
      ASLoggingInitialize();
      v11 = ASLogDefault;
      if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = [v8 count];
        *buf = 134217984;
        v57 = v13;
        _os_log_impl(&dword_23E4FA000, v12, OS_LOG_TYPE_DEFAULT, "Reachability: Hit %lu destinations in cache second pass", buf, 0xCu);
      }

      (*(self->_updateHandler + 2))();
    }

    v14 = self->_destinations;
    v15 = MEMORY[0x277CCAC30];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __37__ASReachabilityQueryOperation_start__block_invoke;
    v53[3] = &unk_278C462A0;
    v46 = v8;
    v54 = v46;
    v16 = [v15 predicateWithBlock:v53];
    v17 = [(NSSet *)v14 filteredSetUsingPredicate:v16];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    rawIDSDestinationToOriginalDestination = self->_rawIDSDestinationToOriginalDestination;
    self->_rawIDSDestinationToOriginalDestination = dictionary;

    v20 = [MEMORY[0x277CBEB58] set];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v21 = v17;
    v22 = [v21 countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v50;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v50 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v49 + 1) + 8 * i);
          v27 = IDSDestinationForString(v26);
          if (v27)
          {
            [v20 addObject:v27];
            v28 = IDSCopyRawAddressForDestination();
            [(NSMutableDictionary *)self->_rawIDSDestinationToOriginalDestination setObject:v26 forKeyedSubscript:v28];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v49 objects:v55 count:16];
      }

      while (v23);
    }

    if ([v21 count])
    {
      ASLoggingInitialize();
      v29 = ASLogDefault;
      if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v29;
        v31 = [v21 count];
        *buf = 134217984;
        v57 = v31;
        _os_log_impl(&dword_23E4FA000, v30, OS_LOG_TYPE_DEFAULT, "Reachability: Querying %lu destinations", buf, 0xCu);
      }

      currentQueue = [MEMORY[0x277CCABD8] currentQueue];
      underlyingQueue = [currentQueue underlyingQueue];

      v34 = [objc_alloc(MEMORY[0x277D186D8]) initWithService:self->_serviceIdentifier delegate:self queue:underlyingQueue];
      batchQueryController = self->_batchQueryController;
      self->_batchQueryController = v34;

      v36 = [v21 mutableCopy];
      remainingDestinations = self->_remainingDestinations;
      self->_remainingDestinations = v36;

      v38 = self->_batchQueryController;
      allObjects = [v20 allObjects];
      [(IDSBatchIDQueryController *)v38 setDestinations:allObjects];

      v40 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, underlyingQueue);
      timer = self->timer;
      self->timer = v40;

      v42 = self->timer;
      v43 = dispatch_time(0, 10000000000);
      dispatch_source_set_timer(v42, v43, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      objc_initWeak(buf, self);
      v44 = self->timer;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __37__ASReachabilityQueryOperation_start__block_invoke_18;
      handler[3] = &unk_278C46550;
      objc_copyWeak(&v48, buf);
      dispatch_source_set_event_handler(v44, handler);
      dispatch_resume(self->timer);
      objc_destroyWeak(&v48);
      objc_destroyWeak(buf);
    }

    else
    {
      [(ASReachabilityQueryOperation *)self finish];
    }

    v45 = *MEMORY[0x277D85DE8];
  }
}

BOOL __37__ASReachabilityQueryOperation_start__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  v3 = v2 == 0;

  return v3;
}

void __37__ASReachabilityQueryOperation_start__block_invoke_18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queryTimedOut];
}

- (void)finish
{
  v12 = *MEMORY[0x277D85DE8];
  if (!self->_finished)
  {
    ASLoggingInitialize();
    v3 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      destinations = self->_destinations;
      v5 = v3;
      v10 = 134217984;
      v11 = [(NSSet *)destinations count];
      _os_log_impl(&dword_23E4FA000, v5, OS_LOG_TYPE_DEFAULT, "Reachability: Finished %lu destinations", &v10, 0xCu);
    }

    timer = self->timer;
    if (timer)
    {
      dispatch_source_cancel(timer);
    }

    [(IDSBatchIDQueryController *)self->_batchQueryController invalidate];
    [(ASReachabilityQueryOperation *)self willChangeValueForKey:@"isExecuting"];
    [(ASReachabilityQueryOperation *)self willChangeValueForKey:@"isFinished"];
    self->_finished = 1;
    self->_executing = 0;
    [(ASReachabilityQueryOperation *)self didChangeValueForKey:@"isExecuting"];
    [(ASReachabilityQueryOperation *)self didChangeValueForKey:@"isFinished"];
    results = self->_results;
    (*(self->_completionHandler + 2))();
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queryTimedOut
{
  ASLoggingInitialize();
  v3 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_ERROR))
  {
    [(ASReachabilityQueryOperation *)v3 _queryTimedOut];
  }

  [(ASReachabilityQueryOperation *)self finish];
}

- (void)batchQueryController:(id)controller updatedDestinationsStatus:(id)status onService:(id)service error:(id)error
{
  statusCopy = status;
  serviceCopy = service;
  serviceIdentifier = [(ASReachabilityQueryOperation *)self serviceIdentifier];
  v11 = [serviceCopy isEqualToString:serviceIdentifier];

  if (v11)
  {
    v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(statusCopy, "count")}];
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __95__ASReachabilityQueryOperation_batchQueryController_updatedDestinationsStatus_onService_error___block_invoke;
    v22 = &unk_278C46578;
    selfCopy = self;
    v13 = v12;
    v24 = v13;
    [statusCopy enumerateKeysAndObjectsUsingBlock:&v19];
    [(NSMutableDictionary *)self->_results addEntriesFromDictionary:v13, v19, v20, v21, v22, selfCopy];
    WeakRetained = objc_loadWeakRetained(&self->_statusCache);
    [WeakRetained addStatusesByDestination:v13];

    (*(self->_updateHandler + 2))();
    remainingDestinations = self->_remainingDestinations;
    v16 = MEMORY[0x277CBEB98];
    allKeys = [v13 allKeys];
    v18 = [v16 setWithArray:allKeys];
    [(NSMutableSet *)remainingDestinations minusSet:v18];

    if (![(NSMutableSet *)self->_remainingDestinations count])
    {
      [(ASReachabilityQueryOperation *)self finish];
    }
  }
}

void __95__ASReachabilityQueryOperation_batchQueryController_updatedDestinationsStatus_onService_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = IDSCopyRawAddressForDestination();
  v5 = [*(*(a1 + 32) + 288) objectForKeyedSubscript:v4];
  if (v5)
  {
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v5];
  }
}

- (ASReachabilityStatusCache)statusCache
{
  WeakRetained = objc_loadWeakRetained(&self->_statusCache);

  return WeakRetained;
}

@end