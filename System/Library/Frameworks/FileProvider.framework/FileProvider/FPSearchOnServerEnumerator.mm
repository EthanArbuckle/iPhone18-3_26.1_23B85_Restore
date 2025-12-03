@interface FPSearchOnServerEnumerator
+ (void)enumeratorForQuery:(id)query providerDomainID:(id)d desiredNumberOfResults:(int64_t)results completionHandler:(id)handler;
- (FPSearchOnServerEnumerator)initWithQuery:(id)query domainIDs:(id)ds desiredNumberOfResults:(int64_t)results;
- (void)cancel;
- (void)cancelOnQueue;
- (void)checkFinished;
- (void)finishProviderDomainID:(id)d;
- (void)getNextResultSynchronouslyWithCompletionHandler:(id)handler;
- (void)nextResultsWithCompletionHandler:(id)handler;
- (void)requestResultsFromEnumerator:(id)enumerator providerDomainID:(id)d atPage:(id)page;
- (void)signalGroup;
@end

@implementation FPSearchOnServerEnumerator

- (FPSearchOnServerEnumerator)initWithQuery:(id)query domainIDs:(id)ds desiredNumberOfResults:(int64_t)results
{
  v44 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  dsCopy = ds;
  v42.receiver = self;
  v42.super_class = FPSearchOnServerEnumerator;
  v11 = [(FPSearchOnServerEnumerator *)&v42 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_query, query);
    v13 = dispatch_queue_create("FPSearchOnServerEnumerator", 0);
    queue = v12->_queue;
    v12->_queue = v13;

    waitGroup = v12->_waitGroup;
    v12->_waitGroup = 0;

    v12->_finished = 0;
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    inflightRequests = v12->_inflightRequests;
    v12->_inflightRequests = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    nextPages = v12->_nextPages;
    v12->_nextPages = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    prefetchedResults = v12->_prefetchedResults;
    v12->_prefetchedResults = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    extensionLifetimeExtenders = v12->_extensionLifetimeExtenders;
    v12->_extensionLifetimeExtenders = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    initialRequests = v12->_initialRequests;
    v12->_initialRequests = v24;

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v26 = dsCopy;
    v27 = [v26 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v39;
      do
      {
        v30 = 0;
        do
        {
          if (*v39 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [(NSMutableSet *)v12->_initialRequests addObject:*(*(&v38 + 1) + 8 * v30++)];
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v28);
    }

    v31 = v12->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__FPSearchOnServerEnumerator_initWithQuery_domainIDs_desiredNumberOfResults___block_invoke;
    block[3] = &unk_1E793AA70;
    v35 = v26;
    v36 = v12;
    resultsCopy = results;
    dispatch_async(v31, block);
  }

  v32 = *MEMORY[0x1E69E9840];
  return v12;
}

void __77__FPSearchOnServerEnumerator_initWithQuery_domainIDs_desiredNumberOfResults___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      v5 = 0;
      do
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * v5);
        v7 = *(a1 + 40);
        v8 = *(a1 + 48);
        v9 = v7[1];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __77__FPSearchOnServerEnumerator_initWithQuery_domainIDs_desiredNumberOfResults___block_invoke_2;
        v12[3] = &unk_1E793D470;
        v13 = v7;
        v14 = v6;
        [FPSearchOnServerEnumerator enumeratorForQuery:v9 providerDomainID:v6 desiredNumberOfResults:v8 completionHandler:v12];

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __77__FPSearchOnServerEnumerator_initWithQuery_domainIDs_desiredNumberOfResults___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = v10[2];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__FPSearchOnServerEnumerator_initWithQuery_domainIDs_desiredNumberOfResults___block_invoke_3;
  block[3] = &unk_1E793D328;
  v12 = v10;
  v13 = *(a1 + 40);
  v18 = v12;
  v19 = v13;
  v20 = v7;
  v21 = v9;
  v22 = v8;
  v14 = v8;
  v15 = v9;
  v16 = v7;
  dispatch_async(v11, block);
}

void __77__FPSearchOnServerEnumerator_initWithQuery_domainIDs_desiredNumberOfResults___block_invoke_3(void *a1)
{
  [*(a1[4] + 48) removeObject:a1[5]];
  v2 = a1[4];
  v3 = a1[6];
  if (*(v2 + 32) == 1)
  {
    if (v3)
    {
      v4 = a1[6];

      [v4 invalidate];
    }
  }

  else if (v3)
  {
    [*(v2 + 40) setValue:v3 forKey:a1[5]];
    [*(a1[4] + 72) setValue:a1[8] forKey:a1[5]];
    v6 = a1[5];
    v5 = a1[6];
    v7 = a1[4];

    [v7 requestResultsFromEnumerator:v5 providerDomainID:v6 atPage:0];
  }

  else
  {
    [v2 checkFinished];
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __77__FPSearchOnServerEnumerator_initWithQuery_domainIDs_desiredNumberOfResults___block_invoke_3_cold_1(a1, v8);
    }
  }
}

