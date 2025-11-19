@interface AMSDataMigrator
+ (void)performMigrationWithOptions:(id)a3;
@end

@implementation AMSDataMigrator

+ (void)performMigrationWithOptions:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = AMSSetLogKey(0);
  v5 = 0x1E695D000uLL;
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = +[AMSDefaults lastMigratedBuildVersion];
  v8 = [v3 currentBuildVersion];
  v9 = [v8 isEqualToString:v7];

  v10 = +[AMSLogConfig sharedDataMigrationConfig];
  v11 = v10;
  if (v9)
  {
    if (!v10)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      v15 = [v3 currentBuildVersion];
      *buf = 138544130;
      v30 = v13;
      v31 = 2114;
      v32 = v14;
      v33 = 2114;
      v34 = v15;
      v35 = 2114;
      v36 = v7;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Data migration has already occured for this build version. currentBuiltVersion = %{public}@ | lastMigratedBuildVersion = %{public}@", buf, 0x2Au);

      v5 = 0x1E695D000;
    }
  }

  else
  {
    if (!v10)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v11 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      v19 = [v3 scenario];
      [v3 previousBuildVersion];
      v21 = v20 = v6;
      v22 = [v3 currentBuildVersion];
      *buf = 138544386;
      v30 = v17;
      v5 = 0x1E695D000uLL;
      v31 = 2114;
      v32 = v18;
      v33 = 2048;
      v34 = v19;
      v35 = 2114;
      v36 = v21;
      v37 = 2114;
      v38 = v22;
      _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting AppleMediaServices data migration. scenario = %lu | previousVersion = %{public}@ | currentVersion = %{public}@", buf, 0x34u);

      v6 = v20;
    }

    [AMSBiometricsMigrator migrateBiometricStateWithOptions:v3];
    [AMSCommerceMigrator migrateCommerceAccountsWithOptions:v3];
    [AMSDeviceOfferMigrator migrateDeviceOffersWithOptions:v3];
    [AMSPrivacyAcknowledgementMigrator migratePrivacyAcknowledgementsWithOptions:v3];
    [AMSSandboxAccountMigrator migrateSandboxAccountsWithOptions:v3];
    [AMSServerDataCacheMigrator migrateDataCacheWithOptions:v3];
    [AMSStorageDataMigrator migrateStorageToDefaultsForNonAMSInternal:v3];
    [AMSDefaultsMigratedToStorageCleanUpMigrator cleanUpUserDefaultsStorageWithOptions:v3];
    [AMSMetricsTimingWindowStartTimeCleanUpMigrator cleanUpMetricsTimingWindowStartTimeUserDefaultWithOptions:v3];
    +[AMSEmptyUsernameMigrator migrateEmptyUsernames];
    [AMSHardwareOffersMigrator migrateHardwareOffersWithOptions:v3];
    [AMSDefaults setLogHARData:0];
    v11 = [v3 currentBuildVersion];
    [AMSDefaults setLastMigratedBuildVersion:v11];
  }

  CFPreferencesSetAppValue(@"AMSNewFeaturesEnabled", 0, @"com.apple.AppleMediaServices");
  CFPreferencesAppSynchronize(@"com.apple.AppleMediaServices");
  v23 = +[AMSLogConfig sharedDataMigrationConfig];
  if (!v23)
  {
    v23 = +[AMSLogConfig sharedConfig];
  }

  v24 = [v23 OSLogObject];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = objc_opt_class();
    v26 = AMSLogKey();
    v27 = [*(v5 + 3840) date];
    [v27 timeIntervalSinceDate:v6];
    *buf = 138543874;
    v30 = v25;
    v31 = 2114;
    v32 = v26;
    v33 = 2048;
    v34 = v28;
    _os_log_impl(&dword_192869000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Finished AppleMediaServices data migration. executionTime = %f", buf, 0x20u);
  }
}

@end