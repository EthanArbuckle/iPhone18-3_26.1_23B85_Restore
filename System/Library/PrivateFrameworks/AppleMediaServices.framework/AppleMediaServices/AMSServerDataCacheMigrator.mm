@interface AMSServerDataCacheMigrator
+ (void)_primeCachedServerDataCacheUsingAccount:(id)a3;
+ (void)migrateDataCacheWithOptions:(id)a3;
@end

@implementation AMSServerDataCacheMigrator

+ (void)migrateDataCacheWithOptions:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if ([a3 scenario] == 4)
  {
    v5 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v6 = [v5 ams_activeiTunesAccount];
    v7 = [v6 ams_DSID];
    if (v7)
    {
      v8 = objc_alloc_init(AMSServerDataCacheService);
      v9 = [(AMSServerDataCacheService *)v8 setUpCacheForAccountDSID:v7];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __58__AMSServerDataCacheMigrator_migrateDataCacheWithOptions___block_invoke;
      v15[3] = &__block_descriptor_48_e20_v20__0B8__NSError_12l;
      v15[4] = a1;
      v15[5] = a2;
      [v9 addFinishBlock:v15];

      [a1 _primeCachedServerDataCacheUsingAccount:v6];
LABEL_14:

      goto LABEL_15;
    }

    v11 = +[AMSLogConfig sharedDataMigrationConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      *buf = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = v14;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] skipping. No active itunes account with dsid to use for update.", buf, 0x16u);
    }

LABEL_13:
    goto LABEL_14;
  }

  v5 = +[AMSLogConfig sharedDataMigrationConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v7 = AMSLogKey();
    v11 = NSStringFromSelector(a2);
    *buf = 138543874;
    v17 = v10;
    v18 = 2114;
    v19 = v7;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] %{public}@ skipping. Not valid for erase installs.", buf, 0x20u);
    goto LABEL_13;
  }

LABEL_15:
}

void __58__AMSServerDataCacheMigrator_migrateDataCacheWithOptions___block_invoke(uint64_t a1, int a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[AMSLogConfig sharedDataMigrationConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    v10 = NSStringFromSelector(*(a1 + 40));
    v11 = v10;
    *v17 = 138544386;
    v12 = @"false";
    *&v17[4] = v8;
    *&v17[12] = 2114;
    if (a2)
    {
      v12 = @"true";
    }

    *&v17[14] = v9;
    v18 = 2114;
    v19 = v10;
    v20 = 2112;
    v21 = v12;
    v22 = 2114;
    v23 = v5;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] %{public}@ data cache set up complete. Success: %@ Error: %{public}@", v17, 0x34u);
  }

  if (v5 && ([v5 code] == 107 || objc_msgSend(v5, "code") == 2))
  {
    v13 = +[AMSLogConfig sharedDataMigrationConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v16 = AMSLogKey();
      *v17 = 138543618;
      *&v17[4] = v15;
      *&v17[12] = 2114;
      *&v17[14] = v16;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Unrepairable error during cache set up", v17, 0x16u);
    }
  }

  else
  {
    [AMSDefaults setDidSetUpServerDataCache:1, *v17, *&v17[8]];
  }
}

+ (void)_primeCachedServerDataCacheUsingAccount:(id)a3
{
  v4 = a3;
  v5 = +[AMSProcessInfo currentProcess];
  v6 = [v5 isAMSAccountsDaemon];

  if ((v6 & 1) == 0)
  {
    v7 = +[AMSAccountCachedServerData sharedInstance];
    v8 = [v4 ams_accountID];
    v9 = [v7 stringForKey:0 accountID:v8 updateBlock:&__block_literal_global_126];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70__AMSServerDataCacheMigrator__primeCachedServerDataCacheUsingAccount___block_invoke_2;
    v10[3] = &__block_descriptor_40_e52_v24__0___AMSAccountCachedServerString__8__NSError_16l;
    v10[4] = a1;
    [v9 addFinishBlock:v10];
  }
}

void __70__AMSServerDataCacheMigrator__primeCachedServerDataCacheUsingAccount___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Priming account data cache due to migration.", &v10, 0x16u);
  }

  v7 = +[AMSAccountCachedServerData sharedInstance];
  v8 = [v2 token];

  v9 = [v7 cancelUpdatesForToken:v8];
}

@end