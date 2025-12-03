@interface AMSUICommonErrorViewController
- (AMSUICommonErrorViewController)initWithError:(id)error logKey:(id)key bag:(id)bag retryAction:(id)action cancelAction:(id)cancelAction;
- (id)navigationItem;
- (void)_cancelButtonAction;
- (void)_enqueuePageEventIfNeeded;
- (void)_setup;
- (void)_setupNavigationItem;
- (void)_showCancelButton;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation AMSUICommonErrorViewController

- (AMSUICommonErrorViewController)initWithError:(id)error logKey:(id)key bag:(id)bag retryAction:(id)action cancelAction:(id)cancelAction
{
  errorCopy = error;
  keyCopy = key;
  bagCopy = bag;
  actionCopy = action;
  cancelActionCopy = cancelAction;
  v25.receiver = self;
  v25.super_class = AMSUICommonErrorViewController;
  v18 = [(AMSUICommonErrorViewController *)&v25 initWithNibName:0 bundle:0];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_error, error);
    objc_storeStrong(&v19->_logKey, key);
    objc_storeStrong(&v19->_bag, bag);
    v20 = _Block_copy(actionCopy);
    retryAction = v19->_retryAction;
    v19->_retryAction = v20;

    v22 = _Block_copy(cancelActionCopy);
    cancelAction = v19->_cancelAction;
    v19->_cancelAction = v22;
  }

  return v19;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = AMSUICommonErrorViewController;
  [(AMSUICommonViewController *)&v5 loadView];
  ams_defaultPlatformBackgroundColor = [MEMORY[0x1E69DC888] ams_defaultPlatformBackgroundColor];
  view = [(AMSUICommonViewController *)self view];
  [view ams_setBackgroundColor:ams_defaultPlatformBackgroundColor];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AMSUICommonErrorViewController;
  [(AMSUICommonErrorViewController *)&v3 viewDidLoad];
  [(AMSUICommonErrorViewController *)self _enqueuePageEventIfNeeded];
  [(AMSUICommonErrorViewController *)self _setup];
}

- (void)_enqueuePageEventIfNeeded
{
  v21 = *MEMORY[0x1E69E9840];
  engagementMetrics = [(AMSUICommonErrorViewController *)self engagementMetrics];

  if (engagementMetrics)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = AMSLogKey();
      *buf = 138543618;
      v18 = v6;
      v19 = 2114;
      v20 = v7;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Enqueueing engagement display event.", buf, 0x16u);
    }

    v8 = [(AMSUICommonErrorViewController *)self engagementMetrics:@"eventType"];
    v16[2] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:3];

    v10 = objc_alloc(MEMORY[0x1E698C8D8]);
    v11 = [(AMSUICommonErrorViewController *)self bag];
    v12 = [v10 initWithBag:v11];
    v13 = [v12 enqueueData:v9];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = AMSUICommonErrorViewController;
  [(AMSUICommonErrorViewController *)&v13 viewWillLayoutSubviews];
  view = [(AMSUICommonViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  errorView = [(AMSUICommonErrorViewController *)self errorView];
  [errorView setFrame:{v5, v7, v9, v11}];
}

- (id)navigationItem
{
  parentViewController = [(AMSUICommonErrorViewController *)self parentViewController];
  ams_navigationItemViewController = [parentViewController ams_navigationItemViewController];

  if (objc_opt_respondsToSelector())
  {
    navigationItem = [ams_navigationItemViewController navigationItem];
  }

  else
  {
    navigationItem = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    navigationItem2 = navigationItem;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = AMSUICommonErrorViewController;
    navigationItem2 = [(AMSUICommonErrorViewController *)&v9 navigationItem];
  }

  v7 = navigationItem2;

  return v7;
}

- (void)_setupNavigationItem
{
  v14 = *MEMORY[0x1E69E9840];
  navigationItem = [(AMSUICommonErrorViewController *)self navigationItem];
  if (objc_opt_respondsToSelector())
  {
    [navigationItem ams_configureWithTransparentBackground];
  }

  else
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = AMSLogKey();
      v8 = 138543874;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      v12 = 2114;
      v13 = objc_opt_class();
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@]: Unexpected navigation item of %{public}@ class", &v8, 0x20u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_showCancelButton
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonAction];
    v18[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];

    navigationController = [(AMSUICommonErrorViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    backItem = [navigationBar backItem];
    if (backItem)
    {
    }

    else
    {
      traitCollection = [(AMSUICommonErrorViewController *)self traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      if (userInterfaceIdiom != 5)
      {
        navigationItem = [(AMSUICommonErrorViewController *)self navigationItem];
        [navigationItem setLeftBarButtonItems:v4];
        goto LABEL_8;
      }
    }

    navigationItem = [(AMSUICommonErrorViewController *)self navigationItem];
    [navigationItem setRightBarButtonItems:v4];
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E69DC708]);
    v4 = [(AMSUICommonErrorViewController *)self bag];
    navigationItem = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
    v10 = AMSUILocalizedStringFromBundle(@"CANCEL", v4, navigationItem);
    v11 = [v8 initWithTitle:v10 style:0 target:self action:sel__cancelButtonAction];
    v17 = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    navigationItem2 = [(AMSUICommonErrorViewController *)self navigationItem];
    [navigationItem2 setLeftBarButtonItems:v12];
  }

