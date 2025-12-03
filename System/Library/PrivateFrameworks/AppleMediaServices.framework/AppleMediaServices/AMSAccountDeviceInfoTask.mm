@interface AMSAccountDeviceInfoTask
- (AMSAccountDeviceInfoTask)initWithAccount:(id)account accountStore:(id)store bag:(id)bag;
- (AMSAccountDeviceInfoTask)initWithAccount:(id)account accountStore:(id)store bag:(id)bag requestEncoder:(id)encoder session:(id)session serialNumber:(id)number;
- (id)_deviceInfoRequest;
- (id)_requestWithURL:(id)l;
- (id)_updateAccountWithInfo:(id)info;
- (id)perform;
@end

@implementation AMSAccountDeviceInfoTask

- (AMSAccountDeviceInfoTask)initWithAccount:(id)account accountStore:(id)store bag:(id)bag
{
  v8 = MEMORY[0x1E695AC80];
  bagCopy = bag;
  storeCopy = store;
  accountCopy = account;
  v12 = +[AMSProcessInfo currentProcess];
  v13 = [v8 ams_configurationWithProcessInfo:v12 bag:0];

  v14 = [[AMSURLSession alloc] initWithConfiguration:v13 delegate:0 delegateQueue:0];
  v15 = [[AMSURLRequestEncoder alloc] initWithBag:bagCopy];
  v16 = +[AMSDevice serialNumber];
  v17 = [(AMSAccountDeviceInfoTask *)self initWithAccount:accountCopy accountStore:storeCopy bag:bagCopy requestEncoder:v15 session:v14 serialNumber:v16];

  return v17;
}

- (AMSAccountDeviceInfoTask)initWithAccount:(id)account accountStore:(id)store bag:(id)bag requestEncoder:(id)encoder session:(id)session serialNumber:(id)number
{
  accountCopy = account;
  storeCopy = store;
  bagCopy = bag;
  encoderCopy = encoder;
  sessionCopy = session;
  numberCopy = number;
  v24.receiver = self;
  v24.super_class = AMSAccountDeviceInfoTask;
  v18 = [(AMSTask *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_account, account);
    objc_storeStrong(&v19->_accountStore, store);
    objc_storeStrong(&v19->_bag, bag);
    objc_storeStrong(&v19->_requestEncoder, encoder);
    objc_storeStrong(&v19->_session, session);
    objc_storeStrong(&v19->_serialNumber, number);
  }

  return v19;
}

- (id)perform
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__AMSAccountDeviceInfoTask_perform__block_invoke;
  v5[3] = &unk_1E73B3588;
  v5[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v5];
  v3 = [v2 promiseWithTimeout:30.0];

  return v3;
}

id __35__AMSAccountDeviceInfoTask_perform__block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) account];

  if (!v3)
  {
    v20 = +[AMSLogConfig sharedConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = AMSLogKey();
      *buf = 138543618;
      v35 = v22;
      v36 = 2114;
      v37 = v23;
      _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Aborting - missing account", buf, 0x16u);
    }

    v24 = @"Missing required account";
    v25 = @"Cannot perform account-device info lookup without account";
    goto LABEL_18;
  }

  v4 = [*(a1 + 32) serialNumber];

  v5 = +[AMSLogConfig sharedConfig];
  v6 = v5;
  if (!v4)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v26 = [v6 OSLogObject];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_opt_class();
      v28 = AMSLogKey();
      *buf = 138543618;
      v35 = v27;
      v36 = 2114;
      v37 = v28;
      _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Aborting - missing serial number", buf, 0x16u);
    }

    v24 = @"Missing required serial number";
    v25 = @"Cannot perform account-device info lookup without serial number";
LABEL_18:
    v19 = AMSError(2, v24, v25, 0);
    [v2 finishWithError:v19];
    goto LABEL_19;
  }

  if (!v5)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    v10 = [*(a1 + 32) account];
    *buf = 138543874;
    v35 = v8;
    v36 = 2114;
    v37 = v9;
    v38 = 2114;
    v39 = v10;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Beginning account-device info task for account  %{public}@", buf, 0x20u);
  }

  v11 = [*(a1 + 32) account];
  v12 = [*(a1 + 32) requestEncoder];
  [v12 setAccount:v11];

  v13 = [*(a1 + 32) requestEncoder];
  [v13 setUrlKnownToBeTrusted:1];

  v14 = [*(a1 + 32) _deviceInfoRequest];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __35__AMSAccountDeviceInfoTask_perform__block_invoke_16;
  v33[3] = &unk_1E73B34E8;
  v33[4] = *(a1 + 32);
  v15 = [v14 thenWithBlock:v33];

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __35__AMSAccountDeviceInfoTask_perform__block_invoke_2;
  v32[3] = &unk_1E73B3510;
  v32[4] = *(a1 + 32);
  v16 = [v15 thenWithBlock:v32];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __35__AMSAccountDeviceInfoTask_perform__block_invoke_3;
  v30[3] = &unk_1E73B3560;
  v30[4] = *(a1 + 32);
  v17 = v2;
  v31 = v17;
  [v16 addFinishBlock:v30];
  v18 = v31;
  v19 = v17;

