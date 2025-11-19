@interface AMSBagNetworkDataSource
+ (id)valueForURLVariable:(id)a3 account:(id)a4 clientInfo:(id)a5;
+ (void)_valueForURLVariable:(id)a3 account:(id)a4 clientInfo:(id)a5 sync:(BOOL)a6 completion:(id)a7;
- (AMSBagNetworkDataSource)initWithProfile:(id)a3 profileVersion:(id)a4 processInfo:(id)a5;
- (AMSBagNetworkDataSource)initWithProfile:(id)a3 profileVersion:(id)a4 processInfo:(id)a5 accountProvider:(id)a6;
- (BOOL)isLoaded;
- (NSDate)expirationDate;
- (NSString)bagLoadingPartialIdentifier;
- (NSString)cachedStorefront;
- (NSString)description;
- (NSString)descriptionExtended;
- (id)_fetchBag;
- (id)_newCompletionQueue;
- (id)dataSourceChangedHandler;
- (id)dataSourceDataInvalidatedHandler;
- (id)defaultValueForKey:(id)a3;
- (id)loadedValuesForKeys:(id)a3 outExpirationDate:(id *)a4;
- (id)valueForURLVariable:(id)a3 account:(id)a4;
- (void)_accountStoreDidChange;
- (void)_invalidateCacheNotification:(id)a3;
- (void)_updateCachedResult:(id)a3;
- (void)dealloc;
- (void)loadWithCompletion:(id)a3;
- (void)setCachedStorefront:(id)a3;
- (void)setDataSourceChangedHandler:(id)a3;
- (void)setDataSourceDataInvalidatedHandler:(id)a3;
- (void)setDefaultValue:(id)a3 forKey:(id)a4;
- (void)valueForURLVariable:(id)a3 account:(id)a4 completion:(id)a5;
@end

@implementation AMSBagNetworkDataSource

- (id)_fetchBag
{
  v37 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_cachedDataAccessLock);
  v3 = AMSSetLogKeyIfNeeded();
  v4 = AMSSetLogKey(v3);
  v5 = [(AMSBagNetworkDataSource *)self currentLoadTask];

  v6 = v5 == 0;
  v7 = +[AMSLogConfig sharedBagConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v8 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = v16;
      v18 = AMSLogKey();
      v19 = [(AMSBagNetworkDataSource *)self description];
      *buf = 138543874;
      v32 = v16;
      v33 = 2114;
      v34 = v18;
      v35 = 2114;
      v36 = v19;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Loading bag from the network. %{public}@", buf, 0x20u);
    }

    v20 = [AMSBagNetworkTask alloc];
    v21 = [(AMSBagNetworkDataSource *)self processInfo];
    v22 = [(AMSBagNetworkDataSource *)self profile];
    v23 = [(AMSBagNetworkDataSource *)self profileVersion];
    v24 = [(AMSBagNetworkDataSource *)self accountProvider];
    v25 = [(AMSBagNetworkTask *)v20 initWithClientInfo:v21 profile:v22 profileVersion:v23 accountProvider:v24];
    [(AMSBagNetworkDataSource *)self setCurrentLoadTask:v25];

    v26 = [(AMSBagNetworkDataSource *)self currentLoadTask];
    v14 = [v26 performFetch];

    objc_initWeak(buf, self);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __36__AMSBagNetworkDataSource__fetchBag__block_invoke;
    v28[3] = &unk_1E73B4440;
    objc_copyWeak(&v30, buf);
    v29 = v3;
    [v14 addFinishBlock:v28];

    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }

  else
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = AMSLogKey();
      *buf = 138543618;
      v32 = v10;
      v33 = 2114;
      v34 = v12;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Awaiting bag load", buf, 0x16u);
    }

    v13 = [(AMSBagNetworkDataSource *)self currentLoadTask];
    v14 = [v13 performFetch];
  }

  return v14;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(AMSBagNetworkDataSource *)self profile];
  v6 = [(AMSBagNetworkDataSource *)self profileVersion];
  v7 = [(AMSBagNetworkDataSource *)self processInfo];
  v8 = [v7 accountMediaType];
  v9 = [v3 stringWithFormat:@"<%@: %p profile: %@; version: %@; sandbox: %d>", v4, self, v5, v6, v8 == AMSAccountMediaTypeAppStoreSandbox];;

  return v9;
}

