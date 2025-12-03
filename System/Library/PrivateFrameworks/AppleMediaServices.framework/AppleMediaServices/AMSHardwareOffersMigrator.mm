@interface AMSHardwareOffersMigrator
+ (void)migrateHardwareOffersWithOptions:(id)options;
@end

@implementation AMSHardwareOffersMigrator

+ (void)migrateHardwareOffersWithOptions:(id)options
{
  v31 = *MEMORY[0x1E69E9840];
  if ([options scenario] == 4)
  {
    ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];

    ams_DSID = [ams_activeiTunesAccount ams_DSID];

    if (ams_DSID)
    {
      v23[0] = @"eventType";
      v23[1] = @"command";
      v24[0] = @"FollowUpCommand";
      v24[1] = @"migrate";
      v23[2] = @"data";
      ams_DSID2 = [ams_activeiTunesAccount ams_DSID];
      v22 = ams_DSID2;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v24[2] = v8;
      oSLogObject3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];

      oSLogObject2 = objc_alloc_init(AMSEngagement);
      v11 = [(AMSEngagement *)oSLogObject2 enqueueData:oSLogObject3];
      v12 = +[AMSLogConfig sharedDataMigrationConfig];
      if (!v12)
      {
        v12 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [(AMSEngagement *)v12 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] %{public}@ migration enqueued.", buf, 0x20u);
      }
    }

    else
    {
      oSLogObject3 = +[AMSLogConfig sharedDataMigrationConfig];
      if (!oSLogObject3)
      {
        oSLogObject3 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [oSLogObject3 OSLogObject];
      if (!os_log_type_enabled(&oSLogObject2->super, OS_LOG_TYPE_INFO))
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
      _os_log_impl(&dword_192869000, &oSLogObject2->super, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] %{public}@ skipping. No account DSID found during upgrade.", buf, 0x20u);
    }

LABEL_17:
    goto LABEL_18;
  }

  ams_activeiTunesAccount = +[AMSLogConfig sharedDataMigrationConfig];
  if (!ams_activeiTunesAccount)
  {
    ams_activeiTunesAccount = +[AMSLogConfig sharedConfig];
  }

  oSLogObject3 = [ams_activeiTunesAccount OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
  {
    v17 = objc_opt_class();
    oSLogObject2 = AMSLogKey();
    v18 = NSStringFromSelector(a2);
    *buf = 138543874;
    v26 = v17;
    v27 = 2114;
    v28 = oSLogObject2;
    v29 = 2114;
    v30 = v18;
    _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] %{public}@ skipping. Not valid for erase installs.", buf, 0x20u);

    goto LABEL_17;
  }

LABEL_18:
}

@end