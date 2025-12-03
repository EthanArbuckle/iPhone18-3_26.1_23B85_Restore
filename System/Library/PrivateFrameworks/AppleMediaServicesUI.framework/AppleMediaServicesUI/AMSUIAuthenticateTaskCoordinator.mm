@interface AMSUIAuthenticateTaskCoordinator
- (id)_authenticateTaskForItem:(id)item;
- (id)_authenticateTaskForItem:(id)item authenticationResults:(id)results;
- (id)handleRequest:(id)request presentingViewController:(id)controller;
@end

@implementation AMSUIAuthenticateTaskCoordinator

- (id)handleRequest:(id)request presentingViewController:(id)controller
{
  v31 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  controllerCopy = controller;
  v8 = controllerCopy;
  if (requestCopy && controllerCopy)
  {
    v23[0] = @"AMSAuthenticateTaskCoordinatorItemKeyRequest";
    v23[1] = @"AMSAuthenticateTaskCoordinatorItemKeyPresentingViewController";
    v24[0] = requestCopy;
    v24[1] = controllerCopy;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v10 = [(AMSAuthenticateTaskCoordinator *)self handleRequestDictionary:v9];
  }

  else
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedAccountsConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
      selfCopy = ;
      v18 = AMSHashIfNeeded();
      *buf = 138543874;
      v26 = selfCopy;
      v27 = 2114;
      v28 = v18;
      v29 = 2114;
      v30 = v8;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@ Missing a required parameter, unable to process the authenticate request. request = %{public}@ presentingViewController = %{public}@", buf, 0x20u);
      if (v13)
      {

        selfCopy = self;
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

- (id)_authenticateTaskForItem:(id)item authenticationResults:(id)results
{
  resultsCopy = results;
  itemCopy = item;
  v7 = [itemCopy objectForKeyedSubscript:@"AMSAuthenticateTaskCoordinatorItemKeyRequest"];
  options = [v7 options];
  v9 = [itemCopy objectForKeyedSubscript:@"AMSAuthenticateTaskCoordinatorItemKeyPresentingViewController"];

  v10 = [[AMSUIAuthenticateTask alloc] initWithAuthenticationResults:resultsCopy presentingViewController:v9 options:options];

  return v10;
}

- (id)_authenticateTaskForItem:(id)item
{
  itemCopy = item;
  v4 = [itemCopy objectForKeyedSubscript:@"AMSAuthenticateTaskCoordinatorItemKeyRequest"];
  v5 = [itemCopy objectForKeyedSubscript:@"AMSAuthenticateTaskCoordinatorItemKeyPresentingViewController"];

  v6 = [[AMSUIAuthenticateTask alloc] initWithRequest:v4 presentingViewController:v5];

  return v6;
}

@end