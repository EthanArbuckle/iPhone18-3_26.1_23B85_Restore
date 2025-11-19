@interface AMSUIDelegateTokenTask
- (AMSUIDelegateTokenTask)initWithDelegateAuthenticateRequest:(id)a3 account:(id)a4 presentingViewController:(id)a5;
- (AMSUIDelegateTokenTask)initWithDelegateAuthenticateRequest:(id)a3 account:(id)a4 processInfo:(id)a5 presentingViewController:(id)a6;
- (id)authenticateTaskWithRequest:(id)a3;
- (id)perform;
@end

@implementation AMSUIDelegateTokenTask

- (AMSUIDelegateTokenTask)initWithDelegateAuthenticateRequest:(id)a3 account:(id)a4 presentingViewController:(id)a5
{
  v8 = MEMORY[0x1E698CAC8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 currentProcess];
  v13 = [(AMSUIDelegateTokenTask *)self initWithDelegateAuthenticateRequest:v11 account:v10 processInfo:v12 presentingViewController:v9];

  return v13;
}

- (AMSUIDelegateTokenTask)initWithDelegateAuthenticateRequest:(id)a3 account:(id)a4 processInfo:(id)a5 presentingViewController:(id)a6
{
  v21 = a6;
  v11 = MEMORY[0x1E698C7D8];
  v12 = MEMORY[0x1E698C8A0];
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [v12 bagSubProfile];
  v17 = [MEMORY[0x1E698C8A0] bagSubProfileVersion];
  v18 = [v11 bagForProfile:v16 profileVersion:v17];
  v22.receiver = self;
  v22.super_class = AMSUIDelegateTokenTask;
  v19 = [(AMSDelegateTokenTask *)&v22 initWithDelegateAuthenticateRequest:v15 bag:v18 processInfo:v13 account:v14];

  if (v19)
  {
    objc_storeStrong(&v19->_presentingViewController, a6);
  }

  return v19;
}

- (id)perform
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__AMSUIDelegateTokenTask_perform__block_invoke;
  v4[3] = &unk_1E7F24488;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

id __33__AMSUIDelegateTokenTask_perform__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698C968] sharedAccountsMultiUserConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = [*(a1 + 32) account];
    v8 = AMSHashIfNeeded();
    v12 = 138543874;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Retrieving delegate authentication token. Account = %{public}@", &v12, 0x20u);
  }

  v9 = [*(a1 + 32) performRetrieveDelegateToken];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)authenticateTaskWithRequest:(id)a3
{
  v4 = a3;
  v5 = [AMSUIAuthenticateTask alloc];
  v6 = [(AMSUIDelegateTokenTask *)self presentingViewController];
  v7 = [(AMSUIAuthenticateTask *)v5 initWithRequest:v4 presentingViewController:v6];

  return v7;
}

@end