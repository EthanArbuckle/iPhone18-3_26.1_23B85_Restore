@interface AMSAutomaticDownloadKindsFetchTask
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)createBagForSubProfile;
- (AMSAutomaticDownloadKindsFetchTask)initWithAccount:(id)a3 bag:(id)a4;
- (id)perform;
@end

@implementation AMSAutomaticDownloadKindsFetchTask

- (AMSAutomaticDownloadKindsFetchTask)initWithAccount:(id)a3 bag:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSAutomaticDownloadKindsFetchTask;
  v9 = [(AMSTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    objc_storeStrong(&v10->_bag, a4);
  }

  return v10;
}

- (id)perform
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = [(AMSAutomaticDownloadKindsFetchTask *)self account];

  if (!v3)
  {
    v6 = @"An account is required.";
    goto LABEL_5;
  }

  v4 = [(AMSAutomaticDownloadKindsFetchTask *)self account];
  v5 = [v4 ams_isLocalAccount];

  if (v5)
  {
    v6 = @"We cannot sync the local account's automatic download kinds.";
LABEL_5:
    v7 = AMSError(2, @"Invalid Parameter", v6, 0);
    v8 = [AMSPromise promiseWithError:v7];
    goto LABEL_21;
  }

  v9 = [(AMSAutomaticDownloadKindsFetchTask *)self account];
  v10 = [v9 objectForKeyedSubscript:0x1F071B4D8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v10;
  }

  else
  {
    v7 = 0;
  }

  v11 = [v7 count];
  v12 = +[AMSLogConfig sharedConfig];
  v13 = v12;
  if (v11)
  {
    if (!v12)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v16 = AMSLogKey();
      v17 = [(AMSAutomaticDownloadKindsFetchTask *)self account];
      v18 = AMSHashIfNeeded(v17);
      *buf = 138543874;
      v39 = v15;
      v40 = 2114;
      v41 = v16;
      v42 = 2114;
      v43 = v18;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Returning cached automatic download kinds. account = %{public}@", buf, 0x20u);
    }

    v19 = [AMSAutomaticDownloadKindsResult alloc];
    v20 = [(AMSAutomaticDownloadKindsFetchTask *)self account];
    v21 = [(AMSAutomaticDownloadKindsResult *)v19 initWithAccount:v20 andEnabledMediaKinds:v7];

    v8 = [AMSPromise promiseWithResult:v21];
  }

  else
  {
    if (!v12)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v22 = [v13 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v24 = AMSLogKey();
      v25 = [(AMSAutomaticDownloadKindsFetchTask *)self account];
      v26 = AMSHashIfNeeded(v25);
      *buf = 138543874;
      v39 = v23;
      v40 = 2114;
      v41 = v24;
      v42 = 2114;
      v43 = v26;
      _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Syncing automatic download kinds. account = %{public}@", buf, 0x20u);
    }

    v27 = [AMSURLRequestEncoder alloc];
    v28 = [(AMSAutomaticDownloadKindsFetchTask *)self bag];
    v21 = [(AMSURLRequestEncoder *)v27 initWithBag:v28];

    v29 = [(AMSAutomaticDownloadKindsFetchTask *)self account];
    [(AMSAutomaticDownloadKindsResult *)v21 setAccount:v29];

    [(AMSAutomaticDownloadKindsResult *)v21 setRequestEncoding:2];
    v30 = AMSLogKey();
    [(AMSAutomaticDownloadKindsResult *)v21 setLogUUID:v30];

    v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v32 = +[AMSDevice deviceGUID];
    [v31 ams_setNullableObject:v32 forKey:@"guid"];

    v33 = [(AMSBagProtocol *)self->_bag URLForKey:@"enabled-media-types-url"];
    v34 = [(AMSAutomaticDownloadKindsResult *)v21 requestWithMethod:2 bagURL:v33 parameters:v31];
    v35 = [v34 thenWithBlock:&__block_literal_global_14];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __45__AMSAutomaticDownloadKindsFetchTask_perform__block_invoke_2;
    v37[3] = &unk_1E73B3F48;
    v37[4] = self;
    v8 = [v35 thenWithBlock:v37];
  }

LABEL_21:

  return v8;
}

id __45__AMSAutomaticDownloadKindsFetchTask_perform__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[AMSURLSession defaultSession];
  v4 = [v3 dataTaskPromiseWithRequest:v2];

  return v4;
}

id __45__AMSAutomaticDownloadKindsFetchTask_perform__block_invoke_2(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [a2 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 objectForKeyedSubscript:@"enabled-media-kinds"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    v6 = MEMORY[0x1E695E0F0];
    goto LABEL_8;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [*(a1 + 32) account];
    [v7 setObject:v6 forKeyedSubscript:0x1F071B4D8];

    v5 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v8 = [*(a1 + 32) account];
    v9 = [v5 ams_saveAccount:v8 verifyCredentials:0];

    v10 = v6;
LABEL_8:

    goto LABEL_9;
  }

  v10 = 0;
  v6 = MEMORY[0x1E695E0F0];
LABEL_9:
  v11 = +[AMSLogConfig sharedConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    AMSLogKey();
    v14 = v23 = v4;
    v15 = [*(a1 + 32) account];
    v16 = AMSHashIfNeeded(v15);
    v17 = AMSHashIfNeeded(v10);
    *buf = 138544130;
    v25 = v13;
    v26 = 2114;
    v27 = v14;
    v28 = 2114;
    v29 = v16;
    v30 = 2114;
    v31 = v17;
    _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetched automatic download kinds. account = %{public}@ | enabled media kinds = %{public}@", buf, 0x2Au);

    v4 = v23;
  }

  v18 = [AMSAutomaticDownloadKindsResult alloc];
  v19 = [*(a1 + 32) account];
  v20 = [(AMSAutomaticDownloadKindsResult *)v18 initWithAccount:v19 andEnabledMediaKinds:v6];

  v21 = [AMSPromise promiseWithResult:v20];

  return v21;
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_1_2 != -1)
  {
    dispatch_once(&_MergedGlobals_1_2, &__block_literal_global_23);
  }

  v3 = qword_1ED6E1DC8;

  return v3;
}

void __51__AMSAutomaticDownloadKindsFetchTask_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E1DC8;
  qword_1ED6E1DC8 = @"AMSAutomaticDownloadKinds";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E1DD0 != -1)
  {
    dispatch_once(&qword_1ED6E1DD0, &__block_literal_global_28);
  }

  v3 = qword_1ED6E1DD8;

  return v3;
}

void __58__AMSAutomaticDownloadKindsFetchTask_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E1DD8;
  qword_1ED6E1DD8 = @"1";
}

+ (id)createBagForSubProfile
{
  v2 = [objc_opt_class() bagSubProfile];
  v3 = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:v2 profileVersion:v3];

  return v4;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

@end