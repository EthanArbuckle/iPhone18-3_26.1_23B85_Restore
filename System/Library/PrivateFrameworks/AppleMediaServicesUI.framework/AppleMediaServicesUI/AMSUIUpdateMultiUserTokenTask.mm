@interface AMSUIUpdateMultiUserTokenTask
+ (BOOL)_errorIsRecoverable:(id)recoverable;
- (AMSUIUpdateMultiUserTokenTask)initWithAccount:(id)account homeIdentifier:(id)identifier viewController:(id)controller;
- (id)performTask;
@end

@implementation AMSUIUpdateMultiUserTokenTask

- (AMSUIUpdateMultiUserTokenTask)initWithAccount:(id)account homeIdentifier:(id)identifier viewController:(id)controller
{
  accountCopy = account;
  identifierCopy = identifier;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = AMSUIUpdateMultiUserTokenTask;
  v12 = [(AMSTask *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_account, account);
    objc_storeStrong(&v13->_homeIdentifier, identifier);
    objc_storeStrong(&v13->_viewController, controller);
  }

  return v13;
}

- (id)performTask
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__AMSUIUpdateMultiUserTokenTask_performTask__block_invoke;
  v4[3] = &unk_1E7F24B00;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithBlock:v4];

  return v2;
}

uint64_t __44__AMSUIUpdateMultiUserTokenTask_performTask__block_invoke(uint64_t a1, void *a2)
{
  v86 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E698C968] sharedAccountsMultiUserConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v9 = [*(a1 + 32) account];
    v10 = AMSHashIfNeeded();
    v11 = [*(a1 + 32) homeIdentifier];
    v12 = AMSHashIfNeeded();
    *buf = 138544130;
    v79 = v7;
    v80 = 2114;
    v81 = v8;
    v82 = 2114;
    v83 = v10;
    v84 = 2114;
    v85 = v12;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating a Multi-User token. account = %{public}@ | homeIdentifier = %{public}@", buf, 0x2Au);
  }

  v13 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v14 = [*(a1 + 32) account];
  v15 = [*(a1 + 32) homeIdentifier];
  v16 = [v13 ams_setiTunesAccount:v14 forHomeWithIdentifier:v15];
  v77 = 0;
  v17 = [v16 resultWithError:&v77];
  v18 = v77;

  if (v17)
  {
    v19 = [MEMORY[0x1E698C968] sharedAccountsMultiUserConfig];
    if (!v19)
    {
      v19 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v20 = [v19 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 32);
      v22 = objc_opt_class();
      v23 = AMSLogKey();
      *buf = 138543618;
      v79 = v22;
      v80 = 2114;
      v81 = v23;
      _os_log_impl(&dword_1BB036000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully updated the account's Multi-User token.", buf, 0x16u);
    }

    v24 = MEMORY[0x1E695E118];
  }

  else
  {
    v25 = *(a1 + 32);
    v26 = [objc_opt_class() _errorIsRecoverable:v18];
    v27 = [MEMORY[0x1E698C968] sharedAccountsMultiUserConfig];
    v28 = v27;
    if (v26)
    {
      if (!v27)
      {
        v28 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v29 = [v28 OSLogObject];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 32);
        v31 = objc_opt_class();
        v32 = AMSLogKey();
        *buf = 138543618;
        v79 = v31;
        v80 = 2114;
        v81 = v32;
        _os_log_impl(&dword_1BB036000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] We must authenticate the iCloud account in order to generate a new Multi-User token.", buf, 0x16u);
      }

      v33 = objc_alloc_init(MEMORY[0x1E698C7B0]);
      [v33 setCanMakeAccountActive:0];
      [v33 setDebugReason:@"Updating a Multi-User Token"];
      v34 = [AMSUIAuthKitUpdateTask alloc];
      v35 = [v13 ams_activeiCloudAccount];
      v36 = [*(a1 + 32) viewController];
      v37 = [(AMSUIAuthKitUpdateTask *)v34 initWithAccount:v35 presentingViewController:v36 options:v33];

      v38 = [(AMSAuthKitUpdateTask *)v37 performAuthKitUpdate];
      v76 = 0;
      v39 = [v38 resultWithError:&v76];
      v40 = v76;

      if (v39)
      {
        v73 = v37;
        v74 = v39;
        v41 = [*(a1 + 32) account];
        v42 = [*(a1 + 32) homeIdentifier];
        v43 = [v13 ams_setiTunesAccount:v41 forHomeWithIdentifier:v42];
        v75 = v40;
        v44 = [v43 resultWithError:&v75];
        v18 = v75;

        v45 = [MEMORY[0x1E698C968] sharedAccountsMultiUserConfig];
        v46 = v45;
        if (v44)
        {
          if (!v45)
          {
            v46 = [MEMORY[0x1E698C968] sharedConfig];
          }

          v47 = [v46 OSLogObject];
          v39 = v74;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v48 = *(a1 + 32);
            v49 = objc_opt_class();
            v50 = AMSLogKey();
            *buf = 138543618;
            v79 = v49;
            v80 = 2114;
            v81 = v50;
            _os_log_impl(&dword_1BB036000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully updated the account's Multi-User token.", buf, 0x16u);
          }

          v24 = MEMORY[0x1E695E118];
          v37 = v73;
        }

        else
        {
          if (!v45)
          {
            v46 = [MEMORY[0x1E698C968] sharedConfig];
          }

          v65 = [v46 OSLogObject];
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            v66 = *(a1 + 32);
            v67 = objc_opt_class();
            v68 = AMSLogKey();
            v69 = AMSHashIfNeeded();
            *buf = 138543874;
            v79 = v67;
            v80 = 2114;
            v81 = v68;
            v82 = 2114;
            v83 = v69;
            _os_log_impl(&dword_1BB036000, v65, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to update the account's Multi-User token. error = %{public}@", buf, 0x20u);
          }

          v37 = v73;
          v39 = v74;
          if (a2)
          {
            v70 = v18;
            v24 = 0;
            *a2 = v18;
          }

          else
          {
            v24 = 0;
          }
        }
      }

      else
      {
        v57 = [MEMORY[0x1E698C968] sharedAccountsMultiUserConfig];
        if (!v57)
        {
          v57 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v58 = [v57 OSLogObject];
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v59 = *(a1 + 32);
          v60 = objc_opt_class();
          v61 = AMSLogKey();
          AMSHashIfNeeded();
          v63 = v62 = v37;
          *buf = 138543874;
          v79 = v60;
          v80 = 2114;
          v81 = v61;
          v82 = 2114;
          v83 = v63;
          _os_log_impl(&dword_1BB036000, v58, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to authenticate the iCloud account. error = %{public}@", buf, 0x20u);

          v37 = v62;
          v39 = 0;
        }

        if (a2)
        {
          v64 = v40;
          v24 = 0;
          *a2 = v40;
        }

        else
        {
          v24 = 0;
        }

        v18 = v40;
      }
    }

    else
    {
      if (!v27)
      {
        v28 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v51 = [v28 OSLogObject];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = *(a1 + 32);
        v53 = objc_opt_class();
        v54 = AMSLogKey();
        v55 = AMSHashIfNeeded();
        *buf = 138543874;
        v79 = v53;
        v80 = 2114;
        v81 = v54;
        v82 = 2114;
        v83 = v55;
        _os_log_impl(&dword_1BB036000, v51, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to update the account's Multi-User token. error = %{public}@", buf, 0x20u);
      }

      if (a2)
      {
        v56 = v18;
        v24 = 0;
        *a2 = v18;
      }

      else
      {
        v24 = 0;
      }
    }
  }

  v71 = *MEMORY[0x1E69E9840];
  return v24;
}

+ (BOOL)_errorIsRecoverable:(id)recoverable
{
  recoverableCopy = recoverable;
  if ([recoverableCopy ams_hasDomain:*MEMORY[0x1E698C548] code:108] && (objc_msgSend(recoverableCopy, "ams_underlyingErrorWithDomain:code:", *MEMORY[0x1E698DB28], -7013), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = 1;
  }

  else
  {
    v5 = [recoverableCopy ams_hasDomain:@"AMSDCloudDataErrorDomain" code:9];
  }

  return v5;
}

@end