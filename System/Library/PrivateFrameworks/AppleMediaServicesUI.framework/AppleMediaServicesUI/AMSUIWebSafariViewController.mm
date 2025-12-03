@interface AMSUIWebSafariViewController
- (AMSUIWebSafariViewController)initWithContext:(id)context;
- (BOOL)_callActionHandlerWithURL:(id)l error:(id)error;
- (NSURL)originalURL;
- (id)_createToolBar;
- (void)_back:(id)_back;
- (void)_cancel:(id)_cancel;
- (void)_dismiss;
- (void)_finishedLoadingWithSuccess:(BOOL)success;
- (void)_forward:(id)_forward;
- (void)_handleDismiss;
- (void)_pop;
- (void)_presentActivityViewControllerWithActivityItems:(id)items;
- (void)_presentPlaceholderModel:(id)model;
- (void)_refresh:(id)_refresh;
- (void)_setupPageForWebView;
- (void)_setupSafariNavBarWithSpinner:(BOOL)spinner;
- (void)_share:(id)_share;
- (void)_startErrorTimer;
- (void)_startLoadingWebView;
- (void)_transitionToErrorViewWithError:(id)error;
- (void)_transitionToLoading;
- (void)_transitionToWebView;
- (void)_updateButtons;
- (void)dealloc;
- (void)loadActionURL:(id)l data:(id)data callbackScheme:(id)scheme actionHandler:(id)handler;
- (void)loadView;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)receiveCallbackURL:(id)l;
- (void)safariView:(id)view didReceiveAction:(id)action body:(id)body replyHandler:(id)handler;
- (void)viewWillLayoutSubviews;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didCommitNavigation:(id)navigation;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation;
- (void)webView:(id)view stopURLSchemeTask:(id)task;
- (void)willPresentPageModel:(id)model appearance:(id)appearance;
@end

@implementation AMSUIWebSafariViewController

