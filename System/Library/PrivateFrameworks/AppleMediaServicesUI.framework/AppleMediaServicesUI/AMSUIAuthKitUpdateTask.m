@interface AMSUIAuthKitUpdateTask
- (AMSUIAuthKitUpdateTask)initWithAccount:(id)a3 presentingViewController:(id)a4 options:(id)a5;
- (AMSUIAuthKitUpdateTask)initWithAccount:(id)a3 presentingWindow:(id)a4 options:(id)a5;
- (id)_createAuthKitContext;
- (unint64_t)_authenticationType;
- (void)_configureAuthKitContext:(id)a3;
- (void)contextDidDismissLoginAlertController:(id)a3;
- (void)contextDidEndPresentingSecondaryUI:(id)a3;
- (void)contextDidPresentLoginAlertController:(id)a3;
- (void)contextWillBeginPresentingSecondaryUI:(id)a3;
- (void)contextWillDismissLoginAlertController:(id)a3;
@end

@implementation AMSUIAuthKitUpdateTask

- (AMSUIAuthKitUpdateTask)initWithAccount:(id)a3 presentingViewController:(id)a4 options:(id)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = AMSUIAuthKitUpdateTask;
  v10 = [(AMSAuthKitUpdateTask *)&v13 initWithAccount:a3 options:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_presentingViewController, a4);
  }

  return v11;
}

- (AMSUIAuthKitUpdateTask)initWithAccount:(id)a3 presentingWindow:(id)a4 options:(id)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = AMSUIAuthKitUpdateTask;
  v10 = [(AMSAuthKitUpdateTask *)&v13 initWithAccount:a3 options:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_presentingWindow, a4);
  }

  return v11;
}

- (unint64_t)_authenticationType
{
  v2 = [(AMSAuthKitUpdateTask *)self options];
  v3 = [v2 authenticationType];

  return v3;
}

- (void)_configureAuthKitContext:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AMSUIAuthKitUpdateTask;
  [(AMSAuthKitUpdateTask *)&v15 _configureAuthKitContext:v4];
  getAKAppleIDAuthenticationInAppContextClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 cancelButtonString];

    if (!v6)
    {
      v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
      v8 = AMSUILocalizedStringFromBundle(@"CANCEL", 0, v7);
      [v5 setCancelButtonString:v8];
    }

    v9 = [v5 defaultButtonString];

    if (!v9)
    {
      v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
      v11 = AMSUILocalizedStringFromBundle(@"SIGN_IN_BUTTON_TITLE", 0, v10);
      [v5 setDefaultButtonString:v11];
    }

    v12 = [(AMSUIAuthKitUpdateTask *)self presentingWindow];

    if (v12)
    {
      v13 = [(AMSUIAuthKitUpdateTask *)self presentingWindow];
      v14 = [v13 rootViewController];
      [v5 setPresentingViewController:v14];
    }

    else
    {
      v13 = [(AMSUIAuthKitUpdateTask *)self getPresentingViewController];
      [v5 setPresentingViewController:v13];
    }

    [v5 setDelegate:self];
  }
}

- (id)_createAuthKitContext
{
  v2 = objc_alloc_init(getAKAppleIDAuthenticationInAppContextClass());

  return v2;
}

- (void)contextDidPresentLoginAlertController:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E698C968] sharedAccountsConfig];
  if (!v7)
  {
    v7 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(AMSAuthKitUpdateTask *)self options];
    v10 = [v9 logKey];
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    if (v10)
    {
      v13 = [(AMSAuthKitUpdateTask *)self options];
      v3 = [v13 logKey];
      a2 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: [%@] %@ ", v12, v3, a2];
    }

    else
    {
      v13 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: %@ ", v12, v13];
    }
    v14 = ;
    v15 = AMSHashIfNeeded();
    *buf = 138543618;
    v18 = v14;
    v19 = 2114;
    v20 = v15;
    _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@context: %{public}@", buf, 0x16u);
    if (v10)
    {

      v14 = v3;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)contextWillDismissLoginAlertController:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E698C968] sharedAccountsConfig];
  if (!v7)
  {
    v7 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(AMSAuthKitUpdateTask *)self options];
    v10 = [v9 logKey];
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    if (v10)
    {
      v13 = [(AMSAuthKitUpdateTask *)self options];
      v3 = [v13 logKey];
      a2 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: [%@] %@ ", v12, v3, a2];
    }

    else
    {
      v13 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: %@ ", v12, v13];
    }
    v14 = ;
    v15 = AMSHashIfNeeded();
    *buf = 138543618;
    v18 = v14;
    v19 = 2114;
    v20 = v15;
    _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@context: %{public}@", buf, 0x16u);
    if (v10)
    {

      v14 = v3;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)contextDidDismissLoginAlertController:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E698C968] sharedAccountsConfig];
  if (!v7)
  {
    v7 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(AMSAuthKitUpdateTask *)self options];
    v10 = [v9 logKey];
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    if (v10)
    {
      v13 = [(AMSAuthKitUpdateTask *)self options];
      v3 = [v13 logKey];
      a2 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: [%@] %@ ", v12, v3, a2];
    }

    else
    {
      v13 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: %@ ", v12, v13];
    }
    v14 = ;
    v15 = AMSHashIfNeeded();
    *buf = 138543618;
    v18 = v14;
    v19 = 2114;
    v20 = v15;
    _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@context: %{public}@", buf, 0x16u);
    if (v10)
    {

      v14 = v3;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)contextWillBeginPresentingSecondaryUI:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E698C968] sharedAccountsConfig];
  if (!v7)
  {
    v7 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(AMSAuthKitUpdateTask *)self options];
    v10 = [v9 logKey];
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    if (v10)
    {
      v13 = [(AMSAuthKitUpdateTask *)self options];
      v3 = [v13 logKey];
      a2 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: [%@] %@ ", v12, v3, a2];
    }

    else
    {
      v13 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: %@ ", v12, v13];
    }
    v14 = ;
    v15 = AMSHashIfNeeded();
    *buf = 138543618;
    v18 = v14;
    v19 = 2114;
    v20 = v15;
    _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@context: %{public}@", buf, 0x16u);
    if (v10)
    {

      v14 = v3;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)contextDidEndPresentingSecondaryUI:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E698C968] sharedAccountsConfig];
  if (!v7)
  {
    v7 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(AMSAuthKitUpdateTask *)self options];
    v10 = [v9 logKey];
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    if (v10)
    {
      v13 = [(AMSAuthKitUpdateTask *)self options];
      v3 = [v13 logKey];
      a2 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: [%@] %@ ", v12, v3, a2];
    }

    else
    {
      v13 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: %@ ", v12, v13];
    }
    v14 = ;
    v15 = AMSHashIfNeeded();
    *buf = 138543618;
    v18 = v14;
    v19 = 2114;
    v20 = v15;
    _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@context: %{public}@", buf, 0x16u);
    if (v10)
    {

      v14 = v3;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end