@interface CNContactProviderSupportModerator
+ (CNContactProviderSupportModerator)sharedInstance;
+ (OS_os_log)log;
+ (id)synchronizeAllUsingSession:(id)session;
- (CNContactProviderSupportModerator)init;
- (id)synchronizeProviderDomainUsingSession:(id)session bundleIdentifier:(id)identifier providerHost:(id)host;
- (void)evictPromiseForBundleIdentifier:(id)identifier;
@end

@implementation CNContactProviderSupportModerator

+ (CNContactProviderSupportModerator)sharedInstance
{
  if (sharedInstance_cn_once_token_1 != -1)
  {
    +[CNContactProviderSupportModerator sharedInstance];
  }

  v3 = sharedInstance_cn_once_object_1;

  return v3;
}

+ (OS_os_log)log
{
  if (log_cn_once_token_0_10 != -1)
  {
    +[CNContactProviderSupportModerator log];
  }

  v3 = log_cn_once_object_0_10;

  return v3;
}

uint64_t __40__CNContactProviderSupportModerator_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.provider", "moderator");
  v1 = log_cn_once_object_0_10;
  log_cn_once_object_0_10 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __51__CNContactProviderSupportModerator_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CNContactProviderSupportModerator);
  v1 = sharedInstance_cn_once_object_1;
  sharedInstance_cn_once_object_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNContactProviderSupportModerator)init
{
  v17.receiver = self;
  v17.super_class = CNContactProviderSupportModerator;
  v2 = [(CNContactProviderSupportModerator *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E6996660]);
    nonatomicCacheScheduler = [MEMORY[0x1E6996660] nonatomicCacheScheduler];
    v5 = [v3 initWithResourceScheduler:nonatomicCacheScheduler];
    cache = v2->_cache;
    v2->_cache = v5;

    v7 = objc_alloc_init(MEMORY[0x1E6996878]);
    lock = v2->_lock;
    v2->_lock = v7;

    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    schedulerProvider = [currentEnvironment schedulerProvider];
    v11 = [schedulerProvider newSerialSchedulerWithName:@"com.apple.contacts.provider.moderator"];
    workQueue = v2->_workQueue;
    v2->_workQueue = v11;

    v13 = dispatch_semaphore_create(1);
    workSemaphore = v2->_workSemaphore;
    v2->_workSemaphore = v13;

    v15 = v2;
  }

  return v2;
}

- (id)synchronizeProviderDomainUsingSession:(id)session bundleIdentifier:(id)identifier providerHost:(id)host
{
  v33 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  identifierCopy = identifier;
  hostCopy = host;
  v11 = [objc_opt_class() log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v30 = identifierCopy;
    v31 = 2114;
    v32 = sessionCopy;
    _os_log_impl(&dword_1954A0000, v11, OS_LOG_TYPE_INFO, "Sync session requested for %{public}@ (%{public}@)", buf, 0x16u);
  }

  if (!identifierCopy)
  {
    if (CNGuardOSLog_cn_once_token_0_5 != -1)
    {
      [CNContactProviderSupportModerator synchronizeProviderDomainUsingSession:bundleIdentifier:providerHost:];
    }

    v12 = CNGuardOSLog_cn_once_object_0_5;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_5, OS_LOG_TYPE_FAULT))
    {
      [CNContactProviderSupportModerator synchronizeProviderDomainUsingSession:v12 bundleIdentifier:? providerHost:?];
    }
  }

  objc_opt_class();
  v13 = hostCopy;
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (!v15)
  {
    if (CNGuardOSLog_cn_once_token_0_5 != -1)
    {
      [CNContactProviderSupportModerator synchronizeProviderDomainUsingSession:bundleIdentifier:providerHost:];
    }

    v16 = CNGuardOSLog_cn_once_object_0_5;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_5, OS_LOG_TYPE_FAULT))
    {
      [CNContactProviderSupportModerator synchronizeProviderDomainUsingSession:v16 bundleIdentifier:? providerHost:?];
    }
  }

  lock = [(CNContactProviderSupportModerator *)self lock];
  v25 = identifierCopy;
  v26 = v11;
  v27 = v15;
  v28 = sessionCopy;
  v18 = sessionCopy;
  v19 = v15;
  v20 = v11;
  v21 = identifierCopy;
  v22 = CNResultWithLock();

  future = [v22 future];

  return future;
}

