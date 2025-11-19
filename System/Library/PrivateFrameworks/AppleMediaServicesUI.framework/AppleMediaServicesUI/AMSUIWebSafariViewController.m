@interface AMSUIWebSafariViewController
- (AMSUIWebSafariViewController)initWithContext:(id)a3;
- (BOOL)_callActionHandlerWithURL:(id)a3 error:(id)a4;
- (NSURL)originalURL;
- (id)_createToolBar;
- (void)_back:(id)a3;
- (void)_cancel:(id)a3;
- (void)_dismiss;
- (void)_finishedLoadingWithSuccess:(BOOL)a3;
- (void)_forward:(id)a3;
- (void)_handleDismiss;
- (void)_pop;
- (void)_presentActivityViewControllerWithActivityItems:(id)a3;
- (void)_presentPlaceholderModel:(id)a3;
- (void)_refresh:(id)a3;
- (void)_setupPageForWebView;
- (void)_setupSafariNavBarWithSpinner:(BOOL)a3;
- (void)_share:(id)a3;
- (void)_startErrorTimer;
- (void)_startLoadingWebView;
- (void)_transitionToErrorViewWithError:(id)a3;
- (void)_transitionToLoading;
- (void)_transitionToWebView;
- (void)_updateButtons;
- (void)dealloc;
- (void)loadActionURL:(id)a3 data:(id)a4 callbackScheme:(id)a5 actionHandler:(id)a6;
- (void)loadView;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)receiveCallbackURL:(id)a3;
- (void)safariView:(id)a3 didReceiveAction:(id)a4 body:(id)a5 replyHandler:(id)a6;
- (void)viewWillLayoutSubviews;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didCommitNavigation:(id)a4;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4;
- (void)webView:(id)a3 stopURLSchemeTask:(id)a4;
- (void)willPresentPageModel:(id)a3 appearance:(id)a4;
@end

@implementation AMSUIWebSafariViewController

- (AMSUIWebSafariViewController)initWithContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSUIWebSafariViewController;
  v6 = [(AMSUIWebSafariViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
  }

  return v7;
}

- (NSURL)originalURL
{
  v2 = [(AMSUIWebSafariViewController *)self model];
  v3 = [v2 URL];

  return v3;
}

- (void)loadActionURL:(id)a3 data:(id)a4 callbackScheme:(id)a5 actionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [AMSUIWebSafariPageModel alloc];
  v15 = [(AMSUIWebSafariViewController *)self context];
  v16 = [(AMSUIWebSafariPageModel *)v14 initWithJSObject:MEMORY[0x1E695E0F8] context:v15];

  [(AMSUIWebSafariPageModel *)v16 setData:v12];
  [(AMSUIWebSafariPageModel *)v16 setCallbackScheme:v11];

  [(AMSUIWebSafariPageModel *)v16 setURL:v13];
  model = self->_model;
  self->_model = v16;
  v20 = v16;

  v18 = _Block_copy(v10);
  actionHandler = self->_actionHandler;
  self->_actionHandler = v18;
}

- (void)receiveCallbackURL:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [AMSUIWebOpenSafariAction resultFromURL:v4 error:0];
  v6 = [(AMSUIWebSafariViewController *)self context];
  v7 = [v6 dataProvider];
  v8 = [v7 postEvent:@"SafariDataUpdate" options:v5];

  v9 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v9)
  {
    v9 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = [(AMSUIWebSafariViewController *)self context];
    v13 = [v12 logKey];
    v15 = 138543874;
    v16 = v11;
    v17 = 2114;
    v18 = v13;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_1BB036000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received URL with scheme: %@", &v15, 0x20u);
  }

  [(AMSUIWebSafariViewController *)self _callActionHandlerWithURL:v4 error:0];
  if (![(AMSUIWebSafariViewController *)self didHandleDismiss]&& [(AMSUIWebSafariViewController *)self shouldDismissOnCallback])
  {
    [(AMSUIWebSafariViewController *)self setDidHandleDismiss:1];
    [(UIViewController *)self ams_dismissViewControllerAnimated:1 completion:0];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)willPresentPageModel:(id)a3 appearance:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_storeStrong(&self->_appearance, a4);
  v10 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  model = self->_model;
  self->_model = v8;
}

