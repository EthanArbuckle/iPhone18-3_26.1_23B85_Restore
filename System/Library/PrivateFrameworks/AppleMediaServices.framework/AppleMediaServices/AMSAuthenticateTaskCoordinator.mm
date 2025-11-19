@interface AMSAuthenticateTaskCoordinator
+ (id)internalQueue;
+ (id)promiseStore;
- (id)_authenticateTaskForItem:(id)a3;
- (id)_authenticateTaskForItem:(id)a3 authenticationResults:(id)a4;
- (id)_enqueueItem:(id)a3 handleAuthenticationWithBlock:(id)a4;
- (id)_handleAuthenticateRequestWithItem:(id)a3 authenticationResults:(id)a4;
- (id)_promiseStorePairForRequest:(id)a3;
- (id)_promiseWithResultsForRequest:(id)a3;
- (id)enqueueAuthenticationRequest:(id)a3 handleAuthenticationWithBlock:(id)a4;
- (id)handleRequest:(id)a3;
- (void)_addToStoreRequest:(id)a3 promise:(id)a4;
- (void)_removeFromPromiseStore:(id)a3;
@end

@implementation AMSAuthenticateTaskCoordinator

+ (id)promiseStore
{
  if (_MergedGlobals_87 != -1)
  {
    dispatch_once(&_MergedGlobals_87, &__block_literal_global_11);
  }

  v3 = qword_1ED6E2768;

  return v3;
}

uint64_t __46__AMSAuthenticateTaskCoordinator_promiseStore__block_invoke()
{
  qword_1ED6E2768 = objc_alloc_init(MEMORY[0x1E695DF70]);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)internalQueue
{
  if (qword_1ED6E2770 != -1)
  {
    dispatch_once(&qword_1ED6E2770, &__block_literal_global_21_0);
  }

  v3 = qword_1ED6E2778;

  return v3;
}

void __47__AMSAuthenticateTaskCoordinator_internalQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.AppleMediaServices.AMSAuthenticateTaskCoordinator", v2);
  v1 = qword_1ED6E2778;
  qword_1ED6E2778 = v0;
}

- (id)handleRequest:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"AMSAuthenticateTaskCoordinatorItemKeyRequest";
  v10[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [(AMSAuthenticateTaskCoordinator *)self handleRequestDictionary:v6];

  return v7;
}

- (id)enqueueAuthenticationRequest:(id)a3 handleAuthenticationWithBlock:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (!v8)
    {
      v10 = +[AMSLogConfig sharedAccountsConfig];
      if (!v10)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = AMSLogKey();
        v13 = MEMORY[0x1E696AEC0];
        v14 = objc_opt_class();
        v15 = v14;
        if (v12)
        {
          v4 = AMSLogKey();
          [v13 stringWithFormat:@"%@: [%@] ", v15, v4];
        }

        else
        {
          [v13 stringWithFormat:@"%@: ", v14];
        }
        v16 = ;
        *buf = 138543362;
        v42 = v16;
        _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Missing authentication handler block. Authentication will be processed by AMSAuthenticateTaskCoordinator.", buf, 0xCu);
        if (v12)
        {

          v16 = v4;
        }
      }
    }

    v32 = objc_alloc_init(AMSMutablePromise);
    v39 = @"AMSAuthenticateTaskCoordinatorItemKeyRequest";
    v40 = v7;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v34 = [(AMSAuthenticateTaskCoordinator *)self _enqueueItem:v33 handleAuthenticationWithBlock:v9];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __93__AMSAuthenticateTaskCoordinator_enqueueAuthenticationRequest_handleAuthenticationWithBlock___block_invoke;
    v37[3] = &unk_1E73B3D68;
    v35 = v32;
    v38 = v35;
    [v34 addFinishBlock:v37];
  }

  else
  {
    v17 = +[AMSUnitTests isRunningUnitTests];
    v18 = +[AMSLogConfig sharedAccountsConfig];
    v19 = v18;
    if (v17)
    {
      if (!v18)
      {
        v19 = +[AMSLogConfig sharedConfig];
      }

      v20 = [v19 OSLogObject];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
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
        v42 = v25;
        _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_ERROR, "%{public}@ The provided AMSAuthenticateRequest is nil. Unable to continue.", buf, 0xCu);
        if (v21)
        {

          v25 = self;
        }
      }

      v19 = [MEMORY[0x1E696AD88] defaultCenter];
      v26 = +[AMSLogConfig sharedAccountsConfig];
      [v19 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v26 userInfo:0];
    }

    else
    {
      if (!v18)
      {
        v19 = +[AMSLogConfig sharedConfig];
      }

      v26 = [v19 OSLogObject];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        v27 = AMSLogKey();
        v28 = MEMORY[0x1E696AEC0];
        v29 = objc_opt_class();
        v30 = v29;
        if (v27)
        {
          self = AMSLogKey();
          [v28 stringWithFormat:@"%@: [%@] ", v30, self];
        }

        else
        {
          [v28 stringWithFormat:@"%@: ", v29];
        }
        v31 = ;
        *buf = 138543362;
        v42 = v31;
        _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_FAULT, "%{public}@ The provided AMSAuthenticateRequest is nil. Unable to continue.", buf, 0xCu);
        if (v27)
        {

          v31 = self;
        }
      }
    }

    v33 = AMSError(2, @"Missing Request Parameter", @"There was no AMSAuthenticateRequest provided. Unable to continue.", 0);
    v35 = [AMSPromise promiseWithError:v33];
  }

  return v35;
}

