@interface ASCLockupFetcher
+ (ASCLockupFetcher)sharedFetcher;
- (ASCLockupFetcher)initWithConnection:(id)a3;
- (id)collectionWithRequest:(id)a3;
- (id)loadedLockupWithRequest:(id)a3;
- (id)lockupForBundleID:(id)a3 withContext:(id)a4 enableAppDistribution:(BOOL)a5;
- (id)lockupFromMediaAPIResponse:(id)a3 withContext:(id)a4;
- (id)lockupWithRequest:(id)a3;
- (void)daemonConnectionWasLost:(id)a3;
- (void)daemonDidRebootstrap:(id)a3;
- (void)dealloc;
- (void)submitBatchRequest:(id)a3;
@end

@implementation ASCLockupFetcher

+ (ASCLockupFetcher)sharedFetcher
{
  if (sharedFetcher_onceToken_0 != -1)
  {
    +[ASCLockupFetcher sharedFetcher];
  }

  v3 = sharedFetcher_sharedFetcher_0;

  return v3;
}

void __33__ASCLockupFetcher_sharedFetcher__block_invoke()
{
  v0 = [ASCLockupFetcher alloc];
  v3 = +[ASCServicesConnection sharedConnection];
  v1 = [(ASCLockupFetcher *)v0 initWithConnection:v3];
  v2 = sharedFetcher_sharedFetcher_0;
  sharedFetcher_sharedFetcher_0 = v1;
}

- (ASCLockupFetcher)initWithConnection:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = ASCLockupFetcher;
  v6 = [(ASCLockupFetcher *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    v8 = objc_alloc_init(ASCPendingPromises);
    pendingRequests = v7->_pendingRequests;
    v7->_pendingRequests = v8;

    v10 = [[ASCTaskCoordinator alloc] initWithName:@"ASCLockupFetcher.requests"];
    requestCoordinator = v7->_requestCoordinator;
    v7->_requestCoordinator = v10;

    v12 = [[ASCLazy alloc] initWithFactory:&__block_literal_global_11];
    bundleCoordinator = v7->_bundleCoordinator;
    v7->_bundleCoordinator = v12;

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v7 selector:sel_daemonConnectionWasLost_ name:0x2827A4CB8 object:v5];

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v7 selector:sel_daemonConnectionWasLost_ name:0x2827A4CD8 object:v5];

    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    v17 = +[ASCRebootstrapNotifier sharedNotifier];
    [v16 addObserver:v7 selector:sel_daemonDidRebootstrap_ name:0x2827A4C98 object:v17];
  }

  return v7;
}

ASCTaskCoordinator *__39__ASCLockupFetcher_initWithConnection___block_invoke()
{
  v0 = [[ASCTaskCoordinator alloc] initWithName:@"ASCLockupFetcher.bundleIDs"];

  return v0;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASCLockupFetcher;
  [(ASCLockupFetcher *)&v4 dealloc];
}

- (void)daemonConnectionWasLost:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277CCA9B8]);
  v8 = *MEMORY[0x277CCA450];
  v9[0] = @"Connection to daemon was lost";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v4 initWithDomain:@"ASCLockupFetcherErrorDomain" code:1 userInfo:v5];

  v7 = [(ASCLockupFetcher *)self pendingRequests];
  [v7 finishAllWithError:v6];
}

- (void)daemonDidRebootstrap:(id)a3
{
  v3 = [(ASCLockupFetcher *)self requestCoordinator];
  [v3 removeAllFinishedTasks];
}

- (id)loadedLockupWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(ASCLockupFetcher *)self requestCoordinator];
  v6 = [v5 taskForKey:v4];

  if (v6 && [v6 isFinished])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)lockupWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(ASCLockupFetcher *)self requestCoordinator];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__ASCLockupFetcher_lockupWithRequest___block_invoke;
  v9[3] = &unk_2781CB968;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 taskForKey:v6 withCreatorBlock:v9];

  return v7;
}

id __38__ASCLockupFetcher_lockupWithRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingRequests];
  objc_initWeak(&location, v2);

  v3 = [*(a1 + 32) connection];
  v4 = [v3 lockupFetcherService];
  v5 = [v4 mutablePromiseAdapter];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__ASCLockupFetcher_lockupWithRequest___block_invoke_2;
  v8[3] = &unk_2781CB9B0;
  objc_copyWeak(&v10, &location);
  v9 = *(a1 + 40);
  v6 = [v5 thenWithBlock:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

id __38__ASCLockupFetcher_lockupWithRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CEE600];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained addPromise:v5];

  v7 = *(a1 + 32);
  v8 = [v5 completionHandlerAdapter];
  [v4 getLockupWithRequest:v7 withReplyHandler:v8];

  return v5;
}

