@interface AMSCompanionAuthenticateTask
- (id)_authenticateWithDelegateAuthToken:(id)a3;
- (id)_encodedAuthenticationRequestWithToken:(id)a3;
- (id)_performAuthenticationRequest:(id)a3;
- (id)performCompanionAuthentication;
@end

@implementation AMSCompanionAuthenticateTask

- (id)performCompanionAuthentication
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__AMSCompanionAuthenticateTask_performCompanionAuthentication__block_invoke;
  v4[3] = &unk_1E73B3588;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

id __62__AMSCompanionAuthenticateTask_performCompanionAuthentication__block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = AMSSetLogKeyIfNeeded();
  v1 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v1)
  {
    v1 = +[AMSLogConfig sharedConfig];
  }

  v2 = [v1 OSLogObject];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543618;
    v7 = objc_opt_class();
    v8 = 2114;
    v9 = v0;
    _os_log_impl(&dword_192869000, v2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Platform not supported", &v6, 0x16u);
  }

  v3 = AMSError(5, @"Companion Auth Error", @"Platform not supported", 0);
  v4 = [AMSPromise promiseWithError:v3];

  return v4;
}

- (id)_authenticateWithDelegateAuthToken:(id)a3
{
  v4 = a3;
  v5 = AMSSetLogKeyIfNeeded();
  v6 = [(AMSCompanionAuthenticateTask *)self _performAuthenticationRequest:v4];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__AMSCompanionAuthenticateTask__authenticateWithDelegateAuthToken___block_invoke;
  v10[3] = &unk_1E73B5F88;
  v10[4] = self;
  v11 = v5;
  v7 = v5;
  v8 = [v6 continueWithBlock:v10];

  return v8;
}

id __67__AMSCompanionAuthenticateTask__authenticateWithDelegateAuthToken___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
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
      v26 = 138543874;
      v27 = v9;
      v28 = 2114;
      v29 = v10;
      v30 = 2114;
      v31 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Companion authentication call failed with error: %{public}@", &v26, 0x20u);
    }

    v11 = [AMSPromise promiseWithError:v6];
  }

  else
  {
    v12 = [v5 object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = +[AMSLogConfig sharedConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = *(a1 + 40);
      v18 = AMSHashIfNeeded(v13);
      v26 = 138543874;
      v27 = v16;
      v28 = 2114;
      v29 = v17;
      v30 = 2114;
      v31 = v18;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Companion authentication call finished with response = %{public}@", &v26, 0x20u);
    }

    if ([v5 responseStatusCode] == 200)
    {
      if (!v13)
      {
        v13 = &unk_1F0779D08;
      }

      v11 = [AMSPromise promiseWithResult:v13];
    }

    else
    {
      v19 = +[AMSLogConfig sharedConfigOversize];
      if (!v19)
      {
        v19 = +[AMSLogConfig sharedConfig];
      }

      v20 = [v19 OSLogObject];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = objc_opt_class();
        v22 = *(a1 + 40);
        v23 = AMSHashIfNeeded(v5);
        v26 = 138543874;
        v27 = v21;
        v28 = 2114;
        v29 = v22;
        v30 = 2114;
        v31 = v23;
        _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unexpected response from server: %{public}@", &v26, 0x20u);
      }

      v24 = AMSError(301, @"Companion authentication Failed", @"Companion authentication call failed with an unexpected server response.", 0);
      v11 = [AMSPromise promiseWithError:v24];
    }
  }

  return v11;
}

- (id)_encodedAuthenticationRequestWithToken:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AMSSetLogKeyIfNeeded();
  v6 = +[AMSLogConfig sharedAccountsConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = objc_opt_class();
    v20 = 2114;
    v21 = v5;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Begin extracting URL endpoint from bag", buf, 0x16u);
  }

  v8 = [(AMSDelegateAuthenticateTask *)self bag];
  v9 = [v8 URLForKey:@"companionAuthenticateUrl"];
  v10 = [v9 valuePromise];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__AMSCompanionAuthenticateTask__encodedAuthenticationRequestWithToken___block_invoke;
  v15[3] = &unk_1E73B5FB0;
  v15[4] = self;
  v16 = v5;
  v17 = v4;
  v11 = v4;
  v12 = v5;
  v13 = [v10 continueWithBlock:v15];

  return v13;
}

id __71__AMSCompanionAuthenticateTask__encodedAuthenticationRequestWithToken___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[AMSLogConfig sharedAccountsConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = *(a1 + 40);
      v12 = AMSHashIfNeeded(@"companionAuthenticateUrl");
      v26 = 138544130;
      v27 = v10;
      v28 = 2114;
      v29 = v11;
      v30 = 2112;
      v31 = v12;
      v32 = 2114;
      v33 = v6;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to find key: %@, error: %{public}@", &v26, 0x2Au);
    }

    v13 = [AMSPromise promiseWithError:v6];
  }

  else
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v8 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = *(a1 + 40);
      v26 = 138543618;
      v27 = v15;
      v28 = 2114;
      v29 = v16;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Completed extracting URL endpoint from bag", &v26, 0x16u);
    }

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v17 ams_setNullableObject:*(a1 + 48) forKey:@"delegateAuthToken"];
    v18 = +[AMSDevice deviceGUID];
    [v17 ams_setNullableObject:v18 forKey:@"guid"];

    v19 = [v17 copy];
    v20 = objc_alloc_init(AMSKeychainOptions);
    [(AMSKeychainOptions *)v20 setStyle:+[AMSKeychainOptions preferredAttestationStyle]];
    [(AMSKeychainOptions *)v20 setPurpose:0];
    v21 = [AMSURLRequestEncoder alloc];
    v22 = [*(a1 + 32) bag];
    v23 = [(AMSURLRequestEncoder *)v21 initWithBag:v22];

    v24 = [*(a1 + 32) account];
    [(AMSURLRequestEncoder *)v23 setAccount:v24];

    [(AMSURLRequestEncoder *)v23 setDialogOptions:2];
    [(AMSURLRequestEncoder *)v23 setLogUUID:*(a1 + 40)];
    [(AMSURLRequestEncoder *)v23 setKeychainOptions:v20];
    [(AMSURLRequestEncoder *)v23 setUrlKnownToBeTrusted:1];
    [(AMSURLRequestEncoder *)v23 setRequestEncoding:3];
    v13 = [(AMSURLRequestEncoder *)v23 requestWithMethod:4 URL:v5 headers:0 parameters:v19];
  }

  return v13;
}

- (id)_performAuthenticationRequest:(id)a3
{
  v4 = a3;
  v5 = AMSSetLogKeyIfNeeded();
  v6 = [(AMSCompanionAuthenticateTask *)self _encodedAuthenticationRequestWithToken:v4];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__AMSCompanionAuthenticateTask__performAuthenticationRequest___block_invoke;
  v10[3] = &unk_1E73B5FD8;
  v10[4] = self;
  v11 = v5;
  v7 = v5;
  v8 = [v6 continueWithBlock:v10];

  return v8;
}

id __62__AMSCompanionAuthenticateTask__performAuthenticationRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedAccountsConfig];
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
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] URL request failed with error: %{public}@", &v14, 0x20u);
    }

    v11 = [AMSPromise promiseWithError:v6];
  }

  else
  {
    v12 = [*(a1 + 32) session];
    v11 = [v12 dataTaskPromiseWithRequest:v5];
  }

  return v11;
}

@end