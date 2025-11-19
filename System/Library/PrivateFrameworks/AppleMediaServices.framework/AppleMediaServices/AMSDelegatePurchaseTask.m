@interface AMSDelegatePurchaseTask
- (AMSDelegatePurchaseTask)initWithDelegatePurchaseRequest:(id)a3 bag:(id)a4 account:(id)a5;
- (BOOL)cancel;
- (id)_delegateAuthenticateURL;
- (id)_fetchDelegateAuthResultWithRequest:(id)a3 error:(id *)a4;
- (id)_finishWithDelegateAuthenticateResult:(id)a3 resultError:(id)a4 outError:(id *)a5;
- (id)_performAuthenticateTaskWithPaymentSheet;
- (id)_performAuthenticateTaskWithPaymentSheetResult:(id)a3;
- (id)_performPaymentSheetTask;
- (id)_urlRequestForDelegateAuthWithError:(id *)a3;
- (id)_urlRequestParameters;
- (id)performDelegatePurchase;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6;
- (void)_parseBiometricsSignatureRequestFromTask:(id)a3;
@end

@implementation AMSDelegatePurchaseTask

- (AMSDelegatePurchaseTask)initWithDelegatePurchaseRequest:(id)a3 bag:(id)a4 account:(id)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = AMSDelegatePurchaseTask;
  v10 = [(AMSDelegateAuthenticateTask *)&v13 initWithBag:a4 account:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_request, a3);
  }

  return v11;
}

- (BOOL)cancel
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = AMSLogKey();
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      v2 = AMSLogKey();
      [v7 stringWithFormat:@"%@: [%@] ", v9, v2];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    v11 = [(AMSDelegatePurchaseTask *)self paymentSheetTask];
    v12 = AMSHashIfNeeded(v11);
    *buf = 138543618;
    v17 = v10;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Cancelling payment sheet task: %{public}@", buf, 0x16u);

    if (v6)
    {

      v10 = v2;
    }
  }

  v13 = [(AMSDelegatePurchaseTask *)self paymentSheetTask];
  [v13 cancel];

  v15.receiver = self;
  v15.super_class = AMSDelegatePurchaseTask;
  return [(AMSTask *)&v15 cancel];
}

