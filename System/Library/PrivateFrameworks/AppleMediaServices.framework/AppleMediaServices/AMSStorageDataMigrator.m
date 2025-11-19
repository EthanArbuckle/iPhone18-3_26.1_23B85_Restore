@interface AMSStorageDataMigrator
+ (void)_migrateDeviceOfferEligibilityWithDatabase:(id)a3;
+ (void)_migrateSharedStoreReviewWithDatabase:(id)a3;
+ (void)migrateStorageToDefaultsForNonAMSInternal:(id)a3;
@end

@implementation AMSStorageDataMigrator

+ (void)migrateStorageToDefaultsForNonAMSInternal:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (+[AMSDefaults migratedStorageToDefaultsForNonAMSInternal])
  {
    v4 = +[AMSLogConfig sharedDataMigrationConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = AMSLogKey();
      v8 = NSStringFromSelector(a2);
      *buf = 138543874;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] %{public}@ skipping. We already migrated.", buf, 0x20u);
    }
  }

  else
  {
    v9 = [[AMSStorageDatabase alloc] initWithDomain:@"com.apple.AppleMediaServices"];
    [objc_opt_class() _migrateDeviceOfferEligibilityWithDatabase:v9];
    [objc_opt_class() _migrateSharedStoreReviewWithDatabase:v9];
    [AMSDefaults setMigratedStorageToDefaultsForNonAMSInternal:1];
  }
}

+ (void)_migrateDeviceOfferEligibilityWithDatabase:(id)a3
{
  v3 = a3;
  v4 = +[AMSStorage deviceOfferEligibility];
  v5 = [v4 allKeys];
  v6 = [v5 count];

  if (v6)
  {
    [AMSDefaults setDeviceOfferEligibility:v4];
  }

  v14 = 0;
  v7 = [v3 valueForKey:@"deviceGroups" error:&v14];
  v8 = v14;
  if (!v8 && [v7 count])
  {
    [AMSDefaults setDeviceGroups:v7];
  }

  v13 = v8;
  v9 = [v3 valueForKey:@"deviceRegistrationBlacklist" error:&v13];
  v10 = v13;

  if (!v10 && v9)
  {
    v11 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    [AMSDefaults setDeviceRegistrationDenyList:v12];
  }
}

+ (void)_migrateSharedStoreReviewWithDatabase:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 domain];
  v29 = 0;
  v6 = [v4 allKeysForDomain:v5 withError:&v29];
  v7 = v29;

  if (v7)
  {
    v8 = +[AMSLogConfig sharedDataMigrationConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v12 = NSStringFromSelector(a2);
      *buf = 138543874;
      v32 = v10;
      v33 = 2114;
      v34 = v11;
      v35 = 2114;
      v36 = v12;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] %{public}@ skipping. No keys to migrate.", buf, 0x20u);
    }
  }

  else
  {
    v8 = [v6 ams_filterUsingTest:&__block_literal_global_131];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v23 = v6;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v8);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          v24 = 0;
          v18 = [v4 valueForKey:v17 error:&v24];
          v19 = v24;
          if (v19)
          {
            v20 = 1;
          }

          else
          {
            v20 = v18 == 0;
          }

          if (!v20)
          {
            v21 = [v17 componentsSeparatedByString:@"-"];
            v22 = [v21 lastObject];

            [AMSDefaults setSharedStoreReviewMetrics:v18 forProcess:v22];
            [v4 deleteForKey:v17 error:0];
          }
        }

        v14 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v14);
      v7 = 0;
      v6 = v23;
    }
  }
}

@end