@interface AMSUIAuthenticateTaskCoordinator
- (id)_authenticateTaskForItem:(id)a3;
- (id)_authenticateTaskForItem:(id)a3 authenticationResults:(id)a4;
- (id)handleRequest:(id)a3 presentingViewController:(id)a4;
@end

@implementation AMSUIAuthenticateTaskCoordinator

- (id)handleRequest:(id)a3 presentingViewController:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v23[0] = @"AMSAuthenticateTaskCoordinatorItemKeyRequest";
    v23[1] = @"AMSAuthenticateTaskCoordinatorItemKeyPresentingViewController";
    v24[0] = v6;
    v24[1] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v10 = [(AMSAuthenticateTaskCoordinator *)self handleRequestDictionary:v9];
  }

  else
  {
    v11 = [MEMORY[0x1E698C968] sharedAccountsConfig];
    if (!v11)
    {
      v11 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = AMSLogKey();
      v14 = MEMORY[0x1E696AEC0];
      v15 = objc_opt_class();
      v16 = v15;
      if (v13)
      {
        self = AMSLogKey();
        [v14 stringWithFormat:@"%@: [%@] ", v16, self];
      }

      else
      {
        [v14 stringWithFormat:@"%@: ", v15];
      }
      v17 = ;
      v18 = AMSHashIfNeeded();
      *buf = 138543874;
      v26 = v17;
      v27 = 2114;
      v28 = v18;
      v29 = 2114;
      v30 = v8;
      _os_log_impl(&dword_1BB036000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Missing a required parameter, unable to process the authenticate request. request = %{public}@ presentingViewController = %{public}@", buf, 0x20u);
      if (v13)
      {

        v17 = self;
      }
    }

    v19 = MEMORY[0x1E698CAD0];
    v9 = AMSError();
    v10 = [v19 promiseWithError:v9];
  }

  v20 = v10;

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_authenticateTaskForItem:(id)a3 authenticationResults:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"AMSAuthenticateTaskCoordinatorItemKeyRequest"];
  v8 = [v7 options];
  v9 = [v6 objectForKeyedSubscript:@"AMSAuthenticateTaskCoordinatorItemKeyPresentingViewController"];

  v10 = [[AMSUIAuthenticateTask alloc] initWithAuthenticationResults:v5 presentingViewController:v9 options:v8];

  return v10;
}

- (id)_authenticateTaskForItem:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"AMSAuthenticateTaskCoordinatorItemKeyRequest"];
  v5 = [v3 objectForKeyedSubscript:@"AMSAuthenticateTaskCoordinatorItemKeyPresentingViewController"];

  v6 = [[AMSUIAuthenticateTask alloc] initWithRequest:v4 presentingViewController:v5];

  return v6;
}

@end