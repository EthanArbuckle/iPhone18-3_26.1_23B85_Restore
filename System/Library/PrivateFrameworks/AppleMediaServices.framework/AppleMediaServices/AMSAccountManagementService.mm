@interface AMSAccountManagementService
- (BOOL)_supportsDirectAccess;
- (id)_accountManagementServiceAsyncWithConnection:(id)connection;
- (id)_accountManagementServiceSyncWithConnection:(id)connection error:(id *)error;
- (id)performCreateLocalAccountWithIdentifier:(id)identifier;
- (id)performCreateLocalAccountWithType:(id)type;
- (void)performCreateLocalAccountWithIdentifier:(id)identifier error:(id *)error;
- (void)performCreateLocalAccountWithType:(id)type error:(id *)error;
@end

@implementation AMSAccountManagementService

- (id)performCreateLocalAccountWithType:(id)type
{
  identifier = [type identifier];
  v5 = [(AMSAccountManagementService *)self performCreateLocalAccountWithIdentifier:identifier];

  return v5;
}

- (void)performCreateLocalAccountWithType:(id)type error:(id *)error
{
  identifier = [type identifier];
  [(AMSAccountManagementService *)self performCreateLocalAccountWithIdentifier:identifier error:error];
}

- (id)performCreateLocalAccountWithIdentifier:(id)identifier
{
  v32 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = AMSSetLogKeyIfNeeded();
  v7 = +[AMSLogConfig sharedAccountsConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = AMSLogKey();
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    if (v9)
    {
      v12 = AMSLogKey();
      a2 = NSStringFromSelector(a2);
      [v10 stringWithFormat:@"%@: [%@] %@ ", v11, v12, a2];
    }

    else
    {
      v12 = NSStringFromSelector(a2);
      [v10 stringWithFormat:@"%@: %@ ", v11, v12];
    }
    v13 = ;
    *buf = 138543618;
    *&buf[4] = v13;
    *&buf[12] = 2114;
    *&buf[14] = identifierCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Local account requested with identifier: %{public}@", buf, 0x16u);
    if (v9)
    {

      v13 = a2;
    }
  }

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [AMSKeepAlive keepAliveWithName:v15];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v29 = __Block_byref_object_copy__1;
  v30 = __Block_byref_object_dispose__1;
  v31 = objc_alloc_init(AMSDaemonConnection);
  v17 = [(AMSAccountManagementService *)self _accountManagementServiceAsyncWithConnection:*(*&buf[8] + 40)];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __71__AMSAccountManagementService_performCreateLocalAccountWithIdentifier___block_invoke;
  v23[3] = &unk_1E73B3600;
  v23[4] = self;
  v27 = buf;
  v18 = v16;
  v24 = v18;
  v19 = identifierCopy;
  v25 = v19;
  v20 = v6;
  v26 = v20;
  v21 = [v17 continueWithBinaryPromiseBlock:v23];

  _Block_object_dispose(buf, 8);

  return v21;
}

AMSMutableBinaryPromise *__71__AMSAccountManagementService_performCreateLocalAccountWithIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
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
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      *buf = 138543874;
      v29 = v9;
      v30 = 2114;
      v31 = v10;
      v32 = 2114;
      v33 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] Failed to connect to daemon: %{public}@", buf, 0x20u);
    }

    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;

    [*(a1 + 40) invalidate];
    v13 = [AMSBinaryPromise promiseWithError:v6];
  }

  else
  {
    v14 = objc_alloc_init(AMSMutableBinaryPromise);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __71__AMSAccountManagementService_performCreateLocalAccountWithIdentifier___block_invoke_9;
    v24[3] = &unk_1E73B3538;
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v17 = *(a1 + 32);
    v25 = v16;
    v26 = v17;
    v18 = v14;
    v27 = v18;
    [v5 performCreateLocalAccountWithIdentifier:v15 completion:v24];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __71__AMSAccountManagementService_performCreateLocalAccountWithIdentifier___block_invoke_23;
    v21[3] = &unk_1E73B35D8;
    v23 = *(a1 + 64);
    v22 = *(a1 + 40);
    [(AMSBinaryPromise *)v18 addFinishBlock:v21];
    v19 = v22;
    v13 = v18;
  }

  return v13;
}

void __71__AMSAccountManagementService_performCreateLocalAccountWithIdentifier___block_invoke_9(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[AMSLogConfig sharedAccountsConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    if (v9)
    {
      [v8 stringWithFormat:@"%@: [%@] ", v10, *(a1 + 32)];
    }

    else
    {
      [v8 stringWithFormat:@"%@: ", v10, v21];
    }
    v11 = ;
    v12 = v11;
    v13 = @"false";
    if (a2)
    {
      v13 = @"true";
    }

    *buf = 138543618;
    v23 = v11;
    v24 = 2114;
    v25 = v13;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Local account creation finished with success: %{public}@", buf, 0x16u);
  }

  if (v5)
  {
    v14 = +[AMSLogConfig sharedAccountsConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = *(a1 + 32);
      v18 = objc_opt_class();
      if (v17)
      {
        [v16 stringWithFormat:@"%@: [%@] ", v18, *(a1 + 32)];
      }

      else
      {
        [v16 stringWithFormat:@"%@: ", v18, v21];
      }
      v19 = ;
      v20 = AMSLogableError(v5);
      *buf = 138543618;
      v23 = v19;
      v24 = 2114;
      v25 = v20;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "%{public}@Local account creation daemon error = %{public}@", buf, 0x16u);
    }
  }

  [*(a1 + 48) finishWithSuccess:a2 error:v5];
}

