@interface AMSUIAuthKitUpdateTask
- (AMSUIAuthKitUpdateTask)initWithAccount:(id)account presentingViewController:(id)controller options:(id)options;
- (AMSUIAuthKitUpdateTask)initWithAccount:(id)account presentingWindow:(id)window options:(id)options;
- (id)_createAuthKitContext;
- (unint64_t)_authenticationType;
- (void)_configureAuthKitContext:(id)context;
- (void)contextDidDismissLoginAlertController:(id)controller;
- (void)contextDidEndPresentingSecondaryUI:(id)i;
- (void)contextDidPresentLoginAlertController:(id)controller;
- (void)contextWillBeginPresentingSecondaryUI:(id)i;
- (void)contextWillDismissLoginAlertController:(id)controller;
@end

@implementation AMSUIAuthKitUpdateTask

- (AMSUIAuthKitUpdateTask)initWithAccount:(id)account presentingViewController:(id)controller options:(id)options
{
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = AMSUIAuthKitUpdateTask;
  v10 = [(AMSAuthKitUpdateTask *)&v13 initWithAccount:account options:options];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_presentingViewController, controller);
  }

  return v11;
}

- (AMSUIAuthKitUpdateTask)initWithAccount:(id)account presentingWindow:(id)window options:(id)options
{
  windowCopy = window;
  v13.receiver = self;
  v13.super_class = AMSUIAuthKitUpdateTask;
  v10 = [(AMSAuthKitUpdateTask *)&v13 initWithAccount:account options:options];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_presentingWindow, window);
  }

  return v11;
}

- (unint64_t)_authenticationType
{
  options = [(AMSAuthKitUpdateTask *)self options];
  authenticationType = [options authenticationType];

  return authenticationType;
}

- (void)_configureAuthKitContext:(id)context
{
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = AMSUIAuthKitUpdateTask;
  [(AMSAuthKitUpdateTask *)&v15 _configureAuthKitContext:contextCopy];
  getAKAppleIDAuthenticationInAppContextClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = contextCopy;
    cancelButtonString = [v5 cancelButtonString];

    if (!cancelButtonString)
    {
      v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
      v8 = AMSUILocalizedStringFromBundle(@"CANCEL", 0, v7);
      [v5 setCancelButtonString:v8];
    }

    defaultButtonString = [v5 defaultButtonString];

    if (!defaultButtonString)
    {
      v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
      v11 = AMSUILocalizedStringFromBundle(@"SIGN_IN_BUTTON_TITLE", 0, v10);
      [v5 setDefaultButtonString:v11];
    }

    presentingWindow = [(AMSUIAuthKitUpdateTask *)self presentingWindow];

    if (presentingWindow)
    {
      presentingWindow2 = [(AMSUIAuthKitUpdateTask *)self presentingWindow];
      rootViewController = [presentingWindow2 rootViewController];
      [v5 setPresentingViewController:rootViewController];
    }

    else
    {
      presentingWindow2 = [(AMSUIAuthKitUpdateTask *)self getPresentingViewController];
      [v5 setPresentingViewController:presentingWindow2];
    }

    [v5 setDelegate:self];
  }
}

- (id)_createAuthKitContext
{
  v2 = objc_alloc_init(getAKAppleIDAuthenticationInAppContextClass());

  return v2;
}

- (void)contextDidPresentLoginAlertController:(id)controller
{
  v21 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedAccountsConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    options = [(AMSAuthKitUpdateTask *)self options];
    logKey = [options logKey];
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    if (logKey)
    {
      options2 = [(AMSAuthKitUpdateTask *)self options];
      logKey2 = [options2 logKey];
      a2 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: [%@] %@ ", v12, logKey2, a2];
    }

    else
    {
      options2 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: %@ ", v12, options2];
    }
    v14 = ;
    v15 = AMSHashIfNeeded();
    *buf = 138543618;
    v18 = v14;
    v19 = 2114;
    v20 = v15;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@context: %{public}@", buf, 0x16u);
    if (logKey)
    {

      v14 = logKey2;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)contextWillDismissLoginAlertController:(id)controller
{
  v21 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedAccountsConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    options = [(AMSAuthKitUpdateTask *)self options];
    logKey = [options logKey];
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    if (logKey)
    {
      options2 = [(AMSAuthKitUpdateTask *)self options];
      logKey2 = [options2 logKey];
      a2 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: [%@] %@ ", v12, logKey2, a2];
    }

    else
    {
      options2 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: %@ ", v12, options2];
    }
    v14 = ;
    v15 = AMSHashIfNeeded();
    *buf = 138543618;
    v18 = v14;
    v19 = 2114;
    v20 = v15;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@context: %{public}@", buf, 0x16u);
    if (logKey)
    {

      v14 = logKey2;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)contextDidDismissLoginAlertController:(id)controller
{
  v21 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedAccountsConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    options = [(AMSAuthKitUpdateTask *)self options];
    logKey = [options logKey];
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    if (logKey)
    {
      options2 = [(AMSAuthKitUpdateTask *)self options];
      logKey2 = [options2 logKey];
      a2 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: [%@] %@ ", v12, logKey2, a2];
    }

    else
    {
      options2 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: %@ ", v12, options2];
    }
    v14 = ;
    v15 = AMSHashIfNeeded();
    *buf = 138543618;
    v18 = v14;
    v19 = 2114;
    v20 = v15;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@context: %{public}@", buf, 0x16u);
    if (logKey)
    {

      v14 = logKey2;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)contextWillBeginPresentingSecondaryUI:(id)i
{
  v21 = *MEMORY[0x1E69E9840];
  iCopy = i;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedAccountsConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    options = [(AMSAuthKitUpdateTask *)self options];
    logKey = [options logKey];
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    if (logKey)
    {
      options2 = [(AMSAuthKitUpdateTask *)self options];
      logKey2 = [options2 logKey];
      a2 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: [%@] %@ ", v12, logKey2, a2];
    }

    else
    {
      options2 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: %@ ", v12, options2];
    }
    v14 = ;
    v15 = AMSHashIfNeeded();
    *buf = 138543618;
    v18 = v14;
    v19 = 2114;
    v20 = v15;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@context: %{public}@", buf, 0x16u);
    if (logKey)
    {

      v14 = logKey2;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)contextDidEndPresentingSecondaryUI:(id)i
{
  v21 = *MEMORY[0x1E69E9840];
  iCopy = i;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedAccountsConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    options = [(AMSAuthKitUpdateTask *)self options];
    logKey = [options logKey];
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    if (logKey)
    {
      options2 = [(AMSAuthKitUpdateTask *)self options];
      logKey2 = [options2 logKey];
      a2 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: [%@] %@ ", v12, logKey2, a2];
    }

    else
    {
      options2 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: %@ ", v12, options2];
    }
    v14 = ;
    v15 = AMSHashIfNeeded();
    *buf = 138543618;
    v18 = v14;
    v19 = 2114;
    v20 = v15;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@context: %{public}@", buf, 0x16u);
    if (logKey)
    {

      v14 = logKey2;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end