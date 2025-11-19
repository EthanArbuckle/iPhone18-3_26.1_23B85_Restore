@interface AMSPurchaseSIWATask
- (AKCredentialRequestContext)requestContext;
- (AMSPurchaseSIWATask)initWithPurchaseSIWA:(id)a3 bag:(id)a4;
- (BOOL)_beginAuthorizationWasPerformed;
- (BOOL)_siwaDidCommence;
- (BOOL)_willRequireAskToBuyForTaskInfo:(id)a3;
- (id)_beginAuthorization;
- (id)_cancelAuthorization;
- (id)_continueAuthorization;
- (id)performPreActionRequestForTaskInfo:(id)a3 requiresAuthorization:(BOOL)a4;
- (id)performPreauthenticate;
- (id)performPurchaseSIWA;
- (id)preauthenticateOptions;
- (void)_updateRequestContextWithPurchaseInfo:(id)a3;
@end

@implementation AMSPurchaseSIWATask

- (AMSPurchaseSIWATask)initWithPurchaseSIWA:(id)a3 bag:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = AMSPurchaseSIWATask;
  v7 = [(AMSPurchaseTask *)&v10 initWithPurchase:v6 bag:a4];
  v8 = v7;
  if (v7)
  {
    [(AMSPurchaseSIWATask *)v7 setPurchaseSIWA:v6];
  }

  return v8;
}

- (id)performPreActionRequestForTaskInfo:(id)a3 requiresAuthorization:(BOOL)a4
{
  v4 = a4;
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 properties];
  v8 = [v7 logUUID];

  LODWORD(v7) = [(AMSPurchaseSIWATask *)self _willRequireAskToBuyForTaskInfo:v6];
  if (v7)
  {
    v9 = [(AMSPurchaseTask *)self purchaseInfo];
    v10 = [v9 hasBeenAuthedForBuy];

    if (v10)
    {
      v11 = +[AMSLogConfig sharedConfig];
      if (!v11)
      {
        v11 = +[AMSLogConfig sharedConfig];
      }

      v12 = [v11 OSLogObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v28 = objc_opt_class();
        v29 = 2114;
        v30 = v8;
        v13 = v28;
        _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Cancelling SiWA because pre-auth and AtB is enabled for this purchase", buf, 0x16u);
      }

      v14 = [(AMSPurchaseSIWATask *)self _cancelAuthorization];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __80__AMSPurchaseSIWATask_performPreActionRequestForTaskInfo_requiresAuthorization___block_invoke;
      v25[3] = &unk_1E73BB440;
      v25[4] = self;
      v26 = v8;
      v15 = [v14 continueWithBinaryPromiseBlock:v25];
      v16 = v26;
      goto LABEL_20;
    }

    v21 = AMSError(12, @"Skipped SiWA due to AtB", @"Did not begin SiWA authorization due to AtB being enabled", 0);
    [(AMSPurchaseSIWATask *)self setSiwaError:v21];

    v17 = +[AMSLogConfig sharedConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
LABEL_18:

      v15 = +[AMSBinaryPromise promiseWithSuccess];
      goto LABEL_21;
    }

    *buf = 138543618;
    v28 = objc_opt_class();
    v29 = 2114;
    v30 = v8;
    v19 = v28;
    v20 = "%{public}@: [%{public}@] Skipping SiWA commencement because AtB is enabled for this purchase";
LABEL_17:
    _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_DEFAULT, v20, buf, 0x16u);

    goto LABEL_18;
  }

  if ([(AMSPurchaseSIWATask *)self _beginAuthorizationWasPerformed])
  {
    v17 = +[AMSLogConfig sharedConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 138543618;
    v28 = objc_opt_class();
    v29 = 2114;
    v30 = v8;
    v19 = v28;
    v20 = "%{public}@: [%{public}@] Will not commence SiWA authorization during pre-action step due to it already being performed";
    goto LABEL_17;
  }

  [(AMSPurchaseSIWATask *)self setPurchaseRequiresAuthorization:v4];
  v14 = [(AMSPurchaseSIWATask *)self _beginAuthorization];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __80__AMSPurchaseSIWATask_performPreActionRequestForTaskInfo_requiresAuthorization___block_invoke_12;
  v23[3] = &unk_1E73BB440;
  v23[4] = self;
  v24 = v8;
  v15 = [v14 continueWithBinaryPromiseBlock:v23];
  v16 = v24;
LABEL_20:

LABEL_21:

  return v15;
}

