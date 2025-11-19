@interface ASKResourceLoader
- (ASKResourceLoader)init;
- (ASKResourceLoader)initWithParentResourceLoader:(id)a3;
- (ASKResourceLoader)initWithRequestQueue:(id)a3 accessQueue:(id)a4 notificationQueue:(id)a5 cacheLimit:(int64_t)a6;
- (BOOL)canGoFromOldLoadReason:(int64_t)a3 toNewLoadReason:(int64_t)a4;
- (BOOL)isIdle;
- (BOOL)isIdleForReason:(int64_t)a3;
- (BOOL)isIdleForReasons:(id)a3;
- (BOOL)loadResourceWithRequest:(id)a3 reason:(int64_t)a4;
- (id)cachedResourcesForCacheKey:(id)a3;
- (id)description;
- (id)requestKeyForCacheKey:(id)a3;
- (int64_t)currentQualityOfService;
- (void)_commonInit;
- (void)addResource:(id)a3 forCacheKey:(id)a4;
- (void)cancelAllRequests;
- (void)cancelRequestForCacheKey:(id)a3;
- (void)dealloc;
- (void)enterBackground;
- (void)enterForeground;
- (void)finishLoadForRequest:(id)a3 withResource:(id)a4 error:(id)a5;
- (void)postDidBeginLoadingForReason:(int64_t)a3 requestKey:(id)a4;
- (void)postDidBeginLoadingIfIdle;
- (void)postDidFinishLoadingForReason:(int64_t)a3 requestKey:(id)a4;
- (void)postDidIdleIfIdle;
- (void)postDidLoadAllForReason:(int64_t)a3;
- (void)prefetchResourceWithRequest:(id)a3;
- (void)removeAllCachedResources;
- (void)reprioritizeOperations;
- (void)setDidGoOffScreenForRequestWithKey:(id)a3;
- (void)updateLoadReason:(int64_t)a3 forOperation:(id)a4 requestKey:(id)a5 onlyIfHigherPriority:(BOOL)a6;
@end

@implementation ASKResourceLoader

- (void)_commonInit
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  pendingOperations = self->_pendingOperations;
  self->_pendingOperations = v3;

  v5 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:0];
  requestsByCacheKey = self->_requestsByCacheKey;
  self->_requestsByCacheKey = v5;
}

- (ASKResourceLoader)initWithRequestQueue:(id)a3 accessQueue:(id)a4 notificationQueue:(id)a5 cacheLimit:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v19.receiver = self;
  v19.super_class = ASKResourceLoader;
  v14 = [(ASKResourceLoader *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_requestQueue, a3);
    objc_storeStrong(&v15->_accessQueue, a4);
    objc_storeStrong(&v15->_notificationQueue, a5);
    v16 = objc_alloc_init(ASKResourceCache);
    cachedResources = v15->_cachedResources;
    v15->_cachedResources = v16;

    [(ASKResourceCache *)v15->_cachedResources setLimit:a6];
    [(ASKResourceCache *)v15->_cachedResources setEvictsObjectsWhenApplicationEntersBackground:0];
    [(ASKResourceLoader *)v15 _commonInit];
  }

  return v15;
}

- (ASKResourceLoader)initWithParentResourceLoader:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ASKResourceLoader;
  v5 = [(ASKResourceLoader *)&v15 init];
  if (v5)
  {
    v6 = [v4 requestQueue];
    requestQueue = v5->_requestQueue;
    v5->_requestQueue = v6;

    v8 = [v4 accessQueue];
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v8;

    v10 = [v4 notificationQueue];
    notificationQueue = v5->_notificationQueue;
    v5->_notificationQueue = v10;

    v12 = [v4 cachedResources];
    cachedResources = v5->_cachedResources;
    v5->_cachedResources = v12;

    [(ASKResourceLoader *)v5 _commonInit];
    v5->_isInBackground = 1;
  }

  return v5;
}

