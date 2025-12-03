@interface AMSUIPaymentVerificationTokenFetchTask
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)_tokenFromDictionary:(id)dictionary;
+ (id)createBagForSubProfile;
+ (id)performRemoteDisabledFeatureWithBag:(id)bag featureKey:(id)key featureBlock:(id)block;
- (AMSUIPaymentVerificationTokenFetchTask)initWithMode:(unint64_t)mode account:(id)account viewController:(id)controller bag:(id)bag displayName:(id)name;
- (AMSUIPaymentVerificationTokenFetchTask)initWithMode:(unint64_t)mode accountParameters:(id)parameters viewController:(id)controller bag:(id)bag displayName:(id)name;
- (BOOL)webViewController:(id)controller handleDelegateAction:(id)action completion:(id)completion;
- (id)_contextCombining:(id)combining with:(id)with accountParameters:(id)parameters account:(id)account;
- (id)_promiseToTryNextFlowWithResult:(id)result error:(id)error continuationBlock:(id)block;
- (id)performApplePayTaskWithFeatureFlag:(BOOL)flag;
- (id)performCardOnFileTaskWithFeatureFlag:(BOOL)flag;
- (id)performIDCardTaskWithFeatureFlag:(BOOL)flag;
- (id)performTask;
- (id)performWebFlowTask;
- (void)_finishPromiseWithResult:(id)result error:(id)error;
- (void)setHeader:(id)header withValueIn:(id)in forKey:(id)key onRequest:(id)request;
- (void)webViewController:(id)controller didEncodeNetworkRequest:(id)request;
- (void)webViewController:(id)controller handleAuthenticateRequest:(id)request completion:(id)completion;
@end

@implementation AMSUIPaymentVerificationTokenFetchTask

- (AMSUIPaymentVerificationTokenFetchTask)initWithMode:(unint64_t)mode account:(id)account viewController:(id)controller bag:(id)bag displayName:(id)name
{
  v29 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  controllerCopy = controller;
  bagCopy = bag;
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = AMSUIPaymentVerificationTokenFetchTask;
  v16 = [(AMSTask *)&v24 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_account, account);
    objc_storeStrong(&v17->_bag, bag);
    v17->_biometricsDenied = 0;
    objc_storeStrong(&v17->_displayName, name);
    objc_storeStrong(&v17->_viewController, controller);
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedAccountsConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      *buf = 138543618;
      v26 = v20;
      v27 = 2114;
      v28 = v21;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Creating task with ACAccount", buf, 0x16u);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v17;
}