+ (void)enumeratorForQuery:(id)query providerDomainID:(id)d desiredNumberOfResults:(int64_t)results completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  queryCopy = query;
  v13 = +[FPDaemonConnection sharedConnectionProxy];
  v12 = [[FPSearchOnServerRequestDescriptor alloc] initWithQuery:queryCopy desiredNumberOfResults:results maximumNumberOfResultsPerPage:50];

  [v13 enumerateSearchResultForRequest:v12 providerDomainID:dCopy completionHandler:handlerCopy];
}

- (void)finishProviderDomainID:(id)d
{
  queue = self->_queue;
  dCopy = d;
  dispatch_assert_queue_V2(queue);
  v6 = [(NSMutableDictionary *)self->_inflightRequests objectForKey:dCopy];
  [v6 invalidate];
  [(NSMutableDictionary *)self->_nextPages removeObjectForKey:dCopy];
  [(NSMutableDictionary *)self->_inflightRequests removeObjectForKey:dCopy];
  [(NSMutableDictionary *)self->_extensionLifetimeExtenders removeObjectForKey:dCopy];

  [(FPSearchOnServerEnumerator *)self checkFinished];
}

- (void)requestResultsFromEnumerator:(id)enumerator providerDomainID:(id)d atPage:(id)page
{
  enumeratorCopy = enumerator;
  dCopy = d;
  pageCopy = page;
  v11 = [FPXSearchEnumeratorObserver alloc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__FPSearchOnServerEnumerator_requestResultsFromEnumerator_providerDomainID_atPage___block_invoke;
  v15[3] = &unk_1E793D498;
  v15[4] = self;
  v16 = dCopy;
  v17 = enumeratorCopy;
  v12 = enumeratorCopy;
  v13 = dCopy;
  v14 = [(FPXSearchEnumeratorObserver *)v11 initWithMaximumNumberOfResultsPerPage:50 completionHandler:v15];
  [v12 enumerateSearchResultsForObserver:v14 startingAtPage:pageCopy];
}

void __83__FPSearchOnServerEnumerator_requestResultsFromEnumerator_providerDomainID_atPage___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(v11 + 16);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __83__FPSearchOnServerEnumerator_requestResultsFromEnumerator_providerDomainID_atPage___block_invoke_2;
  v16[3] = &unk_1E793CCF8;
  v16[4] = v11;
  v17 = v9;
  v18 = v10;
  v19 = v8;
  v20 = v7;
  v21 = *(a1 + 48);
  v13 = v7;
  v14 = v8;
  v15 = v9;
  dispatch_async(v12, v16);
}

void __83__FPSearchOnServerEnumerator_requestResultsFromEnumerator_providerDomainID_atPage___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 32) & 1) == 0)
  {
    if (*(a1 + 40))
    {
      v3 = *(a1 + 48);

      [v2 finishProviderDomainID:v3];
    }

    else
    {
      [*(v2 + 56) setValue:*(a1 + 56) forKey:*(a1 + 48)];
      if ([*(a1 + 64) count] || !*(a1 + 56))
      {
        v4 = *(a1 + 64);
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __83__FPSearchOnServerEnumerator_requestResultsFromEnumerator_providerDomainID_atPage___block_invoke_3;
        v9[3] = &unk_1E793BD98;
        v10 = *(a1 + 48);
        v5 = [v4 fp_map:v9];
        [*(*(a1 + 32) + 64) setValue:v5 forKey:*(a1 + 48)];
        if (!*(a1 + 56))
        {
          [*(a1 + 32) finishProviderDomainID:*(a1 + 48)];
        }

        [*(a1 + 32) signalGroup];
      }

      else
      {
        v6 = *(a1 + 32);
        v7 = *(a1 + 72);
        v8 = *(a1 + 48);

        [v6 requestResultsFromEnumerator:v7 providerDomainID:v8 atPage:?];
      }
    }
  }
}

FPSearchOnServerResult *__83__FPSearchOnServerEnumerator_requestResultsFromEnumerator_providerDomainID_atPage___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [FPSearchOnServerResult alloc];
  v5 = [v3 filename];
  v6 = [v3 creationDate];
  v7 = [v3 contentModificationDate];
  v8 = [v3 lastUsedDate];
  v9 = [v3 contentType];
  v10 = [v3 documentSize];
  v11 = [v3 itemIdentifier];

  v12 = [*(a1 + 32) fp_toProviderID];
  v13 = [*(a1 + 32) fp_toDomainIdentifier];
  v14 = [(FPSearchOnServerResult *)v4 initWithFilename:v5 creationDate:v6 contentModificationDate:v7 lastUsedDate:v8 contentType:v9 documentSize:v10 itemIdentifier:v11 providerID:v12 domainIdentifier:v13];

  return v14;
}

