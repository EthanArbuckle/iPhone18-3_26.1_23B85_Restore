@interface AMSAccountPostSignInService
+ (void)performPostSignInTasksInDaemonForAccount:(id)account credentialSource:(unint64_t)source;
@end

@implementation AMSAccountPostSignInService

+ (void)performPostSignInTasksInDaemonForAccount:(id)account credentialSource:(unint64_t)source
{
  v25 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v7 = +[AMSLogConfig sharedAccountsConfig];
  v8 = v7;
  if (accountCopy)
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [(AMSDaemonConnection *)v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      *buf = 138543874;
      v20 = v10;
      v21 = 2114;
      v22 = v11;
      v23 = 2114;
      v24 = accountCopy;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Performing post sign-in tasks for: %{public}@", buf, 0x20u);
    }

    v8 = objc_alloc_init(AMSDaemonConnection);
    accountPostSignInServiceProxy = [(AMSDaemonConnection *)v8 accountPostSignInServiceProxy];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __89__AMSAccountPostSignInService_performPostSignInTasksInDaemonForAccount_credentialSource___block_invoke;
    v15[3] = &unk_1E73B3650;
    selfCopy = self;
    v16 = accountCopy;
    sourceCopy = source;
    [accountPostSignInServiceProxy addFinishBlock:v15];
  }

  else
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    accountPostSignInServiceProxy = [(AMSDaemonConnection *)v8 OSLogObject];
    if (os_log_type_enabled(accountPostSignInServiceProxy, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      *buf = 138543618;
      v20 = v13;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&dword_192869000, accountPostSignInServiceProxy, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Failed to perform post sign-in tasks", buf, 0x16u);
    }
  }
}

void __89__AMSAccountPostSignInService_performPostSignInTasksInDaemonForAccount_credentialSource___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = +[AMSLogConfig sharedAccountsConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v10 = 138543874;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] Failed to connect to daemon: %{public}@", &v10, 0x20u);
    }
  }

  else
  {
    [a2 performAccountPostSignInTasksForAccountWithID:*(a1 + 32) credentialSource:*(a1 + 48)];
  }
}

@end