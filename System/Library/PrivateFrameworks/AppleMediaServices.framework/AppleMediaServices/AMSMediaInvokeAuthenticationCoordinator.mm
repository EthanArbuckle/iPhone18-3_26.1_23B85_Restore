@interface AMSMediaInvokeAuthenticationCoordinator
+ (AMSMediaInvokeAuthenticationCoordinator)sharedInstance;
- (AMSMediaInvokeAuthenticationCoordinator)init;
- (id)addToQueueAndPerformAuthFromResponseIfNeeded:(id)needed taskInfo:(id)info;
- (void)_finishQueueWithAuthResult:(id)result queuedObjects:(id)objects;
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

- (id)addToQueueAndPerformAuthFromResponseIfNeeded:(id)needed taskInfo:(id)info
{
  v35 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  infoCopy = info;
  v8 = objc_opt_new();
  v9 = objc_alloc_init(AMSMediaInvokeAuthenticationQueuedObject);
  [(AMSMediaInvokeAuthenticationQueuedObject *)v9 setResponse:neededCopy];
  [(AMSMediaInvokeAuthenticationQueuedObject *)v9 setTaskInfo:infoCopy];

  [(AMSMediaInvokeAuthenticationQueuedObject *)v9 setPendingPromise:v8];
  v10 = [neededCopy ams_statusCode] >= 200 && objc_msgSend(neededCopy, "ams_statusCode") < 400;
  [(AMSMediaInvokeAuthenticationQueuedObject *)v9 setIgnoringResult:v10];
  os_unfair_lock_lock(&self->_queueLock);
  invokeAuthQueue = [(AMSMediaInvokeAuthenticationCoordinator *)self invokeAuthQueue];
  [invokeAuthQueue addObject:v9];

  v12 = +[AMSLogConfig sharedAccountsConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v12 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v26 = v14;
    AMSSetLogKeyIfNeeded();
    v16 = v15 = v8;
    invokeAuthQueue2 = [(AMSMediaInvokeAuthenticationCoordinator *)self invokeAuthQueue];
    *buf = 138544130;
    v28 = v14;
    v29 = 2114;
    v30 = v16;
    v31 = 2048;
    v32 = [invokeAuthQueue2 count];
    v33 = 1024;
    ignoringResult = [(AMSMediaInvokeAuthenticationQueuedObject *)v9 ignoringResult];
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Queued up Invoke Media API Authentication. Current queue count: %lu. Will ignore result: %d", buf, 0x26u);

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

    oSLogObject2 = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v20 = objc_opt_class();
      v21 = v20;
      v22 = AMSSetLogKeyIfNeeded();
      *buf = 138543618;
      v28 = v20;
      v29 = 2114;
      v30 = v22;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Successful response, returned empty promise for Invoke Media API Authentication allowing handling of original response to continue while we deal with the authentication separately.", buf, 0x16u);
    }

    v23 = +[AMSOptional optionalWithNil];
    pendingPromise = [AMSPromise promiseWithResult:v23];
  }

  else
  {
    pendingPromise = [(AMSMediaInvokeAuthenticationQueuedObject *)v9 pendingPromise];
  }

  return pendingPromise;
}

- (void)updateQueueIfNeeded
{
  os_unfair_lock_lock(&self->_queueLock);
  inflightAuthPromise = [(AMSMediaInvokeAuthenticationCoordinator *)self inflightAuthPromise];
  if (inflightAuthPromise)
  {

LABEL_3:
    os_unfair_lock_unlock(&self->_queueLock);
    firstObject = 0;
    v5 = 0;
    goto LABEL_4;
  }

  invokeAuthQueue = [(AMSMediaInvokeAuthenticationCoordinator *)self invokeAuthQueue];
  v7 = [invokeAuthQueue count];

  if (!v7)
  {
    goto LABEL_3;
  }

  invokeAuthQueue2 = [(AMSMediaInvokeAuthenticationCoordinator *)self invokeAuthQueue];
  firstObject = [invokeAuthQueue2 firstObject];

  v5 = objc_opt_new();
  [(AMSMediaInvokeAuthenticationCoordinator *)self setInflightAuthPromise:v5];
  os_unfair_lock_unlock(&self->_queueLock);
  if (v5)
  {
    response = [firstObject response];
    taskInfo = [firstObject taskInfo];
    v11 = [AMSMediaInvokeAuthenticationHandler performAuthFromResponse:response taskInfo:taskInfo];
    [v5 finishWithPromise:v11];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__AMSMediaInvokeAuthenticationCoordinator_updateQueueIfNeeded__block_invoke;
    v12[3] = &unk_1E73B4CD0;
    v12[4] = self;
    firstObject = firstObject;
    v13 = firstObject;
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

- (void)_finishQueueWithAuthResult:(id)result queuedObjects:(id)objects
{
  v51 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  objectsCopy = objects;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = [objectsCopy countByEnumeratingWithState:&v40 objects:v50 count:16];
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
          objc_enumerationMutation(objectsCopy);
        }

        v12 = *(*(&v40 + 1) + 8 * v11);
        if (([v12 ignoringResult] & 1) == 0)
        {
          value = [resultCopy value];
          if (value && (v14 = value, [resultCopy value], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "actionType"), v15, v14, v16 == 3))
          {
            v17 = +[AMSLogConfig sharedAccountsConfig];
            if (!v17)
            {
              v17 = +[AMSLogConfig sharedConfig];
            }

            oSLogObject = [v17 OSLogObject];
            if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
            {
              v19 = objc_opt_class();
              v20 = v19;
              v21 = AMSSetLogKeyIfNeeded();
              *buf = v36;
              v45 = v19;
              v46 = 2114;
              v47 = v21;
              _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Invoke Media API Previous authentication finished with cancel, ignoring remaining queued up authentication requests.", buf, 0x16u);

              v10 = v37;
            }

            pendingPromise = [v12 pendingPromise];
            [pendingPromise finishWithResult:resultCopy];
          }

          else
          {
            v23 = +[AMSLogConfig sharedAccountsConfig];
            if (!v23)
            {
              v23 = +[AMSLogConfig sharedConfig];
            }

            oSLogObject2 = [v23 OSLogObject];
            if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
            {
              v25 = objc_opt_class();
              v38 = v25;
              v26 = AMSSetLogKeyIfNeeded();
              [v12 response];
              v27 = resultCopy;
              v29 = v28 = objectsCopy;
              v30 = [v29 URL];
              *buf = 138543874;
              v45 = v25;
              v46 = 2114;
              v47 = v26;
              v48 = 2112;
              v49 = v30;
              _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Retrying queued up request with Invoke Media API Authentication for URL: %@", buf, 0x20u);

              objectsCopy = v28;
              resultCopy = v27;

              v10 = v37;
            }

            pendingPromise = +[AMSURLAction retryAction];
            [pendingPromise setRetryIdentifier:0x1F071ED58];
            [pendingPromise setReason:@"authentication"];
            value2 = [resultCopy value];

            if (value2)
            {
              value3 = [resultCopy value];
              authenticateResult = [value3 authenticateResult];
              [pendingPromise setAuthenticateResult:authenticateResult];
            }

            pendingPromise2 = [v12 pendingPromise];
            v35 = [AMSOptional optionalWithValue:pendingPromise];
            [pendingPromise2 finishWithResult:v35];

            v9 = v39;
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [objectsCopy countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v9);
  }
}

@end