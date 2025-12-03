@interface ASCLockupViewGroup
+ (OS_os_log)log;
+ (void)createConnectionWithCompletionBlock:(id)block;
- (ASCLockupViewGroup)initWithName:(id)name;
- (ASCLockupViewGroup)initWithName:(id)name lockupFetcher:(id)fetcher;
- (NSMutableArray)prefetchSpans;
- (id)description;
- (id)lockupWithRequest:(id)request;
- (void)_cacheLockupsWithCollectionRequest:(id)request withCompletionBlock:(id)block;
- (void)_cacheLockupsWithRequests:(id)requests withCompletionBlock:(id)block;
- (void)_lockupDictionaryForRequest:(id)request includingKeys:(id)keys withCompletionBlock:(id)block;
- (void)_lockupFromMediaAPIResponse:(id)response withContext:(id)context completionBlock:(id)block;
- (void)_lockupRequestForBundleID:(id)d withContext:(id)context enableAppDistribution:(BOOL)distribution completionBlock:(id)block;
- (void)_prefetchLockupsWithRequests:(id)requests withCompletionBlock:(id)block;
- (void)performBatchRequests;
- (void)scheduleBatchRequestsIfNeeded;
@end

@implementation ASCLockupViewGroup

+ (OS_os_log)log
{
  if (log_onceToken_7 != -1)
  {
    +[ASCLockupViewGroup log];
  }

  v3 = log_log_7;

  return v3;
}

uint64_t __25__ASCLockupViewGroup_log__block_invoke()
{
  log_log_7 = os_log_create("com.apple.AppStoreComponents", "ASCLockupViewGroup");

  return MEMORY[0x2821F96F8]();
}

- (ASCLockupViewGroup)initWithName:(id)name lockupFetcher:(id)fetcher
{
  nameCopy = name;
  fetcherCopy = fetcher;
  +[ASCEligibility assertCurrentProcessEligibility];
  v14.receiver = self;
  v14.super_class = ASCLockupViewGroup;
  v8 = [(ASCLockupViewGroup *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    objc_storeStrong(&v8->_lockupFetcher, fetcher);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deferredRequests = v8->_deferredRequests;
    v8->_deferredRequests = v11;
  }

  return v8;
}

- (ASCLockupViewGroup)initWithName:(id)name
{
  nameCopy = name;
  v5 = +[ASCLockupFetcher sharedFetcher];
  v6 = [(ASCLockupViewGroup *)self initWithName:nameCopy lockupFetcher:v5];

  return v6;
}

- (NSMutableArray)prefetchSpans
{
  prefetchSpansIfLoaded = [(ASCLockupViewGroup *)self prefetchSpansIfLoaded];
  v4 = prefetchSpansIfLoaded;
  if (prefetchSpansIfLoaded)
  {
    v5 = prefetchSpansIfLoaded;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(ASCLockupViewGroup *)self setPrefetchSpansIfLoaded:v5];
  }

  return v5;
}

- (void)scheduleBatchRequestsIfNeeded
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  selfCopy = self;
  _os_log_debug_impl(&dword_21571A000, a2, OS_LOG_TYPE_DEBUG, "%{public}@: Scheduled batch request of deferred lockup requests", &v2, 0xCu);
}

void __51__ASCLockupViewGroup_scheduleBatchRequestsIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performBatchRequests];
}

- (void)performBatchRequests
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_21571A000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Perform batch request called with no deferred lockup requests", &v2, 0xCu);
}

void __42__ASCLockupViewGroup_performBatchRequests__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 lockupFetcher];
  v9 = [v7 lockupWithRequest:v6];

  v8 = [v5 completionHandlerAdapter];

  [v9 addFinishBlock:v8];
}

