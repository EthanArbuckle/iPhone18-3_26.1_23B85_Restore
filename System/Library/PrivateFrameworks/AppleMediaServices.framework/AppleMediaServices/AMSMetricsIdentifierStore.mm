@interface AMSMetricsIdentifierStore
+ (AMSMetricsIdentifierStore)identifierStoreWithAccount:(id)a3 bagNamespace:(id)a4 bag:(id)a5;
+ (id)_accountIdentifierForAccount:(id)a3;
+ (id)_generateIdentifierKey:(id)a3 storeInfo:(id)a4 period:(int64_t)a5 resetInterval:(double)a6;
+ (id)_generateStoreKeyForAccount:(id)a3 domain:(id)a4 clientInfo:(id)a5;
+ (id)_identifierStoreInfoForKeys:(id)a3 inDatabase:(id)a4 date:(id)a5 needsToSync:(BOOL *)a6 account:(id)a7 clientInfo:(id)a8 domain:(id)a9 resetInterval:(double)a10 error:(id *)a11;
+ (id)_identifierStoreWithAccount:(id)a3 parameters:(id)a4;
+ (id)_parametersForBag:(id)a3 bagNamespace:(id)a4;
+ (id)_promiseOfListOfNamespacesFromBag:(id)a3;
+ (id)_promiseOfListOfStoresInNamespaceList:(id)a3 forAccount:(id)a4 bag:(id)a5;
+ (id)_promiseToRotateIdentifiersForAccount:(id)a3 bag:(id)a4 namespaceList:(id)a5;
+ (id)_sharedQueue;
+ (id)_sync;
+ (id)identifierForAccount:(id)a3 bag:(id)a4 bagNamespace:(id)a5 keyName:(id)a6;
+ (id)performUserResetForStoresInBag:(id)a3 forAccount:(id)a4;
+ (id)removeIdentifiersForStore:(id)a3;
+ (id)shouldEnableResetUIFromBag:(id)a3;
+ (int64_t)_periodFrom:(double)a3 storeInfoStarted:(id)a4 now:(id)a5;
+ (void)cleanupIdentifiers;
+ (void)removeIdentifiersForAccount:(id)a3;
- (AMSMetricsIdentifierStore)init;
- (BOOL)isAccountValidForKey:(id)a3 activeItunesAccountDSID:(id *)a4;
- (id)_generateEventFieldsForKeys:(id)a3 date:(id)a4;
- (id)_identifierInfoForKey:(id)a3 storeInfo:(id)a4 period:(int64_t)a5 inDatabase:(id)a6 date:(id)a7 setValue:(id)a8 lastSyncDate:(id)a9 needsToSync:(BOOL *)a10 error:(id *)a11;
- (id)_identifiersForKeys:(id)a3 currentDate:(id)a4;
- (id)generateEventFieldsForKeys:(id)a3;
- (id)generateEventFieldsForKeys:(id)a3 date:(id)a4;
- (id)identifierForKey:(id)a3;
- (id)identifierIfExistsForKey:(id)a3;
- (id)resetForcingStoreSync;
- (void)_generateFutureIdentifiersIfNeededForKeys:(id)a3 storeInfo:(id)a4 afterPeriod:(int64_t)a5 inDatabase:(id)a6 date:(id)a7;
- (void)_setIdentifier:(id)a3 withStartedDate:(id)a4 forKey:(id)a5;
- (void)_setIdentifier:(id)a3 withStartedDate:(id)a4 lastSyncDate:(id)a5 forKey:(id)a6;
- (void)reset;
- (void)setIdentifier:(id)a3 forKey:(id)a4;
@end

@implementation AMSMetricsIdentifierStore

- (AMSMetricsIdentifierStore)init
{
  v6.receiver = self;
  v6.super_class = AMSMetricsIdentifierStore;
  v2 = [(AMSMetricsIdentifierStore *)&v6 init];
  if (v2)
  {
    v3 = +[AMSMetricsIdentifierStore _database];
    database = v2->_database;
    v2->_database = v3;
  }

  return v2;
}

+ (id)_sharedQueue
{
  if (qword_1ED6E2F58 != -1)
  {
    dispatch_once(&qword_1ED6E2F58, &__block_literal_global_106_1);
  }

  v3 = qword_1ED6E2F60;

  return v3;
}

+ (void)cleanupIdentifiers
{
  v3 = [a1 _sharedQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AMSMetricsIdentifierStore_cleanupIdentifiers__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(v3, block);
}

void __47__AMSMetricsIdentifierStore_cleanupIdentifiers__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _database];
  v3 = +[AMSLogConfig sharedMetricsConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    *buf = 138543618;
    v15 = v5;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Cleaning up identifiers", buf, 0x16u);
  }

  v13 = 0;
  [v2 cleanupInvalidIdentifiersWithError:&v13];
  v7 = v13;
  if (v7)
  {
    v8 = +[AMSLogConfig sharedMetricsConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      *buf = 138543874;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to cleanup identifiers. %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v12 = [*(a1 + 32) _sync];
  }
}

- (id)generateEventFieldsForKeys:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [v4 now];
  v7 = [(AMSMetricsIdentifierStore *)self _generateEventFieldsForKeys:v5 date:v6];

  return v7;
}

- (id)generateEventFieldsForKeys:(id)a3 date:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF00] now];
  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  [(AMSMetricsIdentifierStore *)self resetInterval];
  if (fabs(v10) > v11 + v11)
  {
    v12 = +[AMSLogConfig sharedMetricsConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      v19 = 138543618;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Date is out of bounds, using the current date.", &v19, 0x16u);
    }

    v16 = [MEMORY[0x1E695DF00] now];

    v7 = v16;
  }

  v17 = [(AMSMetricsIdentifierStore *)self _generateEventFieldsForKeys:v6 date:v7];

  return v17;
}

- (id)_generateEventFieldsForKeys:(id)a3 date:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(AMSMetricsIdentifierStore *)self _identifiersForKeys:a3 currentDate:a4];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * i) populateDictionary:v6 shouldEmitDiagnosticFields:-[AMSMetricsIdentifierStore shouldEmitDiagnosticFields](self shouldEmitPreviousUserId:{"shouldEmitDiagnosticFields", v13), -[AMSMetricsIdentifierStore shouldEmitPreviousUserId](self, "shouldEmitPreviousUserId")}];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)identifierForKey:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v12 count:1];
  v7 = [MEMORY[0x1E695DF00] now];

  v8 = [(AMSMetricsIdentifierStore *)self _identifiersForKeys:v6 currentDate:v7];

  v9 = [v8 firstObject];
  v10 = [v9 value];

  return v10;
}

+ (id)identifierForAccount:(id)a3 bag:(id)a4 bagNamespace:(id)a5 keyName:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [a1 _parametersForBag:a4 bagNamespace:a5];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__AMSMetricsIdentifierStore_identifierForAccount_bag_bagNamespace_keyName___block_invoke;
  v17[3] = &unk_1E73B9C78;
  v19 = v11;
  v20 = a1;
  v18 = v10;
  v13 = v11;
  v14 = v10;
  v15 = [v12 thenWithBlock:v17];

  return v15;
}

id __75__AMSMetricsIdentifierStore_identifierForAccount_bag_bagNamespace_keyName___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 48) _identifierStoreWithAccount:*(a1 + 32) parameters:v3];
  v5 = [v3 objectForKeyedSubscript:@"crossDeviceKeys"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = +[AMSMetricsIdentifierKey keyWithName:crossDeviceSync:](AMSMetricsIdentifierKey, "keyWithName:crossDeviceSync:", *(a1 + 40), [v6 containsObject:*(a1 + 40)]);
  v8 = [v3 objectForKeyedSubscript:@"keysThatRequireActiveITunesAccount"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 containsObject:*(a1 + 40)];
  [v7 setIsActiveITunesAccountRequired:v10];
  v16 = [v4 identifierForKey:v7];
  if (v16)
  {
    v17 = [AMSPromise promiseWithResult:v16];
  }

  else if (v10)
  {
    v18 = AMSErrorWithFormat(103, @"Metrics identifier store failure", @"Active iTunes account is required for %{public}@", v11, v12, v13, v14, v15, *(a1 + 40));
    v17 = [AMSPromise promiseWithError:v18];
  }

  else
  {
    v19 = AMSError(0, @"Metrics identifier store failure", @"Unknown error", 0);
    v20 = +[AMSUnitTests isRunningUnitTests];
    v21 = +[AMSLogConfig sharedMetricsConfig];
    v22 = v21;
    if (v20)
    {
      if (!v21)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      v23 = [v22 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        AMSLogKey();
        *buf = 138543874;
        v31 = v24;
        v33 = v32 = 2114;
        v25 = v33;
        v34 = 2114;
        v35 = v19;
        _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] Unknown error: %{public}@", buf, 0x20u);
      }

      v22 = [MEMORY[0x1E696AD88] defaultCenter];
      v26 = +[AMSLogConfig sharedMetricsConfig];
      [v22 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v26 userInfo:0];
    }

    else
    {
      if (!v21)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      v26 = [v22 OSLogObject];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        v27 = objc_opt_class();
        AMSLogKey();
        *buf = 138543874;
        v31 = v27;
        v33 = v32 = 2114;
        v28 = v33;
        v34 = 2114;
        v35 = v19;
        _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_FAULT, "%{public}@ [%{public}@] Unknown error: %{public}@", buf, 0x20u);
      }
    }

    v17 = [AMSPromise promiseWithError:v19];
  }

  return v17;
}