- (id)performDelegatePurchase
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__AMSDelegatePurchaseTask_performDelegatePurchase__block_invoke;
  v5[3] = &unk_1E73B5F18;
  objc_copyWeak(&v6, &location);
  v3 = [(AMSTask *)self performTaskWithBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

id __50__AMSDelegatePurchaseTask_performDelegatePurchase__block_invoke(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = AMSSetLogKeyIfNeeded();
  if (![WeakRetained isCancelled])
  {
    v48 = 0;
    v13 = [WeakRetained _urlRequestForDelegateAuthWithError:&v48];
    v14 = v48;
    if (v14)
    {
      v10 = v14;
      if (a2)
      {
        v15 = v14;
        v12 = 0;
        *a2 = v10;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_34;
    }

    v47 = 0;
    v16 = [WeakRetained _fetchDelegateAuthResultWithRequest:v13 error:&v47];
    v17 = v47;
    if (v17 && !v16)
    {
      v12 = [WeakRetained _finishWithDelegateAuthenticateResult:0 resultError:v17 outError:a2];
      v10 = 0;
LABEL_33:

LABEL_34:
      goto LABEL_35;
    }

    v18 = [WeakRetained _delegateAuthenticateResultFromUrlResult:v16];
    v19 = [v18 token];
    if (v19)
    {
    }

    else
    {
      v20 = [WeakRetained request];
      v21 = [v20 requiresDelegateToken];

      if (v21)
      {
        [WeakRetained setDelegateAuthResult:v16];
        v22 = [WeakRetained _parseFormDataFromResult:v16];
        [WeakRetained setFormData:v22];

        v23 = [WeakRetained paymentSheetResult];

        if (v23 || ([v16 task], v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(WeakRetained, "_parseBiometricsSignatureRequestFromTask:", v34), v34, objc_msgSend(WeakRetained, "_performAuthenticateTaskWithPaymentSheet"), v35 = objc_claimAutoreleasedReturnValue(), v46 = 0, v36 = objc_msgSend(v35, "resultWithError:", &v46), v10 = v46, v35, !v10))
        {
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
            v50 = v26;
            v51 = 2114;
            v52 = v4;
            _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Begin fetching delegate auth token", buf, 0x16u);
          }

          v27 = [WeakRetained performDelegateAuthentication];
          v45 = 0;
          v44 = [v27 resultWithError:&v45];
          v10 = v45;

          v28 = +[AMSLogConfig sharedConfig];
          v29 = v28;
          if (v10)
          {
            if (!v28)
            {
              v29 = +[AMSLogConfig sharedConfig];
            }

            v30 = [v29 OSLogObject];
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v31 = objc_opt_class();
              *buf = 138543874;
              v50 = v31;
              v51 = 2114;
              v52 = v4;
              v53 = 2114;
              v54 = v10;
              _os_log_impl(&dword_192869000, v30, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Delegate authenticate task failed with error: %{public}@", buf, 0x20u);
            }

            if (a2)
            {
              v32 = v10;
              v12 = 0;
              *a2 = v10;
            }

            else
            {
              v12 = 0;
            }

            v43 = v44;
          }

          else
          {
            if (!v28)
            {
              v29 = +[AMSLogConfig sharedConfig];
            }

            v41 = [v29 OSLogObject];
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              v42 = objc_opt_class();
              *buf = 138543618;
              v50 = v42;
              v51 = 2114;
              v52 = v4;
              _os_log_impl(&dword_192869000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Completed fetching delegate auth token", buf, 0x16u);
            }

            v43 = v44;
            v12 = [WeakRetained _finishWithDelegateAuthenticateResult:v44 resultError:0 outError:a2];
          }
        }

        else
        {
          v37 = +[AMSLogConfig sharedConfig];
          if (!v37)
          {
            v37 = +[AMSLogConfig sharedConfig];
          }

          v38 = [v37 OSLogObject];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = objc_opt_class();
            *buf = 138543874;
            v50 = v39;
            v51 = 2114;
            v52 = v4;
            v53 = 2114;
            v54 = v10;
            _os_log_impl(&dword_192869000, v38, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Delegate authenticate task failed with error: %{public}@", buf, 0x20u);
          }

          if (a2)
          {
            v40 = v10;
            v12 = 0;
            *a2 = v10;
          }

          else
          {
            v12 = 0;
          }
        }

        goto LABEL_32;
      }
    }

    v12 = [WeakRetained _finishWithDelegateAuthenticateResult:v18 resultError:0 outError:a2];
    v10 = 0;
LABEL_32:

    goto LABEL_33;
  }

  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    *buf = 138543618;
    v50 = v7;
    v51 = 2114;
    v52 = v8;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Ending early due to cancelled task", buf, 0x16u);
  }

  v9 = AMSError(6, @"Early Cancellation", @"The task was cancelled before it began.", 0);
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    v12 = 0;
    *a2 = v10;
  }

  else
  {
    v12 = 0;
  }

LABEL_35:

  return v12;
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v13 = +[AMSLogConfig sharedConfig];
  v14 = v13;
  if (isKindOfClass)
  {
    if (!v13)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      v18 = AMSHashIfNeeded(v10);
      *buf = 138543874;
      v33 = v16;
      v34 = 2114;
      v35 = v17;
      v36 = 2114;
      v37 = v18;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling AMSDelegateAuthenticateRequest. authenticateRequest = %{public}@", buf, 0x20u);
    }

    [(AMSDelegatePurchaseTask *)self _parseBiometricsSignatureRequestFromTask:v9];
    v19 = [(AMSDelegatePurchaseTask *)self _performAuthenticateTaskWithPaymentSheet];
    v31 = 0;
    v20 = [v19 resultWithError:&v31];
    v21 = v31;

    v11[2](v11, v20, v21);
  }

  else
  {
    if (!v13)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v22 = [v14 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v24 = AMSLogKey();
      v25 = AMSHashIfNeeded(v10);
      *buf = 138543874;
      v33 = v23;
      v34 = 2114;
      v35 = v24;
      v36 = 2114;
      v37 = v25;
      _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling AMSAuthenticateRequest. authenticateRequest = %{public}@", buf, 0x20u);
    }

    v21 = [[AMSAuthenticateTask alloc] initWithRequest:v10];
    v26 = [(AMSAuthenticateTask *)v21 performAuthentication];
    v30 = 0;
    v27 = [v26 resultWithError:&v30];
    v20 = v30;

    v28 = [v27 account];

    if (v28)
    {
      v29 = [v27 account];
      [(AMSDelegateAuthenticateTask *)self setAccount:v29];
    }

    v11[2](v11, v27, v20);
  }
}

