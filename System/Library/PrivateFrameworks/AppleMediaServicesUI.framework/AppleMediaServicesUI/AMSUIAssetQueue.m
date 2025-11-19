@interface AMSUIAssetQueue
- (AMSUIAssetQueue)init;
- (BOOL)isSuspended;
- (NSString)name;
- (id)operationWithKey:(id)a3;
- (int64_t)maxConcurrentOperationCount;
- (int64_t)qualityOfService;
- (void)_addObserverForOperation:(id)a3;
- (void)_decrementCountAt:(int64_t)a3;
- (void)_didBeginFetchingAssets;
- (void)_didFetchAllAssetsAtPriority:(int64_t)a3;
- (void)_didFetchAssetWithKey:(id)a3 producingImage:(id)a4 orError:(id)a5;
- (void)_didFinishFetchingAllAssets;
- (void)_incrementCountAt:(int64_t)a3;
- (void)_operationDidCancel:(id)a3;
- (void)_operationDidChangePriority:(id)a3;
- (void)_prepareToAddOperation:(id)a3 withKey:(id)a4;
- (void)_removeObserverForOperation:(id)a3;
- (void)addOperation:(id)a3 withKey:(id)a4;
- (void)dealloc;
- (void)setMaxConcurrentOperationCount:(int64_t)a3;
- (void)setName:(id)a3;
- (void)setQualityOfService:(int64_t)a3;
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
    v5 = [MEMORY[0x1E695DF90] dictionary];
    pendingOperations = v2->_pendingOperations;
    v2->_pendingOperations = v5;

    v7 = [MEMORY[0x1E696AB50] set];
    priorityCounts = v2->_priorityCounts;
    v2->_priorityCounts = v7;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(AMSUIAssetQueue *)self underlyingQueue];
  [v4 cancelAllOperations];

  v5.receiver = self;
  v5.super_class = AMSUIAssetQueue;
  [(AMSUIAssetQueue *)&v5 dealloc];
}

- (NSString)name
{
  v2 = [(AMSUIAssetQueue *)self underlyingQueue];
  v3 = [v2 name];

  return v3;
}

- (void)setName:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIAssetQueue *)self underlyingQueue];
  [v5 setName:v4];
}

- (int64_t)qualityOfService
{
  v2 = [(AMSUIAssetQueue *)self underlyingQueue];
  v3 = [v2 qualityOfService];

  return v3;
}

- (void)setQualityOfService:(int64_t)a3
{
  v4 = [(AMSUIAssetQueue *)self underlyingQueue];
  [v4 setQualityOfService:a3];
}

- (int64_t)maxConcurrentOperationCount
{
  v2 = [(AMSUIAssetQueue *)self underlyingQueue];
  v3 = [v2 maxConcurrentOperationCount];

  return v3;
}

- (void)setMaxConcurrentOperationCount:(int64_t)a3
{
  v4 = [(AMSUIAssetQueue *)self underlyingQueue];
  [v4 setMaxConcurrentOperationCount:a3];
}

- (BOOL)isSuspended
{
  v2 = [(AMSUIAssetQueue *)self underlyingQueue];
  v3 = [v2 isSuspended];

  return v3;
}

- (void)_incrementCountAt:(int64_t)a3
{
  v5 = [(AMSUIAssetQueue *)self priorityCounts];
  v6 = [v5 count];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [(AMSUIAssetQueue *)self priorityCounts];
  [v7 addObject:v8];

  if (!v6)
  {
    [(AMSUIAssetQueue *)self _didBeginFetchingAssets];
  }
}

- (void)_decrementCountAt:(int64_t)a3
{
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v5 = [(AMSUIAssetQueue *)self priorityCounts];
  [v5 removeObject:v10];

  v6 = [(AMSUIAssetQueue *)self priorityCounts];
  v7 = [v6 countForObject:v10];

  if (!v7)
  {
    [(AMSUIAssetQueue *)self _didFetchAllAssetsAtPriority:a3];
    v8 = [(AMSUIAssetQueue *)self priorityCounts];
    v9 = [v8 count];

    if (!v9)
    {
      [(AMSUIAssetQueue *)self _didFinishFetchingAllAssets];
    }
  }
}