+ (AMSMetricsIdentifierStore)identifierStoreWithAccount:(id)a3 bagNamespace:(id)a4 bag:(id)a5
{
  v8 = a3;
  v9 = [a1 _parametersForBag:a5 bagNamespace:a4];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__AMSMetricsIdentifierStore_identifierStoreWithAccount_bagNamespace_bag___block_invoke;
  v13[3] = &unk_1E73B9120;
  v14 = v8;
  v15 = a1;
  v10 = v8;
  v11 = [v9 thenWithBlock:v13];

  return v11;
}

id __73__AMSMetricsIdentifierStore_identifierStoreWithAccount_bagNamespace_bag___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 40) _identifierStoreWithAccount:*(a1 + 32) parameters:a2];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

+ (void)removeIdentifiersForAccount:(id)a3
{
  v4 = a3;
  v5 = [a1 _sharedQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__AMSMetricsIdentifierStore_removeIdentifiersForAccount___block_invoke;
  v7[3] = &unk_1E73B40A8;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __57__AMSMetricsIdentifierStore_removeIdentifiersForAccount___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 40) _accountIdentifierForAccount:*(a1 + 32)];
  v3 = [*(a1 + 40) _database];
  v4 = +[AMSLogConfig sharedMetricsConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    *buf = 138543874;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    v20 = 2112;
    v21 = v2;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Removing identifiers for account: %@", buf, 0x20u);
  }

  v15 = 0;
  [v3 removeIdentifiersForAccount:v2 error:&v15];
  v8 = v15;
  if (v8)
  {
    v9 = +[AMSLogConfig sharedMetricsConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      v13 = AMSLogableError(v8);
      *buf = 138544130;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      v20 = 2112;
      v21 = v2;
      v22 = 2114;
      v23 = v13;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to remove identifiers for account: %@. %{public}@", buf, 0x2Au);
    }
  }

  else
  {
    v14 = [*(a1 + 40) _sync];
  }
}

+ (id)removeIdentifiersForStore:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSMutablePromise);
  v6 = [a1 _sharedQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__AMSMetricsIdentifierStore_removeIdentifiersForStore___block_invoke;
  block[3] = &unk_1E73B9CA0;
  v15 = a1;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  dispatch_async(v6, block);

  v9 = v14;
  v10 = v7;

  return v7;
}

void __55__AMSMetricsIdentifierStore_removeIdentifiersForStore___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 48) _database];
  v3 = +[AMSLogConfig sharedMetricsConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = *(a1 + 32);
    *buf = 138543874;
    v19 = v5;
    v20 = 2114;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Removing identifiers for store: %@", buf, 0x20u);
  }

  v8 = *(a1 + 32);
  v17 = 0;
  [v2 removeIdentifiersForStore:v8 error:&v17];
  v9 = v17;
  if (v9)
  {
    v10 = +[AMSLogConfig sharedMetricsConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v14 = *(a1 + 32);
      v15 = AMSLogableError(v9);
      *buf = 138544130;
      v19 = v12;
      v20 = 2114;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      v24 = 2114;
      v25 = v15;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to remove identifiers for store: %@. %{public}@", buf, 0x2Au);
    }

    [*(a1 + 40) finishWithError:v9];
  }

  else
  {
    v16 = [*(a1 + 48) _sync];
    [*(a1 + 40) finishWithResult:MEMORY[0x1E695E118]];
  }
}

- (void)reset
{
  v3 = [MEMORY[0x1E695DF00] now];
  v4 = +[AMSMetricsIdentifierStore _sharedQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__AMSMetricsIdentifierStore_reset__block_invoke;
  v6[3] = &unk_1E73B3DE0;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __34__AMSMetricsIdentifierStore_reset__block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v2 = objc_opt_class();
  v3 = [*(a1 + 32) account];
  v4 = [*(a1 + 32) domain];
  v5 = [*(a1 + 32) clientInfo];
  v27 = [v2 _generateStoreKeyForAccount:v3 domain:v4 clientInfo:v5];

  v6 = [*(a1 + 32) account];
  v7 = [AMSMetricsIdentifierStore _accountIdentifierForAccount:v6];

  v8 = +[AMSLogConfig sharedMetricsConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = AMSLogKey();
    v12 = [*(a1 + 32) clientInfo];
    v13 = [v12 bundleIdentifier];
    v14 = [*(a1 + 32) domain];
    *buf = 138544386;
    v38 = v10;
    v39 = 2114;
    v40 = v11;
    v41 = 2112;
    v42 = v7;
    v43 = 2114;
    v44 = v13;
    v45 = 2114;
    v46 = v14;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Resetting identifiers (dsid: %@, client: %{public}@, domain: %{public}@)", buf, 0x34u);
  }

  v15 = *(*(a1 + 32) + 8);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __34__AMSMetricsIdentifierStore_reset__block_invoke_54;
  v30[3] = &unk_1E73B9CC8;
  v31 = *(a1 + 40);
  v32 = &v33;
  v29 = 0;
  v16 = [v15 identifierStoreForKey:v28 updateMaybe:v30 error:&v29];
  v17 = v29;
  if (v17)
  {
    v18 = +[AMSLogConfig sharedMetricsConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      v22 = [*(a1 + 32) clientInfo];
      v23 = [v22 bundleIdentifier];
      v24 = [*(a1 + 32) domain];
      v25 = AMSLogableError(v17);
      *buf = 138544642;
      v38 = v20;
      v39 = 2114;
      v40 = v21;
      v41 = 2112;
      v42 = v7;
      v43 = 2114;
      v44 = v23;
      v45 = 2114;
      v46 = v24;
      v47 = 2114;
      v48 = v25;
      _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to reset identifiers (dsid: %@, client: %{public}@, domain: %{public}@) %{public}@", buf, 0x3Eu);
    }
  }

  else if (*(v34 + 24) == 1)
  {
    v26 = +[AMSMetricsIdentifierStore _sync];
  }

  _Block_object_dispose(&v33, 8);
}

BOOL __34__AMSMetricsIdentifierStore_reset__block_invoke_54(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = MEMORY[0x1E696AFB0];
    v5 = v2;
    v6 = [v4 UUID];
    v7 = [v6 UUIDString];
    [v5 setStoreUUID:v7];

    [v5 setStarted:*(a1 + 32)];
    [v5 setModified:*(a1 + 32)];
    *(*(*(a1 + 40) + 8) + 24) |= [v5 crossDeviceSync];
  }

  return v2 != 0;
}

- (id)resetForcingStoreSync
{
  v3 = [MEMORY[0x1E695DF00] now];
  v4 = objc_alloc_init(AMSMutablePromise);
  v5 = +[AMSMetricsIdentifierStore _sharedQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__AMSMetricsIdentifierStore_resetForcingStoreSync__block_invoke;
  block[3] = &unk_1E73B71B0;
  block[4] = self;
  v12 = v3;
  v6 = v4;
  v13 = v6;
  v7 = v3;
  dispatch_async(v5, block);

  v8 = v13;
  v9 = v6;

  return v6;
}

void __50__AMSMetricsIdentifierStore_resetForcingStoreSync__block_invoke(id *a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  v2 = objc_opt_class();
  v3 = [a1[4] account];
  v4 = [a1[4] domain];
  v5 = [a1[4] clientInfo];
  v26 = [v2 _generateStoreKeyForAccount:v3 domain:v4 clientInfo:v5];

  v6 = [a1[4] account];
  v25 = [AMSMetricsIdentifierStore _accountIdentifierForAccount:v6];

  v7 = +[AMSLogConfig sharedMetricsConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    v11 = [a1[4] clientInfo];
    v12 = [v11 bundleIdentifier];
    v13 = [a1[4] domain];
    *buf = 138544386;
    v34 = v9;
    v35 = 2114;
    v36 = v10;
    v37 = 2112;
    v38 = v25;
    v39 = 2114;
    v40 = v12;
    v41 = 2114;
    v42 = v13;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Resetting identifiers (dsid: %@, client: %{public}@, domain: %{public}@)", buf, 0x34u);
  }

  v14 = *(a1[4] + 1);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __50__AMSMetricsIdentifierStore_resetForcingStoreSync__block_invoke_57;
  v28[3] = &unk_1E73B9CC8;
  v29 = a1[5];
  v30 = v31;
  v27 = 0;
  v15 = [v14 identifierStoreForKey:v26 updateMaybe:v28 error:&v27];
  v16 = v27;
  if (v16)
  {
    v17 = +[AMSLogConfig sharedMetricsConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = AMSLogKey();
      v21 = [a1[4] clientInfo];
      v22 = [v21 bundleIdentifier];
      v23 = [a1[4] domain];
      v24 = AMSLogableError(v16);
      *buf = 138544642;
      v34 = v19;
      v35 = 2114;
      v36 = v20;
      v37 = 2112;
      v38 = v25;
      v39 = 2114;
      v40 = v22;
      v41 = 2114;
      v42 = v23;
      v43 = 2114;
      v44 = v24;
      _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to reset identifiers (dsid: %@, client: %{public}@, domain: %{public}@) %{public}@", buf, 0x3Eu);
    }

    [a1[6] finishWithError:v16];
  }

  else
  {
    [a1[6] finishWithResult:MEMORY[0x1E695E118]];
  }

  _Block_object_dispose(v31, 8);
}

BOOL __50__AMSMetricsIdentifierStore_resetForcingStoreSync__block_invoke_57(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = MEMORY[0x1E696AFB0];
    v5 = v2;
    v6 = [v4 UUID];
    v7 = [v6 UUIDString];
    [v5 setStoreUUID:v7];

    [v5 setStarted:*(a1 + 32)];
    [v5 setModified:*(a1 + 32)];
    [v5 setCrossDeviceSync:1];
    *(*(*(a1 + 40) + 8) + 24) |= [v5 crossDeviceSync];
  }

  return v2 != 0;
}