- (id)_delegateAuthenticateURL
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = AMSSetLogKeyIfNeeded();
  v4 = [(AMSDelegateAuthenticateTask *)self bag];
  v5 = [v4 URLForKey:@"delegateAuthenticateBuy"];
  v18 = 0;
  v6 = [v5 valueWithError:&v18];
  v7 = v18;

  if ([v7 ams_hasDomain:@"AMSErrorDomain" code:204])
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {

    v9 = [(AMSDelegateAuthenticateTask *)self bag];
    v10 = [v9 URLForKey:@"delegateAuthenticateAccount"];
    v17 = 0;
    v6 = [v10 valueWithError:&v17];
    v7 = v17;
  }

  if (v7)
  {
    v11 = +[AMSLogConfig sharedConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = AMSHashIfNeeded(@"delegateAuthenticateAccount");
      *buf = 138544130;
      v20 = v13;
      v21 = 2114;
      v22 = v3;
      v23 = 2112;
      v24 = v14;
      v25 = 2114;
      v26 = v7;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to find key: %@, error: %{public}@", buf, 0x2Au);
    }

    v15 = 0;
  }

  else
  {
    v15 = v6;
  }

  return v15;
}

- (id)_fetchDelegateAuthResultWithRequest:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(AMSPromise);
  v8 = [(AMSDelegateAuthenticateTask *)self session];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __69__AMSDelegatePurchaseTask__fetchDelegateAuthResultWithRequest_error___block_invoke;
  v30[3] = &unk_1E73B6968;
  v30[4] = self;
  v9 = [(AMSPromise *)v7 completionHandlerAdapter];
  [v8 createDataTaskWithRequest:v6 activity:0 dataTaskCreationCompletionHandler:v30 requestCompletionHandler:v9];

  v29 = 0;
  v10 = [(AMSPromise *)v7 resultWithError:&v29];
  v11 = v29;
  v12 = +[AMSLogConfig sharedConfig];
  v13 = v12;
  if (v11)
  {
    if (!v12)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = AMSLogKey();
      v16 = MEMORY[0x1E696AEC0];
      v17 = objc_opt_class();
      v18 = v17;
      if (v15)
      {
        self = AMSLogKey();
        [v16 stringWithFormat:@"%@: [%@] ", v18, self];
      }

      else
      {
        [v16 stringWithFormat:@"%@: ", v17];
      }
      v19 = ;
      *buf = 138543618;
      v32 = v19;
      v33 = 2114;
      v34 = v11;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@URL request failed with error: %{public}@", buf, 0x16u);
      if (v15)
      {

        v19 = self;
      }
    }

    if (a4)
    {
      v26 = v11;
      v27 = 0;
      *a4 = v11;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    if (!v12)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v20 = [v13 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = AMSLogKey();
      v22 = MEMORY[0x1E696AEC0];
      v23 = objc_opt_class();
      v24 = v23;
      if (v21)
      {
        self = AMSLogKey();
        [v22 stringWithFormat:@"%@: [%@] ", v24, self];
      }

      else
      {
        [v22 stringWithFormat:@"%@: ", v23];
      }
      v25 = ;
      *buf = 138543362;
      v32 = v25;
      _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Completed requesting delegate auth endpoint", buf, 0xCu);
      if (v21)
      {

        v25 = self;
      }
    }

    v27 = v10;
  }

  return v27;
}

void __69__AMSDelegatePurchaseTask__fetchDelegateAuthResultWithRequest_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [AMSURLTaskInfo createTaskInfoForTask:v4];
  [*(a1 + 32) setDelegateAuthTaskInfo:v3];

  [v4 resume];
}