- (void)loadView
{
  v24.receiver = self;
  v24.super_class = AMSUIWebSafariViewController;
  [(AMSUICommonViewController *)&v24 loadView];
  v3 = objc_alloc_init(AMSUIWebDelegateProxy);
  [(AMSUIWebDelegateProxy *)v3 setDelegate:self];
  v4 = [(AMSUIWebSafariViewController *)self appearance];
  v5 = [v4 backgroundColor];
  if (v5)
  {
    [(UIViewController *)self ams_setBackgroundColor:v5];
  }

  else
  {
    v6 = +[AMSUIWebAppearance defaultPlatformBackgroundColor];
    [(UIViewController *)self ams_setBackgroundColor:v6];
  }

  v7 = [AMSUIWebSafariWebView alloc];
  v8 = [(AMSUIWebSafariViewController *)self appearance];
  v9 = [(AMSUIWebSafariViewController *)self model];
  v10 = [v9 callbackScheme];
  v11 = [(AMSUIWebSafariViewController *)self model];
  v12 = [v11 data];
  v13 = [(AMSUIWebSafariWebView *)v7 initWithAppearance:v8 scheme:v10 data:v12 delegate:self];
  webView = self->_webView;
  self->_webView = v13;

  v15 = [(AMSUIWebSafariViewController *)self context];
  v16 = [v15 logKey];
  [(AMSUIWebSafariWebView *)self->_webView setLogKey:v16];

  v17 = [(AMSUIWebSafariViewController *)self appearance];
  v18 = [v17 backgroundColor];
  if (v18)
  {
    [(UIView *)self->_webView ams_setBackgroundColor:v18];
  }

  else
  {
    v19 = +[AMSUIWebAppearance defaultPlatformBackgroundColor];
    [(UIView *)self->_webView ams_setBackgroundColor:v19];
  }

  v20 = [(AMSUICommonViewController *)self view];
  v21 = [(AMSUIWebSafariViewController *)self webView];
  [v20 addSubview:v21];

  [(AMSUIWebSafariViewController *)self _startLoadingWebView];
  v22 = [(AMSUIWebSafariViewController *)self model];
  v23 = [v22 loadingModel];

  if (v23)
  {
    [(AMSUIWebSafariViewController *)self _transitionToLoading];
  }

  else
  {
    [(AMSUIWebSafariViewController *)self _transitionToWebView];
    [(AMSUIWebSafariViewController *)self _setupPageForWebView];
  }
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v3)
  {
    v3 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = [(AMSUIWebSafariViewController *)self context];
    v7 = [v6 logKey];
    *buf = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_1BB036000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Deallocated", buf, 0x16u);
  }

  [(AMSUIWebSafariViewController *)self _handleDismiss];
  v9.receiver = self;
  v9.super_class = AMSUIWebSafariViewController;
  [(AMSUIWebSafariViewController *)&v9 dealloc];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = [(AMSUIWebSafariViewController *)self context];
    v8 = [v7 logKey];
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling swipe to dismiss", &v10, 0x16u);
  }

  [(AMSUIWebSafariViewController *)self _handleDismiss];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)viewWillLayoutSubviews
{
  v50.receiver = self;
  v50.super_class = AMSUIWebSafariViewController;
  [(AMSUIWebSafariViewController *)&v50 viewWillLayoutSubviews];
  v3 = [(AMSUIWebSafariViewController *)self toolbar];
  v4 = [(AMSUICommonViewController *)self view];
  [v4 bounds];
  [v3 sizeThatFits:{v5, v6}];
  v8 = v7;
  v10 = v9;

  v11 = [(AMSUICommonViewController *)self view];
  [v11 bounds];
  v13 = v12 - v10;
  v14 = [(AMSUICommonViewController *)self view];
  [v14 safeAreaInsets];
  v16 = v13 - v15;
  v17 = [(AMSUIWebSafariViewController *)self toolbar];
  [v17 setFrame:{0.0, v16, v8, v10}];

  v18 = [(AMSUICommonViewController *)self view];
  [v18 safeAreaInsets];
  v20 = v19;
  v21 = [(AMSUICommonViewController *)self view];
  [v21 bounds];
  v23 = v22;
  v24 = [(AMSUICommonViewController *)self view];
  [v24 bounds];
  v26 = v25 - v10;
  v27 = [(AMSUICommonViewController *)self view];
  [v27 safeAreaInsets];
  v29 = v26 - v28;
  v30 = [(AMSUICommonViewController *)self view];
  [v30 safeAreaInsets];
  v32 = v29 - v31;
  v33 = [(AMSUIWebSafariViewController *)self webView];
  [v33 setFrame:{0.0, v20, v23, v32}];

  v34 = [(AMSUICommonViewController *)self view];
  [v34 bounds];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = [(AMSUIWebSafariViewController *)self placeholderPage];
  v44 = [v43 view];
  [v44 setFrame:{v36, v38, v40, v42}];

  v45 = [(AMSUIWebSafariViewController *)self webView];
  v46 = [v45 scrollView];
  [v46 setContentInsetAdjustmentBehavior:2];

  v47 = [(AMSUIWebSafariViewController *)self webView];
  v48 = [v47 scrollView];
  v49 = [v48 layer];
  [v49 setMasksToBounds:0];
}