- (void)setIdentifier:(id)a3 forKey:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF00] now];
  v9 = +[AMSLogConfig sharedMetricsConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = AMSLogKey();
    v13 = 138544130;
    v14 = v11;
    v15 = 2114;
    v16 = v12;
    v17 = 2112;
    v18 = v6;
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Setting identifier: %@ (key: %{public}@)", &v13, 0x2Au);
  }

  [(AMSMetricsIdentifierStore *)self _setIdentifier:v6 withStartedDate:v8 lastSyncDate:0 forKey:v7];
}

- (void)_setIdentifier:(id)a3 withStartedDate:(id)a4 forKey:(id)a5
{
  v8 = a5;
  v11 = a4;
  v9 = a3;
  if ([v8 crossDeviceSync])
  {
    v10 = v11;
  }

  else
  {
    v10 = 0;
  }

  [(AMSMetricsIdentifierStore *)self _setIdentifier:v9 withStartedDate:v11 lastSyncDate:v10 forKey:v8];
}

- (void)_setIdentifier:(id)a3 withStartedDate:(id)a4 lastSyncDate:(id)a5 forKey:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v14 = +[AMSMetricsIdentifierStore _sharedQueue];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __80__AMSMetricsIdentifierStore__setIdentifier_withStartedDate_lastSyncDate_forKey___block_invoke;
  v23 = &unk_1E73B9CF0;
  v24 = self;
  v15 = v13;
  v25 = v15;
  v16 = v11;
  v26 = v16;
  v29 = &v30;
  v17 = v10;
  v27 = v17;
  v18 = v12;
  v28 = v18;
  dispatch_sync(v14, &v20);

  if (*(v31 + 24) == 1)
  {
    v19 = [AMSMetricsIdentifierStore _sync:v20];
  }

  _Block_object_dispose(&v30, 8);
}

void __80__AMSMetricsIdentifierStore__setIdentifier_withStartedDate_lastSyncDate_forKey___block_invoke(uint64_t a1)
{
  v60[1] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 32) account];
  v43 = [AMSMetricsIdentifierStore _accountIdentifierForAccount:v3];

  v4 = objc_opt_class();
  v60[0] = *(a1 + 40);
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
  v6 = *(a1 + 48);
  v7 = *(*(a1 + 72) + 8);
  v8 = [*(a1 + 32) account];
  v9 = [*(a1 + 32) clientInfo];
  v10 = [*(a1 + 32) domain];
  [*(a1 + 32) resetInterval];
  v45 = 0;
  v11 = [v4 _identifierStoreInfoForKeys:v5 inDatabase:v2 date:v6 needsToSync:v7 + 24 account:v8 clientInfo:v9 domain:v10 resetInterval:&v45 error:?];
  v12 = v45;

  if (v12 || !v11)
  {
    v24 = +[AMSLogConfig sharedMetricsConfig];
    if (!v24)
    {
      v24 = +[AMSLogConfig sharedConfig];
    }

    v26 = [v24 OSLogObject];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v41 = v2;
      v27 = objc_opt_class();
      v39 = AMSLogKey();
      v28 = [*(a1 + 32) clientInfo];
      v29 = [v28 bundleIdentifier];
      v30 = [*(a1 + 32) domain];
      v31 = AMSLogableError(v12);
      *buf = 138544642;
      v47 = v27;
      v48 = 2114;
      v49 = v39;
      v50 = 2112;
      v2 = v41;
      v25 = v43;
      v51 = v43;
      v52 = 2114;
      v53 = v29;
      v54 = 2114;
      v55 = v30;
      v56 = 2114;
      v57 = v31;
      _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch/insert identifier store (dsid: %@, client: %{public}@, domain: %{public}@) %{public}@", buf, 0x3Eu);

LABEL_16:
      goto LABEL_17;
    }

LABEL_15:
    v25 = v43;
    goto LABEL_16;
  }

  v13 = objc_opt_class();
  [*(a1 + 32) resetInterval];
  v15 = v14;
  v16 = [v11 started];
  v17 = [v13 _periodFrom:v16 storeInfoStarted:*(a1 + 48) now:v15];

  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  v22 = *(a1 + 64);
  v23 = *(*(a1 + 72) + 8) + 24;
  v44 = 0;
  v24 = [v18 _identifierInfoForKey:v19 storeInfo:v11 period:v17 inDatabase:v2 date:v20 setValue:v21 lastSyncDate:v22 needsToSync:v23 error:&v44];
  v12 = v44;
  if (v12 || !v24)
  {
    v26 = +[AMSLogConfig sharedMetricsConfig];
    if (!v26)
    {
      v26 = +[AMSLogConfig sharedConfig];
    }

    v32 = [v26 OSLogObject];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v38 = objc_opt_class();
      v33 = AMSLogKey();
      v40 = [*(a1 + 32) clientInfo];
      v34 = [v40 bundleIdentifier];
      [*(a1 + 32) domain];
      v35 = v42 = v2;
      v36 = [*(a1 + 40) name];
      v37 = AMSLogableError(v12);
      *buf = 138544898;
      v47 = v38;
      v48 = 2114;
      v49 = v33;
      v50 = 2112;
      v51 = v43;
      v52 = 2114;
      v53 = v34;
      v54 = 2114;
      v55 = v35;
      v56 = 2114;
      v57 = v36;
      v58 = 2114;
      v59 = v37;
      _os_log_impl(&dword_192869000, v32, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch/insert identifier (dsid: %@, client: %{public}@, domain: %{public}@, key: %{public}@) %{public}@", buf, 0x48u);

      v2 = v42;
    }

    goto LABEL_15;
  }

  v12 = 0;
  v25 = v43;
LABEL_17:
}

- (id)identifierIfExistsForKey:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF00] now];
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v6 = objc_alloc_init(AMSMutablePromise);
  v7 = +[AMSMetricsIdentifierStore _sync];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __54__AMSMetricsIdentifierStore_identifierIfExistsForKey___block_invoke;
  v20[3] = &unk_1E73B34B8;
  v8 = v6;
  v21 = v8;
  [v7 addErrorBlock:v20];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__AMSMetricsIdentifierStore_identifierIfExistsForKey___block_invoke_2;
  v15[3] = &unk_1E73B9D60;
  v15[4] = self;
  v9 = v4;
  v16 = v9;
  v10 = v5;
  v17 = v10;
  v19 = v22;
  v11 = v8;
  v18 = v11;
  [v7 addFinishBlock:v15];
  v12 = v18;
  v13 = v11;

  _Block_object_dispose(v22, 8);

  return v13;
}

void __54__AMSMetricsIdentifierStore_identifierIfExistsForKey___block_invoke_2(uint64_t a1)
{
  v2 = +[AMSMetricsIdentifierStore _sharedQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__AMSMetricsIdentifierStore_identifierIfExistsForKey___block_invoke_3;
  block[3] = &unk_1E73B9D38;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 48);
  v5 = *(a1 + 56);
  v4 = v5;
  v9 = v5;
  dispatch_async(v2, block);
}