uint64_t __71__AMSAccountManagementService_performCreateLocalAccountWithIdentifier___block_invoke_23(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);

  return [v4 invalidate];
}

- (void)performCreateLocalAccountWithIdentifier:(id)identifier error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v29 = AMSSetLogKeyIfNeeded();
  v6 = +[AMSLogConfig sharedAccountsConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = AMSLogKey();
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    if (v8)
    {
      v11 = AMSLogKey();
      a2 = NSStringFromSelector(a2);
      [v9 stringWithFormat:@"%@: [%@] %@ ", v10, v11, a2];
    }

    else
    {
      v11 = NSStringFromSelector(a2);
      [v9 stringWithFormat:@"%@: %@ ", v10, v11];
    }
    v12 = ;
    *buf = 138543618;
    *&buf[4] = v12;
    *&buf[12] = 2114;
    *&buf[14] = identifierCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Local account requested with identifier: %{public}@", buf, 0x16u);
    if (v8)
    {

      v12 = a2;
    }
  }

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [AMSKeepAlive keepAliveWithName:v14];

  v16 = objc_alloc_init(AMSDaemonConnection);
  v36 = 0;
  v17 = [(AMSAccountManagementService *)self _accountManagementServiceSyncWithConnection:v16 error:&v36];
  v18 = v36;
  if (v18)
  {
    v19 = +[AMSLogConfig sharedAccountsConfig];
    if (!v19)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v19 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v22 = AMSLogKey();
      *buf = 138543874;
      *&buf[4] = v21;
      *&buf[12] = 2114;
      *&buf[14] = v22;
      *&buf[22] = 2114;
      v42 = v18;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] Failed to connect to daemon: %{public}@", buf, 0x20u);
    }

    if (error)
    {
      v23 = v18;
      *error = v18;
    }
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v42 = __Block_byref_object_copy__1;
    v43 = __Block_byref_object_dispose__1;
    v44 = 0;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __77__AMSAccountManagementService_performCreateLocalAccountWithIdentifier_error___block_invoke;
    v32[3] = &unk_1E73B3628;
    v24 = v29;
    v33 = v24;
    selfCopy = self;
    v35 = buf;
    [v17 performCreateLocalAccountWithIdentifier:identifierCopy completion:v32];
    if (*(*&buf[8] + 40))
    {
      v25 = +[AMSLogConfig sharedAccountsConfig];
      if (!v25)
      {
        v25 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v25 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        if (v24)
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: [%@] ", objc_opt_class(), v24];
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
        }
        v27 = ;
        v28 = AMSLogableError(*(*&buf[8] + 40));
        *v37 = 138543618;
        v38 = v27;
        v39 = 2114;
        v40 = v28;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@Local account creation daemon error = %{public}@", v37, 0x16u);
      }

      if (error)
      {
        *error = *(*&buf[8] + 40);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  [v15 invalidate];
}

void __77__AMSAccountManagementService_performCreateLocalAccountWithIdentifier_error___block_invoke(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[AMSLogConfig sharedAccountsConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    if (v9)
    {
      [v8 stringWithFormat:@"%@: [%@] ", v10, *(a1 + 32)];
    }

    else
    {
      [v8 stringWithFormat:@"%@: ", v10, v17];
    }
    v11 = ;
    v12 = v11;
    v13 = @"false";
    if (a2)
    {
      v13 = @"true";
    }

    *buf = 138543618;
    v19 = v11;
    v20 = 2114;
    v21 = v13;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Local account creation finished with success: %{public}@", buf, 0x16u);
  }

  v14 = [v5 copy];
  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;
}

- (id)_accountManagementServiceAsyncWithConnection:(id)connection
{
  connectionCopy = connection;
  if ([(AMSAccountManagementService *)self _supportsDirectAccess]&& (v5 = NSClassFromString(&cfstr_Amsdaccountman.isa), NSSelectorFromString(&cfstr_Sharedservice.isa), (objc_opt_respondsToSelector() & 1) != 0))
  {
    v6 = [(objc_class *)v5 performSelector:sel_sharedService];
    accountManagementServiceProxy = [AMSPromise promiseWithResult:v6];
  }

  else
  {
    accountManagementServiceProxy = [connectionCopy accountManagementServiceProxy];
  }

  return accountManagementServiceProxy;
}

- (id)_accountManagementServiceSyncWithConnection:(id)connection error:(id *)error
{
  connectionCopy = connection;
  if ([(AMSAccountManagementService *)self _supportsDirectAccess]&& (v7 = NSClassFromString(&cfstr_Amsdaccountman.isa), NSSelectorFromString(&cfstr_Sharedservice.isa), (objc_opt_respondsToSelector() & 1) != 0))
  {
    v8 = [(objc_class *)v7 performSelector:sel_sharedService];
  }

  else
  {
    v8 = [connectionCopy accountManagementServiceProxySyncWithError:error];
  }

  v9 = v8;

  return v9;
}

- (BOOL)_supportsDirectAccess
{
  v2 = +[AMSProcessInfo currentProcess];
  v3 = ([v2 isAMSAccountsDaemon] & 1) != 0 || +[AMSUnitTests isRunningUnitTests](AMSUnitTests, "isRunningUnitTests");

  return v3;
}

@end