- (ASKResourceLoader)init
{
  [(ASKResourceLoader *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  [(ASKResourceLoader *)self cancelAllRequests];
  v3.receiver = self;
  v3.super_class = ASKResourceLoader;
  [(ASKResourceLoader *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ASKResourceLoader *)self requestQueue];
  v7 = [(ASKResourceLoader *)self accessQueue];
  v8 = [(ASKResourceLoader *)self notificationQueue];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASKResourceLoader isInBackground](self, "isInBackground")}];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{onScreen: %ld, onScreenInitialViewport: %ld, offScreen: %ld, offScreenInitialViewport: %ld, prefetch: %ld, none: %ld}", self->_requestCountMap[4], self->_requestCountMap[5], self->_requestCountMap[2], self->_requestCountMap[3], self->_requestCountMap[1], self->_requestCountMap[0]];
  v11 = [v3 stringWithFormat:@"<%@:%p requestQueue = %@, accessQueue = %@, notificationQueue = %@, isInBackground = %@, loadCounts = %@>", v5, self, v6, v7, v8, v9, v10];

  return v11;
}

- (void)addResource:(id)a3 forCacheKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ASKResourceLoader *)self cachedResources];
  [v8 addResource:v7 forKey:v6];
}

- (id)cachedResourcesForCacheKey:(id)a3
{
  v4 = a3;
  v5 = [(ASKResourceLoader *)self cachedResources];
  v6 = [v5 resourcesForKey:v4];

  return v6;
}

- (void)removeAllCachedResources
{
  v2 = [(ASKResourceLoader *)self cachedResources];
  [v2 removeAllResources];
}

- (id)requestKeyForCacheKey:(id)a3
{
  v4 = a3;
  v5 = [(ASKResourceLoader *)self requestsByCacheKey];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)cancelAllRequests
{
  v3 = [(ASKResourceLoader *)self pendingOperations];
  v4 = [v3 allValues];
  [v4 makeObjectsPerformSelector:sel_cancel];

  v5 = [(ASKResourceLoader *)self pendingOperations];
  [v5 removeAllObjects];

  v6 = [(ASKResourceLoader *)self requestsByCacheKey];
  [v6 removeAllObjects];

  if (self->_requestCountMap[0] >= 1)
  {
    self->_requestCountMap[0] = 0;
  }

  if (self->_requestCountMap[1] >= 1)
  {
    self->_requestCountMap[1] = 0;
  }

  if (self->_requestCountMap[4] >= 1)
  {
    self->_requestCountMap[4] = 0;
  }

  if (self->_requestCountMap[5] >= 1)
  {
    self->_requestCountMap[5] = 0;
  }

  if (self->_requestCountMap[2] >= 1)
  {
    self->_requestCountMap[2] = 0;
  }

  if (self->_requestCountMap[3] >= 1)
  {
    self->_requestCountMap[3] = 0;
  }
}

- (void)cancelRequestForCacheKey:(id)a3
{
  v11 = a3;
  v4 = [(ASKResourceLoader *)self requestKeyForCacheKey:?];
  if (v4)
  {
    v5 = [(ASKResourceLoader *)self pendingOperations];
    v6 = [v5 objectForKeyedSubscript:v4];

    if (v6)
    {
      [v6 cancel];
      v7 = [(ASKResourceLoader *)self pendingOperations];
      [v7 removeObjectForKey:v4];

      v8 = [(ASKResourceLoader *)self requestsByCacheKey];
      [v8 removeObjectForKey:v11];

      v9 = [v6 _loadReason];
      [(ASKResourceLoader *)self postDidFinishLoadingForReason:v9 requestKey:v4];
      v10 = self->_requestCountMap[v9];
      if (v10 >= 1)
      {
        self->_requestCountMap[v9] = --v10;
      }

      if (!v10)
      {
        [(ASKResourceLoader *)self postDidLoadAllForReason:v9];
      }
    }
  }
}