void __54__AMSMetricsIdentifierStore_identifierIfExistsForKey___block_invoke_3(uint64_t a1)
{
  v76[1] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 32) account];
  v4 = [AMSMetricsIdentifierStore _accountIdentifierForAccount:v3];

  v5 = objc_opt_class();
  v76[0] = *(a1 + 40);
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:1];
  v7 = *(a1 + 48);
  v8 = *(*(a1 + 64) + 8);
  v9 = [*(a1 + 32) account];
  v10 = [*(a1 + 32) clientInfo];
  v11 = [*(a1 + 32) domain];
  [*(a1 + 32) resetInterval];
  v61 = 0;
  v12 = [v5 _identifierStoreInfoForKeys:v6 inDatabase:v2 date:v7 needsToSync:v8 + 24 account:v9 clientInfo:v10 domain:v11 resetInterval:&v61 error:?];
  v13 = v61;

  if (v13 || !v12)
  {
    v39 = +[AMSLogConfig sharedMetricsConfig];
    if (!v39)
    {
      v39 = +[AMSLogConfig sharedConfig];
    }

    v40 = [v39 OSLogObject];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v57 = v4;
      v41 = objc_opt_class();
      v42 = AMSLogKey();
      v43 = [*(a1 + 32) clientInfo];
      [v43 bundleIdentifier];
      v44 = v55 = v2;
      v45 = [*(a1 + 32) domain];
      AMSLogableError(v13);
      v46 = v59 = v12;
      *buf = 138544642;
      v63 = v41;
      v4 = v57;
      v64 = 2114;
      v65 = v42;
      v66 = 2112;
      v67 = v57;
      v68 = 2114;
      v69 = v44;
      v70 = 2114;
      v71 = v45;
      v72 = 2114;
      v73 = v46;
      _os_log_impl(&dword_192869000, v40, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch/insert identifier store (dsid: %@, client: %{public}@, domain: %{public}@) %{public}@", buf, 0x3Eu);

      v2 = v55;
      v12 = v59;
    }

    [*(a1 + 56) finishWithError:v13];
  }

  else
  {
    v14 = objc_opt_class();
    [*(a1 + 32) resetInterval];
    v16 = v15;
    v17 = [v12 started];
    v18 = [v14 _periodFrom:v17 storeInfoStarted:*(a1 + 48) now:v16];

    v19 = objc_opt_class();
    v58 = v12;
    v20 = *(a1 + 40);
    [*(a1 + 32) resetInterval];
    v21 = v20;
    v12 = v58;
    v22 = [v19 _generateIdentifierKey:v21 storeInfo:v58 period:v18 resetInterval:?];
    v60 = 0;
    v23 = [v2 identifierForKey:v22 updateMaybe:&__block_literal_global_97 error:&v60];
    v13 = v60;
    if (v13)
    {
      v56 = v4;
      v24 = +[AMSLogConfig sharedMetricsConfig];
      if (!v24)
      {
        v24 = +[AMSLogConfig sharedConfig];
      }

      v25 = [v24 OSLogObject];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v51 = objc_opt_class();
        v26 = AMSLogKey();
        v52 = [*(a1 + 32) clientInfo];
        [v52 bundleIdentifier];
        v27 = v53 = v22;
        v28 = [*(a1 + 32) domain];
        v29 = [*(a1 + 40) name];
        AMSLogableError(v13);
        v30 = v54 = v2;
        *buf = 138544898;
        v63 = v51;
        v64 = 2114;
        v65 = v26;
        v66 = 2112;
        v67 = v56;
        v68 = 2114;
        v69 = v27;
        v70 = 2114;
        v71 = v28;
        v72 = 2114;
        v73 = v29;
        v74 = 2114;
        v75 = v30;
        _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Database failure while searching for record (dsid: %@, client: %{public}@, domain: %{public}@, key: %{public}@) %{public}@", buf, 0x48u);

        v12 = v58;
        v22 = v53;

        v2 = v54;
      }

      v4 = v56;
    }

    v31 = +[AMSLogConfig sharedMetricsConfig];
    v32 = v31;
    if (v23)
    {
      if (!v31)
      {
        v32 = +[AMSLogConfig sharedConfig];
      }

      v33 = [v32 OSLogObject];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v34 = objc_opt_class();
        v35 = AMSLogKey();
        v36 = *(a1 + 40);
        *buf = 138544130;
        v63 = v34;
        v64 = 2114;
        v65 = v35;
        v66 = 2114;
        v67 = v36;
        v68 = 2114;
        v69 = v23;
        _os_log_impl(&dword_192869000, v33, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] -identifierIfExistsForKey: Providing for key: %{public}@, ID: %{public}@", buf, 0x2Au);

        v12 = v58;
      }

      v37 = *(a1 + 56);
      v38 = [v23 value];
      [v37 finishWithResult:v38];
    }

    else
    {
      if (!v31)
      {
        v32 = +[AMSLogConfig sharedConfig];
      }

      v47 = [v32 OSLogObject];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        v48 = objc_opt_class();
        v49 = AMSLogKey();
        v50 = *(a1 + 40);
        *buf = 138543874;
        v63 = v48;
        v64 = 2114;
        v65 = v49;
        v66 = 2114;
        v67 = v50;
        _os_log_impl(&dword_192869000, v47, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] -identifierIfExistsForKey: Providing empty string ID for key %{public}@", buf, 0x20u);

        v12 = v58;
      }

      [*(a1 + 56) finishWithResult:&stru_1F071BA78];
    }
  }
}

- (void)_generateFutureIdentifiersIfNeededForKeys:(id)a3 storeInfo:(id)a4 afterPeriod:(int64_t)a5 inDatabase:(id)a6 date:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  [(AMSMetricsIdentifierStore *)self resetInterval];
  if (v16 != 0.0)
  {
    v17 = [v13 started];

    if (v17)
    {
      v18 = +[AMSMetricsIdentifierStore _sharedQueue];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __109__AMSMetricsIdentifierStore__generateFutureIdentifiersIfNeededForKeys_storeInfo_afterPeriod_inDatabase_date___block_invoke;
      v19[3] = &unk_1E73B9D88;
      v20 = v15;
      v21 = v13;
      v22 = self;
      v25 = a5;
      v23 = v12;
      v24 = v14;
      dispatch_async(v18, v19);
    }
  }
}

void __109__AMSMetricsIdentifierStore__generateFutureIdentifiersIfNeededForKeys_storeInfo_afterPeriod_inDatabase_date___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) dateByAddingTimeInterval:604800.0];
  v3 = [*(a1 + 40) started];
  [v2 timeIntervalSinceDate:v3];
  v5 = v4;
  [*(a1 + 48) resetInterval];
  v7 = (v5 / v6);

  if (*(a1 + 72) + 7 >= (v7 & ~(v7 >> 63)))
  {
    v8 = v7 & ~(v7 >> 63);
  }

  else
  {
    v8 = *(a1 + 72) + 7;
  }

  if (qword_1ED6E2F48 != -1)
  {
    dispatch_once(&qword_1ED6E2F48, &__block_literal_global_65);
  }

  objc_storeStrong(&_MergedGlobals_134, qword_1ED6E2F50);
  v9 = _MergedGlobals_134;
  v10 = [*(a1 + 40) storeUUID];
  v11 = [v9 objectForKey:v10];
  v12 = [v11 integerValue];
  if (!v12)
  {
    v12 = *(a1 + 72);
  }

  if (v8 > v12)
  {
    v13 = _MergedGlobals_134;
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
    v15 = [*(a1 + 40) storeUUID];
    [v13 setObject:v14 forKey:v15];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v16 = *(a1 + 56);
    v17 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v17)
    {
      v18 = v17;
      v31 = v2;
      v19 = 0;
      v20 = *v36;
      obj = v16;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v36 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v35 + 1) + 8 * i);
          if ([v22 crossDeviceSync])
          {
            v23 = v8;
            while (1)
            {
              v34 = 0;
              v25 = *(a1 + 40);
              v24 = *(a1 + 48);
              v26 = *(a1 + 64);
              v27 = *(a1 + 32);
              v33 = 0;
              v28 = [v24 _identifierInfoForKey:v22 storeInfo:v25 period:v23 inDatabase:v26 date:v27 setValue:0 lastSyncDate:0 needsToSync:&v34 error:&v33];
              v29 = v33;
              if (v29 || (v34 & 1) == 0)
              {
                break;
              }

              --v23;
              v19 = 1;
              if (v23 <= v12)
              {
                goto LABEL_21;
              }
            }
          }

LABEL_21:
          ;
        }

        v18 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v18);

      v2 = v31;
      if (v19)
      {
        v30 = +[AMSMetricsIdentifierStore _sync];
      }
    }

    else
    {
    }
  }
}

void __109__AMSMetricsIdentifierStore__generateFutureIdentifiersIfNeededForKeys_storeInfo_afterPeriod_inDatabase_date___block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  [v0 setCountLimit:100];
  v1 = qword_1ED6E2F50;
  qword_1ED6E2F50 = v0;
}