- (void)safariView:(id)a3 didReceiveAction:(id)a4 body:(id)a5 replyHandler:(id)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v12)
  {
    v12 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v13 = [v12 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = [(AMSUIWebSafariViewController *)self context];
    v16 = [v15 logKey];
    *buf = 138543874;
    v32 = v14;
    v33 = 2114;
    v34 = v16;
    v35 = 2112;
    v36 = v9;
    _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received action: %@", buf, 0x20u);
  }

  if ([v9 isEqualToString:@"callback"])
  {
    v17 = [(AMSUIWebSafariViewController *)self context];
    v18 = [v17 dataProvider];
    v19 = [v18 runSafariCallback:v10];

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __78__AMSUIWebSafariViewController_safariView_didReceiveAction_body_replyHandler___block_invoke;
    v29[3] = &unk_1E7F26A98;
    v29[4] = self;
    v30 = v11;
    [v19 addFinishBlock:v29];

    goto LABEL_22;
  }

  if ([v9 isEqualToString:@"dismiss"])
  {
    [(AMSUIWebSafariViewController *)self _dismiss];
LABEL_21:
    (*(v11 + 2))(v11, MEMORY[0x1E695E118], 0);
    goto LABEL_22;
  }

  if ([v9 isEqualToString:@"pop"])
  {
    [(AMSUIWebSafariViewController *)self _pop];
    goto LABEL_21;
  }

  if ([v9 isEqualToString:@"finishedLoading"])
  {
    v20 = [v10 objectForKeyedSubscript:@"success"];
    if (objc_opt_respondsToSelector())
    {
      v21 = [v10 objectForKeyedSubscript:@"success"];
      v22 = [v21 BOOLValue];
    }

    else
    {
      v22 = 0;
    }

    [(AMSUIWebSafariViewController *)self _finishedLoadingWithSuccess:v22];
    goto LABEL_21;
  }

  v23 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v23)
  {
    v23 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v24 = [v23 OSLogObject];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = objc_opt_class();
    v26 = [(AMSUIWebSafariViewController *)self context];
    v27 = [v26 logKey];
    *buf = 138543874;
    v32 = v25;
    v33 = 2114;
    v34 = v27;
    v35 = 2114;
    v36 = v9;
    _os_log_impl(&dword_1BB036000, v24, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unknown safari action: %{public}@", buf, 0x20u);
  }

  (*(v11 + 2))(v11, 0, @"Error: Unknown safari action");
LABEL_22:

  v28 = *MEMORY[0x1E69E9840];
}

void __78__AMSUIWebSafariViewController_safariView_didReceiveAction_body_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v7)
  {
    v7 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    v11 = [*(a1 + 32) context];
    v12 = [v11 logKey];
    v16 = 138544130;
    v17 = v10;
    v18 = 2114;
    v19 = v12;
    v20 = 2114;
    v21 = v5;
    v22 = 2114;
    v23 = v6;
    _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Returning result: %{public}@ error: %{public}@", &v16, 0x2Au);
  }

  v13 = *(a1 + 40);
  v14 = [v6 localizedDescription];
  (*(v13 + 16))(v13, v5, v14);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)webView:(id)a3 didCommitNavigation:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v5)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = [(AMSUIWebSafariViewController *)self context];
    v9 = [v8 logKey];
    v10 = [(AMSUIWebSafariViewController *)self webView];
    v11 = [v10 URL];
    v13 = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = v9;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Commit navigation: %@", &v13, 0x20u);
  }

  [(AMSUIWebSafariViewController *)self _updateButtons];
  [(AMSUIWebSafariViewController *)self _setupPageForWebView];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  [(AMSUIWebSafariViewController *)self setPerformingNavigation:0, a4];

  [(AMSUIWebSafariViewController *)self _setupPageForWebView];
}

- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4
{
  [(AMSUIWebSafariViewController *)self setPerformingNavigation:1, a4];

  [(AMSUIWebSafariViewController *)self _setupPageForWebView];
}

- (void)webView:(id)a3 stopURLSchemeTask:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v5)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = [(AMSUIWebSafariViewController *)self context];
    v9 = [v8 logKey];
    v11 = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did stop handling scheme.", &v11, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [v7 request];
  v10 = [v9 URL];

  v11 = [v10 scheme];
  if ([v11 isEqualToString:@"http"])
  {

    goto LABEL_4;
  }

  v12 = [v10 scheme];
  v13 = [v12 isEqualToString:@"https"];

  if (v13)
  {
LABEL_4:
    v14 = [v7 targetFrame];

    if (v14)
    {
      v8[2](v8, 1);
    }

    else
    {
      [MEMORY[0x1E698CA98] openStandardURL:v10];
      v8[2](v8, 0);
    }

    goto LABEL_12;
  }

  v15 = [v10 scheme];
  v16 = [(AMSUIWebSafariViewController *)self model];
  v17 = [v16 callbackScheme];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = &stru_1F3921360;
  }

  v20 = [v15 isEqualToString:v19];

  if (v20)
  {
    v8[2](v8, 3);
  }

  else
  {
    v22 = [MEMORY[0x1E6963608] defaultWorkspace];
    v23 = [v22 applicationsAvailableForOpeningURL:v10];

    if ([v23 count])
    {
      v36 = v23;
      v24 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v24)
      {
        v24 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v25 = [v24 OSLogObject];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        v27 = [(AMSUIWebSafariViewController *)self context];
        v28 = [v27 logKey];
        *buf = 138543874;
        v40 = v26;
        v41 = 2114;
        v42 = v28;
        v43 = 2112;
        v44 = v10;
        _os_log_impl(&dword_1BB036000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting to open URL with LS: %@", buf, 0x20u);
      }

      v29 = [MEMORY[0x1E69DC668] sharedApplication];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __88__AMSUIWebSafariViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke;
      v37[3] = &unk_1E7F26AC0;
      v37[4] = self;
      v30 = v10;
      v38 = v30;
      [v29 openURL:v30 options:MEMORY[0x1E695E0F8] completionHandler:v37];

      v31 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v31)
      {
        v31 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v32 = [v31 OSLogObject];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_opt_class();
        v34 = [(AMSUIWebSafariViewController *)self context];
        v35 = [v34 logKey];
        *buf = 138543874;
        v40 = v33;
        v41 = 2114;
        v42 = v35;
        v43 = 2112;
        v44 = v30;
        _os_log_impl(&dword_1BB036000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Redirecting to app URL scheme for URL: %@", buf, 0x20u);
      }

      [(AMSUIWebSafariViewController *)self setPerformingNavigation:0];
      [(AMSUIWebSafariViewController *)self _setupPageForWebView];
      v8[2](v8, 0);
      v23 = v36;
    }

    else
    {
      v8[2](v8, 1);
    }
  }

LABEL_12:

  v21 = *MEMORY[0x1E69E9840];
}

void __88__AMSUIWebSafariViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke(uint64_t a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v3 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v3)
    {
      v3 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v4 = [v3 OSLogObject];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      v7 = [*(a1 + 32) context];
      v8 = [v7 logKey];
      v9 = *(a1 + 40);
      v11 = 138543874;
      v12 = v6;
      v13 = 2114;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_1BB036000, v4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Could not load app URL scheme for URL: %@", &v11, 0x20u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_back:(id)a3
{
  v4 = [(AMSUIWebSafariViewController *)self webView];
  v3 = [v4 goBack];
}

- (void)_cancel:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = [(AMSUIWebSafariViewController *)self context];
    v8 = [v7 logKey];
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Cancel selected", &v10, 0x16u);
  }

  [(AMSUIWebSafariViewController *)self _dismiss];
  v9 = *MEMORY[0x1E69E9840];
}