- (AMSUIPaymentVerificationTokenFetchTask)initWithMode:(unint64_t)mode accountParameters:(id)parameters viewController:(id)controller bag:(id)bag displayName:(id)name
{
  v29 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  controllerCopy = controller;
  bagCopy = bag;
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = AMSUIPaymentVerificationTokenFetchTask;
  v16 = [(AMSTask *)&v24 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_accountParameters, parameters);
    objc_storeStrong(&v17->_bag, bag);
    v17->_biometricsDenied = 0;
    objc_storeStrong(&v17->_displayName, name);
    objc_storeStrong(&v17->_viewController, controller);
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedAccountsConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      *buf = 138543618;
      v26 = v20;
      v27 = 2114;
      v28 = v21;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Creating task with accountParameters", buf, 0x16u);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)performTask
{
  v40 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedAccountsConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSSetLogKey();
    *buf = 138543618;
    v35 = v5;
    v36 = 2114;
    v37 = v6;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting task", buf, 0x16u);
  }

  v7 = [AMSUIPaymentVerificationMetrics alloc];
  v8 = [(AMSUIPaymentVerificationTokenFetchTask *)self bag];
  currentProcess = [MEMORY[0x1E698CAC8] currentProcess];
  bundleIdentifier = [currentProcess bundleIdentifier];
  v11 = [(AMSUIPaymentVerificationMetrics *)v7 initWithBag:v8 appID:bundleIdentifier];
  [(AMSUIPaymentVerificationTokenFetchTask *)self setMetrics:v11];

  metrics = [(AMSUIPaymentVerificationTokenFetchTask *)self metrics];
  [metrics enqueueEventWithPageId:@"ParentVerifyRequest" displayReason:0];

  viewController = [(AMSUIPaymentVerificationTokenFetchTask *)self viewController];
  LODWORD(metrics) = viewController == 0;

  if (metrics)
  {
    v14 = AMSError();
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = AMSLogKey();
      *buf = 138543874;
      v35 = v23;
      v36 = 2114;
      v37 = v24;
      v38 = 2114;
      v39 = v14;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] %{public}@", buf, 0x20u);
    }

    resultPromise3 = [MEMORY[0x1E698CAD0] promiseWithError:v14];
  }

  else
  {
    v14 = [(AMSUIPaymentVerificationTokenFetchTask *)self performCardOnFileTaskWithFeatureFlag:1];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __53__AMSUIPaymentVerificationTokenFetchTask_performTask__block_invoke;
    v33[3] = &unk_1E7F248C8;
    v33[4] = self;
    v15 = [v14 continueWithBlock:v33];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __53__AMSUIPaymentVerificationTokenFetchTask_performTask__block_invoke_3;
    v32[3] = &unk_1E7F248C8;
    v32[4] = self;
    v16 = [v15 continueWithBlock:v32];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __53__AMSUIPaymentVerificationTokenFetchTask_performTask__block_invoke_5;
    v31[3] = &unk_1E7F248C8;
    v31[4] = self;
    v17 = [v16 continueWithBlock:v31];
    [(AMSUIPaymentVerificationTokenFetchTask *)self setResultPromise:v17];
    objc_initWeak(buf, self);
    resultPromise = [(AMSUIPaymentVerificationTokenFetchTask *)self resultPromise];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __53__AMSUIPaymentVerificationTokenFetchTask_performTask__block_invoke_7;
    v29[3] = &unk_1E7F24D00;
    objc_copyWeak(&v30, buf);
    [resultPromise addErrorBlock:v29];

    resultPromise2 = [(AMSUIPaymentVerificationTokenFetchTask *)self resultPromise];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __53__AMSUIPaymentVerificationTokenFetchTask_performTask__block_invoke_8;
    v27[3] = &unk_1E7F257C0;
    objc_copyWeak(&v28, buf);
    [resultPromise2 addFinishBlock:v27];

    resultPromise3 = [(AMSUIPaymentVerificationTokenFetchTask *)self resultPromise];
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }

  v25 = *MEMORY[0x1E69E9840];

  return resultPromise3;
}

id __53__AMSUIPaymentVerificationTokenFetchTask_performTask__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__AMSUIPaymentVerificationTokenFetchTask_performTask__block_invoke_2;
  v6[3] = &unk_1E7F24488;
  v6[4] = v3;
  v4 = [v3 _promiseToTryNextFlowWithResult:a2 error:a3 continuationBlock:v6];

  return v4;
}

id __53__AMSUIPaymentVerificationTokenFetchTask_performTask__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__AMSUIPaymentVerificationTokenFetchTask_performTask__block_invoke_4;
  v6[3] = &unk_1E7F24488;
  v6[4] = v3;
  v4 = [v3 _promiseToTryNextFlowWithResult:a2 error:a3 continuationBlock:v6];

  return v4;
}

id __53__AMSUIPaymentVerificationTokenFetchTask_performTask__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__AMSUIPaymentVerificationTokenFetchTask_performTask__block_invoke_6;
  v6[3] = &unk_1E7F24488;
  v6[4] = v3;
  v4 = [v3 _promiseToTryNextFlowWithResult:a2 error:a3 continuationBlock:v6];

  return v4;
}

void __53__AMSUIPaymentVerificationTokenFetchTask_performTask__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained metrics];
  [v1 enqueueEventWithPageId:@"ParentalVerificationFailed" displayReason:0];

  v2 = [WeakRetained metrics];
  [v2 flushEvents];
}