- (id)_newCompletionQueue
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.AppleMediaServices.AMSBagNetworkDataSource.loadCompletionQueue.%lx", self];
  v3 = [v2 UTF8String];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create(v3, v4);

  return v5;
}

- (NSString)bagLoadingPartialIdentifier
{
  v3 = [(AMSBagNetworkDataSource *)self processInfo];
  v4 = [(AMSBagNetworkDataSource *)self profile];
  v5 = [(AMSBagNetworkDataSource *)self profileVersion];
  v6 = [AMSBagNetworkTask requestPartialIdentifierForClientInfo:v3 profile:v4 profileVersion:v5];

  return v6;
}

- (NSDate)expirationDate
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(AMSBagNetworkDataSource *)self cachedResult];
  v4 = [v3 expirationDate];

  os_unfair_recursive_lock_unlock();

  return v4;
}

- (BOOL)isLoaded
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(AMSBagNetworkDataSource *)self cachedResult];
  v4 = [v3 data];
  v5 = v4 != 0;

  os_unfair_recursive_lock_unlock();
  return v5;
}

- (id)dataSourceChangedHandler
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = _Block_copy(self->_dataSourceChangedHandler);
  os_unfair_recursive_lock_unlock();
  v4 = _Block_copy(v3);

  return v4;
}

void __36__AMSBagNetworkDataSource__fetchBag__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = AMSSetLogKey(*(a1 + 32));
  if (WeakRetained)
  {
    os_unfair_recursive_lock_lock_with_options();
    if (v3)
    {
      [WeakRetained _updateCachedResult:v3];
    }

    [WeakRetained setCurrentLoadTask:0];
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v6 = +[AMSLogConfig sharedBagConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = AMSLogKey();
      v11 = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = v10;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Someone is loading the bag but not retaining the data source object.", &v11, 0x16u);
    }
  }
}

- (AMSBagNetworkDataSource)initWithProfile:(id)a3 profileVersion:(id)a4 processInfo:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(AMSBagActiveAccountProvider);
  v12 = [(AMSBagNetworkDataSource *)self initWithProfile:v10 profileVersion:v9 processInfo:v8 accountProvider:v11];

  return v12;
}

- (AMSBagNetworkDataSource)initWithProfile:(id)a3 profileVersion:(id)a4 processInfo:(id)a5 accountProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v39.receiver = self;
  v39.super_class = AMSBagNetworkDataSource;
  v15 = [(AMSBagNetworkDataSource *)&v39 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accountProvider, a6);
    v16->_cachedDataAccessLock = 0;
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    defaultValues = v16->_defaultValues;
    v16->_defaultValues = v17;

    objc_storeStrong(&v16->_profile, a3);
    objc_storeStrong(&v16->_profileVersion, a4);
    objc_storeStrong(&v16->_processInfo, a5);
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.AppleMediaServices.AMSBagNetworkDataSource.processAccountStoreDidChangeNotification", v19);
    processAccountStoreDidChangeNotificationQueue = v16->_processAccountStoreDidChangeNotificationQueue;
    v16->_processAccountStoreDidChangeNotificationQueue = v20;

    cachedStorefront = v16->_cachedStorefront;
    v16->_cachedStorefront = 0;

    objc_initWeak(&location, v16);
    v23 = v16->_processAccountStoreDidChangeNotificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__AMSBagNetworkDataSource_initWithProfile_profileVersion_processInfo_accountProvider___block_invoke;
    block[3] = &unk_1E73B4328;
    objc_copyWeak(&v37, &location);
    v36 = v13;
    dispatch_async(v23, block);
    v24 = [AMSObserver alloc];
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __86__AMSBagNetworkDataSource_initWithProfile_profileVersion_processInfo_accountProvider___block_invoke_13;
    v33 = &unk_1E73B4350;
    objc_copyWeak(&v34, &location);
    v25 = [(AMSObserver *)v24 initWithResultBlock:&v30];
    accountsChangedObserver = v16->_accountsChangedObserver;
    v16->_accountsChangedObserver = v25;

    v27 = [AMSAccountsChangedObservable sharedInstance:v30];
    [v27 subscribe:v16->_accountsChangedObserver];

    v28 = [MEMORY[0x1E696AD88] defaultCenter];
    [v28 addObserver:v16 selector:sel__invalidateCacheNotification_ name:@"AMSBagNetworkDataSourceInvalidateCacheNotification" object:0];

    objc_destroyWeak(&v34);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  return v16;
}

