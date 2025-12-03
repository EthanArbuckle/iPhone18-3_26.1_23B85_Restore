@interface AMSBiometricsMigrator
+ (void)migrateBiometricStateWithOptions:(id)options;
@end

@implementation AMSBiometricsMigrator

+ (void)migrateBiometricStateWithOptions:(id)options
{
  v37 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v4 = AMSSetLogKeyIfNeeded();
  if ([optionsCopy scenario] != 4)
  {
    v6 = +[AMSLogConfig sharedDataMigrationConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = MEMORY[0x1E696AD98];
      v18 = v16;
      v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(optionsCopy, "scenario")}];
      v31 = 138543874;
      v32 = v16;
      v33 = 2114;
      v34 = v4;
      v35 = 2114;
      v36 = v19;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping biometric state migration for no upgrade scenario: %{public}@", &v31, 0x20u);
    }

    goto LABEL_25;
  }

  CFPreferencesAppSynchronize(@"com.apple.AppleMediaServices");
  CFPreferencesAppSynchronize(@"com.apple.itunesstored");
  v5 = CFPreferencesCopyAppValue(@"AMSDeviceBiometricsState", @"com.apple.AppleMediaServices");
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v20 = +[AMSLogConfig sharedDataMigrationConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v20 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138543618;
      v32 = objc_opt_class();
      v33 = 2114;
      v34 = v4;
      v22 = v32;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping biometric state migration for NULL AMS biometric state", &v31, 0x16u);
    }

    v6 = v5;
    goto LABEL_26;
  }

  v6 = CFPreferencesCopyAppValue(@"BiometricState", @"com.apple.itunesstored");

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    oSLogObject = +[AMSLogConfig sharedDataMigrationConfig];
    if (!oSLogObject)
    {
      oSLogObject = +[AMSLogConfig sharedConfig];
    }

    v15OSLogObject = [oSLogObject OSLogObject];
    if (os_log_type_enabled(v15OSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138543618;
      v32 = objc_opt_class();
      v33 = 2114;
      v34 = v4;
      v24 = v32;
      _os_log_impl(&dword_192869000, v15OSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping biometric state migration for NULL iTunes biometric state", &v31, 0x16u);
    }

LABEL_25:
    goto LABEL_26;
  }

  integerValue = [v6 integerValue];
  v8 = +[AMSLogConfig sharedDataMigrationConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject3 = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = MEMORY[0x1E696AD98];
    v12 = v10;
    v13 = [v11 numberWithInteger:integerValue];
    v31 = 138543874;
    v32 = v10;
    v33 = 2114;
    v34 = v4;
    v35 = 2114;
    v36 = v13;
    _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Migrating legacy StoreServices biometric state %{public}@ to AMS", &v31, 0x20u);
  }

  if (integerValue == 1)
  {
    v14 = 2;
  }

  else
  {
    if (integerValue != 2)
    {
      goto LABEL_26;
    }

    v14 = 1;
  }

  v25 = +[AMSLogConfig sharedDataMigrationConfig];
  if (!v25)
  {
    v25 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject4 = [v25 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v27 = objc_opt_class();
    v28 = MEMORY[0x1E696AD98];
    v29 = v27;
    v30 = [v28 numberWithInteger:v14];
    v31 = 138543874;
    v32 = v27;
    v33 = 2114;
    v34 = v4;
    v35 = 2114;
    v36 = v30;
    _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Writing new AMS biometric state: %{public}@", &v31, 0x20u);
  }

  CFPreferencesSetAppValue(@"AMSDeviceBiometricsState", [MEMORY[0x1E696AD98] numberWithInteger:v14], @"com.apple.AppleMediaServices");
  CFPreferencesAppSynchronize(@"com.apple.AppleMediaServices");
LABEL_26:
}

@end