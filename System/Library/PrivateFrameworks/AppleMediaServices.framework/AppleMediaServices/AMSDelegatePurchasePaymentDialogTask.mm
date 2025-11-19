@interface AMSDelegatePurchasePaymentDialogTask
- (AMSDelegatePurchasePaymentDialogTask)initWithDelegatePurchaseRequest:(id)a3 bag:(id)a4 andDesignVersion:(id)a5;
- (id)_encodedURLRequest;
- (id)_legacyUserAgentString;
- (id)_purchaseResultFromPurchaseResult:(id)a3 andPaymentSheetInfo:(id)a4;
- (id)performTask;
@end

@implementation AMSDelegatePurchasePaymentDialogTask

- (AMSDelegatePurchasePaymentDialogTask)initWithDelegatePurchaseRequest:(id)a3 bag:(id)a4 andDesignVersion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = AMSDelegatePurchasePaymentDialogTask;
  v12 = [(AMSTask *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_currentRequest, a3);
    v14 = [v9 purchaseResult];
    v15 = [v14 purchase];
    v16 = [v15 account];
    account = v13->_account;
    v13->_account = v16;

    objc_storeStrong(&v13->_bag, a4);
    objc_storeStrong(&v13->_designVersion, a5);
    if ([v11 isEqualToNumber:0x1F07798C8])
    {
      requestingPlatform = v13->_requestingPlatform;
      v13->_requestingPlatform = @"AppleTV";

      targetPlatformVersion = v13->_targetPlatformVersion;
      v13->_targetPlatformVersion = @"16.0";
    }
  }

  return v13;
}

- (id)performTask
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__AMSDelegatePurchasePaymentDialogTask_performTask__block_invoke;
  v5[3] = &unk_1E73B6940;
  objc_copyWeak(&v6, &location);
  v3 = [(AMSTask *)self performTaskWithPromiseBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

id __51__AMSDelegatePurchasePaymentDialogTask_performTask__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = AMSSetLogKeyIfNeeded();
  v3 = [WeakRetained designVersion];
  v4 = [v3 integerValue];
  v5 = [&unk_1F07798C8 integerValue];

  v6 = +[AMSLogConfig sharedConfig];
  v7 = v6;
  if (v4 <= v5)
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v7 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v22 = objc_opt_class();
      v23 = 2114;
      v24 = v2;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Begin requesting payment sheet for legacy device", buf, 0x16u);
    }

    v12 = objc_alloc_init(AMSMutablePromise);
    v13 = [WeakRetained _encodedURLRequest];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __51__AMSDelegatePurchasePaymentDialogTask_performTask__block_invoke_12;
    v18[3] = &unk_1E73B6918;
    v18[4] = WeakRetained;
    v14 = v2;
    v19 = v14;
    v20 = v12;
    v9 = v12;
    [v13 resultWithCompletion:v18];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __51__AMSDelegatePurchasePaymentDialogTask_performTask__block_invoke_15;
    v16[3] = &unk_1E73B5F88;
    v16[4] = WeakRetained;
    v17 = v14;
    v10 = [(AMSMutablePromise *)v9 continueWithBlock:v16];
  }

  else
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v22 = objc_opt_class();
      v23 = 2114;
      v24 = v2;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Design version 1.0 is the only supported dialog style", buf, 0x16u);
    }

    v9 = AMSError(2, @"Unsupported Design Version", @"Design version 1.0 is the only supported dialog style", 0);
    v10 = [AMSPromise promiseWithError:v9];
  }

  return v10;
}

void __51__AMSDelegatePurchasePaymentDialogTask_performTask__block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
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
      v10 = *(a1 + 40);
      v14 = 138543874;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      v18 = 2114;
      v19 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Legacy payment sheet URL failed with error: %{public}@", &v14, 0x20u);
    }

    [*(a1 + 48) finishWithError:v6];
  }

  else
  {
    v11 = +[AMSURLSession defaultSession];
    v12 = [*(a1 + 48) completionHandlerAdapter];
    v13 = [v11 dataTaskWithRequest:v5 completionHandler:v12];

    [v13 resume];
  }
}

id __51__AMSDelegatePurchasePaymentDialogTask_performTask__block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
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
      v9 = *(a1 + 40);
      v27 = 138543874;
      v28 = v8;
      v29 = 2114;
      v30 = v9;
      v31 = 2114;
      v32 = v5;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Legacy payment sheet URL failed with error: %{public}@", &v27, 0x20u);
    }

    v10 = [AMSPromise promiseWithError:v5];
  }

  else
  {
    v11 = [a2 object];
    v12 = [v11 objectForKey:@"paymentSheetInfo"];

    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = [v13 currentRequest];
      v15 = [v14 purchaseResult];
      v16 = [v13 _purchaseResultFromPurchaseResult:v15 andPaymentSheetInfo:v11];

      v17 = [AMSDelegatePurchaseRequest alloc];
      v18 = [*(a1 + 32) currentRequest];
      v19 = [v18 challenge];
      v20 = [*(a1 + 32) _legacyUserAgentString];
      v21 = [(AMSDelegatePurchaseRequest *)v17 initWithPurchaseResult:v16 challenge:v19 userAgent:v20];

      v10 = [AMSPromise promiseWithResult:v21];
    }

    else
    {
      v22 = +[AMSLogConfig sharedConfig];
      if (!v22)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      v23 = [v22 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        v25 = *(a1 + 40);
        v27 = 138543618;
        v28 = v24;
        v29 = 2114;
        v30 = v25;
        _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Legacy payment sheet response missing payment sheet info", &v27, 0x16u);
      }

      v16 = AMSError(7, @"Missing payment sheet info", @"The legacy payment sheet response is missing payment sheet info", 0);
      v10 = [AMSPromise promiseWithError:v16];
    }
  }

  return v10;
}

