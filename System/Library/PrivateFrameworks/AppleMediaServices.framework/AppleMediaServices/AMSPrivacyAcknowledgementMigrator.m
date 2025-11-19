@interface AMSPrivacyAcknowledgementMigrator
+ (void)migratePrivacyAcknowledgementsWithOptions:(id)a3;
@end

@implementation AMSPrivacyAcknowledgementMigrator

+ (void)migratePrivacyAcknowledgementsWithOptions:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  if ([a3 scenario] == 4)
  {
    if (!+[AMSDefaults migratedPrivacyAcknowledgements])
    {
      v12 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
      v5 = [v12 ams_activeiCloudAccount];

      if (v5)
      {
        v6 = [MEMORY[0x1E695DF00] date];
        v13 = +[AMSLogConfig sharedDataMigrationConfig];
        if (!v13)
        {
          v13 = +[AMSLogConfig sharedConfig];
        }

        v14 = [v13 OSLogObject];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = objc_opt_class();
          v16 = AMSLogKey();
          v17 = NSStringFromSelector(a2);
          *buf = 138543874;
          v42 = v15;
          v43 = 2114;
          v44 = v16;
          v45 = 2114;
          v46 = v17;
          _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] %{public}@ started.", buf, 0x20u);
        }

        v8 = objc_alloc_init(MEMORY[0x1E695DF10]);
        [v8 setYear:2019];
        [v8 setMonth:9];
        [v8 setDay:19];
        v18 = [v5 creationDate];
        v19 = [v8 date];
        v20 = [v18 compare:v19];

        if (v20 == -1)
        {
          v30 = +[AMSLogConfig sharedDataMigrationConfig];
          if (!v30)
          {
            v30 = +[AMSLogConfig sharedConfig];
          }

          v31 = [(AMSAcknowledgePrivacyTask *)v30 OSLogObject];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v34 = objc_opt_class();
            v35 = AMSLogKey();
            v36 = NSStringFromSelector(a2);
            *buf = 138543874;
            v42 = v34;
            v43 = 2114;
            v44 = v35;
            v45 = 2114;
            v46 = v36;
            _os_log_impl(&dword_192869000, v31, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] %{public}@ skipping. iCloud account was signed in before Apple ID grey text was updated.", buf, 0x20u);
          }
        }

        else
        {
          v21 = getOBPrivacyAppleIDIdentifier();
          v22 = [AMSAcknowledgePrivacyTask acknowledgementNeededForPrivacyIdentifier:v21];

          if (!v22)
          {
            goto LABEL_34;
          }

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
            v27 = NSStringFromSelector(a2);
            *buf = 138543874;
            v42 = v25;
            v43 = 2114;
            v44 = v26;
            v45 = 2114;
            v46 = v27;
            _os_log_impl(&dword_192869000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] %{public}@ Recording GDPR acknowledgement for Apple ID based on historical data.", buf, 0x20u);
          }

          v28 = [AMSAcknowledgePrivacyTask alloc];
          v29 = getOBPrivacyAppleIDIdentifier();
          v30 = [(AMSAcknowledgePrivacyTask *)v28 initWithPrivacyIdentifier:v29];

          v31 = [(AMSAcknowledgePrivacyTask *)v30 acknowledgePrivacy];
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = __79__AMSPrivacyAcknowledgementMigrator_migratePrivacyAcknowledgementsWithOptions___block_invoke;
          v37[3] = &unk_1E73BABA0;
          v39 = a1;
          v40 = a2;
          v38 = v6;
          [v31 addFinishBlock:v37];
        }
      }

      else
      {
        v6 = +[AMSLogConfig sharedDataMigrationConfig];
        if (!v6)
        {
          v6 = +[AMSLogConfig sharedConfig];
        }

        v8 = [v6 OSLogObject];
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          goto LABEL_34;
        }

        v32 = objc_opt_class();
        v30 = AMSLogKey();
        v33 = NSStringFromSelector(a2);
        *buf = 138543874;
        v42 = v32;
        v43 = 2114;
        v44 = v30;
        v45 = 2114;
        v46 = v33;
        _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] %{public}@ skipping. No iCloud account is signed in during upgrade.", buf, 0x20u);
      }

      goto LABEL_34;
    }

    v5 = +[AMSLogConfig sharedDataMigrationConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v9 = NSStringFromSelector(a2);
      *buf = 138543874;
      v42 = v7;
      v43 = 2114;
      v44 = v8;
      v45 = 2114;
      v46 = v9;
      v10 = "%{public}@: [%{public}@] %{public}@ skipping. We already migrated.";
LABEL_11:
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_INFO, v10, buf, 0x20u);

LABEL_34:
    }
  }

  else
  {
    v5 = +[AMSLogConfig sharedDataMigrationConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v8 = AMSLogKey();
      v9 = NSStringFromSelector(a2);
      *buf = 138543874;
      v42 = v11;
      v43 = 2114;
      v44 = v8;
      v45 = 2114;
      v46 = v9;
      v10 = "%{public}@: [%{public}@] %{public}@ skipping. Not valid for erase installs.";
      goto LABEL_11;
    }
  }
}

void __79__AMSPrivacyAcknowledgementMigrator_migratePrivacyAcknowledgementsWithOptions___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = +[AMSLogConfig sharedDataMigrationConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v9 = NSStringFromSelector(*(a1 + 48));
      v10 = AMSLogableError(v4);
      v18 = 138544130;
      v19 = v7;
      v20 = 2114;
      v21 = v8;
      v22 = 2114;
      v23 = v9;
      v24 = 2114;
      v25 = v10;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] %{public}@ Failed to recording Apple ID GDPR acknowledgement. error = %{public}@", &v18, 0x2Au);
    }
  }

  [AMSDefaults setMigratedPrivacyAcknowledgements:1];
  v11 = +[AMSLogConfig sharedDataMigrationConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = AMSLogKey();
    v15 = NSStringFromSelector(*(a1 + 48));
    v16 = [MEMORY[0x1E695DF00] date];
    [v16 timeIntervalSinceDate:*(a1 + 32)];
    v18 = 138544130;
    v19 = v13;
    v20 = 2114;
    v21 = v14;
    v22 = 2114;
    v23 = v15;
    v24 = 2048;
    v25 = v17;
    _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] %{public}@ finished. executionTime = %f", &v18, 0x2Au);
  }
}

@end