- (void)enterBackground
{
  if (!self->_isInBackground)
  {
    self->_isInBackground = 1;
    [(ASKResourceLoader *)self reprioritizeOperations];
  }
}

- (void)enterForeground
{
  if (self->_isInBackground)
  {
    self->_isInBackground = 0;
    [(ASKResourceLoader *)self reprioritizeOperations];
  }
}

- (BOOL)isIdle
{
  v2 = [(ASKResourceLoader *)self pendingOperations];
  v3 = [v2 count] == 0;

  return v3;
}

- (BOOL)isIdleForReason:(int64_t)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  LOBYTE(self) = [(ASKResourceLoader *)self isIdleForReasons:v5];

  return self;
}

- (BOOL)isIdleForReasons:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    requestCountMap = self->_requestCountMap;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (requestCountMap[[*(*(&v12 + 1) + 8 * i) integerValue]])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)prefetchResourceWithRequest:(id)a3
{
  v7 = a3;
  v4 = [v7 requestKey];
  v5 = [(ASKResourceLoader *)self pendingOperations];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    [(ASKResourceLoader *)self loadResourceWithRequest:v7 reason:1];
  }
}

- (BOOL)loadResourceWithRequest:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 requestKey];
  v8 = [(ASKResourceLoader *)self pendingOperations];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    [(ASKResourceLoader *)self updateLoadReason:a4 forOperation:v9 requestKey:v7 onlyIfHigherPriority:1];
  }

  else
  {
    v10 = [v6 makeLoadOperation];
    [v10 setQualityOfService:{-[ASKResourceLoader currentQualityOfService](self, "currentQualityOfService")}];
    [(ASKResourceLoader *)self updateLoadReason:a4 forOperation:v10 requestKey:v7 onlyIfHigherPriority:0];
    objc_initWeak(&location, self);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __52__ASKResourceLoader_loadResourceWithRequest_reason___block_invoke;
    v17[3] = &unk_1E870C8A0;
    objc_copyWeak(&v19, &location);
    v11 = v6;
    v18 = v11;
    [v10 setOutputBlock:v17];
    [(ASKResourceLoader *)self postDidBeginLoadingIfIdle];
    [(ASKResourceLoader *)self postDidBeginLoadingForReason:a4 requestKey:v7];
    v12 = [(ASKResourceLoader *)self pendingOperations];
    [v12 setObject:v10 forKeyedSubscript:v7];

    v13 = [(ASKResourceLoader *)self requestsByCacheKey];
    v14 = [v11 cacheKey];
    [v13 setObject:v7 forKey:v14];

    v15 = [(ASKResourceLoader *)self requestQueue];
    [v15 addOperation:v10];

    ++self->_requestCountMap[a4];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v9 == 0;
}

void __52__ASKResourceLoader_loadResourceWithRequest_reason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained accessQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__ASKResourceLoader_loadResourceWithRequest_reason___block_invoke_2;
  v11[3] = &unk_1E870C878;
  objc_copyWeak(&v15, (a1 + 40));
  v12 = *(a1 + 32);
  v9 = v5;
  v13 = v9;
  v10 = v6;
  v14 = v10;
  [v8 addOperationWithBlock:v11];

  objc_destroyWeak(&v15);
}

void __52__ASKResourceLoader_loadResourceWithRequest_reason___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained finishLoadForRequest:*(a1 + 32) withResource:*(a1 + 40) error:*(a1 + 48)];
}