- (id)_legacyUserAgentString
{
  v2 = [(AMSDelegatePurchasePaymentDialogTask *)self currentRequest];
  v3 = [v2 userAgent];

  return v3;
}

- (id)_purchaseResultFromPurchaseResult:(id)a3 andPaymentSheetInfo:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 copy];
  v8 = [v6 responseDictionary];

  v9 = [v8 ams_dictionaryByAddingEntriesFromDictionary:v5];

  [v7 setResponseDictionary:v9];

  return v7;
}

- (id)_encodedURLRequest
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = AMSSetLogKeyIfNeeded();
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v46 = objc_opt_class();
    v47 = 2114;
    v48 = v3;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Begin extracting URL endpoint from bag", buf, 0x16u);
  }

  v6 = [(AMSDelegatePurchasePaymentDialogTask *)self bag];
  v7 = [v6 URLForKey:@"generatePaymentSheetUrl"];
  v44 = 0;
  v8 = [v7 valueWithError:&v44];
  v9 = v44;

  v10 = +[AMSLogConfig sharedConfig];
  v11 = v10;
  if (v9)
  {
    if (!v10)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = AMSHashIfNeeded(@"generatePaymentSheetUrl");
      *buf = 138544130;
      v46 = v13;
      v47 = 2114;
      v48 = v3;
      v49 = 2112;
      v50 = v14;
      v51 = 2114;
      v52 = v9;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to find key: %@, error: %{public}@", buf, 0x2Au);
    }

    v15 = [AMSPromise promiseWithError:v9];
  }

  else
  {
    if (!v10)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v11 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      *buf = 138543618;
      v46 = v17;
      v47 = 2114;
      v48 = v3;
      _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Completed extracting URL endpoint from bag", buf, 0x16u);
    }

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = [(AMSDelegatePurchasePaymentDialogTask *)self currentRequest];
    v20 = [v19 userAgent];
    [v18 ams_setNullableObject:v20 forKey:@"requesterUserAgent"];

    v21 = [(AMSDelegatePurchasePaymentDialogTask *)self targetPlatformVersion];
    [v18 ams_setNullableObject:v21 forKey:@"targetPlatformVersion"];

    v22 = [(AMSDelegatePurchasePaymentDialogTask *)self requestingPlatform];
    [v18 ams_setNullableObject:v22 forKey:@"requesterPlatform"];

    v23 = [(AMSDelegatePurchasePaymentDialogTask *)self designVersion];
    v24 = [v23 stringValue];
    [v18 ams_setNullableObject:v24 forKey:@"designVersion"];

    v25 = [(AMSDelegatePurchasePaymentDialogTask *)self currentRequest];
    v26 = [v25 purchaseResult];
    v27 = [v26 purchase];
    v28 = [v27 buyParams];
    v29 = [v28 dictionary];
    [v18 addEntriesFromDictionary:v29];

    v30 = [v18 copy];
    v31 = [AMSURLRequestEncoder alloc];
    v32 = [(AMSDelegatePurchasePaymentDialogTask *)self bag];
    v33 = [(AMSURLRequestEncoder *)v31 initWithBag:v32];

    v34 = [(AMSDelegatePurchasePaymentDialogTask *)self account];
    [(AMSURLRequestEncoder *)v33 setAccount:v34];

    [(AMSURLRequestEncoder *)v33 setLogUUID:v3];
    [(AMSURLRequestEncoder *)v33 setUrlKnownToBeTrusted:1];
    v35 = [(AMSURLRequestEncoder *)v33 requestWithMethod:4 URL:v8 headers:0 parameters:v30];
    v36 = objc_alloc_init(AMSMutablePromise);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __58__AMSDelegatePurchasePaymentDialogTask__encodedURLRequest__block_invoke;
    v40[3] = &unk_1E73B6878;
    v40[4] = self;
    v41 = v3;
    v42 = v8;
    v37 = v36;
    v43 = v37;
    [v35 resultWithCompletion:v40];
    v38 = v43;
    v15 = v37;
  }

  return v15;
}

void __58__AMSDelegatePurchasePaymentDialogTask__encodedURLRequest__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
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
      v9 = *(a1 + 40);
      v10 = AMSHashIfNeeded(*(a1 + 48));
      v11 = 138544130;
      v12 = v8;
      v13 = 2114;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode request for URL: %@, error: %{public}@", &v11, 0x2Au);
    }

    [*(a1 + 56) finishWithError:v5];
  }

  else
  {
    [*(a1 + 56) finishWithResult:a2];
  }
}

@end