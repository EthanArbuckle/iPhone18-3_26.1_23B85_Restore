@interface AMSSyncRestrictedRegionTask
+ (BOOL)hasCachedRestrictedRegionsValueFromAccount:(id)a3 cachedTimestamp:(double *)a4;
+ (BOOL)storefrontContainsRestrictedRegionsValueFromBag:(id)a3;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (double)checkRestrictedRegionDurationValueFromBag:(id)a3;
+ (double)durationOfSyncRestrictedRegionValueFromBag:(id)a3;
+ (id)createBagForSubProfile;
+ (id)createSyncAccountFlagsTaskForAccount:(id)a3 bag:(id)a4;
- (AMSSyncRestrictedRegionTask)initWithAccount:(id)a3 bag:(id)a4;
- (id)performSync;
- (void)cacheRestrictedRegionSyncTimestamp:(double)a3;
@end

@implementation AMSSyncRestrictedRegionTask

- (AMSSyncRestrictedRegionTask)initWithAccount:(id)a3 bag:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSSyncRestrictedRegionTask;
  v9 = [(AMSTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    objc_storeStrong(&v10->_bag, a4);
  }

  return v10;
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_3_4 != -1)
  {
    dispatch_once(&_MergedGlobals_3_4, &__block_literal_global_135);
  }

  v3 = qword_1ED6E2508;

  return v3;
}

void __44__AMSSyncRestrictedRegionTask_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E2508;
  qword_1ED6E2508 = @"Accounts";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E2510 != -1)
  {
    dispatch_once(&qword_1ED6E2510, &__block_literal_global_3_5);
  }

  v3 = qword_1ED6E2518;

  return v3;
}

void __51__AMSSyncRestrictedRegionTask_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E2518;
  qword_1ED6E2518 = @"1";
}

+ (id)createBagForSubProfile
{
  v2 = [objc_opt_class() bagSubProfile];
  v3 = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:v2 profileVersion:v3];

  return v4;
}

- (id)performSync
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__AMSSyncRestrictedRegionTask_performSync__block_invoke;
  v4[3] = &unk_1E73B3588;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

