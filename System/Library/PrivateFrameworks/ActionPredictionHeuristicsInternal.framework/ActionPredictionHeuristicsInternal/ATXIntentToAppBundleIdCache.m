@interface ATXIntentToAppBundleIdCache
+ (id)sharedInstance;
- (ATXIntentToAppBundleIdCache)init;
- (void)_appRegistrationDidChange:(id)a3;
- (void)_slowlyFetchBundleIdsForIntent:(id)a3 completionHandler:(id)a4;
- (void)fetchBundleIdsForIntent:(id)a3 completionHandler:(id)a4;
@end

@implementation ATXIntentToAppBundleIdCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ATXIntentToAppBundleIdCache sharedInstance];
  }

  v3 = sharedInstance_cache;

  return v3;
}

uint64_t __45__ATXIntentToAppBundleIdCache_sharedInstance__block_invoke()
{
  sharedInstance_cache = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (ATXIntentToAppBundleIdCache)init
{
  v8.receiver = self;
  v8.super_class = ATXIntentToAppBundleIdCache;
  v2 = [(ATXIntentToAppBundleIdCache *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    intentTypeToBundleIdsCache = v2->_intentTypeToBundleIdsCache;
    v2->_intentTypeToBundleIdsCache = v3;

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel__appRegistrationDidChange_ name:@"com.apple.LaunchServices.applicationRegistered" object:0];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v2 selector:sel__appRegistrationDidChange_ name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
  }

  return v2;
}

- (void)_appRegistrationDidChange:(id)a3
{
  v4 = a3;
  v5 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ATXIntentToAppBundleIdCache _appRegistrationDidChange:v5];
  }

  v6 = self;
  objc_sync_enter(v6);
  [(NSMutableDictionary *)v6->_intentTypeToBundleIdsCache removeAllObjects];
  objc_sync_exit(v6);
}

- (void)fetchBundleIdsForIntent:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  intentTypeToBundleIdsCache = v8->_intentTypeToBundleIdsCache;
  v10 = [v6 _className];
  v11 = [(NSMutableDictionary *)intentTypeToBundleIdsCache objectForKey:v10];
  v12 = [v11 copy];

  objc_sync_exit(v8);
  if (v12)
  {
    v13 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(ATXIntentToAppBundleIdCache *)v6 fetchBundleIdsForIntent:v12 completionHandler:v13];
    }

    v7[2](v7, v12, 0);
  }

  else
  {
    [(ATXIntentToAppBundleIdCache *)v8 _slowlyFetchBundleIdsForIntent:v6 completionHandler:v7];
  }
}

- (void)_slowlyFetchBundleIdsForIntent:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_transaction_create();
  v9 = [v6 _className];
  v10 = [v9 copy];

  v11 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ATXIntentToAppBundleIdCache _slowlyFetchBundleIdsForIntent:v10 completionHandler:v11];
  }

  v12 = MEMORY[0x277CCA9C8];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __80__ATXIntentToAppBundleIdCache__slowlyFetchBundleIdsForIntent_completionHandler___block_invoke;
  v16[3] = &unk_278C3D660;
  v16[4] = self;
  v17 = v10;
  v18 = v8;
  v19 = v7;
  v13 = v8;
  v14 = v7;
  v15 = v10;
  [v12 _intents_matchExtensionsForIntent:v6 completion:v16];
}

void __80__ATXIntentToAppBundleIdCache__slowlyFetchBundleIdsForIntent_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v30 = a3;
  v31 = v5;
  if (v5)
  {
    v6 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 40);
      *buf = 138543618;
      v38 = v7;
      v39 = 2112;
      v40 = v5;
      _os_log_impl(&dword_23E3EA000, v6, OS_LOG_TYPE_INFO, "ATXIntentToAppBundleIdCache: intent type %{public}@ has extensions %@", buf, 0x16u);
    }

    v29 = [v5 _pas_mappedArrayWithTransform:&__block_literal_global_20_0];
    v8 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 40);
      *buf = 138543618;
      v38 = v9;
      v39 = 2112;
      v40 = v29;
      _os_log_impl(&dword_23E3EA000, v8, OS_LOG_TYPE_INFO, "ATXIntentToAppBundleIdCache: intent type %{public}@ has bundle ids %@", buf, 0x16u);
    }

    v10 = objc_opt_new();
    [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v11 = v33 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v12)
    {
      v13 = *v33;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v32 + 1) + 8 * i);
          v16 = MEMORY[0x277CEB3B8];
          v17 = [v15 bundleIdentifier];
          v18 = [v16 appInfoForBundle:v17];

          v19 = [v18 supportedActions];
          if ([v19 containsObject:*(a1 + 40)])
          {
            v20 = [v15 bundleIdentifier];
            [v10 addObject:v20];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v12);
    }

    v21 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:v29];
    [v21 addObjectsFromArray:v10];
    v22 = [v21 array];
    v23 = *(a1 + 32);
    objc_sync_enter(v23);
    [*(*(a1 + 32) + 8) setObject:v22 forKey:*(a1 + 40)];
    objc_sync_exit(v23);

    v24 = *(a1 + 48);
    v25 = objc_opt_self();
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v26 = *(a1 + 32);
    objc_sync_enter(v26);
    [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 40)];
    objc_sync_exit(v26);

    v27 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      __80__ATXIntentToAppBundleIdCache__slowlyFetchBundleIdsForIntent_completionHandler___block_invoke_cold_1((a1 + 40), v30, v27);
    }

    (*(*(a1 + 56) + 16))();
  }

  v28 = *MEMORY[0x277D85DE8];
}

id __80__ATXIntentToAppBundleIdCache__slowlyFetchBundleIdsForIntent_completionHandler___block_invoke_17(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CC1E50];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 identifier];

  v6 = [v4 initWithBundleIdentifier:v5 error:0];
  v7 = [v6 containingBundleRecord];
  v8 = [v7 bundleIdentifier];

  return v8;
}

- (void)fetchBundleIdsForIntent:(NSObject *)a3 completionHandler:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 _className];
  v7 = 138543618;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_debug_impl(&dword_23E3EA000, a3, OS_LOG_TYPE_DEBUG, "ATXIntentToAppBundleIdCache: using cached value for %{public}@: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_slowlyFetchBundleIdsForIntent:(uint64_t)a1 completionHandler:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_DEBUG, "ATXIntentToAppBundleIdCache: fetching value for %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __80__ATXIntentToAppBundleIdCache__slowlyFetchBundleIdsForIntent_completionHandler___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 138543618;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_23E3EA000, log, OS_LOG_TYPE_ERROR, "ATXIntentToAppBundleIdCache: error getting extensions for intent of type %{public}@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end