- (id)_finishWithDelegateAuthenticateResult:(id)a3 resultError:(id)a4 outError:(id *)a5
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a3;
  v10 = AMSSetLogKeyIfNeeded();
  v11 = [v9 serverResponse];

  v12 = [(AMSDelegateAuthenticateResult *)[AMSDelegatePurchaseResult alloc] initWithServerResponse:v11];
  if ([v8 ams_hasDomain:@"AMSErrorDomain" code:6])
  {
    v13 = +[AMSLogConfig sharedPurchaseOversizeConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v47 = v10;
      v15 = AMSLogKey();
      v16 = MEMORY[0x1E696AEC0];
      v17 = objc_opt_class();
      v18 = v17;
      if (v15)
      {
        self = AMSLogKey();
        [v16 stringWithFormat:@"%@: [%@] ", v18, self];
      }

      else
      {
        [v16 stringWithFormat:@"%@: ", v17];
      }
      v19 = ;
      v37 = AMSLogableError(v8);
      *buf = 138543618;
      v50 = v19;
      v51 = 2114;
      v52 = v37;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@The purchase was canceled. error = %{public}@", buf, 0x16u);
      if (v15)
      {

        v19 = self;
      }

      v10 = v47;
    }

    v27 = @"Purchase was cancelled";
    v28 = @"The presented purchase was canceled.";
    v29 = 6;
LABEL_26:
    v38 = AMSError(v29, v27, v28, 0);
    if (a5)
    {
      v38 = v38;
      *a5 = v38;
    }

    v39 = 0;
    goto LABEL_39;
  }

  v20 = [(AMSDelegateAuthenticateResult *)v12 token];
  if (v20)
  {
  }

  else
  {
    v21 = [(AMSDelegatePurchaseTask *)self request];
    v22 = [v21 requiresDelegateToken];

    if (v22)
    {
      v23 = +[AMSLogConfig sharedPurchaseOversizeConfig];
      if (!v23)
      {
        v23 = +[AMSLogConfig sharedConfig];
      }

      v24 = [v23 OSLogObject];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        v26 = AMSHashIfNeeded(v12);
        *buf = 138543874;
        v50 = v25;
        v51 = 2114;
        v52 = v10;
        v53 = 2114;
        v54 = v26;
        _os_log_impl(&dword_192869000, v24, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Delegate authenticate result missing token: %{public}@", buf, 0x20u);
      }

      v27 = @"Missing Delegate Token";
      v28 = @"The authentication result is missing a token.";
      v29 = 7;
      goto LABEL_26;
    }
  }

  if (v8)
  {
    v30 = +[AMSLogConfig sharedPurchaseOversizeConfig];
    if (!v30)
    {
      v30 = +[AMSLogConfig sharedConfig];
    }

    v31 = [v30 OSLogObject];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v48 = v10;
      v32 = AMSLogKey();
      v33 = MEMORY[0x1E696AEC0];
      v34 = objc_opt_class();
      v35 = v34;
      if (v32)
      {
        v46 = AMSLogKey();
        [v33 stringWithFormat:@"%@: [%@] ", v35, v46];
      }

      else
      {
        [v33 stringWithFormat:@"%@: ", v34];
      }
      v36 = ;
      v40 = AMSLogableError(v8);
      *buf = 138543618;
      v50 = v36;
      v51 = 2114;
      v52 = v40;
      _os_log_impl(&dword_192869000, v31, OS_LOG_TYPE_ERROR, "%{public}@Purchase returned an error but we have a result. error = %{public}@", buf, 0x16u);
      if (v32)
      {

        v36 = v46;
      }

      v10 = v48;
    }
  }

  v41 = +[AMSLogConfig sharedConfig];
  if (!v41)
  {
    v41 = +[AMSLogConfig sharedConfig];
  }

  v42 = [v41 OSLogObject];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = objc_opt_class();
    *buf = 138543618;
    v50 = v43;
    v51 = 2114;
    v52 = v10;
    _os_log_impl(&dword_192869000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Delegate purchase task completed successfully", buf, 0x16u);
  }

  v44 = [(AMSDelegatePurchaseTask *)self request];
  [(AMSDelegatePurchaseResult *)v12 setRequest:v44];

  v39 = v12;
LABEL_39:

  return v39;
}