- (AMSUIWebSafariViewController)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = AMSUIWebSafariViewController;
  v6 = [(AMSUIWebSafariViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (NSURL)originalURL
{
  model = [(AMSUIWebSafariViewController *)self model];
  v3 = [model URL];

  return v3;
}

- (void)loadActionURL:(id)l data:(id)data callbackScheme:(id)scheme actionHandler:(id)handler
{
  handlerCopy = handler;
  schemeCopy = scheme;
  dataCopy = data;
  lCopy = l;
  v14 = [AMSUIWebSafariPageModel alloc];
  context = [(AMSUIWebSafariViewController *)self context];
  v16 = [(AMSUIWebSafariPageModel *)v14 initWithJSObject:MEMORY[0x1E695E0F8] context:context];

  [(AMSUIWebSafariPageModel *)v16 setData:dataCopy];
  [(AMSUIWebSafariPageModel *)v16 setCallbackScheme:schemeCopy];

  [(AMSUIWebSafariPageModel *)v16 setURL:lCopy];
  model = self->_model;
  self->_model = v16;
  v20 = v16;

  v18 = _Block_copy(handlerCopy);
  actionHandler = self->_actionHandler;
  self->_actionHandler = v18;
}

- (void)receiveCallbackURL:(id)l
{
  v21 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = [AMSUIWebOpenSafariAction resultFromURL:lCopy error:0];
  context = [(AMSUIWebSafariViewController *)self context];
  dataProvider = [context dataProvider];
  v8 = [dataProvider postEvent:@"SafariDataUpdate" options:v5];

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    context2 = [(AMSUIWebSafariViewController *)self context];
    logKey = [context2 logKey];
    v15 = 138543874;
    v16 = v11;
    v17 = 2114;
    v18 = logKey;
    v19 = 2112;
    v20 = lCopy;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received URL with scheme: %@", &v15, 0x20u);
  }

  [(AMSUIWebSafariViewController *)self _callActionHandlerWithURL:lCopy error:0];
  if (![(AMSUIWebSafariViewController *)self didHandleDismiss]&& [(AMSUIWebSafariViewController *)self shouldDismissOnCallback])
  {
    [(AMSUIWebSafariViewController *)self setDidHandleDismiss:1];
    [(UIViewController *)self ams_dismissViewControllerAnimated:1 completion:0];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)willPresentPageModel:(id)model appearance:(id)appearance
{
  modelCopy = model;
  appearanceCopy = appearance;
  objc_storeStrong(&self->_appearance, appearance);
  v10 = modelCopy;
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
  appearance = [(AMSUIWebSafariViewController *)self appearance];
  backgroundColor = [appearance backgroundColor];
  if (backgroundColor)
  {
    [(UIViewController *)self ams_setBackgroundColor:backgroundColor];
  }

  else
  {
    v6 = +[AMSUIWebAppearance defaultPlatformBackgroundColor];
    [(UIViewController *)self ams_setBackgroundColor:v6];
  }

  v7 = [AMSUIWebSafariWebView alloc];
  appearance2 = [(AMSUIWebSafariViewController *)self appearance];
  model = [(AMSUIWebSafariViewController *)self model];
  callbackScheme = [model callbackScheme];
  model2 = [(AMSUIWebSafariViewController *)self model];
  data = [model2 data];
  v13 = [(AMSUIWebSafariWebView *)v7 initWithAppearance:appearance2 scheme:callbackScheme data:data delegate:self];
  webView = self->_webView;
  self->_webView = v13;

  context = [(AMSUIWebSafariViewController *)self context];
  logKey = [context logKey];
  [(AMSUIWebSafariWebView *)self->_webView setLogKey:logKey];

  appearance3 = [(AMSUIWebSafariViewController *)self appearance];
  backgroundColor2 = [appearance3 backgroundColor];
  if (backgroundColor2)
  {
    [(UIView *)self->_webView ams_setBackgroundColor:backgroundColor2];
  }

  else
  {
    v19 = +[AMSUIWebAppearance defaultPlatformBackgroundColor];
    [(UIView *)self->_webView ams_setBackgroundColor:v19];
  }

  view = [(AMSUICommonViewController *)self view];
  webView = [(AMSUIWebSafariViewController *)self webView];
  [view addSubview:webView];

  [(AMSUIWebSafariViewController *)self _startLoadingWebView];
  model3 = [(AMSUIWebSafariViewController *)self model];
  loadingModel = [model3 loadingModel];

  if (loadingModel)
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
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    context = [(AMSUIWebSafariViewController *)self context];
    logKey = [context logKey];
    *buf = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = logKey;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Deallocated", buf, 0x16u);
  }

  [(AMSUIWebSafariViewController *)self _handleDismiss];
  v9.receiver = self;
  v9.super_class = AMSUIWebSafariViewController;
  [(AMSUIWebSafariViewController *)&v9 dealloc];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v14 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    context = [(AMSUIWebSafariViewController *)self context];
    logKey = [context logKey];
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = logKey;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling swipe to dismiss", &v10, 0x16u);
  }

  [(AMSUIWebSafariViewController *)self _handleDismiss];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)viewWillLayoutSubviews
{
  v50.receiver = self;
  v50.super_class = AMSUIWebSafariViewController;
  [(AMSUIWebSafariViewController *)&v50 viewWillLayoutSubviews];
  toolbar = [(AMSUIWebSafariViewController *)self toolbar];
  view = [(AMSUICommonViewController *)self view];
  [view bounds];
  [toolbar sizeThatFits:{v5, v6}];
  v8 = v7;
  v10 = v9;

  view2 = [(AMSUICommonViewController *)self view];
  [view2 bounds];
  v13 = v12 - v10;
  view3 = [(AMSUICommonViewController *)self view];
  [view3 safeAreaInsets];
  v16 = v13 - v15;
  toolbar2 = [(AMSUIWebSafariViewController *)self toolbar];
  [toolbar2 setFrame:{0.0, v16, v8, v10}];

  view4 = [(AMSUICommonViewController *)self view];
  [view4 safeAreaInsets];
  v20 = v19;
  view5 = [(AMSUICommonViewController *)self view];
  [view5 bounds];
  v23 = v22;
  view6 = [(AMSUICommonViewController *)self view];
  [view6 bounds];
  v26 = v25 - v10;
  view7 = [(AMSUICommonViewController *)self view];
  [view7 safeAreaInsets];
  v29 = v26 - v28;
  view8 = [(AMSUICommonViewController *)self view];
  [view8 safeAreaInsets];
  v32 = v29 - v31;
  webView = [(AMSUIWebSafariViewController *)self webView];
  [webView setFrame:{0.0, v20, v23, v32}];

  view9 = [(AMSUICommonViewController *)self view];
  [view9 bounds];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  placeholderPage = [(AMSUIWebSafariViewController *)self placeholderPage];
  view10 = [placeholderPage view];
  [view10 setFrame:{v36, v38, v40, v42}];

  webView2 = [(AMSUIWebSafariViewController *)self webView];
  scrollView = [webView2 scrollView];
  [scrollView setContentInsetAdjustmentBehavior:2];

  webView3 = [(AMSUIWebSafariViewController *)self webView];
  scrollView2 = [webView3 scrollView];
  layer = [scrollView2 layer];
  [layer setMasksToBounds:0];
}

