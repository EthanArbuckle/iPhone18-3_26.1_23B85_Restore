@interface AMSDeviceAccountPrivacyAcknowledgementTask
- (AMSDeviceAccountPrivacyAcknowledgementTask)initWithAccount:(id)account bag:(id)bag;
- (id)_presentEngagementRequest:(id)request;
- (id)_presentGDPREngagementRequestForAccount:(id)account bundleOwnerStatus:(BOOL)status;
- (id)_verifyGDPRStatusForAccount:(id)account;
- (id)performPrivacyAcknowledgement;
@end

@implementation AMSDeviceAccountPrivacyAcknowledgementTask

- (AMSDeviceAccountPrivacyAcknowledgementTask)initWithAccount:(id)account bag:(id)bag
{
  accountCopy = account;
  bagCopy = bag;
  v12.receiver = self;
  v12.super_class = AMSDeviceAccountPrivacyAcknowledgementTask;
  v9 = [(AMSTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, account);
    objc_storeStrong(&v10->_bag, bag);
  }

  return v10;
}

- (id)performPrivacyAcknowledgement
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__AMSDeviceAccountPrivacyAcknowledgementTask_performPrivacyAcknowledgement__block_invoke;
  v4[3] = &unk_1E73B39D0;
  v4[4] = self;
  v2 = [(AMSTask *)self performBinaryTaskWithBlock:v4];

  return v2;
}

uint64_t __75__AMSDeviceAccountPrivacyAcknowledgementTask_performPrivacyAcknowledgement__block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = [v3 account];
  v5 = [v3 _verifyGDPRStatusForAccount:v4];
  v6 = [v5 resultWithError:a2];

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
    v12 = 138543874;
    v13 = v9;
    v14 = 2114;
    v15 = v10;
    v16 = 1024;
    v17 = v6;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Task complete. Result: %d", &v12, 0x1Cu);
  }

  return v6;
}

- (id)_verifyGDPRStatusForAccount:(id)account
{
  v43 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v5 = objc_alloc_init(AMSBinaryPromise);
  ams_isBundleOwner = [accountCopy ams_isBundleOwner];
  v7 = ams_isBundleOwner;
  if (ams_isBundleOwner)
  {
    bOOLValue = [ams_isBundleOwner BOOLValue];
    if (bOOLValue)
    {
      +[AMSAcknowledgePrivacyTask _appleBundleOwnerPrivacyIdentifier];
    }

    else
    {
      +[AMSAcknowledgePrivacyTask _appleBundleHolderPrivacyIdentifier];
    }
    v15 = ;
    v16 = [AMSAcknowledgePrivacyTask acknowledgementNeededForPrivacyIdentifier:v15 account:accountCopy];
    v17 = +[AMSLogConfig sharedAccountsConfig];
    v18 = v17;
    if (v16)
    {
      if (!v17)
      {
        v18 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v18 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        AMSLogKey();
        v21 = v31 = self;
        hashedDescription = [accountCopy hashedDescription];
        *buf = 138544130;
        v36 = v20;
        v37 = 2114;
        v38 = v21;
        v39 = 2114;
        v40 = v15;
        v41 = 2114;
        v42 = hashedDescription;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Requesting gdpr presentation for id: %{public}@ for %{public}@", buf, 0x2Au);

        self = v31;
      }

      v23 = [(AMSDeviceAccountPrivacyAcknowledgementTask *)self _presentGDPREngagementRequestForAccount:accountCopy bundleOwnerStatus:bOOLValue];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __74__AMSDeviceAccountPrivacyAcknowledgementTask__verifyGDPRStatusForAccount___block_invoke;
      v32[3] = &unk_1E73B6C00;
      v32[4] = self;
      v33 = accountCopy;
      v34 = v15;
      v24 = [v23 continueWithBlock:v32];
      [(AMSBinaryPromise *)v5 finishWithPromise:v24];
      v25 = v5;
    }

    else
    {
      if (!v17)
      {
        v18 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v18 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_opt_class();
        v28 = AMSLogKey();
        *buf = 138543618;
        v36 = v27;
        v37 = 2114;
        v38 = v28;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping subscription bundle acknowledgement - already acknowledged", buf, 0x16u);
      }

      [(AMSBinaryPromise *)v5 finishWithSuccess];
      v29 = v5;
    }
  }

  else
  {
    v9 = +[AMSLogConfig sharedAccountsConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      *buf = 138543618;
      v36 = v11;
      v37 = 2114;
      v38 = v12;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to determine bundle owner status", buf, 0x16u);
    }

    v13 = AMSError(7, @"Missing bundle owner status", 0, 0);
    [(AMSBinaryPromise *)v5 finishWithError:v13];

    v14 = v5;
  }

  return v5;
}

