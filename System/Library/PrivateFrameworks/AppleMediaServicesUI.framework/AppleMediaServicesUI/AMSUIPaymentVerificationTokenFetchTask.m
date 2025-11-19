@interface AMSUIPaymentVerificationTokenFetchTask
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)_tokenFromDictionary:(id)a3;
+ (id)createBagForSubProfile;
+ (id)performRemoteDisabledFeatureWithBag:(id)a3 featureKey:(id)a4 featureBlock:(id)a5;
- (AMSUIPaymentVerificationTokenFetchTask)initWithMode:(unint64_t)a3 account:(id)a4 viewController:(id)a5 bag:(id)a6 displayName:(id)a7;
- (AMSUIPaymentVerificationTokenFetchTask)initWithMode:(unint64_t)a3 accountParameters:(id)a4 viewController:(id)a5 bag:(id)a6 displayName:(id)a7;
- (BOOL)webViewController:(id)a3 handleDelegateAction:(id)a4 completion:(id)a5;
- (id)_contextCombining:(id)a3 with:(id)a4 accountParameters:(id)a5 account:(id)a6;
- (id)_promiseToTryNextFlowWithResult:(id)a3 error:(id)a4 continuationBlock:(id)a5;
- (id)performApplePayTaskWithFeatureFlag:(BOOL)a3;
- (id)performCardOnFileTaskWithFeatureFlag:(BOOL)a3;
- (id)performIDCardTaskWithFeatureFlag:(BOOL)a3;
- (id)performTask;
- (id)performWebFlowTask;
- (void)_finishPromiseWithResult:(id)a3 error:(id)a4;
- (void)setHeader:(id)a3 withValueIn:(id)a4 forKey:(id)a5 onRequest:(id)a6;
- (void)webViewController:(id)a3 didEncodeNetworkRequest:(id)a4;
- (void)webViewController:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5;
@end

@implementation AMSUIPaymentVerificationTokenFetchTask

