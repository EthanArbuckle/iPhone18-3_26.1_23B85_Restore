@interface AMSDefaultsMigratedToStorageCleanUpMigrator
+ (void)cleanUpUserDefaultsStorageWithOptions:(id)options;
@end

@implementation AMSDefaultsMigratedToStorageCleanUpMigrator

+ (void)cleanUpUserDefaultsStorageWithOptions:(id)options
{
  v67 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if ([optionsCopy scenario] == 4)
  {
    if (+[AMSDefaults cleanedUpUserDefaultsDataAfterMigrationToStorage])
    {
      v5 = +[AMSLogConfig sharedDataMigrationConfig];
      if (!v5)
      {
        v5 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [(AMSStorageDatabase *)v5 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v9 = NSStringFromSelector(a2);
      *buf = 138543874;
      v59 = v7;
      v60 = 2114;
      v61 = v8;
      v62 = 2114;
      v63 = v9;
      v10 = "%{public}@: [%{public}@] %{public}@ skipping. This migration has already been performed.";
      goto LABEL_11;
    }

    if (!+[AMSStorageDatabase isFeatureSupported])
    {
      v5 = +[AMSLogConfig sharedDataMigrationConfig];
      if (!v5)
      {
        v5 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [(AMSStorageDatabase *)v5 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v47 = objc_opt_class();
      v8 = AMSLogKey();
      v9 = NSStringFromSelector(a2);
      *buf = 138543874;
      v59 = v47;
      v60 = 2114;
      v61 = v8;
      v62 = 2114;
      v63 = v9;
      v10 = "%{public}@: [%{public}@] %{public}@ skipping. AMSStorage database feature is not enabled.";
      v12 = oSLogObject;
      v13 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_12;
    }

    v5 = [[AMSStorageDatabase alloc] initWithDomain:@"com.apple.AppleMediaServices"];
    v14 = 0x1E73B0000uLL;
    v15 = +[AMSLogConfig sharedDataMigrationConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    v48 = optionsCopy;
    oSLogObject2 = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      *buf = 138543618;
      v59 = v17;
      v60 = 2114;
      v61 = v18;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Deleting any leftover values from user defaults.", buf, 0x16u);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v51 = [&unk_1F0779BE0 countByEnumeratingWithState:&v54 objects:v66 count:16];
    if (!v51)
    {
LABEL_55:
      [AMSDefaults setCleanedUpUserDefaultsDataAfterMigrationToStorage:1];
      optionsCopy = v48;
      goto LABEL_14;
    }

    v50 = *v55;
    v49 = v5;
LABEL_22:
    v19 = 0;
    while (1)
    {
      if (*v55 != v50)
      {
        objc_enumerationMutation(&unk_1F0779BE0);
      }

      v20 = *(*(&v54 + 1) + 8 * v19);
      v21 = objc_autoreleasePoolPush();
      v22 = CFPreferencesCopyAppValue(v20, @"com.apple.AppleMediaServices");
      if (!v22)
      {
        goto LABEL_53;
      }

      sharedDataMigrationConfig = [*(v14 + 3552) sharedDataMigrationConfig];
      if (!sharedDataMigrationConfig)
      {
        sharedDataMigrationConfig = [*(v14 + 3552) sharedConfig];
      }

      oSLogObject3 = [sharedDataMigrationConfig OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
      {
        v25 = objc_opt_class();
        v26 = AMSLogKey();
        *buf = 138543874;
        v59 = v25;
        v60 = 2114;
        v61 = v26;
        v62 = 2112;
        v63 = v20;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Found value for key %@.", buf, 0x20u);
      }

      v53 = 0;
      v27 = [(AMSStorageDatabase *)v5 valueForKey:v20 error:&v53];
      v28 = v53;
      v29 = v28;
      if (!v27)
      {
        break;
      }

LABEL_48:
      CFPreferencesSetAppValue(v20, 0, @"com.apple.AppleMediaServices");
      sharedDataMigrationConfig2 = [*(v14 + 3552) sharedDataMigrationConfig];
      if (!sharedDataMigrationConfig2)
      {
        sharedDataMigrationConfig2 = [*(v14 + 3552) sharedConfig];
      }

      oSLogObject4 = [sharedDataMigrationConfig2 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
      {
        v45 = objc_opt_class();
        v46 = AMSLogKey();
        *buf = 138543874;
        v59 = v45;
        v5 = v49;
        v60 = 2114;
        v61 = v46;
        v62 = 2112;
        v63 = v20;
        _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Deleted value for key %@ from user defaults.", buf, 0x20u);

        v14 = 0x1E73B0000;
      }

LABEL_53:
      objc_autoreleasePoolPop(v21);
      if (v51 == ++v19)
      {
        v51 = [&unk_1F0779BE0 countByEnumeratingWithState:&v54 objects:v66 count:16];
        if (!v51)
        {
          goto LABEL_55;
        }

        goto LABEL_22;
      }
    }

    v30 = [v28 ams_hasDomain:@"AMSErrorDomain" code:7];
    sharedDataMigrationConfig3 = [*(v14 + 3552) sharedDataMigrationConfig];
    v32 = sharedDataMigrationConfig3;
    if (v30)
    {
      if (!sharedDataMigrationConfig3)
      {
        v32 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject5 = [v32 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
      {
        v34 = objc_opt_class();
        v35 = AMSLogKey();
        *buf = 138543874;
        v59 = v34;
        v60 = 2114;
        v61 = v35;
        v62 = 2112;
        v63 = v20;
        _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Value for key %@ not present in the AMSStorage database, saving to AMSStorage database prior to deleting from defaults.", buf, 0x20u);

        v5 = v49;
      }

      v52 = v29;
      v36 = [(AMSStorageDatabase *)v5 setValue:v22 forKey:v20 error:&v52];
      v37 = v52;

      if (v36)
      {
        goto LABEL_47;
      }

      v32 = +[AMSLogConfig sharedDataMigrationConfig];
      if (!v32)
      {
        v32 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject6 = [v32 OSLogObject];
      if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
      {
        v39 = objc_opt_class();
        v40 = AMSLogKey();
        *buf = 138544130;
        v59 = v39;
        v5 = v49;
        v60 = 2114;
        v61 = v40;
        v62 = 2112;
        v63 = v20;
        v64 = 2114;
        v65 = v37;
        _os_log_impl(&dword_192869000, oSLogObject6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to set value for key %@ in AMSStorage database, error = %{public}@. Proceeding to delete value from defaults regardless.", buf, 0x2Au);
      }
    }

    else
    {
      if (!sharedDataMigrationConfig3)
      {
        v32 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject6 = [v32 OSLogObject];
      if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
      {
        v41 = objc_opt_class();
        v42 = AMSLogKey();
        *buf = 138544130;
        v59 = v41;
        v60 = 2114;
        v61 = v42;
        v62 = 2112;
        v63 = v20;
        v64 = 2114;
        v65 = v29;
        _os_log_impl(&dword_192869000, oSLogObject6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to verify presence of value for key %@ in AMSStorage database, error = %{public}@. Proceeding to delete value from defaults regardless.", buf, 0x2Au);

        v5 = v49;
      }

      v37 = v29;
    }

LABEL_47:
    v29 = v37;
    v14 = 0x1E73B0000uLL;
    goto LABEL_48;
  }

  v5 = +[AMSLogConfig sharedDataMigrationConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [(AMSStorageDatabase *)v5 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    goto LABEL_13;
  }

  v11 = objc_opt_class();
  v8 = AMSLogKey();
  v9 = NSStringFromSelector(a2);
  *buf = 138543874;
  v59 = v11;
  v60 = 2114;
  v61 = v8;
  v62 = 2114;
  v63 = v9;
  v10 = "%{public}@: [%{public}@] %{public}@ skipping. Not valid for erase installs.";
LABEL_11:
  v12 = oSLogObject;
  v13 = OS_LOG_TYPE_INFO;
LABEL_12:
  _os_log_impl(&dword_192869000, v12, v13, v10, buf, 0x20u);

LABEL_13:
LABEL_14:
}

@end