@interface AMSDelegateTokenTask
- (AMSDelegateTokenTask)initWithDelegateAuthenticateRequest:(id)a3 bag:(id)a4 processInfo:(id)a5 account:(id)a6;
- (id)_parseBiometricsSignatureRequestFromTask:(id)a3;
- (id)_performFallbackAuthentication;
- (id)authenticateTaskWithRequest:(id)a3;
- (id)performRetrieveDelegateToken;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6;
@end

@implementation AMSDelegateTokenTask

- (AMSDelegateTokenTask)initWithDelegateAuthenticateRequest:(id)a3 bag:(id)a4 processInfo:(id)a5 account:(id)a6
{
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AMSDelegateTokenTask;
  v12 = [(AMSDelegateAuthenticateTask *)&v15 initWithDelegateAuthenticateRequest:a3 bag:a4 account:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_processInfo, a5);
  }

  return v13;
}

- (id)performRetrieveDelegateToken
{
  v3 = [AMSMutableLazyPromise alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__AMSDelegateTokenTask_performRetrieveDelegateToken__block_invoke;
  v6[3] = &unk_1E73B56C8;
  v6[4] = self;
  v4 = [(AMSMutableLazyPromise *)v3 initWithBlock:v6];

  return v4;
}

void __52__AMSDelegateTokenTask_performRetrieveDelegateToken__block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AMSSetLogKeyIfNeeded();
  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v39 = objc_opt_class();
    v40 = 2114;
    v41 = v4;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Begin requesting delegate auth endpoint", buf, 0x16u);
  }

  v7 = *(a1 + 32);
  v37 = 0;
  v8 = [v7 _encodedURLRequestWithError:&v37];
  v9 = v37;
  if (v9)
  {
    v10 = v9;
    v11 = +[AMSLogConfig sharedConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      *buf = 138543874;
      v39 = v13;
      v40 = 2114;
      v41 = v4;
      v42 = 2114;
      v43 = v10;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Encoding URL request failed with error: %{public}@", buf, 0x20u);
    }

    [v3 finishWithError:v10];
  }

  else
  {
    v14 = objc_alloc_init(AMSPromise);
    v15 = [*(a1 + 32) session];
    v16 = [(AMSPromise *)v14 completionHandlerAdapter];
    v17 = [v15 dataTaskWithRequest:v8 completionHandler:v16];

    v18 = [AMSURLTaskInfo createTaskInfoForTask:v17];
    [*(a1 + 32) setTaskInfo:v18];

    [v17 resume];
    v36 = 0;
    v19 = [(AMSPromise *)v14 resultWithError:&v36];
    v10 = v36;
    if (v10)
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
        *buf = 138543874;
        v39 = v22;
        v40 = 2114;
        v41 = v4;
        v42 = 2114;
        v43 = v10;
        _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] URL request failed with error: %{public}@", buf, 0x20u);
      }

      [v3 finishWithError:v10];
    }

    else
    {
      v23 = [*(a1 + 32) _parseFormDataFromResult:v19];
      [*(a1 + 32) setFormData:v23];

      [*(a1 + 32) setUrlResult:v19];
      v24 = +[AMSLogConfig sharedConfig];
      if (!v24)
      {
        v24 = +[AMSLogConfig sharedConfig];
      }

      v25 = [v24 OSLogObject];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        *buf = 138543618;
        v39 = v26;
        v40 = 2114;
        v41 = v4;
        _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Completed requesting delegate auth endpoint", buf, 0x16u);
      }

      v27 = [*(a1 + 32) _parseBiometricsSignatureRequestFromTask:v17];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __52__AMSDelegateTokenTask_performRetrieveDelegateToken__block_invoke_4;
      v34[3] = &unk_1E73B6A08;
      v34[4] = *(a1 + 32);
      v28 = v4;
      v35 = v28;
      v29 = [v27 continueWithBlock:v34];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __52__AMSDelegateTokenTask_performRetrieveDelegateToken__block_invoke_2;
      v31[3] = &unk_1E73B6A30;
      v31[4] = *(a1 + 32);
      v32 = v28;
      v33 = v3;
      [v29 resultWithCompletion:v31];

      v19 = v30;
    }
  }
}

id __52__AMSDelegateTokenTask_performRetrieveDelegateToken__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) setSignatureResult:a2];
    v6 = [*(a1 + 32) performDelegateAuthentication];
  }

  else
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
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      v19 = 2114;
      v20 = v5;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Biometrics failed with error: %{public}@", buf, 0x20u);
    }

    if ([v5 ams_hasDomain:@"AMSErrorDomain" code:6])
    {
      v11 = AMSError(100, @"Biometrics were canceled during authentication", 0, v5);
      v12 = [AMSPromise promiseWithError:v11];
    }

    else
    {
      v11 = [*(a1 + 32) _performFallbackAuthentication];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __52__AMSDelegateTokenTask_performRetrieveDelegateToken__block_invoke_5;
      v14[3] = &unk_1E73B69E0;
      v14[4] = *(a1 + 32);
      v12 = [v11 continueWithBlock:v14];
    }

    v6 = v12;
  }

  return v6;
}

id __52__AMSDelegateTokenTask_performRetrieveDelegateToken__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    [AMSPromise promiseWithError:?];
  }

  else
  {
    [*(a1 + 32) performDelegateAuthentication];
  }
  v3 = ;

  return v3;
}

