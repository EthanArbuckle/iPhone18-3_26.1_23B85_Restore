@interface AMSUIAuthenticateTask
- (AMSUIAuthenticateTask)initWithAccount:(id)account presentingViewController:(id)controller options:(id)options;
- (AMSUIAuthenticateTask)initWithAccount:(id)account presentingViewController:(id)controller options:(id)options bag:(id)bag;
- (AMSUIAuthenticateTask)initWithAccount:(id)account presentingWindow:(id)window options:(id)options;
- (AMSUIAuthenticateTask)initWithAccount:(id)account presentingWindow:(id)window options:(id)options bag:(id)bag;
- (AMSUIAuthenticateTask)initWithAuthenticationResults:(id)results presentingViewController:(id)controller options:(id)options;
- (AMSUIAuthenticateTask)initWithAuthenticationResults:(id)results presentingViewController:(id)controller options:(id)options bag:(id)bag;
- (AMSUIAuthenticateTask)initWithAuthenticationResults:(id)results presentingWindow:(id)window options:(id)options;
- (AMSUIAuthenticateTask)initWithAuthenticationResults:(id)results presentingWindow:(id)window options:(id)options bag:(id)bag;
- (AMSUIAuthenticateTask)initWithRequest:(id)request presentingViewController:(id)controller;
- (AMSUIAuthenticateTask)initWithRequest:(id)request presentingViewController:(id)controller bag:(id)bag;
- (AMSUIAuthenticateTask)initWithRequest:(id)request presentingWindow:(id)window;
- (AMSUIAuthenticateTask)initWithRequest:(id)request presentingWindow:(id)window bag:(id)bag;
- (id)_createAuthKitUpdateTaskForAccount:(id)account;
- (id)_getPresentingViewController;
- (id)_presentEngagementRequest:(id)request;
- (void)authenticateTask:(id)task handleDialogRequest:(id)request completion:(id)completion;
@end

@implementation AMSUIAuthenticateTask

- (AMSUIAuthenticateTask)initWithAccount:(id)account presentingViewController:(id)controller options:(id)options
{
  v8 = MEMORY[0x1E698C7D8];
  optionsCopy = options;
  controllerCopy = controller;
  accountCopy = account;
  amsui_internalBag = [v8 amsui_internalBag];
  v13 = [(AMSUIAuthenticateTask *)self initWithAccount:accountCopy presentingViewController:controllerCopy options:optionsCopy bag:amsui_internalBag];

  return v13;
}

- (AMSUIAuthenticateTask)initWithAccount:(id)account presentingWindow:(id)window options:(id)options
{
  v8 = MEMORY[0x1E698C7D8];
  optionsCopy = options;
  windowCopy = window;
  accountCopy = account;
  amsui_internalBag = [v8 amsui_internalBag];
  v13 = [(AMSUIAuthenticateTask *)self initWithAccount:accountCopy presentingWindow:windowCopy options:optionsCopy bag:amsui_internalBag];

  return v13;
}

- (AMSUIAuthenticateTask)initWithAccount:(id)account presentingViewController:(id)controller options:(id)options bag:(id)bag
{
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = AMSUIAuthenticateTask;
  v12 = [(AMSAuthenticateTask *)&v16 initWithAccount:account options:options bag:bag];
  v13 = v12;
  if (v12)
  {
    v15.receiver = v12;
    v15.super_class = AMSUIAuthenticateTask;
    [(AMSAuthenticateTask *)&v15 setDelegate:v12];
    objc_storeStrong(&v13->_presentingViewController, controller);
  }

  return v13;
}

- (AMSUIAuthenticateTask)initWithAccount:(id)account presentingWindow:(id)window options:(id)options bag:(id)bag
{
  windowCopy = window;
  v16.receiver = self;
  v16.super_class = AMSUIAuthenticateTask;
  v12 = [(AMSAuthenticateTask *)&v16 initWithAccount:account options:options bag:bag];
  v13 = v12;
  if (v12)
  {
    v15.receiver = v12;
    v15.super_class = AMSUIAuthenticateTask;
    [(AMSAuthenticateTask *)&v15 setDelegate:v12];
    objc_storeStrong(&v13->_presentingWindow, window);
  }

  return v13;
}