- (id)lockupWithRequest:(id)request
{
  requestCopy = request;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  lockupFetcher = [(ASCLockupViewGroup *)self lockupFetcher];
  v6 = [lockupFetcher loadedLockupWithRequest:requestCopy];

  if (v6)
  {
    asc_copy = v6;
  }

  else
  {
    deferredRequests = [(ASCLockupViewGroup *)self deferredRequests];
    v9 = [deferredRequests objectForKeyedSubscript:requestCopy];

    if (v9)
    {
      asc_copy = [v9 asc_copy];
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x277CEE600]);
      deferredRequests2 = [(ASCLockupViewGroup *)self deferredRequests];
      [deferredRequests2 setObject:v10 forKeyedSubscript:requestCopy];

      [(ASCLockupViewGroup *)self scheduleBatchRequestsIfNeeded];
      v12 = +[ASCLockupViewGroup log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [(ASCLockupViewGroup *)self lockupWithRequest:requestCopy, v12];
      }

      asc_copy = [v10 asc_copy];
    }
  }

  return asc_copy;
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  name = [(ASCLockupViewGroup *)self name];
  [(ASCDescriber *)v3 addObject:name withName:@"name"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

- (void)_lockupRequestForBundleID:(id)d withContext:(id)context enableAppDistribution:(BOOL)distribution completionBlock:(id)block
{
  distributionCopy = distribution;
  dCopy = d;
  contextCopy = context;
  blockCopy = block;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v13 = objc_alloc_init(ASCSignpostSpan);
  [(ASCSignpostSpan *)v13 beginEmitting];
  [ASCViewRender modelPrefetchDidBeginWithTag:[(ASCSignpostSpan *)v13 primaryTag]];
  lockupFetcher = [(ASCLockupViewGroup *)self lockupFetcher];
  v15 = [lockupFetcher lockupForBundleID:dCopy withContext:contextCopy enableAppDistribution:distributionCopy];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __108__ASCLockupViewGroup_BundleID___lockupRequestForBundleID_withContext_enableAppDistribution_completionBlock___block_invoke;
  v28[3] = &unk_2781CCB08;
  v16 = contextCopy;
  v29 = v16;
  v30 = distributionCopy;
  v17 = [v15 thenWithBlock:v28];
  objc_initWeak(&location, self);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __108__ASCLockupViewGroup_BundleID___lockupRequestForBundleID_withContext_enableAppDistribution_completionBlock___block_invoke_2;
  v23[3] = &unk_2781CCB58;
  v18 = v13;
  v24 = v18;
  objc_copyWeak(&v26, &location);
  v19 = blockCopy;
  v25 = v19;
  [v17 addSuccessBlock:v23];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __108__ASCLockupViewGroup_BundleID___lockupRequestForBundleID_withContext_enableAppDistribution_completionBlock___block_invoke_4;
  v21[3] = &unk_2781CBC98;
  v20 = v19;
  v22 = v20;
  [v17 addErrorBlock:v21];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

id __108__ASCLockupViewGroup_BundleID___lockupRequestForBundleID_withContext_enableAppDistribution_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ASCLockupRequest alloc];
  v5 = [v3 id];
  v6 = [v3 kind];

  v7 = [(ASCLockupRequest *)v4 initWithID:v5 kind:v6 context:*(a1 + 32)];
  if (*(a1 + 40) == 1)
  {
    v8 = [(ASCLockupRequest *)v7 lockupRequestWithAppDistributionEnabled];

    v7 = v8;
  }

  v9 = [MEMORY[0x277CEE630] promiseWithResult:v7];

  return v9;
}

void __108__ASCLockupViewGroup_BundleID___lockupRequestForBundleID_withContext_enableAppDistribution_completionBlock___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __108__ASCLockupViewGroup_BundleID___lockupRequestForBundleID_withContext_enableAppDistribution_completionBlock___block_invoke_3;
  v6[3] = &unk_2781CCB30;
  v7 = a1[4];
  objc_copyWeak(&v10, a1 + 6);
  v4 = a1[5];
  v8 = v3;
  v9 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);

  objc_destroyWeak(&v10);
}

uint64_t __108__ASCLockupViewGroup_BundleID___lockupRequestForBundleID_withContext_enableAppDistribution_completionBlock___block_invoke_3(uint64_t a1)
{
  +[ASCViewRender modelPrefetchDidEndWithTag:](ASCViewRender, "modelPrefetchDidEndWithTag:", [*(a1 + 32) primaryTag]);
  [*(a1 + 32) endEmitting];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained prefetchSpans];
  [v3 addObject:*(a1 + 32)];

  v4 = *(*(a1 + 48) + 16);

  return v4();
}

