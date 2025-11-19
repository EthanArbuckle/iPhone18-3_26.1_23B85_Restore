@interface AMSPurchaseQueue
+ (AMSBagKeySet)bagKeySet;
- (AMSPurchaseQueue)initWithConfiguration:(id)a3;
- (BOOL)isSuspended;
- (id)_createPurchasePromiseForTask:(id)a3 purchase:(id)a4;
- (id)_performPreauthenticateForPurchaseTask:(id)a3;
- (id)_processPurchase:(id)a3;
- (id)enquePurchases:(id)a3;
- (void)_handleNextPurchase;
- (void)_handleResult:(id)a3 error:(id)a4 forPurchase:(id)a5;
- (void)purchase:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5;
- (void)purchase:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5;
- (void)purchase:(id)a3 handleEngagementRequest:(id)a4 completion:(id)a5;
- (void)setSuspended:(BOOL)a3;
- (void)setSuspended:(BOOL)a3 logUUID:(id)a4;
@end

@implementation AMSPurchaseQueue

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

- (AMSPurchaseQueue)initWithConfiguration:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = AMSPurchaseQueue;
  v6 = [(AMSPurchaseQueue *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, a3);
    v8 = objc_alloc_init(AMSPurchaseQueueBatchList);
    batches = v7->_batches;
    v7->_batches = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.ams.purchasequeue.dispatch", v10);
    dispatchQueue = v7->_dispatchQueue;
    v7->_dispatchQueue = v11;

    v13 = objc_alloc_init(AMSThreadSafeSet);
    preAuthenticatedDSIDs = v7->_preAuthenticatedDSIDs;
    v7->_preAuthenticatedDSIDs = v13;
  }

  return v7;
}

- (id)enquePurchases:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [AMSMutableLazyPromise alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__AMSPurchaseQueue_enquePurchases___block_invoke;
  v9[3] = &unk_1E73B5678;
  objc_copyWeak(&v11, &location);
  v6 = v4;
  v10 = v6;
  v7 = [(AMSMutableLazyPromise *)v5 initWithBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

void __35__AMSPurchaseQueue_enquePurchases___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = [[AMSPurchaseBatch alloc] initWithPurchases:*(a1 + 32) weakPromise:v3];

    v5 = [WeakRetained batches];
    [v5 appendBatch:v4];

    [WeakRetained _handleNextPurchase];
  }

  else
  {
    v4 = AMSError(0, @"Purchase Failed", @"Queue has vanished", 0);
    [v3 finishWithError:v4];
  }
}

- (void)setSuspended:(BOOL)a3 logUUID:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(AMSPurchaseQueue *)self batches];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(AMSPurchaseQueue *)self dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__AMSPurchaseQueue_setSuspended_logUUID___block_invoke;
    block[3] = &unk_1E73B9C20;
    block[4] = self;
    v14 = a3;
    v13 = v6;
    dispatch_async(v9, block);
  }

  else
  {
    v10 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Ignoring suspend request due to queue being empty", buf, 0x16u);
    }
  }
}

void __41__AMSPurchaseQueue_setSuspended_logUUID___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setSuspended:*(a1 + 48)];
  v2 = *(a1 + 48);
  v3 = +[AMSLogConfig sharedPurchaseConfig];
  v4 = v3;
  if (v2 == 1)
  {
    if (!v3)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = *(a1 + 40);
      v11 = 138543618;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Suspending purchase queue", &v11, 0x16u);
    }
  }

  else
  {
    if (!v3)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v4 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 40);
      v11 = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v10;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Resuming purchase queue", &v11, 0x16u);
    }

    [*(a1 + 32) _handleNextPurchase];
  }
}

- (void)_handleNextPurchase
{
  v3 = [(AMSPurchaseQueue *)self dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__AMSPurchaseQueue__handleNextPurchase__block_invoke;
  block[3] = &unk_1E73B3680;
  block[4] = self;
  dispatch_async(v3, block);
}

void __39__AMSPurchaseQueue__handleNextPurchase__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) batches];
  v3 = [v2 count];

  v4 = [*(a1 + 32) isSuspended];
  if ((v4 & 1) != 0 || !v3)
  {
    v8 = +[AMSLogConfig sharedPurchaseConfig];
    v9 = v8;
    if (v4)
    {
      if (!v8)
      {
        v9 = +[AMSLogConfig sharedConfig];
      }

      v10 = [v9 OSLogObject];
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v11 = objc_opt_class();
      v12 = AMSLogKey();
      *buf = 138543618;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      v13 = "%{public}@: [%{public}@]: Not handling next purchase due to queue being suspended";
    }

    else
    {
      if (!v8)
      {
        v9 = +[AMSLogConfig sharedConfig];
      }

      v10 = [v9 OSLogObject];
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v14 = objc_opt_class();
      v12 = AMSLogKey();
      *buf = 138543618;
      v17 = v14;
      v18 = 2114;
      v19 = v12;
      v13 = "%{public}@: [%{public}@]: Queue empty";
    }

    _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, v13, buf, 0x16u);

