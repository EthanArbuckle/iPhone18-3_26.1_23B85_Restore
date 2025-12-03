@interface AMSUIAssetQueue
- (AMSUIAssetQueue)init;
- (BOOL)isSuspended;
- (NSString)name;
- (id)operationWithKey:(id)key;
- (int64_t)maxConcurrentOperationCount;
- (int64_t)qualityOfService;
- (void)_addObserverForOperation:(id)operation;
- (void)_decrementCountAt:(int64_t)at;
- (void)_didBeginFetchingAssets;
- (void)_didFetchAllAssetsAtPriority:(int64_t)priority;
- (void)_didFetchAssetWithKey:(id)key producingImage:(id)image orError:(id)error;
- (void)_didFinishFetchingAllAssets;
- (void)_incrementCountAt:(int64_t)at;
- (void)_operationDidCancel:(id)cancel;
- (void)_operationDidChangePriority:(id)priority;
- (void)_prepareToAddOperation:(id)operation withKey:(id)key;
- (void)_removeObserverForOperation:(id)operation;
- (void)addOperation:(id)operation withKey:(id)key;
- (void)dealloc;
- (void)setMaxConcurrentOperationCount:(int64_t)count;
- (void)setName:(id)name;
- (void)setQualityOfService:(int64_t)service;
@end

@implementation AMSUIAssetQueue