void __53__AMSUIPaymentVerificationTokenFetchTask_performTask__block_invoke_8(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E698C968] sharedAccountsConfig];
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = AMSLogKey();
      v10 = MEMORY[0x1E696AEC0];
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v12 = objc_opt_class();
      v13 = v12;
      if (v9)
      {
        v3 = AMSLogKey();
        [v10 stringWithFormat:@"%@: [%@] ", v13, v3];
      }

      else
      {
        [v10 stringWithFormat:@"%@: ", v12];
      }
      v14 = ;
      *buf = 138543618;
      v24 = v14;
      v25 = 2114;
      v26 = v5;
      v18 = "%{public}@Task finished with error: %{public}@";
      v19 = v8;
      v20 = OS_LOG_TYPE_ERROR;
      v21 = 22;
      goto LABEL_16;
    }
  }

  else
  {
    if (!v6)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = AMSLogKey();
      v15 = MEMORY[0x1E696AEC0];
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v16 = objc_opt_class();
      v17 = v16;
      if (v9)
      {
        v3 = AMSLogKey();
        [v15 stringWithFormat:@"%@: [%@] ", v17, v3];
      }

      else
      {
        [v15 stringWithFormat:@"%@: ", v16];
      }
      v14 = ;
      *buf = 138543362;
      v24 = v14;
      v18 = "%{public}@Task finished successfully";
      v19 = v8;
      v20 = OS_LOG_TYPE_DEFAULT;
      v21 = 12;
LABEL_16:
      _os_log_impl(&dword_1BB036000, v19, v20, v18, buf, v21);
      if (v9)
      {

        v14 = v3;
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (id)_promiseToTryNextFlowWithResult:(id)result error:(id)error continuationBlock:(id)block
{
  v39 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  blockCopy = block;
  if (result)
  {
    v10 = [MEMORY[0x1E698CAD0] promiseWithResult:result];
    goto LABEL_18;
  }

  domain = [errorCopy domain];
  v12 = domain;
  if (domain != *MEMORY[0x1E698C548])
  {

LABEL_12:
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedAccountsConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v24 = AMSLogKey();
      v33 = 138543874;
      v34 = v23;
      v35 = 2114;
      v36 = v24;
      v37 = 2114;
      v38 = errorCopy;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Moving to next flow due to: %{public}@", &v33, 0x20u);
    }

LABEL_17:
    v10 = blockCopy[2](blockCopy);
    goto LABEL_18;
  }

  code = [errorCopy code];

  if (code != 6)
  {
    goto LABEL_12;
  }

  mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedAccountsConfig];
  if (!mEMORY[0x1E698C968]2)
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = AMSLogKey();
    v33 = 138543874;
    v34 = v16;
    v35 = 2114;
    v36 = v17;
    v37 = 2114;
    v38 = errorCopy;
    _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] User cancelled previous flow: %{public}@", &v33, 0x20u);
  }

  userInfo = [errorCopy userInfo];
  v19 = [userInfo objectForKeyedSubscript:@"really_cancelled"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  bOOLValue = [v20 BOOLValue];
  if (!bOOLValue)
  {
    userInfo2 = [errorCopy userInfo];
    v30 = [userInfo2 objectForKeyedSubscript:@"biometricsDenied"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    bOOLValue2 = [v31 BOOLValue];
    if (bOOLValue2)
    {
      [(AMSUIPaymentVerificationTokenFetchTask *)self setBiometricsDenied:1];
    }

    goto LABEL_17;
  }

  v10 = [MEMORY[0x1E698CAD0] promiseWithError:errorCopy];
LABEL_18:
  v25 = v10;

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)performRemoteDisabledFeatureWithBag:(id)bag featureKey:(id)key featureBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  v9 = [bag BOOLForKey:keyCopy];
  valuePromise = [v9 valuePromise];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __102__AMSUIPaymentVerificationTokenFetchTask_performRemoteDisabledFeatureWithBag_featureKey_featureBlock___block_invoke;
  v15[3] = &unk_1E7F257E8;
  v16 = keyCopy;
  v17 = blockCopy;
  v11 = blockCopy;
  v12 = keyCopy;
  v13 = [valuePromise continueWithBlock:v15];

  return v13;
}

id __102__AMSUIPaymentVerificationTokenFetchTask_performRemoteDisabledFeatureWithBag_featureKey_featureBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if ([v4 BOOLValue])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Feature %@ disabled in bag", *(a1 + 32)];
    v6 = MEMORY[0x1E698CAD0];
    v7 = AMSError();
    v8 = [v6 promiseWithError:v7];
  }

  else
  {
    v8 = (*(*(a1 + 40) + 16))();
  }

  return v8;
}