- (void)finishLoadForRequest:(id)a3 withResource:(id)a4 error:(id)a5
{
  v23 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v23 requestKey];
  v11 = [v23 cacheKey];
  v12 = [(ASKResourceLoader *)self pendingOperations];
  v13 = [v12 objectForKeyedSubscript:v10];

  v14 = [v13 _loadReason];
  v15 = [(ASKResourceLoader *)self pendingOperations];
  [v15 removeObjectForKey:v10];

  v16 = [(ASKResourceLoader *)self requestsByCacheKey];
  [v16 removeObjectForKey:v11];

  v17 = [(ASKResourceLoader *)self cachedResources];
  if ([v17 isGroupMember])
  {
    v18 = [(ASKResourceLoader *)self isInBackground];
  }

  else
  {
    v18 = 0;
  }

  if (v8)
  {
    if (!v18)
    {
      v19 = [v23 cacheOptions];
      if ((v19 & 2) != 0)
      {
        v20 = [(ASKResourceLoader *)self cachedResources];
        v21 = v20;
        if ((v19 & 4) != 0)
        {
          [v20 replaceResourcesForKey:v11 withResource:v8];
        }

        else
        {
          [v20 addResource:v8 forKey:v11];
        }
      }
    }
  }

  [v23 didLoadResource:v8 error:v9];
  [(ASKResourceLoader *)self postDidFinishLoadingForReason:v14 requestKey:v10];
  v22 = self->_requestCountMap[v14];
  if (v22 >= 1)
  {
    self->_requestCountMap[v14] = --v22;
  }

  if (!v22)
  {
    [(ASKResourceLoader *)self postDidLoadAllForReason:v14];
  }

  [(ASKResourceLoader *)self postDidIdleIfIdle];
}

- (void)setDidGoOffScreenForRequestWithKey:(id)a3
{
  v8 = a3;
  v4 = [(ASKResourceLoader *)self pendingOperations];
  v5 = [v4 objectForKeyedSubscript:v8];

  if (v5)
  {
    v6 = [v5 _loadReason];
    if (v6 == 4)
    {
      v7 = 2;
    }

    else
    {
      if (v6 != 5)
      {
        goto LABEL_7;
      }

      v7 = 3;
    }

    [(ASKResourceLoader *)self updateLoadReason:v7 forOperation:v5 requestKey:v8 onlyIfHigherPriority:0];
  }

LABEL_7:
}

- (int64_t)currentQualityOfService
{
  if ([(ASKResourceLoader *)self isInBackground])
  {
    return 9;
  }

  else
  {
    return 25;
  }
}

- (void)updateLoadReason:(int64_t)a3 forOperation:(id)a4 requestKey:(id)a5 onlyIfHigherPriority:(BOOL)a6
{
  v17 = a4;
  v10 = a5;
  v11 = [v17 _loadReason];
  Reason = NSOperationQueuePriorityForLoadReason(v11, [(ASKResourceLoader *)self isInBackground]);
  v13 = NSOperationQueuePriorityForLoadReason(a3, [(ASKResourceLoader *)self isInBackground]);
  v14 = v13 <= Reason && a6;
  if (!v14 && v11 != a3)
  {
    v15 = v13;
    if ([(ASKResourceLoader *)self canGoFromOldLoadReason:v11 toNewLoadReason:a3])
    {
      [v17 _setLoadReason:a3];
      [(ASKResourceLoader *)self postDidFinishLoadingForReason:v11 requestKey:v10];
      v16 = self->_requestCountMap[v11];
      if (v16 >= 1)
      {
        self->_requestCountMap[v11] = --v16;
      }

      if (!v16)
      {
        [(ASKResourceLoader *)self postDidLoadAllForReason:v11];
      }

      [v17 setQueuePriority:v15];
    }
  }
}

- (BOOL)canGoFromOldLoadReason:(int64_t)a3 toNewLoadReason:(int64_t)a4
{
  v5 = a3 == 5 || a3 == 3;
  v7 = a4 != 5 && a4 != 3;
  v8 = v5 ^ v7;
  v9 = a3 < 2 || v8;
  return a4 && v9;
}

