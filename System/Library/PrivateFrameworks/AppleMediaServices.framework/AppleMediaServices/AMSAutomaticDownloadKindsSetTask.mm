@interface AMSAutomaticDownloadKindsSetTask
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)createBagForSubProfile;
- (AMSAutomaticDownloadKindsSetTask)initWithEnabledMediaKinds:(id)kinds account:(id)account bag:(id)bag;
- (AMSAutomaticDownloadKindsSetTask)initWithEnabledMediaKinds:(id)kinds account:(id)account bag:(id)bag presentationDelegate:(id)delegate;
- (AMSRequestPresentationDelegate)presentationDelegate;
- (id)perform;
- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion;
@end

@implementation AMSAutomaticDownloadKindsSetTask

- (AMSAutomaticDownloadKindsSetTask)initWithEnabledMediaKinds:(id)kinds account:(id)account bag:(id)bag presentationDelegate:(id)delegate
{
  kindsCopy = kinds;
  accountCopy = account;
  bagCopy = bag;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = AMSAutomaticDownloadKindsSetTask;
  v14 = [(AMSTask *)&v22 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_account, account);
    v16 = [kindsCopy copy];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v15->_enabledMediaKinds, v18);

    objc_storeStrong(&v15->_bag, bag);
    v19 = +[AMSProcessInfo currentProcess];
    clientInfo = v15->_clientInfo;
    v15->_clientInfo = v19;

    objc_storeWeak(&v15->_presentationDelegate, delegateCopy);
  }

  return v15;
}

- (AMSAutomaticDownloadKindsSetTask)initWithEnabledMediaKinds:(id)kinds account:(id)account bag:(id)bag
{
  kindsCopy = kinds;
  accountCopy = account;
  bagCopy = bag;
  v19.receiver = self;
  v19.super_class = AMSAutomaticDownloadKindsSetTask;
  v11 = [(AMSTask *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_account, account);
    v13 = [kindsCopy copy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v12->_enabledMediaKinds, v15);

    objc_storeStrong(&v12->_bag, bag);
    v16 = +[AMSProcessInfo currentProcess];
    clientInfo = v12->_clientInfo;
    v12->_clientInfo = v16;
  }

  return v12;
}