LABEL_18:
    return;
  }

  v5 = [*(a1 + 32) batches];
  v15 = [v5 nextPurchase];

  v6 = v15;
  if (v15)
  {
    v7 = [*(a1 + 32) _processPurchase:v15];
    v6 = v15;
  }
}

- (id)_processPurchase:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AMSPurchaseQueue *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = [v4 logUUID];
    *buf = 138543618;
    v43 = v8;
    v44 = 2114;
    v45 = v9;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Processing purchase", buf, 0x16u);
  }

  v10 = [(AMSPurchaseQueue *)self config];
  v11 = [v10 purchaseTaskClass];
  if (!v11)
  {
    v11 = objc_opt_class();
  }

  v12 = [v11 alloc];
  v13 = [(AMSPurchaseQueue *)self config];
  v14 = [v13 bag];
  v15 = [v12 initWithPurchase:v4 bag:v14];

  [v15 setDelegate:self];
  [v15 setRunMode:1];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__AMSPurchaseQueue__processPurchase___block_invoke;
  aBlock[3] = &unk_1E73B2E50;
  aBlock[4] = self;
  v16 = v4;
  v40 = v16;
  v17 = v15;
  v41 = v17;
  v18 = _Block_copy(aBlock);
  v19 = [(AMSPurchaseQueue *)self preAuthenticatedDSIDs];
  v20 = [v16 account];
  v21 = [v20 ams_DSID];
  v22 = [v19 containsObject:v21];

  if (v22)
  {
    v23 = [AMSPromise promiseWithResult:MEMORY[0x1E695E118]];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __37__AMSPurchaseQueue__processPurchase___block_invoke_2;
    v37[3] = &unk_1E73BB1C0;
    v37[4] = self;
    v38 = v17;
    [v23 addSuccessBlock:v37];
    v24 = [v23 continueWithBlock:v18];

    v25 = v38;
LABEL_11:

    goto LABEL_13;
  }

  v26 = [v17 purchaseInfo];
  v27 = [AMSPurchaseTask shouldPreauthenticatePurchaseWithInfo:v26];

  if (v27)
  {
    v28 = [(AMSPurchaseQueue *)self _performPreauthenticateForPurchaseTask:v17];
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __37__AMSPurchaseQueue__processPurchase___block_invoke_16;
    v33 = &unk_1E73BB1E8;
    v34 = self;
    v35 = v17;
    v36 = v16;
    [v28 addSuccessBlock:&v30];
    v24 = [v28 continueWithBlock:{v18, v30, v31, v32, v33, v34}];

    v25 = v35;
    goto LABEL_11;
  }

  v24 = [(AMSPurchaseQueue *)self _createPurchasePromiseForTask:v17 purchase:v16];
LABEL_13:

  return v24;
}

id __37__AMSPurchaseQueue__processPurchase___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1[4];
  if (v4)
  {
    [v5 _handleResult:0 error:v4 forPurchase:a1[5]];
    [AMSPromise promiseWithError:v4];
  }

  else
  {
    [v5 _createPurchasePromiseForTask:a1[6] purchase:a1[5]];
  }
  v6 = ;

  return v6;
}

void __37__AMSPurchaseQueue__processPurchase___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] 'hasBeenAuthedForBuy' flag set for purchase, queue already authenticated for this account.", &v7, 0x16u);
  }

  v6 = [*(a1 + 40) purchaseInfo];
  [v6 setHasBeenAuthedForBuy:1];
}

void __37__AMSPurchaseQueue__processPurchase___block_invoke_16(id *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    v10 = 138543618;
    v11 = v4;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] 'hasBeenAuthedForBuy' flag set for purchase: Device Restrictions", &v10, 0x16u);
  }

  v6 = [a1[5] purchaseInfo];
  [v6 setHasBeenAuthedForBuy:1];

  v7 = [a1[4] preAuthenticatedDSIDs];
  v8 = [a1[6] account];
  v9 = [v8 ams_DSID];
  [v7 addObject:v9];
}

- (id)_createPurchasePromiseForTask:(id)a3 purchase:(id)a4
{
  v6 = a4;
  v7 = [a3 performPurchase];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__AMSPurchaseQueue__createPurchasePromiseForTask_purchase___block_invoke;
  v10[3] = &unk_1E73BB210;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  [v7 addFinishBlock:v10];

  return v7;
}

void __59__AMSPurchaseQueue__createPurchasePromiseForTask_purchase___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) dispatchQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__AMSPurchaseQueue__createPurchasePromiseForTask_purchase___block_invoke_2;
  v11[3] = &unk_1E73B72B8;
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v14 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

uint64_t __59__AMSPurchaseQueue__createPurchasePromiseForTask_purchase___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isSuspended];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) _handleResult:*(a1 + 40) error:*(a1 + 48) forPurchase:*(a1 + 56)];
    v3 = *(a1 + 32);

    return [v3 _handleNextPurchase];
  }

  return result;
}