id __105__CNContactProviderSupportModerator_synchronizeProviderDomainUsingSession_bundleIdentifier_providerHost___block_invoke(id *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] cache];
  v3 = [v2 objectForKeyedSubscript:a1[5]];

  v4 = a1[6];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      v6 = a1[5];
      *buf = 138543362;
      v38 = v6;
      _os_log_impl(&dword_1954A0000, v4, OS_LOG_TYPE_INFO, "Joining existing sync session for %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v7 = a1[5];
      *buf = 138543362;
      v38 = v7;
      _os_log_impl(&dword_1954A0000, v4, OS_LOG_TYPE_INFO, "Creating new sync session for %{public}@", buf, 0xCu);
    }

    v8 = objc_alloc_init(MEMORY[0x1E69967D0]);
    v9 = [a1[4] cache];
    [v9 setObject:v8 forKeyedSubscript:a1[5]];

    v10 = [a1[4] workSemaphore];
    v11 = [a1[4] workQueue];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __105__CNContactProviderSupportModerator_synchronizeProviderDomainUsingSession_bundleIdentifier_providerHost___block_invoke_11;
    v32[3] = &unk_1E7415DF0;
    v12 = v10;
    v33 = v12;
    v13 = a1[6];
    v14 = a1[5];
    v15 = a1[7];
    v16 = a1[8];
    *&v17 = v15;
    *(&v17 + 1) = v16;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v34 = v18;
    v35 = v17;
    v3 = v8;
    v36 = v3;
    [v11 performBlock:v32];

    objc_initWeak(buf, a1[4]);
    v19 = [v3 future];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __105__CNContactProviderSupportModerator_synchronizeProviderDomainUsingSession_bundleIdentifier_providerHost___block_invoke_2;
    v27[3] = &unk_1E7415E18;
    v28 = a1[6];
    v29 = a1[5];
    v30 = a1[8];
    objc_copyWeak(&v31, buf);
    [v19 addSuccessBlock:v27];

    v20 = [v3 future];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __105__CNContactProviderSupportModerator_synchronizeProviderDomainUsingSession_bundleIdentifier_providerHost___block_invoke_15;
    v22[3] = &unk_1E7415E40;
    v23 = a1[6];
    v24 = a1[5];
    v25 = a1[8];
    objc_copyWeak(&v26, buf);
    [v20 addFailureBlock:v22];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&v31);

    objc_destroyWeak(buf);
  }

  return v3;
}

void __105__CNContactProviderSupportModerator_synchronizeProviderDomainUsingSession_bundleIdentifier_providerHost___block_invoke_11(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = dispatch_time(0, 600000000000);
  if (dispatch_semaphore_wait(v2, v3))
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __105__CNContactProviderSupportModerator_synchronizeProviderDomainUsingSession_bundleIdentifier_providerHost___block_invoke_11_cold_1(a1, v4);
    }
  }

  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 48);
    *buf = 138543362;
    v14 = v6;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_INFO, "Performing sync session for %{public}@", buf, 0xCu);
  }

  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  v9 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __105__CNContactProviderSupportModerator_synchronizeProviderDomainUsingSession_bundleIdentifier_providerHost___block_invoke_12;
  v10[3] = &unk_1E7414C78;
  v11 = *(a1 + 72);
  v12 = *(a1 + 32);
  [v8 synchronizeUsing:v7 bundleIdentifier:v9 completionHandler:v10];
}

intptr_t __105__CNContactProviderSupportModerator_synchronizeProviderDomainUsingSession_bundleIdentifier_providerHost___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 errorOnlyCompletionHandlerAdapter];
  (v5)[2](v5, v4);

  v6 = *(a1 + 40);

  return dispatch_semaphore_signal(v6);
}

void __105__CNContactProviderSupportModerator_synchronizeProviderDomainUsingSession_bundleIdentifier_providerHost___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = v2;
    v6 = [v3 synchronizationReason];
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_INFO, "Sync session completed successfully for %{public}@ (%{public}@)", &v8, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained evictPromiseForBundleIdentifier:*(a1 + 40)];
}