- (AMSUIAuthenticateTask)initWithAuthenticationResults:(id)results presentingViewController:(id)controller options:(id)options
{
  v8 = MEMORY[0x1E698C7D8];
  optionsCopy = options;
  controllerCopy = controller;
  resultsCopy = results;
  amsui_internalBag = [v8 amsui_internalBag];
  v13 = [(AMSUIAuthenticateTask *)self initWithAuthenticationResults:resultsCopy presentingViewController:controllerCopy options:optionsCopy bag:amsui_internalBag];

  return v13;
}

- (AMSUIAuthenticateTask)initWithAuthenticationResults:(id)results presentingWindow:(id)window options:(id)options
{
  v8 = MEMORY[0x1E698C7D8];
  optionsCopy = options;
  windowCopy = window;
  resultsCopy = results;
  amsui_internalBag = [v8 amsui_internalBag];
  v13 = [(AMSUIAuthenticateTask *)self initWithAuthenticationResults:resultsCopy presentingWindow:windowCopy options:optionsCopy bag:amsui_internalBag];

  return v13;
}

- (AMSUIAuthenticateTask)initWithAuthenticationResults:(id)results presentingViewController:(id)controller options:(id)options bag:(id)bag
{
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = AMSUIAuthenticateTask;
  v12 = [(AMSAuthenticateTask *)&v16 initWithAuthenticationResults:results options:options bag:bag];
  v13 = v12;
  if (v12)
  {
    v15.receiver = v12;
    v15.super_class = AMSUIAuthenticateTask;
    [(AMSAuthenticateTask *)&v15 setDelegate:v12];
    objc_storeStrong(&v13->_presentingViewController, controller);
  }

  return v13;
}

- (AMSUIAuthenticateTask)initWithAuthenticationResults:(id)results presentingWindow:(id)window options:(id)options bag:(id)bag
{
  windowCopy = window;
  v16.receiver = self;
  v16.super_class = AMSUIAuthenticateTask;
  v12 = [(AMSAuthenticateTask *)&v16 initWithAuthenticationResults:results options:options bag:bag];
  v13 = v12;
  if (v12)
  {
    v15.receiver = v12;
    v15.super_class = AMSUIAuthenticateTask;
    [(AMSAuthenticateTask *)&v15 setDelegate:v12];
    objc_storeStrong(&v13->_presentingWindow, window);
  }

  return v13;
}

- (AMSUIAuthenticateTask)initWithRequest:(id)request presentingViewController:(id)controller
{
  v6 = MEMORY[0x1E698C7D8];
  controllerCopy = controller;
  requestCopy = request;
  amsui_internalBag = [v6 amsui_internalBag];
  v10 = [(AMSUIAuthenticateTask *)self initWithRequest:requestCopy presentingViewController:controllerCopy bag:amsui_internalBag];

  return v10;
}

- (AMSUIAuthenticateTask)initWithRequest:(id)request presentingWindow:(id)window
{
  v6 = MEMORY[0x1E698C7D8];
  windowCopy = window;
  requestCopy = request;
  amsui_internalBag = [v6 amsui_internalBag];
  v10 = [(AMSUIAuthenticateTask *)self initWithRequest:requestCopy presentingWindow:windowCopy bag:amsui_internalBag];

  return v10;
}

- (AMSUIAuthenticateTask)initWithRequest:(id)request presentingViewController:(id)controller bag:(id)bag
{
  requestCopy = request;
  bagCopy = bag;
  controllerCopy = controller;
  logKey = [requestCopy logKey];

  if (logKey)
  {
    logKey2 = [requestCopy logKey];
    v13 = AMSSetLogKey();
  }

  account = [requestCopy account];
  options = [requestCopy options];
  v16 = [(AMSUIAuthenticateTask *)self initWithAccount:account presentingViewController:controllerCopy options:options bag:bagCopy];

  return v16;
}

- (AMSUIAuthenticateTask)initWithRequest:(id)request presentingWindow:(id)window bag:(id)bag
{
  requestCopy = request;
  bagCopy = bag;
  windowCopy = window;
  logKey = [requestCopy logKey];

  if (logKey)
  {
    logKey2 = [requestCopy logKey];
    v13 = AMSSetLogKey();
  }

  account = [requestCopy account];
  options = [requestCopy options];
  v16 = [(AMSUIAuthenticateTask *)self initWithAccount:account presentingWindow:windowCopy options:options bag:bagCopy];

  return v16;
}

