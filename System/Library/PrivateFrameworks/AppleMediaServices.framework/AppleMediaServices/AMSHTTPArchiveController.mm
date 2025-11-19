@interface AMSHTTPArchiveController
+ (BOOL)_disabled;
+ (BOOL)_shouldAddRequest:(id)a3;
+ (BOOL)isRemoveDisabled;
+ (id)_harURLFilters;
+ (id)harURLFilters;
+ (void)_updateHarFileFilters;
+ (void)addHTTPArchive:(id)a3;
+ (void)initialize;
+ (void)setRemoveDisabled:(BOOL)a3;
@end

@implementation AMSHTTPArchiveController

+ (BOOL)_disabled
{
  if (qword_1ED6E2A78 != -1)
  {
    dispatch_once(&qword_1ED6E2A78, &__block_literal_global_70);
  }

  return _MergedGlobals_117;
}

+ (void)initialize
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, _AMSHTTPArchiveControllerUpdateHarURLFilters, @"AMSUpdateHARFiltersNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

+ (id)harURLFilters
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__AMSHTTPArchiveController_harURLFilters__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED6E2A70 != -1)
  {
    dispatch_once(&qword_1ED6E2A70, block);
  }

  v2 = qword_1ED6E2A68;

  return v2;
}

+ (BOOL)isRemoveDisabled
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = AMSHTTPArchiveControllerRemoveDisabled;
  objc_sync_exit(v2);

  return v3;
}

+ (void)setRemoveDisabled:(BOOL)a3
{
  obj = a1;
  objc_sync_enter(obj);
  AMSHTTPArchiveControllerRemoveDisabled = a3;
  objc_sync_exit(obj);
}

+ (void)addHTTPArchive:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AMSSetLogKeyIfNeeded();
  if (![a1 _disabled])
  {
    v10 = [a1 harURLFilters];
    if (v10 && (v11 = v10, [a1 harURLFilters], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, v11, v13))
    {
      if (![a1 _shouldAddRequest:v4])
      {
        goto LABEL_25;
      }

      v14 = +[AMSLogConfig sharedConfig];
      if (!v14)
      {
        v14 = +[AMSLogConfig sharedConfig];
      }

      v15 = [v14 OSLogObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v17 = [v4 urlString];
        v18 = AMSHashIfNeeded(v17);
        v19 = [a1 harURLFilters];
        v29 = 138544130;
        v30 = v16;
        v31 = 2114;
        v32 = v5;
        v33 = 2114;
        v34 = v18;
        v35 = 2114;
        v36 = v19;
        _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Write HTTP Archive to disk for URL string: %{public}@ with HAR URL Filters: %{public}@", &v29, 0x2Au);
      }
    }

    else
    {
      if (!+[AMSDefaults streamHARToDisk])
      {
        v20 = +[AMSProcessInfo currentProcess];
        v21 = [v20 executableName];
        v22 = [v21 isEqualToString:@"amstoold"];

        if (v22)
        {
          v6 = +[AMSLogConfig sharedConfig];
          if (!v6)
          {
            v6 = +[AMSLogConfig sharedConfig];
          }

          v7 = [v6 OSLogObject];
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            v23 = objc_opt_class();
            v24 = [v4 urlString];
            v25 = AMSHashIfNeeded(v24);
            v29 = 138543874;
            v30 = v23;
            v31 = 2114;
            v32 = v5;
            v33 = 2114;
            v34 = v25;
            _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Skipping HTTP Archive, we should not hit this path. URL: %{public}@", &v29, 0x20u);
          }

          goto LABEL_6;
        }
      }

      v14 = +[AMSLogConfig sharedConfig];
      if (!v14)
      {
        v14 = +[AMSLogConfig sharedConfig];
      }

      v15 = [v14 OSLogObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        v27 = [v4 urlString];
        v28 = AMSHashIfNeeded(v27);
        v29 = 138543874;
        v30 = v26;
        v31 = 2114;
        v32 = v5;
        v33 = 2114;
        v34 = v28;
        _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Write HTTP Archive to disk for URL string: %{public}@", &v29, 0x20u);
      }
    }

    [v4 writeToDiskWithError:0 compressed:0];
    goto LABEL_25;
  }

  v6 = +[AMSLogConfig sharedConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    v29 = 138543618;
    v30 = v8;
    v31 = 2114;
    v32 = v9;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Error adding HAR, disabled", &v29, 0x16u);
  }

LABEL_6:

LABEL_25:
}

void __37__AMSHTTPArchiveController__disabled__block_invoke()
{
  if (+[AMSUnitTests isRunningUnitTests](AMSUnitTests, "isRunningUnitTests") || !os_variant_has_internal_content() || +[AMSDefaults disableHARLogging](AMSDefaults, "disableHARLogging") || ([MEMORY[0x1E696AC08] defaultManager], v0 = objc_claimAutoreleasedReturnValue(), +[AMSHTTPArchive directory](AMSHTTPArchive, "directory"), v1 = objc_claimAutoreleasedReturnValue(), v2 = objc_msgSend(v0, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v1, 1, 0, 0), v1, v0, (v2 & 1) == 0))
  {
    _MergedGlobals_117 = 1;
  }
}

+ (id)_harURLFilters
{
  if ([a1 _disabled])
  {
    v2 = 0;
    goto LABEL_12;
  }

  v3 = +[AMSDefaults harURLFilters];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_10;
  }

  v5 = [v3 objectForKeyedSubscript:@"*"];

  if (!v5)
  {
    v6 = +[AMSProcessInfo currentProcess];
    v7 = [v6 bundleIdentifier];

    if (v7)
    {
      v8 = [v4 objectForKeyedSubscript:v7];

      if (v8)
      {
        v2 = [v4 objectForKeyedSubscript:v7];

        goto LABEL_11;
      }
    }

LABEL_10:
    v2 = 0;
    goto LABEL_11;
  }

  v2 = [v4 objectForKeyedSubscript:@"*"];
LABEL_11:

LABEL_12:

  return v2;
}

+ (BOOL)_shouldAddRequest:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 urlString];
  v5 = [v4 length];

  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = qword_1ED6E2A68;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [v3 urlString];
          LOBYTE(v10) = [v11 containsString:v10];

          if (v10)
          {
            LOBYTE(v7) = 1;
            goto LABEL_12;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

+ (void)_updateHarFileFilters
{
  obj = a1;
  objc_sync_enter(obj);
  v2 = [obj _harURLFilters];
  v3 = qword_1ED6E2A68;
  qword_1ED6E2A68 = v2;

  objc_sync_exit(obj);
}

@end