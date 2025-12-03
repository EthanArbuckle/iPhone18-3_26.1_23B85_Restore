@interface AMSBiometricsIdentityMapChangeTask
- (AMSBiometricsIdentityMapChangeTask)initWithAccount:(id)account session:(id)session task:(id)task;
- (id)perform;
@end

@implementation AMSBiometricsIdentityMapChangeTask

- (AMSBiometricsIdentityMapChangeTask)initWithAccount:(id)account session:(id)session task:(id)task
{
  accountCopy = account;
  sessionCopy = session;
  taskCopy = task;
  v15.receiver = self;
  v15.super_class = AMSBiometricsIdentityMapChangeTask;
  v12 = [(AMSTask *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_account, account);
    objc_storeStrong(&v13->_session, session);
    objc_storeStrong(&v13->_task, task);
  }

  return v13;
}

- (id)perform
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__AMSBiometricsIdentityMapChangeTask_perform__block_invoke;
  v5[3] = &unk_1E73B3588;
  v5[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v5];
  binaryPromiseAdapter = [v2 binaryPromiseAdapter];

  return binaryPromiseAdapter;
}

id __45__AMSBiometricsIdentityMapChangeTask_perform__block_invoke(uint64_t a1)
{
  v2 = AMSSetLogKeyIfNeeded();
  v3 = [MEMORY[0x1E696AE30] processInfo];
  v4 = [v3 processName];
  v5 = [v4 isEqualToString:@"amsaccountsd"];

  if (!v5)
  {
    v6 = +[AMSBiometricsSecurityService isIdentityMapValid];
    goto LABEL_5;
  }

  if (+[AMSBiometrics isIdentityMapValid])
  {
    v6 = +[AMSBinaryPromise promiseWithSuccess];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v8 = AMSError(11, @"Biometric Error", @"Invalid Identity Map", 0);
  v7 = [AMSBinaryPromise promiseWithError:v8];

LABEL_7:
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __45__AMSBiometricsIdentityMapChangeTask_perform__block_invoke_2;
  v16 = &unk_1E73B5208;
  v17 = *(a1 + 32);
  v18 = v2;
  v9 = v2;
  v10 = [v7 continueWithBlock:&v13];
  v11 = [v10 promiseAdapter];

  return v11;
}

id __45__AMSBiometricsIdentityMapChangeTask_perform__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[AMSLogConfig sharedConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = *(a1 + 40);
    v10 = MEMORY[0x1E696AD98];
    v11 = v8;
    v12 = [v10 numberWithBool:a2];
    *buf = 138413058;
    v52 = v8;
    v53 = 2112;
    v54 = v9;
    v55 = 2114;
    v56 = v12;
    v57 = 2114;
    v58 = v5;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%@: [%@] Identity map check completed with result: %{public}@, error: %{public}@", buf, 0x2Au);
  }

  if (a2)
  {
    v13 = +[AMSBinaryPromise promiseWithSuccess];
    goto LABEL_35;
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
    *buf = 138543618;
    v52 = v16;
    v53 = 2114;
    v54 = v17;
    v18 = v16;
    _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting to pre-authenticate purchase for invalid biometric identity map", buf, 0x16u);
  }

  v19 = objc_alloc_init(AMSAuthenticateOptions);
  [(AMSAuthenticateOptions *)v19 setAuthenticationType:2];
  [(AMSAuthenticateOptions *)v19 setCanMakeAccountActive:0];
  [(AMSAuthenticateOptions *)v19 setDebugReason:@"identity map"];
  v20 = +[AMSBiometrics type];
  if (v20 == 7)
  {
    v21 = [*(a1 + 32) account];
    if (v21)
    {
      v22 = MEMORY[0x1E696AEC0];
      v23 = @"PROMPT_REASON_NEW_OPTIC_FORMAT_%@";
      goto LABEL_20;
    }

    v34 = @"PROMPT_REASON_NEW_OPTIC_ANONYMOUS";
    goto LABEL_29;
  }

  if (v20 == 3)
  {
    v21 = [*(a1 + 32) account];
    if (v21)
    {
      v22 = MEMORY[0x1E696AEC0];
      v23 = @"PROMPT_REASON_NEW_FACE_FORMAT_%@";
      goto LABEL_20;
    }

    v34 = @"PROMPT_REASON_NEW_FACE_ANONYMOUS";
LABEL_29:
    v24 = AMSLocalizedString(v34, 0);
    [(AMSAuthenticateOptions *)v19 setReason:v24];
    goto LABEL_30;
  }

  if (v20 != 2)
  {
    v28 = +[AMSLogConfig sharedConfig];
    if (!v28)
    {
      v28 = +[AMSLogConfig sharedConfig];
    }

    v29 = [v28 OSLogObject];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = objc_opt_class();
      v31 = *(a1 + 40);
      *buf = 138543618;
      v52 = v30;
      v53 = 2114;
      v54 = v31;
      v32 = v30;
      _os_log_impl(&dword_192869000, v29, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to determine biometric type", buf, 0x16u);
    }

    v33 = AMSError(12, @"Identity Map Failure", @"Failed to determine biometric type", 0);
    v13 = [AMSBinaryPromise promiseWithError:v33];
    goto LABEL_34;
  }

  v21 = [*(a1 + 32) account];
  if (!v21)
  {
    v34 = @"PROMPT_REASON_NEW_FINGERS_ANONYMOUS";
    goto LABEL_29;
  }

  v22 = MEMORY[0x1E696AEC0];
  v23 = @"PROMPT_REASON_NEW_FINGERS_FORMAT_%@";
LABEL_20:
  v24 = AMSLocalizedString(v23, 0);
  v25 = [*(a1 + 32) account];
  v26 = [v25 username];
  v27 = [v22 stringWithFormat:v24, v26];
  [(AMSAuthenticateOptions *)v19 setReason:v27];

LABEL_30:
  v35 = [AMSAuthenticateRequest alloc];
  v36 = [*(a1 + 32) account];
  v33 = [(AMSAuthenticateRequest *)v35 initWithAccount:v36 options:v19];

  [(AMSAuthenticateRequest *)v33 setLogKey:*(a1 + 40)];
  v37 = objc_alloc_init(AMSPromise);
  v38 = [*(a1 + 32) session];
  v39 = [v38 delegate];
  v40 = objc_opt_respondsToSelector();

  if (v40)
  {
    v41 = [*(a1 + 32) session];
    v42 = [v41 delegate];
    v43 = [*(a1 + 32) session];
    v44 = [*(a1 + 32) task];
    v45 = [(AMSPromise *)v37 completionHandlerAdapter];
    [v42 AMSURLSession:v43 task:v44 handleAuthenticateRequest:v33 completion:v45];

    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __45__AMSBiometricsIdentityMapChangeTask_perform__block_invoke_51;
    v49[3] = &unk_1E73B32F0;
    v46 = *(a1 + 40);
    v49[4] = *(a1 + 32);
    v50 = v46;
    [(AMSPromise *)v37 addErrorBlock:v49];
    v13 = [(AMSPromise *)v37 binaryPromiseAdapter];
  }

  else
  {
    v47 = AMSError(2, @"Biometric Identity Map Change Failed", @"Failed to complete biometric map change, session delegate not observing callback", 0);
    v13 = [AMSBinaryPromise promiseWithError:v47];
  }

LABEL_34:
LABEL_35:

  return v13;
}

void __45__AMSBiometricsIdentityMapChangeTask_perform__block_invoke_51(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
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
    v9 = 138543874;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v3;
    v8 = v6;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Identity map authentication failed with error: %{public}@", &v9, 0x20u);
  }
}

@end