- (void)checkFinished
{
  dispatch_assert_queue_V2(self->_queue);
  if (![(NSMutableSet *)self->_initialRequests count]&& ![(NSMutableDictionary *)self->_inflightRequests count]&& ![(NSMutableDictionary *)self->_prefetchedResults count])
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [FPSearchOnServerEnumerator checkFinished];
    }

    [(FPSearchOnServerEnumerator *)self cancelOnQueue];
  }
}

- (void)getNextResultSynchronouslyWithCompletionHandler:(id)handler
{
  queue = self->_queue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(queue);
  allKeys = [(NSMutableDictionary *)self->_prefetchedResults allKeys];
  firstObject = [allKeys firstObject];

  if (firstObject)
  {
    v8 = [(NSMutableDictionary *)self->_prefetchedResults valueForKey:firstObject];
    [(NSMutableDictionary *)self->_prefetchedResults removeObjectForKey:firstObject];
    v9 = [(NSMutableDictionary *)self->_nextPages valueForKey:firstObject];
    if (v9)
    {
      [(NSMutableDictionary *)self->_nextPages removeObjectForKey:firstObject];
      v10 = [(NSMutableDictionary *)self->_inflightRequests valueForKey:firstObject];
      [(FPSearchOnServerEnumerator *)self requestResultsFromEnumerator:v10 providerDomainID:firstObject atPage:v9];
    }

    [(FPSearchOnServerEnumerator *)self checkFinished];
    handlerCopy[2](handlerCopy, v8, !self->_finished);
  }

  else
  {
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [FPSearchOnServerEnumerator getNextResultSynchronouslyWithCompletionHandler:];
    }

    handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F0], !self->_finished);
  }
}

- (void)signalGroup
{
  dispatch_assert_queue_V2(self->_queue);
  waitGroup = self->_waitGroup;
  if (waitGroup)
  {
    dispatch_group_leave(waitGroup);
    v4 = self->_waitGroup;
    self->_waitGroup = 0;
  }
}

- (void)nextResultsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__FPSearchOnServerEnumerator_nextResultsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7939128;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __63__FPSearchOnServerEnumerator_nextResultsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) count];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = *(a1 + 40);

    [v3 getNextResultSynchronouslyWithCompletionHandler:v4];
  }

  else
  {
    [v3 checkFinished];
    v5 = *(a1 + 32);
    if (*(v5 + 32) == 1)
    {
      v6 = *(*(a1 + 40) + 16);

      v6();
    }

    else
    {
      v7 = *(v5 + 24);
      if (!v7)
      {
        v8 = dispatch_group_create();
        v9 = *(a1 + 32);
        v10 = *(v9 + 24);
        *(v9 + 24) = v8;

        dispatch_group_enter(*(*(a1 + 32) + 24));
        v5 = *(a1 + 32);
        v7 = *(v5 + 24);
      }

      v11 = *(v5 + 16);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __63__FPSearchOnServerEnumerator_nextResultsWithCompletionHandler___block_invoke_2;
      v12[3] = &unk_1E7939128;
      v12[4] = v5;
      v13 = *(a1 + 40);
      dispatch_group_notify(v7, v11, v12);
    }
  }
}

uint64_t __63__FPSearchOnServerEnumerator_nextResultsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  if (![*(*(a1 + 32) + 64) count] && objc_msgSend(*(*(a1 + 32) + 40), "count"))
  {
    v2 = fp_current_or_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __63__FPSearchOnServerEnumerator_nextResultsWithCompletionHandler___block_invoke_2_cold_1();
    }
  }

  return [*(a1 + 32) nextResultsWithCompletionHandler:*(a1 + 40)];
}

- (void)cancel
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__FPSearchOnServerEnumerator_cancel__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)cancelOnQueue
{
  v15 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_finished)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [FPSearchOnServerEnumerator cancelOnQueue];
    }
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    allValues = [(NSMutableDictionary *)self->_inflightRequests allValues];
    v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v10 + 1) + 8 * v8++) invalidate];
        }

        while (v6 != v8);
        v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    self->_finished = 1;
    [(NSMutableDictionary *)self->_nextPages removeAllObjects];
    [(NSMutableDictionary *)self->_prefetchedResults removeAllObjects];
    [(NSMutableDictionary *)self->_inflightRequests removeAllObjects];
    [(NSMutableDictionary *)self->_extensionLifetimeExtenders removeAllObjects];
    [(FPSearchOnServerEnumerator *)self signalGroup];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __77__FPSearchOnServerEnumerator_initWithQuery_domainIDs_desiredNumberOfResults___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 56) fp_prettyDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] enumerator for query returned nil enumerator, %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end