- (void)submitBatchRequest:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 ids];
  v5 = [v4 mutableCopy];

  v6 = [(ASCLockupFetcher *)self requestCoordinator];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __39__ASCLockupFetcher_submitBatchRequest___block_invoke;
  v36[3] = &unk_2781CB9D8;
  v21 = v3;
  v37 = v21;
  v38 = self;
  v22 = v5;
  v39 = v22;
  [v6 withLock:v36];

  v23 = [v21 lockupBatchRequestWithIDs:v22];
  v7 = [v23 ids];
  LOBYTE(v3) = [v7 count] == 0;

  if ((v3 & 1) == 0)
  {
    v8 = [(ASCLockupFetcher *)self pendingRequests];
    objc_initWeak(&location, v8);

    v9 = [(ASCLockupFetcher *)self connection];
    v10 = [v9 lockupFetcherService];
    v20 = [v10 mutablePromiseAdapter];

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __39__ASCLockupFetcher_submitBatchRequest___block_invoke_2;
    v32[3] = &unk_2781CB9B0;
    objc_copyWeak(&v34, &location);
    v11 = v23;
    v33 = v11;
    v12 = [v20 thenWithBlock:v32];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = [v11 requests];
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v14)
    {
      v15 = *v29;
      do
      {
        v16 = 0;
        do
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v28 + 1) + 8 * v16);
          v18 = [(ASCLockupFetcher *)self requestCoordinator];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __39__ASCLockupFetcher_submitBatchRequest___block_invoke_3;
          v25[3] = &unk_2781CB968;
          v26 = v12;
          v27 = v17;
          v19 = [v18 taskForKey:v17 withCreatorBlock:v25];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v28 objects:v40 count:16];
      }

      while (v14);
    }

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }
}

void __39__ASCLockupFetcher_submitBatchRequest___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) requests];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = [*(a1 + 40) requestCoordinator];
        v9 = [v8 hasTaskForKey:v7];

        if (v9)
        {
          v10 = *(a1 + 48);
          v11 = [v7 id];
          [v10 removeObject:v11];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

id __39__ASCLockupFetcher_submitBatchRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CEE600];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained addPromise:v5];

  v7 = *(a1 + 32);
  v8 = [v5 completionHandlerAdapter];
  [v4 getLockupsWithRequest:v7 withReplyHandler:v8];

  return v5;
}

id __39__ASCLockupFetcher_submitBatchRequest___block_invoke_3(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__ASCLockupFetcher_submitBatchRequest___block_invoke_4;
  v4[3] = &unk_2781CBA00;
  v1 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  v2 = [v1 thenWithBlock:v4];

  return v2;
}

id __39__ASCLockupFetcher_submitBatchRequest___block_invoke_4(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  if (v3)
  {
    v4 = [MEMORY[0x277CEE630] promiseWithResult:v3];
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [*(a1 + 32) id];
    v7 = [v5 stringWithFormat:@"No lockup for %@ was fetched from batch request", v6];

    v8 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = v7;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [v8 errorWithDomain:@"ASCLockupFetcherErrorDomain" code:0 userInfo:v9];

    v4 = [MEMORY[0x277CEE630] promiseWithError:v10];
  }

  return v4;
}

- (id)lockupForBundleID:(id)a3 withContext:(id)a4 enableAppDistribution:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [[ASCPair alloc] initWithFirst:v8 second:v9];
  v11 = [(ASCLockupFetcher *)self bundleCoordinator];
  v12 = [v11 object];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__ASCLockupFetcher_lockupForBundleID_withContext_enableAppDistribution___block_invoke;
  v17[3] = &unk_2781CBAA0;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = a5;
  v13 = v9;
  v14 = v8;
  v15 = [v12 taskForKey:v10 withCreatorBlock:v17];

  return v15;
}

id __72__ASCLockupFetcher_lockupForBundleID_withContext_enableAppDistribution___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingRequests];
  objc_initWeak(&location, v2);

  v3 = [*(a1 + 32) requestCoordinator];
  objc_initWeak(&from, v3);

  v4 = [*(a1 + 32) connection];
  v5 = [v4 lockupFetcherService];
  v6 = [v5 mutablePromiseAdapter];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__ASCLockupFetcher_lockupForBundleID_withContext_enableAppDistribution___block_invoke_2;
  v9[3] = &unk_2781CBA78;
  objc_copyWeak(&v12, &location);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v14 = *(a1 + 56);
  objc_copyWeak(&v13, &from);
  v7 = [v6 thenWithBlock:v9];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v7;
}

