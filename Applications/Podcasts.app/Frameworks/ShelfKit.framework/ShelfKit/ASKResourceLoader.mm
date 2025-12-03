@interface ASKResourceLoader
- (ASKResourceLoader)init;
- (ASKResourceLoader)initWithParentResourceLoader:(id)loader;
- (ASKResourceLoader)initWithRequestQueue:(id)queue accessQueue:(id)accessQueue notificationQueue:(id)notificationQueue cacheLimit:(int64_t)limit;
- (BOOL)isIdle;
- (BOOL)loadResourceWithRequest:(id)request reason:(int64_t)reason;
- (BOOL)setReason:(int64_t)reason forRequestWithKey:(id)key;
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
- (void)postDidBeginLoadingIfIdle;
- (void)postDidIdleIfIdle;
- (void)postDidLoadAllForReason:(int64_t)reason;
- (void)removeAllCachedResources;
- (void)reprioritizeOperations;
- (void)updateLoadReason:(int64_t)reason forOperation:(id)operation;
@end

@implementation ASKResourceLoader

- (void)_commonInit
{
  v3 = objc_alloc_init(NSMutableDictionary);
  pendingOperations = self->_pendingOperations;
  self->_pendingOperations = v3;

  self->_requestsByCacheKey = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:0 capacity:0];

  _objc_release_x1();
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
    v16 = objc_alloc_init(NSCache);
    cachedResources = v15->_cachedResources;
    v15->_cachedResources = v16;

    [(NSCache *)v15->_cachedResources setCountLimit:limit];
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
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  requestQueue = [(ASKResourceLoader *)self requestQueue];
  accessQueue = [(ASKResourceLoader *)self accessQueue];
  notificationQueue = [(ASKResourceLoader *)self notificationQueue];
  v8 = [NSNumber numberWithBool:[(ASKResourceLoader *)self isInBackground]];
  v9 = [NSString stringWithFormat:@"{onScreen: %ld, cacheAhead: %ld, cacheFarAhead: %ld}", self->_requestCountMap[2], self->_requestCountMap[1], self->_requestCountMap[0]];
  v10 = [NSString stringWithFormat:@"<%@:%p requestQueue = %@, accessQueue = %@, notificationQueue = %@, isInBackground = %@, loadCounts = %@>", v4, self, requestQueue, accessQueue, notificationQueue, v8, v9];

  return v10;
}

- (void)addResource:(id)resource forCacheKey:(id)key
{
  resourceCopy = resource;
  keyCopy = key;
  cachedResources = [(ASKResourceLoader *)self cachedResources];
  v9 = [cachedResources objectForKey:keyCopy];

  if (v9)
  {
    v10 = [v9 arrayByAddingObject:resourceCopy];
  }

  else
  {
    v12 = resourceCopy;
    v10 = [NSArray arrayWithObjects:&v12 count:1];
  }

  cachedResources2 = [(ASKResourceLoader *)self cachedResources];
  [cachedResources2 setObject:v10 forKey:keyCopy];
}

- (id)cachedResourcesForCacheKey:(id)key
{
  keyCopy = key;
  cachedResources = [(ASKResourceLoader *)self cachedResources];
  v6 = [cachedResources objectForKey:keyCopy];

  return v6;
}

