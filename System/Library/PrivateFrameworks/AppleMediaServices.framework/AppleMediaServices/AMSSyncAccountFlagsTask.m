@interface AMSSyncAccountFlagsTask
- (AMSSyncAccountFlagsTask)initWithAccount:(id)a3 bag:(id)a4;
- (id)performSync;
@end

@implementation AMSSyncAccountFlagsTask

- (AMSSyncAccountFlagsTask)initWithAccount:(id)a3 bag:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSSyncAccountFlagsTask;
  v9 = [(AMSTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    objc_storeStrong(&v10->_bag, a4);
  }

  return v10;
}

- (id)performSync
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__AMSSyncAccountFlagsTask_performSync__block_invoke;
  v5[3] = &unk_1E73BC6D0;
  v5[4] = self;
  v4.receiver = self;
  v4.super_class = AMSSyncAccountFlagsTask;
  v2 = [(AMSTask *)&v4 performTaskWithBlock:v5];

  return v2;
}

AMSSyncAccountFlagsResult *__38__AMSSyncAccountFlagsTask_performSync__block_invoke(uint64_t a1, void *a2)
{
  v80 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) account];
  v5 = [v4 ams_isLocalAccount];

  if (v5)
  {
    AMSError(2, @"Invalid Parameter", @"We can't sync flags from the local account.", 0);
    *a2 = v6 = 0;
    goto LABEL_16;
  }

  v7 = +[AMSLogConfig sharedAccountsConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    [*(a1 + 32) account];
    v11 = v68 = a2;
    v12 = AMSHashIfNeeded(v11);
    v13 = [*(a1 + 32) account];
    v14 = [v13 ams_accountFlags];
    v15 = AMSHashIfNeeded(v14);
    *buf = 138544130;
    v73 = v9;
    v74 = 2114;
    v75 = v10;
    v76 = 2114;
    v77 = v12;
    v78 = 2114;
    v79 = v15;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Syncing account flags. account = %{public}@ | flags = %{public}@", buf, 0x2Au);

    a2 = v68;
  }

  v16 = [AMSURLRequestEncoder alloc];
  v17 = [*(a1 + 32) bag];
  v18 = [(AMSURLRequestEncoder *)v16 initWithBag:v17];

  v19 = [*(a1 + 32) account];
  [(AMSURLRequestEncoder *)v18 setAccount:v19];

  [(AMSURLRequestEncoder *)v18 setRequestEncoding:3];
  v20 = AMSLogKey();
  [(AMSURLRequestEncoder *)v18 setLogUUID:v20];

  v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22 = [*(a1 + 32) account];
  v23 = [v22 ams_accountFlags];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = MEMORY[0x1E695E0F8];
  }

  [v21 setObject:v25 forKeyedSubscript:@"accountFlags"];

  v26 = +[AMSDevice deviceGUID];
  [v21 ams_setNullableObject:v26 forKey:@"guid"];

  v27 = [*(a1 + 32) bag];
  v28 = [v27 URLForKey:@"account-flags"];

  v29 = [(AMSURLRequestEncoder *)v18 requestWithMethod:2 bagURL:v28 parameters:0];
  v71 = 0;
  v30 = [v29 resultWithError:&v71];
  v31 = v71;
  if (v31)
  {
    v32 = v31;
    v33 = 0;
  }

  else
  {
    v67 = v28;
    v34 = +[AMSURLSession defaultSession];
    v35 = v30;
    v36 = v34;
    v69 = v35;
    v37 = [v34 dataTaskPromiseWithRequest:?];
    v70 = 0;
    v33 = [v37 resultWithError:&v70];
    v32 = v70;

    if (!v32)
    {
      v66 = v33;
      v40 = [v33 object];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = v40;
      }

      else
      {
        v32 = 0;
      }

      v30 = v69;

      v41 = [v32 ams_accountFlags];
      v42 = +[AMSLogConfig sharedAccountsConfig];
      v43 = v42;
      if (v41)
      {
        if (!v42)
        {
          v43 = +[AMSLogConfig sharedConfig];
        }

        v44 = [v43 OSLogObject];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = objc_opt_class();
          v46 = AMSLogKey();
          *buf = 138543618;
          v73 = v45;
          v74 = 2114;
          v75 = v46;
          _os_log_impl(&dword_192869000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully synced the account flags.", buf, 0x16u);
        }

        v6 = [[AMSSyncAccountFlagsResult alloc] initWithAccountFlags:v41];
        v47 = [*(a1 + 32) account];
        v48 = [v47 ams_accountFlags];
        v49 = v41;
        v50 = v48;
        v64 = v49;
        v51 = [v49 isEqualToDictionary:v48];

        v33 = v66;
        v28 = v67;
        if ((v51 & 1) == 0)
        {
          v52 = +[AMSLogConfig sharedAccountsConfig];
          if (!v52)
          {
            v52 = +[AMSLogConfig sharedConfig];
          }

          v53 = [v52 OSLogObject];
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            log = v53;
            v54 = objc_opt_class();
            v55 = AMSLogKey();
            *buf = 138543618;
            v73 = v54;
            v53 = log;
            v74 = 2114;
            v75 = v55;
            _os_log_impl(&dword_192869000, log, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The server provided updated account flags.", buf, 0x16u);

            v33 = v66;
          }

          v56 = [*(a1 + 32) account];
          [v56 ams_setAccountFlags:v64];

          v57 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
          v58 = [*(a1 + 32) account];
          v59 = [v57 ams_saveAccount:v58 verifyCredentials:0];
        }

        v30 = v69;
      }

      else
      {
        if (!v42)
        {
          v43 = +[AMSLogConfig sharedConfig];
        }

        v60 = [v43 OSLogObject];
        v33 = v66;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          v65 = objc_opt_class();
          v61 = AMSLogKey();
          v62 = [v66 object];
          *buf = 138543874;
          v73 = v65;
          v74 = 2114;
          v75 = v61;
          v76 = 2114;
          v77 = v62;
          _os_log_impl(&dword_192869000, v60, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] The response was invalid. response = %{public}@", buf, 0x20u);

          v30 = v69;
        }

        AMSError(301, @"Invalid Response", @"The request was successful, but the server's response was invalid.", 0);
        *a2 = v6 = 0;
        v28 = v67;
      }

      goto LABEL_15;
    }

    v30 = v69;
  }

  v38 = v32;
  v6 = 0;
  *a2 = v32;
LABEL_15:

LABEL_16:

  return v6;
}

@end