- (id)_authenticateTaskForItem:(id)a3 authenticationResults:(id)a4
{
  v5 = a4;
  v6 = [a3 objectForKeyedSubscript:@"AMSAuthenticateTaskCoordinatorItemKeyRequest"];
  v7 = [v6 options];
  v8 = [[AMSAuthenticateTask alloc] initWithAuthenticationResults:v5 options:v7];

  return v8;
}

- (id)_authenticateTaskForItem:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"AMSAuthenticateTaskCoordinatorItemKeyRequest"];
  v4 = [[AMSAuthenticateTask alloc] initWithRequest:v3];

  return v4;
}

- (id)_enqueueItem:(id)a3 handleAuthenticationWithBlock:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = +[AMSLogConfig sharedAccountsConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v36 = v8;
    v11 = AMSLogKey();
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v14 = v13;
    if (v11)
    {
      v4 = AMSLogKey();
      [v12 stringWithFormat:@"%@: [%@] ", v14, v4];
    }

    else
    {
      [v12 stringWithFormat:@"%@: ", v13];
    }
    v15 = ;
    v16 = +[AMSAuthenticateTaskCoordinator promiseStore];
    v17 = [v16 count];
    v18 = AMSHashIfNeeded(v7);
    *buf = 138543874;
    v43 = v15;
    v44 = 2048;
    v45 = v17;
    v46 = 2114;
    v47 = v18;
    _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEBUG, "%{public}@ Primary Request count in store: %lu. Adding Authenticate Request to coordinator: %{public}@", buf, 0x20u);

    if (v11)
    {

      v15 = v4;
    }

    v8 = v36;
  }

  v19 = [v7 objectForKeyedSubscript:@"AMSAuthenticateTaskCoordinatorItemKeyRequest"];
  if (v19)
  {
    v20 = objc_alloc_init(AMSMutablePromise);
    v21 = +[AMSAuthenticateTaskCoordinator internalQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__AMSAuthenticateTaskCoordinator__enqueueItem_handleAuthenticationWithBlock___block_invoke;
    block[3] = &unk_1E73B3E58;
    block[4] = self;
    v38 = v19;
    v41 = v8;
    v22 = v20;
    v39 = v22;
    v40 = v7;
    dispatch_async(v21, block);

    v23 = v40;
    v24 = v22;

    v25 = v24;
  }

  else
  {
    v24 = AMSError(2, @"Enqueue item missing AMSAuthenticateRequest", @"Unable to complete authenticate for request, enqueue item was passed a context that does not contain an AMSAuthenticateRequest", 0);
    v26 = +[AMSLogConfig sharedAccountsConfig];
    if (!v26)
    {
      v26 = +[AMSLogConfig sharedConfig];
    }

    v27 = [v26 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = v8;
      v29 = AMSLogKey();
      v30 = MEMORY[0x1E696AEC0];
      v31 = objc_opt_class();
      v32 = v31;
      if (v29)
      {
        self = AMSLogKey();
        [v30 stringWithFormat:@"%@: [%@] ", v32, self];
      }

      else
      {
        [v30 stringWithFormat:@"%@: ", v31];
      }
      v33 = ;
      v34 = AMSLogableError(v24);
      *buf = 138543618;
      v43 = v33;
      v44 = 2114;
      v45 = v34;
      _os_log_impl(&dword_192869000, v27, OS_LOG_TYPE_ERROR, "%{public}@ Error processing authenticate request: %{public}@", buf, 0x16u);
      if (v29)
      {

        v33 = self;
      }

      v8 = v28;
    }

    v25 = [AMSPromise promiseWithError:v24];
  }

  return v25;
}