void __86__AMSBagNetworkDataSource_initWithProfile_profileVersion_processInfo_accountProvider___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained accountProvider];
  v5 = [*(a1 + 32) accountMediaType];
  v6 = [v4 bagStorefrontForAccountMediaType:v5];

  if (v6)
  {
    [WeakRetained setCachedStorefront:v6];
  }

  else
  {
    v7 = +[AMSLogConfig sharedBagConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = AMSLogKey();
      v10 = MEMORY[0x1E696AEC0];
      v11 = objc_opt_class();
      v12 = v11;
      if (v9)
      {
        v1 = AMSLogKey();
        [v10 stringWithFormat:@"%@: [%@] ", v12, v1];
      }

      else
      {
        [v10 stringWithFormat:@"%@: ", v11];
      }
      v13 = ;
      v14 = AMSLogableError(0);
      *buf = 138543618;
      v16 = v13;
      v17 = 2114;
      v18 = v14;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@Could not fetch initial cached storefront. error = %{public}@", buf, 0x16u);
      if (v9)
      {

        v13 = v1;
      }
    }
  }
}

void __86__AMSBagNetworkDataSource_initWithProfile_profileVersion_processInfo_accountProvider___block_invoke_13(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained accountProvider];
  v6 = [v3 account];

  v7 = [WeakRetained processInfo];
  v8 = [v7 accountMediaType];
  v9 = [v5 associatedAccountIsEqualToAccount:v6 forMediaType:v8];

  if (v9)
  {
    v10 = +[AMSLogConfig sharedBagConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = v12;
      v14 = AMSLogKey();
      v15 = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = v14;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] An account changed.", &v15, 0x16u);
    }

    [WeakRetained _accountStoreDidChange];
  }
}

- (void)dealloc
{
  v3 = +[AMSAccountsChangedObservable sharedInstance];
  v4 = [(AMSBagNetworkDataSource *)self accountsChangedObserver];
  [v3 unsubscribe:v4];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = AMSBagNetworkDataSource;
  [(AMSBagNetworkDataSource *)&v6 dealloc];
}

- (NSString)cachedStorefront
{
  v3 = [(AMSBagNetworkDataSource *)self processAccountStoreDidChangeNotificationQueue];
  dispatch_assert_queue_V2(v3);

  cachedStorefront = self->_cachedStorefront;

  return cachedStorefront;
}

- (id)dataSourceDataInvalidatedHandler
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = _Block_copy(self->_dataSourceDataInvalidatedHandler);
  os_unfair_recursive_lock_unlock();
  v4 = _Block_copy(v3);

  return v4;
}

- (id)loadedValuesForKeys:(id)a3 outExpirationDate:(id *)a4
{
  v6 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v7 = [(AMSBagNetworkDataSource *)self cachedResult];
  v8 = [v7 data];

  if (v8)
  {
    v9 = [(AMSBagNetworkDataSource *)self cachedResult];
    v10 = [v9 data];
    v11 = [v10 ams_valuesForKeys:v6];

    if (a4)
    {
      v12 = [(AMSBagNetworkDataSource *)self cachedResult];
      *a4 = [v12 expirationDate];
    }
  }

  else
  {
    v11 = 0;
  }

  os_unfair_recursive_lock_unlock();

  return v11;
}