id __42__AMSSyncRestrictedRegionTask_performSync__block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  v2 = AMSSetLogKeyIfNeeded();
  v3 = [*(a1 + 32) bag];

  if (!v3)
  {
    v4 = +[AMSSyncRestrictedRegionTask createBagForSubProfile];
    [*(a1 + 32) setBag:v4];
  }

  v5 = objc_opt_class();
  v6 = [*(a1 + 32) bag];
  [v5 durationOfSyncRestrictedRegionValueFromBag:v6];
  v8 = v7;

  if (*&v8 != -1.0)
  {
    v51 = 0.0;
    v16 = objc_opt_class();
    v17 = [*(a1 + 32) account];
    LODWORD(v16) = [v16 hasCachedRestrictedRegionsValueFromAccount:v17 cachedTimestamp:&v51];

    if (v16)
    {
      v18 = [MEMORY[0x1E696AE30] processInfo];
      [v18 systemUptime];
      v20 = v19;

      v21 = +[AMSLogConfig sharedAccountsConfig];
      if (!v21)
      {
        v21 = +[AMSLogConfig sharedConfig];
      }

      v22 = [v21 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        *buf = 138544386;
        v53 = v23;
        v54 = 2114;
        v55 = v2;
        v56 = 2048;
        v57 = v51;
        v58 = 2048;
        v59 = *&v8;
        v60 = 2048;
        v61 = v20;
        _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Has cached value, last timestamp = %lu, sync duration = %lu, current timestamp = %lu", buf, 0x34u);
      }

      if (([objc_opt_class() didExceededSyncDuration:*&v8 lastTimestamp:v51 currentTimestamp:v20] & 1) == 0)
      {
        v24 = +[AMSLogConfig sharedAccountsConfig];
        if (!v24)
        {
          v24 = +[AMSLogConfig sharedConfig];
        }

        v25 = [v24 OSLogObject];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = objc_opt_class();
          v27 = [*(a1 + 32) account];
          v28 = AMSHashIfNeeded(v27);
          *buf = 138543874;
          v53 = v26;
          v54 = 2114;
          v55 = v2;
          v56 = 2114;
          v57 = v28;
          _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Not exceeded sync duration, cancelling sync task for the account = %{public}@", buf, 0x20u);
        }

        v29 = AMSError(6, @"AMSSyncRestrictedRegionTask Error", @"Not exceeded sync duration, cancelling sync task for the account", 0);
        v15 = [AMSPromise promiseWithError:v29];
LABEL_30:

        goto LABEL_31;
      }
    }

    else
    {
      v30 = +[AMSLogConfig sharedAccountsConfig];
      if (!v30)
      {
        v30 = +[AMSLogConfig sharedConfig];
      }

      v31 = [v30 OSLogObject];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = objc_opt_class();
        v33 = [*(a1 + 32) account];
        v34 = AMSHashIfNeeded(v33);
        *buf = 138543874;
        v53 = v32;
        v54 = 2114;
        v55 = v2;
        v56 = 2114;
        v57 = v34;
        _os_log_impl(&dword_192869000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No cached value was found for the account = %{public}@", buf, 0x20u);
      }
    }

    v35 = +[AMSLogConfig sharedAccountsConfig];
    if (!v35)
    {
      v35 = +[AMSLogConfig sharedConfig];
    }

    v36 = [v35 OSLogObject];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = objc_opt_class();
      v38 = [*(a1 + 32) account];
      v39 = AMSHashIfNeeded(v38);
      *buf = 138543874;
      v53 = v37;
      v54 = 2114;
      v55 = v2;
      v56 = 2114;
      v57 = v39;
      _os_log_impl(&dword_192869000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Cached value expired, starting sync task for the account = %{public}@", buf, 0x20u);
    }

    v40 = objc_opt_class();
    v41 = [*(a1 + 32) account];
    v42 = [*(a1 + 32) bag];
    v29 = [v40 createSyncAccountFlagsTaskForAccount:v41 bag:v42];

    objc_initWeak(buf, *(a1 + 32));
    v43 = [v29 performSync];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __42__AMSSyncRestrictedRegionTask_performSync__block_invoke_20;
    v47[3] = &unk_1E73BC758;
    objc_copyWeak(v50, buf);
    v44 = v2;
    v50[1] = v8;
    v45 = *(a1 + 32);
    v48 = v44;
    v49 = v45;
    v15 = [v43 thenWithBlock:v47];

    objc_destroyWeak(v50);
    objc_destroyWeak(buf);
    goto LABEL_30;
  }

  v9 = +[AMSLogConfig sharedAccountsConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = objc_opt_class();
    v12 = [*(a1 + 32) account];
    v13 = AMSHashIfNeeded(v12);
    *buf = 138543874;
    v53 = v11;
    v54 = 2114;
    v55 = v2;
    v56 = 2114;
    v57 = v13;
    _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Got an invalid sync duration value from the bag for the account = %{public}@", buf, 0x20u);
  }

  v14 = AMSError(200, @"AMSSyncRestrictedRegionTask Error", @"Got an invalid sync duration value from the bag", 0);
  v15 = [AMSPromise promiseWithError:v14];

LABEL_31:

  return v15;
}

id __42__AMSSyncRestrictedRegionTask_performSync__block_invoke_20(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained account];
  v6 = [v5 ams_accountFlagValueForAccountFlag:AMSAccountFlagIsInRestrictedRegion];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 BOOLValue];
  v9 = [MEMORY[0x1E696AE30] processInfo];
  [v9 systemUptime];
  v11 = v10;

  v12 = objc_loadWeakRetained((a1 + 48));
  [v12 cacheRestrictedRegionSyncTimestamp:v11];

  v13 = +[AMSLogConfig sharedAccountsConfig];
  if (!v13)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  v14 = [v13 OSLogObject];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_loadWeakRetained((a1 + 48));
    v16 = objc_opt_class();
    v17 = @"NO";
    v18 = *(a1 + 32);
    v19 = *(a1 + 56);
    if (v8)
    {
      v17 = @"YES";
    }

    *buf = 138544386;
    v34 = v16;
    v35 = 2114;
    v36 = v18;
    v37 = 2114;
    v38 = v17;
    v39 = 2048;
    v40 = v11;
    v41 = 2048;
    v42 = v19;
    _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updated isInRestrictedRegion value = %{public}@, current timestamp=%lu, sync duration = %lu", buf, 0x34u);
  }

  v20 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v21 = objc_loadWeakRetained((a1 + 48));
  v22 = [v21 account];
  v23 = [v20 ams_saveAccount:v22 verifyCredentials:0];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __42__AMSSyncRestrictedRegionTask_performSync__block_invoke_29;
  v29[3] = &unk_1E73B3118;
  objc_copyWeak(&v32, (a1 + 48));
  v24 = *(a1 + 32);
  v25 = *(a1 + 40);
  v30 = v24;
  v31 = v25;
  [v23 addErrorBlock:v29];
  v26 = [MEMORY[0x1E696AD98] numberWithBool:v8];
  v27 = [AMSPromise promiseWithResult:v26];

  objc_destroyWeak(&v32);

  return v27;
}