- (void)_parseBiometricsSignatureRequestFromTask:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AMSSetLogKeyIfNeeded();
  v6 = objc_alloc_init(AMSKeychainOptions);
  [(AMSKeychainOptions *)v6 setStyle:+[AMSKeychainOptions preferredAttestationStyle]];
  [(AMSKeychainOptions *)v6 setPurpose:0];
  v7 = +[AMSLogConfig sharedConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = objc_opt_class();
    v22 = 2114;
    v23 = v5;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Proceeding with local authorization for delegate buy", buf, 0x16u);
  }

  v9 = [v4 response];
  v10 = [(AMSDelegateAuthenticateTask *)self account];
  v11 = [(AMSDelegateAuthenticateTask *)self session];
  v12 = +[AMSProcessInfo currentProcess];
  v19 = 0;
  v13 = [AMSBiometricsSignatureRequest biometricsSignatureRequestForURLResponse:v9 account:v10 session:v11 task:v4 clientInfo:v12 options:v6 error:&v19];

  v14 = v19;
  [(AMSDelegatePurchaseTask *)self setBiometricsRequest:v13];

  v15 = [(AMSDelegatePurchaseTask *)self biometricsRequest];

  if (!v15)
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
      *buf = 138543874;
      v21 = v18;
      v22 = 2114;
      v23 = v5;
      v24 = 2114;
      v25 = v14;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Could not create biometrics signature request. error: %{public}@", buf, 0x20u);
    }
  }
}

- (id)_performAuthenticateTaskWithPaymentSheetResult:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AMSSetLogKeyIfNeeded();
  v6 = +[AMSLogConfig sharedConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543618;
    v22 = objc_opt_class();
    v23 = 2114;
    v24 = v5;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting authenticate task", &v21, 0x16u);
  }

  v8 = [v4 passwordEquivalentToken];

  if (v8)
  {
    v9 = 1;
  }

  else
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
      v21 = 138543618;
      v22 = v12;
      v23 = 2114;
      v24 = v5;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Payment sheet result has no password, falling back to silent-preferred authentication.", &v21, 0x16u);
    }

    v9 = 0;
  }

  v13 = objc_alloc_init(AMSAuthenticateOptions);
  [(AMSAuthenticateOptions *)v13 setAllowServerDialogs:1];
  [(AMSAuthenticateOptions *)v13 setAuthenticationType:v9];
  [(AMSAuthenticateOptions *)v13 setCanMakeAccountActive:0];
  v14 = +[AMSProcessInfo currentProcess];
  [(AMSAuthenticateOptions *)v13 setClientInfo:v14];

  [(AMSAuthenticateOptions *)v13 setCredentialSource:2];
  [(AMSAuthenticateOptions *)v13 setDebugReason:@"[AMSDelegatePurchaseTask _performAuthenticateTaskWithPaymentSheetResult:]"];
  v15 = [AMSAuthenticateTask alloc];
  v16 = [(AMSDelegateAuthenticateTask *)self account];
  v17 = [(AMSAuthenticateTask *)v15 initWithAccount:v16 options:v13];

  v18 = [v4 passwordEquivalentToken];
  [(AMSAuthenticateTask *)v17 setPassword:v18];

  v19 = [(AMSAuthenticateTask *)v17 performAuthentication];

  return v19;
}