id __80__AMSPurchaseSIWATask_performPreActionRequestForTaskInfo_requiresAuthorization___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = *(a1 + 40);
      v13 = 138543874;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
      v17 = 2114;
      v18 = v4;
      v9 = v7;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to cancel pre-auth SiWA authorization with error %{public}@", &v13, 0x20u);
    }
  }

  v10 = AMSError(12, @"Cancelled initiated SiWA due to pre-auth and AtB", @"Did not continue SiWA authorization due to pre-auth and AtB being enabled", 0);
  [*(a1 + 32) setSiwaError:v10];

  v11 = +[AMSBinaryPromise promiseWithSuccess];

  return v11;
}

id __80__AMSPurchaseSIWATask_performPreActionRequestForTaskInfo_requiresAuthorization___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) setSiwaError:v6];
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
      *v15 = 138543874;
      *&v15[4] = v9;
      *&v15[12] = 2114;
      *&v15[14] = v10;
      *&v15[22] = 2114;
      v16 = v6;
      v11 = v9;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to begin SiWA authorization with error %{public}@", v15, 0x20u);
    }
  }

  if ([v6 code] == -7003 || objc_msgSend(v6, "code") == -7034)
  {
    v12 = [AMSBinaryPromise promiseWithError:v6];
  }

  else
  {
    v12 = +[AMSBinaryPromise promiseWithSuccess];
  }

  v13 = v12;

  return v13;
}

- (id)performPreauthenticate
{
  [(AMSPurchaseSIWATask *)self setPurchaseRequiresAuthorization:1];
  v3 = [(AMSPurchaseSIWATask *)self _beginAuthorization];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__AMSPurchaseSIWATask_performPreauthenticate__block_invoke;
  v6[3] = &unk_1E73BB468;
  v6[4] = self;
  v4 = [v3 continueWithBlock:v6];

  return v4;
}

id __45__AMSPurchaseSIWATask_performPreauthenticate__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [*(a1 + 32) setSiwaError:v4];
  if (v4)
  {
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 purchaseSIWA];
      v11 = [v10 logUUID];
      *buf = 138543874;
      v16 = v7;
      v17 = 2114;
      v18 = v11;
      v19 = 2114;
      v20 = v4;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to begin SiWA authorization during pre-authentication with error %{public}@", buf, 0x20u);
    }
  }

  v14.receiver = *(a1 + 32);
  v14.super_class = AMSPurchaseSIWATask;
  v12 = objc_msgSendSuper2(&v14, sel_performPreauthenticate);

  return v12;
}

- (id)preauthenticateOptions
{
  v7.receiver = self;
  v7.super_class = AMSPurchaseSIWATask;
  v3 = [(AMSPurchaseTask *)&v7 preauthenticateOptions];
  v4 = [(AMSPurchaseSIWATask *)self purchaseSIWA];
  v5 = [v4 appProvidedData];
  [v3 setAppProvidedData:v5];

  return v3;
}

- (id)performPurchaseSIWA
{
  v3 = [(AMSPurchaseTask *)self performPurchase];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__AMSPurchaseSIWATask_performPurchaseSIWA__block_invoke;
  v6[3] = &unk_1E73BB4B8;
  v6[4] = self;
  v4 = [v3 continueWithBlock:v6];

  return v4;
}