id __74__AMSDeviceAccountPrivacyAcknowledgementTask__verifyGDPRStatusForAccount___block_invoke(uint64_t a1, char a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[AMSLogConfig sharedAccountsConfig];
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = AMSLogableError(v5);
      v28 = 138543874;
      v29 = v9;
      v30 = 2114;
      v31 = v10;
      v32 = 2114;
      v33 = v11;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Presentation error %{public}@", &v28, 0x20u);
    }

    v12 = [AMSBinaryPromise promiseWithError:v5];
    goto LABEL_7;
  }

  if (a2)
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v7 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = AMSLogKey();
      v28 = 138543618;
      v29 = v15;
      v30 = 2114;
      v31 = v16;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Presentation succeeded. Verifying that privacy criteria is met.", &v28, 0x16u);
    }

    [*(a1 + 40) reload];
    v17 = [AMSAcknowledgePrivacyTask acknowledgementNeededForPrivacyIdentifier:*(a1 + 48) account:*(a1 + 40)];
    v18 = +[AMSLogConfig sharedAccountsConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      v28 = 138543874;
      v29 = v20;
      v30 = 2114;
      v31 = v21;
      v32 = 1024;
      LODWORD(v33) = !v17;
      _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did acknowledge: %d", &v28, 0x1Cu);
    }

    if (!v17)
    {
      v12 = +[AMSBinaryPromise promiseWithSuccess];
LABEL_7:
      v13 = v12;
      goto LABEL_24;
    }

    v22 = AMSError(0, @"Presentation ended without privacy being acknowledgement", 0, 0);
    v13 = [AMSBinaryPromise promiseWithError:v22];
  }

  else
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v23 = [v7 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      v25 = AMSLogKey();
      v28 = 138543618;
      v29 = v24;
      v30 = 2114;
      v31 = v25;
      _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Presentation errored silently.", &v28, 0x16u);
    }

    v26 = AMSError(0, @"Presentation returned false with no error", 0, 0);
    v13 = [AMSBinaryPromise promiseWithError:v26];
  }

LABEL_24:

  return v13;
}

- (id)_presentGDPREngagementRequestForAccount:(id)account bundleOwnerStatus:(BOOL)status
{
  statusCopy = status;
  v20[2] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v7 = objc_opt_new();
  v8 = [(AMSDeviceAccountPrivacyAcknowledgementTask *)self bag];
  v9 = [v8 URLForKey:@"dynamic-ui-bundle-gdpr-url"];
  v18 = 0;
  v10 = [v9 valueWithError:&v18];
  v11 = v18;

  if (!v10 || v11)
  {
    if (!v11)
    {
      v11 = AMSError(7, @"Missing dynamic ui gdpr route", 0, 0);
    }

    [v7 finishWithError:v11];
    v15 = v7;
  }

  else
  {
    v11 = objc_alloc_init(AMSEngagementRequest);
    [(AMSEngagementRequest *)v11 setSuppressInteractiveModalDismissal:1];
    [(AMSEngagementRequest *)v11 setAccount:accountCopy];
    absoluteURL = [v10 absoluteURL];
    [(AMSEngagementRequest *)v11 setURL:absoluteURL];

    v19[0] = @"bundleOwner";
    v13 = [MEMORY[0x1E696AD98] numberWithBool:statusCopy];
    v19[1] = @"context";
    v20[0] = v13;
    v20[1] = @"auth-plugin";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    [(AMSEngagementRequest *)v11 setClientData:v14];

    v15 = [(AMSDeviceAccountPrivacyAcknowledgementTask *)self _presentEngagementRequest:v11];
  }

  v16 = v15;

  return v16;
}

- (id)_presentEngagementRequest:(id)request
{
  v22 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = +[AMSLogConfig sharedAccountsConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    *buf = 138543618;
    v19 = v7;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Presenting engagement to get GDPR consent", buf, 0x16u);
  }

  v9 = objc_opt_new();
  v10 = [[AMSSystemEngagementTask alloc] initWithRequest:requestCopy];

  present = [(AMSSystemEngagementTask *)v10 present];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__AMSDeviceAccountPrivacyAcknowledgementTask__presentEngagementRequest___block_invoke;
  v16[3] = &unk_1E73B5AC0;
  v16[4] = self;
  v12 = v9;
  v17 = v12;
  [present addFinishBlock:v16];

  v13 = v17;
  v14 = v12;

  return v12;
}

void __72__AMSDeviceAccountPrivacyAcknowledgementTask__presentEngagementRequest___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = +[AMSLogConfig sharedAccountsConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v9 = AMSLogableError(v4);
      v10 = 138543874;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Task failed %{public}@", &v10, 0x20u);
    }

    [*(a1 + 40) finishWithError:v4];
  }

  else
  {
    [*(a1 + 40) finishWithSuccess];
  }
}

@end