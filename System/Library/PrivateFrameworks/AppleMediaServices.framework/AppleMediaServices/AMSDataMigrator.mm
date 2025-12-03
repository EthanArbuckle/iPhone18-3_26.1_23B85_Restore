@interface AMSDataMigrator
+ (void)performMigrationWithOptions:(id)options;
@end

@implementation AMSDataMigrator

+ (void)performMigrationWithOptions:(id)options
{
  v39 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v4 = AMSSetLogKey(0);
  v5 = 0x1E695D000uLL;
  date = [MEMORY[0x1E695DF00] date];
  v7 = +[AMSDefaults lastMigratedBuildVersion];
  currentBuildVersion = [optionsCopy currentBuildVersion];
  v9 = [currentBuildVersion isEqualToString:v7];

  v10 = +[AMSLogConfig sharedDataMigrationConfig];
  currentBuildVersion4 = v10;
  if (v9)
  {
    if (!v10)
    {
      currentBuildVersion4 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [currentBuildVersion4 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      currentBuildVersion2 = [optionsCopy currentBuildVersion];
      *buf = 138544130;
      v30 = v13;
      v31 = 2114;
      v32 = v14;
      v33 = 2114;
      v34 = currentBuildVersion2;
      v35 = 2114;
      v36 = v7;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Data migration has already occured for this build version. currentBuiltVersion = %{public}@ | lastMigratedBuildVersion = %{public}@", buf, 0x2Au);

      v5 = 0x1E695D000;
    }
  }

  else
  {
    if (!v10)
    {
      currentBuildVersion4 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [currentBuildVersion4 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      scenario = [optionsCopy scenario];
      [optionsCopy previousBuildVersion];
      v21 = v20 = date;
      currentBuildVersion3 = [optionsCopy currentBuildVersion];
      *buf = 138544386;
      v30 = v17;
      v5 = 0x1E695D000uLL;
      v31 = 2114;
      v32 = v18;
      v33 = 2048;
      v34 = scenario;
      v35 = 2114;
      v36 = v21;
      v37 = 2114;
      v38 = currentBuildVersion3;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting AppleMediaServices data migration. scenario = %lu | previousVersion = %{public}@ | currentVersion = %{public}@", buf, 0x34u);

      date = v20;
    }

    [AMSBiometricsMigrator migrateBiometricStateWithOptions:optionsCopy];
    [AMSCommerceMigrator migrateCommerceAccountsWithOptions:optionsCopy];
    [AMSDeviceOfferMigrator migrateDeviceOffersWithOptions:optionsCopy];
    [AMSPrivacyAcknowledgementMigrator migratePrivacyAcknowledgementsWithOptions:optionsCopy];
    [AMSSandboxAccountMigrator migrateSandboxAccountsWithOptions:optionsCopy];
    [AMSServerDataCacheMigrator migrateDataCacheWithOptions:optionsCopy];
    [AMSStorageDataMigrator migrateStorageToDefaultsForNonAMSInternal:optionsCopy];
    [AMSDefaultsMigratedToStorageCleanUpMigrator cleanUpUserDefaultsStorageWithOptions:optionsCopy];
    [AMSMetricsTimingWindowStartTimeCleanUpMigrator cleanUpMetricsTimingWindowStartTimeUserDefaultWithOptions:optionsCopy];
    +[AMSEmptyUsernameMigrator migrateEmptyUsernames];
    [AMSHardwareOffersMigrator migrateHardwareOffersWithOptions:optionsCopy];
    [AMSDefaults setLogHARData:0];
    currentBuildVersion4 = [optionsCopy currentBuildVersion];
    [AMSDefaults setLastMigratedBuildVersion:currentBuildVersion4];
  }

  CFPreferencesSetAppValue(@"AMSNewFeaturesEnabled", 0, @"com.apple.AppleMediaServices");
  CFPreferencesAppSynchronize(@"com.apple.AppleMediaServices");
  v23 = +[AMSLogConfig sharedDataMigrationConfig];
  if (!v23)
  {
    v23 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject3 = [v23 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v25 = objc_opt_class();
    v26 = AMSLogKey();
    date2 = [*(v5 + 3840) date];
    [date2 timeIntervalSinceDate:date];
    *buf = 138543874;
    v30 = v25;
    v31 = 2114;
    v32 = v26;
    v33 = 2048;
    v34 = v28;
    _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Finished AppleMediaServices data migration. executionTime = %f", buf, 0x20u);
  }
}

@end