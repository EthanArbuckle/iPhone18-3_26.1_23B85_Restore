@interface AMSUIAuthenticateTask
- (AMSUIAuthenticateTask)initWithAccount:(id)a3 presentingViewController:(id)a4 options:(id)a5;
- (AMSUIAuthenticateTask)initWithAccount:(id)a3 presentingViewController:(id)a4 options:(id)a5 bag:(id)a6;
- (AMSUIAuthenticateTask)initWithAccount:(id)a3 presentingWindow:(id)a4 options:(id)a5;
- (AMSUIAuthenticateTask)initWithAccount:(id)a3 presentingWindow:(id)a4 options:(id)a5 bag:(id)a6;
- (AMSUIAuthenticateTask)initWithAuthenticationResults:(id)a3 presentingViewController:(id)a4 options:(id)a5;
- (AMSUIAuthenticateTask)initWithAuthenticationResults:(id)a3 presentingViewController:(id)a4 options:(id)a5 bag:(id)a6;
- (AMSUIAuthenticateTask)initWithAuthenticationResults:(id)a3 presentingWindow:(id)a4 options:(id)a5;
- (AMSUIAuthenticateTask)initWithAuthenticationResults:(id)a3 presentingWindow:(id)a4 options:(id)a5 bag:(id)a6;
- (AMSUIAuthenticateTask)initWithRequest:(id)a3 presentingViewController:(id)a4;
- (AMSUIAuthenticateTask)initWithRequest:(id)a3 presentingViewController:(id)a4 bag:(id)a5;
- (AMSUIAuthenticateTask)initWithRequest:(id)a3 presentingWindow:(id)a4;
- (AMSUIAuthenticateTask)initWithRequest:(id)a3 presentingWindow:(id)a4 bag:(id)a5;
- (id)_createAuthKitUpdateTaskForAccount:(id)a3;
- (id)_getPresentingViewController;
- (id)_presentEngagementRequest:(id)a3;
- (void)authenticateTask:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5;
@end

@implementation AMSUIAuthenticateTask

- (AMSUIAuthenticateTask)initWithAccount:(id)a3 presentingViewController:(id)a4 options:(id)a5
{
  v8 = MEMORY[0x1E698C7D8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 amsui_internalBag];
  v13 = [(AMSUIAuthenticateTask *)self initWithAccount:v11 presentingViewController:v10 options:v9 bag:v12];

  return v13;
}

- (AMSUIAuthenticateTask)initWithAccount:(id)a3 presentingWindow:(id)a4 options:(id)a5
{
  v8 = MEMORY[0x1E698C7D8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 amsui_internalBag];
  v13 = [(AMSUIAuthenticateTask *)self initWithAccount:v11 presentingWindow:v10 options:v9 bag:v12];

  return v13;
}

- (AMSUIAuthenticateTask)initWithAccount:(id)a3 presentingViewController:(id)a4 options:(id)a5 bag:(id)a6
{
  v11 = a4;
  v16.receiver = self;
  v16.super_class = AMSUIAuthenticateTask;
  v12 = [(AMSAuthenticateTask *)&v16 initWithAccount:a3 options:a5 bag:a6];
  v13 = v12;
  if (v12)
  {
    v15.receiver = v12;
    v15.super_class = AMSUIAuthenticateTask;
    [(AMSAuthenticateTask *)&v15 setDelegate:v12];
    objc_storeStrong(&v13->_presentingViewController, a4);
  }

  return v13;
}

- (AMSUIAuthenticateTask)initWithAccount:(id)a3 presentingWindow:(id)a4 options:(id)a5 bag:(id)a6
{
  v11 = a4;
  v16.receiver = self;
  v16.super_class = AMSUIAuthenticateTask;
  v12 = [(AMSAuthenticateTask *)&v16 initWithAccount:a3 options:a5 bag:a6];
  v13 = v12;
  if (v12)
  {
    v15.receiver = v12;
    v15.super_class = AMSUIAuthenticateTask;
    [(AMSAuthenticateTask *)&v15 setDelegate:v12];
    objc_storeStrong(&v13->_presentingWindow, a4);
  }

  return v13;
}

- (AMSUIAuthenticateTask)initWithAuthenticationResults:(id)a3 presentingViewController:(id)a4 options:(id)a5
{
  v8 = MEMORY[0x1E698C7D8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 amsui_internalBag];
  v13 = [(AMSUIAuthenticateTask *)self initWithAuthenticationResults:v11 presentingViewController:v10 options:v9 bag:v12];

  return v13;
}

- (AMSUIAuthenticateTask)initWithAuthenticationResults:(id)a3 presentingWindow:(id)a4 options:(id)a5
{
  v8 = MEMORY[0x1E698C7D8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 amsui_internalBag];
  v13 = [(AMSUIAuthenticateTask *)self initWithAuthenticationResults:v11 presentingWindow:v10 options:v9 bag:v12];

  return v13;
}