id __42__AMSPurchaseSIWATask_performPurchaseSIWA__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) purchaseSIWA];
  v8 = [v7 logUUID];

  v9 = [*(a1 + 32) _siwaDidCommence];
  if (v6)
  {
    if (!v9)
    {
      v14 = [AMSPromise promiseWithError:v6];
      goto LABEL_29;
    }

    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v38 = objc_opt_class();
      v39 = 2114;
      v40 = v8;
      v12 = v38;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Cancelling SiWA authorization due to a failed purchase", buf, 0x16u);
    }

    v13 = [*(a1 + 32) _cancelAuthorization];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __42__AMSPurchaseSIWATask_performPurchaseSIWA__block_invoke_18;
    v34[3] = &unk_1E73B2E50;
    v34[4] = *(a1 + 32);
    v35 = v8;
    v36 = v6;
    v14 = [(AMSPurchaseSIWAAuthorizationResult *)v13 continueWithBlock:v34];

    v15 = v35;
  }

  else
  {
    if (!v9)
    {
      v21 = +[AMSLogConfig sharedConfig];
      if (!v21)
      {
        v21 = +[AMSLogConfig sharedConfig];
      }

      v22 = [v21 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v38 = objc_opt_class();
        v39 = 2114;
        v40 = v8;
        v23 = v38;
        _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successful purchase occurred however SiWA did not commence", buf, 0x16u);
      }

      v24 = [AMSPurchaseSIWAAuthorizationResult alloc];
      v25 = [*(a1 + 32) siwaError];
      v13 = [(AMSPurchaseSIWAAuthorizationResult *)v24 initWithAuthorization:0 error:v25];

      v26 = [[AMSPurchaseSIWAResult alloc] initWithPurchaseResult:v5 authorizationResult:v13];
      v14 = [AMSPromise promiseWithResult:v26];

      goto LABEL_28;
    }

    v16 = [*(a1 + 32) purchaseRequiresAuthorization];
    v17 = +[AMSLogConfig sharedConfig];
    v18 = v17;
    if (v16)
    {
      if (!v17)
      {
        v18 = +[AMSLogConfig sharedConfig];
      }

      v19 = [v18 OSLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v38 = objc_opt_class();
        v39 = 2114;
        v40 = v8;
        v20 = v38;
        _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Continuing SiWA authorization after a successful purchase", buf, 0x16u);
      }

      v13 = [*(a1 + 32) _continueAuthorization];
    }

    else
    {
      if (!v17)
      {
        v18 = +[AMSLogConfig sharedConfig];
      }

      v27 = [v18 OSLogObject];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v38 = objc_opt_class();
        v39 = 2114;
        v40 = v8;
        v28 = v38;
        _os_log_impl(&dword_192869000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] ASN was active so using cached SiWA authorization", buf, 0x16u);
      }

      v29 = [*(a1 + 32) authorization];
      v13 = [AMSPromise promiseWithResult:v29];
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __42__AMSPurchaseSIWATask_performPurchaseSIWA__block_invoke_21;
    v31[3] = &unk_1E73BB490;
    v31[4] = *(a1 + 32);
    v32 = v8;
    v33 = v5;
    v14 = [(AMSPurchaseSIWAAuthorizationResult *)v13 continueWithBlock:v31];

    v15 = v32;
  }

LABEL_28:
LABEL_29:

  return v14;
}

id __42__AMSPurchaseSIWATask_performPurchaseSIWA__block_invoke_18(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = *(a1 + 40);
      *v12 = 138543874;
      *&v12[4] = v7;
      *&v12[12] = 2114;
      *&v12[14] = v8;
      *&v12[22] = 2114;
      v13 = v4;
      v9 = v7;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to cancel SiWA authorization with error %{public}@", v12, 0x20u);
    }
  }

  v10 = [AMSPromise promiseWithError:*(a1 + 48), *v12, *&v12[16], v13];

  return v10;
}

id __42__AMSPurchaseSIWATask_performPurchaseSIWA__block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
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
      *v19 = 138543874;
      *&v19[4] = v9;
      *&v19[12] = 2114;
      *&v19[14] = v10;
      *&v19[22] = 2114;
      v20 = v6;
      v11 = v9;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to continue SiWA authorization with error %{public}@", v19, 0x20u);
    }

    v12 = [AMSPurchaseSIWAAuthorizationResult alloc];
    v13 = 0;
    v14 = v6;
  }

  else
  {
    v12 = [AMSPurchaseSIWAAuthorizationResult alloc];
    v13 = v5;
    v14 = 0;
  }

  v15 = [(AMSPurchaseSIWAAuthorizationResult *)v12 initWithAuthorization:v13 error:v14, *v19, *&v19[16], v20];
  v16 = [[AMSPurchaseSIWAResult alloc] initWithPurchaseResult:*(a1 + 48) authorizationResult:v15];
  v17 = [AMSPromise promiseWithResult:v16];

  return v17;
}