- (id)performIDCardTaskWithFeatureFlag:(BOOL)flag
{
  if (flag)
  {
    v4 = objc_opt_class();
    v5 = [(AMSUIPaymentVerificationTokenFetchTask *)self bag];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75__AMSUIPaymentVerificationTokenFetchTask_performIDCardTaskWithFeatureFlag___block_invoke;
    v10[3] = &unk_1E7F24488;
    v10[4] = self;
    v6 = [v4 performRemoteDisabledFeatureWithBag:v5 featureKey:@"pvk_mead_disabled" featureBlock:v10];
  }

  else
  {
    v7 = MEMORY[0x1E698CAD0];
    v8 = AMSError();
    v6 = [v7 promiseWithError:v8];
  }

  return v6;
}

id __75__AMSUIPaymentVerificationTokenFetchTask_performIDCardTaskWithFeatureFlag___block_invoke(uint64_t a1)
{
  v2 = [AMSUIParentalVerificationIDCardTask alloc];
  v3 = [*(a1 + 32) account];
  v4 = [*(a1 + 32) accountParameters];
  v5 = [*(a1 + 32) bag];
  v6 = [*(a1 + 32) displayName];
  v7 = [*(a1 + 32) metrics];
  v8 = [*(a1 + 32) viewController];
  v9 = [(AMSUIParentalVerificationIDCardTask *)v2 initWithAccount:v3 accountParameters:v4 bag:v5 displayName:v6 metrics:v7 viewController:v8];

  v10 = [(AMSUIParentalVerificationIDCardTask *)v9 performTask];

  return v10;
}

- (id)performApplePayTaskWithFeatureFlag:(BOOL)flag
{
  if (flag)
  {
    v4 = objc_opt_class();
    v5 = [(AMSUIPaymentVerificationTokenFetchTask *)self bag];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__AMSUIPaymentVerificationTokenFetchTask_performApplePayTaskWithFeatureFlag___block_invoke;
    v10[3] = &unk_1E7F24488;
    v10[4] = self;
    v6 = [v4 performRemoteDisabledFeatureWithBag:v5 featureKey:@"pvk_apc_disabled" featureBlock:v10];
  }

  else
  {
    v7 = MEMORY[0x1E698CAD0];
    v8 = AMSError();
    v6 = [v7 promiseWithError:v8];
  }

  return v6;
}

id __77__AMSUIPaymentVerificationTokenFetchTask_performApplePayTaskWithFeatureFlag___block_invoke(uint64_t a1)
{
  v2 = [AMSUIParentalVerificationApplePayTask alloc];
  v3 = [*(a1 + 32) account];
  v4 = [*(a1 + 32) accountParameters];
  v5 = [*(a1 + 32) bag];
  v6 = [*(a1 + 32) displayName];
  v7 = [*(a1 + 32) metrics];
  v8 = [*(a1 + 32) viewController];
  v9 = [(AMSUIParentalVerificationApplePayTask *)v2 initWithAccount:v3 accountParameters:v4 bag:v5 displayName:v6 metrics:v7 viewController:v8];

  v10 = [(AMSUIParentalVerificationApplePayTask *)v9 performTask];

  return v10;
}

- (id)performCardOnFileTaskWithFeatureFlag:(BOOL)flag
{
  if (flag)
  {
    v4 = [AMSUICardOnFilePVTFetchTask alloc];
    account = [(AMSUIPaymentVerificationTokenFetchTask *)self account];
    accountParameters = [(AMSUIPaymentVerificationTokenFetchTask *)self accountParameters];
    v7 = [(AMSUIPaymentVerificationTokenFetchTask *)self bag];
    displayName = [(AMSUIPaymentVerificationTokenFetchTask *)self displayName];
    metrics = [(AMSUIPaymentVerificationTokenFetchTask *)self metrics];
    viewController = [(AMSUIPaymentVerificationTokenFetchTask *)self viewController];
    v11 = [(AMSUICardOnFilePVTFetchTask *)v4 initWithAccount:account accountParameters:accountParameters bag:v7 displayName:displayName metrics:metrics viewController:viewController];

    [(AMSUICardOnFilePVTFetchTask *)v11 performTask];
  }

  else
  {
    v11 = AMSError();
    [MEMORY[0x1E698CAD0] promiseWithError:v11];
  }
  v12 = ;

  return v12;
}

