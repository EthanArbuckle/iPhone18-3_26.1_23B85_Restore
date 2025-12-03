@interface AMSStorageDataMigrator
+ (void)_migrateDeviceOfferEligibilityWithDatabase:(id)database;
+ (void)_migrateSharedStoreReviewWithDatabase:(id)database;
+ (void)migrateStorageToDefaultsForNonAMSInternal:(id)internal;
@end

@implementation AMSStorageDataMigrator

+ (void)migrateStorageToDefaultsForNonAMSInternal:(id)internal
{
  v16 = *MEMORY[0x1E69E9840];
  if (+[AMSDefaults migratedStorageToDefaultsForNonAMSInternal])
  {
    v4 = +[AMSLogConfig sharedDataMigrationConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v4 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] %{public}@ skipping. We already migrated.", buf, 0x20u);
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

+ (void)_migrateDeviceOfferEligibilityWithDatabase:(id)database
{
  databaseCopy = database;
  v4 = +[AMSStorage deviceOfferEligibility];
  allKeys = [v4 allKeys];
  v6 = [allKeys count];

  if (v6)
  {
    [AMSDefaults setDeviceOfferEligibility:v4];
  }

  v14 = 0;
  v7 = [databaseCopy valueForKey:@"deviceGroups" error:&v14];
  v8 = v14;
  if (!v8 && [v7 count])
  {
    [AMSDefaults setDeviceGroups:v7];
  }

  v13 = v8;
  v9 = [databaseCopy valueForKey:@"deviceRegistrationBlacklist" error:&v13];
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

+ (void)_migrateSharedStoreReviewWithDatabase:(id)database
{
  v37 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  domain = [databaseCopy domain];
  v29 = 0;
  v6 = [databaseCopy allKeysForDomain:domain withError:&v29];
  v7 = v29;

  if (v7)
  {
    v8 = +[AMSLogConfig sharedDataMigrationConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] %{public}@ skipping. No keys to migrate.", buf, 0x20u);
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
          v18 = [databaseCopy valueForKey:v17 error:&v24];
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
            lastObject = [v21 lastObject];

            [AMSDefaults setSharedStoreReviewMetrics:v18 forProcess:lastObject];
            [databaseCopy deleteForKey:v17 error:0];
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