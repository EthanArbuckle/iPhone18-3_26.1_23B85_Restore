@interface AMSUICommonErrorViewController
- (AMSUICommonErrorViewController)initWithError:(id)a3 logKey:(id)a4 bag:(id)a5 retryAction:(id)a6 cancelAction:(id)a7;
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

- (AMSUICommonErrorViewController)initWithError:(id)a3 logKey:(id)a4 bag:(id)a5 retryAction:(id)a6 cancelAction:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v25.receiver = self;
  v25.super_class = AMSUICommonErrorViewController;
  v18 = [(AMSUICommonErrorViewController *)&v25 initWithNibName:0 bundle:0];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_error, a3);
    objc_storeStrong(&v19->_logKey, a4);
    objc_storeStrong(&v19->_bag, a5);
    v20 = _Block_copy(v16);
    retryAction = v19->_retryAction;
    v19->_retryAction = v20;

    v22 = _Block_copy(v17);
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
  v3 = [MEMORY[0x1E69DC888] ams_defaultPlatformBackgroundColor];
  v4 = [(AMSUICommonViewController *)self view];
  [v4 ams_setBackgroundColor:v3];
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
  v3 = [(AMSUICommonErrorViewController *)self engagementMetrics];

  if (v3)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v4)
    {
      v4 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = AMSLogKey();
      *buf = 138543618;
      v18 = v6;
      v19 = 2114;
      v20 = v7;
      _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Enqueueing engagement display event.", buf, 0x16u);
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
  v3 = [(AMSUICommonViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(AMSUICommonErrorViewController *)self errorView];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (id)navigationItem
{
  v3 = [(AMSUICommonErrorViewController *)self parentViewController];
  v4 = [v3 ams_navigationItemViewController];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 navigationItem];
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = AMSUICommonErrorViewController;
    v6 = [(AMSUICommonErrorViewController *)&v9 navigationItem];
  }

  v7 = v6;

  return v7;
}

- (void)_setupNavigationItem
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(AMSUICommonErrorViewController *)self navigationItem];
  if (objc_opt_respondsToSelector())
  {
    [v2 ams_configureWithTransparentBackground];
  }

  else
  {
    v3 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v3)
    {
      v3 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v4 = [v3 OSLogObject];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = AMSLogKey();
      v8 = 138543874;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      v12 = 2114;
      v13 = objc_opt_class();
      _os_log_impl(&dword_1BB036000, v4, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@]: Unexpected navigation item of %{public}@ class", &v8, 0x20u);
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

    v5 = [(AMSUICommonErrorViewController *)self navigationController];
    v6 = [v5 navigationBar];
    v7 = [v6 backItem];
    if (v7)
    {
    }

    else
    {
      v14 = [(AMSUICommonErrorViewController *)self traitCollection];
      v15 = [v14 userInterfaceIdiom];

      if (v15 != 5)
      {
        v9 = [(AMSUICommonErrorViewController *)self navigationItem];
        [v9 setLeftBarButtonItems:v4];
        goto LABEL_8;
      }
    }

    v9 = [(AMSUICommonErrorViewController *)self navigationItem];
    [v9 setRightBarButtonItems:v4];
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E69DC708]);
    v4 = [(AMSUICommonErrorViewController *)self bag];
    v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
    v10 = AMSUILocalizedStringFromBundle(@"CANCEL", v4, v9);
    v11 = [v8 initWithTitle:v10 style:0 target:self action:sel__cancelButtonAction];
    v17 = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    v13 = [(AMSUICommonErrorViewController *)self navigationItem];
    [v13 setLeftBarButtonItems:v12];
  }

LABEL_8:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_cancelButtonAction
{
  v2 = [(AMSUICommonErrorViewController *)self cancelAction];
  v2[2]();
}

- (void)_setup
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = [AMSUIErrorView alloc];
  v4 = [(AMSUIErrorView *)v3 initWithFrame:&stru_1F3921360 title:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(AMSUICommonErrorViewController *)self setErrorView:v4];

  v5 = [MEMORY[0x1E69DC888] ams_defaultPlatformBackgroundColor];
  v6 = [(AMSUICommonErrorViewController *)self errorView];
  [v6 ams_setBackgroundColor:v5];

  v39 = objc_alloc_init(AMSUIAirplaneModeInquiry);
  v7 = [(AMSUIAirplaneModeInquiry *)v39 isEnabled];
  v8 = [(AMSUICommonErrorViewController *)self error];
  v9 = [v8 userInfo];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 && ([v11 domain], v12 = objc_claimAutoreleasedReturnValue(), v13 = v12 == *MEMORY[0x1E695AD78] && v7, v12, v13))
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
    v18 = [(AMSUICommonErrorViewController *)self errorView];
    [v18 setTitle:v17];
  }

  if (os_variant_has_internal_content())
  {
    v19 = [(AMSUICommonErrorViewController *)self error];
    v20 = [v19 ams_message];
    v21 = [(AMSUICommonErrorViewController *)self errorView];
    [v21 setMessage:v20];
  }

  else
  {
    v19 = [(AMSUICommonErrorViewController *)self bag];
    v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
    v21 = AMSUILocalizedStringFromBundle(@"DEFAULT_ERROR_MESSAGE", v19, v20);
    v22 = [(AMSUICommonErrorViewController *)self errorView];
    [v22 setMessage:v21];
  }

  v23 = [(AMSUICommonErrorViewController *)self bag];
  v24 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v25 = AMSUILocalizedStringFromBundle(@"DEFAULT_ERROR_BUTTON", v23, v24);
  v26 = [(AMSUICommonErrorViewController *)self errorView];
  [v26 setButtonTitle:v25];

  errorView = self->_errorView;
  v28 = [(AMSUICommonErrorViewController *)self retryAction];
  [(AMSUIErrorView *)errorView setButtonAction:v28];

  v29 = [(AMSUICommonViewController *)self view];
  v30 = [(AMSUICommonErrorViewController *)self errorView];
  [v29 addSubview:v30];

  v31 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v31)
  {
    v31 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v32 = [v31 OSLogObject];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v33 = objc_opt_class();
    logKey = self->_logKey;
    v35 = logKey;
    if (!logKey)
    {
      v35 = AMSLogKey();
    }

    v36 = [(AMSUIErrorView *)self->_errorView title];
    v37 = [(AMSUIErrorView *)self->_errorView message];
    *buf = 138544130;
    v41 = v33;
    v42 = 2114;
    v43 = v35;
    v44 = 2114;
    v45 = v36;
    v46 = 2114;
    v47 = v37;
    _os_log_impl(&dword_1BB036000, v32, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error page displayed. Title: %{public}@, Message: %{public}@", buf, 0x2Au);

    if (!logKey)
    {
    }
  }

  [(AMSUICommonErrorViewController *)self _setupNavigationItem];
  [(AMSUICommonErrorViewController *)self _showCancelButton];

  v38 = *MEMORY[0x1E69E9840];
}

@end