- (AMSUIAssetQueue)init
{
  v10.receiver = self;
  v10.super_class = AMSUIAssetQueue;
  v2 = [(AMSUIAssetQueue *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    underlyingQueue = v2->_underlyingQueue;
    v2->_underlyingQueue = v3;

    v2->_stateLock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    pendingOperations = v2->_pendingOperations;
    v2->_pendingOperations = dictionary;

    v7 = [MEMORY[0x1E696AB50] set];
    priorityCounts = v2->_priorityCounts;
    v2->_priorityCounts = v7;
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  underlyingQueue = [(AMSUIAssetQueue *)self underlyingQueue];
  [underlyingQueue cancelAllOperations];

  v5.receiver = self;
  v5.super_class = AMSUIAssetQueue;
  [(AMSUIAssetQueue *)&v5 dealloc];
}

- (NSString)name
{
  underlyingQueue = [(AMSUIAssetQueue *)self underlyingQueue];
  name = [underlyingQueue name];

  return name;
}

- (void)setName:(id)name
{
  nameCopy = name;
  underlyingQueue = [(AMSUIAssetQueue *)self underlyingQueue];
  [underlyingQueue setName:nameCopy];
}

- (int64_t)qualityOfService
{
  underlyingQueue = [(AMSUIAssetQueue *)self underlyingQueue];
  qualityOfService = [underlyingQueue qualityOfService];

  return qualityOfService;
}

- (void)setQualityOfService:(int64_t)service
{
  underlyingQueue = [(AMSUIAssetQueue *)self underlyingQueue];
  [underlyingQueue setQualityOfService:service];
}

- (int64_t)maxConcurrentOperationCount
{
  underlyingQueue = [(AMSUIAssetQueue *)self underlyingQueue];
  maxConcurrentOperationCount = [underlyingQueue maxConcurrentOperationCount];

  return maxConcurrentOperationCount;
}

- (void)setMaxConcurrentOperationCount:(int64_t)count
{
  underlyingQueue = [(AMSUIAssetQueue *)self underlyingQueue];
  [underlyingQueue setMaxConcurrentOperationCount:count];
}

- (BOOL)isSuspended
{
  underlyingQueue = [(AMSUIAssetQueue *)self underlyingQueue];
  isSuspended = [underlyingQueue isSuspended];

  return isSuspended;
}

- (void)_incrementCountAt:(int64_t)at
{
  priorityCounts = [(AMSUIAssetQueue *)self priorityCounts];
  v6 = [priorityCounts count];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:at];
  priorityCounts2 = [(AMSUIAssetQueue *)self priorityCounts];
  [priorityCounts2 addObject:v8];

  if (!v6)
  {
    [(AMSUIAssetQueue *)self _didBeginFetchingAssets];
  }
}

- (void)_decrementCountAt:(int64_t)at
{
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  priorityCounts = [(AMSUIAssetQueue *)self priorityCounts];
  [priorityCounts removeObject:v10];

  priorityCounts2 = [(AMSUIAssetQueue *)self priorityCounts];
  v7 = [priorityCounts2 countForObject:v10];

  if (!v7)
  {
    [(AMSUIAssetQueue *)self _didFetchAllAssetsAtPriority:at];
    priorityCounts3 = [(AMSUIAssetQueue *)self priorityCounts];
    v9 = [priorityCounts3 count];

    if (!v9)
    {
      [(AMSUIAssetQueue *)self _didFinishFetchingAllAssets];
    }
  }
}

- (void)_didBeginFetchingAssets
{
  v12 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = v4;
    v6 = AMSLogKey();
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Beginning to fetch assets", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_didFetchAllAssetsAtPriority:(int64_t)priority
{
  v16 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = AMSLogKey();
    v10 = 138543874;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    v14 = 2048;
    priorityCopy = priority;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did fetch all assets at Priority %li", &v10, 0x20u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_didFinishFetchingAllAssets
{
  v12 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = v4;
    v6 = AMSLogKey();
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did fetch all assets in queue", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_addObserverForOperation:(id)operation
{
  v4 = MEMORY[0x1E696AD88];
  operationCopy = operation;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter addObserver:self selector:sel__operationDidChangePriority_ name:@"com.apple.AppleMediaServicesUI.AssetFetchOperation.didChangePriority" object:operationCopy];
  [defaultCenter addObserver:self selector:sel__operationDidCancel_ name:@"com.apple.AppleMediaServicesUI.AssetFetchOperation.didCancel" object:operationCopy];
}

- (void)_removeObserverForOperation:(id)operation
{
  v4 = MEMORY[0x1E696AD88];
  operationCopy = operation;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:self name:@"com.apple.AppleMediaServicesUI.AssetFetchOperation.didChangePriority" object:operationCopy];
  [defaultCenter removeObserver:self name:@"com.apple.AppleMediaServicesUI.AssetFetchOperation.didCancel" object:operationCopy];
}

- (void)_operationDidChangePriority:(id)priority
{
  v31 = *MEMORY[0x1E69E9840];
  priorityCopy = priority;
  object = [priorityCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    userInfo = [priorityCopy userInfo];
    oSLogObject3 = [userInfo objectForKeyedSubscript:@"oldPriority"];
    v9 = [userInfo objectForKeyedSubscript:@"newPriority"];
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    mEMORY[0x1E698C968]2 = mEMORY[0x1E698C968];
    if (userInfo)
    {
      if (oSLogObject3 && v9 != 0)
      {
        if (!mEMORY[0x1E698C968])
        {
          mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
        }

        oSLogObject = [mEMORY[0x1E698C968]2 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
        {
          v14 = objc_opt_class();
          v22 = v14;
          v15 = AMSLogKey();
          *buf = 138544130;
          v24 = v14;
          v25 = 2114;
          v26 = v15;
          v27 = 2112;
          v28 = v6;
          v29 = 2048;
          integerValue = [v9 integerValue];
          _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Operation priority of %@ was changed to %li", buf, 0x2Au);
        }

        os_unfair_lock_lock(&self->_stateLock);
        [(AMSUIAssetQueue *)self _decrementCountAt:[oSLogObject3 integerValue]];
        -[AMSUIAssetQueue _incrementCountAt:](self, "_incrementCountAt:", [v9 integerValue]);
        os_unfair_lock_unlock(&self->_stateLock);
        goto LABEL_25;
      }
    }

    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = v18;
      v20 = AMSLogKey();
      *buf = 138543618;
      v24 = v18;
      v25 = 2114;
      v26 = v20;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] called with notification without priority keys", buf, 0x16u);
    }

LABEL_24:
LABEL_25:

    goto LABEL_26;
  }

  userInfo = [MEMORY[0x1E698C968] sharedConfig];
  if (!userInfo)
  {
    userInfo = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject3 = [userInfo OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
  {
    v16 = objc_opt_class();
    v9 = v16;
    mEMORY[0x1E698C968]2 = AMSLogKey();
    *buf = 138543618;
    v24 = v16;
    v25 = 2114;
    v26 = mEMORY[0x1E698C968]2;
    _os_log_impl(&dword_1BB036000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] called with notification without operation object", buf, 0x16u);
    goto LABEL_24;
  }

LABEL_26:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_operationDidCancel:(id)cancel
{
  v37 = *MEMORY[0x1E69E9840];
  object = [cancel object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
  }

  else
  {
    v5 = 0;
  }

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  mEMORY[0x1E698C968]2 = mEMORY[0x1E698C968];
  if (v5)
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = AMSLogKey();
      *buf = 138543874;
      v32 = v9;
      v33 = 2114;
      v34 = v11;
      v35 = 2112;
      v36 = v5;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Operation %@ was cancelled", buf, 0x20u);
    }

    os_unfair_lock_lock(&self->_stateLock);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    pendingOperations = [(AMSUIAssetQueue *)self pendingOperations];
    v13 = [pendingOperations countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        v16 = 0;
        do
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(pendingOperations);
          }

          v17 = *(*(&v26 + 1) + 8 * v16);
          pendingOperations2 = [(AMSUIAssetQueue *)self pendingOperations];
          v19 = [pendingOperations2 objectForKey:v17];

          if (v19 == v5)
          {
            pendingOperations3 = [(AMSUIAssetQueue *)self pendingOperations];
            [pendingOperations3 removeObjectForKey:v17];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [pendingOperations countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v14);
    }

    -[AMSUIAssetQueue _decrementCountAt:](self, "_decrementCountAt:", [v5 queuePriority]);
    os_unfair_lock_unlock(&self->_stateLock);
    [(AMSUIAssetQueue *)self _removeObserverForOperation:v5];
  }

  else
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = v22;
      v24 = AMSLogKey();
      *buf = 138543618;
      v32 = v22;
      v33 = 2114;
      v34 = v24;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] called with notification without operation object", buf, 0x16u);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_prepareToAddOperation:(id)operation withKey:(id)key
{
  v37 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  keyCopy = key;
  os_unfair_lock_lock(&self->_stateLock);
  pendingOperations = [(AMSUIAssetQueue *)self pendingOperations];
  absoluteString = [keyCopy absoluteString];
  v10 = [pendingOperations valueForKey:absoluteString];

  pendingOperations2 = [(AMSUIAssetQueue *)self pendingOperations];
  absoluteString2 = [keyCopy absoluteString];
  [pendingOperations2 setValue:operationCopy forKey:absoluteString2];

  os_unfair_lock_unlock(&self->_stateLock);
  if (v10)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = v15;
      v17 = AMSLogKey();
      *buf = 138543875;
      v32 = v15;
      v33 = 2114;
      v34 = v17;
      v35 = 2117;
      v36 = keyCopy;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Cancelling old enqueued operation with key %{sensitive}@", buf, 0x20u);
    }

    operationPromise = [v10 operationPromise];
    operationPromise2 = [operationCopy operationPromise];
    [operationPromise finishWithPromise:operationPromise2];

    [v10 cancel];
  }

  objc_initWeak(buf, self);
  objc_initWeak(&location, operationCopy);
  operationPromise3 = [operationCopy operationPromise];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __50__AMSUIAssetQueue__prepareToAddOperation_withKey___block_invoke;
  v26 = &unk_1E7F24540;
  objc_copyWeak(&v28, buf);
  objc_copyWeak(&v29, &location);
  v21 = keyCopy;
  v27 = v21;
  [operationPromise3 addFinishBlock:&v23];

  os_unfair_lock_lock(&self->_stateLock);
  -[AMSUIAssetQueue _incrementCountAt:](self, "_incrementCountAt:", [operationCopy queuePriority]);
  os_unfair_lock_unlock(&self->_stateLock);
  [(AMSUIAssetQueue *)self _addObserverForOperation:operationCopy];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  v22 = *MEMORY[0x1E69E9840];
}