void __52__AMSDelegateTokenTask_performRetrieveDelegateToken__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 serverResponse];
  v7 = [AMSDelegateAuthenticateResult alloc];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v6];
  v9 = [(AMSDelegateAuthenticateResult *)v7 initWithServerResponse:v8];

  if (v5)
  {
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = *(a1 + 40);
      v17 = 138543874;
      v18 = v12;
      v19 = 2114;
      v20 = v13;
      v21 = 2114;
      v22 = v5;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] An error occurred while attempting to get delegate token: %{public}@", &v17, 0x20u);
    }

    [*(a1 + 48) finishWithError:v5];
  }

  else
  {
    v14 = [(AMSDelegateAuthenticateResult *)v9 token];

    v15 = *(a1 + 48);
    if (v14)
    {
      [v15 finishWithResult:v9];
    }

    else
    {
      v16 = AMSError(100, @"Failed to retrieve a Delegate Token", 0, 0);
      [v15 finishWithError:v16];
    }
  }
}

- (id)_parseBiometricsSignatureRequestFromTask:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v4 = AMSSetLogKeyIfNeeded();
  v5 = objc_alloc_init(AMSKeychainOptions);
  [(AMSKeychainOptions *)v5 setStyle:+[AMSKeychainOptions preferredAttestationStyle]];
  [(AMSKeychainOptions *)v5 setPurpose:0];
  v6 = +[AMSLogConfig sharedConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v29 = objc_opt_class();
    v30 = 2114;
    v31 = v4;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Proceeding with local authorization for delegate buy", buf, 0x16u);
  }

  v8 = v4;

  v9 = [v25 response];
  v10 = [(AMSDelegateAuthenticateTask *)self account];
  v11 = [(AMSDelegateAuthenticateTask *)self session];
  v12 = [(AMSDelegateTokenTask *)self processInfo];
  v13 = v12;
  if (!v12)
  {
    v13 = +[AMSProcessInfo currentProcess];
  }

  v27 = 0;
  v14 = [AMSBiometricsSignatureRequest biometricsSignatureRequestForURLResponse:v9 account:v10 session:v11 task:v25 clientInfo:v13 options:v5 error:&v27];
  v15 = v27;
  if (!v12)
  {
  }

  if (v14)
  {
    v16 = objc_alloc_init(AMSMutablePromise);
    v17 = [[AMSBiometricsSignatureTask alloc] initWithRequest:v14];

    v18 = [(AMSBiometricsSignatureTask *)v17 performSignature];
    v26 = 0;
    v19 = [v18 resultWithError:&v26];
    v15 = v26;

    if (v19)
    {
      [(AMSMutablePromise *)v16 finishWithResult:v19];
    }

    else if (v15)
    {
      [(AMSMutablePromise *)v16 finishWithError:v15];
    }

    else
    {
      v23 = AMSError(0, @"An unknown error with biometrics occurred", 0, 0);
      [(AMSMutablePromise *)v16 finishWithError:v23];
    }
  }

  else
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
      *buf = 138543874;
      v29 = v22;
      v30 = 2114;
      v31 = v8;
      v32 = 2114;
      v33 = v15;
      _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Could not create biometrics signature request. error: %{public}@", buf, 0x20u);
    }

    v16 = [AMSPromise promiseWithError:v15];
  }

  return v16;
}

- (id)_performFallbackAuthentication
{
  v3 = [(AMSDelegateTokenTask *)self urlResult];
  v4 = [v3 response];
  v5 = [(AMSDelegateTokenTask *)self taskInfo];
  v6 = [AMSFinanceAuthenticateResponse performAuthFromResponse:v4 taskInfo:v5];
  v21 = 0;
  v7 = [v6 resultWithError:&v21];
  v8 = v21;

  v9 = [v7 value];
  v10 = v9;
  if (!v9)
  {
    v11 = @"Authentication failed";
LABEL_5:
    v12 = v8;
    goto LABEL_6;
  }

  if ([v9 actionType] == 3)
  {
    v11 = @"The Authentication Attempt was cancelled";
    v12 = 0;
LABEL_6:
    v13 = AMSError(100, v11, 0, v12);
    v14 = [AMSPromise promiseWithError:v13];
LABEL_7:
    v15 = v14;
    goto LABEL_8;
  }

  v17 = [v10 error];

  if (v17)
  {
    v13 = [v10 error];
    v18 = AMSError(100, @"The Authentication Attempt encountered an error", 0, v13);
    v15 = [AMSPromise promiseWithError:v18];

    goto LABEL_8;
  }

  if (v8)
  {
    v11 = @"The Authentication Attempt encountered an error";
    goto LABEL_5;
  }

  v19 = [v10 authenticateResult];
  if (v19)
  {
    v13 = v19;
    v14 = [AMSPromise promiseWithResult:v19];
    goto LABEL_7;
  }

  v20 = AMSError(100, @"The Authentication Attempt encountered an error", 0, 0);
  v15 = [AMSPromise promiseWithError:v20];

  v13 = 0;
LABEL_8:

  return v15;
}

- (id)authenticateTaskWithRequest:(id)a3
{
  v3 = a3;
  v4 = [[AMSAuthenticateTask alloc] initWithRequest:v3];

  return v4;
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = [(AMSDelegateTokenTask *)self authenticateTaskWithRequest:a5];
  v10 = [v9 performAuthentication];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__AMSDelegateTokenTask_AMSURLSession_task_handleAuthenticateRequest_completion___block_invoke;
  v12[3] = &unk_1E73B6A58;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 resultWithCompletion:v12];
}

void __80__AMSDelegateTokenTask_AMSURLSession_task_handleAuthenticateRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[AMSLogConfig sharedConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    v11 = AMSHashIfNeeded(v5);
    v14 = 138543874;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling AMSAuthenticateRequest. authenticateRequest = %{public}@", &v14, 0x20u);
  }

  v12 = [v5 account];

  if (v12)
  {
    v13 = [v5 account];
    [*(a1 + 32) setAccount:v13];
  }

  (*(*(a1 + 40) + 16))();
}

@end