- (void)authenticateTask:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v8 = MEMORY[0x1E698C968];
  completionCopy = completion;
  sharedAccountsConfig = [v8 sharedAccountsConfig];
  if (!sharedAccountsConfig)
  {
    sharedAccountsConfig = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [sharedAccountsConfig OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = AMSLogKey();
    v14 = AMSHashIfNeeded();
    v20 = 138543874;
    v21 = v12;
    v22 = 2114;
    v23 = v13;
    v24 = 2114;
    v25 = v14;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling dialog request in UI Task. dialogRequest = %{public}@", &v20, 0x20u);
  }

  v15 = [AMSUIAlertDialogTask alloc];
  _getPresentingViewController = [(AMSUIAuthenticateTask *)self _getPresentingViewController];
  v17 = [(AMSUIAlertDialogTask *)v15 initWithRequest:requestCopy presentingViewController:_getPresentingViewController];

  present = [(AMSUIAlertDialogTask *)v17 present];
  [present addFinishBlock:completionCopy];

  v19 = *MEMORY[0x1E69E9840];
}

- (id)_createAuthKitUpdateTaskForAccount:(id)account
{
  accountCopy = account;
  v5 = objc_alloc_init(MEMORY[0x1E698CA58]);
  presentingWindow = [(AMSUIAuthenticateTask *)self presentingWindow];

  if (presentingWindow)
  {
    v7 = [AMSUIAuthKitUpdateTask alloc];
    presentingWindow2 = [(AMSUIAuthenticateTask *)self presentingWindow];
    options = [(AMSAuthenticateTask *)self options];
    v10 = [(AMSUIAuthKitUpdateTask *)v7 initWithAccount:accountCopy presentingWindow:presentingWindow2 options:options];

    [v5 finishWithResult:v10];
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60__AMSUIAuthenticateTask__createAuthKitUpdateTaskForAccount___block_invoke;
    v15[3] = &unk_1E7F24590;
    v15[4] = self;
    v16 = accountCopy;
    v17 = v5;
    v11 = v15;
    v12 = AMSLogKey();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __AMSDispatchAsync_block_invoke_0;
    block[3] = &unk_1E7F245E0;
    v19 = v12;
    v20 = v11;
    v13 = v12;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  return v5;
}

void __60__AMSUIAuthenticateTask__createAuthKitUpdateTaskForAccount___block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v2 = [*(a1 + 32) presentingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || ([*(a1 + 32) presentingViewController], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "topViewController"), v9 = objc_claimAutoreleasedReturnValue(), v4, !v9))
  {
    v9 = [*(a1 + 32) presentingViewController];
  }

  v5 = [AMSUIAuthKitUpdateTask alloc];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) options];
  v8 = [(AMSUIAuthKitUpdateTask *)v5 initWithAccount:v6 presentingViewController:v9 options:v7];

  [*(a1 + 48) finishWithResult:v8];
}

- (id)_presentEngagementRequest:(id)request
{
  requestCopy = request;
  v5 = objc_opt_new();
  v6 = [AMSUIEngagementTask alloc];
  v7 = [(AMSAuthenticateTask *)self bag];
  _getPresentingViewController = [(AMSUIAuthenticateTask *)self _getPresentingViewController];
  v9 = [(AMSUIEngagementTask *)v6 initWithRequest:requestCopy bag:v7 presentingViewController:_getPresentingViewController];

  presentEngagement = [(AMSUIEngagementTask *)v9 presentEngagement];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__AMSUIAuthenticateTask__presentEngagementRequest___block_invoke;
  v13[3] = &unk_1E7F24650;
  v11 = v5;
  v14 = v11;
  [presentEngagement addFinishBlock:v13];

  return v11;
}

uint64_t __51__AMSUIAuthenticateTask__presentEngagementRequest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 finishWithError:?];
  }

  else
  {
    return [v3 finishWithSuccess];
  }
}

- (id)_getPresentingViewController
{
  presentingWindow = [(AMSUIAuthenticateTask *)self presentingWindow];

  if (presentingWindow)
  {
    presentingWindow2 = [(AMSUIAuthenticateTask *)self presentingWindow];
    rootViewController = [presentingWindow2 rootViewController];
  }

  else
  {
    rootViewController = [(AMSUIAuthenticateTask *)self presentingViewController];
  }

  return rootViewController;
}

@end