- (id)_identifierInfoForKey:(id)a3 storeInfo:(id)a4 period:(int64_t)a5 inDatabase:(id)a6 date:(id)a7 setValue:(id)a8 lastSyncDate:(id)a9 needsToSync:(BOOL *)a10 error:(id *)a11
{
  v17 = a10;
  v18 = a3;
  v19 = a4;
  v20 = a7;
  v43 = a8;
  v21 = a9;
  v22 = a6;
  [(AMSMetricsIdentifierStore *)self resetInterval];
  if (v23 == 0.0)
  {
    v27 = a5;
    v29 = 0;
  }

  else
  {
    v24 = [v19 started];
    if (v24)
    {
      [v19 started];
      v26 = v25 = v20;
      [(AMSMetricsIdentifierStore *)self resetInterval];
      v27 = a5;
      v29 = [v26 dateByAddingTimeInterval:v28 * (a5 + 1)];

      v20 = v25;
      v17 = a10;
    }

    else
    {
      v27 = a5;
      v29 = 0;
    }
  }

  v30 = objc_opt_class();
  [(AMSMetricsIdentifierStore *)self resetInterval];
  v31 = [v30 _generateIdentifierKey:v18 storeInfo:v19 period:v27 resetInterval:?];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __124__AMSMetricsIdentifierStore__identifierInfoForKey_storeInfo_period_inDatabase_date_setValue_lastSyncDate_needsToSync_error___block_invoke;
  v44[3] = &unk_1E73B9DB0;
  v44[4] = self;
  v45 = v20;
  v46 = v43;
  v47 = v18;
  v48 = v31;
  v49 = v29;
  v50 = v19;
  v51 = v21;
  v52 = v17;
  v42 = v21;
  v32 = v19;
  v33 = v29;
  v34 = v31;
  v35 = v18;
  v36 = v43;
  v37 = v20;
  v38 = [v22 identifierForKey:v34 updateMaybe:v44 error:a11];

  v39 = [(AMSMetricsIdentifierStore *)self account];
  v40 = [AMSMetricsIdentifierCore _removeU13Identifier:v38 account:v39];

  return v40;
}

uint64_t __124__AMSMetricsIdentifierStore__identifierInfoForKey_storeInfo_period_inDatabase_date_setValue_lastSyncDate_needsToSync_error___block_invoke(uint64_t a1, id *a2)
{
  v78 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = 0x1E73B0000uLL;
  v6 = +[AMSLogConfig sharedMetricsConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    *buf = 138543874;
    v69 = v8;
    v70 = 2114;
    v71 = v9;
    v72 = 2114;
    *v73 = v4;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found ID in db: %{public}@", buf, 0x20u);
  }

  v10 = [v4 changeCounter];
  v11 = [v4 value];
  if (v4)
  {
    if ([v4 deleted])
    {
      v12 = 4;
    }

    else
    {
      v12 = 0;
    }

    if (([v4 deleted] & 1) == 0)
    {
      v13 = [v4 expires];
      if (!v13)
      {
        v67 = v12;
        v16 = 0;
        v17 = v4;
        goto LABEL_26;
      }

      v14 = v13;
      v15 = [v13 compare:*(a1 + 40)];

      if (v15 == 1)
      {
        v67 = v12;
        v16 = 0;
        v17 = v4;
        v5 = 0x1E73B0000uLL;
        goto LABEL_26;
      }

      v12 = 5;
      v5 = 0x1E73B0000uLL;
    }
  }

  else
  {
    v12 = 3;
  }

  if (*(a1 + 48))
  {
    v12 = 6;
  }

  v17 = objc_opt_new();

  [v17 setCrossDeviceSync:{objc_msgSend(*(a1 + 56), "crossDeviceSync")}];
  [v17 setIdKey:*(a1 + 64)];
  [v17 setExpires:*(a1 + 72)];
  v18 = [*(a1 + 80) storeUUID];
  [v17 setStoreUUID:v18];

  v19 = [*(a1 + 56) name];
  [v17 setName:v19];

  if (*(a1 + 48))
  {
    [v17 setValue:?];
  }

  else
  {
    v20 = [MEMORY[0x1E696AFB0] UUID];
    v21 = [v20 ams_base62String];
    [v17 setValue:v21];

    v5 = 0x1E73B0000uLL;
  }

  v67 = v12;
  [v17 setLastSync:*(a1 + 88)];
  v22 = v17;
  *a2 = v17;
  v23 = +[AMSLogConfig sharedMetricsConfig];
  if (!v23)
  {
    v23 = +[AMSLogConfig sharedConfig];
  }

  v24 = [v23 OSLogObject];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = objc_opt_class();
    AMSLogKey();
    v27 = v26 = v11;
    *buf = 138543874;
    v69 = v25;
    v5 = 0x1E73B0000uLL;
    v70 = 2114;
    v71 = v27;
    v72 = 2114;
    *v73 = v17;
    _os_log_impl(&dword_192869000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Created new ID in db: %{public}@", buf, 0x20u);

    v11 = v26;
  }

  v16 = 1;
LABEL_26:
  v28 = *(a1 + 48);
  if (v28)
  {
    v29 = [v17 value];
    v30 = [v28 isEqualToString:v29];

    if ((v30 & 1) == 0)
    {
      [v17 setValue:*(a1 + 48)];
      v31 = +[AMSLogConfig sharedMetricsConfig];
      if (!v31)
      {
        v31 = +[AMSLogConfig sharedConfig];
      }

      v32 = [v31 OSLogObject];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_opt_class();
        v34 = AMSLogKey();
        *buf = 138543874;
        v69 = v33;
        v70 = 2114;
        v71 = v34;
        v72 = 2114;
        *v73 = v17;
        _os_log_impl(&dword_192869000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updated ID value in db: %{public}@", buf, 0x20u);

        v5 = 0x1E73B0000uLL;
      }

      v16 = 1;
      v67 = 7;
    }
  }

  v35 = *(a1 + 88);
  if (v35)
  {
    v36 = [v17 lastSync];
    v37 = [v35 isEqualToDate:v36];

    if ((v37 & 1) == 0)
    {
      [v17 setLastSync:*(a1 + 88)];
      v16 = 1;
    }
  }

  v38 = [v17 crossDeviceSync];
  if (v38 == [*(a1 + 56) crossDeviceSync])
  {
    v46 = (a1 + 72);
    if (!*(a1 + 72))
    {
      if (v16)
      {
        goto LABEL_48;
      }

      goto LABEL_52;
    }
  }

  else
  {
    [v17 setCrossDeviceSync:{objc_msgSend(*(a1 + 56), "crossDeviceSync")}];
    v38 = +[AMSLogConfig sharedMetricsConfig];
    if (!v38)
    {
      v38 = +[AMSLogConfig sharedConfig];
    }

    v39 = [v38 OSLogObject];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v64 = objc_opt_class();
      v40 = AMSLogKey();
      v41 = [*(a1 + 56) crossDeviceSync];
      [*(a1 + 56) name];
      v42 = v65 = v11;
      [*(a1 + 32) clientInfo];
      v43 = v66 = v10;
      v44 = [v43 bundleIdentifier];
      v45 = [*(a1 + 32) domain];
      *buf = 138544642;
      v69 = v64;
      v70 = 2114;
      v71 = v40;
      v72 = 1026;
      *v73 = v41;
      *&v73[4] = 2114;
      *&v73[6] = v42;
      v74 = 2114;
      v75 = v44;
      v76 = 2114;
      v77 = v45;
      _os_log_impl(&dword_192869000, v39, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Updating identifier cross device sync (sync: %{public}d, key: %{public}@, client: %{public}@, domain: %{public}@)", buf, 0x3Au);

      v5 = 0x1E73B0000;
      v10 = v66;

      v11 = v65;
    }

    v46 = (a1 + 72);
    if (!*(a1 + 72))
    {
      goto LABEL_48;
    }

    v16 = 1;
  }

  v47 = [v17 expires];
  if (!v47 || (v38 = v47, [*v46 timeIntervalSinceReferenceDate], v49 = v48, objc_msgSend(v17, "expires"), v50 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v50, "timeIntervalSinceReferenceDate"), v52 = v51, v50, v38, v49 < v52))
  {
    v53 = [v17 serverProvidedAt];

    if (!v53)
    {
      [v17 setExpires:*v46];
      v38 = [*(v5 + 3552) sharedMetricsConfig];
      if (!v38)
      {
        v38 = [*(v5 + 3552) sharedConfig];
      }

      v55 = [v38 OSLogObject];
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = objc_opt_class();
        v57 = AMSLogKey();
        *buf = 138543874;
        v69 = v56;
        v70 = 2114;
        v71 = v57;
        v72 = 2114;
        *v73 = v17;
        _os_log_impl(&dword_192869000, v55, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updated expiry for ID in db: %{public}@", buf, 0x20u);
      }

      if (v11)
      {
        goto LABEL_58;
      }

      goto LABEL_49;
    }
  }

  if (v16)
  {
LABEL_48:
    if (v11)
    {
      goto LABEL_58;
    }

LABEL_49:
    v38 = [v17 value];
    if (!v38)
    {
      goto LABEL_61;
    }

LABEL_58:
    v58 = [v17 value];
    v59 = [v11 isEqualToString:v58];

    if (v11)
    {
      if (v59)
      {
LABEL_61:
        v62 = [MEMORY[0x1E695DF00] now];
        [v17 setModified:v62];

        **(a1 + 96) |= [v17 crossDeviceSync];
        v54 = 1;
        goto LABEL_62;
      }
    }

    else
    {

      if (v59)
      {
        goto LABEL_61;
      }
    }

    v60 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v10, "longLongValue") + 1}];
    [v17 setChangeCounter:v60];

    v61 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v67];
    [v17 setChangeCause:v61];

    [v17 setPreviousValue:v11];
    goto LABEL_61;
  }