- (id)_performAuthenticateTaskWithPaymentSheet
{
  objc_initWeak(&location, self);
  v2 = [AMSMutableLazyPromise alloc];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__AMSDelegatePurchaseTask__performAuthenticateTaskWithPaymentSheet__block_invoke;
  v5[3] = &unk_1E73B6990;
  objc_copyWeak(&v6, &location);
  v3 = [(AMSMutableLazyPromise *)v2 initWithBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

void __67__AMSDelegatePurchaseTask__performAuthenticateTaskWithPaymentSheet__block_invoke(uint64_t a1, void *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = AMSSetLogKeyIfNeeded();
    v6 = [WeakRetained _performPaymentSheetTask];
    v50 = 0;
    v7 = [v6 resultWithError:&v50];
    v8 = v50;
    [WeakRetained setPaymentSheetResult:v7];

    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = [WeakRetained paymentSheetResult];
      v13 = AMSHashIfNeeded(v12);
      *buf = 138543874;
      v52 = v11;
      v53 = 2114;
      v54 = v5;
      v55 = 2114;
      v56 = v13;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Delegate payment sheet completed with result: %{public}@", buf, 0x20u);
    }

    v14 = +[AMSLogConfig sharedConfig];
    v15 = v14;
    if (v8)
    {
      if (!v14)
      {
        v15 = +[AMSLogConfig sharedConfig];
      }

      v16 = [v15 OSLogObject];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        *buf = 138543874;
        v52 = v17;
        v53 = 2114;
        v54 = v5;
        v55 = 2114;
        v56 = v8;
        _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Delegate payment sheet failed with error: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      if (!v14)
      {
        v15 = +[AMSLogConfig sharedConfig];
      }

      v19 = [v15 OSLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v48 = v5;
        v20 = objc_opt_class();
        v21 = MEMORY[0x1E696AD98];
        v47 = [WeakRetained paymentSheetResult];
        v22 = [v47 signatureResult];
        v23 = [v21 numberWithInt:v22 != 0];
        v24 = MEMORY[0x1E696AD98];
        v25 = [WeakRetained paymentSheetResult];
        v26 = [v25 passwordEquivalentToken];
        v27 = [v24 numberWithInt:v26 != 0];
        *buf = 138544130;
        v52 = v20;
        v5 = v48;
        v53 = 2114;
        v54 = v48;
        v55 = 2114;
        v56 = v23;
        v57 = 2114;
        v58 = v27;
        _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Delegate payment sheet completed with biometric signature: %{public}@, PET: %{public}@", buf, 0x2Au);
      }

      v28 = [WeakRetained paymentSheetResult];
      v29 = [v28 signatureResult];

      v30 = [WeakRetained paymentSheetResult];
      v31 = v30;
      if (v29)
      {
        v32 = [v30 signatureResult];
        [WeakRetained setSignatureResult:v32];

        v33 = [AMSAuthenticateResult alloc];
        v34 = [WeakRetained account];
        v8 = [(AMSAuthenticateResult *)v33 initWithAccount:v34];

        [v3 finishWithResult:v8];
        goto LABEL_34;
      }

      v35 = [v30 passwordEquivalentToken];

      if (v35)
      {
        v36 = [WeakRetained paymentSheetResult];
        v37 = [WeakRetained _performAuthenticateTaskWithPaymentSheetResult:v36];
        v49 = 0;
        v38 = [v37 resultWithError:&v49];
        v8 = v49;

        v39 = +[AMSLogConfig sharedConfig];
        if (!v39)
        {
          v39 = +[AMSLogConfig sharedConfig];
        }

        v40 = [v39 OSLogObject];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = objc_opt_class();
          v42 = AMSHashIfNeeded(v38);
          *buf = 138543874;
          v52 = v41;
          v53 = 2114;
          v54 = v5;
          v55 = 2114;
          v56 = v42;
          _os_log_impl(&dword_192869000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Authentication task completed with result: %{public}@", buf, 0x20u);
        }

        if (v8)
        {
          v43 = +[AMSLogConfig sharedConfig];
          if (!v43)
          {
            v43 = +[AMSLogConfig sharedConfig];
          }

          v44 = [v43 OSLogObject];
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v45 = objc_opt_class();
            *buf = 138543874;
            v52 = v45;
            v53 = 2114;
            v54 = v5;
            v55 = 2114;
            v56 = v8;
            _os_log_impl(&dword_192869000, v44, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Authentication task failed with error: %{public}@", buf, 0x20u);
          }

          [v3 finishWithError:v8];
        }

        else
        {
          v46 = [v38 account];
          [WeakRetained setAccount:v46];

          [v3 finishWithResult:v38];
        }

        goto LABEL_34;
      }

      v8 = AMSError(0, @"Missing Authentication", @"The result had neither a signature result nor a PET.", 0);
    }

    [v3 finishWithError:v8];
LABEL_34:

    goto LABEL_35;
  }

  v18 = AMSError(0, 0, 0, 0);
  [v3 finishWithError:v18];

LABEL_35:
}