- (AMSUIPaymentVerificationTokenFetchTask)initWithMode:(unint64_t)a3 account:(id)a4 viewController:(id)a5 bag:(id)a6 displayName:(id)a7
{
  v29 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v24.receiver = self;
  v24.super_class = AMSUIPaymentVerificationTokenFetchTask;
  v16 = [(AMSTask *)&v24 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_account, a4);
    objc_storeStrong(&v17->_bag, a6);
    v17->_biometricsDenied = 0;
    objc_storeStrong(&v17->_displayName, a7);
    objc_storeStrong(&v17->_viewController, a5);
    v18 = [MEMORY[0x1E698C968] sharedAccountsConfig];
    if (!v18)
    {
      v18 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      *buf = 138543618;
      v26 = v20;
      v27 = 2114;
      v28 = v21;
      _os_log_impl(&dword_1BB036000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Creating task with ACAccount", buf, 0x16u);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v17;
}

- (AMSUIPaymentVerificationTokenFetchTask)initWithMode:(unint64_t)a3 accountParameters:(id)a4 viewController:(id)a5 bag:(id)a6 displayName:(id)a7
{
  v29 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v24.receiver = self;
  v24.super_class = AMSUIPaymentVerificationTokenFetchTask;
  v16 = [(AMSTask *)&v24 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_accountParameters, a4);
    objc_storeStrong(&v17->_bag, a6);
    v17->_biometricsDenied = 0;
    objc_storeStrong(&v17->_displayName, a7);
    objc_storeStrong(&v17->_viewController, a5);
    v18 = [MEMORY[0x1E698C968] sharedAccountsConfig];
    if (!v18)
    {
      v18 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      *buf = 138543618;
      v26 = v20;
      v27 = 2114;
      v28 = v21;
      _os_log_impl(&dword_1BB036000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Creating task with accountParameters", buf, 0x16u);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)performTask
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698C968] sharedAccountsConfig];
  if (!v3)
  {
    v3 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSSetLogKey();
    *buf = 138543618;
    v35 = v5;
    v36 = 2114;
    v37 = v6;
    _os_log_impl(&dword_1BB036000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting task", buf, 0x16u);
  }

  v7 = [AMSUIPaymentVerificationMetrics alloc];
  v8 = [(AMSUIPaymentVerificationTokenFetchTask *)self bag];
  v9 = [MEMORY[0x1E698CAC8] currentProcess];
  v10 = [v9 bundleIdentifier];
  v11 = [(AMSUIPaymentVerificationMetrics *)v7 initWithBag:v8 appID:v10];
  [(AMSUIPaymentVerificationTokenFetchTask *)self setMetrics:v11];

  v12 = [(AMSUIPaymentVerificationTokenFetchTask *)self metrics];
  [v12 enqueueEventWithPageId:@"ParentVerifyRequest" displayReason:0];

  v13 = [(AMSUIPaymentVerificationTokenFetchTask *)self viewController];
  LODWORD(v12) = v13 == 0;

  if (v12)
  {
    v14 = AMSError();
    v21 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v21)
    {
      v21 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v22 = [v21 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = AMSLogKey();
      *buf = 138543874;
      v35 = v23;
      v36 = 2114;
      v37 = v24;
      v38 = 2114;
      v39 = v14;
      _os_log_impl(&dword_1BB036000, v22, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] %{public}@", buf, 0x20u);
    }

    v20 = [MEMORY[0x1E698CAD0] promiseWithError:v14];
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
    v18 = [(AMSUIPaymentVerificationTokenFetchTask *)self resultPromise];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __53__AMSUIPaymentVerificationTokenFetchTask_performTask__block_invoke_7;
    v29[3] = &unk_1E7F24D00;
    objc_copyWeak(&v30, buf);
    [v18 addErrorBlock:v29];

    v19 = [(AMSUIPaymentVerificationTokenFetchTask *)self resultPromise];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __53__AMSUIPaymentVerificationTokenFetchTask_performTask__block_invoke_8;
    v27[3] = &unk_1E7F257C0;
    objc_copyWeak(&v28, buf);
    [v19 addFinishBlock:v27];

    v20 = [(AMSUIPaymentVerificationTokenFetchTask *)self resultPromise];
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }

  v25 = *MEMORY[0x1E69E9840];

  return v20;
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

- (id)_promiseToTryNextFlowWithResult:(id)a3 error:(id)a4 continuationBlock:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (a3)
  {
    v10 = [MEMORY[0x1E698CAD0] promiseWithResult:a3];
    goto LABEL_18;
  }

  v11 = [v8 domain];
  v12 = v11;
  if (v11 != *MEMORY[0x1E698C548])
  {

LABEL_12:
    v21 = [MEMORY[0x1E698C968] sharedAccountsConfig];
    if (!v21)
    {
      v21 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v22 = [v21 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v24 = AMSLogKey();
      v33 = 138543874;
      v34 = v23;
      v35 = 2114;
      v36 = v24;
      v37 = 2114;
      v38 = v8;
      _os_log_impl(&dword_1BB036000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Moving to next flow due to: %{public}@", &v33, 0x20u);
    }

LABEL_17:
    v10 = v9[2](v9);
    goto LABEL_18;
  }

  v13 = [v8 code];

  if (v13 != 6)
  {
    goto LABEL_12;
  }

  v14 = [MEMORY[0x1E698C968] sharedAccountsConfig];
  if (!v14)
  {
    v14 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v15 = [v14 OSLogObject];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = AMSLogKey();
    v33 = 138543874;
    v34 = v16;
    v35 = 2114;
    v36 = v17;
    v37 = 2114;
    v38 = v8;
    _os_log_impl(&dword_1BB036000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] User cancelled previous flow: %{public}@", &v33, 0x20u);
  }

  v18 = [v8 userInfo];
  v19 = [v18 objectForKeyedSubscript:@"really_cancelled"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v28 = [v20 BOOLValue];
  if (!v28)
  {
    v29 = [v8 userInfo];
    v30 = [v29 objectForKeyedSubscript:@"biometricsDenied"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v32 = [v31 BOOLValue];
    if (v32)
    {
      [(AMSUIPaymentVerificationTokenFetchTask *)self setBiometricsDenied:1];
    }

    goto LABEL_17;
  }

  v10 = [MEMORY[0x1E698CAD0] promiseWithError:v8];
LABEL_18:
  v25 = v10;

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)performRemoteDisabledFeatureWithBag:(id)a3 featureKey:(id)a4 featureBlock:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a3 BOOLForKey:v7];
  v10 = [v9 valuePromise];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __102__AMSUIPaymentVerificationTokenFetchTask_performRemoteDisabledFeatureWithBag_featureKey_featureBlock___block_invoke;
  v15[3] = &unk_1E7F257E8;
  v16 = v7;
  v17 = v8;
  v11 = v8;
  v12 = v7;
  v13 = [v10 continueWithBlock:v15];

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

- (id)performIDCardTaskWithFeatureFlag:(BOOL)a3
{
  if (a3)
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

- (id)performApplePayTaskWithFeatureFlag:(BOOL)a3
{
  if (a3)
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

- (id)performCardOnFileTaskWithFeatureFlag:(BOOL)a3
{
  if (a3)
  {
    v4 = [AMSUICardOnFilePVTFetchTask alloc];
    v5 = [(AMSUIPaymentVerificationTokenFetchTask *)self account];
    v6 = [(AMSUIPaymentVerificationTokenFetchTask *)self accountParameters];
    v7 = [(AMSUIPaymentVerificationTokenFetchTask *)self bag];
    v8 = [(AMSUIPaymentVerificationTokenFetchTask *)self displayName];
    v9 = [(AMSUIPaymentVerificationTokenFetchTask *)self metrics];
    v10 = [(AMSUIPaymentVerificationTokenFetchTask *)self viewController];
    v11 = [(AMSUICardOnFilePVTFetchTask *)v4 initWithAccount:v5 accountParameters:v6 bag:v7 displayName:v8 metrics:v9 viewController:v10];

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
  v5 = [(AMSUIPaymentVerificationTokenFetchTask *)self account];
  v6 = [(AMSUIPaymentVerificationTokenFetchTask *)self accountParameters];
  v7 = [AMSUIPaymentVerificationProtocolHandler _accountToUseFromGivenAccount:v5 accountParameters:v6 accountStore:v4];

  if (!v7)
  {
    v8 = objc_alloc(MEMORY[0x1E6959A28]);
    v9 = [v4 accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E6959930]];
    v7 = [v8 initWithAccountType:v9];

    v10 = [(AMSUIPaymentVerificationTokenFetchTask *)self accountParameters];
    v11 = [v10 objectForKeyedSubscript:@"accountNameApprover"];
    [v7 setUsername:v11];

    v12 = [(AMSUIPaymentVerificationTokenFetchTask *)self accountParameters];
    v13 = [v12 objectForKeyedSubscript:@"altDsId"];
    [v7 ams_setAltDSID:v13];

    v14 = [v4 ams_localiTunesAccount];
    v15 = [v14 ams_storefront];
    [v7 ams_setStorefront:v15];
  }

  v16 = [(AMSUIPaymentVerificationTokenFetchTask *)self metrics];
  v17 = [v16 displayReason];
  v18 = [(AMSUIPaymentVerificationTokenFetchTask *)self userInfo];
  v19 = [(AMSUIPaymentVerificationTokenFetchTask *)self accountParameters];
  v20 = [(AMSUIPaymentVerificationTokenFetchTask *)self _contextCombining:v17 with:v18 accountParameters:v19 account:v7];
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

- (id)_contextCombining:(id)a3 with:(id)a4 accountParameters:(id)a5 account:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [objc_alloc(MEMORY[0x1E698C800]) initWithAccount:v13 forSignaturePurpose:1];
  v15 = [v14 perform];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __91__AMSUIPaymentVerificationTokenFetchTask__contextCombining_with_accountParameters_account___block_invoke;
  v22[3] = &unk_1E7F25838;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = v13;
  v27 = self;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  v19 = v10;
  v20 = [v15 continueWithPromiseBlock:v22];

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

- (BOOL)webViewController:(id)a3 handleDelegateAction:(id)a4 completion:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E698C968] sharedAccountsConfig];
  if (!v9)
  {
    v9 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = AMSLogKey();
    v22 = 138543874;
    v23 = v11;
    v24 = 2114;
    v25 = v12;
    v26 = 2114;
    v27 = v7;
    _os_log_impl(&dword_1BB036000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Web flow finished by returning: %{public}@", &v22, 0x20u);
  }

  v13 = [objc_opt_class() _tokenFromDictionary:v7];
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = AMSError();
  }

  v15 = [(AMSUIPaymentVerificationTokenFetchTask *)self metrics];
  [v15 enqueueEventWithPageId:@"ParentVerified" displayReason:@"WebFlow"];

  v16 = [(AMSUIPaymentVerificationTokenFetchTask *)self metrics];
  [v16 flushEvents];

  [(AMSUIPaymentVerificationTokenFetchTask *)self _finishPromiseWithResult:v13 error:v14];
  if (v14)
  {
    v17 = v8;
    v18 = 0;
    v19 = v14;
  }

  else
  {
    v18 = MEMORY[0x1E695E118];
    v17 = v8;
    v19 = 0;
  }

  (*(v8 + 2))(v17, v18, v19);

  v20 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)webViewController:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 options];
  v12 = [v11 copy];

  [v12 setEphemeral:1];
  [v12 setServiceIdentifier:@"com.apple.gs.ams.pvkit"];
  v13 = [AMSUIAuthKitUpdateTask alloc];
  v14 = [v9 account];
  v15 = [(AMSUIPaymentVerificationTokenFetchTask *)self webVC];
  v16 = [(AMSUIAuthKitUpdateTask *)v13 initWithAccount:v14 presentingViewController:v15 options:v12];

  objc_initWeak(&location, self);
  v17 = [(AMSAuthKitUpdateTask *)v16 performAuthKitUpdate];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __97__AMSUIPaymentVerificationTokenFetchTask_webViewController_handleAuthenticateRequest_completion___block_invoke;
  v19[3] = &unk_1E7F25860;
  objc_copyWeak(&v21, &location);
  v18 = v10;
  v20 = v18;
  [v17 addFinishBlock:v19];

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

- (void)webViewController:(id)a3 didEncodeNetworkRequest:(id)a4
{
  v12 = a4;
  v5 = [(AMSUIPaymentVerificationTokenFetchTask *)self accountParameters];

  if (v5)
  {
    v6 = *MEMORY[0x1E698C588];
    v7 = [(AMSUIPaymentVerificationTokenFetchTask *)self accountParameters];
    [(AMSUIPaymentVerificationTokenFetchTask *)self setHeader:v6 withValueIn:v7 forKey:@"gsToken" onRequest:v12];

    v8 = *MEMORY[0x1E698C598];
    v9 = [(AMSUIPaymentVerificationTokenFetchTask *)self accountParameters];
    [(AMSUIPaymentVerificationTokenFetchTask *)self setHeader:v8 withValueIn:v9 forKey:@"mmeClientInfo" onRequest:v12];

    v10 = *MEMORY[0x1E698C5A0];
    v11 = [(AMSUIPaymentVerificationTokenFetchTask *)self accountParameters];
    [(AMSUIPaymentVerificationTokenFetchTask *)self setHeader:v10 withValueIn:v11 forKey:@"deviceId" onRequest:v12];

    [v12 setValue:@"1" forHTTPHeaderField:@"X-Apple-Payment-Verification"];
  }
}

- (void)setHeader:(id)a3 withValueIn:(id)a4 forKey:(id)a5 onRequest:(id)a6
{
  v11 = a3;
  v9 = a6;
  v10 = [a4 objectForKeyedSubscript:a5];
  if (v10)
  {
    [v9 setValue:v10 forHTTPHeaderField:v11];
  }
}

+ (id)_tokenFromDictionary:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"actionName"];
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
  v3 = [MEMORY[0x1E698CB88] bagKeySet];
  [v2 unionBagKeySet:v3];

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
  v3 = [objc_opt_class() bagKeySet];
  v4 = [objc_opt_class() bagSubProfile];
  v5 = [objc_opt_class() bagSubProfileVersion];
  [v2 registerBagKeySet:v3 forProfile:v4 profileVersion:v5];

  v6 = MEMORY[0x1E698C7D8];
  v7 = [objc_opt_class() bagSubProfile];
  v8 = [objc_opt_class() bagSubProfileVersion];
  v9 = [v6 bagForProfile:v7 profileVersion:v8];

  return v9;
}

- (void)_finishPromiseWithResult:(id)a3 error:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v10)
  {
    v7 = [(AMSUIPaymentVerificationTokenFetchTask *)self resultPromise];
    [v7 finishWithResult:v10];
  }

  else
  {
    v8 = [(AMSUIPaymentVerificationTokenFetchTask *)self resultPromise];
    v7 = v8;
    if (v6)
    {
      [v8 finishWithError:v6];
    }

    else
    {
      v9 = AMSError();
      [v7 finishWithError:v9];
    }
  }

  [(AMSUIPaymentVerificationTokenFetchTask *)self setResultPromise:0];
}

@end