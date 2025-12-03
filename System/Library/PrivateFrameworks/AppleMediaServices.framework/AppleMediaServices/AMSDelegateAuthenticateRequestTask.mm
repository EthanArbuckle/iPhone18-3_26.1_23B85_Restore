@interface AMSDelegateAuthenticateRequestTask
+ (id)createBagForSubProfile;
- (AMSDelegateAuthenticateRequestTask)initWithAccount:(id)account;
- (AMSDelegateAuthenticateRequestTask)initWithAccount:(id)account bag:(id)bag;
- (id)_encodedURLRequest;
- (id)perform;
@end

@implementation AMSDelegateAuthenticateRequestTask

- (AMSDelegateAuthenticateRequestTask)initWithAccount:(id)account
{
  accountCopy = account;
  v5 = +[AMSDelegateAuthenticateRequestTask createBagForSubProfile];
  v6 = [(AMSDelegateAuthenticateRequestTask *)self initWithAccount:accountCopy bag:v5];

  return v6;
}

- (AMSDelegateAuthenticateRequestTask)initWithAccount:(id)account bag:(id)bag
{
  accountCopy = account;
  bagCopy = bag;
  v12.receiver = self;
  v12.super_class = AMSDelegateAuthenticateRequestTask;
  v9 = [(AMSTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, account);
    objc_storeStrong(&v10->_bag, bag);
  }

  return v10;
}

- (id)perform
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__AMSDelegateAuthenticateRequestTask_perform__block_invoke;
  v4[3] = &unk_1E73B3588;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

AMSMutablePromise *__45__AMSDelegateAuthenticateRequestTask_perform__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = AMSSetLogKeyIfNeeded();
  v3 = +[AMSLogConfig sharedConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = objc_opt_class();
    v25 = 2114;
    v26 = v2;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Begin requesting delegate auth endpoint", buf, 0x16u);
  }

  v5 = objc_alloc_init(AMSPromise);
  v6 = objc_alloc_init(AMSMutablePromise);
  v7 = [*(a1 + 32) _encodedURLRequest];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __45__AMSDelegateAuthenticateRequestTask_perform__block_invoke_4;
  v19[3] = &unk_1E73B6878;
  v19[4] = *(a1 + 32);
  v8 = v2;
  v20 = v8;
  v9 = v6;
  v21 = v9;
  v22 = v5;
  v10 = v5;
  [v7 resultWithCompletion:v19];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __45__AMSDelegateAuthenticateRequestTask_perform__block_invoke_2;
  v16[3] = &unk_1E73B5CF8;
  v16[4] = *(a1 + 32);
  v17 = v8;
  v11 = v9;
  v18 = v11;
  v12 = v8;
  [(AMSPromise *)v10 addFinishBlock:v16];
  v13 = v18;
  v14 = v11;

  return v11;
}

void __45__AMSDelegateAuthenticateRequestTask_perform__block_invoke_4(uint64_t a1, void *a2, void *a3)
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
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Encoding URL request failed with error: %{public}@", &v14, 0x20u);
    }

    [*(a1 + 48) finishWithError:v6];
  }

  else
  {
    v11 = [MEMORY[0x1E695AC80] ams_configurationWithProcessInfo:0 bag:0];
    v12 = [[AMSURLSession alloc] initWithConfiguration:v11 delegate:*(a1 + 32) delegateQueue:0];
    v13 = [*(a1 + 56) completionHandlerAdapter];
    [(AMSURLSession *)v12 createDataTaskWithRequest:v5 activity:0 dataTaskCreationCompletionHandler:&__block_literal_global_37 requestCompletionHandler:v13];
  }
}

void __45__AMSDelegateAuthenticateRequestTask_perform__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
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
      *buf = 138543874;
      v24 = v9;
      v25 = 2114;
      v26 = v10;
      v27 = 2114;
      v28 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] URL request failed with error: %{public}@", buf, 0x20u);
    }

    [*(a1 + 48) finishWithError:v6];
  }

  else
  {
    v11 = [v5 object];
    v12 = [v11 valueForKey:@"challenge"];

    v13 = +[AMSProcessInfo currentProcess];
    v14 = [AMSUserAgent userAgentForProcessInfo:v13];

    if (v12)
    {
      v15 = [[AMSDelegateAuthenticateRequest alloc] initWithChallenge:v12 userAgent:v14];
      [*(a1 + 48) finishWithResult:v15];
    }

    else
    {
      v16 = +[AMSLogConfig sharedConfig];
      if (!v16)
      {
        v16 = +[AMSLogConfig sharedConfig];
      }

      v17 = [v16 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v22 = *(a1 + 40);
        v19 = [v5 object];
        v20 = AMSHashIfNeeded(v19);
        *buf = 138543874;
        v24 = v18;
        v25 = 2114;
        v26 = v22;
        v27 = 2114;
        v28 = v20;
        _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] challenge response did not contain a challenge. response = %{public}@", buf, 0x20u);
      }

      v21 = *(a1 + 48);
      v15 = AMSError(116, @"Request for challenge failed", @"The request for a delegate challenge completed successfully but didn't contain a challenge", 0);
      [v21 finishWithError:v15];
    }
  }
}