- (id)_performPaymentSheetTask
{
  v46 = *MEMORY[0x1E69E9840];
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
    v43 = objc_opt_class();
    v44 = 2114;
    v45 = v3;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting payment sheet task", buf, 0x16u);
  }

  if (![(AMSTask *)self isCancelled])
  {
    v13 = [(AMSDelegatePurchaseTask *)self delegateAuthResult];
    v14 = [v13 object];
    v15 = [v14 objectForKeyedSubscript:@"dialog"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;

      if (v16)
      {
        v17 = [(AMSDelegatePurchaseTask *)self delegateAuthResult];
        v11 = [v17 object];
        goto LABEL_18;
      }
    }

    else
    {
    }

    v18 = [(AMSDelegatePurchaseTask *)self request];
    v19 = [v18 purchaseResult];
    v20 = [v19 responseDictionary];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;

      if (v21)
      {
        v40 = @"dialog";
        v17 = [(AMSDelegatePurchaseTask *)self request];
        v22 = [v17 purchaseResult];
        v23 = [v22 responseDictionary];
        v41 = v23;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];

LABEL_18:
        if (v11)
        {
          v24 = [AMSFinancePaymentSheetResponse alloc];
          v25 = [(AMSDelegatePurchaseTask *)self biometricsRequest];
          v26 = [(AMSDelegatePurchaseTask *)self delegateAuthTaskInfo];
          v27 = [(AMSFinancePaymentSheetResponse *)v24 initWithResponseDictionary:v11 confirmationOnly:0 delegateAuthenticationRequired:1 biometricSignatureRequired:v25 != 0 taskInfo:v26];

          v28 = [AMSPaymentSheetTask alloc];
          v29 = [(AMSFinancePaymentSheetResponse *)v27 paymentSheetRequest];
          v30 = [(AMSDelegateAuthenticateTask *)self bag];
          v31 = [(AMSPaymentSheetTask *)v28 initWithRequest:v29 bag:v30];

          v32 = [(AMSPaymentSheetTask *)v31 _buildPaymentRequest];
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __51__AMSDelegatePurchaseTask__performPaymentSheetTask__block_invoke;
          v38[3] = &unk_1E73B69B8;
          v38[4] = self;
          v39 = v27;
          v33 = v27;
          v6 = [v32 thenWithBlock:v38];

          goto LABEL_27;
        }
      }
    }

    else
    {
    }

    v34 = +[AMSLogConfig sharedConfig];
    if (!v34)
    {
      v34 = +[AMSLogConfig sharedConfig];
    }

    v35 = [v34 OSLogObject];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = objc_opt_class();
      *buf = 138543618;
      v43 = v36;
      v44 = 2114;
      v45 = v3;
      _os_log_impl(&dword_192869000, v35, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Delegate purchase failed for null response dictionary", buf, 0x16u);
    }

    v11 = AMSError(2, @"Delegate purchase failed", @"Did not receive a response dictionary", 0);
    v12 = objc_alloc_init(AMSMutablePromise);
    v6 = v12;
    goto LABEL_26;
  }

  v6 = objc_alloc_init(AMSMutablePromise);
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
    *buf = 138543618;
    v43 = v9;
    v44 = 2114;
    v45 = v10;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Ending early due to cancelled task", buf, 0x16u);
  }

  v11 = AMSError(6, @"Interrupted Cancellation", @"The task was cancelled just before presenting the payment sheet.", 0);
  v12 = v6;
LABEL_26:
  [(AMSMutablePromise *)v12 finishWithError:v11];
LABEL_27:

  return v6;
}

id __51__AMSDelegatePurchaseTask__performPaymentSheetTask__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) biometricsRequest];

  if (v4)
  {
    v5 = [*(a1 + 32) biometricsRequest];
    [v3 setAccesssControlRef:{objc_msgSend(v5, "localAuthAccessControlRef")}];

    v6 = [*(a1 + 32) biometricsRequest];
    v7 = [v6 localAuthContext];
    v8 = [v7 externalizedContext];
    [v3 setExternalizedContext:v8];
  }

  v9 = [v3 appleIDAuthenticationContext];

  if (!v9)
  {
    v10 = [*(a1 + 32) request];
    v11 = [v10 purchaseResult];
    v12 = [v11 purchase];
    v13 = [*(a1 + 40) paymentSheetRequest];
    v14 = [v12 authenticationContextForRequest:v13];
    [v3 setAppleIDAuthenticationContext:v14];
  }

  v15 = objc_alloc_init(AMSDelegatePaymentSheetRequest);
  v16 = [*(a1 + 32) account];
  [(AMSPaymentSheetRequest *)v15 setAccount:v16];

  v17 = [*(a1 + 32) biometricsRequest];
  [(AMSPaymentSheetRequest *)v15 setBiometricsRequest:v17];

  v18 = [*(a1 + 32) request];
  v19 = [v18 challenge];
  [(AMSPaymentSheetRequest *)v15 setDelegateAuthenticateChallenge:v19];

  [(AMSDelegatePaymentSheetRequest *)v15 setPaymentRequest:v3];
  [(AMSPaymentSheetRequest *)v15 setRequiresAuthorization:1];
  v20 = [*(a1 + 32) request];
  v21 = [v20 userAgent];
  [(AMSPaymentSheetRequest *)v15 setUserAgent:v21];

  v22 = [AMSDelegatePaymentSheetTask alloc];
  v23 = [*(a1 + 32) bag];
  v24 = [(AMSDelegatePaymentSheetTask *)v22 initWithRequest:v15 bag:v23];

  [*(a1 + 32) setPaymentSheetTask:v24];
  v25 = [(AMSDelegatePaymentSheetTask *)v24 perform];

  return v25;
}