id __72__ASCLockupFetcher_lockupForBundleID_withContext_enableAppDistribution___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CEE600]);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained addPromise:v4];

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 64);
  v9 = [v4 completionHandlerAdapter];
  [v3 getLockupForBundleID:v6 withContext:v7 enableAppDistribution:v8 withReplyHandler:v9];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__ASCLockupFetcher_lockupForBundleID_withContext_enableAppDistribution___block_invoke_3;
  v11[3] = &unk_2781CBA50;
  v12 = *(a1 + 40);
  v14 = *(a1 + 64);
  objc_copyWeak(&v13, (a1 + 56));
  [v4 addSuccessBlock:v11];
  objc_destroyWeak(&v13);

  return v4;
}

void __72__ASCLockupFetcher_lockupForBundleID_withContext_enableAppDistribution___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ASCLockupRequest alloc];
  v5 = [v3 id];
  v6 = [v3 kind];
  v7 = [(ASCLockupRequest *)v4 initWithID:v5 kind:v6 context:*(a1 + 32)];

  if (*(a1 + 48) == 1)
  {
    v8 = [(ASCLockupRequest *)v7 lockupRequestWithAppDistributionEnabled];

    v7 = v8;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__ASCLockupFetcher_lockupForBundleID_withContext_enableAppDistribution___block_invoke_4;
  v12[3] = &unk_2781CBA28;
  v13 = v3;
  v10 = v3;
  v11 = [WeakRetained taskForKey:v7 withCreatorBlock:v12];
}

- (id)lockupFromMediaAPIResponse:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ASCLockupFetcher *)self connection];
  v9 = [v8 lockupFetcherService];
  v10 = [v9 mutablePromiseAdapter];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__ASCLockupFetcher_lockupFromMediaAPIResponse_withContext___block_invoke;
  v15[3] = &unk_2781CBAC8;
  v16 = v6;
  v17 = v7;
  v11 = v7;
  v12 = v6;
  v13 = [v10 thenWithBlock:v15];

  return v13;
}

id __59__ASCLockupFetcher_lockupFromMediaAPIResponse_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CEE600];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = [v5 completionHandlerAdapter];
  [v4 buildLockupFromMediaAPIResponse:v7 withContext:v6 withReplyHandler:v8];

  return v5;
}

- (id)collectionWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(ASCLockupFetcher *)self pendingRequests];
  objc_initWeak(&location, v5);

  v6 = [(ASCLockupFetcher *)self requestCoordinator];
  objc_initWeak(&from, v6);

  v7 = [(ASCLockupFetcher *)self connection];
  v8 = [v7 lockupFetcherService];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__ASCLockupFetcher_collectionWithRequest___block_invoke;
  v12[3] = &unk_2781CBB18;
  objc_copyWeak(&v14, &location);
  v9 = v4;
  v13 = v9;
  objc_copyWeak(&v15, &from);
  v10 = [v8 thenWithBlock:v12];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v10;
}

id __42__ASCLockupFetcher_collectionWithRequest___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CEE600]);
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  [WeakRetained addPromise:v4];

  v6 = a1[4];
  v7 = [v4 completionHandlerAdapter];
  [v3 getLockupCollectionWithRequest:v6 withReplyHandler:v7];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__ASCLockupFetcher_collectionWithRequest___block_invoke_2;
  v9[3] = &unk_2781CBAF0;
  v10 = a1[4];
  objc_copyWeak(&v11, a1 + 6);
  [v4 addSuccessBlock:v9];
  objc_destroyWeak(&v11);

  return v4;
}

void __42__ASCLockupFetcher_collectionWithRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v8 = [ASCLockupRequest alloc];
        v9 = [v7 id];
        v10 = [v7 kind];
        v11 = [*(a1 + 32) context];
        v12 = [(ASCLockupRequest *)v8 initWithID:v9 kind:v10 context:v11];

        WeakRetained = objc_loadWeakRetained((a1 + 40));
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __42__ASCLockupFetcher_collectionWithRequest___block_invoke_3;
        v16[3] = &unk_2781CBA28;
        v16[4] = v7;
        v14 = [WeakRetained taskForKey:v12 withCreatorBlock:v16];

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }
}

@end