- (id)perform
{
  v50 = *MEMORY[0x1E69E9840];
  account = [(AMSAutomaticDownloadKindsSetTask *)self account];

  if (!account)
  {
    v6 = AMSError(2, @"Invalid Parameter", @"An account is required.", 0);
    v7 = [AMSPromise promiseWithError:v6];
    goto LABEL_5;
  }

  account2 = [(AMSAutomaticDownloadKindsSetTask *)self account];
  ams_isLocalAccount = [account2 ams_isLocalAccount];

  if (ams_isLocalAccount)
  {
    v6 = AMSError(2, @"Invalid Parameter", @"We cannot sync the local account's automatic download kinds.", 0);
    v7 = [AMSPromise promiseWithError:v6];
LABEL_5:
    v8 = v7;

    goto LABEL_21;
  }

  account3 = [(AMSAutomaticDownloadKindsSetTask *)self account];
  v10 = [account3 objectForKeyedSubscript:0x1F071B4D8];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v11 = 0;
LABEL_15:
    v21 = +[AMSLogConfig sharedConfig];
    if (!v21)
    {
      v21 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v21 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v24 = AMSLogKey();
      account4 = [(AMSAutomaticDownloadKindsSetTask *)self account];
      v26 = AMSHashIfNeeded(account4);
      enabledMediaKinds = [(AMSAutomaticDownloadKindsSetTask *)self enabledMediaKinds];
      v28 = AMSHashIfNeeded(enabledMediaKinds);
      *buf = 138544130;
      *&buf[4] = v23;
      *&buf[12] = 2114;
      *&buf[14] = v24;
      *&buf[22] = 2114;
      v48 = v26;
      LOWORD(v49) = 2114;
      *(&v49 + 2) = v28;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Syncing automatic download kinds. account = %{public}@ | enabled media kinds = %{public}@", buf, 0x2Au);
    }

    v29 = [AMSURLRequestEncoder alloc];
    v30 = [(AMSAutomaticDownloadKindsSetTask *)self bag];
    v20 = [(AMSURLRequestEncoder *)v29 initWithBag:v30];

    account5 = [(AMSAutomaticDownloadKindsSetTask *)self account];
    [(AMSURLRequestEncoder *)v20 setAccount:account5];

    [(AMSURLRequestEncoder *)v20 setRequestEncoding:2];
    v32 = AMSLogKey();
    [(AMSURLRequestEncoder *)v20 setLogUUID:v32];

    clientInfo = [(AMSAutomaticDownloadKindsSetTask *)self clientInfo];
    [(AMSURLRequestEncoder *)v20 setClientInfo:clientInfo];

    v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
    enabledMediaKinds2 = [(AMSAutomaticDownloadKindsSetTask *)self enabledMediaKinds];
    [v34 setObject:enabledMediaKinds2 forKeyedSubscript:@"media-types"];

    v36 = +[AMSDevice deviceGUID];
    [v34 ams_setNullableObject:v36 forKey:@"guid"];

    v37 = [(AMSAutomaticDownloadKindsSetTask *)self bag];
    v38 = [v37 URLForKey:@"register-media-types-url"];

    v39 = [(AMSURLRequestEncoder *)v20 requestWithMethod:4 bagURL:v38 parameters:v34];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __43__AMSAutomaticDownloadKindsSetTask_perform__block_invoke;
    v46[3] = &unk_1E73B3510;
    v46[4] = self;
    v40 = [v39 thenWithBlock:v46];
    objc_initWeak(&location, self);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __43__AMSAutomaticDownloadKindsSetTask_perform__block_invoke_2;
    v43[3] = &unk_1E73B4008;
    objc_copyWeak(&v44, &location);
    v8 = [v40 thenWithBlock:v43];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v48 = __Block_byref_object_copy__4;
    *&v49 = __Block_byref_object_dispose__4;
    *(&v49 + 1) = self;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __43__AMSAutomaticDownloadKindsSetTask_perform__block_invoke_33;
    v42[3] = &unk_1E73B4030;
    v42[4] = buf;
    [v8 addFinishBlock:v42];
    _Block_object_dispose(buf, 8);

    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);

    goto LABEL_20;
  }

  v11 = v10;

  if (!v11)
  {
    goto LABEL_15;
  }

  enabledMediaKinds3 = [(AMSAutomaticDownloadKindsSetTask *)self enabledMediaKinds];
  v13 = [v11 isEqualToArray:enabledMediaKinds3];

  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = +[AMSLogConfig sharedConfig];
  if (!v14)
  {
    v14 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v14 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v16 = objc_opt_class();
    v17 = AMSLogKey();
    *buf = 138543618;
    *&buf[4] = v16;
    *&buf[12] = 2114;
    *&buf[14] = v17;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Enabled media kinds are the same as our currently set values, skipping network request.", buf, 0x16u);
  }

  v18 = [AMSAutomaticDownloadKindsResult alloc];
  account6 = [(AMSAutomaticDownloadKindsSetTask *)self account];
  v20 = [(AMSAutomaticDownloadKindsResult *)v18 initWithAccount:account6 andEnabledMediaKinds:v11];

  v8 = [AMSPromise promiseWithResult:v20];
LABEL_20:

LABEL_21:

  return v8;
}

id __43__AMSAutomaticDownloadKindsSetTask_perform__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMSURLSession defaultSession];
  v5 = [v4 configuration];

  v6 = [[AMSURLSession alloc] initWithConfiguration:v5 delegate:*(a1 + 32) delegateQueue:0];
  [*(a1 + 32) setSession:v6];

  v7 = [*(a1 + 32) session];
  v8 = [v7 dataTaskPromiseWithRequest:v3];

  return v8;
}