- (id)performWebFlowTask
{
  v3 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v4 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:*MEMORY[0x1E698C4C0]];
  account = [(AMSUIPaymentVerificationTokenFetchTask *)self account];
  accountParameters = [(AMSUIPaymentVerificationTokenFetchTask *)self accountParameters];
  v7 = [AMSUIPaymentVerificationProtocolHandler _accountToUseFromGivenAccount:account accountParameters:accountParameters accountStore:v4];

  if (!v7)
  {
    v8 = objc_alloc(MEMORY[0x1E6959A28]);
    v9 = [v4 accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E6959930]];
    v7 = [v8 initWithAccountType:v9];

    accountParameters2 = [(AMSUIPaymentVerificationTokenFetchTask *)self accountParameters];
    v11 = [accountParameters2 objectForKeyedSubscript:@"accountNameApprover"];
    [v7 setUsername:v11];

    accountParameters3 = [(AMSUIPaymentVerificationTokenFetchTask *)self accountParameters];
    v13 = [accountParameters3 objectForKeyedSubscript:@"altDsId"];
    [v7 ams_setAltDSID:v13];

    ams_localiTunesAccount = [v4 ams_localiTunesAccount];
    ams_storefront = [ams_localiTunesAccount ams_storefront];
    [v7 ams_setStorefront:ams_storefront];
  }

  metrics = [(AMSUIPaymentVerificationTokenFetchTask *)self metrics];
  displayReason = [metrics displayReason];
  userInfo = [(AMSUIPaymentVerificationTokenFetchTask *)self userInfo];
  accountParameters4 = [(AMSUIPaymentVerificationTokenFetchTask *)self accountParameters];
  v20 = [(AMSUIPaymentVerificationTokenFetchTask *)self _contextCombining:displayReason with:userInfo accountParameters:accountParameters4 account:v7];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __60__AMSUIPaymentVerificationTokenFetchTask_performWebFlowTask__block_invoke;
  v26[3] = &unk_1E7F25810;
  v26[4] = self;
  v21 = v3;
  v27 = v21;
  v28 = v7;
  v22 = v7;
  [v20 resultWithCompletion:v26];

  v23 = v28;
  v24 = v21;

  return v21;
}

void __60__AMSUIPaymentVerificationTokenFetchTask_performWebFlowTask__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__AMSUIPaymentVerificationTokenFetchTask_performWebFlowTask__block_invoke_69;
    block[3] = &unk_1E7F24590;
    block[4] = *(a1 + 32);
    v15 = *(a1 + 48);
    v16 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v7 = AMSError();
    v8 = [MEMORY[0x1E698C968] sharedAccountsConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      *buf = 138543874;
      v18 = v11;
      v19 = 2114;
      v20 = v12;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Could not create context for web flow. error = %{public}@", buf, 0x20u);
    }

    [*(a1 + 40) finishWithError:v7];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __60__AMSUIPaymentVerificationTokenFetchTask_performWebFlowTask__block_invoke_69(uint64_t a1)
{
  v2 = [WrappedAMSUIWebViewController alloc];
  v3 = [*(a1 + 32) bag];
  v4 = [(AMSUIWebViewController *)v2 initWithBag:v3 account:*(a1 + 40) clientInfo:0];
  [*(a1 + 32) setWebVC:v4];

  v5 = *(a1 + 32);
  v6 = [v5 webVC];
  [v6 setDelegate:v5];

  v7 = *(a1 + 48);
  v8 = [*(a1 + 32) webVC];
  [v8 setClientOptions:v7];

  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__2;
  v16[4] = __Block_byref_object_dispose__2;
  v17 = *(a1 + 32);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__AMSUIPaymentVerificationTokenFetchTask_performWebFlowTask__block_invoke_71;
  v15[3] = &unk_1E7F241B0;
  v15[4] = v16;
  v9 = [*(a1 + 32) webVC];
  [v9 setDismissBlock:v15];

  v10 = [*(a1 + 32) bag];
  v11 = [v10 URLForKey:@"verifyPaymentCommerceURL"];

  v12 = [*(a1 + 32) webVC];
  v13 = [v12 loadBagValue:v11];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__AMSUIPaymentVerificationTokenFetchTask_performWebFlowTask__block_invoke_2;
  v14[3] = &unk_1E7F242D0;
  v14[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v14);

  _Block_object_dispose(v16, 8);
}