void __42__AMSSyncRestrictedRegionTask_performSync__block_invoke_29(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v7 = objc_opt_class();
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) account];
    v10 = AMSHashIfNeeded(v9);
    v11 = AMSHashIfNeeded(v3);
    v12 = 138544130;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    v16 = 2114;
    v17 = v10;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to save cached value for the account = %{public}@. error = %{public}@", &v12, 0x2Au);
  }
}

- (void)cacheRestrictedRegionSyncTimestamp:(double)a3
{
  v5 = [(AMSSyncRestrictedRegionTask *)self account];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 ams_setLastRestrictedRegionSyncTimestamp:v4];
}

+ (BOOL)hasCachedRestrictedRegionsValueFromAccount:(id)a3 cachedTimestamp:(double *)a4
{
  v5 = [a3 ams_lastRestrictedRegionSyncTimestamp];
  v6 = v5;
  if (a4 && v5)
  {
    v7 = objc_opt_respondsToSelector();
    v8 = 0;
    if (v7)
    {
      [v6 doubleValue];
    }

    *a4 = v8;
  }

  return v6 != 0;
}

+ (double)durationOfSyncRestrictedRegionValueFromBag:(id)a3
{
  v3 = a3;
  v4 = -1.0;
  if ([objc_opt_class() storefrontContainsRestrictedRegionsValueFromBag:v3])
  {
    [objc_opt_class() checkRestrictedRegionDurationValueFromBag:v3];
    if (v5 >= 1.0)
    {
      v4 = v5;
    }

    else
    {
      v4 = -1.0;
    }
  }

  return v4;
}

+ (BOOL)storefrontContainsRestrictedRegionsValueFromBag:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 BOOLForKey:@"storefrontContainsRestrictedRegion"];
  v18 = 0;
  v5 = [v4 valueWithError:&v18];
  v6 = v18;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v3 BOOLForKey:@"storefrontContainsRestrictedRegion"];
    v17 = v6;
    v8 = [v7 valueWithError:&v17];
    v9 = v17;

    v10 = [v8 BOOLValue];
    v6 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v6)
  {
    v11 = +[AMSLogConfig sharedConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      v15 = AMSHashIfNeeded(@"storefrontContainsRestrictedRegion");
      *buf = 138544130;
      v20 = v13;
      v21 = 2114;
      v22 = v14;
      v23 = 2114;
      v24 = v15;
      v25 = 2114;
      v26 = v6;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] No entry found for key: %{public}@, error: %{public}@", buf, 0x2Au);
    }

    v10 = 0;
  }

  return v10;
}

+ (double)checkRestrictedRegionDurationValueFromBag:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 doubleForKey:@"checkRestrictedRegionDuration"];
  v19 = 0;
  v5 = [v4 valueWithError:&v19];
  v6 = v19;
  v7 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    v8 = [v3 doubleForKey:@"checkRestrictedRegionDuration"];
    v18 = v6;
    v9 = [v8 valueWithError:&v18];
    v10 = v18;

    [v9 doubleValue];
    v7 = v11;

    v6 = v10;
  }

  if (v6)
  {
    v12 = +[AMSLogConfig sharedConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      v16 = AMSHashIfNeeded(@"checkRestrictedRegionDuration");
      *buf = 138544130;
      v21 = v14;
      v22 = 2114;
      v23 = v15;
      v24 = 2114;
      v25 = v16;
      v26 = 2114;
      v27 = v6;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] No entry found for key: %{public}@, error: %{public}@", buf, 0x2Au);
    }

    v7 = 0.0;
  }

  return v7;
}

+ (id)createSyncAccountFlagsTaskForAccount:(id)a3 bag:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[AMSSyncAccountFlagsTask alloc] initWithAccount:v6 bag:v5];

  [(AMSTask *)v7 setRunMode:1];

  return v7;
}

@end