void __105__CNContactProviderSupportModerator_synchronizeProviderDomainUsingSession_bundleIdentifier_providerHost___block_invoke_15(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __105__CNContactProviderSupportModerator_synchronizeProviderDomainUsingSession_bundleIdentifier_providerHost___block_invoke_15_cold_1(a1, v4, v3);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained evictPromiseForBundleIdentifier:*(a1 + 40)];
}

- (void)evictPromiseForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  lock = [(CNContactProviderSupportModerator *)self lock];
  v6 = identifierCopy;
  CNRunWithLock();
}

void __69__CNContactProviderSupportModerator_evictPromiseForBundleIdentifier___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1954A0000, v2, OS_LOG_TYPE_INFO, "Clearing existing sync session for %{public}@", &v5, 0xCu);
  }

  v4 = [*(a1 + 32) cache];
  [v4 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

+ (id)synchronizeAllUsingSession:(id)session
{
  sessionCopy = session;
  v5 = MEMORY[0x1E6996720];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__CNContactProviderSupportModerator_synchronizeAllUsingSession___block_invoke;
  v9[3] = &unk_1E7415E90;
  v10 = sessionCopy;
  selfCopy = self;
  v6 = sessionCopy;
  v7 = [v5 futureWithBlock:v9];

  return v7;
}

uint64_t __64__CNContactProviderSupportModerator_synchronizeAllUsingSession___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = [objc_opt_class() log];
  v2 = +[_TtC8Contacts29CNContactProviderSupportCache sharedCache];
  v3 = [v2 cachedBundleIdentifiers];

  v28 = +[CNContactProviderSupportModerator sharedInstance];
  v27 = objc_alloc_init(_TtC8Contacts28CNContactProviderSupportHost);
  v4 = v1;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v35 = [v3 count];
    _os_log_impl(&dword_1954A0000, v4, OS_LOG_TYPE_INFO, "Will synchronize %lu providers", buf, 0xCu);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v31;
    *&v6 = 138543362;
    v24 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * v9);
        v11 = [MEMORY[0x1E69966E8] currentEnvironment];
        v12 = [v11 timeProvider];
        [v12 timestamp];
        v14 = v13;

        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v24;
          v35 = v10;
          _os_log_impl(&dword_1954A0000, v4, OS_LOG_TYPE_DEFAULT, "Will sync %{public}@", buf, 0xCu);
        }

        v15 = [v28 synchronizeProviderDomainUsingSession:*(a1 + 32) bundleIdentifier:v10 providerHost:v27];
        v29 = 0;
        v16 = [v15 result:&v29];
        v17 = v29;
        v18 = [MEMORY[0x1E69966E8] currentEnvironment];
        v19 = [v18 timeProvider];
        [v19 timestamp];
        v21 = v20;

        v22 = [MEMORY[0x1E6996858] stringForTimeInterval:v21 - v14];
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v35 = v10;
          v36 = 2114;
          v37 = v22;
          _os_log_impl(&dword_1954A0000, v4, OS_LOG_TYPE_DEFAULT, "Did sync %{public}@ (%{public}@)", buf, 0x16u);
        }

        if (v17 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v35 = v10;
          v36 = 2114;
          v37 = v17;
          _os_log_error_impl(&dword_1954A0000, v4, OS_LOG_TYPE_ERROR, "Error syncing %{public}@: %{public}@", buf, 0x16u);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v7);
  }

  return MEMORY[0x1E695E118];
}

void __105__CNContactProviderSupportModerator_synchronizeProviderDomainUsingSession_bundleIdentifier_providerHost___block_invoke_11_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Timeout waiting to perform sync session for %{public}@", &v3, 0xCu);
}

void __105__CNContactProviderSupportModerator_synchronizeProviderDomainUsingSession_bundleIdentifier_providerHost___block_invoke_15_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = a2;
  v7 = [v4 synchronizationReason];
  v8 = 138543874;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  v12 = 2114;
  v13 = a3;
  _os_log_error_impl(&dword_1954A0000, v6, OS_LOG_TYPE_ERROR, "Sync session failed for %{public}@ (%{public}@) with error: %{public}@", &v8, 0x20u);
}

@end