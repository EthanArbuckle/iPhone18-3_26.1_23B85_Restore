@interface AMSUIWebErrorViewController
- (AMSUIWebErrorViewController)initWithContext:(id)a3;
- (void)_applyAppearance;
- (void)_enqueuePageEventIfNeeded;
- (void)_runAction;
- (void)_showCancelButtonIfNeeded;
- (void)loadView;
- (void)viewWillLayoutSubviews;
- (void)willPresentPageModel:(id)a3 appearance:(id)a4;
@end

@implementation AMSUIWebErrorViewController

- (AMSUIWebErrorViewController)initWithContext:(id)a3
{
  v5 = a3;
  v6 = [(AMSUICommonViewController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
  }

  return v7;
}

- (void)loadView
{
  v60[1] = *MEMORY[0x1E69E9840];
  v58.receiver = self;
  v58.super_class = AMSUIWebErrorViewController;
  [(AMSUICommonViewController *)&v58 loadView];
  v3 = [(AMSUIWebErrorViewController *)self model];
  v4 = [v3 error];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696A588]];
  v7 = [v6 lowercaseString];
  v8 = [v7 isEqualToString:@"user cancelled"];

  if ((v8 & 1) == 0)
  {
    v9 = objc_alloc(MEMORY[0x1E698CA38]);
    v10 = [(AMSUIWebErrorViewController *)self model];
    v11 = [v10 error];
    v12 = [v9 initWithSubsystem:*MEMORY[0x1E698C6F0] category:@"bootstrap" error:v11];

    v13 = [(AMSUIWebErrorViewController *)self context];
    v14 = [v13 clientInfo];
    v15 = [v14 bundleIdentifier];
    [v12 setClientApp:v15];

    v16 = [(AMSUIWebErrorViewController *)self context];
    v17 = [v16 clientOptions];
    v18 = [v17 objectForKeyedSubscript:@"inlineInterrupt"];
    if (objc_opt_respondsToSelector())
    {
      v19 = [(AMSUIWebErrorViewController *)self context];
      v20 = [v19 clientOptions];
      v21 = [v20 objectForKeyedSubscript:@"inlineInterrupt"];
      [v12 setEventInlineInterruption:{objc_msgSend(v21, "BOOLValue")}];
    }

    else
    {
      [v12 setEventInlineInterruption:0];
    }

    v22 = [(AMSUIWebErrorViewController *)self context];
    v23 = [v22 versionNumber];
    if (v23)
    {
      v59 = @"html";
      v24 = [(AMSUIWebErrorViewController *)self context];
      v25 = [v24 versionNumber];
      v60[0] = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:&v59 count:1];
      [v12 setJsVersions:v26];
    }

    else
    {
      v24 = [v12 jsVersions];
      [v12 setJsVersions:v24];
    }

    v27 = [(AMSUIWebErrorViewController *)self context];
    v28 = [v27 URL];
    [v12 setUrl:v28];

    v29 = [(AMSUIWebErrorViewController *)self context];
    v30 = [v29 metrics];
    [v30 enqueueEvent:v12];
  }

  v31 = [AMSUIErrorView alloc];
  v32 = [(AMSUIErrorView *)v31 initWithFrame:&stru_1F3921360 title:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(AMSUIWebErrorViewController *)self setErrorView:v32];

  v33 = [(AMSUIWebErrorViewController *)self model];
  v34 = [v33 errorTitle];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v37 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
    v36 = AMSUILocalizedStringFromBundle(@"DEFAULT_ERROR_TITLE", 0, v37);
  }

  v38 = [(AMSUIWebErrorViewController *)self model];
  v39 = [v38 actionButtonTitle];
  v40 = v39;
  if (v39)
  {
    v41 = v39;
  }

  else
  {
    v42 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
    v41 = AMSUILocalizedStringFromBundle(@"DEFAULT_ERROR_BUTTON", 0, v42);
  }

  v43 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v44 = AMSUILocalizedStringFromBundle(@"DEFAULT_ERROR_MESSAGE", 0, v43);

  v45 = [(AMSUIWebErrorViewController *)self model];
  if (([v45 errorMessageInternalOnly] & 1) == 0)
  {

LABEL_20:
    v45 = [(AMSUIWebErrorViewController *)self model];
    [v45 errorMessage];
    v44 = v46 = v44;
    goto LABEL_21;
  }

  v46 = [(AMSUIWebErrorViewController *)self model];
  if ([v46 errorMessageInternalOnly])
  {
    has_internal_content = os_variant_has_internal_content();

    if (!has_internal_content)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

LABEL_21:

LABEL_22:
  v48 = [(AMSUIWebErrorViewController *)self errorView];
  [v48 setTitle:v36];

  v49 = [(AMSUIWebErrorViewController *)self errorView];
  [v49 setButtonTitle:v41];

  v50 = [(AMSUIWebErrorViewController *)self errorView];
  [v50 setMessage:v44];

  objc_initWeak(&location, self);
  errorView = self->_errorView;
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __39__AMSUIWebErrorViewController_loadView__block_invoke;
  v55[3] = &unk_1E7F24968;
  objc_copyWeak(&v56, &location);
  [(AMSUIErrorView *)errorView setButtonAction:v55];
  [(AMSUIWebErrorViewController *)self _enqueuePageEventIfNeeded];
  v52 = [(AMSUICommonViewController *)self view];
  v53 = [(AMSUIWebErrorViewController *)self errorView];
  [v52 addSubview:v53];

  objc_destroyWeak(&v56);
  objc_destroyWeak(&location);

  v54 = *MEMORY[0x1E69E9840];
}