void __108__ASCLockupViewGroup_BundleID___lockupRequestForBundleID_withContext_enableAppDistribution_completionBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __108__ASCLockupViewGroup_BundleID___lockupRequestForBundleID_withContext_enableAppDistribution_completionBlock___block_invoke_5;
  v6[3] = &unk_2781CBC48;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)_cacheLockupsWithRequests:(id)requests withCompletionBlock:(id)block
{
  blockCopy = block;
  requestsCopy = requests;
  v8 = MEMORY[0x277D85CD0];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v9 = objc_alloc_init(ASCSignpostSpan);
  [(ASCSignpostSpan *)v9 beginEmitting];
  [ASCViewRender modelPrefetchDidBeginWithTag:[(ASCSignpostSpan *)v9 primaryTag]];
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create("ASCLockupViewGroup.cachingLockups", v10);

  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(requestsCopy, "count")}];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __78__ASCLockupViewGroup_Fetching___cacheLockupsWithRequests_withCompletionBlock___block_invoke;
  v26[3] = &unk_2781CCC78;
  v27 = v12;
  v14 = v13;
  v28 = v14;
  selfCopy = self;
  v30 = v11;
  v15 = v11;
  v16 = v12;
  [requestsCopy enumerateObjectsUsingBlock:v26];

  dispatch_group_leave(v16);
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__ASCLockupViewGroup_Fetching___cacheLockupsWithRequests_withCompletionBlock___block_invoke_6;
  block[3] = &unk_2781CCCC0;
  v21 = v14;
  v22 = v9;
  v17 = v9;
  v18 = v14;
  objc_copyWeak(&v24, &location);
  v23 = blockCopy;
  v19 = blockCopy;
  dispatch_group_notify(v16, v8, block);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __78__ASCLockupViewGroup_Fetching___cacheLockupsWithRequests_withCompletionBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  dispatch_group_enter(*(a1 + 32));
  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CBEB68] null];
  [v6 addObject:v7];

  v8 = [*(a1 + 48) lockupWithRequest:v5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__ASCLockupViewGroup_Fetching___cacheLockupsWithRequests_withCompletionBlock___block_invoke_2;
  v14[3] = &unk_2781CCC28;
  v15 = *(a1 + 56);
  v9 = *(a1 + 40);
  v19 = a3;
  v16 = v9;
  v17 = v5;
  v18 = *(a1 + 32);
  v10 = v5;
  [v8 addSuccessBlock:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__ASCLockupViewGroup_Fetching___cacheLockupsWithRequests_withCompletionBlock___block_invoke_4;
  v11[3] = &unk_2781CCC50;
  v12 = *(a1 + 56);
  v13 = *(a1 + 32);
  [v8 addErrorBlock:v11];
}

void __78__ASCLockupViewGroup_Fetching___cacheLockupsWithRequests_withCompletionBlock___block_invoke_2(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__ASCLockupViewGroup_Fetching___cacheLockupsWithRequests_withCompletionBlock___block_invoke_3;
  v5[3] = &unk_2781CC2E8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v6 = v3;
  v9 = v4;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  dispatch_async(v2, v5);
}

void __78__ASCLockupViewGroup_Fetching___cacheLockupsWithRequests_withCompletionBlock___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) replaceObjectAtIndex:*(a1 + 56) withObject:*(a1 + 40)];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void __78__ASCLockupViewGroup_Fetching___cacheLockupsWithRequests_withCompletionBlock___block_invoke_4(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__ASCLockupViewGroup_Fetching___cacheLockupsWithRequests_withCompletionBlock___block_invoke_5;
  block[3] = &unk_2781CC0E8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

void __78__ASCLockupViewGroup_Fetching___cacheLockupsWithRequests_withCompletionBlock___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) ams_removeObjectsPassingTest:&__block_literal_global_29];
  +[ASCViewRender modelPrefetchDidEndWithTag:](ASCViewRender, "modelPrefetchDidEndWithTag:", [*(a1 + 40) primaryTag]);
  [*(a1 + 40) endEmitting];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained prefetchSpans];
  [v3 addObject:*(a1 + 40)];

  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) copy];
  (*(v4 + 16))(v4, v5);
}

BOOL __78__ASCLockupViewGroup_Fetching___cacheLockupsWithRequests_withCompletionBlock___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB68];
  v3 = a2;
  v4 = [v2 null];

  return v4 == v3;
}

