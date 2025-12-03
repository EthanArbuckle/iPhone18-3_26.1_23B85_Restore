@interface AMSUIWebJSAppQueryManager
- (AMSUIWebJSAppQueryManager)initWithDelegate:(id)delegate;
- (AMSUIWebJSAppQueryManagerDelegate)delegate;
- (id)_encodeApp:(id)app;
- (id)_executeAppQuery:(id)query;
- (id)queryAppsWithBundleIDs:(id)ds startObserving:(BOOL)observing;
- (id)queryAppsWithStoreItemIDs:(id)ds startObserving:(BOOL)observing;
- (void)_postMediaQueryResultsChangeEventWithApps:(id)apps;
- (void)invalidate;
- (void)stopObservingAllApps;
- (void)stopObservingAppsWithBundleIDs:(id)ds;
- (void)stopObservingAppsWithStoreItemIDs:(id)ds;
@end

@implementation AMSUIWebJSAppQueryManager

- (AMSUIWebJSAppQueryManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = AMSUIWebJSAppQueryManager;
  v5 = [(AMSUIWebJSAppQueryManager *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    observingQueries = v6->_observingQueries;
    v6->_observingQueries = v7;
  }

  return v6;
}

- (void)invalidate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  observingQueries = [(AMSUIWebJSAppQueryManager *)selfCopy observingQueries];
  [observingQueries removeAllObjects];

  objc_sync_exit(selfCopy);

  [(AMSUIWebJSAppQueryManager *)selfCopy setDelegate:0];
}

- (id)queryAppsWithBundleIDs:(id)ds startObserving:(BOOL)observing
{
  observingCopy = observing;
  v34 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v7 = [getASDAppQueryClass() queryForBundleIDs:dsCopy];
  v8 = v7;
  if (observingCopy)
  {
    [v7 setObserver:self];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = dsCopy;
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
          observingQueries = [(AMSUIWebJSAppQueryManager *)selfCopy observingQueries];
          [observingQueries setObject:v8 forKey:v14];
        }

        v11 = [v10 countByEnumeratingWithState:&v23 objects:v33 count:16];
      }

      while (v11);
    }

    objc_sync_exit(selfCopy);
  }

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = AMSLogKey();
    *buf = 138543874;
    v28 = v18;
    v29 = 2114;
    v30 = v19;
    v31 = 2114;
    v32 = dsCopy;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Executing app query for bundle identifiers %{public}@", buf, 0x20u);
  }

  v20 = [(AMSUIWebJSAppQueryManager *)self _executeAppQuery:v8];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)queryAppsWithStoreItemIDs:(id)ds startObserving:(BOOL)observing
{
  observingCopy = observing;
  v34 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v7 = [getASDAppQueryClass() queryForStoreItemIDs:dsCopy];
  v8 = v7;
  if (observingCopy)
  {
    [v7 setObserver:self];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = dsCopy;
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
          observingQueries = [(AMSUIWebJSAppQueryManager *)selfCopy observingQueries];
          [observingQueries setObject:v8 forKey:v14];
        }

        v11 = [v10 countByEnumeratingWithState:&v23 objects:v33 count:16];
      }

      while (v11);
    }

    objc_sync_exit(selfCopy);
  }

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = AMSLogKey();
    *buf = 138543874;
    v28 = v18;
    v29 = 2114;
    v30 = v19;
    v31 = 2114;
    v32 = dsCopy;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Executing app query for store item identifiers %{public}@", buf, 0x20u);
  }

  v20 = [(AMSUIWebJSAppQueryManager *)self _executeAppQuery:v8];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)stopObservingAllApps
{
  obj = self;
  objc_sync_enter(obj);
  observingQueries = [(AMSUIWebJSAppQueryManager *)obj observingQueries];
  [observingQueries removeAllObjects];

  objc_sync_exit(obj);
}

- (void)stopObservingAppsWithBundleIDs:(id)ds
{
  v18 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = dsCopy;
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
        observingQueries = [(AMSUIWebJSAppQueryManager *)selfCopy observingQueries];
        [observingQueries removeObjectForKey:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)stopObservingAppsWithStoreItemIDs:(id)ds
{
  v18 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = dsCopy;
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
        observingQueries = [(AMSUIWebJSAppQueryManager *)selfCopy observingQueries];
        [observingQueries removeObjectForKey:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
  v12 = *MEMORY[0x1E69E9840];
}

- (id)_encodeApp:(id)app
{
  appCopy = app;
  v4 = objc_alloc(MEMORY[0x1E695DF90]);
  bundleID = [appCopy bundleID];
  v6 = [v4 initWithObjectsAndKeys:{bundleID, @"bundleID", 0}];

  bundleShortVersion = [appCopy bundleShortVersion];
  [v6 setValue:bundleShortVersion forKey:@"bundleShortVersion"];

  bundleVersion = [appCopy bundleVersion];
  [v6 setValue:bundleVersion forKey:@"bundleVersion"];

  installError = [appCopy installError];
  v10 = [installError description];
  [v6 setValue:v10 forKey:@"installError"];

  installID = [appCopy installID];
  uUIDString = [installID UUIDString];
  [v6 setValue:uUIDString forKey:@"installID"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(appCopy, "isInstalled")}];
  [v6 setValue:v13 forKey:@"isInstalled"];

  progress = [appCopy progress];
  v15 = progress;
  if (progress)
  {
    v16 = MEMORY[0x1E696AD98];
    [progress fractionCompleted];
    v17 = [v16 numberWithDouble:?];
    [v6 setValue:v17 forKey:@"progress"];
  }

  v18 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(appCopy, "storeItemID")}];
  [v6 setValue:v18 forKey:@"storeItemID"];

  storeFront = [appCopy storeFront];
  [v6 setValue:storeFront forKey:@"storeFront"];

  return v6;
}

- (id)_executeAppQuery:(id)query
{
  queryCopy = query;
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
  [queryCopy executeQueryWithResultHandler:v12];
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

- (void)_postMediaQueryResultsChangeEventWithApps:(id)apps
{
  appsCopy = apps;
  delegate = [(AMSUIWebJSAppQueryManager *)self delegate];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__AMSUIWebJSAppQueryManager__postMediaQueryResultsChangeEventWithApps___block_invoke;
  v7[3] = &unk_1E7F264F8;
  v7[4] = self;
  v6 = [appsCopy ams_mapWithTransform:v7];

  [delegate appQueryManager:self didReceiveApps:v6];
}

- (AMSUIWebJSAppQueryManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end