LABEL_52:
  v54 = 0;
LABEL_62:

  return v54;
}

- (BOOL)isAccountValidForKey:(id)a3 activeItunesAccountDSID:(id *)a4
{
  v6 = a3;
  if (-[AMSMetricsIdentifierStore isActiveITunesAccountRequired](self, "isActiveITunesAccountRequired") || [v6 isActiveITunesAccountRequired])
  {
    v7 = [(AMSMetricsIdentifierStore *)self account];
    v8 = [v7 ams_DSID];

    v9 = v8 != 0;
    if (v8)
    {
      v10 = [(AMSMetricsIdentifierStore *)self account];
      if (([v10 ams_isiTunesAccount] & 1) == 0)
      {

        if (!a4)
        {
          goto LABEL_12;
        }

LABEL_10:
        if (*a4)
        {
          v13 = *a4;
          goto LABEL_13;
        }

LABEL_12:
        v14 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
        v15 = [v14 ams_activeiTunesAccount];
        v13 = [v15 ams_DSID];

        if (!a4)
        {
LABEL_14:
          if (v13)
          {
            v9 = [v8 isEqualToNumber:v13];
          }

          else
          {
            v9 = 0;
          }

          goto LABEL_18;
        }

LABEL_13:
        v16 = v13;
        *a4 = v13;
        goto LABEL_14;
      }

      v11 = [(AMSMetricsIdentifierStore *)self account];
      v12 = [v11 isActive];

      if ((v12 & 1) == 0)
      {
        if (!a4)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

LABEL_18:

    goto LABEL_19;
  }

  v9 = 1;
LABEL_19:

  return v9;
}

- (id)_identifiersForKeys:(id)a3 currentDate:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__45;
  v32 = __Block_byref_object_dispose__45;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v8 = +[AMSMetricsIdentifierStore _sharedQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__AMSMetricsIdentifierStore__identifiersForKeys_currentDate___block_invoke;
  block[3] = &unk_1E73B9DD8;
  block[4] = self;
  v9 = v6;
  v20 = v9;
  v10 = v7;
  v21 = v10;
  v22 = &v24;
  v23 = &v28;
  dispatch_sync(v8, block);

  if (*(v25 + 24) == 1)
  {
    v11 = +[AMSMetricsIdentifierStore _sync];
  }

  v12 = +[AMSLogConfig sharedMetricsConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  v13 = [v12 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = objc_opt_class();
    v15 = AMSLogKey();
    v16 = v29[5];
    *buf = 138544130;
    v35 = v14;
    v36 = 2114;
    v37 = v15;
    v38 = 2114;
    v39 = v9;
    v40 = 2114;
    v41 = v16;
    _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] -_identifiersForKeys:currentDate: Providing for keys %{public}@: %{public}@", buf, 0x2Au);
  }

  v17 = v29[5];
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  return v17;
}

void __61__AMSMetricsIdentifierStore__identifiersForKeys_currentDate___block_invoke(uint64_t a1)
{
  v81 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 32) account];
  v54 = [AMSMetricsIdentifierStore _accountIdentifierForAccount:v3];

  v4 = objc_opt_class();
  v5 = *(a1 + 48);
  v6 = *(*(a1 + 56) + 8);
  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) account];
  v9 = [*(a1 + 32) clientInfo];
  v10 = [*(a1 + 32) domain];
  [*(a1 + 32) resetInterval];
  v65 = 0;
  v58 = v2;
  v11 = [v4 _identifierStoreInfoForKeys:v7 inDatabase:v2 date:v5 needsToSync:v6 + 24 account:v8 clientInfo:v9 domain:v10 resetInterval:&v65 error:?];
  v12 = v65;

  if (v12 || !v11)
  {
    v21 = +[AMSLogConfig sharedMetricsConfig];
    if (!v21)
    {
      v21 = +[AMSLogConfig sharedConfig];
    }

    v32 = [v21 OSLogObject];
    v33 = v54;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      loga = v32;
      v34 = objc_opt_class();
      v35 = AMSLogKey();
      v36 = [*(a1 + 32) clientInfo];
      v37 = [v36 bundleIdentifier];
      v38 = [*(a1 + 32) domain];
      v39 = AMSLogableError(v12);
      *buf = 138544642;
      v67 = v34;
      v32 = loga;
      v68 = 2114;
      v69 = v35;
      v70 = 2112;
      v71 = v54;
      v72 = 2114;
      v73 = v37;
      v74 = 2114;
      v75 = v38;
      v76 = 2114;
      v77 = v39;
      _os_log_impl(&dword_192869000, loga, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch/insert identifier store (dsid: %@, client: %{public}@, domain: %{public}@) %{public}@", buf, 0x3Eu);
    }
  }

  else
  {
    v13 = objc_opt_class();
    [*(a1 + 32) resetInterval];
    v15 = v14;
    v55 = v11;
    v16 = [v11 started];
    v17 = [v13 _periodFrom:v16 storeInfoStarted:*(a1 + 48) now:v15];

    log = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v18 = *(a1 + 40);
    v19 = [v18 countByEnumeratingWithState:&v61 objects:v80 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = *v62;
      while (2)
      {
        v23 = 0;
        v24 = v21;
        do
        {
          if (*v62 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v25 = *(*(&v61 + 1) + 8 * v23);
          v26 = *(a1 + 32);
          v60 = v24;
          v27 = [v26 isAccountValidForKey:v25 activeItunesAccountDSID:&v60];
          v21 = v60;

          if (v27)
          {
            v28 = *(a1 + 32);
            v29 = *(a1 + 48);
            v30 = *(*(a1 + 56) + 8) + 24;
            v59 = 0;
            v31 = [v28 _identifierInfoForKey:v25 storeInfo:v55 period:v17 inDatabase:v58 date:v29 setValue:0 lastSyncDate:0 needsToSync:v30 error:&v59];
            v12 = v59;
            if (v12 || !v31)
            {
              v40 = +[AMSLogConfig sharedMetricsConfig];
              if (!v40)
              {
                v40 = +[AMSLogConfig sharedConfig];
              }

              v41 = [v40 OSLogObject];
              v33 = v54;
              v11 = v55;
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                v50 = objc_opt_class();
                v53 = AMSLogKey();
                v51 = [*(a1 + 32) clientInfo];
                v48 = [v51 bundleIdentifier];
                v47 = [*(a1 + 32) domain];
                [v25 name];
                v42 = v52 = v41;
                v49 = AMSLogableError(v12);
                *buf = 138544898;
                v67 = v50;
                v68 = 2114;
                v69 = v53;
                v70 = 2112;
                v71 = v54;
                v72 = 2114;
                v73 = v48;
                v74 = 2114;
                v75 = v47;
                v76 = 2114;
                v77 = v42;
                v78 = 2114;
                v79 = v49;
                _os_log_impl(&dword_192869000, v52, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch/insert identifier (dsid: %@, client: %{public}@, domain: %{public}@, key: %{public}@) %{public}@", buf, 0x48u);

                v41 = v52;
              }

              v32 = log;
              goto LABEL_32;
            }

            [log addObject:v31];
          }

          ++v23;
          v24 = v21;
        }

        while (v20 != v23);
        v20 = [v18 countByEnumeratingWithState:&v61 objects:v80 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v21 = 0;
    }

    v32 = log;
    if ([*(a1 + 32) includeAccountMatchStatus] && -[NSObject count](log, "count"))
    {
      v43 = objc_alloc_init(AMSMetricsIdentifierInfo);
      [(AMSMetricsIdentifierInfo *)v43 setName:@"xpAccountsMatch"];
      [(AMSMetricsIdentifierInfo *)v43 setCrossDeviceSync:0];
      v44 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
      v45 = [v44 ams_isActiveAccountCombined];

      if (v45)
      {
        v46 = @"true";
      }

      else
      {
        v46 = @"false";
      }

      [(AMSMetricsIdentifierInfo *)v43 setValue:v46];
      [log addObject:v43];
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), log);
    v11 = v55;
    [*(a1 + 32) _generateFutureIdentifiersIfNeededForKeys:*(a1 + 40) storeInfo:v55 afterPeriod:v17 inDatabase:v58 date:*(a1 + 48)];
    v12 = 0;
    v33 = v54;
  }

LABEL_32:
}

+ (id)_identifierStoreInfoForKeys:(id)a3 inDatabase:(id)a4 date:(id)a5 needsToSync:(BOOL *)a6 account:(id)a7 clientInfo:(id)a8 domain:(id)a9 resetInterval:(double)a10 error:(id *)a11
{
  v17 = a5;
  v18 = a8;
  v19 = a9;
  v20 = a7;
  v21 = a4;
  v22 = a3;
  v23 = [AMSMetricsIdentifierStore _accountIdentifierForAccount:v20];
  v24 = [a1 _generateStoreKeyForAccount:v20 domain:v19 clientInfo:v18];

  v25 = [v22 ac_firstObjectPassingTest:&__block_literal_global_80_2];

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __131__AMSMetricsIdentifierStore__identifierStoreInfoForKeys_inDatabase_date_needsToSync_account_clientInfo_domain_resetInterval_error___block_invoke_2;
  v34[3] = &unk_1E73B9E20;
  v35 = v23;
  v36 = v24;
  v43 = v25 != 0;
  v37 = v17;
  v38 = v18;
  v39 = v19;
  v40 = a1;
  v41 = a10;
  v42 = a6;
  v26 = v19;
  v27 = v18;
  v28 = v17;
  v29 = v24;
  v30 = v23;
  v31 = [v21 identifierStoreForKey:v29 updateMaybe:v34 error:a11];

  return v31;
}

uint64_t __131__AMSMetricsIdentifierStore__identifierStoreInfoForKeys_inDatabase_date_needsToSync_account_clientInfo_domain_resetInterval_error___block_invoke_2(uint64_t a1, id *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = +[AMSLogConfig sharedMetricsConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v36 = 138543874;
    v37 = v7;
    v38 = 2114;
    v39 = v8;
    v40 = 2114;
    *v41 = v4;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found ID store in db: %{public}@", &v36, 0x20u);
  }

  if (v4 && ![v4 deleted])
  {
    v17 = 0;
    v9 = v4;
  }

  else
  {
    v9 = objc_opt_new();

    [v9 setAccount:*(a1 + 32)];
    [v9 setStoreKey:*(a1 + 40)];
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [v10 UUIDString];
    [v9 setStoreUUID:v11];

    [v9 setStarted:*(a1 + 48)];
    v12 = v9;
    *a2 = v9;
    v13 = +[AMSLogConfig sharedMetricsConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = AMSLogKey();
      v36 = 138543874;
      v37 = v15;
      v38 = 2114;
      v39 = v16;
      v40 = 2114;
      *v41 = v9;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Created new ID store in db: %{public}@", &v36, 0x20u);
    }

    v17 = 1;
  }

  if (*(a1 + 96) != [v9 crossDeviceSync] && (objc_msgSend(v9, "crossDeviceSync") & 1) == 0)
  {
    [v9 setCrossDeviceSync:*(a1 + 96)];
    v20 = +[AMSLogConfig sharedMetricsConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v23 = AMSLogKey();
      v24 = *(a1 + 96);
      v25 = [*(a1 + 56) bundleIdentifier];
      v26 = *(a1 + 64);
      v36 = 138544386;
      v37 = v22;
      v38 = 2114;
      v39 = v23;
      v40 = 1026;
      *v41 = v24;
      *&v41[4] = 2114;
      *&v41[6] = v25;
      *&v41[14] = 2114;
      *&v41[16] = v26;
      _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating identifier store cross device sync (sync: %{public}d, client: %{public}@, domain: %{public}@)", &v36, 0x30u);
    }

    [v9 resetInterval];
    if (v27 == *(a1 + 80))
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  [v9 resetInterval];
  if (v18 != *(a1 + 80))
  {
LABEL_23:
    [v9 setResetInterval:?];
    v28 = +[AMSLogConfig sharedMetricsConfig];
    if (!v28)
    {
      v28 = +[AMSLogConfig sharedConfig];
    }

    v29 = [v28 OSLogObject];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      v31 = AMSLogKey();
      v32 = *(a1 + 80);
      v33 = [*(a1 + 56) bundleIdentifier];
      v34 = *(a1 + 64);
      v36 = 138544386;
      v37 = v30;
      v38 = 2114;
      v39 = v31;
      v40 = 2050;
      *v41 = v32;
      *&v41[8] = 2114;
      *&v41[10] = v33;
      *&v41[18] = 2114;
      *&v41[20] = v34;
      _os_log_impl(&dword_192869000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating identifier store reset interval (interval: %{public}f, client: %{public}@, domain: %{public}@)", &v36, 0x34u);
    }

    goto LABEL_28;
  }

  if (v17)
  {
LABEL_28:
    [v9 setModified:*(a1 + 48)];
    **(a1 + 88) |= [v9 crossDeviceSync];
    v19 = 1;
    goto LABEL_29;
  }

  v19 = 0;
LABEL_29:

  return v19;
}

+ (id)_accountIdentifierForAccount:(id)a3
{
  v3 = [a3 ams_DSID];
  v4 = [v3 stringValue];

  if (!v4 || [(__CFString *)v4 integerValue]<= 0)
  {

    v4 = &stru_1F071BA78;
  }

  return v4;
}

+ (id)_generateStoreKeyForAccount:(id)a3 domain:(id)a4 clientInfo:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v11 = [v7 ams_DSID];

  if (v11)
  {
    v12 = [v7 ams_DSID];
    [v10 appendFormat:@"%@", v12];
  }

  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = +[AMSProcessInfo currentProcess];
  }

  v14 = v13;
  v15 = [v13 bundleIdentifier];

  if (v15)
  {
    v16 = [v14 bundleIdentifier];
    [v10 appendFormat:@"%@", v16];
  }

  if ([v8 length])
  {
    [v10 appendFormat:@".%@", v8];
  }

  if (![v10 length])
  {
    v17 = [MEMORY[0x1E696AE30] processInfo];
    v18 = [v17 processName];
    [v10 appendFormat:@"%@", v18];
  }

  return v10;
}