void __50__AMSUIAssetQueue__prepareToAddOperation_withKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = objc_loadWeakRetained((a1 + 48));
  if (v7)
  {
    v8 = v7;
    v9 = objc_loadWeakRetained((a1 + 48));
    v10 = [v9 isCancelled];

    if ((v10 & 1) == 0)
    {
      [WeakRetained _didFetchAssetWithKey:*(a1 + 32) producingImage:v11 orError:v5];
    }
  }
}

- (void)_didFetchAssetWithKey:(id)key producingImage:(id)image orError:(id)error
{
  v33 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  os_unfair_lock_lock(&self->_stateLock);
  pendingOperations = [(AMSUIAssetQueue *)self pendingOperations];
  absoluteString = [keyCopy absoluteString];
  v9 = [pendingOperations objectForKey:absoluteString];

  if (v9)
  {
    pendingOperations2 = [(AMSUIAssetQueue *)self pendingOperations];
    absoluteString2 = [keyCopy absoluteString];
    [pendingOperations2 removeObjectForKey:absoluteString2];

    -[AMSUIAssetQueue _decrementCountAt:](self, "_decrementCountAt:", [v9 queuePriority]);
    [(AMSUIAssetQueue *)self _removeObserverForOperation:v9];
  }

  else
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = v14;
      v16 = AMSLogKey();
      v25 = 138543875;
      v26 = v14;
      v27 = 2114;
      v28 = v16;
      v29 = 2117;
      v30 = keyCopy;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Operation for key %{sensitive}@ completed with no record in queue. This is a serious bug.", &v25, 0x20u);
    }
  }

  os_unfair_lock_unlock(&self->_stateLock);
  mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968]2)
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
  {
    v19 = objc_opt_class();
    v20 = v19;
    v21 = AMSLogKey();
    underlyingQueue = [(AMSUIAssetQueue *)self underlyingQueue];
    operationCount = [underlyingQueue operationCount];
    v25 = 138544131;
    v26 = v19;
    v27 = 2114;
    v28 = v21;
    v29 = 2117;
    v30 = keyCopy;
    v31 = 2048;
    v32 = operationCount;
    _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Completed operation for %{sensitive}@ %lu operations pending", &v25, 0x2Au);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)addOperation:(id)operation withKey:(id)key
{
  v24 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  operationCopy = operation;
  [(AMSUIAssetQueue *)self _prepareToAddOperation:operationCopy withKey:keyCopy];
  underlyingQueue = [(AMSUIAssetQueue *)self underlyingQueue];
  [underlyingQueue addOperation:operationCopy];

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v11 = objc_opt_class();
    v12 = v11;
    v13 = AMSLogKey();
    underlyingQueue2 = [(AMSUIAssetQueue *)self underlyingQueue];
    v16 = 138544130;
    v17 = v11;
    v18 = 2114;
    v19 = v13;
    v20 = 2114;
    v21 = keyCopy;
    v22 = 2048;
    operationCount = [underlyingQueue2 operationCount];
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Began operation for %{public}@ %lu operations pending", &v16, 0x2Au);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)operationWithKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_stateLock);
  pendingOperations = [(AMSUIAssetQueue *)self pendingOperations];
  absoluteString = [keyCopy absoluteString];

  v7 = [pendingOperations objectForKey:absoluteString];

  os_unfair_lock_unlock(&self->_stateLock);

  return v7;
}

@end