- (void)setCachedStorefront:(id)a3
{
  v4 = a3;
  v5 = [(AMSBagNetworkDataSource *)self processAccountStoreDidChangeNotificationQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 copy];
  cachedStorefront = self->_cachedStorefront;
  self->_cachedStorefront = v6;
}

- (void)setDataSourceChangedHandler:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [v4 copy];

  dataSourceChangedHandler = self->_dataSourceChangedHandler;
  self->_dataSourceChangedHandler = v5;

  os_unfair_recursive_lock_unlock();
}

- (void)setDataSourceDataInvalidatedHandler:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [v4 copy];

  dataSourceDataInvalidatedHandler = self->_dataSourceDataInvalidatedHandler;
  self->_dataSourceDataInvalidatedHandler = v5;

  os_unfair_recursive_lock_unlock();
}

- (NSString)descriptionExtended
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [(AMSBagNetworkDataSource *)self description];
  [v3 appendString:v4];

  os_unfair_recursive_lock_lock_with_options();
  v5 = [(AMSBagNetworkDataSource *)self cachedResult];
  v6 = [v5 data];

  os_unfair_recursive_lock_unlock();
  if (v6)
  {
    v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v6 options:1 error:0];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  [v3 appendFormat:@"\n%@", v8];

  return v3;
}

- (id)defaultValueForKey:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(AMSBagNetworkDataSource *)self defaultValues];
  v6 = [v5 objectForKeyedSubscript:v4];

  os_unfair_recursive_lock_unlock();
  if (!v6)
  {
    v7 = [(AMSBagNetworkDataSource *)self profile];
    v8 = [(AMSBagNetworkDataSource *)self profileVersion];
    v6 = [AMSBagKeySet defaultValueForKey:v4 profile:v7 profileVersion:v8];
  }

  return v6;
}

- (void)loadWithCompletion:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(AMSBagNetworkDataSource *)self cachedResult];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 expired] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  if ([v6 expired])
  {
    v8 = +[AMSLogConfig sharedBagConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v12 = [(AMSBagNetworkDataSource *)self profile];
      v13 = [(AMSBagNetworkDataSource *)self profileVersion];
      *buf = 138544130;
      v24 = v10;
      v25 = 2114;
      v26 = v11;
      v27 = 2114;
      v28 = v12;
      v29 = 2114;
      v30 = v13;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The backing data for the bag is expired. profile = %{public}@ | profileVersion = %{public}@", buf, 0x2Au);
    }
  }

  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __46__AMSBagNetworkDataSource_loadWithCompletion___block_invoke;
  v20 = &unk_1E73B43A0;
  v21 = self;
  v22 = v4;
  v14 = v4;
  v15 = _Block_copy(&v17);
  if (v7)
  {
    os_unfair_recursive_lock_unlock();
    v15[2](v15, v6, 0);
  }

  else
  {
    v16 = [(AMSBagNetworkDataSource *)self _fetchBag:v17];
    os_unfair_recursive_lock_unlock();
    [v16 addFinishBlock:v15];
  }
}

void __46__AMSBagNetworkDataSource_loadWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _newCompletionQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __46__AMSBagNetworkDataSource_loadWithCompletion___block_invoke_2;
  v15[3] = &unk_1E73B4378;
  v16 = v5;
  v8 = *(a1 + 40);
  v17 = v6;
  v18 = v8;
  v9 = v15;
  v10 = v7;
  v11 = v6;
  v12 = v5;
  v13 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_1;
  block[3] = &unk_1E73B36D0;
  v20 = v13;
  v21 = v9;
  v14 = v13;
  dispatch_async(v10, block);
}

void __46__AMSBagNetworkDataSource_loadWithCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [AMSBagDataSourceLoadResult alloc];
    v3 = [*(a1 + 32) data];
    v4 = [*(a1 + 32) expirationDate];
    v5 = [*(a1 + 32) loadedBagIdentifier];
    v6 = [*(a1 + 32) loadedBagPartialIdentifier];
    v7 = [(AMSBagDataSourceLoadResult *)v2 initWithData:v3 expirationDate:v4 loadedBagIdentifier:v5 loadedBagPartialIdentifier:v6];
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