- (AMSUIAuthenticateTask)initWithAuthenticationResults:(id)a3 presentingViewController:(id)a4 options:(id)a5 bag:(id)a6
{
  v11 = a4;
  v16.receiver = self;
  v16.super_class = AMSUIAuthenticateTask;
  v12 = [(AMSAuthenticateTask *)&v16 initWithAuthenticationResults:a3 options:a5 bag:a6];
  v13 = v12;
  if (v12)
  {
    v15.receiver = v12;
    v15.super_class = AMSUIAuthenticateTask;
    [(AMSAuthenticateTask *)&v15 setDelegate:v12];
    objc_storeStrong(&v13->_presentingViewController, a4);
  }

  return v13;
}

- (AMSUIAuthenticateTask)initWithAuthenticationResults:(id)a3 presentingWindow:(id)a4 options:(id)a5 bag:(id)a6
{
  v11 = a4;
  v16.receiver = self;
  v16.super_class = AMSUIAuthenticateTask;
  v12 = [(AMSAuthenticateTask *)&v16 initWithAuthenticationResults:a3 options:a5 bag:a6];
  v13 = v12;
  if (v12)
  {
    v15.receiver = v12;
    v15.super_class = AMSUIAuthenticateTask;
    [(AMSAuthenticateTask *)&v15 setDelegate:v12];
    objc_storeStrong(&v13->_presentingWindow, a4);
  }

  return v13;
}

- (AMSUIAuthenticateTask)initWithRequest:(id)a3 presentingViewController:(id)a4
{
  v6 = MEMORY[0x1E698C7D8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 amsui_internalBag];
  v10 = [(AMSUIAuthenticateTask *)self initWithRequest:v8 presentingViewController:v7 bag:v9];

  return v10;
}

- (AMSUIAuthenticateTask)initWithRequest:(id)a3 presentingWindow:(id)a4
{
  v6 = MEMORY[0x1E698C7D8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 amsui_internalBag];
  v10 = [(AMSUIAuthenticateTask *)self initWithRequest:v8 presentingWindow:v7 bag:v9];

  return v10;
}

- (AMSUIAuthenticateTask)initWithRequest:(id)a3 presentingViewController:(id)a4 bag:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v8 logKey];

  if (v11)
  {
    v12 = [v8 logKey];
    v13 = AMSSetLogKey();
  }

  v14 = [v8 account];
  v15 = [v8 options];
  v16 = [(AMSUIAuthenticateTask *)self initWithAccount:v14 presentingViewController:v10 options:v15 bag:v9];

  return v16;
}

- (AMSUIAuthenticateTask)initWithRequest:(id)a3 presentingWindow:(id)a4 bag:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v8 logKey];

  if (v11)
  {
    v12 = [v8 logKey];
    v13 = AMSSetLogKey();
  }

  v14 = [v8 account];
  v15 = [v8 options];
  v16 = [(AMSUIAuthenticateTask *)self initWithAccount:v14 presentingWindow:v10 options:v15 bag:v9];

  return v16;
}

- (void)authenticateTask:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = MEMORY[0x1E698C968];
  v9 = a5;
  v10 = [v8 sharedAccountsConfig];
  if (!v10)
  {
    v10 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling dialog request in UI Task. dialogRequest = %{public}@", &v20, 0x20u);
  }

  v15 = [AMSUIAlertDialogTask alloc];
  v16 = [(AMSUIAuthenticateTask *)self _getPresentingViewController];
  v17 = [(AMSUIAlertDialogTask *)v15 initWithRequest:v7 presentingViewController:v16];

  v18 = [(AMSUIAlertDialogTask *)v17 present];
  [v18 addFinishBlock:v9];

  v19 = *MEMORY[0x1E69E9840];
}

- (id)_createAuthKitUpdateTaskForAccount:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E698CA58]);
  v6 = [(AMSUIAuthenticateTask *)self presentingWindow];

  if (v6)
  {
    v7 = [AMSUIAuthKitUpdateTask alloc];
    v8 = [(AMSUIAuthenticateTask *)self presentingWindow];
    v9 = [(AMSAuthenticateTask *)self options];
    v10 = [(AMSUIAuthKitUpdateTask *)v7 initWithAccount:v4 presentingWindow:v8 options:v9];

    [v5 finishWithResult:v10];
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60__AMSUIAuthenticateTask__createAuthKitUpdateTaskForAccount___block_invoke;
    v15[3] = &unk_1E7F24590;
    v15[4] = self;
    v16 = v4;
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

- (id)_presentEngagementRequest:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [AMSUIEngagementTask alloc];
  v7 = [(AMSAuthenticateTask *)self bag];
  v8 = [(AMSUIAuthenticateTask *)self _getPresentingViewController];
  v9 = [(AMSUIEngagementTask *)v6 initWithRequest:v4 bag:v7 presentingViewController:v8];

  v10 = [(AMSUIEngagementTask *)v9 presentEngagement];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__AMSUIAuthenticateTask__presentEngagementRequest___block_invoke;
  v13[3] = &unk_1E7F24650;
  v11 = v5;
  v14 = v11;
  [v10 addFinishBlock:v13];

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
  v3 = [(AMSUIAuthenticateTask *)self presentingWindow];

  if (v3)
  {
    v4 = [(AMSUIAuthenticateTask *)self presentingWindow];
    v5 = [v4 rootViewController];
  }

  else
  {
    v5 = [(AMSUIAuthenticateTask *)self presentingViewController];
  }

  return v5;
}

@end