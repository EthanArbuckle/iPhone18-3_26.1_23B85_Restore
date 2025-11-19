@interface AMSMediaInvokeAuthenticationCoordinator
+ (AMSMediaInvokeAuthenticationCoordinator)sharedInstance;
- (AMSMediaInvokeAuthenticationCoordinator)init;
- (id)addToQueueAndPerformAuthFromResponseIfNeeded:(id)a3 taskInfo:(id)a4;
- (void)_finishQueueWithAuthResult:(id)a3 queuedObjects:(id)a4;
- (void)updateQueueIfNeeded;
@end

@implementation AMSMediaInvokeAuthenticationCoordinator

- (AMSMediaInvokeAuthenticationCoordinator)init
{
  v6.receiver = self;
  v6.super_class = AMSMediaInvokeAuthenticationCoordinator;
  v2 = [(AMSMediaInvokeAuthenticationCoordinator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    invokeAuthQueue = v2->_invokeAuthQueue;
    v2->_invokeAuthQueue = v3;

    v2->_queueLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

+ (AMSMediaInvokeAuthenticationCoordinator)sharedInstance
{
  if (_MergedGlobals_124 != -1)
  {
    dispatch_once(&_MergedGlobals_124, &__block_literal_global_80);
  }

  v3 = qword_1ED6E2DB8;

  return v3;
}

uint64_t __57__AMSMediaInvokeAuthenticationCoordinator_sharedInstance__block_invoke()
{
  qword_1ED6E2DB8 = objc_alloc_init(AMSMediaInvokeAuthenticationCoordinator);

  return MEMORY[0x1EEE66BB8]();
}

- (id)addToQueueAndPerformAuthFromResponseIfNeeded:(id)a3 taskInfo:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = objc_alloc_init(AMSMediaInvokeAuthenticationQueuedObject);
  [(AMSMediaInvokeAuthenticationQueuedObject *)v9 setResponse:v6];
  [(AMSMediaInvokeAuthenticationQueuedObject *)v9 setTaskInfo:v7];

  [(AMSMediaInvokeAuthenticationQueuedObject *)v9 setPendingPromise:v8];
  v10 = [v6 ams_statusCode] >= 200 && objc_msgSend(v6, "ams_statusCode") < 400;
  [(AMSMediaInvokeAuthenticationQueuedObject *)v9 setIgnoringResult:v10];
  os_unfair_lock_lock(&self->_queueLock);
  v11 = [(AMSMediaInvokeAuthenticationCoordinator *)self invokeAuthQueue];
  [v11 addObject:v9];

  v12 = +[AMSLogConfig sharedAccountsConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  v13 = [v12 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v26 = v14;
    AMSSetLogKeyIfNeeded();
    v16 = v15 = v8;
    v17 = [(AMSMediaInvokeAuthenticationCoordinator *)self invokeAuthQueue];
    *buf = 138544130;
    v28 = v14;
    v29 = 2114;
    v30 = v16;
    v31 = 2048;
    v32 = [v17 count];
    v33 = 1024;
    v34 = [(AMSMediaInvokeAuthenticationQueuedObject *)v9 ignoringResult];
    _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Queued up Invoke Media API Authentication. Current queue count: %lu. Will ignore result: %d", buf, 0x26u);

    v8 = v15;
  }

  os_unfair_lock_unlock(&self->_queueLock);
  [(AMSMediaInvokeAuthenticationCoordinator *)self updateQueueIfNeeded];
  if ([(AMSMediaInvokeAuthenticationQueuedObject *)v9 ignoringResult])
  {
    v18 = +[AMSLogConfig sharedAccountsConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = objc_opt_class();
      v21 = v20;
      v22 = AMSSetLogKeyIfNeeded();
      *buf = 138543618;
      v28 = v20;
      v29 = 2114;
      v30 = v22;
      _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Successful response, returned empty promise for Invoke Media API Authentication allowing handling of original response to continue while we deal with the authentication separately.", buf, 0x16u);
    }

    v23 = +[AMSOptional optionalWithNil];
    v24 = [AMSPromise promiseWithResult:v23];
  }

  else
  {
    v24 = [(AMSMediaInvokeAuthenticationQueuedObject *)v9 pendingPromise];
  }

  return v24;
}

- (void)updateQueueIfNeeded
{
  os_unfair_lock_lock(&self->_queueLock);
  v3 = [(AMSMediaInvokeAuthenticationCoordinator *)self inflightAuthPromise];
  if (v3)
  {

LABEL_3:
    os_unfair_lock_unlock(&self->_queueLock);
    v4 = 0;
    v5 = 0;
    goto LABEL_4;
  }

  v6 = [(AMSMediaInvokeAuthenticationCoordinator *)self invokeAuthQueue];
  v7 = [v6 count];

  if (!v7)
  {
    goto LABEL_3;
  }

  v8 = [(AMSMediaInvokeAuthenticationCoordinator *)self invokeAuthQueue];
  v4 = [v8 firstObject];

  v5 = objc_opt_new();
  [(AMSMediaInvokeAuthenticationCoordinator *)self setInflightAuthPromise:v5];
  os_unfair_lock_unlock(&self->_queueLock);
  if (v5)
  {
    v9 = [v4 response];
    v10 = [v4 taskInfo];
    v11 = [AMSMediaInvokeAuthenticationHandler performAuthFromResponse:v9 taskInfo:v10];
    [v5 finishWithPromise:v11];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__AMSMediaInvokeAuthenticationCoordinator_updateQueueIfNeeded__block_invoke;
    v12[3] = &unk_1E73B4CD0;
    v12[4] = self;
    v4 = v4;
    v13 = v4;
    [v5 addFinishBlock:v12];
  }

LABEL_4:
}

void __62__AMSMediaInvokeAuthenticationCoordinator_updateQueueIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
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
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = AMSSetLogKeyIfNeeded();
      v22 = 138543874;
      v23 = v9;
      v24 = 2114;
      v25 = v11;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Invoke Media API Authentication finished with error: %@", &v22, 0x20u);
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = [v5 value];

  if (v12)
  {
    v7 = +[AMSLogConfig sharedAccountsConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = v13;
      v15 = AMSSetLogKeyIfNeeded();
      v16 = [v5 value];
      v22 = 138543874;
      v23 = v13;
      v24 = 2114;
      v25 = v15;
      v26 = 2048;
      v27 = [v16 actionType];
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Invoke Media API Authentication finished with result: %ld", &v22, 0x20u);
    }

    goto LABEL_11;
  }

LABEL_12:
  os_unfair_lock_lock((*(a1 + 32) + 8));
  [*(a1 + 32) setInflightAuthPromise:0];
  v17 = [*(a1 + 32) invokeAuthQueue];
  [v17 removeObjectAtIndex:0];

  v18 = [*(a1 + 32) invokeAuthQueue];
  v19 = [v18 copy];

  v20 = [*(a1 + 32) invokeAuthQueue];
  [v20 removeAllObjects];

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  [*(a1 + 32) _finishQueueWithAuthResult:v5 queuedObjects:v19];
  v21 = [*(a1 + 40) pendingPromise];
  [v21 finishWithResult:v5];

  [*(a1 + 32) updateQueueIfNeeded];
}

- (void)_finishQueueWithAuthResult:(id)a3 queuedObjects:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v41;
    *&v8 = 138543618;
    v36 = v8;
    v37 = *v41;
    do
    {
      v11 = 0;
      v39 = v9;
      do
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v40 + 1) + 8 * v11);
        if (([v12 ignoringResult] & 1) == 0)
        {
          v13 = [v5 value];
          if (v13 && (v14 = v13, [v5 value], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "actionType"), v15, v14, v16 == 3))
          {
            v17 = +[AMSLogConfig sharedAccountsConfig];
            if (!v17)
            {
              v17 = +[AMSLogConfig sharedConfig];
            }

            v18 = [v17 OSLogObject];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = objc_opt_class();
              v20 = v19;
              v21 = AMSSetLogKeyIfNeeded();
              *buf = v36;
              v45 = v19;
              v46 = 2114;
              v47 = v21;
              _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Invoke Media API Previous authentication finished with cancel, ignoring remaining queued up authentication requests.", buf, 0x16u);

              v10 = v37;
            }

            v22 = [v12 pendingPromise];
            [v22 finishWithResult:v5];
          }

          else
          {
            v23 = +[AMSLogConfig sharedAccountsConfig];
            if (!v23)
            {
              v23 = +[AMSLogConfig sharedConfig];
            }

            v24 = [v23 OSLogObject];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = objc_opt_class();
              v38 = v25;
              v26 = AMSSetLogKeyIfNeeded();
              [v12 response];
              v27 = v5;
              v29 = v28 = v6;
              v30 = [v29 URL];
              *buf = 138543874;
              v45 = v25;
              v46 = 2114;
              v47 = v26;
              v48 = 2112;
              v49 = v30;
              _os_log_impl(&dword_192869000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Retrying queued up request with Invoke Media API Authentication for URL: %@", buf, 0x20u);

              v6 = v28;
              v5 = v27;

              v10 = v37;
            }

            v22 = +[AMSURLAction retryAction];
            [v22 setRetryIdentifier:0x1F071ED58];
            [v22 setReason:@"authentication"];
            v31 = [v5 value];

            if (v31)
            {
              v32 = [v5 value];
              v33 = [v32 authenticateResult];
              [v22 setAuthenticateResult:v33];
            }

            v34 = [v12 pendingPromise];
            v35 = [AMSOptional optionalWithValue:v22];
            [v34 finishWithResult:v35];

            v9 = v39;
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v9);
  }
}

@end