- (void)safariView:(id)view didReceiveAction:(id)action body:(id)body replyHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  bodyCopy = body;
  handlerCopy = handler;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    context = [(AMSUIWebSafariViewController *)self context];
    logKey = [context logKey];
    *buf = 138543874;
    v32 = v14;
    v33 = 2114;
    v34 = logKey;
    v35 = 2112;
    v36 = actionCopy;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received action: %@", buf, 0x20u);
  }

  if ([actionCopy isEqualToString:@"callback"])
  {
    context2 = [(AMSUIWebSafariViewController *)self context];
    dataProvider = [context2 dataProvider];
    v19 = [dataProvider runSafariCallback:bodyCopy];

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __78__AMSUIWebSafariViewController_safariView_didReceiveAction_body_replyHandler___block_invoke;
    v29[3] = &unk_1E7F26A98;
    v29[4] = self;
    v30 = handlerCopy;
    [v19 addFinishBlock:v29];

    goto LABEL_22;
  }

  if ([actionCopy isEqualToString:@"dismiss"])
  {
    [(AMSUIWebSafariViewController *)self _dismiss];
LABEL_21:
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E118], 0);
    goto LABEL_22;
  }

  if ([actionCopy isEqualToString:@"pop"])
  {
    [(AMSUIWebSafariViewController *)self _pop];
    goto LABEL_21;
  }

  if ([actionCopy isEqualToString:@"finishedLoading"])
  {
    v20 = [bodyCopy objectForKeyedSubscript:@"success"];
    if (objc_opt_respondsToSelector())
    {
      v21 = [bodyCopy objectForKeyedSubscript:@"success"];
      bOOLValue = [v21 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    [(AMSUIWebSafariViewController *)self _finishedLoadingWithSuccess:bOOLValue];
    goto LABEL_21;
  }

  mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968]2)
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v25 = objc_opt_class();
    context3 = [(AMSUIWebSafariViewController *)self context];
    logKey2 = [context3 logKey];
    *buf = 138543874;
    v32 = v25;
    v33 = 2114;
    v34 = logKey2;
    v35 = 2114;
    v36 = actionCopy;
    _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unknown safari action: %{public}@", buf, 0x20u);
  }

  (*(handlerCopy + 2))(handlerCopy, 0, @"Error: Unknown safari action");
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

- (void)webView:(id)view didCommitNavigation:(id)navigation
{
  v19 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    context = [(AMSUIWebSafariViewController *)self context];
    logKey = [context logKey];
    webView = [(AMSUIWebSafariViewController *)self webView];
    v11 = [webView URL];
    v13 = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = logKey;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Commit navigation: %@", &v13, 0x20u);
  }

  [(AMSUIWebSafariViewController *)self _updateButtons];
  [(AMSUIWebSafariViewController *)self _setupPageForWebView];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  [(AMSUIWebSafariViewController *)self setPerformingNavigation:0, navigation];

  [(AMSUIWebSafariViewController *)self _setupPageForWebView];
}

- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation
{
  [(AMSUIWebSafariViewController *)self setPerformingNavigation:1, navigation];

  [(AMSUIWebSafariViewController *)self _setupPageForWebView];
}

