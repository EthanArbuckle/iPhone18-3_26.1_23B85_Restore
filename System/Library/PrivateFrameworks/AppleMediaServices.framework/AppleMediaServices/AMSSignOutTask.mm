@interface AMSSignOutTask
+ (id)_signOutOfAccount:(id)a3;
- (AMSSignOutTask)initWithAccounts:(id)a3;
- (id)performTask;
@end

@implementation AMSSignOutTask

- (AMSSignOutTask)initWithAccounts:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSSignOutTask;
  v6 = [(AMSTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accounts, a3);
  }

  return v7;
}

- (id)performTask
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__AMSSignOutTask_performTask__block_invoke;
  v5[3] = &unk_1E73B3588;
  v5[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v5];
  v3 = [v2 binaryPromiseAdapter];

  return v3;
}

id __29__AMSSignOutTask_performTask__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) accounts];

  if (v2)
  {
    v3 = [*(a1 + 32) accounts];
    v4 = [AMSPromise promiseWithResult:v3];
  }

  else
  {
    v5 = +[AMSLogConfig sharedAccountsConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      *buf = 138543618;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Signing out of all iTunes accounts.", buf, 0x16u);
    }

    v3 = [MEMORY[0x1E695DFD8] setWithObjects:{AMSAccountMediaTypeAppStoreBeta, AMSAccountMediaTypeAppStoreSandbox, AMSAccountMediaTypeProduction, 0}];
    v9 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v10 = [v9 ams_iTunesAccountsForMediaTypes:v3];
    v4 = [v10 thenWithBlock:&__block_literal_global_130];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __29__AMSSignOutTask_performTask__block_invoke_3;
  v13[3] = &unk_1E73B3028;
  v13[4] = *(a1 + 32);
  v11 = [v4 thenWithBlock:v13];

  return v11;
}

id __29__AMSSignOutTask_performTask__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 ams_filterUsingTest:&__block_literal_global_7];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

{
  v2 = a2;
  v3 = [objc_opt_class() _signOutOfAccount:v2];

  return v3;
}

id __29__AMSSignOutTask_performTask__block_invoke_3(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__AMSSignOutTask_performTask__block_invoke_4;
  v6[3] = &unk_1E73BBEB0;
  v6[4] = *(a1 + 32);
  v2 = [a2 ams_mapWithTransform:v6];
  if ([v2 count])
  {
    [AMSBinaryPromise promiseWithAll:v2];
  }

  else
  {
    +[AMSBinaryPromise promiseWithSuccess];
  }
  v3 = ;
  v4 = [v3 promiseAdapter];

  return v4;
}

+ (id)_signOutOfAccount:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 ams_isiTunesAccount];
  v5 = +[AMSLogConfig sharedAccountsConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v10 = AMSHashIfNeeded(v3);
      *buf = 138543874;
      v23 = v8;
      v24 = 2114;
      v25 = v9;
      v26 = 2114;
      v27 = v10;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Signing out of an account. account = %{public}@", buf, 0x20u);
    }

    v11 = objc_alloc_init(AMSBinaryPromise);
    v12 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v13 = [(AMSBinaryPromise *)v11 completionHandlerAdapter];
    [v12 removeAccount:v3 withCompletionHandler:v13];
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v6 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = AMSLogKey();
      v17 = AMSHashIfNeeded(v3);
      *buf = 138543874;
      v23 = v15;
      v24 = 2114;
      v25 = v16;
      v26 = 2114;
      v27 = v17;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Ignoring a non-iTunes account. account = %{public}@", buf, 0x20u);
    }

    v18 = MEMORY[0x1E696AEC0];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v12 = [v18 stringWithFormat:@"%@ can only operate on iTunes accounts.", v20];

    v13 = AMSError(2, @"Non-iTunes Account", v12, 0);
    v11 = [AMSBinaryPromise promiseWithError:v13];
  }

  return v11;
}

@end