void __60__AMSUIPaymentVerificationTokenFetchTask_performWebFlowTask__block_invoke_71(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = AMSError();
  [v2 _finishPromiseWithResult:0 error:v3];

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void __60__AMSUIPaymentVerificationTokenFetchTask_performWebFlowTask__block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69DCCD8]);
  v3 = [*(a1 + 32) webVC];
  v5 = [v2 initWithRootViewController:v3];

  [v5 setModalPresentationStyle:2];
  v4 = [*(a1 + 32) viewController];
  [v4 presentViewController:v5 animated:1 completion:0];
}

- (id)_contextCombining:(id)combining with:(id)with accountParameters:(id)parameters account:(id)account
{
  combiningCopy = combining;
  withCopy = with;
  parametersCopy = parameters;
  accountCopy = account;
  v14 = [objc_alloc(MEMORY[0x1E698C800]) initWithAccount:accountCopy forSignaturePurpose:1];
  perform = [v14 perform];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __91__AMSUIPaymentVerificationTokenFetchTask__contextCombining_with_accountParameters_account___block_invoke;
  v22[3] = &unk_1E7F25838;
  v23 = combiningCopy;
  v24 = withCopy;
  v25 = parametersCopy;
  v26 = accountCopy;
  selfCopy = self;
  v16 = accountCopy;
  v17 = parametersCopy;
  v18 = withCopy;
  v19 = combiningCopy;
  v20 = [perform continueWithPromiseBlock:v22];

  return v20;
}

id __91__AMSUIPaymentVerificationTokenFetchTask__contextCombining_with_accountParameters_account___block_invoke(uint64_t a1, int a2)
{
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = MEMORY[0x1E696AAE8];
  v6 = [MEMORY[0x1E698CAC8] currentProcess];
  v7 = [v6 bundleIdentifier];
  v8 = [v5 bundleWithIdentifier:v7];

  v9 = [v8 icon];
  v10 = v9;
  if (v9)
  {
    v11 = UIImagePNGRepresentation(v9);
    v12 = v11;
    if (v11)
    {
      v13 = [v11 base64EncodedStringWithOptions:1];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"data:image/pngbase64, %@", v13];;
      [v4 setObject:v14 forKeyedSubscript:@"appIcon"];
    }
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    [v4 setObject:v15 forKeyedSubscript:@"displayReason"];
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    [v4 setObject:v16 forKeyedSubscript:@"userInfo"];
  }

  if (*(a1 + 48))
  {
    v17 = [AMSUIParentalVerificationCore _allowedAccountParameters:?];
    [v4 setObject:v17 forKeyedSubscript:@"accountParameters"];
  }

  v18 = MEMORY[0x1E696AD98];
  if (a2)
  {
    v19 = [*(a1 + 56) isActive];
  }

  else
  {
    v19 = 0;
  }

  v20 = [v18 numberWithInt:v19];
  [v4 setObject:v20 forKeyedSubscript:@"biometricsIsEnabled"];

  v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(MEMORY[0x1E698C7F8], "type")}];
  [v4 setObject:v21 forKeyedSubscript:@"biometricsType"];

  v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 64), "biometricsDenied")}];
  [v4 setObject:v22 forKeyedSubscript:@"biometricsDenied"];

  v23 = [MEMORY[0x1E698CAD0] promiseWithResult:v4];

  return v23;
}