- (void)setDefaultValue:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v8 = [(AMSBagNetworkDataSource *)self defaultValues];
  [v8 setObject:v7 forKeyedSubscript:v6];

  os_unfair_recursive_lock_unlock();
}

- (id)valueForURLVariable:(id)a3 account:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AMSBagNetworkDataSource *)self processInfo];
  v9 = [AMSBagNetworkDataSource valueForURLVariable:v7 account:v6 clientInfo:v8];

  return v9;
}

- (void)valueForURLVariable:(id)a3 account:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AMSBagNetworkDataSource *)self processInfo];
  [AMSBagNetworkDataSource valueForURLVariable:v10 account:v9 clientInfo:v11 completion:v8];
}

+ (id)valueForURLVariable:(id)a3 account:(id)a4 clientInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__7;
  v18 = __Block_byref_object_dispose__7;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__AMSBagNetworkDataSource_valueForURLVariable_account_clientInfo___block_invoke;
  v13[3] = &unk_1E73B43C8;
  v13[4] = &v14;
  [a1 _valueForURLVariable:v8 account:v9 clientInfo:v10 sync:1 completion:v13];
  v11 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v11;
}

- (void)_accountStoreDidChange
{
  v3 = [(AMSBagNetworkDataSource *)self processAccountStoreDidChangeNotificationQueue];
  dispatch_assert_queue_not_V2(v3);

  objc_initWeak(&location, self);
  v4 = [(AMSBagNetworkDataSource *)self processAccountStoreDidChangeNotificationQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__AMSBagNetworkDataSource__accountStoreDidChange__block_invoke;
  v9[3] = &unk_1E73B4418;
  objc_copyWeak(&v10, &location);
  v5 = v9;
  v6 = v4;
  v7 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_1;
  block[3] = &unk_1E73B36D0;
  v13 = v7;
  v14 = v5;
  v8 = v7;
  dispatch_async(v6, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __49__AMSBagNetworkDataSource__accountStoreDidChange__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained cachedStorefront];
    v4 = [v2 accountProvider];
    v5 = [v2 processInfo];
    v6 = [v5 accountMediaType];
    v7 = [v4 bagStorefrontForAccountMediaType:v6];

    if (v3 | v7 && ([v3 isEqualToString:v7] & 1) == 0)
    {
      v8 = +[AMSLogConfig sharedBagConfig];
      if (!v8)
      {
        v8 = +[AMSLogConfig sharedConfig];
      }

      v9 = [v8 OSLogObject];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = AMSLogKey();
        v12 = AMSHashIfNeeded(v3);
        v13 = AMSHashIfNeeded(v7);
        *buf = 138544130;
        v19 = v10;
        v20 = 2114;
        v21 = v11;
        v22 = 2114;
        v23 = v12;
        v24 = 2114;
        v25 = v13;
        _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The storefront changed. Clearing the bag from the in-memory cache. oldStorefront = %{public}@ | newStorefront = %{public}@", buf, 0x2Au);
      }

      [v2 setCachedStorefront:v7];
      os_unfair_recursive_lock_lock_with_options();
      [v2 setCachedResult:0];
      v14 = [v2 dataSourceDataInvalidatedHandler];
      os_unfair_recursive_lock_unlock();
      if (v14)
      {
        v15 = [v2 processAccountStoreDidChangeNotificationQueue];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __49__AMSBagNetworkDataSource__accountStoreDidChange__block_invoke_35;
        v16[3] = &unk_1E73B43F0;
        v16[4] = v2;
        v17 = v14;
        dispatch_async(v15, v16);
      }
    }
  }
}

void __49__AMSBagNetworkDataSource__accountStoreDidChange__block_invoke_35(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) profile];
  v3 = [*(a1 + 32) profileVersion];
  (*(v2 + 16))(v2, v4, v3);
}