LABEL_19:

  return v2;
}

id __35__AMSAccountDeviceInfoTask_perform__block_invoke_16(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 requestEncoder];
  v5 = [v4 requestByEncodingRequest:v3 parameters:0];

  return v5;
}

id __35__AMSAccountDeviceInfoTask_perform__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 session];
  v5 = [v4 dataTaskPromiseWithRequest:v3];

  return v5;
}

void __35__AMSAccountDeviceInfoTask_perform__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      *buf = 138543874;
      v26 = v9;
      v27 = 2114;
      v28 = v10;
      v29 = 2114;
      v30 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to get account-device info. Error: %{public}@", buf, 0x20u);
    }

    [*(a1 + 40) finishWithError:v6];
  }

  else
  {
    v11 = [AMSAccountDeviceInfoResult alloc];
    v12 = [*(a1 + 32) account];
    v13 = [v5 object];
    v14 = [(AMSAccountDeviceInfoResult *)v11 initWithAccount:v12 responseDictionary:v13];

    v15 = +[AMSLogConfig sharedConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      *buf = 138543874;
      v26 = v17;
      v27 = 2114;
      v28 = v18;
      v29 = 2114;
      v30 = v14;
      _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Retrieved account-device info:  %{public}@", buf, 0x20u);
    }

    v19 = [*(a1 + 32) _updateAccountWithInfo:v14];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __35__AMSAccountDeviceInfoTask_perform__block_invoke_20;
    v22[3] = &unk_1E73B3538;
    v20 = *(a1 + 40);
    v22[4] = *(a1 + 32);
    v23 = v20;
    v24 = v14;
    v21 = v14;
    [v19 addFinishBlock:v22];
  }
}

void __35__AMSAccountDeviceInfoTask_perform__block_invoke_20(id *a1, char a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = +[AMSLogConfig sharedConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v22 = 138543874;
      v23 = v8;
      v24 = 2114;
      v25 = v9;
      v26 = 2114;
      v27 = v5;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to update account. Error: %{public}@", &v22, 0x20u);
    }

    [a1[5] finishWithError:v5];
  }

  if (a2)
  {
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v14 = [a1[4] account];
      v15 = [v14 hashedDescription];
      v16 = [a1[6] isBundleOwner];
      v22 = 138544130;
      v23 = v12;
      v24 = 2114;
      v25 = v13;
      v26 = 2114;
      v27 = v15;
      v28 = 2114;
      v29 = v16;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Finished updating account %{public}@ with property %{public}@", &v22, 0x2Au);
    }

    [a1[5] finishWithResult:a1[6]];
  }

  else
  {
    v17 = AMSError(0, @"Failed to update account", @"And unknown error occurred", 0);
    v18 = +[AMSLogConfig sharedConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      v22 = 138543618;
      v23 = v20;
      v24 = 2114;
      v25 = v21;
      _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to update account - no error provided", &v22, 0x16u);
    }

    [a1[5] finishWithError:v17];
  }
}

- (id)_deviceInfoRequest
{
  v3 = [(AMSAccountDeviceInfoTask *)self bag];
  v4 = [v3 URLForKey:@"hardwareAssetInfo"];

  objc_initWeak(&location, self);
  valuePromise = [v4 valuePromise];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__AMSAccountDeviceInfoTask__deviceInfoRequest__block_invoke;
  v8[3] = &unk_1E73B35B0;
  objc_copyWeak(&v9, &location);
  v6 = [valuePromise thenWithBlock:v8];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);

  return v6;
}

id __46__AMSAccountDeviceInfoTask__deviceInfoRequest__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _requestWithURL:v3];

  v6 = [AMSPromise promiseWithResult:v5];

  return v6;
}

- (id)_requestWithURL:(id)l
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AF20];
  lCopy = l;
  v6 = [[v4 alloc] initWithURL:lCopy resolvingAgainstBaseURL:0];

  v7 = objc_alloc(MEMORY[0x1E696AF60]);
  serialNumber = [(AMSAccountDeviceInfoTask *)self serialNumber];
  v9 = [v7 initWithName:@"sn" value:serialNumber];
  v16[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [v6 setQueryItems:v10];

  v11 = objc_alloc(MEMORY[0x1E695AC18]);
  v12 = [v6 URL];
  v13 = [v11 initWithURL:v12];

  [v13 setHTTPMethod:@"POST"];
  v14 = [v13 copy];

  return v14;
}

- (id)_updateAccountWithInfo:(id)info
{
  infoCopy = info;
  account = [(AMSAccountDeviceInfoTask *)self account];
  isBundleOwner = [infoCopy isBundleOwner];

  [account ams_setIsBundleOwner:isBundleOwner];
  accountStore = [(AMSAccountDeviceInfoTask *)self accountStore];
  account2 = [(AMSAccountDeviceInfoTask *)self account];
  v9 = [accountStore ams_saveAccount:account2 withOptions:1];

  return v9;
}

@end