- (id)_createToolBar
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [MEMORY[0x1E69DC708] fixedSpaceItemOfWidth:15.0];
  [v3 addObject:v4];

  v5 = objc_alloc(MEMORY[0x1E69DC708]);
  v6 = [MEMORY[0x1E69DCAB8] ams_systemChevronLeft];
  v7 = [v5 initWithImage:v6 style:0 target:self action:sel__back_];
  toolbarLeft = self->_toolbarLeft;
  self->_toolbarLeft = v7;

  [v3 addObject:self->_toolbarLeft];
  v9 = [MEMORY[0x1E69DC708] fixedSpaceItemOfWidth:40.0];
  [v3 addObject:v9];

  v10 = objc_alloc(MEMORY[0x1E69DC708]);
  v11 = [MEMORY[0x1E69DCAB8] ams_systemChevronRight];
  v12 = [v10 initWithImage:v11 style:0 target:self action:sel__forward_];
  toolbarRight = self->_toolbarRight;
  self->_toolbarRight = v12;

  [v3 addObject:self->_toolbarRight];
  v14 = [(AMSUIWebSafariViewController *)self model];
  LODWORD(v11) = [v14 showShareButton];

  if (v11)
  {
    v15 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
    [v3 addObject:v15];

    v16 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:self action:sel__share_];
    [v3 addObject:v16];
  }

  v17 = objc_alloc(MEMORY[0x1E69DD180]);
  v18 = [v17 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v18 setItems:v3 animated:0];

  return v18;
}

- (void)_dismiss
{
  [(AMSUIWebSafariViewController *)self _handleDismiss];

  [(UIViewController *)self ams_dismissViewControllerAnimated:1 completion:0];
}

- (void)_finishedLoadingWithSuccess:(BOOL)a3
{
  if (a3)
  {

    [(AMSUIWebSafariViewController *)self _transitionToWebView];
  }

  else
  {
    v4 = AMSError();
    [(AMSUIWebSafariViewController *)self _transitionToErrorViewWithError:v4];
  }
}

- (void)_forward:(id)a3
{
  v4 = [(AMSUIWebSafariViewController *)self webView];
  v3 = [v4 goForward];
}

- (void)_handleDismiss
{
  [(AMSUIWebSafariViewController *)self setDidHandleDismiss:1];
  v3 = AMSError();
  [(AMSUIWebSafariViewController *)self _callActionHandlerWithURL:0 error:v3];
}

- (BOOL)_callActionHandlerWithURL:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!(v6 | v7))
  {
    v7 = AMSError();
  }

  if (v7)
  {

    v6 = 0;
  }

  v8 = [(AMSUIWebSafariViewController *)self actionHandler];

  if (v8)
  {
    v9 = [(AMSUIWebSafariViewController *)self actionHandler];
    v9[2](v9, v6, v7);

    [(AMSUIWebSafariViewController *)self setActionHandler:0];
  }

  return v8 != 0;
}

- (void)_pop
{
  [(AMSUIWebSafariViewController *)self _handleDismiss];
  v4 = [(AMSUIWebSafariViewController *)self navigationController];
  v3 = [v4 popViewControllerAnimated:1];
}

- (void)_presentActivityViewControllerWithActivityItems:(id)a3
{
  v4 = MEMORY[0x1E69CD9F8];
  v5 = a3;
  v8 = [[v4 alloc] initWithActivityItems:v5 applicationActivities:0];

  v6 = [(AMSUICommonViewController *)self view];
  v7 = [v8 popoverPresentationController];
  [v7 setSourceView:v6];

  [(AMSUIWebSafariViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)_presentPlaceholderModel:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIWebSafariViewController *)self placeholderPage];
  [v5 ams_removeFromParentViewController];

  [(AMSUIWebSafariViewController *)self setPlaceholderPage:0];
  v7 = [v4 createViewControllerForContainer:0];
  v6 = [(AMSUIWebSafariViewController *)self appearance];
  [v7 willPresentPageModel:v4 appearance:v6];

  [(UIViewController *)self ams_setChildViewController:v7];
  [(AMSUIWebSafariViewController *)self setPlaceholderPage:v7];
}

- (void)_refresh:(id)a3
{
  v4 = [(AMSUIWebSafariViewController *)self webView];
  v3 = [v4 reload];
}