- (void)_lockupDictionaryForRequest:(id)request includingKeys:(id)keys withCompletionBlock:(id)block
{
  requestCopy = request;
  keysCopy = keys;
  blockCopy = block;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v11 = objc_alloc_init(ASCSignpostSpan);
  [(ASCSignpostSpan *)v11 beginEmitting];
  [ASCViewRender modelPrefetchDidBeginWithTag:[(ASCSignpostSpan *)v11 primaryTag]];
  objc_initWeak(&location, self);
  v12 = [(ASCLockupViewGroup *)self lockupWithRequest:requestCopy];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __94__ASCLockupViewGroup_Fetching___lockupDictionaryForRequest_includingKeys_withCompletionBlock___block_invoke;
  v19[3] = &unk_2781CCD10;
  v13 = v11;
  v20 = v13;
  objc_copyWeak(&v23, &location);
  v14 = keysCopy;
  v21 = v14;
  v15 = blockCopy;
  v22 = v15;
  [v12 addSuccessBlock:v19];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __94__ASCLockupViewGroup_Fetching___lockupDictionaryForRequest_includingKeys_withCompletionBlock___block_invoke_3;
  v17[3] = &unk_2781CBC98;
  v16 = v15;
  v18 = v16;
  [v12 addErrorBlock:v17];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __94__ASCLockupViewGroup_Fetching___lockupDictionaryForRequest_includingKeys_withCompletionBlock___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__ASCLockupViewGroup_Fetching___lockupDictionaryForRequest_includingKeys_withCompletionBlock___block_invoke_2;
  block[3] = &unk_2781CCCE8;
  v6 = a1[4];
  objc_copyWeak(&v10, a1 + 7);
  v7 = v3;
  v8 = a1[5];
  v9 = a1[6];
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v10);
}

void __94__ASCLockupViewGroup_Fetching___lockupDictionaryForRequest_includingKeys_withCompletionBlock___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  +[ASCViewRender modelPrefetchDidEndWithTag:](ASCViewRender, "modelPrefetchDidEndWithTag:", [*(a1 + 32) primaryTag]);
  [*(a1 + 32) endEmitting];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained prefetchSpans];
  [v3 addObject:*(a1 + 32)];

  v16 = a1;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = v4;
  v7 = v5;
  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        if (_ASCLockupKeyGetAllCases_onceToken != -1)
        {
          __94__ASCLockupViewGroup_Fetching___lockupDictionaryForRequest_includingKeys_withCompletionBlock___block_invoke_2_cold_1();
        }

        if ([_ASCLockupKeyGetAllCases_allCases containsObject:v13])
        {
          v14 = [v6 valueForKey:v13];
          if (v14)
          {
            [v17 setObject:v14 forKeyedSubscript:v13];
          }
        }

        else
        {
          v14 = +[ASCLockupViewGroup log];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v23 = v13;
            _os_log_error_impl(&dword_21571A000, v14, OS_LOG_TYPE_ERROR, "*** Ignoring unknown _ASCLockupKey %{safe}@", buf, 0xCu);
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v10);
  }

  v15 = [v17 copy];
  (*(*(v16 + 56) + 16))();
}

