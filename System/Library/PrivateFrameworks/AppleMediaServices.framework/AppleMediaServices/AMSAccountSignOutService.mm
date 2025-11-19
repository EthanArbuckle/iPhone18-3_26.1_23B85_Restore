@interface AMSAccountSignOutService
+ (void)performSignOutTasksInDaemonForAccount:(id)a3;
@end

@implementation AMSAccountSignOutService

+ (void)performSignOutTasksInDaemonForAccount:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[AMSLogConfig sharedAccountsConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [(AMSDaemonConnection *)v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      *buf = 138543874;
      v17 = v8;
      v18 = 2114;
      v19 = v9;
      v20 = 2114;
      v21 = v4;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Performing sign-out tasks for: %{public}@", buf, 0x20u);
    }

    v6 = objc_alloc_init(AMSDaemonConnection);
    v10 = [(AMSDaemonConnection *)v6 accountSignOutServiceProxy];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__AMSAccountSignOutService_performSignOutTasksInDaemonForAccount___block_invoke;
    v13[3] = &unk_1E73B36F8;
    v15 = a1;
    v14 = v4;
    [v10 addFinishBlock:v13];
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v10 = [(AMSDaemonConnection *)v6 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      *buf = 138543618;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Failed to perform sign-out tasks", buf, 0x16u);
    }
  }
}

void __66__AMSAccountSignOutService_performSignOutTasksInDaemonForAccount___block_invoke(uint64_t a1, void *a2, void *a3)
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
    [a2 performAccountSignOutTasksForAccountWithID:*(a1 + 32)];
  }
}

@end