- (void)reprioritizeOperations
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(ASKResourceLoader *)self currentQualityOfService];
  v4 = [(ASKResourceLoader *)self isInBackground];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(ASKResourceLoader *)self pendingOperations];
  v6 = [v5 objectEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        [v11 setQueuePriority:{NSOperationQueuePriorityForLoadReason(objc_msgSend(v11, "_loadReason"), v4)}];
        [v11 setQualityOfService:v3];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)postDidBeginLoadingIfIdle
{
  if ([(ASKResourceLoader *)self isIdle])
  {
    objc_initWeak(&location, self);
    v3 = [(ASKResourceLoader *)self notificationQueue];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __46__ASKResourceLoader_postDidBeginLoadingIfIdle__block_invoke;
    v4[3] = &unk_1E870C358;
    objc_copyWeak(&v5, &location);
    [v3 addOperationWithBlock:v4];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __46__ASKResourceLoader_postDidBeginLoadingIfIdle__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 postNotificationName:@"ASKResourceLoaderDidBeginLoadingNotification" object:v3];

    WeakRetained = v3;
  }
}

- (void)postDidIdleIfIdle
{
  if ([(ASKResourceLoader *)self isIdle])
  {
    objc_initWeak(&location, self);
    v3 = [(ASKResourceLoader *)self notificationQueue];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __38__ASKResourceLoader_postDidIdleIfIdle__block_invoke;
    v4[3] = &unk_1E870C358;
    objc_copyWeak(&v5, &location);
    [v3 addOperationWithBlock:v4];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __38__ASKResourceLoader_postDidIdleIfIdle__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 postNotificationName:@"ASKResourceLoaderDidIdleNotification" object:v3];

    WeakRetained = v3;
  }
}

- (void)postDidBeginLoadingForReason:(int64_t)a3 requestKey:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = [(ASKResourceLoader *)self notificationQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__ASKResourceLoader_postDidBeginLoadingForReason_requestKey___block_invoke;
  v9[3] = &unk_1E870C8C8;
  objc_copyWeak(v11, &location);
  v11[1] = a3;
  v8 = v6;
  v10 = v8;
  [v7 addOperationWithBlock:v9];

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __61__ASKResourceLoader_postDidBeginLoadingForReason_requestKey___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v7[0] = @"ASKResourceLoaderLoadReasonUserInfoKey";
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
    v7[1] = @"ASKResourceLoaderRequestKeyUserInfoKey";
    v8[0] = v4;
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "hash")}];
    v8[1] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
    [v3 postNotificationName:@"ASKResourceLoaderDidBeginLoadingForReasonNotification" object:WeakRetained userInfo:v6];
  }
}

- (void)postDidFinishLoadingForReason:(int64_t)a3 requestKey:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = [(ASKResourceLoader *)self notificationQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__ASKResourceLoader_postDidFinishLoadingForReason_requestKey___block_invoke;
  v9[3] = &unk_1E870C8C8;
  objc_copyWeak(v11, &location);
  v11[1] = a3;
  v8 = v6;
  v10 = v8;
  [v7 addOperationWithBlock:v9];

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __62__ASKResourceLoader_postDidFinishLoadingForReason_requestKey___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v7[0] = @"ASKResourceLoaderLoadReasonUserInfoKey";
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
    v7[1] = @"ASKResourceLoaderRequestKeyUserInfoKey";
    v8[0] = v4;
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "hash")}];
    v8[1] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
    [v3 postNotificationName:@"ASKResourceLoaderDidFinishLoadingForReasonNotification" object:WeakRetained userInfo:v6];
  }
}

- (void)postDidLoadAllForReason:(int64_t)a3
{
  objc_initWeak(&location, self);
  v5 = [(ASKResourceLoader *)self notificationQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__ASKResourceLoader_postDidLoadAllForReason___block_invoke;
  v6[3] = &unk_1E870C8F0;
  objc_copyWeak(v7, &location);
  v7[1] = a3;
  [v5 addOperationWithBlock:v6];

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __45__ASKResourceLoader_postDidLoadAllForReason___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = @"ASKResourceLoaderLoadReasonUserInfoKey";
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
    v7[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    [v3 postNotificationName:@"ASKResourceLoaderDidLoadAllForReasonNotification" object:WeakRetained userInfo:v5];
  }
}

@end