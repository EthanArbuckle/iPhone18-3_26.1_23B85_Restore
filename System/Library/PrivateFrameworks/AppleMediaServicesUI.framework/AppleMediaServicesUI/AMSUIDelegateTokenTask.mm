@interface AMSUIDelegateTokenTask
- (AMSUIDelegateTokenTask)initWithDelegateAuthenticateRequest:(id)request account:(id)account presentingViewController:(id)controller;
- (AMSUIDelegateTokenTask)initWithDelegateAuthenticateRequest:(id)request account:(id)account processInfo:(id)info presentingViewController:(id)controller;
- (id)authenticateTaskWithRequest:(id)request;
- (id)perform;
@end

@implementation AMSUIDelegateTokenTask

- (AMSUIDelegateTokenTask)initWithDelegateAuthenticateRequest:(id)request account:(id)account presentingViewController:(id)controller
{
  v8 = MEMORY[0x1E698CAC8];
  controllerCopy = controller;
  accountCopy = account;
  requestCopy = request;
  currentProcess = [v8 currentProcess];
  v13 = [(AMSUIDelegateTokenTask *)self initWithDelegateAuthenticateRequest:requestCopy account:accountCopy processInfo:currentProcess presentingViewController:controllerCopy];

  return v13;
}

- (AMSUIDelegateTokenTask)initWithDelegateAuthenticateRequest:(id)request account:(id)account processInfo:(id)info presentingViewController:(id)controller
{
  controllerCopy = controller;
  v11 = MEMORY[0x1E698C7D8];
  v12 = MEMORY[0x1E698C8A0];
  infoCopy = info;
  accountCopy = account;
  requestCopy = request;
  bagSubProfile = [v12 bagSubProfile];
  bagSubProfileVersion = [MEMORY[0x1E698C8A0] bagSubProfileVersion];
  v18 = [v11 bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];
  v22.receiver = self;
  v22.super_class = AMSUIDelegateTokenTask;
  v19 = [(AMSDelegateTokenTask *)&v22 initWithDelegateAuthenticateRequest:requestCopy bag:v18 processInfo:infoCopy account:accountCopy];

  if (v19)
  {
    objc_storeStrong(&v19->_presentingViewController, controller);
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

- (id)authenticateTaskWithRequest:(id)request
{
  requestCopy = request;
  v5 = [AMSUIAuthenticateTask alloc];
  presentingViewController = [(AMSUIDelegateTokenTask *)self presentingViewController];
  v7 = [(AMSUIAuthenticateTask *)v5 initWithRequest:requestCopy presentingViewController:presentingViewController];

  return v7;
}

@end