- (id)_encodedURLRequest
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = AMSSetLogKeyIfNeeded();
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = objc_opt_class();
    v20 = 2114;
    v21 = v3;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Begin extracting URL endpoint from bag", buf, 0x16u);
  }

  v6 = objc_alloc_init(AMSMutablePromise);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__AMSDelegateAuthenticateRequestTask__encodedURLRequest__block_invoke;
  v16[3] = &unk_1E73B32F0;
  v16[4] = self;
  v7 = v3;
  v17 = v7;
  [(AMSPromise *)v6 addErrorBlock:v16];
  v8 = [(AMSDelegateAuthenticateRequestTask *)self bag];
  v9 = [v8 URLForKey:@"delegateChallengeTokenUrl"];
  valuePromise = [v9 valuePromise];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__AMSDelegateAuthenticateRequestTask__encodedURLRequest__block_invoke_22;
  v14[3] = &unk_1E73B68C8;
  v14[4] = self;
  v15 = v7;
  v11 = v7;
  v12 = [valuePromise continueWithBlock:v14];

  return v12;
}

void __56__AMSDelegateAuthenticateRequestTask__encodedURLRequest__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode request for delegateChallengeTokenUrl, error: %{public}@", &v8, 0x20u);
  }
}

id __56__AMSDelegateAuthenticateRequestTask__encodedURLRequest__block_invoke_22(uint64_t a1, void *a2, void *a3)
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
      v10 = *(a1 + 40);
      v11 = AMSHashIfNeeded(@"delegateAuthenticateAccount");
      *buf = 138544130;
      v24 = v9;
      v25 = 2114;
      v26 = v10;
      v27 = 2112;
      v28 = v11;
      v29 = 2114;
      v30 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to find key: %@, error: %{public}@", buf, 0x2Au);
    }

    v12 = [AMSPromise promiseWithError:v6];
  }

  else
  {
    v13 = objc_alloc_init(AMSKeychainOptions);
    [(AMSKeychainOptions *)v13 setStyle:+[AMSKeychainOptions preferredAttestationStyle]];
    [(AMSKeychainOptions *)v13 setPurpose:0];
    v14 = [AMSURLRequestEncoder alloc];
    v15 = [*(a1 + 32) bag];
    v16 = [(AMSURLRequestEncoder *)v14 initWithBag:v15];

    v17 = [*(a1 + 32) account];
    [(AMSURLRequestEncoder *)v16 setAccount:v17];

    [(AMSURLRequestEncoder *)v16 setDialogOptions:2];
    [(AMSURLRequestEncoder *)v16 setLogUUID:*(a1 + 40)];
    [(AMSURLRequestEncoder *)v16 setKeychainOptions:v13];
    [(AMSURLRequestEncoder *)v16 setUrlKnownToBeTrusted:1];
    v12 = [(AMSURLRequestEncoder *)v16 requestWithMethod:2 URL:v5 headers:0 parameters:0];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __56__AMSDelegateAuthenticateRequestTask__encodedURLRequest__block_invoke_25;
    v20[3] = &unk_1E73B68A0;
    v18 = *(a1 + 40);
    v20[4] = *(a1 + 32);
    v21 = v18;
    v22 = v5;
    [v12 addErrorBlock:v20];
  }

  return v12;
}

void __56__AMSDelegateAuthenticateRequestTask__encodedURLRequest__block_invoke_25(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v8 = AMSHashIfNeeded(*(a1 + 48));
    v9 = 138544130;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode request for URL: %@, error: %{public}@", &v9, 0x2Au);
  }
}

+ (id)createBagForSubProfile
{
  bagSubProfile = [objc_opt_class() bagSubProfile];
  bagSubProfileVersion = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  return v4;
}

@end