void __39__AMSUIWebErrorViewController_loadView__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = [WeakRetained context];
    v6 = [v5 logKey];
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Action button tapped", &v8, 0x16u);
  }

  [WeakRetained _runAction];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = AMSUIWebErrorViewController;
  [(AMSUIWebErrorViewController *)&v13 viewWillLayoutSubviews];
  v3 = [(AMSUICommonViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(AMSUIWebErrorViewController *)self errorView];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)willPresentPageModel:(id)a3 appearance:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    objc_storeStrong(&self->_model, v9);
    [(AMSUIWebErrorPageModel *)self->_model setDelegate:self];
    objc_storeStrong(&self->_appearance, a4);
  }

  else
  {
    v10 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v10)
    {
      v10 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = [(AMSUIWebErrorViewController *)self context];
      v14 = [v13 logKey];
      v16 = 138543874;
      v17 = v12;
      v18 = 2114;
      v19 = v14;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Invalid error page model: %{public}@", &v16, 0x20u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_applyAppearance
{
  v12 = [(AMSUIWebErrorViewController *)self appearance];
  v3 = +[AMSUIWebAppearance defaultPlatformBackgroundColor];
  v4 = [v12 backgroundColor];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = [(AMSUIWebErrorViewController *)self errorView];
  [v7 ams_setBackgroundColor:v6];

  v8 = [v12 backgroundColor];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v3;
  }

  v11 = [(AMSUICommonViewController *)self view];
  [v11 ams_setBackgroundColor:v10];

  [(AMSUIWebErrorViewController *)self _showCancelButtonIfNeeded];
}

- (void)_enqueuePageEventIfNeeded
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(AMSUIWebErrorViewController *)self context];
  v4 = [v3 metricsOverlay];
  v5 = [v4 objectForKeyedSubscript:@"engagementMetrics"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    goto LABEL_9;
  }

  v7 = [(AMSUIWebErrorViewController *)self context];
  v8 = [v7 clientOptions];
  v9 = [v8 objectForKeyedSubscript:@"engagementMetrics"];

  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 ? v9 : 0;

  if (v6)
  {
LABEL_9:
    v10 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v10)
    {
      v10 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      *buf = 138543618;
      v26 = v12;
      v27 = 2114;
      v28 = v13;
      _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Enqueueing engagement display event.", buf, 0x16u);
    }

    v14 = [(AMSUIWebErrorViewController *)self context:@"eventType"];
    v15 = [v14 URL];
    v24[3] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:4];

    v17 = objc_alloc(MEMORY[0x1E698C8D8]);
    v18 = [(AMSUIWebErrorViewController *)self context];
    v19 = [v18 bag];
    v20 = [v17 initWithBag:v19];
    v21 = [v20 enqueueData:v16];
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_showCancelButtonIfNeeded
{
  v3 = [(AMSUIWebErrorViewController *)self context];
  v4 = [v3 flowController];
  v25 = [v4 currentContainer];

  v5 = [v25 navigationItem];
  v6 = [v5 hidesBackButton];
  v7 = [(AMSUIWebErrorViewController *)self navigationController];
  v8 = [v7 viewControllers];
  v9 = [v8 count];

  v10 = [(AMSUIWebErrorViewController *)self appearance];
  v11 = [v10 clientHandlesDismissability];

  if ((v9 < 2 || v6) && (([(AMSUIWebErrorViewController *)self showingCancelButton]| v11) & 1) == 0)
  {
    v12 = [v5 rightBarButtonItems];
    v13 = [v12 count];

    if (!v13)
    {
      [(AMSUIWebErrorViewController *)self setShowingCancelButton:1];
      v14 = [AMSUIWebFlowAction alloc];
      v15 = [(AMSUIWebErrorViewController *)self context];
      v16 = [(AMSUIWebFlowAction *)v14 initWithContext:v15];

      [(AMSUIWebFlowAction *)v16 setPresentationType:4];
      v17 = objc_alloc_init(AMSUIWebButtonModel);
      if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
      {
        [(AMSUIWebButtonModel *)v17 setStyle:2];
      }

      else
      {
        v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
        v19 = AMSUILocalizedStringFromBundle(@"CANCEL", 0, v18);
        [(AMSUIWebButtonModel *)v17 setTitle:v19];
      }

      [(AMSUIWebButtonModel *)v17 setAction:v16];
      [(AMSUIWebButtonModel *)v17 setEnabled:1];
      [(AMSUIWebButtonModel *)v17 setStyle:3];
      v20 = objc_alloc_init(AMSUIWebBarButtonItemModel);
      [(AMSUIWebBarButtonItemModel *)v20 setButtonModel:v17];
      v21 = objc_alloc_init(AMSUIWebNavigationBarModel);
      [(AMSUIWebNavigationBarModel *)v21 setLeftBarButtonItemModel:v20];
      v22 = [(AMSUIWebErrorViewController *)self model];
      v23 = [v22 navigationBar];
      if ([v23 style] == 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = 5;
      }

      [(AMSUIWebNavigationBarModel *)v21 setStyle:v24];

      [v25 applyNavigationModel:v21];
    }
  }
}

- (void)_runAction
{
  v3 = [(AMSUIWebErrorViewController *)self model];
  v4 = [v3 action];

  if (v4)
  {
    v5 = [(AMSUIWebErrorViewController *)self model];
    v6 = [v5 action];
    v7 = [v6 runAction];
  }

  v8 = [(AMSUIWebErrorViewController *)self model];
  v9 = [v8 actionBlock];

  if (v9)
  {
    v11 = [(AMSUIWebErrorViewController *)self model];
    v10 = [v11 actionBlock];
    (v10)[2](v10, v4 != 0);
  }
}

@end