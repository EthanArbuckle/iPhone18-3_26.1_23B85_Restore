@interface AMSGenerateFDSTask
- (ACAccount)account;
- (AMSGenerateFDSTask)initWithPurchaseInfo:(id)a3 bag:(id)a4;
- (AMSGenerateFDSTask)initWithRequest:(id)a3 bag:(id)a4;
- (NSNumber)purchaseIdentifier;
- (NSString)logKey;
- (id)runTask;
- (unint64_t)_actionForPurchaseInfo:(id)a3 bag:(id)a4 logKey:(id)a5;
- (unint64_t)action;
@end

@implementation AMSGenerateFDSTask

- (AMSGenerateFDSTask)initWithPurchaseInfo:(id)a3 bag:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 purchase];
  v9 = [v8 logUUID];

  v10 = [(AMSGenerateFDSTask *)self _actionForPurchaseInfo:v6 bag:v7 logKey:v9];
  v11 = +[AMSLogConfig sharedConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
    v24 = 138543874;
    v25 = v13;
    v26 = 2114;
    v27 = v9;
    v28 = 2114;
    v29 = v14;
    _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Initializing AFDS task with action type: %{public}@", &v24, 0x20u);
  }

  v15 = objc_alloc_init(AMSFDSOptions);
  [(AMSFDSOptions *)v15 setAction:v10];
  v16 = [v6 clientInfo];
  [(AMSFDSOptions *)v15 setClientInfo:v16];

  v17 = [AMSFDSRequest alloc];
  v18 = [v6 purchase];
  v19 = [v18 uniqueIdentifier];
  v20 = [v6 account];
  v21 = [(AMSFDSRequest *)v17 initWithPurchaseIdentifier:v19 account:v20 options:v15];

  [(AMSFDSRequest *)v21 setLogKey:v9];
  v22 = [(AMSGenerateFDSTask *)self initWithRequest:v21 bag:v7];

  return v22;
}

- (unint64_t)_actionForPurchaseInfo:(id)a3 bag:(id)a4 logKey:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (+[AMSGenerateFDSTask deviceSupportsODIValues])
  {
    v10 = [AMSGenerateFDSTask deviceSupportsFreeODIWithBag:v8 logKey:v9];
    v11 = [v7 buyParams];
    [v11 price];
    if (v10)
    {
      if (v12 == 0.0)
      {
        v13 = [v7 buyParams];
        if ([v13 isFreeTrial])
        {
          v14 = 4;
        }

        else
        {
          v14 = 5;
        }

LABEL_12:

LABEL_14:
        goto LABEL_15;
      }
    }

    else if (v12 == 0.0)
    {
      v13 = [v7 buyParams];
      if ([v13 isFreeTrial])
      {
        v14 = 4;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_12;
    }

    v14 = 4;
    goto LABEL_14;
  }

  v14 = [v7 isFree] ^ 1;
LABEL_15:

  return v14;
}

- (AMSGenerateFDSTask)initWithRequest:(id)a3 bag:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSGenerateFDSTask;
  v9 = [(AMSTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bag, a4);
    objc_storeStrong(&v10->_request, a3);
  }

  return v10;
}

- (ACAccount)account
{
  v2 = [(AMSGenerateFDSTask *)self request];
  v3 = [v2 account];

  return v3;
}

- (unint64_t)action
{
  v2 = [(AMSGenerateFDSTask *)self request];
  v3 = [v2 options];
  v4 = [v3 action];

  return v4;
}

- (NSString)logKey
{
  v2 = [(AMSGenerateFDSTask *)self request];
  v3 = [v2 logKey];

  return v3;
}

- (NSNumber)purchaseIdentifier
{
  v2 = [(AMSGenerateFDSTask *)self request];
  v3 = [v2 purchaseIdentifier];

  return v3;
}

- (id)runTask
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__AMSGenerateFDSTask_runTask__block_invoke;
  v4[3] = &unk_1E73B3588;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

id __29__AMSGenerateFDSTask_runTask__block_invoke(uint64_t a1)
{
  if (+[AMSGenerateFDSTask deviceSupportsAFDSValues])
  {
    v2 = [*(a1 + 32) request];
    [AMSFDSService generateFDSWithRequest:v2];
  }

  else
  {
    v2 = AMSError(5, @"Platform Not Supported", @"AFDS is not supported on this platform.", 0);
    [AMSPromise promiseWithError:v2];
  }
  v3 = ;

  return v3;
}

@end