void __77__AMSAuthenticateTaskCoordinator__enqueueItem_handleAuthenticationWithBlock___block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _promiseWithResultsForRequest:*(a1 + 40)];
  v3 = v2 == 0;
  v4 = *(a1 + 64);
  v5 = +[AMSLogConfig sharedAccountsOversizeConfig];
  v6 = v5;
  if (v2)
  {
    if (v4)
    {
      if (!v5)
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
        v31 = *(a1 + 40);
        *buf = 138543618;
        v56 = v12;
        v57 = 2114;
        v58 = v31;
        _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Will wait for another request to complete before running authHandler: %{public}@", buf, 0x16u);
        if (v8)
        {

          v12 = v3;
        }
      }

      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __77__AMSAuthenticateTaskCoordinator__enqueueItem_handleAuthenticationWithBlock___block_invoke_54;
      v51[3] = &unk_1E73B3D90;
      v32 = *(a1 + 40);
      v51[4] = *(a1 + 32);
      v52 = v32;
      v54 = *(a1 + 64);
      v53 = *(a1 + 48);
      [v2 addFinishBlock:v51];
    }

    else
    {
      if (!v5)
      {
        v6 = +[AMSLogConfig sharedConfig];
      }

      v19 = [v6 OSLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = AMSLogKey();
        v21 = MEMORY[0x1E696AEC0];
        v22 = objc_opt_class();
        v23 = v22;
        if (v20)
        {
          v3 = AMSLogKey();
          [v21 stringWithFormat:@"%@: [%@] ", v23, v3];
        }

        else
        {
          [v21 stringWithFormat:@"%@: ", v22];
        }
        v24 = ;
        v35 = *(a1 + 40);
        *buf = 138543618;
        v56 = v24;
        v57 = 2114;
        v58 = v35;
        _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ The authenticate request will wait for another request to complete: %{public}@", buf, 0x16u);
        if (v20)
        {

          v24 = v3;
        }
      }

      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __77__AMSAuthenticateTaskCoordinator__enqueueItem_handleAuthenticationWithBlock___block_invoke_55;
      v48[3] = &unk_1E73B3DB8;
      v42 = *(a1 + 32);
      v36 = *(&v42 + 1);
      v37 = *(a1 + 56);
      v38 = *(a1 + 48);
      *&v39 = v37;
      *(&v39 + 1) = v38;
      v49 = v42;
      v50 = v39;
      [v2 addFinishBlock:v48];
    }
  }

  else if (v4)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v6 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = AMSLogKey();
      v15 = MEMORY[0x1E696AEC0];
      v16 = objc_opt_class();
      v17 = v16;
      if (v14)
      {
        v3 = AMSLogKey();
        [v15 stringWithFormat:@"%@: [%@] ", v17, v3];
      }

      else
      {
        [v15 stringWithFormat:@"%@: ", v16];
      }
      v18 = ;
      v33 = *(a1 + 40);
      *buf = 138543618;
      v56 = v18;
      v57 = 2114;
      v58 = v33;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ There are no matching authentication requests calling authHandler immediately for request = %{public}@", buf, 0x16u);
      if (v14)
      {

        v18 = v3;
      }
    }

    v34 = (*(*(a1 + 64) + 16))();
    objc_initWeak(buf, v34);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __77__AMSAuthenticateTaskCoordinator__enqueueItem_handleAuthenticationWithBlock___block_invoke_57;
    v46[3] = &unk_1E73B3E08;
    objc_copyWeak(&v47, buf);
    v46[4] = *(a1 + 32);
    [v34 addFinishBlock:v46];
    [*(a1 + 48) finishWithPromise:v34];
    [*(a1 + 32) _addToStoreRequest:*(a1 + 40) promise:v34];
    objc_destroyWeak(&v47);
    objc_destroyWeak(buf);
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v25 = [v6 OSLogObject];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = AMSLogKey();
      v27 = MEMORY[0x1E696AEC0];
      v28 = objc_opt_class();
      v29 = v28;
      if (v26)
      {
        v3 = AMSLogKey();
        [v27 stringWithFormat:@"%@: [%@] ", v29, v3];
      }

      else
      {
        [v27 stringWithFormat:@"%@: ", v28];
      }
      v30 = ;
      v40 = *(a1 + 40);
      *buf = 138543618;
      v56 = v30;
      v57 = 2114;
      v58 = v40;
      _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ Using authenticate request to begin a new authentication: %{public}@", buf, 0x16u);
      if (v26)
      {

        v30 = v3;
      }
    }

    v41 = [*(a1 + 32) _handleAuthenticateRequestWithItem:*(a1 + 56) authenticationResults:0];
    objc_initWeak(buf, v41);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __77__AMSAuthenticateTaskCoordinator__enqueueItem_handleAuthenticationWithBlock___block_invoke_58;
    v43[3] = &unk_1E73B3E30;
    objc_copyWeak(&v45, buf);
    v43[4] = *(a1 + 32);
    v44 = *(a1 + 48);
    [v41 addFinishBlock:v43];
    [*(a1 + 32) _addToStoreRequest:*(a1 + 40) promise:v41];

    objc_destroyWeak(&v45);
    objc_destroyWeak(buf);
  }
}