- (id)_beginAuthorization
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = [(AMSPurchaseSIWATask *)self purchaseSIWA];
    v8 = [v7 logUUID];
    *buf = 138543618;
    v41 = v5;
    v42 = 2114;
    v43 = v8;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Commencing begin authorization", buf, 0x16u);
  }

  v9 = [(AMSPurchaseSIWATask *)self newAuthorizationController];
  v10 = [(AMSPurchaseSIWATask *)self purchaseRequiresAuthorization];
  v11 = +[AMSLogConfig sharedConfig];
  v12 = v11;
  if (v10)
  {
    if (!v11)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = v14;
      v16 = [(AMSPurchaseSIWATask *)self purchaseSIWA];
      v17 = [v16 logUUID];
      *buf = 138543618;
      v41 = v14;
      v42 = 2114;
      v43 = v17;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Invoking beginAuthorization", buf, 0x16u);
    }

    v18 = objc_alloc_init(AMSPromise);
    v19 = [(AMSPurchaseSIWATask *)self requestContext];
    v20 = [(AMSPromise *)v18 completionHandlerAdapter];
    [v9 beginAuthorizationWithContext:v19 completion:v20];

    v35 = MEMORY[0x1E69E9820];
    v36 = 3221225472;
    v37 = __42__AMSPurchaseSIWATask__beginAuthorization__block_invoke;
    v38 = &unk_1E73BB4E0;
    v39 = self;
    v21 = &v35;
  }

  else
  {
    if (!v11)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v22 = [v12 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v24 = v23;
      v25 = [(AMSPurchaseSIWATask *)self purchaseSIWA];
      v26 = [v25 logUUID];
      *buf = 138543618;
      v41 = v23;
      v42 = 2114;
      v43 = v26;
      _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Invoking performAuthorization", buf, 0x16u);
    }

    v18 = objc_alloc_init(AMSPromise);
    v27 = [(AMSPurchaseSIWATask *)self requestContext];
    v28 = [(AMSPromise *)v18 completionHandlerAdapter];
    [v9 performAuthorizationWithContext:v27 completion:v28];

    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __42__AMSPurchaseSIWATask__beginAuthorization__block_invoke_26;
    v33 = &unk_1E73BB508;
    v34 = self;
    v21 = &v30;
  }

  [(AMSPromise *)v18 addSuccessBlock:v21, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39];

  return v18;
}

void __42__AMSPurchaseSIWATask__beginAuthorization__block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 selectedRequest];
  v3 = [v4 requestIdentifier];
  [*(a1 + 32) setContinuationRequestIdentifier:v3];
}

- (id)_continueAuthorization
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(AMSPurchaseTask *)self purchaseInfo];
  [(AMSPurchaseSIWATask *)self _updateRequestContextWithPurchaseInfo:v3];

  v4 = objc_alloc_init(AMSPromise);
  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [(AMSPurchaseSIWATask *)self purchaseSIWA];
    v10 = [v9 logUUID];
    v15 = 138543618;
    v16 = v7;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Commencing continue authorization", &v15, 0x16u);
  }

  v11 = [(AMSPurchaseSIWATask *)self newAuthorizationController];
  v12 = [(AMSPurchaseSIWATask *)self requestContext];
  v13 = [(AMSPromise *)v4 completionHandlerAdapter];
  [v11 continueAuthorizationWithContext:v12 completion:v13];

  return v4;
}