- (void)removeAllCachedResources
{
  cachedResources = [(ASKResourceLoader *)self cachedResources];
  [cachedResources removeAllObjects];
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
  [allValues makeObjectsPerformSelector:"cancel"];

  pendingOperations2 = [(ASKResourceLoader *)self pendingOperations];
  [pendingOperations2 removeAllObjects];

  requestsByCacheKey = [(ASKResourceLoader *)self requestsByCacheKey];
  [requestsByCacheKey removeAllObjects];

  if (self->_requestCountMap[2] >= 1)
  {
    self->_requestCountMap[2] = 0;
  }

  if (self->_requestCountMap[1] >= 1)
  {
    self->_requestCountMap[1] = 0;
  }

  if (self->_requestCountMap[0] >= 1)
  {
    self->_requestCountMap[0] = 0;
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

- (BOOL)loadResourceWithRequest:(id)request reason:(int64_t)reason
{
  requestCopy = request;
  requestKey = [requestCopy requestKey];
  pendingOperations = [(ASKResourceLoader *)self pendingOperations];
  v9 = [pendingOperations objectForKeyedSubscript:requestKey];

  if (v9)
  {
    isInBackground = [(ASKResourceLoader *)self isInBackground];
    v11 = 4 * reason;
    if (reason >= 3)
    {
      v11 = 4;
    }

    v12 = -8;
    if (reason == 1)
    {
      v12 = -4;
    }

    if (reason == 2)
    {
      v12 = 0;
    }

    if (isInBackground)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    if (v13 > [v9 queuePriority])
    {
      [(ASKResourceLoader *)self updateLoadReason:reason forOperation:v9];
      [v9 setQueuePriority:v13];
    }
  }

  else
  {
    makeLoadOperation = [requestCopy makeLoadOperation];
    [makeLoadOperation _setLoadReason:reason];
    [makeLoadOperation setQualityOfService:{-[ASKResourceLoader currentQualityOfService](self, "currentQualityOfService")}];
    isInBackground2 = [(ASKResourceLoader *)self isInBackground];
    v16 = 4 * reason;
    if (reason >= 3)
    {
      v16 = 4;
    }

    v17 = -8;
    if (reason == 1)
    {
      v17 = -4;
    }

    if (reason == 2)
    {
      v17 = 0;
    }

    if (isInBackground2)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    [makeLoadOperation setQueuePriority:v18];
    objc_initWeak(&location, self);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = __52__ASKResourceLoader_loadResourceWithRequest_reason___block_invoke;
    v25[3] = &unk_4AF4C0;
    objc_copyWeak(&v27, &location);
    v19 = requestCopy;
    v26 = v19;
    [makeLoadOperation setOutputBlock:v25];
    [(ASKResourceLoader *)self postDidBeginLoadingIfIdle];
    pendingOperations2 = [(ASKResourceLoader *)self pendingOperations];
    [pendingOperations2 setObject:makeLoadOperation forKeyedSubscript:requestKey];

    requestsByCacheKey = [(ASKResourceLoader *)self requestsByCacheKey];
    cacheKey = [v19 cacheKey];
    [requestsByCacheKey setObject:requestKey forKey:cacheKey];

    requestQueue = [(ASKResourceLoader *)self requestQueue];
    [requestQueue addOperation:makeLoadOperation];

    ++self->_requestCountMap[reason];
    objc_destroyWeak(&v27);
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
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __52__ASKResourceLoader_loadResourceWithRequest_reason___block_invoke_2;
  v11[3] = &unk_4AF498;
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

- (BOOL)setReason:(int64_t)reason forRequestWithKey:(id)key
{
  keyCopy = key;
  pendingOperations = [(ASKResourceLoader *)self pendingOperations];
  v8 = [pendingOperations objectForKeyedSubscript:keyCopy];

  if (v8)
  {
    [(ASKResourceLoader *)self updateLoadReason:reason forOperation:v8];
    isInBackground = [(ASKResourceLoader *)self isInBackground];
    v10 = 4 * reason;
    if (reason >= 3)
    {
      v10 = 4;
    }

    v11 = -8;
    if (reason == 1)
    {
      v11 = -4;
    }

    if (reason == 2)
    {
      v11 = 0;
    }

    if (isInBackground)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    [v8 setQueuePriority:v12];
  }

  return v8 != 0;
}

- (void)finishLoadForRequest:(id)request withResource:(id)resource error:(id)error
{
  requestCopy = request;
  resourceCopy = resource;
  errorCopy = error;
  requestKey = [requestCopy requestKey];
  cacheKey = [requestCopy cacheKey];
  pendingOperations = [(ASKResourceLoader *)self pendingOperations];
  v14 = [pendingOperations objectForKeyedSubscript:requestKey];

  _loadReason = [v14 _loadReason];
  pendingOperations2 = [(ASKResourceLoader *)self pendingOperations];
  [pendingOperations2 removeObjectForKey:requestKey];

  requestsByCacheKey = [(ASKResourceLoader *)self requestsByCacheKey];
  [requestsByCacheKey removeObjectForKey:cacheKey];

  if (resourceCopy)
  {
    cacheOptions = [requestCopy cacheOptions];
    if ((cacheOptions & 2) != 0)
    {
      if ((cacheOptions & 4) != 0)
      {
        cachedResources = [(ASKResourceLoader *)self cachedResources];
        v22 = resourceCopy;
        v20 = [NSArray arrayWithObjects:&v22 count:1];
        [cachedResources setObject:v20 forKey:cacheKey];
      }

      else
      {
        [(ASKResourceLoader *)self addResource:resourceCopy forCacheKey:cacheKey];
      }
    }
  }

  [requestCopy didLoadResource:resourceCopy error:errorCopy];
  v21 = self->_requestCountMap[_loadReason];
  if (v21 >= 1)
  {
    self->_requestCountMap[_loadReason] = --v21;
  }

  if (!v21)
  {
    [(ASKResourceLoader *)self postDidLoadAllForReason:_loadReason];
  }

  [(ASKResourceLoader *)self postDidIdleIfIdle];
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

- (void)updateLoadReason:(int64_t)reason forOperation:(id)operation
{
  operationCopy = operation;
  _loadReason = [operationCopy _loadReason];
  v7 = operationCopy;
  if (_loadReason != reason)
  {
    [operationCopy _setLoadReason:reason];
    ++self->_requestCountMap[reason];
    v8 = self->_requestCountMap[_loadReason];
    if (v8 >= 1)
    {
      self->_requestCountMap[_loadReason] = --v8;
    }

    v7 = operationCopy;
    if (!v8)
    {
      [(ASKResourceLoader *)self postDidLoadAllForReason:_loadReason];
      v7 = operationCopy;
    }
  }
}

- (void)reprioritizeOperations
{
  currentQualityOfService = [(ASKResourceLoader *)self currentQualityOfService];
  isInBackground = [(ASKResourceLoader *)self isInBackground];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  pendingOperations = [(ASKResourceLoader *)self pendingOperations];
  objectEnumerator = [pendingOperations objectEnumerator];

  v7 = [objectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        _loadReason = [v11 _loadReason];
        if (isInBackground)
        {
          if (_loadReason == 1)
          {
            v13 = -4;
          }

          else
          {
            v13 = -8;
          }

          if (_loadReason == 2)
          {
            v14 = 0;
          }

          else
          {
            v14 = v13;
          }
        }

        else if (_loadReason >= 3)
        {
          v14 = 4;
        }

        else
        {
          v14 = 4 * _loadReason;
        }

        [v11 setQueuePriority:v14];
        [v11 setQualityOfService:currentQualityOfService];
      }

      v8 = [objectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = __46__ASKResourceLoader_postDidBeginLoadingIfIdle__block_invoke;
    v4[3] = &unk_4AF208;
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
    v2 = +[NSNotificationCenter defaultCenter];
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
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = __38__ASKResourceLoader_postDidIdleIfIdle__block_invoke;
    v4[3] = &unk_4AF208;
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
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 postNotificationName:@"ASKResourceLoaderDidIdleNotification" object:v3];

    WeakRetained = v3;
  }
}

- (void)postDidLoadAllForReason:(int64_t)reason
{
  objc_initWeak(&location, self);
  notificationQueue = [(ASKResourceLoader *)self notificationQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __45__ASKResourceLoader_postDidLoadAllForReason___block_invoke;
  v6[3] = &unk_4AF4E8;
  objc_copyWeak(v7, &location);
  v7[1] = reason;
  [notificationQueue addOperationWithBlock:v6];

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __45__ASKResourceLoader_postDidLoadAllForReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    v6 = @"ASKResourceLoaderLoadReasonUserInfoKey";
    v4 = [NSNumber numberWithInteger:*(a1 + 40)];
    v7 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    [v3 postNotificationName:@"ASKResourceLoaderDidLoadAllForReasonNotification" object:WeakRetained userInfo:v5];
  }
}

@end