LABEL_8:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_cancelButtonAction
{
  cancelAction = [(AMSUICommonErrorViewController *)self cancelAction];
  cancelAction[2]();
}

- (void)_setup
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = [AMSUIErrorView alloc];
  v4 = [(AMSUIErrorView *)v3 initWithFrame:&stru_1F3921360 title:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(AMSUICommonErrorViewController *)self setErrorView:v4];

  ams_defaultPlatformBackgroundColor = [MEMORY[0x1E69DC888] ams_defaultPlatformBackgroundColor];
  errorView = [(AMSUICommonErrorViewController *)self errorView];
  [errorView ams_setBackgroundColor:ams_defaultPlatformBackgroundColor];

  v39 = objc_alloc_init(AMSUIAirplaneModeInquiry);
  isEnabled = [(AMSUIAirplaneModeInquiry *)v39 isEnabled];
  error = [(AMSUICommonErrorViewController *)self error];
  userInfo = [error userInfo];
  v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 && ([v11 domain], v12 = objc_claimAutoreleasedReturnValue(), v13 = v12 == *MEMORY[0x1E695AD78] && isEnabled, v12, v13))
  {
    v14 = @"WIFI_AIRPLANE_MODE_ERROR";
  }

  else
  {
    v14 = @"DEFAULT_ERROR_TITLE";
  }

  v15 = [(AMSUICommonErrorViewController *)self bag];
  v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v17 = AMSUILocalizedStringFromBundle(v14, v15, v16);

  if (v17 && [v17 length])
  {
    errorView2 = [(AMSUICommonErrorViewController *)self errorView];
    [errorView2 setTitle:v17];
  }

  if (os_variant_has_internal_content())
  {
    error2 = [(AMSUICommonErrorViewController *)self error];
    ams_message = [error2 ams_message];
    errorView3 = [(AMSUICommonErrorViewController *)self errorView];
    [errorView3 setMessage:ams_message];
  }

  else
  {
    error2 = [(AMSUICommonErrorViewController *)self bag];
    ams_message = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
    errorView3 = AMSUILocalizedStringFromBundle(@"DEFAULT_ERROR_MESSAGE", error2, ams_message);
    errorView4 = [(AMSUICommonErrorViewController *)self errorView];
    [errorView4 setMessage:errorView3];
  }

  v23 = [(AMSUICommonErrorViewController *)self bag];
  v24 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v25 = AMSUILocalizedStringFromBundle(@"DEFAULT_ERROR_BUTTON", v23, v24);
  errorView5 = [(AMSUICommonErrorViewController *)self errorView];
  [errorView5 setButtonTitle:v25];

  errorView = self->_errorView;
  retryAction = [(AMSUICommonErrorViewController *)self retryAction];
  [(AMSUIErrorView *)errorView setButtonAction:retryAction];

  view = [(AMSUICommonViewController *)self view];
  errorView6 = [(AMSUICommonErrorViewController *)self errorView];
  [view addSubview:errorView6];

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v33 = objc_opt_class();
    logKey = self->_logKey;
    v35 = logKey;
    if (!logKey)
    {
      v35 = AMSLogKey();
    }

    title = [(AMSUIErrorView *)self->_errorView title];
    message = [(AMSUIErrorView *)self->_errorView message];
    *buf = 138544130;
    v41 = v33;
    v42 = 2114;
    v43 = v35;
    v44 = 2114;
    v45 = title;
    v46 = 2114;
    v47 = message;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error page displayed. Title: %{public}@, Message: %{public}@", buf, 0x2Au);

    if (!logKey)
    {
    }
  }

  [(AMSUICommonErrorViewController *)self _setupNavigationItem];
  [(AMSUICommonErrorViewController *)self _showCancelButton];

  v38 = *MEMORY[0x1E69E9840];
}

@end