id __43__AMSAutomaticDownloadKindsSetTask_perform__block_invoke_2(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
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

  v5 = [v4 objectForKeyedSubscript:@"status"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;

    if (v6 && ![v6 integerValue])
    {
      v7 = +[AMSLogConfig sharedConfig];
      if (!v7)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      v8 = [v7 OSLogObject];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        WeakRetained = objc_loadWeakRetained((a1 + 32));
        v10 = objc_opt_class();
        v11 = AMSLogKey();
        *buf = 138543618;
        v35 = v10;
        v36 = 2114;
        v37 = v11;
        _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully registered automatic media types.", buf, 0x16u);
      }

      v12 = objc_loadWeakRetained((a1 + 32));
      v13 = [v12 enabledMediaKinds];
      v14 = objc_loadWeakRetained((a1 + 32));
      v15 = [v14 account];
      [v15 setObject:v13 forKeyedSubscript:0x1F071B4D8];

      v16 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
      v17 = objc_loadWeakRetained((a1 + 32));
      v18 = [v17 account];
      v19 = [v16 ams_saveAccount:v18 verifyCredentials:0];

      v20 = [AMSAutomaticDownloadKindsResult alloc];
      v21 = objc_loadWeakRetained((a1 + 32));
      v22 = [v21 account];
      v23 = objc_loadWeakRetained((a1 + 32));
      v24 = [v23 enabledMediaKinds];
      v25 = [(AMSAutomaticDownloadKindsResult *)v20 initWithAccount:v22 andEnabledMediaKinds:v24];

      v26 = [AMSPromise promiseWithResult:v25];
      goto LABEL_18;
    }
  }

  else
  {

    v6 = 0;
  }

  v27 = +[AMSLogConfig sharedConfig];
  if (!v27)
  {
    v27 = +[AMSLogConfig sharedConfig];
  }

  v28 = [v27 OSLogObject];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = objc_loadWeakRetained((a1 + 32));
    v30 = objc_opt_class();
    v31 = AMSLogKey();
    *buf = 138543874;
    v35 = v30;
    v36 = 2114;
    v37 = v31;
    v38 = 2048;
    v39 = [v6 longValue];
    _os_log_impl(&dword_192869000, v28, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] The server responded with invalid status: %ld", buf, 0x20u);
  }

  v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The server responded with a non 0 status code: %ld", objc_msgSend(v6, "longValue")];
  v32 = AMSError(305, @"Invalid Server Response", v25, 0);
  v26 = [AMSPromise promiseWithError:v32];

LABEL_18:

  return v26;
}

void __43__AMSAutomaticDownloadKindsSetTask_perform__block_invoke_33(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    v6 = *(*(*(a1 + 32) + 8) + 40);
    v9 = 138543874;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Releasing task: %{public}@", &v9, 0x20u);
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  presentationDelegate = [(AMSAutomaticDownloadKindsSetTask *)self presentationDelegate];

  if (presentationDelegate)
  {
    presentationDelegate2 = [(AMSAutomaticDownloadKindsSetTask *)self presentationDelegate];
    [presentationDelegate2 handleAuthenticateRequest:requestCopy completion:completionCopy];
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    presentationDelegate2 = AMSError(12, @"AMSAutomaticDownloadKindsSetTask failed", @"No presentation delegate to handle authentication request.", 0);
    completionCopy[2](completionCopy, 0, presentationDelegate2);
  }

LABEL_6:
}

- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  presentationDelegate = [(AMSAutomaticDownloadKindsSetTask *)self presentationDelegate];

  if (presentationDelegate)
  {
    presentationDelegate2 = [(AMSAutomaticDownloadKindsSetTask *)self presentationDelegate];
    [presentationDelegate2 handleDialogRequest:requestCopy completion:completionCopy];
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    presentationDelegate2 = AMSError(12, @"AMSAutomaticDownloadKindsSetTask failed", @"No presentation delegate to handle dialog request.", 0);
    completionCopy[2](completionCopy, 0, presentationDelegate2);
  }

LABEL_6:
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_1_3 != -1)
  {
    dispatch_once(&_MergedGlobals_1_3, &__block_literal_global_15);
  }

  v3 = qword_1ED6E1DE8;

  return v3;
}

void __49__AMSAutomaticDownloadKindsSetTask_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E1DE8;
  qword_1ED6E1DE8 = @"AMSAutomaticDownloadKinds";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E1DF0 != -1)
  {
    dispatch_once(&qword_1ED6E1DF0, &__block_literal_global_49);
  }

  v3 = qword_1ED6E1DF8;

  return v3;
}

void __56__AMSAutomaticDownloadKindsSetTask_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E1DF8;
  qword_1ED6E1DF8 = @"1";
}

+ (id)createBagForSubProfile
{
  bagSubProfile = [objc_opt_class() bagSubProfile];
  bagSubProfileVersion = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  return v4;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

- (AMSRequestPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

@end