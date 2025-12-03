@interface ASKResourceLoader
- (ASKResourceLoader)init;
- (ASKResourceLoader)initWithParentResourceLoader:(id)loader;
- (ASKResourceLoader)initWithRequestQueue:(id)queue accessQueue:(id)accessQueue notificationQueue:(id)notificationQueue cacheLimit:(int64_t)limit;
- (BOOL)canGoFromOldLoadReason:(int64_t)reason toNewLoadReason:(int64_t)loadReason;
- (BOOL)isIdle;
- (BOOL)isIdleForReason:(int64_t)reason;
- (BOOL)isIdleForReasons:(id)reasons;
- (BOOL)loadResourceWithRequest:(id)request reason:(int64_t)reason;
- (id)cachedResourcesForCacheKey:(id)key;
- (id)description;
- (id)requestKeyForCacheKey:(id)key;
- (int64_t)currentQualityOfService;
- (void)_commonInit;
- (void)addResource:(id)resource forCacheKey:(id)key;
- (void)cancelAllRequests;
- (void)cancelRequestForCacheKey:(id)key;
- (void)dealloc;
- (void)enterBackground;
- (void)enterForeground;
- (void)finishLoadForRequest:(id)request withResource:(id)resource error:(id)error;
- (void)postDidBeginLoadingForReason:(int64_t)reason requestKey:(id)key;
- (void)postDidBeginLoadingIfIdle;
- (void)postDidFinishLoadingForReason:(int64_t)reason requestKey:(id)key;
- (void)postDidIdleIfIdle;
- (void)postDidLoadAllForReason:(int64_t)reason;
- (void)prefetchResourceWithRequest:(id)request;
- (void)removeAllCachedResources;
- (void)reprioritizeOperations;
- (void)setDidGoOffScreenForRequestWithKey:(id)key;
- (void)updateLoadReason:(int64_t)reason forOperation:(id)operation requestKey:(id)key onlyIfHigherPriority:(BOOL)priority;
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

- (ASKResourceLoader)initWithRequestQueue:(id)queue accessQueue:(id)accessQueue notificationQueue:(id)notificationQueue cacheLimit:(int64_t)limit
{
  queueCopy = queue;
  accessQueueCopy = accessQueue;
  notificationQueueCopy = notificationQueue;
  v19.receiver = self;
  v19.super_class = ASKResourceLoader;
  v14 = [(ASKResourceLoader *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_requestQueue, queue);
    objc_storeStrong(&v15->_accessQueue, accessQueue);
    objc_storeStrong(&v15->_notificationQueue, notificationQueue);
    v16 = objc_alloc_init(ASKResourceCache);
    cachedResources = v15->_cachedResources;
    v15->_cachedResources = v16;

    [(ASKResourceCache *)v15->_cachedResources setLimit:limit];
    [(ASKResourceCache *)v15->_cachedResources setEvictsObjectsWhenApplicationEntersBackground:0];
    [(ASKResourceLoader *)v15 _commonInit];
  }

  return v15;
}

- (ASKResourceLoader)initWithParentResourceLoader:(id)loader
{
  loaderCopy = loader;
  v15.receiver = self;
  v15.super_class = ASKResourceLoader;
  v5 = [(ASKResourceLoader *)&v15 init];
  if (v5)
  {
    requestQueue = [loaderCopy requestQueue];
    requestQueue = v5->_requestQueue;
    v5->_requestQueue = requestQueue;

    accessQueue = [loaderCopy accessQueue];
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = accessQueue;

    notificationQueue = [loaderCopy notificationQueue];
    notificationQueue = v5->_notificationQueue;
    v5->_notificationQueue = notificationQueue;

    cachedResources = [loaderCopy cachedResources];
    cachedResources = v5->_cachedResources;
    v5->_cachedResources = cachedResources;

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
  requestQueue = [(ASKResourceLoader *)self requestQueue];
  accessQueue = [(ASKResourceLoader *)self accessQueue];
  notificationQueue = [(ASKResourceLoader *)self notificationQueue];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASKResourceLoader isInBackground](self, "isInBackground")}];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{onScreen: %ld, onScreenInitialViewport: %ld, offScreen: %ld, offScreenInitialViewport: %ld, prefetch: %ld, none: %ld}", self->_requestCountMap[4], self->_requestCountMap[5], self->_requestCountMap[2], self->_requestCountMap[3], self->_requestCountMap[1], self->_requestCountMap[0]];
  v11 = [v3 stringWithFormat:@"<%@:%p requestQueue = %@, accessQueue = %@, notificationQueue = %@, isInBackground = %@, loadCounts = %@>", v5, self, requestQueue, accessQueue, notificationQueue, v9, v10];

  return v11;
}

