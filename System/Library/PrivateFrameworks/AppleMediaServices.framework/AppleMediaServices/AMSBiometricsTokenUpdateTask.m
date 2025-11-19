@interface AMSBiometricsTokenUpdateTask
+ (AMSBagKeySet)bagKeySet;
- (AMSBiometricsTokenUpdateTask)initWithAccount:(id)a3;
- (id)_performBiometricsTokenUpdate;
- (id)performUpdate;
- (void)handleAuthenticateRequest:(id)a3 completion:(id)a4;
- (void)handleDialogRequest:(id)a3 completion:(id)a4;
@end

@implementation AMSBiometricsTokenUpdateTask

- (AMSBiometricsTokenUpdateTask)initWithAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSBiometricsTokenUpdateTask;
  v6 = [(AMSTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
  }

  return v7;
}

- (id)performUpdate
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = AMSSetLogKeyIfNeeded();
  v4 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = AMSLogKey();
    *buf = 138543618;
    v20 = v6;
    v21 = 2114;
    v22 = v8;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting token update.", buf, 0x16u);
  }

  v9 = objc_alloc_init(AMSMutableBinaryPromise);
  if (+[AMSBiometrics type](AMSBiometrics, "type") && +[AMSBiometrics type]!= 1)
  {
    v12 = [(AMSBiometricsTokenUpdateTask *)self _performBiometricsTokenUpdate];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __45__AMSBiometricsTokenUpdateTask_performUpdate__block_invoke;
    v17[3] = &unk_1E73B5368;
    v17[4] = self;
    v13 = v9;
    v18 = v13;
    [v12 addFinishBlock:v17];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __45__AMSBiometricsTokenUpdateTask_performUpdate__block_invoke_7;
    v16[3] = &unk_1E73B34B8;
    v16[4] = self;
    [(AMSBinaryPromise *)v13 addErrorBlock:v16];
    v14 = v13;
  }

  else
  {
    v10 = AMSError(5, @"Token Update Error", @"Platform does not have LocalAuth", 0);
    [(AMSMutableBinaryPromise *)v9 finishWithError:v10];
    v11 = v9;
  }

  return v9;
}

void __45__AMSBiometricsTokenUpdateTask_performUpdate__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[AMSLogConfig sharedBiometricsConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = AMSLogKey();
      v16 = 138543874;
      v17 = v8;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v4;
      v11 = "%{public}@: [%{public}@] Completed with error: %{public}@";
      v12 = v7;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 32;
LABEL_10:
      _os_log_impl(&dword_192869000, v12, v13, v11, &v16, v14);
    }
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v9 = v15;
      v10 = AMSLogKey();
      v16 = 138543618;
      v17 = v15;
      v18 = 2114;
      v19 = v10;
      v11 = "%{public}@: [%{public}@] Completed successfully";
      v12 = v7;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 22;
      goto LABEL_10;
    }
  }

  [*(a1 + 40) finishWithSuccess:v4 == 0 error:v4];
}

void __45__AMSBiometricsTokenUpdateTask_performUpdate__block_invoke_7(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = v6;
    v8 = &stru_1F071BA78;
    v9 = 138543874;
    v10 = v5;
    if (v2)
    {
      v8 = v2;
    }

    v11 = 2114;
    v12 = v6;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Biometrics token update failed. %{public}@", &v9, 0x20u);
  }
}

- (id)_performBiometricsTokenUpdate
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = AMSLogKey();
    *buf = 138543618;
    *&buf[4] = v5;
    *&buf[12] = 2114;
    *&buf[14] = v7;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Sending request to amsaccountsd", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v14 = __Block_byref_object_copy__11;
  v15 = __Block_byref_object_dispose__11;
  v16 = objc_alloc_init(AMSDaemonConnection);
  v8 = [*(*&buf[8] + 40) securityServiceProxyWithDelegate:self];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__AMSBiometricsTokenUpdateTask__performBiometricsTokenUpdate__block_invoke;
  v12[3] = &unk_1E73B5258;
  v12[4] = self;
  v12[5] = buf;
  v9 = [v8 thenWithBlock:v12];
  v10 = [v9 binaryPromiseAdapter];

  _Block_object_dispose(buf, 8);

  return v10;
}