- (void)_invalidateCacheNotification:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = +[AMSLogConfig sharedBagConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Notification received to invalidate cache", &v8, 0x16u);
  }

  os_unfair_recursive_lock_lock_with_options();
  [(AMSBagNetworkDataSource *)self setCachedResult:0];
  os_unfair_recursive_lock_unlock();
}

- (void)_updateCachedResult:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a3;
  os_unfair_lock_assert_owner(&self->_cachedDataAccessLock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__AMSBagNetworkDataSource__updateCachedResult___block_invoke;
  aBlock[3] = &unk_1E73B3DE0;
  aBlock[4] = self;
  v45 = v5;
  v47 = v45;
  v42 = _Block_copy(aBlock);
  v41 = [(AMSBagNetworkDataSource *)self dataSourceChangedHandler];
  if (v41)
  {
    v6 = [(AMSBagNetworkDataSource *)self cachedResult];
    v43 = [v6 data];

    v7 = [v45 data];
    v8 = v7;
    if (v43)
    {
      v9 = v43;
    }

    else
    {
      v9 = MEMORY[0x1E695E0F8];
    }

    log = [v7 ams_keysForChangedValuesComparedToDictionary:v9];

    if (![log count])
    {
      v21 = +[AMSLogConfig sharedBagConfig];
      if (!v21)
      {
        v21 = +[AMSLogConfig sharedConfig];
      }

      v22 = [(AMSBagDataSourceChange *)v21 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = AMSLogKey();
        v24 = MEMORY[0x1E696AEC0];
        if (v23)
        {
          v25 = objc_opt_class();
          v3 = AMSLogKey();
          [v24 stringWithFormat:@"%@: [%@] ", v25, v3];
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
        }
        v26 = ;
        *buf = 138543362;
        v49 = v26;
        _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Loaded bag is equal to the previous bag. dataSourceChangedHandler won't be called.", buf, 0xCu);
        if (v23)
        {

          v26 = v3;
        }
      }

      goto LABEL_45;
    }

    if (v43)
    {
      v10 = +[AMSLogConfig sharedBagConfig];
      if (!v10)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      v12 = AMSLogKey();
      v13 = MEMORY[0x1E696AEC0];
      if (v12)
      {
        v14 = objc_opt_class();
        v3 = AMSLogKey();
        [v13 stringWithFormat:@"%@: [%@] ", v14, v3];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
      }
      v15 = ;
      *buf = 138543362;
      v49 = v15;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Bag data has changed. dataSourceChangedHandler will be called.", buf, 0xCu);
      if (v12)
      {

        v15 = v3;
      }
    }

    else
    {
      v10 = +[AMSLogConfig sharedBagConfig];
      if (!v10)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      v12 = AMSLogKey();
      v27 = MEMORY[0x1E696AEC0];
      if (v12)
      {
        v28 = objc_opt_class();
        v3 = AMSLogKey();
        [v27 stringWithFormat:@"%@: [%@] ", v28, v3];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
      }
      v15 = ;
      *buf = 138543362;
      v49 = v15;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Bag data was initially loaded. dataSourceChangedHandler will be called.", buf, 0xCu);
      if (v12)
      {

        v15 = v3;
      }
    }

LABEL_44:
    v29 = [AMSBagDataSourceChange alloc];
    v39 = [(AMSBagNetworkDataSource *)self profile];
    v40 = [(AMSBagNetworkDataSource *)self profileVersion];
    v30 = [(AMSBagNetworkDataSource *)self cachedResult];
    v31 = [v30 data];
    v32 = [(AMSBagNetworkDataSource *)self cachedResult];
    v33 = [v32 expirationDate];
    v34 = [v45 data];
    v35 = [v45 expirationDate];
    v36 = [v45 loadedBagIdentifier];
    v37 = [v45 loadedBagPartialIdentifier];
    v38 = [v45 accountIdentifier];
    v21 = [(AMSBagDataSourceChange *)v29 initWithProfile:v39 profileVersion:v40 originalData:v31 originalExpirationDate:v33 updatedData:v34 updatedExpirationDate:v35 changedKeys:log loadedBagIdentifier:v36 loadedBagPartialIdentifier:v37 accountIdentifier:v38];

    (v41)[2](v41, v21);
LABEL_45:

    goto LABEL_46;
  }

  v16 = +[AMSLogConfig sharedBagConfig];
  if (!v16)
  {
    v16 = +[AMSLogConfig sharedConfig];
  }

  v43 = v16;
  log = [v16 OSLogObject];
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v17 = AMSLogKey();
    v18 = MEMORY[0x1E696AEC0];
    if (v17)
    {
      v19 = objc_opt_class();
      v3 = AMSLogKey();
      [v18 stringWithFormat:@"%@: [%@] ", v19, v3];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
    }
    v20 = ;
    *buf = 138543362;
    v49 = v20;
    _os_log_impl(&dword_192869000, log, OS_LOG_TYPE_DEFAULT, "%{public}@dataSourceChangedHandler won't be called as one wasn't provided.", buf, 0xCu);
    if (v17)
    {

      v20 = v3;
    }
  }

