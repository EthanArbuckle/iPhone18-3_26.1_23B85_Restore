@interface AMSHardwareOffersMigrator
+ (void)migrateHardwareOffersWithOptions:(id)a3;
@end

@implementation AMSHardwareOffersMigrator

+ (void)migrateHardwareOffersWithOptions:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  if ([a3 scenario] == 4)
  {
    v4 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v5 = [v4 ams_activeiTunesAccount];

    v6 = [v5 ams_DSID];

    if (v6)
    {
      v23[0] = @"eventType";
      v23[1] = @"command";
      v24[0] = @"FollowUpCommand";
      v24[1] = @"migrate";
      v23[2] = @"data";
      v7 = [v5 ams_DSID];
      v22 = v7;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v24[2] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];

      v10 = objc_alloc_init(AMSEngagement);
      v11 = [(AMSEngagement *)v10 enqueueData:v9];
      v12 = +[AMSLogConfig sharedDataMigrationConfig];
      if (!v12)
      {
        v12 = +[AMSLogConfig sharedConfig];
      }

      v13 = [(AMSEngagement *)v12 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_opt_class();
        v15 = AMSLogKey();
        v16 = NSStringFromSelector(a2);
        *buf = 138543874;
        v26 = v14;
        v27 = 2114;
        v28 = v15;
        v29 = 2114;
        v30 = v16;
        _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] %{public}@ migration enqueued.", buf, 0x20u);
      }
    }

    else
    {
      v9 = +[AMSLogConfig sharedDataMigrationConfig];
      if (!v9)
      {
        v9 = +[AMSLogConfig sharedConfig];
      }

      v10 = [v9 OSLogObject];
      if (!os_log_type_enabled(&v10->super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      v19 = objc_opt_class();
      v12 = AMSLogKey();
      v20 = NSStringFromSelector(a2);
      *buf = 138543874;
      v26 = v19;
      v27 = 2114;
      v28 = v12;
      v29 = 2114;
      v30 = v20;
      _os_log_impl(&dword_192869000, &v10->super, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] %{public}@ skipping. No account DSID found during upgrade.", buf, 0x20u);
    }

LABEL_17:
    goto LABEL_18;
  }

  v5 = +[AMSLogConfig sharedDataMigrationConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v5 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v17 = objc_opt_class();
    v10 = AMSLogKey();
    v18 = NSStringFromSelector(a2);
    *buf = 138543874;
    v26 = v17;
    v27 = 2114;
    v28 = v10;
    v29 = 2114;
    v30 = v18;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] %{public}@ skipping. Not valid for erase installs.", buf, 0x20u);

    goto LABEL_17;
  }

LABEL_18:
}

@end