- (id)_urlRequestForDelegateAuthWithError:(id *)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = +[AMSLogConfig sharedConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = AMSLogKey();
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = v10;
    if (v8)
    {
      v3 = AMSLogKey();
      [v9 stringWithFormat:@"%@: [%@] ", v11, v3];
    }

    else
    {
      [v9 stringWithFormat:@"%@: ", v10];
    }
    v12 = ;
    *buf = 138543362;
    v29 = v12;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Begin requesting delegate auth endpoint", buf, 0xCu);
    if (v8)
    {

      v12 = v3;
    }
  }

  v27 = 0;
  v13 = [(AMSDelegateAuthenticateTask *)self _encodedURLRequestWithError:&v27];
  v14 = v27;
  if (v14)
  {
    v15 = +[AMSLogConfig sharedConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = AMSLogKey();
      v18 = MEMORY[0x1E696AEC0];
      v19 = objc_opt_class();
      v20 = v19;
      if (v17)
      {
        self = AMSLogKey();
        [v18 stringWithFormat:@"%@: [%@] ", v20, self];
      }

      else
      {
        [v18 stringWithFormat:@"%@: ", v19];
      }
      v21 = ;
      v24 = AMSLogableError(v14);
      *buf = 138543618;
      v29 = v21;
      v30 = 2114;
      v31 = v24;
      _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_ERROR, "%{public}@Encoding URL request failed with error: %{public}@", buf, 0x16u);
      if (v17)
      {

        v21 = self;
      }
    }

    if (a3)
    {
      v25 = v14;
      v23 = 0;
      *a3 = v14;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v22 = [v13 properties];
    [v22 setDisableBiometricsResponseHandling:1];

    v23 = v13;
  }

  return v23;
}

- (id)_urlRequestParameters
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF20]);
  v4 = [(AMSDelegatePurchaseTask *)self request];
  v5 = [v4 purchaseResult];

  if (v5)
  {
    v6 = [(AMSDelegatePurchaseTask *)self request];
    v7 = [v6 purchaseResult];
    v8 = [v7 purchase];
    v9 = [v8 buyParams];
    v10 = [v9 dictionary];

    v11 = [(AMSDelegatePurchaseTask *)self request];
    v12 = [v11 purchaseResult];
    v13 = [v12 responseDictionary];
    v14 = [v13 objectForKeyedSubscript:@"delegateParams"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v10 ams_dictionaryByAddingEntriesFromDictionary:v15];

    v3 = v16;
  }

  v17 = [(AMSDelegatePurchaseTask *)self request];
  v18 = [v17 cacheKey];

  if (v18)
  {
    v27 = @"cacheKey";
    v19 = [(AMSDelegatePurchaseTask *)self request];
    v20 = [v19 cacheKey];
    v28[0] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v22 = [v3 ams_dictionaryByAddingEntriesFromDictionary:v21];

    v3 = v22;
  }

  v26.receiver = self;
  v26.super_class = AMSDelegatePurchaseTask;
  v23 = [(AMSDelegateAuthenticateTask *)&v26 _urlRequestParameters];
  v24 = [v23 ams_dictionaryByAddingEntriesFromDictionary:v3];

  return v24;
}

@end