void __77__AMSAuthenticateTaskCoordinator__enqueueItem_handleAuthenticationWithBlock___block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[AMSLogConfig sharedAccountsOversizeConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = AMSLogKey();
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    v12 = v11;
    v20 = v9;
    if (v9)
    {
      v19 = AMSLogKey();
      [v10 stringWithFormat:@"%@: [%@] ", v12, v19];
    }

    else
    {
      [v10 stringWithFormat:@"%@: ", v11];
    }
    v13 = ;
    v14 = *(a1 + 40);
    v15 = [v5 authenticationResults];
    v16 = [v15 ak_redactedCopy];
    v17 = AMSHashIfNeeded(v16);
    *buf = 138543874;
    v22 = v13;
    v23 = 2114;
    v24 = v14;
    v25 = 2114;
    v26 = v17;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Running authHandler for request. request = %{public}@ results = %{public}@", buf, 0x20u);

    if (v20)
    {

      v13 = v19;
    }
  }

  v18 = (*(*(a1 + 56) + 16))();

  [*(a1 + 48) finishWithPromise:v18];
}

void __77__AMSAuthenticateTaskCoordinator__enqueueItem_handleAuthenticationWithBlock___block_invoke_55(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsOversizeConfig];
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
      v19 = AMSLogKey();
      [v7 stringWithFormat:@"%@: [%@] ", v9, v19];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    v11 = *(a1 + 40);
    v12 = [v3 authenticationResults];
    v13 = [v12 ak_redactedCopy];
    v14 = AMSHashIfNeeded(v13);
    *buf = 138543874;
    v23 = v10;
    v24 = 2114;
    v25 = v11;
    v26 = 2114;
    v27 = v14;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Using Authenticate result to complete request. request = %{public}@ results = %{public}@", buf, 0x20u);

    if (v6)
    {

      v10 = v19;
    }
  }

  v15 = *(a1 + 32);
  v16 = *(a1 + 48);
  v17 = [v3 authenticationResults];
  v18 = [v15 _handleAuthenticateRequestWithItem:v16 authenticationResults:v17];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __77__AMSAuthenticateTaskCoordinator__enqueueItem_handleAuthenticationWithBlock___block_invoke_56;
  v20[3] = &unk_1E73B3D68;
  v21 = *(a1 + 56);
  [v18 addFinishBlock:v20];
}