- (void)addResource:(id)resource forCacheKey:(id)key
{
  keyCopy = key;
  resourceCopy = resource;
  cachedResources = [(ASKResourceLoader *)self cachedResources];
  [cachedResources addResource:resourceCopy forKey:keyCopy];
}

- (id)cachedResourcesForCacheKey:(id)key
{
  keyCopy = key;
  cachedResources = [(ASKResourceLoader *)self cachedResources];
  v6 = [cachedResources resourcesForKey:keyCopy];

  return v6;
}

- (void)removeAllCachedResources
{
  cachedResources = [(ASKResourceLoader *)self cachedResources];
  [cachedResources removeAllResources];
}

- (id)requestKeyForCacheKey:(id)key
{
  keyCopy = key;
  requestsByCacheKey = [(ASKResourceLoader *)self requestsByCacheKey];
  v6 = [requestsByCacheKey objectForKey:keyCopy];

  return v6;
}

- (void)cancelAllRequests
{
  pendingOperations = [(ASKResourceLoader *)self pendingOperations];
  allValues = [pendingOperations allValues];
  [allValues makeObjectsPerformSelector:sel_cancel];

  pendingOperations2 = [(ASKResourceLoader *)self pendingOperations];
  [pendingOperations2 removeAllObjects];

  requestsByCacheKey = [(ASKResourceLoader *)self requestsByCacheKey];
  [requestsByCacheKey removeAllObjects];

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

- (void)cancelRequestForCacheKey:(id)key
{
  keyCopy = key;
  v4 = [(ASKResourceLoader *)self requestKeyForCacheKey:?];
  if (v4)
  {
    pendingOperations = [(ASKResourceLoader *)self pendingOperations];
    v6 = [pendingOperations objectForKeyedSubscript:v4];

    if (v6)
    {
      [v6 cancel];
      pendingOperations2 = [(ASKResourceLoader *)self pendingOperations];
      [pendingOperations2 removeObjectForKey:v4];

      requestsByCacheKey = [(ASKResourceLoader *)self requestsByCacheKey];
      [requestsByCacheKey removeObjectForKey:keyCopy];

      _loadReason = [v6 _loadReason];
      [(ASKResourceLoader *)self postDidFinishLoadingForReason:_loadReason requestKey:v4];
      v10 = self->_requestCountMap[_loadReason];
      if (v10 >= 1)
      {
        self->_requestCountMap[_loadReason] = --v10;
      }

      if (!v10)
      {
        [(ASKResourceLoader *)self postDidLoadAllForReason:_loadReason];
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
  pendingOperations = [(ASKResourceLoader *)self pendingOperations];
  v3 = [pendingOperations count] == 0;

  return v3;
}

- (BOOL)isIdleForReason:(int64_t)reason
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  LOBYTE(self) = [(ASKResourceLoader *)self isIdleForReasons:v5];

  return self;
}

- (BOOL)isIdleForReasons:(id)reasons
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  reasonsCopy = reasons;
  v5 = [reasonsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(reasonsCopy);
        }

        if (requestCountMap[[*(*(&v12 + 1) + 8 * i) integerValue]])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v6 = [reasonsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)prefetchResourceWithRequest:(id)request
{
  requestCopy = request;
  requestKey = [requestCopy requestKey];
  pendingOperations = [(ASKResourceLoader *)self pendingOperations];
  v6 = [pendingOperations objectForKeyedSubscript:requestKey];

  if (!v6)
  {
    [(ASKResourceLoader *)self loadResourceWithRequest:requestCopy reason:1];
  }
}

- (BOOL)loadResourceWithRequest:(id)request reason:(int64_t)reason
{
  requestCopy = request;
  requestKey = [requestCopy requestKey];
  pendingOperations = [(ASKResourceLoader *)self pendingOperations];
  v9 = [pendingOperations objectForKeyedSubscript:requestKey];

  if (v9)
  {
    [(ASKResourceLoader *)self updateLoadReason:reason forOperation:v9 requestKey:requestKey onlyIfHigherPriority:1];
  }

  else
  {
    makeLoadOperation = [requestCopy makeLoadOperation];
    [makeLoadOperation setQualityOfService:{-[ASKResourceLoader currentQualityOfService](self, "currentQualityOfService")}];
    [(ASKResourceLoader *)self updateLoadReason:reason forOperation:makeLoadOperation requestKey:requestKey onlyIfHigherPriority:0];
    objc_initWeak(&location, self);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __52__ASKResourceLoader_loadResourceWithRequest_reason___block_invoke;
    v17[3] = &unk_1E870C8A0;
    objc_copyWeak(&v19, &location);
    v11 = requestCopy;
    v18 = v11;
    [makeLoadOperation setOutputBlock:v17];
    [(ASKResourceLoader *)self postDidBeginLoadingIfIdle];
    [(ASKResourceLoader *)self postDidBeginLoadingForReason:reason requestKey:requestKey];
    pendingOperations2 = [(ASKResourceLoader *)self pendingOperations];
    [pendingOperations2 setObject:makeLoadOperation forKeyedSubscript:requestKey];

    requestsByCacheKey = [(ASKResourceLoader *)self requestsByCacheKey];
    cacheKey = [v11 cacheKey];
    [requestsByCacheKey setObject:requestKey forKey:cacheKey];

    requestQueue = [(ASKResourceLoader *)self requestQueue];
    [requestQueue addOperation:makeLoadOperation];

    ++self->_requestCountMap[reason];
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

- (void)finishLoadForRequest:(id)request withResource:(id)resource error:(id)error
{
  requestCopy = request;
  resourceCopy = resource;
  errorCopy = error;
  requestKey = [requestCopy requestKey];
  cacheKey = [requestCopy cacheKey];
  pendingOperations = [(ASKResourceLoader *)self pendingOperations];
  v13 = [pendingOperations objectForKeyedSubscript:requestKey];

  _loadReason = [v13 _loadReason];
  pendingOperations2 = [(ASKResourceLoader *)self pendingOperations];
  [pendingOperations2 removeObjectForKey:requestKey];

  requestsByCacheKey = [(ASKResourceLoader *)self requestsByCacheKey];
  [requestsByCacheKey removeObjectForKey:cacheKey];

  cachedResources = [(ASKResourceLoader *)self cachedResources];
  if ([cachedResources isGroupMember])
  {
    isInBackground = [(ASKResourceLoader *)self isInBackground];
  }

  else
  {
    isInBackground = 0;
  }

  if (resourceCopy)
  {
    if (!isInBackground)
    {
      cacheOptions = [requestCopy cacheOptions];
      if ((cacheOptions & 2) != 0)
      {
        cachedResources2 = [(ASKResourceLoader *)self cachedResources];
        v21 = cachedResources2;
        if ((cacheOptions & 4) != 0)
        {
          [cachedResources2 replaceResourcesForKey:cacheKey withResource:resourceCopy];
        }

        else
        {
          [cachedResources2 addResource:resourceCopy forKey:cacheKey];
        }
      }
    }
  }

  [requestCopy didLoadResource:resourceCopy error:errorCopy];
  [(ASKResourceLoader *)self postDidFinishLoadingForReason:_loadReason requestKey:requestKey];
  v22 = self->_requestCountMap[_loadReason];
  if (v22 >= 1)
  {
    self->_requestCountMap[_loadReason] = --v22;
  }

  if (!v22)
  {
    [(ASKResourceLoader *)self postDidLoadAllForReason:_loadReason];
  }

  [(ASKResourceLoader *)self postDidIdleIfIdle];
}

- (void)setDidGoOffScreenForRequestWithKey:(id)key
{
  keyCopy = key;
  pendingOperations = [(ASKResourceLoader *)self pendingOperations];
  v5 = [pendingOperations objectForKeyedSubscript:keyCopy];

  if (v5)
  {
    _loadReason = [v5 _loadReason];
    if (_loadReason == 4)
    {
      v7 = 2;
    }

    else
    {
      if (_loadReason != 5)
      {
        goto LABEL_7;
      }

      v7 = 3;
    }

    [(ASKResourceLoader *)self updateLoadReason:v7 forOperation:v5 requestKey:keyCopy onlyIfHigherPriority:0];
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

- (void)updateLoadReason:(int64_t)reason forOperation:(id)operation requestKey:(id)key onlyIfHigherPriority:(BOOL)priority
{
  operationCopy = operation;
  keyCopy = key;
  _loadReason = [operationCopy _loadReason];
  Reason = NSOperationQueuePriorityForLoadReason(_loadReason, [(ASKResourceLoader *)self isInBackground]);
  v13 = NSOperationQueuePriorityForLoadReason(reason, [(ASKResourceLoader *)self isInBackground]);
  v14 = v13 <= Reason && priority;
  if (!v14 && _loadReason != reason)
  {
    v15 = v13;
    if ([(ASKResourceLoader *)self canGoFromOldLoadReason:_loadReason toNewLoadReason:reason])
    {
      [operationCopy _setLoadReason:reason];
      [(ASKResourceLoader *)self postDidFinishLoadingForReason:_loadReason requestKey:keyCopy];
      v16 = self->_requestCountMap[_loadReason];
      if (v16 >= 1)
      {
        self->_requestCountMap[_loadReason] = --v16;
      }

      if (!v16)
      {
        [(ASKResourceLoader *)self postDidLoadAllForReason:_loadReason];
      }

      [operationCopy setQueuePriority:v15];
    }
  }
}

- (BOOL)canGoFromOldLoadReason:(int64_t)reason toNewLoadReason:(int64_t)loadReason
{
  v5 = reason == 5 || reason == 3;
  v7 = loadReason != 5 && loadReason != 3;
  v8 = v5 ^ v7;
  v9 = reason < 2 || v8;
  return loadReason && v9;
}

- (void)reprioritizeOperations
{
  v17 = *MEMORY[0x1E69E9840];
  currentQualityOfService = [(ASKResourceLoader *)self currentQualityOfService];
  isInBackground = [(ASKResourceLoader *)self isInBackground];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  pendingOperations = [(ASKResourceLoader *)self pendingOperations];
  objectEnumerator = [pendingOperations objectEnumerator];

  v7 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        [v11 setQueuePriority:{NSOperationQueuePriorityForLoadReason(objc_msgSend(v11, "_loadReason"), isInBackground)}];
        [v11 setQualityOfService:currentQualityOfService];
      }

      v8 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)postDidBeginLoadingIfIdle
{
  if ([(ASKResourceLoader *)self isIdle])
  {
    objc_initWeak(&location, self);
    notificationQueue = [(ASKResourceLoader *)self notificationQueue];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __46__ASKResourceLoader_postDidBeginLoadingIfIdle__block_invoke;
    v4[3] = &unk_1E870C358;
    objc_copyWeak(&v5, &location);
    [notificationQueue addOperationWithBlock:v4];

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
    notificationQueue = [(ASKResourceLoader *)self notificationQueue];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __38__ASKResourceLoader_postDidIdleIfIdle__block_invoke;
    v4[3] = &unk_1E870C358;
    objc_copyWeak(&v5, &location);
    [notificationQueue addOperationWithBlock:v4];

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

- (void)postDidBeginLoadingForReason:(int64_t)reason requestKey:(id)key
{
  keyCopy = key;
  objc_initWeak(&location, self);
  notificationQueue = [(ASKResourceLoader *)self notificationQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__ASKResourceLoader_postDidBeginLoadingForReason_requestKey___block_invoke;
  v9[3] = &unk_1E870C8C8;
  objc_copyWeak(v11, &location);
  v11[1] = reason;
  v8 = keyCopy;
  v10 = v8;
  [notificationQueue addOperationWithBlock:v9];

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

- (void)postDidFinishLoadingForReason:(int64_t)reason requestKey:(id)key
{
  keyCopy = key;
  objc_initWeak(&location, self);
  notificationQueue = [(ASKResourceLoader *)self notificationQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__ASKResourceLoader_postDidFinishLoadingForReason_requestKey___block_invoke;
  v9[3] = &unk_1E870C8C8;
  objc_copyWeak(v11, &location);
  v11[1] = reason;
  v8 = keyCopy;
  v10 = v8;
  [notificationQueue addOperationWithBlock:v9];

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

- (void)postDidLoadAllForReason:(int64_t)reason
{
  objc_initWeak(&location, self);
  notificationQueue = [(ASKResourceLoader *)self notificationQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__ASKResourceLoader_postDidLoadAllForReason___block_invoke;
  v6[3] = &unk_1E870C8F0;
  objc_copyWeak(v7, &location);
  v7[1] = reason;
  [notificationQueue addOperationWithBlock:v6];

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