- (void)_didBeginFetchingAssets
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = v4;
    v6 = AMSLogKey();
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Beginning to fetch assets", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_didFetchAllAssetsAtPriority:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = AMSLogKey();
    v10 = 138543874;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    v14 = 2048;
    v15 = a3;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did fetch all assets at Priority %li", &v10, 0x20u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_didFinishFetchingAllAssets
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = v4;
    v6 = AMSLogKey();
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did fetch all assets in queue", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_addObserverForOperation:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v6 = [v4 defaultCenter];
  [v6 addObserver:self selector:sel__operationDidChangePriority_ name:@"com.apple.AppleMediaServicesUI.AssetFetchOperation.didChangePriority" object:v5];
  [v6 addObserver:self selector:sel__operationDidCancel_ name:@"com.apple.AppleMediaServicesUI.AssetFetchOperation.didCancel" object:v5];
}

- (void)_removeObserverForOperation:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v6 = [v4 defaultCenter];
  [v6 removeObserver:self name:@"com.apple.AppleMediaServicesUI.AssetFetchOperation.didChangePriority" object:v5];
  [v6 removeObserver:self name:@"com.apple.AppleMediaServicesUI.AssetFetchOperation.didCancel" object:v5];
}

- (void)_operationDidChangePriority:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"oldPriority"];
    v9 = [v7 objectForKeyedSubscript:@"newPriority"];
    v10 = [MEMORY[0x1E698C968] sharedConfig];
    v11 = v10;
    if (v7)
    {
      if (v8 && v9 != 0)
      {
        if (!v10)
        {
          v11 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v13 = [v11 OSLogObject];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
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
          v30 = [v9 integerValue];
          _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Operation priority of %@ was changed to %li", buf, 0x2Au);
        }

        os_unfair_lock_lock(&self->_stateLock);
        [(AMSUIAssetQueue *)self _decrementCountAt:[v8 integerValue]];
        -[AMSUIAssetQueue _incrementCountAt:](self, "_incrementCountAt:", [v9 integerValue]);
        os_unfair_lock_unlock(&self->_stateLock);
        goto LABEL_25;
      }
    }

    if (!v10)
    {
      v11 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v17 = [v11 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = v18;
      v20 = AMSLogKey();
      *buf = 138543618;
      v24 = v18;
      v25 = 2114;
      v26 = v20;
      _os_log_impl(&dword_1BB036000, v17, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] called with notification without priority keys", buf, 0x16u);
    }

LABEL_24:
LABEL_25:

    goto LABEL_26;
  }

  v7 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v7)
  {
    v7 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v16 = objc_opt_class();
    v9 = v16;
    v11 = AMSLogKey();
    *buf = 138543618;
    v24 = v16;
    v25 = 2114;
    v26 = v11;
    _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] called with notification without operation object", buf, 0x16u);
    goto LABEL_24;
  }

