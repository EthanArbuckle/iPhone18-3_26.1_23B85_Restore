@interface AMSUIWebJSAppQueryManager
- (AMSUIWebJSAppQueryManager)initWithDelegate:(id)a3;
- (AMSUIWebJSAppQueryManagerDelegate)delegate;
- (id)_encodeApp:(id)a3;
- (id)_executeAppQuery:(id)a3;
- (id)queryAppsWithBundleIDs:(id)a3 startObserving:(BOOL)a4;
- (id)queryAppsWithStoreItemIDs:(id)a3 startObserving:(BOOL)a4;
- (void)_postMediaQueryResultsChangeEventWithApps:(id)a3;
- (void)invalidate;
- (void)stopObservingAllApps;
- (void)stopObservingAppsWithBundleIDs:(id)a3;
- (void)stopObservingAppsWithStoreItemIDs:(id)a3;
@end

@implementation AMSUIWebJSAppQueryManager

- (AMSUIWebJSAppQueryManager)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AMSUIWebJSAppQueryManager;
  v5 = [(AMSUIWebJSAppQueryManager *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    observingQueries = v6->_observingQueries;
    v6->_observingQueries = v7;
  }

  return v6;
}

- (void)invalidate
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(AMSUIWebJSAppQueryManager *)v2 observingQueries];
  [v3 removeAllObjects];

  objc_sync_exit(v2);

  [(AMSUIWebJSAppQueryManager *)v2 setDelegate:0];
}

- (id)queryAppsWithBundleIDs:(id)a3 startObserving:(BOOL)a4
{
  v4 = a4;
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [getASDAppQueryClass() queryForBundleIDs:v6];
  v8 = v7;
  if (v4)
  {
    [v7 setObserver:self];
    v9 = self;
    objc_sync_enter(v9);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v33 count:16];
    if (v11)
    {
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [(AMSUIWebJSAppQueryManager *)v9 observingQueries];
          [v15 setObject:v8 forKey:v14];
        }

        v11 = [v10 countByEnumeratingWithState:&v23 objects:v33 count:16];
      }

      while (v11);
    }

    objc_sync_exit(v9);
  }

  v16 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v16)
  {
    v16 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v17 = [v16 OSLogObject];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = AMSLogKey();
    *buf = 138543874;
    v28 = v18;
    v29 = 2114;
    v30 = v19;
    v31 = 2114;
    v32 = v6;
    _os_log_impl(&dword_1BB036000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Executing app query for bundle identifiers %{public}@", buf, 0x20u);
  }

  v20 = [(AMSUIWebJSAppQueryManager *)self _executeAppQuery:v8];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)queryAppsWithStoreItemIDs:(id)a3 startObserving:(BOOL)a4
{
  v4 = a4;
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [getASDAppQueryClass() queryForStoreItemIDs:v6];
  v8 = v7;
  if (v4)
  {
    [v7 setObserver:self];
    v9 = self;
    objc_sync_enter(v9);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v33 count:16];
    if (v11)
    {
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [(AMSUIWebJSAppQueryManager *)v9 observingQueries];
          [v15 setObject:v8 forKey:v14];
        }

        v11 = [v10 countByEnumeratingWithState:&v23 objects:v33 count:16];
      }

      while (v11);
    }

    objc_sync_exit(v9);
  }

  v16 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v16)
  {
    v16 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v17 = [v16 OSLogObject];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = AMSLogKey();
    *buf = 138543874;
    v28 = v18;
    v29 = 2114;
    v30 = v19;
    v31 = 2114;
    v32 = v6;
    _os_log_impl(&dword_1BB036000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Executing app query for store item identifiers %{public}@", buf, 0x20u);
  }

  v20 = [(AMSUIWebJSAppQueryManager *)self _executeAppQuery:v8];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)stopObservingAllApps
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [(AMSUIWebJSAppQueryManager *)obj observingQueries];
  [v2 removeAllObjects];

  objc_sync_exit(obj);
}

- (void)stopObservingAppsWithBundleIDs:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [(AMSUIWebJSAppQueryManager *)v5 observingQueries];
        [v11 removeObjectForKey:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)stopObservingAppsWithStoreItemIDs:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [(AMSUIWebJSAppQueryManager *)v5 observingQueries];
        [v11 removeObjectForKey:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v12 = *MEMORY[0x1E69E9840];
}

- (id)_encodeApp:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E695DF90]);
  v5 = [v3 bundleID];
  v6 = [v4 initWithObjectsAndKeys:{v5, @"bundleID", 0}];

  v7 = [v3 bundleShortVersion];
  [v6 setValue:v7 forKey:@"bundleShortVersion"];

  v8 = [v3 bundleVersion];
  [v6 setValue:v8 forKey:@"bundleVersion"];

  v9 = [v3 installError];
  v10 = [v9 description];
  [v6 setValue:v10 forKey:@"installError"];

  v11 = [v3 installID];
  v12 = [v11 UUIDString];
  [v6 setValue:v12 forKey:@"installID"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "isInstalled")}];
  [v6 setValue:v13 forKey:@"isInstalled"];

  v14 = [v3 progress];
  v15 = v14;
  if (v14)
  {
    v16 = MEMORY[0x1E696AD98];
    [v14 fractionCompleted];
    v17 = [v16 numberWithDouble:?];
    [v6 setValue:v17 forKey:@"progress"];
  }

  v18 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v3, "storeItemID")}];
  [v6 setValue:v18 forKey:@"storeItemID"];

  v19 = [v3 storeFront];
  [v6 setValue:v19 forKey:@"storeFront"];

  return v6;
}

- (id)_executeAppQuery:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E698C7F0]);
  objc_initWeak(&location, self);
  v6 = AMSLogKey();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__AMSUIWebJSAppQueryManager__executeAppQuery___block_invoke;
  v12[3] = &unk_1E7F264D0;
  objc_copyWeak(&v15, &location);
  v7 = v6;
  v13 = v7;
  v8 = v5;
  v14 = v8;
  [v4 executeQueryWithResultHandler:v12];
  v9 = v14;
  v10 = v8;

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v10;
}

void __46__AMSUIWebJSAppQueryManager__executeAppQuery___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = *(a1 + 32);
  v9 = AMSSetLogKey();
  v10 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  v11 = v10;
  if (v5)
  {
    if (!v10)
    {
      v11 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      v19 = 138543618;
      v20 = v13;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&dword_1BB036000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] App query succeeded.", &v19, 0x16u);
    }

    [WeakRetained _postMediaQueryResultsChangeEventWithApps:v5];
    [*(a1 + 40) finishWithSuccess];
  }

  else
  {
    if (!v10)
    {
      v11 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v15 = [v11 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      v19 = 138543874;
      v20 = v16;
      v21 = 2114;
      v22 = v17;
      v23 = 2114;
      v24 = v6;
      _os_log_impl(&dword_1BB036000, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] App query failed %{public}@", &v19, 0x20u);
    }

    [*(a1 + 40) finishWithError:v6];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_postMediaQueryResultsChangeEventWithApps:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIWebJSAppQueryManager *)self delegate];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__AMSUIWebJSAppQueryManager__postMediaQueryResultsChangeEventWithApps___block_invoke;
  v7[3] = &unk_1E7F264F8;
  v7[4] = self;
  v6 = [v4 ams_mapWithTransform:v7];

  [v5 appQueryManager:self didReceiveApps:v6];
}

- (AMSUIWebJSAppQueryManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end