- (void)_startLoadingWebView
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [(AMSUIWebSafariViewController *)self model];
  if (v3)
  {
    v4 = v3;
    v5 = [(AMSUIWebSafariViewController *)self webView];

    if (v5)
    {
      v6 = [(AMSUIWebSafariViewController *)self webView];
      v7 = [v6 URL];

      v8 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      v9 = v8;
      if (v7)
      {
        if (!v8)
        {
          v9 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v10 = [v9 OSLogObject];
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        v11 = objc_opt_class();
        v12 = [(AMSUIWebSafariViewController *)self context];
        v13 = [v12 logKey];
        v26 = 138543618;
        v27 = v11;
        v28 = 2114;
        v29 = v13;
        _os_log_impl(&dword_1BB036000, v10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Safari already loaded", &v26, 0x16u);
      }

      else
      {
        if (!v8)
        {
          v9 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v14 = [v9 OSLogObject];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = objc_opt_class();
          v16 = [(AMSUIWebSafariViewController *)self context];
          v17 = [v16 logKey];
          v18 = [(AMSUIWebSafariViewController *)self model];
          v19 = [v18 URL];
          v20 = [(AMSUIWebSafariViewController *)self model];
          v21 = [v20 callbackScheme];
          v26 = 138544130;
          v27 = v15;
          v28 = 2114;
          v29 = v17;
          v30 = 2112;
          v31 = v19;
          v32 = 2114;
          v33 = v21;
          _os_log_impl(&dword_1BB036000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Loading safari url: %@, scheme: %{public}@", &v26, 0x2Au);
        }

        v9 = [(AMSUIWebSafariViewController *)self webView];
        v22 = MEMORY[0x1E696AF68];
        v10 = [(AMSUIWebSafariViewController *)self model];
        v12 = [v10 URL];
        v23 = [v22 requestWithURL:v12];
        v24 = [v9 loadRequest:v23];
      }

LABEL_14:
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_setupPageForWebView
{
  if ([(AMSUIWebSafariViewController *)self pageState]!= 3)
  {
    return;
  }

  v3 = [(AMSUIWebSafariViewController *)self model];
  if ([v3 hideToolBar])
  {
    goto LABEL_5;
  }

  v4 = [(AMSUIWebSafariViewController *)self toolbar];

  if (!v4)
  {
    v5 = [(AMSUIWebSafariViewController *)self _createToolBar];
    toolbar = self->_toolbar;
    self->_toolbar = v5;

    v3 = [(AMSUICommonViewController *)self view];
    v7 = [(AMSUIWebSafariViewController *)self toolbar];
    [v3 addSubview:v7];

LABEL_5:
  }

  v8 = [(AMSUIWebSafariViewController *)self performingNavigation];

  [(AMSUIWebSafariViewController *)self _setupSafariNavBarWithSpinner:v8];
}

- (void)_share:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = [(AMSUIWebSafariViewController *)self webView];
  v5 = [v4 URL];

  if (v5)
  {
    v6 = [(AMSUIWebSafariViewController *)self webView];
    v7 = [v6 URL];
    v8 = [v7 lastPathComponent];

    v9 = [(AMSUIWebSafariViewController *)self webView];
    v10 = [v9 URL];
    v11 = [v10 pathExtension];
    v12 = [v11 lowercaseString];
    v13 = [v12 isEqualToString:@"pdf"];

    if (v13)
    {
      v14 = [(AMSUIWebSafariViewController *)self webView];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __39__AMSUIWebSafariViewController__share___block_invoke;
      v21[3] = &unk_1E7F26818;
      v8 = v8;
      v22 = v8;
      v23 = self;
      [v14 _getMainResourceDataWithCompletionHandler:v21];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __39__AMSUIWebSafariViewController__share___block_invoke_2_82;
      block[3] = &unk_1E7F242D0;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    v8 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v15 = [v8 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = [(AMSUIWebSafariViewController *)self context];
      v18 = [v17 logKey];
      *buf = 138543618;
      v25 = v16;
      v26 = 2114;
      v27 = v18;
      _os_log_impl(&dword_1BB036000, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] No URL to share", buf, 0x16u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __39__AMSUIWebSafariViewController__share___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__AMSUIWebSafariViewController__share___block_invoke_2;
    block[3] = &unk_1E7F24590;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = v5;
    v9 = v6;
    v10 = v3;
    dispatch_async(v4, block);
  }
}

void __39__AMSUIWebSafariViewController__share___block_invoke_2(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 temporaryDirectory];
  v4 = [v3 URLByAppendingPathComponent:a1[4]];

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v4 path];
  v7 = [v5 fileExistsAtPath:v6];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E698C968] sharedPushNotificationConfig];
    if (!v9)
    {
      v9 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = a1[5];
      *buf = 138543618;
      v23 = objc_opt_class();
      v24 = 2114;
      v25 = v4;
      _os_log_impl(&dword_1BB036000, v10, OS_LOG_TYPE_DEBUG, "%{public}@: Writing pdf asset to %{public}@", buf, 0x16u);
    }

    v12 = a1[6];
    v21 = 0;
    [v12 writeToURL:v4 options:1 error:&v21];
    v8 = v21;
    if (v8)
    {
      v13 = [MEMORY[0x1E698C968] sharedPushNotificationConfig];
      if (!v13)
      {
        v13 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v14 = [v13 OSLogObject];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = a1[5];
        v16 = objc_opt_class();
        *buf = 138543618;
        v23 = v16;
        v24 = 2114;
        v25 = v8;
        _os_log_impl(&dword_1BB036000, v14, OS_LOG_TYPE_INFO, "%{public}@: Error writing pdf asset: %{public}@", buf, 0x16u);
      }
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__AMSUIWebSafariViewController__share___block_invoke_78;
  block[3] = &unk_1E7F243C0;
  block[4] = a1[5];
  v20 = v4;
  v17 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v18 = *MEMORY[0x1E69E9840];
}

void __39__AMSUIWebSafariViewController__share___block_invoke_78(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{*(a1 + 40), 0}];
  [v1 _presentActivityViewControllerWithActivityItems:v2];
}

void __39__AMSUIWebSafariViewController__share___block_invoke_2_82(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_alloc(MEMORY[0x1E695DEC8]);
  v8 = [*(a1 + 32) webView];
  v4 = [v8 URL];
  v5 = [*(a1 + 32) webView];
  v6 = [v5 viewPrintFormatter];
  v7 = [v3 initWithObjects:{v4, v6, 0}];
  [v2 _presentActivityViewControllerWithActivityItems:v7];
}

- (void)_startErrorTimer
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__AMSUIWebSafariViewController__startErrorTimer__block_invoke;
  v6[3] = &unk_1E7F242D0;
  v6[4] = self;
  v2 = v6;
  v3 = AMSLogKey();
  v4 = dispatch_time(0, 30000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAfter_block_invoke_2;
  block[3] = &unk_1E7F245E0;
  v8 = v3;
  v9 = v2;
  v5 = v3;
  dispatch_after(v4, MEMORY[0x1E69E96A0], block);
}

void __48__AMSUIWebSafariViewController__startErrorTimer__block_invoke(uint64_t a1)
{
  v2 = AMSError();
  [*(a1 + 32) _transitionToErrorViewWithError:v2];
}

- (void)_transitionToErrorViewWithError:(id)a3
{
  v4 = a3;
  if ([(AMSUIWebSafariViewController *)self pageState]== 1 || ![(AMSUIWebSafariViewController *)self pageState])
  {
    [(AMSUIWebSafariViewController *)self setPageState:2];
    objc_initWeak(&location, self);
    v5 = [AMSUIWebErrorPageModel alloc];
    v6 = [(AMSUIWebSafariViewController *)self context];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __64__AMSUIWebSafariViewController__transitionToErrorViewWithError___block_invoke;
    v11 = &unk_1E7F26AE8;
    objc_copyWeak(&v12, &location);
    v7 = [(AMSUIWebErrorPageModel *)v5 initWithError:v4 context:v6 actionBlock:&v8];

    [(AMSUIWebSafariViewController *)self _presentPlaceholderModel:v7, v8, v9, v10, v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __64__AMSUIWebSafariViewController__transitionToErrorViewWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained webView];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__AMSUIWebSafariViewController__transitionToErrorViewWithError___block_invoke_2;
  v4[3] = &unk_1E7F25EA8;
  objc_copyWeak(&v5, (a1 + 32));
  [v3 evaluateJavaScript:@"AMSSafari.retryCallback();" completionHandler:v4];

  objc_destroyWeak(&v5);
}

void __64__AMSUIWebSafariViewController__transitionToErrorViewWithError___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  v7 = v6;
  if (v4)
  {
    if (!v6)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = [WeakRetained context];
      v11 = [v10 logKey];
      v17 = 138543874;
      v18 = v9;
      v19 = 2114;
      v20 = v11;
      v21 = 2114;
      v22 = v4;
      _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to run retry script. %{public}@", &v17, 0x20u);
    }
  }

  else
  {
    if (!v6)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v12 = [v7 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = [WeakRetained context];
      v15 = [v14 logKey];
      v17 = 138543618;
      v18 = v13;
      v19 = 2114;
      v20 = v15;
      _os_log_impl(&dword_1BB036000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully ran retry script", &v17, 0x16u);
    }

    [WeakRetained _transitionToLoading];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_transitionToLoading
{
  if ([(AMSUIWebSafariViewController *)self pageState]== 2 || ![(AMSUIWebSafariViewController *)self pageState])
  {
    [(AMSUIWebSafariViewController *)self setPageState:1];
    v3 = [(AMSUIWebSafariViewController *)self model];
    v4 = [v3 loadingModel];
    [(AMSUIWebSafariViewController *)self _presentPlaceholderModel:v4];

    [(AMSUIWebSafariViewController *)self _startErrorTimer];
  }
}

- (void)_transitionToWebView
{
  if ([(AMSUIWebSafariViewController *)self pageState]!= 3)
  {
    [(AMSUIWebSafariViewController *)self setPageState:3];
    [(AMSUIWebSafariViewController *)self _setupPageForWebView];
    v3 = [(AMSUIWebSafariViewController *)self placeholderPage];
    [v3 ams_removeFromParentViewController];

    [(AMSUIWebSafariViewController *)self setPlaceholderPage:0];
  }
}

- (void)_setupSafariNavBarWithSpinner:(BOOL)a3
{
  v3 = a3;
  v39[1] = *MEMORY[0x1E69E9840];
  if ([(AMSUIWebSafariViewController *)self pageState]== 3)
  {
    v5 = [(UIViewController *)self ams_navigationItemViewController];
    if (objc_opt_respondsToSelector())
    {
      v6 = [v5 navigationItem];
    }

    else
    {
      v6 = 0;
    }

    v7 = [(AMSUIWebSafariViewController *)self model];
    v8 = [v7 navigationBar];
    v9 = [v8 title];
    if (v9)
    {
      [v5 setTitle:v9];
    }

    else
    {
      v35 = v3;
      v36 = v6;
      v10 = v5;
      v11 = [(AMSUIWebSafariViewController *)self webView];
      v12 = [v11 URL];
      v13 = [v12 host];
      if (v13)
      {
        [v10 setTitle:v13];
      }

      else
      {
        v34 = [(AMSUIWebSafariViewController *)self model];
        v14 = [v34 URL];
        v15 = [v14 host];
        [v10 setTitle:v15];
      }

      v5 = v10;
      v6 = v36;
      v3 = v35;
    }

    v16 = [(AMSUIWebSafariViewController *)self model];
    v17 = [v16 navigationBar];
    if ([v17 includesLeftItems])
    {
    }

    else
    {
      v18 = [(AMSUIWebSafariViewController *)self navigationController];
      v19 = [v18 viewControllers];
      v20 = [v19 count];

      if (v20 > 1)
      {
        goto LABEL_20;
      }

      if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
      {
        v16 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancel_];
      }

      else
      {
        v21 = objc_alloc(MEMORY[0x1E69DC708]);
        v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
        v23 = AMSUILocalizedStringFromBundle(@"CANCEL", 0, v22);
        v16 = [v21 initWithTitle:v23 style:0 target:self action:sel__cancel_];
      }

      [v16 setAccessibilityIdentifier:@"cancel_bar_button_item"];
      v39[0] = v16;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
      [v6 setLeftBarButtonItems:v24];
    }

LABEL_20:
    v25 = [(AMSUIWebSafariViewController *)self model];
    v26 = [v25 navigationBar];
    if (([v26 includesRightItems] & 1) == 0)
    {
      v27 = [(AMSUIWebSafariViewController *)self model];
      v28 = [v27 hideRefreshButton];

      if (v28)
      {
        goto LABEL_23;
      }

      if (v3)
      {
        v30 = [v6 rightBarButtonItem];
        v31 = [v30 customView];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_23;
        }

        v26 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
        v25 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v26];
        [v25 setAccessibilityIdentifier:@"activity_indicator_bar_button_item"];
        [v26 startAnimating];
        v38 = v25;
        v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
        [v6 setRightBarButtonItems:v33];
      }

      else
      {
        v25 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:13 target:self action:sel__refresh_];
        [v25 setAccessibilityIdentifier:@"refresh_bar_button_item"];
        v37 = v25;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
        [v6 setRightBarButtonItems:v26];
      }
    }

LABEL_23:
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_updateButtons
{
  v3 = [(AMSUIWebSafariViewController *)self webView];
  v4 = [v3 canGoBack];
  v5 = [(AMSUIWebSafariViewController *)self toolbarLeft];
  [v5 setEnabled:v4];

  v8 = [(AMSUIWebSafariViewController *)self webView];
  v6 = [v8 canGoForward];
  v7 = [(AMSUIWebSafariViewController *)self toolbarRight];
  [v7 setEnabled:v6];
}

@end