- (void)webView:(id)view stopURLSchemeTask:(id)task
{
  v15 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    context = [(AMSUIWebSafariViewController *)self context];
    logKey = [context logKey];
    v11 = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = logKey;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did stop handling scheme.", &v11, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  v45 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  handlerCopy = handler;
  request = [actionCopy request];
  v10 = [request URL];

  scheme = [v10 scheme];
  if ([scheme isEqualToString:@"http"])
  {

    goto LABEL_4;
  }

  scheme2 = [v10 scheme];
  v13 = [scheme2 isEqualToString:@"https"];

  if (v13)
  {
LABEL_4:
    targetFrame = [actionCopy targetFrame];

    if (targetFrame)
    {
      handlerCopy[2](handlerCopy, 1);
    }

    else
    {
      [MEMORY[0x1E698CA98] openStandardURL:v10];
      handlerCopy[2](handlerCopy, 0);
    }

    goto LABEL_12;
  }

  scheme3 = [v10 scheme];
  model = [(AMSUIWebSafariViewController *)self model];
  callbackScheme = [model callbackScheme];
  v18 = callbackScheme;
  if (callbackScheme)
  {
    v19 = callbackScheme;
  }

  else
  {
    v19 = &stru_1F3921360;
  }

  v20 = [scheme3 isEqualToString:v19];

  if (v20)
  {
    handlerCopy[2](handlerCopy, 3);
  }

  else
  {
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    v23 = [defaultWorkspace applicationsAvailableForOpeningURL:v10];

    if ([v23 count])
    {
      v36 = v23;
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!mEMORY[0x1E698C968])
      {
        mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        context = [(AMSUIWebSafariViewController *)self context];
        logKey = [context logKey];
        *buf = 138543874;
        v40 = v26;
        v41 = 2114;
        v42 = logKey;
        v43 = 2112;
        v44 = v10;
        _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting to open URL with LS: %@", buf, 0x20u);
      }

      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __88__AMSUIWebSafariViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke;
      v37[3] = &unk_1E7F26AC0;
      v37[4] = self;
      v30 = v10;
      v38 = v30;
      [mEMORY[0x1E69DC668] openURL:v30 options:MEMORY[0x1E695E0F8] completionHandler:v37];

      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!mEMORY[0x1E698C968]2)
      {
        mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_opt_class();
        context2 = [(AMSUIWebSafariViewController *)self context];
        logKey2 = [context2 logKey];
        *buf = 138543874;
        v40 = v33;
        v41 = 2114;
        v42 = logKey2;
        v43 = 2112;
        v44 = v30;
        _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Redirecting to app URL scheme for URL: %@", buf, 0x20u);
      }

      [(AMSUIWebSafariViewController *)self setPerformingNavigation:0];
      [(AMSUIWebSafariViewController *)self _setupPageForWebView];
      handlerCopy[2](handlerCopy, 0);
      v23 = v36;
    }

    else
    {
      handlerCopy[2](handlerCopy, 1);
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

- (void)_back:(id)_back
{
  webView = [(AMSUIWebSafariViewController *)self webView];
  goBack = [webView goBack];
}

- (void)_cancel:(id)_cancel
{
  v14 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    context = [(AMSUIWebSafariViewController *)self context];
    logKey = [context logKey];
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = logKey;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Cancel selected", &v10, 0x16u);
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
  ams_systemChevronLeft = [MEMORY[0x1E69DCAB8] ams_systemChevronLeft];
  v7 = [v5 initWithImage:ams_systemChevronLeft style:0 target:self action:sel__back_];
  toolbarLeft = self->_toolbarLeft;
  self->_toolbarLeft = v7;

  [v3 addObject:self->_toolbarLeft];
  v9 = [MEMORY[0x1E69DC708] fixedSpaceItemOfWidth:40.0];
  [v3 addObject:v9];

  v10 = objc_alloc(MEMORY[0x1E69DC708]);
  ams_systemChevronRight = [MEMORY[0x1E69DCAB8] ams_systemChevronRight];
  v12 = [v10 initWithImage:ams_systemChevronRight style:0 target:self action:sel__forward_];
  toolbarRight = self->_toolbarRight;
  self->_toolbarRight = v12;

  [v3 addObject:self->_toolbarRight];
  model = [(AMSUIWebSafariViewController *)self model];
  LODWORD(ams_systemChevronRight) = [model showShareButton];

  if (ams_systemChevronRight)
  {
    flexibleSpaceItem = [MEMORY[0x1E69DC708] flexibleSpaceItem];
    [v3 addObject:flexibleSpaceItem];

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

- (void)_finishedLoadingWithSuccess:(BOOL)success
{
  if (success)
  {

    [(AMSUIWebSafariViewController *)self _transitionToWebView];
  }

  else
  {
    v4 = AMSError();
    [(AMSUIWebSafariViewController *)self _transitionToErrorViewWithError:v4];
  }
}

- (void)_forward:(id)_forward
{
  webView = [(AMSUIWebSafariViewController *)self webView];
  goForward = [webView goForward];
}

- (void)_handleDismiss
{
  [(AMSUIWebSafariViewController *)self setDidHandleDismiss:1];
  v3 = AMSError();
  [(AMSUIWebSafariViewController *)self _callActionHandlerWithURL:0 error:v3];
}

- (BOOL)_callActionHandlerWithURL:(id)l error:(id)error
{
  lCopy = l;
  errorCopy = error;
  if (!(lCopy | errorCopy))
  {
    errorCopy = AMSError();
  }

  if (errorCopy)
  {

    lCopy = 0;
  }

  actionHandler = [(AMSUIWebSafariViewController *)self actionHandler];

  if (actionHandler)
  {
    actionHandler2 = [(AMSUIWebSafariViewController *)self actionHandler];
    actionHandler2[2](actionHandler2, lCopy, errorCopy);

    [(AMSUIWebSafariViewController *)self setActionHandler:0];
  }

  return actionHandler != 0;
}

- (void)_pop
{
  [(AMSUIWebSafariViewController *)self _handleDismiss];
  navigationController = [(AMSUIWebSafariViewController *)self navigationController];
  v3 = [navigationController popViewControllerAnimated:1];
}

- (void)_presentActivityViewControllerWithActivityItems:(id)items
{
  v4 = MEMORY[0x1E69CD9F8];
  itemsCopy = items;
  v8 = [[v4 alloc] initWithActivityItems:itemsCopy applicationActivities:0];

  view = [(AMSUICommonViewController *)self view];
  popoverPresentationController = [v8 popoverPresentationController];
  [popoverPresentationController setSourceView:view];

  [(AMSUIWebSafariViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)_presentPlaceholderModel:(id)model
{
  modelCopy = model;
  placeholderPage = [(AMSUIWebSafariViewController *)self placeholderPage];
  [placeholderPage ams_removeFromParentViewController];

  [(AMSUIWebSafariViewController *)self setPlaceholderPage:0];
  v7 = [modelCopy createViewControllerForContainer:0];
  appearance = [(AMSUIWebSafariViewController *)self appearance];
  [v7 willPresentPageModel:modelCopy appearance:appearance];

  [(UIViewController *)self ams_setChildViewController:v7];
  [(AMSUIWebSafariViewController *)self setPlaceholderPage:v7];
}

- (void)_refresh:(id)_refresh
{
  webView = [(AMSUIWebSafariViewController *)self webView];
  reload = [webView reload];
}

- (void)_startLoadingWebView
{
  v34 = *MEMORY[0x1E69E9840];
  model = [(AMSUIWebSafariViewController *)self model];
  if (model)
  {
    v4 = model;
    webView = [(AMSUIWebSafariViewController *)self webView];

    if (webView)
    {
      webView2 = [(AMSUIWebSafariViewController *)self webView];
      v7 = [webView2 URL];

      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
      mEMORY[0x1E698C968]2 = mEMORY[0x1E698C968];
      if (v7)
      {
        if (!mEMORY[0x1E698C968])
        {
          mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
        }

        oSLogObject = [mEMORY[0x1E698C968]2 OSLogObject];
        if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        v11 = objc_opt_class();
        context = [(AMSUIWebSafariViewController *)self context];
        logKey = [context logKey];
        v26 = 138543618;
        v27 = v11;
        v28 = 2114;
        v29 = logKey;
        _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Safari already loaded", &v26, 0x16u);
      }

      else
      {
        if (!mEMORY[0x1E698C968])
        {
          mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
        }

        oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
        {
          v15 = objc_opt_class();
          context2 = [(AMSUIWebSafariViewController *)self context];
          logKey2 = [context2 logKey];
          model2 = [(AMSUIWebSafariViewController *)self model];
          v19 = [model2 URL];
          model3 = [(AMSUIWebSafariViewController *)self model];
          callbackScheme = [model3 callbackScheme];
          v26 = 138544130;
          v27 = v15;
          v28 = 2114;
          v29 = logKey2;
          v30 = 2112;
          v31 = v19;
          v32 = 2114;
          v33 = callbackScheme;
          _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Loading safari url: %@, scheme: %{public}@", &v26, 0x2Au);
        }

        mEMORY[0x1E698C968]2 = [(AMSUIWebSafariViewController *)self webView];
        v22 = MEMORY[0x1E696AF68];
        oSLogObject = [(AMSUIWebSafariViewController *)self model];
        context = [oSLogObject URL];
        v23 = [v22 requestWithURL:context];
        v24 = [mEMORY[0x1E698C968]2 loadRequest:v23];
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

  model = [(AMSUIWebSafariViewController *)self model];
  if ([model hideToolBar])
  {
    goto LABEL_5;
  }

  toolbar = [(AMSUIWebSafariViewController *)self toolbar];

  if (!toolbar)
  {
    _createToolBar = [(AMSUIWebSafariViewController *)self _createToolBar];
    toolbar = self->_toolbar;
    self->_toolbar = _createToolBar;

    model = [(AMSUICommonViewController *)self view];
    toolbar2 = [(AMSUIWebSafariViewController *)self toolbar];
    [model addSubview:toolbar2];

LABEL_5:
  }

  performingNavigation = [(AMSUIWebSafariViewController *)self performingNavigation];

  [(AMSUIWebSafariViewController *)self _setupSafariNavBarWithSpinner:performingNavigation];
}

- (void)_share:(id)_share
{
  v28 = *MEMORY[0x1E69E9840];
  webView = [(AMSUIWebSafariViewController *)self webView];
  v5 = [webView URL];

  if (v5)
  {
    webView2 = [(AMSUIWebSafariViewController *)self webView];
    v7 = [webView2 URL];
    lastPathComponent = [v7 lastPathComponent];

    webView3 = [(AMSUIWebSafariViewController *)self webView];
    v10 = [webView3 URL];
    pathExtension = [v10 pathExtension];
    lowercaseString = [pathExtension lowercaseString];
    v13 = [lowercaseString isEqualToString:@"pdf"];

    if (v13)
    {
      webView4 = [(AMSUIWebSafariViewController *)self webView];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __39__AMSUIWebSafariViewController__share___block_invoke;
      v21[3] = &unk_1E7F26818;
      lastPathComponent = lastPathComponent;
      v22 = lastPathComponent;
      selfCopy = self;
      [webView4 _getMainResourceDataWithCompletionHandler:v21];
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
    lastPathComponent = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!lastPathComponent)
    {
      lastPathComponent = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [lastPathComponent OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      context = [(AMSUIWebSafariViewController *)self context];
      logKey = [context logKey];
      *buf = 138543618;
      v25 = v16;
      v26 = 2114;
      v27 = logKey;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] No URL to share", buf, 0x16u);
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

- (void)_transitionToErrorViewWithError:(id)error
{
  errorCopy = error;
  if ([(AMSUIWebSafariViewController *)self pageState]== 1 || ![(AMSUIWebSafariViewController *)self pageState])
  {
    [(AMSUIWebSafariViewController *)self setPageState:2];
    objc_initWeak(&location, self);
    v5 = [AMSUIWebErrorPageModel alloc];
    context = [(AMSUIWebSafariViewController *)self context];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __64__AMSUIWebSafariViewController__transitionToErrorViewWithError___block_invoke;
    v11 = &unk_1E7F26AE8;
    objc_copyWeak(&v12, &location);
    v7 = [(AMSUIWebErrorPageModel *)v5 initWithError:errorCopy context:context actionBlock:&v8];

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
    model = [(AMSUIWebSafariViewController *)self model];
    loadingModel = [model loadingModel];
    [(AMSUIWebSafariViewController *)self _presentPlaceholderModel:loadingModel];

    [(AMSUIWebSafariViewController *)self _startErrorTimer];
  }
}

- (void)_transitionToWebView
{
  if ([(AMSUIWebSafariViewController *)self pageState]!= 3)
  {
    [(AMSUIWebSafariViewController *)self setPageState:3];
    [(AMSUIWebSafariViewController *)self _setupPageForWebView];
    placeholderPage = [(AMSUIWebSafariViewController *)self placeholderPage];
    [placeholderPage ams_removeFromParentViewController];

    [(AMSUIWebSafariViewController *)self setPlaceholderPage:0];
  }
}

- (void)_setupSafariNavBarWithSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  v39[1] = *MEMORY[0x1E69E9840];
  if ([(AMSUIWebSafariViewController *)self pageState]== 3)
  {
    ams_navigationItemViewController = [(UIViewController *)self ams_navigationItemViewController];
    if (objc_opt_respondsToSelector())
    {
      navigationItem = [ams_navigationItemViewController navigationItem];
    }

    else
    {
      navigationItem = 0;
    }

    model = [(AMSUIWebSafariViewController *)self model];
    navigationBar = [model navigationBar];
    title = [navigationBar title];
    if (title)
    {
      [ams_navigationItemViewController setTitle:title];
    }

    else
    {
      v35 = spinnerCopy;
      v36 = navigationItem;
      v10 = ams_navigationItemViewController;
      webView = [(AMSUIWebSafariViewController *)self webView];
      v12 = [webView URL];
      host = [v12 host];
      if (host)
      {
        [v10 setTitle:host];
      }

      else
      {
        model2 = [(AMSUIWebSafariViewController *)self model];
        v14 = [model2 URL];
        host2 = [v14 host];
        [v10 setTitle:host2];
      }

      ams_navigationItemViewController = v10;
      navigationItem = v36;
      spinnerCopy = v35;
    }

    model3 = [(AMSUIWebSafariViewController *)self model];
    navigationBar2 = [model3 navigationBar];
    if ([navigationBar2 includesLeftItems])
    {
    }

    else
    {
      navigationController = [(AMSUIWebSafariViewController *)self navigationController];
      viewControllers = [navigationController viewControllers];
      v20 = [viewControllers count];

      if (v20 > 1)
      {
        goto LABEL_20;
      }

      if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
      {
        model3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancel_];
      }

      else
      {
        v21 = objc_alloc(MEMORY[0x1E69DC708]);
        v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
        v23 = AMSUILocalizedStringFromBundle(@"CANCEL", 0, v22);
        model3 = [v21 initWithTitle:v23 style:0 target:self action:sel__cancel_];
      }

      [model3 setAccessibilityIdentifier:@"cancel_bar_button_item"];
      v39[0] = model3;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
      [navigationItem setLeftBarButtonItems:v24];
    }

LABEL_20:
    model4 = [(AMSUIWebSafariViewController *)self model];
    navigationBar3 = [model4 navigationBar];
    if (([navigationBar3 includesRightItems] & 1) == 0)
    {
      model5 = [(AMSUIWebSafariViewController *)self model];
      hideRefreshButton = [model5 hideRefreshButton];

      if (hideRefreshButton)
      {
        goto LABEL_23;
      }

      if (spinnerCopy)
      {
        rightBarButtonItem = [navigationItem rightBarButtonItem];
        customView = [rightBarButtonItem customView];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_23;
        }

        navigationBar3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
        model4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:navigationBar3];
        [model4 setAccessibilityIdentifier:@"activity_indicator_bar_button_item"];
        [navigationBar3 startAnimating];
        v38 = model4;
        v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
        [navigationItem setRightBarButtonItems:v33];
      }

      else
      {
        model4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:13 target:self action:sel__refresh_];
        [model4 setAccessibilityIdentifier:@"refresh_bar_button_item"];
        v37 = model4;
        navigationBar3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
        [navigationItem setRightBarButtonItems:navigationBar3];
      }
    }

LABEL_23:
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_updateButtons
{
  webView = [(AMSUIWebSafariViewController *)self webView];
  canGoBack = [webView canGoBack];
  toolbarLeft = [(AMSUIWebSafariViewController *)self toolbarLeft];
  [toolbarLeft setEnabled:canGoBack];

  webView2 = [(AMSUIWebSafariViewController *)self webView];
  canGoForward = [webView2 canGoForward];
  toolbarRight = [(AMSUIWebSafariViewController *)self toolbarRight];
  [toolbarRight setEnabled:canGoForward];
}

@end