void __77__AMSAuthenticateTaskCoordinator__enqueueItem_handleAuthenticationWithBlock___block_invoke_57(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[AMSAuthenticateTaskCoordinator internalQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__AMSAuthenticateTaskCoordinator__enqueueItem_handleAuthenticationWithBlock___block_invoke_2;
  v5[3] = &unk_1E73B3DE0;
  v5[4] = *(a1 + 32);
  v6 = WeakRetained;
  v4 = WeakRetained;
  dispatch_async(v3, v5);
}

void __77__AMSAuthenticateTaskCoordinator__enqueueItem_handleAuthenticationWithBlock___block_invoke_58(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = +[AMSAuthenticateTaskCoordinator internalQueue];
  block = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __77__AMSAuthenticateTaskCoordinator__enqueueItem_handleAuthenticationWithBlock___block_invoke_2_59;
  v22 = &unk_1E73B3DE0;
  v23 = *(a1 + 32);
  v10 = WeakRetained;
  v24 = v10;
  dispatch_async(v9, &block);

  if (v7)
  {
    v11 = +[AMSLogConfig sharedAccountsOversizeConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = AMSLogKey();
      v14 = MEMORY[0x1E696AEC0];
      v15 = objc_opt_class();
      v16 = v15;
      if (v13)
      {
        v3 = AMSLogKey();
        [v14 stringWithFormat:@"%@: [%@] ", v16, v3, block, v20, v21, v22, v23];
      }

      else
      {
        [v14 stringWithFormat:@"%@: ", v15];
      }
      v17 = ;
      v18 = AMSLogableError(v7);
      *buf = 138543618;
      v26 = v17;
      v27 = 2114;
      v28 = v18;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Authentication returned an error: %{public}@", buf, 0x16u);
      if (v13)
      {

        v17 = v3;
      }
    }

    [*(a1 + 40) finishWithError:v7];
  }

  else
  {
    [*(a1 + 40) finishWithResult:v6 error:0];
  }
}

- (id)_handleAuthenticateRequestWithItem:(id)a3 authenticationResults:(id)a4
{
  if (a4)
  {
    [(AMSAuthenticateTaskCoordinator *)self _authenticateTaskForItem:a3 authenticationResults:?];
  }

  else
  {
    [(AMSAuthenticateTaskCoordinator *)self _authenticateTaskForItem:a3];
  }
  v4 = ;
  v5 = [v4 performAuthentication];

  return v5;
}

- (void)_addToStoreRequest:(id)a3 promise:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = +[AMSLogConfig sharedAccountsConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = AMSLogKey();
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = v12;
    if (v10)
    {
      self = AMSLogKey();
      [v11 stringWithFormat:@"%@: [%@] ", v13, self];
    }

    else
    {
      [v11 stringWithFormat:@"%@: ", v12];
    }
    v14 = ;
    *buf = 138543362;
    v18 = v14;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ Adding Request to store", buf, 0xCu);
    if (v10)
    {

      v14 = self;
    }
  }

  v15 = +[AMSAuthenticateTaskCoordinator promiseStore];
  v16 = [[AMSPair alloc] initWithFirst:v7 second:v6];

  [v15 addObject:v16];
}

- (id)_promiseStorePairForRequest:(id)a3
{
  v3 = a3;
  v4 = +[AMSAuthenticateTaskCoordinator promiseStore];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__AMSAuthenticateTaskCoordinator__promiseStorePairForRequest___block_invoke;
  v8[3] = &unk_1E73B3E80;
  v9 = v3;
  v5 = v3;
  v6 = [v4 ams_firstObjectPassingTest:v8];

  return v6;
}

uint64_t __62__AMSAuthenticateTaskCoordinator__promiseStorePairForRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 first];
  v5 = [v3 second];

  if ([v5 isCancelled] & 1) != 0 || (objc_msgSend(*(a1 + 32), "isEqual:", v4))
  {
    v6 = 0;
  }

  else
  {
    v7 = [v4 account];
    v8 = [v7 identifier];
    v9 = [*(a1 + 32) account];
    v10 = [v9 identifier];
    v6 = [v8 isEqual:v10];
  }

  return v6;
}

- (id)_promiseWithResultsForRequest:(id)a3
{
  v3 = [(AMSAuthenticateTaskCoordinator *)self _promiseStorePairForRequest:a3];
  v4 = [v3 second];

  return v4;
}

- (void)_removeFromPromiseStore:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = +[AMSAuthenticateTaskCoordinator promiseStore];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __58__AMSAuthenticateTaskCoordinator__removeFromPromiseStore___block_invoke;
    v15[3] = &unk_1E73B3E80;
    v16 = v4;
    v6 = [v5 ams_firstObjectPassingTest:v15];

    v7 = +[AMSLogConfig sharedAccountsConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = AMSLogKey();
      v10 = MEMORY[0x1E696AEC0];
      v11 = objc_opt_class();
      v12 = v11;
      if (v9)
      {
        self = AMSLogKey();
        [v10 stringWithFormat:@"%@: [%@] ", v12, self];
      }

      else
      {
        [v10 stringWithFormat:@"%@: ", v11];
      }
      v13 = ;
      *buf = 138543618;
      v18 = v13;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ Removing request from store. pair = %{public}@", buf, 0x16u);
      if (v9)
      {

        v13 = self;
      }
    }

    v14 = +[AMSAuthenticateTaskCoordinator promiseStore];
    [v14 removeObject:v6];
  }
}

uint64_t __58__AMSAuthenticateTaskCoordinator__removeFromPromiseStore___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 first];
  v5 = [v3 second];

  v6 = [*(a1 + 32) isEqual:v5];
  return v6;
}

@end