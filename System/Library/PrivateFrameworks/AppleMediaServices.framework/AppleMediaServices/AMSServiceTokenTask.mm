@interface AMSServiceTokenTask
- (AMSServiceTokenTask)initWithAccount:(id)account accountStore:(id)store serviceIdentifier:(id)identifier tokenValidationHandler:(id)handler useCachedServiceToken:(BOOL)token;
- (id)_authKitUpdateTask;
- (id)perform;
@end

@implementation AMSServiceTokenTask

- (AMSServiceTokenTask)initWithAccount:(id)account accountStore:(id)store serviceIdentifier:(id)identifier tokenValidationHandler:(id)handler useCachedServiceToken:(BOOL)token
{
  accountCopy = account;
  storeCopy = store;
  identifierCopy = identifier;
  handlerCopy = handler;
  v27.receiver = self;
  v27.super_class = AMSServiceTokenTask;
  v17 = [(AMSTask *)&v27 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_account, account);
    ams_sharedAccountStore = storeCopy;
    if (!storeCopy)
    {
      ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    }

    objc_storeStrong(&v18->_accountStore, ams_sharedAccountStore);
    if (!storeCopy)
    {
    }

    v20 = objc_opt_class();
    authKitUpdateTaskClass = v18->_authKitUpdateTaskClass;
    v18->_authKitUpdateTaskClass = v20;

    v22 = [identifierCopy copy];
    serviceIdentifier = v18->_serviceIdentifier;
    v18->_serviceIdentifier = v22;

    v24 = _Block_copy(handlerCopy);
    tokenValidationHandler = v18->_tokenValidationHandler;
    v18->_tokenValidationHandler = v24;

    v18->_useCachedServiceToken = token;
  }

  return v18;
}

- (id)_authKitUpdateTask
{
  v3 = objc_alloc_init(AMSAuthenticateOptions);
  serviceIdentifier = [(AMSServiceTokenTask *)self serviceIdentifier];
  [(AMSAuthenticateOptions *)v3 setServiceIdentifier:serviceIdentifier];

  [(AMSAuthenticateOptions *)v3 setServiceTokenOnly:1];
  v5 = objc_alloc([(AMSServiceTokenTask *)self authKitUpdateTaskClass]);
  account = [(AMSServiceTokenTask *)self account];
  v7 = [v5 initWithAccount:account options:v3];

  return v7;
}