void __94__ASCLockupViewGroup_Fetching___lockupDictionaryForRequest_includingKeys_withCompletionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __94__ASCLockupViewGroup_Fetching___lockupDictionaryForRequest_includingKeys_withCompletionBlock___block_invoke_4;
  v6[3] = &unk_2781CBC48;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)_cacheLockupsWithCollectionRequest:(id)request withCompletionBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = objc_alloc_init(ASCSignpostSpan);
  [(ASCSignpostSpan *)v8 beginEmitting];
  [ASCViewRender modelPrefetchDidBeginWithTag:[(ASCSignpostSpan *)v8 primaryTag]];
  objc_initWeak(&location, self);
  lockupFetcher = [(ASCLockupViewGroup *)self lockupFetcher];
  v10 = [lockupFetcher collectionWithRequest:requestCopy];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __87__ASCLockupViewGroup_Fetching___cacheLockupsWithCollectionRequest_withCompletionBlock___block_invoke;
  v17[3] = &unk_2781CCD60;
  v11 = v8;
  v18 = v11;
  objc_copyWeak(&v21, &location);
  v12 = requestCopy;
  v19 = v12;
  v13 = blockCopy;
  v20 = v13;
  [v10 addSuccessBlock:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__ASCLockupViewGroup_Fetching___cacheLockupsWithCollectionRequest_withCompletionBlock___block_invoke_4;
  v15[3] = &unk_2781CBC98;
  v14 = v13;
  v16 = v14;
  [v10 addErrorBlock:v15];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __87__ASCLockupViewGroup_Fetching___cacheLockupsWithCollectionRequest_withCompletionBlock___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__ASCLockupViewGroup_Fetching___cacheLockupsWithCollectionRequest_withCompletionBlock___block_invoke_2;
  block[3] = &unk_2781CCCE8;
  v6 = a1[4];
  objc_copyWeak(&v10, a1 + 7);
  v7 = v3;
  v8 = a1[5];
  v9 = a1[6];
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v10);
}

void __87__ASCLockupViewGroup_Fetching___cacheLockupsWithCollectionRequest_withCompletionBlock___block_invoke_2(uint64_t a1)
{
  +[ASCViewRender modelPrefetchDidEndWithTag:](ASCViewRender, "modelPrefetchDidEndWithTag:", [*(a1 + 32) primaryTag]);
  [*(a1 + 32) endEmitting];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained prefetchSpans];
  [v3 addObject:*(a1 + 32)];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__ASCLockupViewGroup_Fetching___cacheLockupsWithCollectionRequest_withCompletionBlock___block_invoke_3;
  v6[3] = &unk_2781CCD38;
  v4 = *(a1 + 40);
  v7 = *(a1 + 48);
  v5 = [v4 ams_mapWithTransform:v6];
  (*(*(a1 + 56) + 16))();
}

ASCLockupRequest *__87__ASCLockupViewGroup_Fetching___cacheLockupsWithCollectionRequest_withCompletionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ASCLockupRequest alloc];
  v5 = [v3 id];

  v6 = [*(a1 + 32) kind];
  v7 = [*(a1 + 32) context];
  v8 = [(ASCLockupRequest *)v4 initWithID:v5 kind:v6 context:v7];

  return v8;
}

void __87__ASCLockupViewGroup_Fetching___cacheLockupsWithCollectionRequest_withCompletionBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__ASCLockupViewGroup_Fetching___cacheLockupsWithCollectionRequest_withCompletionBlock___block_invoke_5;
  v6[3] = &unk_2781CBC48;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)_prefetchLockupsWithRequests:(id)requests withCompletionBlock:(id)block
{
  blockCopy = block;
  requestsCopy = requests;
  v8 = MEMORY[0x277D85CD0];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v9 = objc_alloc_init(ASCSignpostSpan);
  [(ASCSignpostSpan *)v9 beginEmitting];
  [ASCViewRender modelPrefetchDidBeginWithTag:[(ASCSignpostSpan *)v9 primaryTag]];
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create("ASCLockupViewGroup.prefetchingResults", v10);

  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(requestsCopy, "count")}];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __92__ASCLockupViewGroup_Fetching_Deprecated___prefetchLockupsWithRequests_withCompletionBlock___block_invoke;
  v26[3] = &unk_2781CCC78;
  v27 = v12;
  v14 = v13;
  v28 = v14;
  selfCopy = self;
  v30 = v11;
  v15 = v11;
  v16 = v12;
  [requestsCopy enumerateObjectsUsingBlock:v26];

  dispatch_group_leave(v16);
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__ASCLockupViewGroup_Fetching_Deprecated___prefetchLockupsWithRequests_withCompletionBlock___block_invoke_4;
  block[3] = &unk_2781CCB30;
  v21 = v9;
  v17 = v9;
  objc_copyWeak(&v24, &location);
  v22 = v14;
  v23 = blockCopy;
  v18 = v14;
  v19 = blockCopy;
  dispatch_group_notify(v16, v8, block);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __92__ASCLockupViewGroup_Fetching_Deprecated___prefetchLockupsWithRequests_withCompletionBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  dispatch_group_enter(*(a1 + 32));
  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CBEB68] null];
  [v6 addObject:v7];

  v8 = [*(a1 + 48) lockupWithRequest:v5];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__ASCLockupViewGroup_Fetching_Deprecated___prefetchLockupsWithRequests_withCompletionBlock___block_invoke_2;
  v10[3] = &unk_2781CCD88;
  v11 = v5;
  v12 = *(a1 + 56);
  v13 = *(a1 + 40);
  v15 = a3;
  v14 = *(a1 + 32);
  v9 = v5;
  [v8 addFinishBlock:v10];
}