LABEL_26:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_operationDidCancel:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E698C968] sharedConfig];
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
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
      _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Operation %@ was cancelled", buf, 0x20u);
    }

    os_unfair_lock_lock(&self->_stateLock);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = [(AMSUIAssetQueue *)self pendingOperations];
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v26 + 1) + 8 * v16);
          v18 = [(AMSUIAssetQueue *)self pendingOperations];
          v19 = [v18 objectForKey:v17];

          if (v19 == v5)
          {
            v20 = [(AMSUIAssetQueue *)self pendingOperations];
            [v20 removeObjectForKey:v17];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v14);
    }

    -[AMSUIAssetQueue _decrementCountAt:](self, "_decrementCountAt:", [v5 queuePriority]);
    os_unfair_lock_unlock(&self->_stateLock);
    [(AMSUIAssetQueue *)self _removeObserverForOperation:v5];
  }

  else
  {
    if (!v6)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v21 = [v7 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = v22;
      v24 = AMSLogKey();
      *buf = 138543618;
      v32 = v22;
      v33 = 2114;
      v34 = v24;
      _os_log_impl(&dword_1BB036000, v21, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] called with notification without operation object", buf, 0x16u);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_prepareToAddOperation:(id)a3 withKey:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_stateLock);
  v8 = [(AMSUIAssetQueue *)self pendingOperations];
  v9 = [v7 absoluteString];
  v10 = [v8 valueForKey:v9];

  v11 = [(AMSUIAssetQueue *)self pendingOperations];
  v12 = [v7 absoluteString];
  [v11 setValue:v6 forKey:v12];

  os_unfair_lock_unlock(&self->_stateLock);
  if (v10)
  {
    v13 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v13)
    {
      v13 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = v15;
      v17 = AMSLogKey();
      *buf = 138543875;
      v32 = v15;
      v33 = 2114;
      v34 = v17;
      v35 = 2117;
      v36 = v7;
      _os_log_impl(&dword_1BB036000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Cancelling old enqueued operation with key %{sensitive}@", buf, 0x20u);
    }

    v18 = [v10 operationPromise];
    v19 = [v6 operationPromise];
    [v18 finishWithPromise:v19];

    [v10 cancel];
  }

  objc_initWeak(buf, self);
  objc_initWeak(&location, v6);
  v20 = [v6 operationPromise];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __50__AMSUIAssetQueue__prepareToAddOperation_withKey___block_invoke;
  v26 = &unk_1E7F24540;
  objc_copyWeak(&v28, buf);
  objc_copyWeak(&v29, &location);
  v21 = v7;
  v27 = v21;
  [v20 addFinishBlock:&v23];

  os_unfair_lock_lock(&self->_stateLock);
  -[AMSUIAssetQueue _incrementCountAt:](self, "_incrementCountAt:", [v6 queuePriority]);
  os_unfair_lock_unlock(&self->_stateLock);
  [(AMSUIAssetQueue *)self _addObserverForOperation:v6];

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

- (void)_didFetchAssetWithKey:(id)a3 producingImage:(id)a4 orError:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  os_unfair_lock_lock(&self->_stateLock);
  v7 = [(AMSUIAssetQueue *)self pendingOperations];
  v8 = [v6 absoluteString];
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    v10 = [(AMSUIAssetQueue *)self pendingOperations];
    v11 = [v6 absoluteString];
    [v10 removeObjectForKey:v11];

    -[AMSUIAssetQueue _decrementCountAt:](self, "_decrementCountAt:", [v9 queuePriority]);
    [(AMSUIAssetQueue *)self _removeObserverForOperation:v9];
  }

  else
  {
    v12 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v12)
    {
      v12 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = v14;
      v16 = AMSLogKey();
      v25 = 138543875;
      v26 = v14;
      v27 = 2114;
      v28 = v16;
      v29 = 2117;
      v30 = v6;
      _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Operation for key %{sensitive}@ completed with no record in queue. This is a serious bug.", &v25, 0x20u);
    }
  }

  os_unfair_lock_unlock(&self->_stateLock);
  v17 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v17)
  {
    v17 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v18 = [v17 OSLogObject];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = objc_opt_class();
    v20 = v19;
    v21 = AMSLogKey();
    v22 = [(AMSUIAssetQueue *)self underlyingQueue];
    v23 = [v22 operationCount];
    v25 = 138544131;
    v26 = v19;
    v27 = 2114;
    v28 = v21;
    v29 = 2117;
    v30 = v6;
    v31 = 2048;
    v32 = v23;
    _os_log_impl(&dword_1BB036000, v18, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Completed operation for %{sensitive}@ %lu operations pending", &v25, 0x2Au);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)addOperation:(id)a3 withKey:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  [(AMSUIAssetQueue *)self _prepareToAddOperation:v7 withKey:v6];
  v8 = [(AMSUIAssetQueue *)self underlyingQueue];
  [v8 addOperation:v7];

  v9 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v9)
  {
    v9 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = objc_opt_class();
    v12 = v11;
    v13 = AMSLogKey();
    v14 = [(AMSUIAssetQueue *)self underlyingQueue];
    v16 = 138544130;
    v17 = v11;
    v18 = 2114;
    v19 = v13;
    v20 = 2114;
    v21 = v6;
    v22 = 2048;
    v23 = [v14 operationCount];
    _os_log_impl(&dword_1BB036000, v10, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Began operation for %{public}@ %lu operations pending", &v16, 0x2Au);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)operationWithKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_stateLock);
  v5 = [(AMSUIAssetQueue *)self pendingOperations];
  v6 = [v4 absoluteString];

  v7 = [v5 objectForKey:v6];

  os_unfair_lock_unlock(&self->_stateLock);

  return v7;
}

@end