- (BOOL)webViewController:(id)controller handleDelegateAction:(id)action completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  completionCopy = completion;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedAccountsConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = AMSLogKey();
    v22 = 138543874;
    v23 = v11;
    v24 = 2114;
    v25 = v12;
    v26 = 2114;
    v27 = actionCopy;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Web flow finished by returning: %{public}@", &v22, 0x20u);
  }

  v13 = [objc_opt_class() _tokenFromDictionary:actionCopy];
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = AMSError();
  }

  metrics = [(AMSUIPaymentVerificationTokenFetchTask *)self metrics];
  [metrics enqueueEventWithPageId:@"ParentVerified" displayReason:@"WebFlow"];

  metrics2 = [(AMSUIPaymentVerificationTokenFetchTask *)self metrics];
  [metrics2 flushEvents];

  [(AMSUIPaymentVerificationTokenFetchTask *)self _finishPromiseWithResult:v13 error:v14];
  if (v14)
  {
    v17 = completionCopy;
    v18 = 0;
    v19 = v14;
  }

  else
  {
    v18 = MEMORY[0x1E695E118];
    v17 = completionCopy;
    v19 = 0;
  }

  (*(completionCopy + 2))(v17, v18, v19);

  v20 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)webViewController:(id)controller handleAuthenticateRequest:(id)request completion:(id)completion
{
  controllerCopy = controller;
  requestCopy = request;
  completionCopy = completion;
  options = [requestCopy options];
  v12 = [options copy];

  [v12 setEphemeral:1];
  [v12 setServiceIdentifier:@"com.apple.gs.ams.pvkit"];
  v13 = [AMSUIAuthKitUpdateTask alloc];
  account = [requestCopy account];
  webVC = [(AMSUIPaymentVerificationTokenFetchTask *)self webVC];
  v16 = [(AMSUIAuthKitUpdateTask *)v13 initWithAccount:account presentingViewController:webVC options:v12];

  objc_initWeak(&location, self);
  performAuthKitUpdate = [(AMSAuthKitUpdateTask *)v16 performAuthKitUpdate];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __97__AMSUIPaymentVerificationTokenFetchTask_webViewController_handleAuthenticateRequest_completion___block_invoke;
  v19[3] = &unk_1E7F25860;
  objc_copyWeak(&v21, &location);
  v18 = completionCopy;
  v20 = v18;
  [performAuthKitUpdate addFinishBlock:v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __97__AMSUIPaymentVerificationTokenFetchTask_webViewController_handleAuthenticateRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [v5 authenticationResults];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E698DB98]];

  v10 = [v9 objectForKeyedSubscript:@"com.apple.gs.ams.pvkit"];
  v11 = [MEMORY[0x1E698C968] sharedConfig];
  v12 = v11;
  if (v10)
  {
    if (!v11)
    {
      v12 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      v24 = 138543618;
      v25 = v14;
      v26 = 2114;
      v27 = v15;
      _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] We've received an updated GS token", &v24, 0x16u);
    }

    v16 = [WeakRetained[8] mutableCopy];
    [v16 setObject:v10 forKeyedSubscript:@"gsToken"];
    v12 = WeakRetained[8];
    WeakRetained[8] = v16;
  }

  else
  {
    if (!v11)
    {
      v12 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v17 = [v12 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = AMSLogKey();
      v24 = 138543618;
      v25 = v18;
      v26 = 2114;
      v27 = v19;
      _os_log_impl(&dword_1BB036000, v17, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to locate GS Token in auth result", &v24, 0x16u);
    }
  }

  if (v6)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x1E698C7C0]);
    v21 = [v5 account];
    v22 = [v20 initWithAccount:v21];

    (*(*(a1 + 32) + 16))();
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)webViewController:(id)controller didEncodeNetworkRequest:(id)request
{
  requestCopy = request;
  accountParameters = [(AMSUIPaymentVerificationTokenFetchTask *)self accountParameters];

  if (accountParameters)
  {
    v6 = *MEMORY[0x1E698C588];
    accountParameters2 = [(AMSUIPaymentVerificationTokenFetchTask *)self accountParameters];
    [(AMSUIPaymentVerificationTokenFetchTask *)self setHeader:v6 withValueIn:accountParameters2 forKey:@"gsToken" onRequest:requestCopy];

    v8 = *MEMORY[0x1E698C598];
    accountParameters3 = [(AMSUIPaymentVerificationTokenFetchTask *)self accountParameters];
    [(AMSUIPaymentVerificationTokenFetchTask *)self setHeader:v8 withValueIn:accountParameters3 forKey:@"mmeClientInfo" onRequest:requestCopy];

    v10 = *MEMORY[0x1E698C5A0];
    accountParameters4 = [(AMSUIPaymentVerificationTokenFetchTask *)self accountParameters];
    [(AMSUIPaymentVerificationTokenFetchTask *)self setHeader:v10 withValueIn:accountParameters4 forKey:@"deviceId" onRequest:requestCopy];

    [requestCopy setValue:@"1" forHTTPHeaderField:@"X-Apple-Payment-Verification"];
  }
}

- (void)setHeader:(id)header withValueIn:(id)in forKey:(id)key onRequest:(id)request
{
  headerCopy = header;
  requestCopy = request;
  v10 = [in objectForKeyedSubscript:key];
  if (v10)
  {
    [requestCopy setValue:v10 forHTTPHeaderField:headerCopy];
  }
}