+ (id)_generateIdentifierKey:(id)a3 storeInfo:(id)a4 period:(int64_t)a5 resetInterval:(double)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [v10 storeKey];
  v12 = [v10 storeUUID];
  if ([v11 isEqual:v12])
  {
    v13 = [v9 crossDeviceSync];

    if ((v13 & 1) == 0)
    {
      v14 = MEMORY[0x1E696AEC0];
      v15 = [v10 storeUUID];
      v16 = [v9 name];
      [v14 stringWithFormat:@"%@_%@", v15, v16, v20, v21];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v17 = MEMORY[0x1E696AEC0];
  v15 = [v10 storeUUID];
  v16 = [v9 name];
  [v17 stringWithFormat:@"%@_%@_%llx_%lx", v15, v16, a6, a5];
  v18 = LABEL_6:;

  return v18;
}

+ (id)_identifierStoreWithAccount:(id)a3 parameters:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:@"bundleIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 objectForKeyedSubscript:@"domain"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v5 objectForKeyedSubscript:@"resetInterval"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v5 objectForKeyedSubscript:@"shouldEmitDiagnosticFields"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v14 BOOLValue];
  v16 = [v5 objectForKeyedSubscript:@"shouldEmitPreviousUserId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = MEMORY[0x1E695E118];
  }

  v19 = [v18 BOOLValue];

  v20 = objc_alloc_init(AMSMetricsIdentifierStore);
  [(AMSMetricsIdentifierStore *)v20 setAccount:v6];

  if (v8)
  {
    v21 = [[AMSProcessInfo alloc] initWithBundleIdentifier:v8];
    [(AMSMetricsIdentifierStore *)v20 setClientInfo:v21];
  }

  [(AMSMetricsIdentifierStore *)v20 setDomain:v10];
  -[AMSMetricsIdentifierStore setResetInterval:](v20, "setResetInterval:", [v12 integerValue]);
  [(AMSMetricsIdentifierStore *)v20 setShouldEmitDiagnosticFields:v15];
  [(AMSMetricsIdentifierStore *)v20 setShouldEmitPreviousUserId:v19];

  return v20;
}

+ (id)_parametersForBag:(id)a3 bagNamespace:(id)a4
{
  v5 = a4;
  v6 = [a3 dictionaryForKey:@"metrics-identifiers"];
  v7 = [v6 valuePromise];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__AMSMetricsIdentifierStore__parametersForBag_bagNamespace___block_invoke;
  v11[3] = &unk_1E73B5C28;
  v12 = v5;
  v8 = v5;
  v9 = [v7 thenWithBlock:v11];

  return v9;
}

