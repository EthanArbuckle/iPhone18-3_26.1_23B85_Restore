@interface AMSSetDemoAccountTask
- (AMSSetDemoAccountTask)initWithUsername:(id)username password:(id)password accountStore:(id)store;
- (id)performTask;
@end

@implementation AMSSetDemoAccountTask

- (AMSSetDemoAccountTask)initWithUsername:(id)username password:(id)password accountStore:(id)store
{
  usernameCopy = username;
  passwordCopy = password;
  storeCopy = store;
  v17.receiver = self;
  v17.super_class = AMSSetDemoAccountTask;
  v12 = [(AMSTask *)&v17 init];
  if (v12)
  {
    v13 = +[AMSProcessInfo currentProcess];
    clientInfo = v12->_clientInfo;
    v12->_clientInfo = v13;

    objc_storeStrong(&v12->_password, password);
    objc_storeStrong(&v12->_username, username);
    ams_sharedAccountStore = storeCopy;
    if (!storeCopy)
    {
      ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    }

    objc_storeStrong(&v12->_accountStore, ams_sharedAccountStore);
    if (!storeCopy)
    {
    }
  }

  return v12;
}

- (id)performTask
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__AMSSetDemoAccountTask_performTask__block_invoke;
  v4[3] = &unk_1E73B3588;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

id __36__AMSSetDemoAccountTask_performTask__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedAccountsConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = AMSLogKey();
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = v7;
    if (v5)
    {
      v1 = AMSLogKey();
      [v6 stringWithFormat:@"%@: [%@] ", v8, v1];
    }

    else
    {
      [v6 stringWithFormat:@"%@: ", v7];
    }
    v9 = ;
    v10 = [*(a1 + 32) username];
    v11 = AMSHashIfNeeded(v10);
    v12 = [*(a1 + 32) clientInfo];
    v13 = AMSHashIfNeeded(v12);
    *buf = 138543874;
    v20 = v9;
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = v13;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Setting up the demo account. username = %{public}@ | clientInfo = %{public}@", buf, 0x20u);

    if (v5)
    {

      v9 = v1;
    }
  }

  v14 = [*(a1 + 32) accountStore];
  v15 = [v14 ams_fetchDemoAccount];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __36__AMSSetDemoAccountTask_performTask__block_invoke_7;
  v18[3] = &unk_1E73B5BB0;
  v18[4] = *(a1 + 32);
  v16 = [v15 thenWithBlock:v18];

  return v16;
}

id __36__AMSSetDemoAccountTask_performTask__block_invoke_7(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [v4 value];

  if (v5)
  {
    v6 = [v4 value];
    v7 = +[AMSLogConfig sharedAccountsConfig];
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
      if (v9)
      {
        v2 = AMSLogKey();
        [v10 stringWithFormat:@"%@: [%@] ", v12, v2];
      }

      else
      {
        [v10 stringWithFormat:@"%@: ", v11];
      }
      v13 = ;
      v15 = AMSHashIfNeeded(v6);
      *buf = 138543618;
      v24 = v13;
      v25 = 2114;
      v26 = v15;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Removing the existing demo account. existingAccount = %{public}@", buf, 0x16u);
      if (v9)
      {

        v13 = v2;
      }
    }

    v14 = objc_alloc_init(AMSMutableBinaryPromise);
    v16 = [*(a1 + 32) accountStore];
    v17 = [(AMSBinaryPromise *)v14 completionHandlerAdapter];
    [v16 removeAccount:v6 withCompletionHandler:v17];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __36__AMSSetDemoAccountTask_performTask__block_invoke_9;
    v22[3] = &unk_1E73B34B8;
    v22[4] = *(a1 + 32);
    [(AMSBinaryPromise *)v14 addErrorBlock:v22];
  }

  else
  {
    v14 = +[(AMSBinaryPromise *)AMSMutableBinaryPromise];
  }

  v18 = [(AMSBinaryPromise *)v14 promiseAdapter];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __36__AMSSetDemoAccountTask_performTask__block_invoke_11;
  v21[3] = &unk_1E73B3F70;
  v21[4] = *(a1 + 32);
  v19 = [v18 thenWithBlock:v21];

  return v19;
}

void __36__AMSSetDemoAccountTask_performTask__block_invoke_9(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = AMSLogKey();
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      a1 = AMSLogKey();
      [v7 stringWithFormat:@"%@: [%@] ", v9, a1];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    v11 = AMSLogableError(v3);
    *buf = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove the existing demo account. error = %{public}@", buf, 0x16u);
    if (v6)
    {

      v10 = a1;
    }
  }
}

id __36__AMSSetDemoAccountTask_performTask__block_invoke_11(uint64_t a1)
{
  v2 = objc_alloc_init(AMSAuthenticateOptions);
  [(AMSAuthenticateOptions *)v2 setAuthenticationType:1];
  v3 = [*(a1 + 32) clientInfo];
  [(AMSAuthenticateOptions *)v2 setClientInfo:v3];

  [(AMSAuthenticateOptions *)v2 setDemoAccountSetup:1];
  v4 = [MEMORY[0x1E696AEC0] stringWithCString:"-[AMSSetDemoAccountTask performTask]_block_invoke" encoding:4];
  [(AMSAuthenticateOptions *)v2 setDebugReason:v4];

  v5 = [[AMSAuthenticateTask alloc] initWithAccount:0 options:v2];
  v6 = [*(a1 + 32) password];
  [(AMSAuthenticateTask *)v5 setRawPassword:v6];

  v7 = [*(a1 + 32) username];
  [(AMSAuthenticateTask *)v5 setUsername:v7];

  v8 = [(AMSAuthenticateTask *)v5 performAuthentication];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __36__AMSSetDemoAccountTask_performTask__block_invoke_2;
  v12[3] = &unk_1E73B34B8;
  v12[4] = *(a1 + 32);
  [v8 addErrorBlock:v12];
  v9 = [v8 thenWithBlock:&__block_literal_global_127];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__AMSSetDemoAccountTask_performTask__block_invoke_2_17;
  v11[3] = &unk_1E73BBD98;
  v11[4] = *(a1 + 32);
  [v9 addSuccessBlock:v11];

  return v9;
}

void __36__AMSSetDemoAccountTask_performTask__block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = AMSLogKey();
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      a1 = AMSLogKey();
      [v7 stringWithFormat:@"%@: [%@] ", v9, a1];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    v11 = AMSLogableError(v3);
    *buf = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to authenticate the demo account. error = %{public}@", buf, 0x16u);
    if (v6)
    {

      v10 = a1;
    }
  }
}

id __36__AMSSetDemoAccountTask_performTask__block_invoke_14(uint64_t a1, void *a2)
{
  v2 = [a2 account];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

void __36__AMSSetDemoAccountTask_performTask__block_invoke_2_17(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsConfig];
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
      a1 = AMSLogKey();
      [v7 stringWithFormat:@"%@: [%@] ", v9, a1];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    v11 = AMSHashIfNeeded(v3);
    *buf = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully setup the demo account. account = %{public}@", buf, 0x16u);
    if (v6)
    {

      v10 = a1;
    }
  }
}

@end