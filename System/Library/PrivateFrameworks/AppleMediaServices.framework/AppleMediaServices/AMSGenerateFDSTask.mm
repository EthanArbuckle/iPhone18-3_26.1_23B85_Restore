@interface AMSGenerateFDSTask
- (ACAccount)account;
- (AMSGenerateFDSTask)initWithPurchaseInfo:(id)info bag:(id)bag;
- (AMSGenerateFDSTask)initWithRequest:(id)request bag:(id)bag;
- (NSNumber)purchaseIdentifier;
- (NSString)logKey;
- (id)runTask;
- (unint64_t)_actionForPurchaseInfo:(id)info bag:(id)bag logKey:(id)key;
- (unint64_t)action;
@end

@implementation AMSGenerateFDSTask

- (AMSGenerateFDSTask)initWithPurchaseInfo:(id)info bag:(id)bag
{
  v30 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  bagCopy = bag;
  purchase = [infoCopy purchase];
  logUUID = [purchase logUUID];

  v10 = [(AMSGenerateFDSTask *)self _actionForPurchaseInfo:infoCopy bag:bagCopy logKey:logUUID];
  v11 = +[AMSLogConfig sharedConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
    v24 = 138543874;
    v25 = v13;
    v26 = 2114;
    v27 = logUUID;
    v28 = 2114;
    v29 = v14;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Initializing AFDS task with action type: %{public}@", &v24, 0x20u);
  }

  v15 = objc_alloc_init(AMSFDSOptions);
  [(AMSFDSOptions *)v15 setAction:v10];
  clientInfo = [infoCopy clientInfo];
  [(AMSFDSOptions *)v15 setClientInfo:clientInfo];

  v17 = [AMSFDSRequest alloc];
  purchase2 = [infoCopy purchase];
  uniqueIdentifier = [purchase2 uniqueIdentifier];
  account = [infoCopy account];
  v21 = [(AMSFDSRequest *)v17 initWithPurchaseIdentifier:uniqueIdentifier account:account options:v15];

  [(AMSFDSRequest *)v21 setLogKey:logUUID];
  v22 = [(AMSGenerateFDSTask *)self initWithRequest:v21 bag:bagCopy];

  return v22;
}

- (unint64_t)_actionForPurchaseInfo:(id)info bag:(id)bag logKey:(id)key
{
  infoCopy = info;
  bagCopy = bag;
  keyCopy = key;
  if (+[AMSGenerateFDSTask deviceSupportsODIValues])
  {
    v10 = [AMSGenerateFDSTask deviceSupportsFreeODIWithBag:bagCopy logKey:keyCopy];
    buyParams = [infoCopy buyParams];
    [buyParams price];
    if (v10)
    {
      if (v12 == 0.0)
      {
        buyParams2 = [infoCopy buyParams];
        if ([buyParams2 isFreeTrial])
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
      buyParams2 = [infoCopy buyParams];
      if ([buyParams2 isFreeTrial])
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

  v14 = [infoCopy isFree] ^ 1;
LABEL_15:

  return v14;
}

- (AMSGenerateFDSTask)initWithRequest:(id)request bag:(id)bag
{
  requestCopy = request;
  bagCopy = bag;
  v12.receiver = self;
  v12.super_class = AMSGenerateFDSTask;
  v9 = [(AMSTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bag, bag);
    objc_storeStrong(&v10->_request, request);
  }

  return v10;
}

- (ACAccount)account
{
  request = [(AMSGenerateFDSTask *)self request];
  account = [request account];

  return account;
}

- (unint64_t)action
{
  request = [(AMSGenerateFDSTask *)self request];
  options = [request options];
  action = [options action];

  return action;
}

- (NSString)logKey
{
  request = [(AMSGenerateFDSTask *)self request];
  logKey = [request logKey];

  return logKey;
}

- (NSNumber)purchaseIdentifier
{
  request = [(AMSGenerateFDSTask *)self request];
  purchaseIdentifier = [request purchaseIdentifier];

  return purchaseIdentifier;
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