void __92__ASCLockupViewGroup_Fetching_Deprecated___prefetchLockupsWithRequests_withCompletionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[_ASCLockupResponse alloc] initWithRequest:*(a1 + 32) lockup:v6 error:v5];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __92__ASCLockupViewGroup_Fetching_Deprecated___prefetchLockupsWithRequests_withCompletionBlock___block_invoke_3;
  v12[3] = &unk_2781CC2E8;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v16 = *(a1 + 64);
  v13 = v9;
  v14 = v7;
  v15 = v10;
  v11 = v7;
  dispatch_async(v8, v12);
}

void __92__ASCLockupViewGroup_Fetching_Deprecated___prefetchLockupsWithRequests_withCompletionBlock___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) replaceObjectAtIndex:*(a1 + 56) withObject:*(a1 + 40)];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void __92__ASCLockupViewGroup_Fetching_Deprecated___prefetchLockupsWithRequests_withCompletionBlock___block_invoke_4(uint64_t a1)
{
  +[ASCViewRender modelPrefetchDidEndWithTag:](ASCViewRender, "modelPrefetchDidEndWithTag:", [*(a1 + 32) primaryTag]);
  [*(a1 + 32) endEmitting];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained prefetchSpans];
  [v3 addObject:*(a1 + 32)];

  v4 = *(a1 + 48);
  v5 = [*(a1 + 40) copy];
  (*(v4 + 16))(v4, v5);
}

+ (void)createConnectionWithCompletionBlock:(id)block
{
  blockCopy = block;
  +[ASCEligibility assertCurrentProcessEligibility];
  v4 = +[ASCServicesConnection sharedConnection];
  testConnection = [v4 testConnection];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__ASCLockupViewGroup_ForSpotlight__createConnectionWithCompletionBlock___block_invoke;
  v7[3] = &unk_2781CC578;
  v8 = blockCopy;
  v6 = blockCopy;
  [testConnection addFinishBlock:v7];
}

- (void)_lockupFromMediaAPIResponse:(id)response withContext:(id)context completionBlock:(id)block
{
  blockCopy = block;
  contextCopy = context;
  responseCopy = response;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  lockupFetcher = [(ASCLockupViewGroup *)self lockupFetcher];
  v12 = [lockupFetcher lockupFromMediaAPIResponse:responseCopy withContext:contextCopy];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __96__ASCLockupViewGroup_FromMAPIResponse___lockupFromMediaAPIResponse_withContext_completionBlock___block_invoke;
  v17[3] = &unk_2781CCDB0;
  v13 = blockCopy;
  v18 = v13;
  [v12 addSuccessBlock:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __96__ASCLockupViewGroup_FromMAPIResponse___lockupFromMediaAPIResponse_withContext_completionBlock___block_invoke_3;
  v15[3] = &unk_2781CBC98;
  v16 = v13;
  v14 = v13;
  [v12 addErrorBlock:v15];
}

void __96__ASCLockupViewGroup_FromMAPIResponse___lockupFromMediaAPIResponse_withContext_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __96__ASCLockupViewGroup_FromMAPIResponse___lockupFromMediaAPIResponse_withContext_completionBlock___block_invoke_2;
  v6[3] = &unk_2781CBC48;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __96__ASCLockupViewGroup_FromMAPIResponse___lockupFromMediaAPIResponse_withContext_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __96__ASCLockupViewGroup_FromMAPIResponse___lockupFromMediaAPIResponse_withContext_completionBlock___block_invoke_4;
  v6[3] = &unk_2781CBC48;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)lockupWithRequest:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_21571A000, log, OS_LOG_TYPE_DEBUG, "%{public}@: Deferred request %@", &v3, 0x16u);
}

@end