AMSMutablePromise *__61__AMSBiometricsTokenUpdateTask__performBiometricsTokenUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v5 = [*(a1 + 32) account];
  v6 = [*(a1 + 32) clientInfo];
  v7 = [*(a1 + 32) additionalDialogMetrics];
  v8 = [*(a1 + 32) shouldGenerateKeysOnly];
  if ([*(a1 + 32) shouldRequestConfirmation])
  {
    v9 = 1;
  }

  else
  {
    v9 = [*(a1 + 32) shouldPromptUser];
  }

  v10 = [*(a1 + 32) isUserInitiated];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__AMSBiometricsTokenUpdateTask__performBiometricsTokenUpdate__block_invoke_2;
  v14[3] = &unk_1E73B5148;
  v11 = v4;
  v12 = *(a1 + 40);
  v15 = v11;
  v16 = v12;
  [v3 performBiometricTokenUpdateWithAccount:v5 clientInfo:v6 additionalDialogMetrics:v7 shouldGenerateKeysOnly:v8 shouldRequestConfirmation:v9 userInitiated:v10 completion:v14];

  return v11;
}

void __61__AMSBiometricsTokenUpdateTask__performBiometricsTokenUpdate__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    [v4 finishWithError:?];
  }

  else
  {
    [v4 finishWithResult:MEMORY[0x1E695E118]];
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

- (void)handleAuthenticateRequest:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = AMSLogKey();
    v13 = AMSHashIfNeeded(v6);
    *buf = 138543874;
    v22 = v10;
    v23 = 2114;
    v24 = v12;
    v25 = 2114;
    v26 = v13;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling authenticate request. Request: %{public}@", buf, 0x20u);
  }

  v14 = [(AMSBiometricsTokenUpdateTask *)self presentationDelegate];

  if (v14)
  {
    v15 = [v6 options];
    [v15 setAllowPasswordGeneration:2];

    v16 = [(AMSBiometricsTokenUpdateTask *)self presentationDelegate];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __69__AMSBiometricsTokenUpdateTask_handleAuthenticateRequest_completion___block_invoke;
    v18[3] = &unk_1E73B5390;
    v18[4] = self;
    v19 = v6;
    v20 = v7;
    [v16 handleAuthenticateRequest:v19 completion:v18];
  }

  else
  {
    v17 = AMSError(6, @"Token Update Error", @"Could not handle authenticate request, presentation delegate not set", 0);
    (*(v7 + 2))(v7, 0, v17);
  }
}

void __69__AMSBiometricsTokenUpdateTask_handleAuthenticateRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v11 = AMSLogKey();
    v12 = AMSHashIfNeeded(*(a1 + 40));
    v13 = 138543874;
    v14 = v9;
    v15 = 2114;
    v16 = v11;
    v17 = 2114;
    v18 = v12;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Delegate handled authenticate request. Request: %{public}@", &v13, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)handleDialogRequest:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = AMSLogKey();
    *buf = 138543874;
    v20 = v10;
    v21 = 2114;
    v22 = v12;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling dialog request. Request: %{public}@", buf, 0x20u);
  }

  v13 = [(AMSBiometricsTokenUpdateTask *)self presentationDelegate];

  if (v13)
  {
    v14 = [(AMSBiometricsTokenUpdateTask *)self presentationDelegate];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __63__AMSBiometricsTokenUpdateTask_handleDialogRequest_completion___block_invoke;
    v16[3] = &unk_1E73B53B8;
    v16[4] = self;
    v17 = v6;
    v18 = v7;
    [v14 handleDialogRequest:v17 completion:v16];
  }

  else
  {
    v15 = AMSError(6, @"Token Update Error", @"Could not handle dialog request, presentation delegate not set", 0);
    (*(v7 + 2))(v7, 0, v15);
  }
}

void __63__AMSBiometricsTokenUpdateTask_handleDialogRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = +[AMSLogConfig sharedBiometricsConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v11 = AMSLogKey();
    v12 = *(a1 + 40);
    v13 = 138543874;
    v14 = v9;
    v15 = 2114;
    v16 = v11;
    v17 = 2114;
    v18 = v12;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Delegate handled dialog request. Request: %{public}@", &v13, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

@end