- (void)_handleResult:(id)a3 error:(id)a4 forPurchase:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(AMSPurchaseQueue *)self batches];
  v11 = [v10 batchForPurchase:v9];

  if (v11)
  {
    if (v8)
    {
      [v11 finishPurchase:v9 withError:v8];
    }

    else
    {
      [v11 finishPurchase:v9 withResult:v13];
    }

    if ([v11 isComplete])
    {
      v12 = [(AMSPurchaseQueue *)self batches];
      [v12 popBatch:v11];
    }
  }
}

- (id)_performPreauthenticateForPurchaseTask:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AMSPurchaseQueue *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    *buf = 138543618;
    v27 = v8;
    v28 = 2114;
    v29 = v9;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting to pre-authenticate purchase queue for device restrictions", buf, 0x16u);
  }

  v10 = objc_alloc_init(AMSAuthenticateOptions);
  [(AMSAuthenticateOptions *)v10 setAuthenticationType:2];
  [(AMSAuthenticateOptions *)v10 setCanMakeAccountActive:0];
  v11 = [v4 purchaseInfo];
  v12 = [v11 clientInfo];
  [(AMSAuthenticateOptions *)v10 setClientInfo:v12];

  [(AMSAuthenticateOptions *)v10 setDebugReason:@"Pre-authentication due to device restrictions around purchasing."];
  v13 = [AMSAuthenticateRequest alloc];
  v14 = [v4 purchaseInfo];
  v15 = [v14 account];
  v16 = [(AMSAuthenticateRequest *)v13 initWithAccount:v15 options:v10];

  v17 = AMSLogKey();
  [(AMSAuthenticateRequest *)v16 setLogKey:v17];

  v18 = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    v19 = objc_alloc_init(AMSPromise);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __59__AMSPurchaseQueue__performPreauthenticateForPurchaseTask___block_invoke;
    v25[3] = &unk_1E73BB238;
    v25[4] = self;
    [(AMSPromise *)v19 addSuccessBlock:v25];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __59__AMSPurchaseQueue__performPreauthenticateForPurchaseTask___block_invoke_32;
    v24[3] = &unk_1E73B34B8;
    v24[4] = self;
    [(AMSPromise *)v19 addErrorBlock:v24];
    v20 = [v4 purchaseInfo];
    v21 = [v20 purchase];
    v22 = [(AMSPromise *)v19 completionHandlerAdapter];
    [v18 purchase:v21 handleAuthenticateRequest:v16 completion:v22];
  }

  else
  {
    v20 = AMSError(12, @"Purchase Authentication Failed", @"Delegate does not respond to auth callback", 0);
    v19 = [AMSPromise promiseWithError:v20];
  }

  return v19;
}

void __59__AMSPurchaseQueue__performPreauthenticateForPurchaseTask___block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v0)
  {
    v0 = +[AMSLogConfig sharedConfig];
  }

  v1 = [v0 OSLogObject];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = objc_opt_class();
    v3 = AMSLogKey();
    v4 = 138543618;
    v5 = v2;
    v6 = 2114;
    v7 = v3;
    _os_log_impl(&dword_192869000, v1, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Queue pre-authentication for device restrictions succeeded.", &v4, 0x16u);
  }
}

void __59__AMSPurchaseQueue__performPreauthenticateForPurchaseTask___block_invoke_32(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = AMSLogableError(v2);
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Queue pre-authentication for device restrictions failed with error: %{public}@", &v8, 0x20u);
  }
}

- (BOOL)isSuspended
{
  v3 = [(AMSPurchaseQueue *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  return self->_suspended;
}

- (void)setSuspended:(BOOL)a3
{
  v5 = [(AMSPurchaseQueue *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  self->_suspended = a3;
}

- (void)purchase:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(AMSPurchaseQueue *)self config];
  v11 = [v10 delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(AMSPurchaseQueue *)self config];
    v14 = [v13 delegate];
    [v14 handleAuthenticateRequest:v8 purchase:v15 purchaseQueue:self completion:v9];

    v9 = v14;
  }

  else
  {
    v13 = AMSError(12, @"Purchase Batch Failed", @"Delegate method for authentications not found", 0);
    (*(v9 + 2))(v9, 0, v13);
  }
}

- (void)purchase:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(AMSPurchaseQueue *)self config];
  v11 = [v10 delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(AMSPurchaseQueue *)self config];
    v14 = [v13 delegate];
    [v14 handleDialogRequest:v8 purchase:v15 purchaseQueue:self completion:v9];

    v9 = v14;
  }

  else
  {
    v13 = AMSError(12, @"Purchase Batch Failed", @"Delegate method for dialogs not found", 0);
    (*(v9 + 2))(v9, 0, v13);
  }
}

- (void)purchase:(id)a3 handleEngagementRequest:(id)a4 completion:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(AMSPurchaseQueue *)self config];
  v11 = [v10 delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(AMSPurchaseQueue *)self config];
    v14 = [v13 delegate];
    [v14 handleEngagementRequest:v8 purchase:v15 purchaseQueue:self completion:v9];

    v9 = v14;
  }

  else
  {
    v13 = AMSError(12, @"Purchase Batch Failed", @"Delegate method for engagement not found", 0);
    (*(v9 + 2))(v9, 0, v13);
  }
}

@end