- (id)_cancelAuthorization
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(AMSPurchaseTask *)self purchaseInfo];
  [(AMSPurchaseSIWATask *)self _updateRequestContextWithPurchaseInfo:v3];

  v4 = objc_alloc_init(AMSPromise);
  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [(AMSPurchaseSIWATask *)self purchaseSIWA];
    v10 = [v9 logUUID];
    v15 = 138543618;
    v16 = v7;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Commencing cancel authorization", &v15, 0x16u);
  }

  v11 = [(AMSPurchaseSIWATask *)self newAuthorizationController];
  v12 = [(AMSPurchaseSIWATask *)self requestContext];
  v13 = [(AMSPromise *)v4 errorOnlyCompletionHandlerAdapter];
  [v11 cancelAuthorizationWithContext:v12 completion:v13];

  return v4;
}

- (void)_updateRequestContextWithPurchaseInfo:(id)a3
{
  v18 = a3;
  v4 = [(AMSPurchaseSIWATask *)self continuationRequestIdentifier];
  v5 = [v4 UUIDString];
  v6 = [(AMSPurchaseSIWATask *)self requestContext];
  [v6 set_continuationRequestIdentifier:v5];

  v7 = [v18 localAuthContext];
  v8 = [v7 externalizedContext];
  v9 = [(AMSPurchaseSIWATask *)self requestContext];
  [v9 set_externalLocalAuthData:v8];

  v10 = [(AMSPurchaseSIWATask *)self requestContext];
  v11 = [v10 _externalLocalAuthData];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v13 = [(AMSPurchaseSIWATask *)self purchaseSIWA];
    v14 = [v13 serviceID];

    if (!v14)
    {
      goto LABEL_6;
    }

    v10 = [v18 idmsTokens];
    v12 = [(AMSPurchaseSIWATask *)self purchaseSIWA];
    v15 = [v12 serviceID];
    v16 = [v10 objectForKeyedSubscript:v15];
    v17 = [(AMSPurchaseSIWATask *)self requestContext];
    [v17 set_externalAuthToken:v16];
  }

LABEL_6:
}

- (BOOL)_beginAuthorizationWasPerformed
{
  v3 = [(AMSPurchaseSIWATask *)self continuationRequestIdentifier];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(AMSPurchaseSIWATask *)self authorization];
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      v6 = [(AMSPurchaseSIWATask *)self siwaError];
      v4 = v6 != 0;
    }
  }

  return v4;
}

- (BOOL)_siwaDidCommence
{
  if (![(AMSPurchaseSIWATask *)self _beginAuthorizationWasPerformed])
  {
    return 0;
  }

  v3 = [(AMSPurchaseSIWATask *)self siwaError];
  v4 = v3 == 0;

  return v4;
}

- (BOOL)_willRequireAskToBuyForTaskInfo:(id)a3
{
  v3 = [a3 response];
  v4 = [v3 ams_valueForHTTPHeaderField:@"buyproductwillrequireatb"];
  v5 = [v4 lowercaseString];
  v6 = [v5 isEqualToString:@"true"];

  return v6;
}

- (AKCredentialRequestContext)requestContext
{
  v15[2] = *MEMORY[0x1E69E9840];
  requestContext = self->_requestContext;
  if (!requestContext)
  {
    v4 = objc_alloc_init(MEMORY[0x1E698DDD0]);
    v5 = [(AMSPurchaseSIWATask *)self purchaseSIWA];
    v6 = [v5 teamID];
    [v4 setTeamID:v6];

    v7 = [(AMSPurchaseSIWATask *)self purchaseSIWA];
    v8 = [v7 bundleID];
    [v4 setBundleID:v8];

    v9 = [objc_alloc(MEMORY[0x1E698DD58]) initWithProxiedClientContext:v4];
    v10 = objc_alloc_init(MEMORY[0x1E698DD08]);
    v11 = *MEMORY[0x1E698DBF8];
    v15[0] = *MEMORY[0x1E698DC00];
    v15[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    [v10 setRequestedScopes:v12];

    [v9 setAuthorizationRequest:v10];
    v13 = self->_requestContext;
    self->_requestContext = v9;

    requestContext = self->_requestContext;
  }

  return requestContext;
}

@end