id __60__AMSMetricsIdentifierStore__parametersForBag_bagNamespace___block_invoke(uint64_t a1, void *a2)
{
  v8 = [a2 objectForKey:*(a1 + 32)];
  if (v8)
  {
    v9 = [AMSPromise promiseWithResult:v8];
  }

  else
  {
    v10 = AMSErrorWithFormat(2, @"Metrics Identifier Store Failure", @"Failed to find metrics identifiers parameters for namespace: %@", v3, v4, v5, v6, v7, *(a1 + 32));
    v9 = [AMSPromise promiseWithError:v10];
  }

  return v9;
}

uint64_t __41__AMSMetricsIdentifierStore__sharedQueue__block_invoke()
{
  qword_1ED6E2F60 = dispatch_queue_create("com.apple.AMSMetricsIdentifierStore", 0);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_sync
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedMetricsConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    *buf = 138543618;
    v18 = v5;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] CloudKit Syncing", buf, 0x16u);
  }

  if (qword_1ED6E2F68 != -1)
  {
    dispatch_once(&qword_1ED6E2F68, &__block_literal_global_109);
  }

  if (qword_1ED6E2F70)
  {
    v7 = +[AMSBinaryPromise promiseWithSuccess];
  }

  else
  {
    v8 = a1;
    objc_sync_enter(v8);
    v9 = qword_1ED6E2F78;
    if (!qword_1ED6E2F78)
    {
      v10 = objc_alloc_init(AMSEngagement);
      v11 = [(AMSEngagement *)v10 syncMetricsIdentifiers];
      v12 = qword_1ED6E2F78;
      qword_1ED6E2F78 = v11;

      v13 = dispatch_time(0, 1000000000);
      v14 = [v8 _sharedQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __34__AMSMetricsIdentifierStore__sync__block_invoke_2;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v8;
      dispatch_after(v13, v14, block);

      v9 = qword_1ED6E2F78;
    }

    v7 = v9;
    objc_sync_exit(v8);
  }

  return v7;
}

uint64_t __34__AMSMetricsIdentifierStore__sync__block_invoke()
{
  qword_1ED6E2F70 = NSClassFromString(&cfstr_Xctest.isa);

  return MEMORY[0x1EEE66BB8]();
}

void __34__AMSMetricsIdentifierStore__sync__block_invoke_2(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v1 = qword_1ED6E2F78;
  qword_1ED6E2F78 = 0;

  objc_sync_exit(obj);
}

+ (int64_t)_periodFrom:(double)a3 storeInfoStarted:(id)a4 now:(id)a5
{
  if (a3 == 0.0 || a4 == 0)
  {
    v8 = 0;
  }

  else
  {
    [a5 timeIntervalSinceDate:a4];
    v8 = (v7 / a3);
  }

  return v8 & ~(v8 >> 63);
}

+ (id)shouldEnableResetUIFromBag:(id)a3
{
  v4 = [a1 _promiseOfListOfNamespacesFromBag:a3];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__AMSMetricsIdentifierStore_shouldEnableResetUIFromBag___block_invoke;
  v7[3] = &__block_descriptor_40_e29___AMSPromise_16__0__NSArray_8l;
  v7[4] = a1;
  v5 = [v4 thenWithBlock:v7];

  return v5;
}

id __56__AMSMetricsIdentifierStore_shouldEnableResetUIFromBag___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "_isResetEnabledForList:", a2)}];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

+ (id)performUserResetForStoresInBag:(id)a3 forAccount:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[AMSLogConfig sharedMetricsConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = AMSLogKey();
    v12 = AMSHashIfNeeded(v7);
    *buf = 138543874;
    v23 = v10;
    v24 = 2114;
    v25 = v11;
    v26 = 2114;
    v27 = v12;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing user reset for account %{public}@", buf, 0x20u);
  }

  v13 = [a1 _promiseOfListOfNamespacesFromBag:v6];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __71__AMSMetricsIdentifierStore_performUserResetForStoresInBag_forAccount___block_invoke;
  v18[3] = &unk_1E73B9E90;
  v19 = v7;
  v20 = v6;
  v21 = a1;
  v14 = v6;
  v15 = v7;
  v16 = [v13 thenWithBlock:v18];

  return v16;
}

AMSMutablePromise *__71__AMSMetricsIdentifierStore_performUserResetForStoresInBag_forAccount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v5 = [*(a1 + 32) ams_accountID];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__AMSMetricsIdentifierStore_performUserResetForStoresInBag_forAccount___block_invoke_2;
  v9[3] = &unk_1E73B9E68;
  v6 = *(a1 + 40);
  v11 = *(a1 + 48);
  v7 = v4;
  v10 = v7;
  [_TtC18AppleMediaServices26AMSMetricsConsumerIDRotate rotateWithAccountID:v5 bag:v6 namespaceList:v3 completionHandler:v9];

  return v7;
}

void __71__AMSMetricsIdentifierStore_performUserResetForStoresInBag_forAccount___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[AMSLogConfig sharedMetricsConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v12 = AMSLogableError(v6);
      v16 = 138543874;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] User initiated identifer rotation failed: %{public}@", &v16, 0x20u);
    }

    [*(a1 + 32) finishWithError:v6];
  }

  else
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v8 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      v16 = 138543618;
      v17 = v14;
      v18 = 2114;
      v19 = v15;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] User initiated identifer rotation completed", &v16, 0x16u);
    }

    [*(a1 + 32) finishWithResult:v5];
  }
}

+ (id)_promiseToRotateIdentifiersForAccount:(id)a3 bag:(id)a4 namespaceList:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  v12 = [a1 _promiseOfListOfStoresInNamespaceList:v8 forAccount:v10 bag:v9];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__AMSMetricsIdentifierStore__promiseToRotateIdentifiersForAccount_bag_namespaceList___block_invoke;
  v16[3] = &unk_1E73B9ED8;
  v17 = v11;
  v18 = a1;
  v13 = v11;
  v14 = [v12 thenWithBlock:v16];

  return v14;
}

id __85__AMSMetricsIdentifierStore__promiseToRotateIdentifiersForAccount_bag_namespaceList___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = 0x1E73B0000uLL;
  v5 = +[AMSLogConfig sharedMetricsConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    *buf = 138543874;
    v32 = v7;
    v33 = 2114;
    v34 = v8;
    v35 = 2114;
    v36 = v3;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing user reset for stores: %{public}@", buf, 0x20u);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
  v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v27;
    *&v10 = 138543874;
    v24 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [*(v4 + 3552) sharedMetricsConfig];
        if (!v15)
        {
          v15 = [*(v4 + 3552) sharedConfig];
        }

        v16 = [v15 OSLogObject];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v4;
          v18 = objc_opt_class();
          v19 = AMSLogKey();
          *buf = v24;
          v32 = v18;
          v4 = v17;
          v33 = 2114;
          v34 = v19;
          v35 = 2114;
          v36 = v14;
          _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing user reset for store: %{public}@", buf, 0x20u);
        }

        v20 = *(a1 + 32);
        v21 = [v14 resetForcingStoreSync];
        [v20 addObject:v21];
      }

      v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  v22 = [AMSPromise promiseWithAll:*(a1 + 32)];
  [v22 addSuccessBlock:&__block_literal_global_123_1];

  return v22;
}

+ (id)_promiseOfListOfNamespacesFromBag:(id)a3
{
  v3 = [a3 arrayForKey:@"resetable-metrics-identifiers"];
  v4 = [v3 valuePromise];

  return v4;
}

+ (id)_promiseOfListOfStoresInNamespaceList:(id)a3 forAccount:(id)a4 bag:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = v7;
  v31 = [v11 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v31)
  {
    v13 = *v33;
    v14 = 0x1E73B0000uLL;
    *&v12 = 138543874;
    v29 = v12;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        v17 = [*(v14 + 3552) sharedMetricsConfig];
        if (!v17)
        {
          v17 = [*(v14 + 3552) sharedConfig];
        }

        v18 = [v17 OSLogObject];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v13;
          v20 = v10;
          v21 = v11;
          v22 = v9;
          v23 = v8;
          v24 = objc_opt_class();
          AMSLogKey();
          v25 = v30 = v16;
          *buf = v29;
          v37 = v24;
          v8 = v23;
          v9 = v22;
          v11 = v21;
          v10 = v20;
          v13 = v19;
          v14 = 0x1E73B0000;
          v38 = 2114;
          v39 = v25;
          v40 = 2114;
          v41 = v11;
          _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing user reset for namespaces: %{public}@", buf, 0x20u);

          v16 = v30;
        }

        v26 = [AMSMetricsIdentifierStore identifierStoreWithAccount:v8 bagNamespace:v16 bag:v9];
        [v10 addObject:v26];
      }

      v31 = [v11 countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v31);
  }

  v27 = [AMSPromise promiseWithAll:v10];

  return v27;
}

@end