+ (id)_tokenFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v5 = [dictionaryCopy objectForKeyedSubscript:@"actionName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6 && [v6 isEqualToString:@"providePVT"])
    {
      v8 = [v4 objectForKeyedSubscript:@"options"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        v10 = [v9 objectForKeyedSubscript:@"status"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        if (v11 && ![v11 integerValue])
        {
          v12 = [v9 objectForKeyedSubscript:@"pvt"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }

          if (v13)
          {
            v14 = [v13 dataUsingEncoding:4];
            v7 = [[AMSPaymentVerificationTokenResult alloc] initWithTokenData:v14];
          }

          else
          {
            v7 = 0;
          }
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(MEMORY[0x1E698CA40]);
  [v2 addBagKey:@"verifyPaymentApplePayAurumOnStackBoolean" valueType:5 defaultValue:@"https://buy.itunes.apple.com/account/verifyPayment/applePay/aurumOnStackBoolean"];
  [v2 addBagKey:@"verifyPaymentApplePayAurumOnStackPVT" valueType:5 defaultValue:@"https://buy.itunes.apple.com/account/verifyPayment/applePay/aurumOnStackPVT"];
  [v2 addBagKey:@"verifyPaymentApplePayCardOnDevice" valueType:5 defaultValue:@"https://buy.itunes.apple.com/account/verifyPayment/applePay/cardOnDevice"];
  [v2 addBagKey:@"verifyPaymentCommerceURL" valueType:5 defaultValue:@"https://apps.mzstatic.com/content/54a1317a0ad442d3965d64ef6bfaae1c/verify-billing"];
  bagKeySet = [MEMORY[0x1E698CB88] bagKeySet];
  [v2 unionBagKeySet:bagKeySet];

  return v2;
}

+ (NSString)bagSubProfile
{
  if (bagSubProfile_ams_once_token___COUNTER__ != -1)
  {
    +[AMSUIPaymentVerificationTokenFetchTask bagSubProfile];
  }

  v3 = bagSubProfile_ams_once_object___COUNTER__;

  return v3;
}

void __55__AMSUIPaymentVerificationTokenFetchTask_bagSubProfile__block_invoke()
{
  v0 = bagSubProfile_ams_once_object___COUNTER__;
  bagSubProfile_ams_once_object___COUNTER__ = @"AMSUIPaymentVerification";
}

+ (NSString)bagSubProfileVersion
{
  if (bagSubProfileVersion_ams_once_token___COUNTER__ != -1)
  {
    +[AMSUIPaymentVerificationTokenFetchTask bagSubProfileVersion];
  }

  v3 = bagSubProfileVersion_ams_once_object___COUNTER__;

  return v3;
}

void __62__AMSUIPaymentVerificationTokenFetchTask_bagSubProfileVersion__block_invoke()
{
  v0 = bagSubProfileVersion_ams_once_object___COUNTER__;
  bagSubProfileVersion_ams_once_object___COUNTER__ = @"1";
}

+ (id)createBagForSubProfile
{
  v2 = MEMORY[0x1E698C7E0];
  bagKeySet = [objc_opt_class() bagKeySet];
  bagSubProfile = [objc_opt_class() bagSubProfile];
  bagSubProfileVersion = [objc_opt_class() bagSubProfileVersion];
  [v2 registerBagKeySet:bagKeySet forProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  v6 = MEMORY[0x1E698C7D8];
  bagSubProfile2 = [objc_opt_class() bagSubProfile];
  bagSubProfileVersion2 = [objc_opt_class() bagSubProfileVersion];
  v9 = [v6 bagForProfile:bagSubProfile2 profileVersion:bagSubProfileVersion2];

  return v9;
}

- (void)_finishPromiseWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  if (resultCopy)
  {
    resultPromise = [(AMSUIPaymentVerificationTokenFetchTask *)self resultPromise];
    [resultPromise finishWithResult:resultCopy];
  }

  else
  {
    resultPromise2 = [(AMSUIPaymentVerificationTokenFetchTask *)self resultPromise];
    resultPromise = resultPromise2;
    if (errorCopy)
    {
      [resultPromise2 finishWithError:errorCopy];
    }

    else
    {
      v9 = AMSError();
      [resultPromise finishWithError:v9];
    }
  }

  [(AMSUIPaymentVerificationTokenFetchTask *)self setResultPromise:0];
}

@end