- (id)perform
{
  if ([(AMSServiceTokenTask *)self useCachedServiceToken])
  {
    accountStore = [(AMSServiceTokenTask *)self accountStore];
    account = [(AMSServiceTokenTask *)self account];
    serviceIdentifier = [(AMSServiceTokenTask *)self serviceIdentifier];
    v6 = [accountStore ams_fetchGrandSlamTokenForAccount:account withIdentifier:serviceIdentifier];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __30__AMSServiceTokenTask_perform__block_invoke;
    v12[3] = &unk_1E73B9430;
    v12[4] = self;
    v7 = [v6 continueWithBlock:v12];
  }

  else
  {
    v8 = +[AMSOptional optionalWithNil];
    v7 = [AMSPromise promiseWithResult:v8];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __30__AMSServiceTokenTask_perform__block_invoke_2;
  v11[3] = &unk_1E73B5BB0;
  v11[4] = self;
  v9 = [v7 thenWithBlock:v11];

  return v9;
}

AMSMutablePromise *__30__AMSServiceTokenTask_perform__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if ([v7 ams_hasDomain:@"AMSErrorDomain" code:7])
  {
    v8 = +[AMSLogConfig sharedAccountsConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = AMSLogKey();
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      v13 = v12;
      if (v10)
      {
        v3 = AMSLogKey();
        [v11 stringWithFormat:@"%@: [%@] ", v13, v3];
      }

      else
      {
        [v11 stringWithFormat:@"%@: ", v12];
      }
      v14 = ;
      v33 = [*(a1 + 32) serviceIdentifier];
      v34 = AMSHashIfNeeded(v33);
      v35 = AMSLogableError(v7);
      *buf = 138543874;
      v47 = v14;
      v48 = 2114;
      v49 = v34;
      v50 = 2114;
      v51 = v35;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@No cached service token found for identifier: %{public}@ | error = %{public}@", buf, 0x20u);

      if (v10)
      {

        v14 = v3;
      }
    }

    v32 = +[AMSOptional optionalWithNil];
LABEL_22:
    v36 = v32;
    v31 = [AMSPromise promiseWithResult:v32];

    goto LABEL_28;
  }

  if (!v7)
  {
    if (v6)
    {
      v22 = [*(a1 + 32) tokenValidationHandler];

      if (v22)
      {
        v23 = objc_alloc_init(AMSMutablePromise);
        v24 = [AMSDeallocGuard alloc];
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __30__AMSServiceTokenTask_perform__block_invoke_12;
        v45[3] = &unk_1E73B3680;
        v45[4] = *(a1 + 32);
        v25 = [(AMSDeallocGuard *)v24 initWithDeallocGuardBlock:v45];
        v26 = [*(a1 + 32) tokenValidationHandler];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __30__AMSServiceTokenTask_perform__block_invoke_19;
        v41[3] = &unk_1E73BBD28;
        v42 = v25;
        v27 = v23;
        v43 = v27;
        v44 = v6;
        v28 = v26[2];
        v29 = v25;
        v28(v26, v44, v41);

        v30 = v44;
        v31 = v27;

        goto LABEL_28;
      }
    }

    v32 = [AMSOptional optionalWithValue:v6];
    goto LABEL_22;
  }

  v15 = +[AMSLogConfig sharedAccountsConfig];
  if (!v15)
  {
    v15 = +[AMSLogConfig sharedConfig];
  }

  v16 = [v15 OSLogObject];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = AMSLogKey();
    v18 = MEMORY[0x1E696AEC0];
    v19 = objc_opt_class();
    v20 = v19;
    if (v17)
    {
      v3 = AMSLogKey();
      [v18 stringWithFormat:@"%@: [%@] ", v20, v3];
    }

    else
    {
      [v18 stringWithFormat:@"%@: ", v19];
    }
    v21 = ;
    v37 = [*(a1 + 32) serviceIdentifier];
    v38 = AMSHashIfNeeded(v37);
    v39 = AMSLogableError(v7);
    *buf = 138543874;
    v47 = v21;
    v48 = 2114;
    v49 = v38;
    v50 = 2114;
    v51 = v39;
    _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch cached service token for identifier: %{public}@ | error = %{public}@", buf, 0x20u);

    if (v17)
    {

      v21 = v3;
    }
  }

  v31 = [AMSPromise promiseWithError:v7];
LABEL_28:

  return v31;
}

void __30__AMSServiceTokenTask_perform__block_invoke_12()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = +[AMSUnitTests isRunningUnitTests];
  v1 = +[AMSLogConfig sharedConfig];
  v2 = v1;
  if (v0)
  {
    if (!v1)
    {
      v2 = +[AMSLogConfig sharedConfig];
    }

    v3 = [v2 OSLogObject];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_ERROR, "%{public}@: Token validation handler deallocated without calling its completion handler!", &v9, 0xCu);
    }

    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = +[AMSLogConfig sharedConfig];
    [v2 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v6 userInfo:0];
  }

  else
  {
    if (!v1)
    {
      v2 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v2 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_FAULT, "%{public}@: Token validation handler deallocated without calling its completion handler!", &v9, 0xCu);
    }
  }
}

void __30__AMSServiceTokenTask_perform__block_invoke_19(uint64_t a1, int a2)
{
  [*(a1 + 32) invalidate];
  v4 = *(a1 + 40);
  if (a2)
  {
    [AMSOptional optionalWithValue:*(a1 + 48)];
  }

  else
  {
    +[AMSOptional optionalWithNil];
  }
  v5 = ;
  [v4 finishWithResult:v5];
}

id __30__AMSServiceTokenTask_perform__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 value];

  if (v4)
  {
    v5 = [v3 value];
    v6 = [AMSPromise promiseWithResult:v5];
  }

  else
  {
    v5 = [*(a1 + 32) _authKitUpdateTask];
    v7 = [v5 performAuthKitUpdate];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __30__AMSServiceTokenTask_perform__block_invoke_3;
    v9[3] = &unk_1E73BBD50;
    v9[4] = *(a1 + 32);
    v6 = [v7 thenWithBlock:v9];
  }

  return v6;
}

id __30__AMSServiceTokenTask_perform__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 authenticationResults];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E698DB98]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [*(a1 + 32) serviceIdentifier];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [AMSPromise promiseWithResult:v7];
  }

  else
  {
    v9 = AMSError(101, @"Unknown AuthKit Failure", @"The AuthKit authentication succeeded, but the results did not contain a service token.", 0);
    v8 = [AMSPromise promiseWithError:v9];
  }

  return v8;
}

@end