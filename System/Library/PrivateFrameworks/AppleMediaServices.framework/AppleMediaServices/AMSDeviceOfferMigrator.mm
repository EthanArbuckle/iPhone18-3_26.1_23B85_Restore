@interface AMSDeviceOfferMigrator
+ (void)migrateDeviceOffersWithOptions:(id)options;
@end

@implementation AMSDeviceOfferMigrator

+ (void)migrateDeviceOffersWithOptions:(id)options
{
  v37 = *MEMORY[0x1E69E9840];
  if ([options scenario] == 4)
  {
    if (+[AMSDefaults migratedDeviceOffers])
    {
      ams_activeiTunesAccount = +[AMSLogConfig sharedDataMigrationConfig];
      if (!ams_activeiTunesAccount)
      {
        ams_activeiTunesAccount = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [ams_activeiTunesAccount OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        v8 = AMSLogKey();
        v9 = NSStringFromSelector(a2);
        *buf = 138543874;
        v32 = v7;
        v33 = 2114;
        v34 = v8;
        v35 = 2114;
        v36 = v9;
        v10 = "%{public}@: [%{public}@] %{public}@ skipping. We already migrated.";
LABEL_11:
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_INFO, v10, buf, 0x20u);
      }
    }

    else
    {
      ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
      ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];

      if (ams_activeiTunesAccount)
      {
        date = [MEMORY[0x1E695DF00] date];
        v14 = +[AMSLogConfig sharedDataMigrationConfig];
        if (!v14)
        {
          v14 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject2 = [v14 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
        {
          v16 = objc_opt_class();
          v17 = AMSLogKey();
          v18 = NSStringFromSelector(a2);
          *buf = 138543874;
          v32 = v16;
          v33 = 2114;
          v34 = v17;
          v35 = 2114;
          v36 = v18;
          _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] %{public}@ started.", buf, 0x20u);
        }

        v19 = +[AMSDeviceOfferRegistrationTask bagSubProfile];
        v20 = +[AMSDeviceOfferRegistrationTask bagSubProfileVersion];
        oSLogObject = [AMSBag bagForProfile:v19 profileVersion:v20];

        v6OSLogObject = [[AMSDeviceOfferRegistrationTask alloc] initWithAccount:ams_activeiTunesAccount bag:oSLogObject];
        [(AMSDeviceOfferRegistrationTask *)v6OSLogObject setLightweightCheckOnly:1];
        perform = [(AMSDeviceOfferRegistrationTask *)v6OSLogObject perform];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __57__AMSDeviceOfferMigrator_migrateDeviceOffersWithOptions___block_invoke;
        v27[3] = &unk_1E73B6E20;
        selfCopy = self;
        v30 = a2;
        v28 = date;
        v23 = date;
        [perform addFinishBlock:v27];
      }

      else
      {
        oSLogObject = +[AMSLogConfig sharedDataMigrationConfig];
        if (!oSLogObject)
        {
          oSLogObject = +[AMSLogConfig sharedConfig];
        }

        v6OSLogObject = [oSLogObject OSLogObject];
        if (os_log_type_enabled(&v6OSLogObject->super.super, OS_LOG_TYPE_INFO))
        {
          v24 = objc_opt_class();
          v25 = AMSLogKey();
          v26 = NSStringFromSelector(a2);
          *buf = 138543874;
          v32 = v24;
          v33 = 2114;
          v34 = v25;
          v35 = 2114;
          v36 = v26;
          _os_log_impl(&dword_192869000, &v6OSLogObject->super.super, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] %{public}@ skipping. No account is signed in during upgrade.", buf, 0x20u);
        }
      }
    }
  }

  else
  {
    ams_activeiTunesAccount = +[AMSLogConfig sharedDataMigrationConfig];
    if (!ams_activeiTunesAccount)
    {
      ams_activeiTunesAccount = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [ams_activeiTunesAccount OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v8 = AMSLogKey();
      v9 = NSStringFromSelector(a2);
      *buf = 138543874;
      v32 = v11;
      v33 = 2114;
      v34 = v8;
      v35 = 2114;
      v36 = v9;
      v10 = "%{public}@: [%{public}@] %{public}@ skipping. Not valid for erase installs.";
      goto LABEL_11;
    }
  }
}

void __57__AMSDeviceOfferMigrator_migrateDeviceOffersWithOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedDataMigrationConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = NSStringFromSelector(*(a1 + 48));
      v19 = 138544130;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      v23 = 2114;
      v24 = v11;
      v25 = 2114;
      v26 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] %{public}@ Error running the device offer registration. error = %{public}@.", &v19, 0x2Au);
    }
  }

  [AMSDefaults setMigratedDeviceOffers:1];
  v12 = +[AMSLogConfig sharedDataMigrationConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  v13 = [v12 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = AMSLogKey();
    v16 = NSStringFromSelector(*(a1 + 48));
    v17 = [MEMORY[0x1E695DF00] date];
    [v17 timeIntervalSinceDate:*(a1 + 32)];
    v19 = 138544130;
    v20 = v14;
    v21 = 2114;
    v22 = v15;
    v23 = 2114;
    v24 = v16;
    v25 = 2048;
    v26 = v18;
    _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] %{public}@ finished. executionTime = %f", &v19, 0x2Au);
  }
}

@end