LABEL_46:

  v42[2]();
}

+ (void)_valueForURLVariable:(id)a3 account:(id)a4 clientInfo:(id)a5 sync:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (v13)
  {
    v16 = [AMSPromise promiseWithResult:v13];
  }

  else
  {
    v17 = [AMSBagActiveAccountProvider alloc];
    v18 = [v14 accountMediaType];
    if (v8)
    {
      v19 = [(AMSBagActiveAccountProvider *)v17 bagAccountForAccountMediaType:v18];

      if (v19)
      {
        v16 = [AMSPromise promiseWithResult:v19];
      }

      else
      {
        v20 = AMSError(7, @"No account found", @"The active account provider didn't provide an account", 0);
        v16 = [AMSPromise promiseWithError:v20];
      }
    }

    else
    {
      v16 = [(AMSBagActiveAccountProvider *)v17 bagAccountPromiseForAccountMediaType:v18];
    }
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __83__AMSBagNetworkDataSource__valueForURLVariable_account_clientInfo_sync_completion___block_invoke;
  v23[3] = &unk_1E73B4468;
  v25 = v15;
  v26 = a1;
  v24 = v12;
  v21 = v15;
  v22 = v12;
  [v16 addFinishBlock:v23];
}

void __83__AMSBagNetworkDataSource__valueForURLVariable_account_clientInfo_sync_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedBagConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = AMSLogKey();
      v10 = MEMORY[0x1E696AEC0];
      v11 = objc_opt_class();
      v12 = v11;
      v23 = v9;
      if (v9)
      {
        v22 = AMSLogKey();
        [v10 stringWithFormat:@"%@: [%@] ", v12, v22];
      }

      else
      {
        [v10 stringWithFormat:@"%@: ", v11];
      }
      v13 = ;
      v18 = AMSHashIfNeeded(*(a1 + 32));
      v19 = [v5 identifier];
      v20 = AMSHashIfNeeded(v19);
      v21 = AMSLogableError(v6);
      *buf = 138544130;
      v27 = v13;
      v28 = 2114;
      v29 = v18;
      v30 = 2114;
      v31 = v20;
      v32 = 2114;
      v33 = v21;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch value for URL variable. variable = %{public}@ | account ID = %{public}@ | error = %{public}@.", buf, 0x2Au);

      if (v23)
      {

        v13 = v22;
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v14 = [v5 ams_cookies];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __83__AMSBagNetworkDataSource__valueForURLVariable_account_clientInfo_sync_completion___block_invoke_47;
    v24[3] = &unk_1E73B2DB8;
    v25 = *(a1 + 32);
    v15 = [v14 ams_firstObjectPassingTest:v24];

    v16 = *(a1 + 40);
    v17 = [v15 value];
    (*(v16 + 16))(v16, v17);
  }
}

uint64_t __83__AMSBagNetworkDataSource__valueForURLVariable_account_clientInfo_sync_completion___block_invoke_47(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 ams_isCookieValidForBag])
  {
    v4 = [v3 name];
    v5 = [v4 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end