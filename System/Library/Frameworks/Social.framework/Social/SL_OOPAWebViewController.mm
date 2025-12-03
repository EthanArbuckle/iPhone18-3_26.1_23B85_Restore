@interface SL_OOPAWebViewController
- (BOOL)webView:(id)view shouldStartLoadWithRequest:(id)request navigationType:(int64_t)type;
- (SL_OOPAWebViewController)init;
- (SL_OOPAWebViewControllerDelegate)delegate;
- (void)_cancelButtonTapped:(id)tapped;
- (void)_didFinishWithSuccess:(BOOL)success response:(id)response error:(id)error;
- (void)_evaluateDocumentTitleForUIWebView:(id)view retryCount:(unint64_t)count completion:(id)completion;
- (void)_evaluateDocumentTitleForWebView:(id)view retryCount:(unint64_t)count completion:(id)completion;
- (void)_loadWebView;
- (void)_loadWebViewIfReady;
- (void)_updateNavBarTitle;
- (void)_updateNavigationPromptWithActiveURL:(id)l;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setAuthFlowDelegate:(id)delegate;
- (void)setAuthURL:(id)l;
- (void)setNavBarTitle:(id)title;
- (void)startAnimating;
- (void)stopAnimating;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFailLoadWithError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webView:(id)view didReceiveServerRedirectForProvisionalNavigation:(id)navigation;
- (void)webViewDidFinishLoad:(id)load;
@end

@implementation SL_OOPAWebViewController

- (SL_OOPAWebViewController)init
{
  v21.receiver = self;
  v21.super_class = SL_OOPAWebViewController;
  v2 = [(SL_OOPAWebViewController *)&v21 init];
  if (v2)
  {
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"SLUseWKWebView", *MEMORY[0x1E695E890], &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v4 = AppBooleanValue == 0;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      v10 = objc_alloc(MEMORY[0x1E69DD2E0]);
      v11 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      uiWebView = v2->_uiWebView;
      v2->_uiWebView = v11;

      [(UIWebView *)v2->_uiWebView setDelegate:v2];
      [(UIWebView *)v2->_uiWebView setScalesPageToFit:1];
      [(UIWebView *)v2->_uiWebView setKeyboardDisplayRequiresUserAction:0];
      [(SL_OOPAWebViewController *)v2 setView:v2->_uiWebView];
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x1E69853A8]);
      nonPersistentDataStore = [MEMORY[0x1E69853B8] nonPersistentDataStore];
      [v5 setWebsiteDataStore:nonPersistentDataStore];

      v7 = objc_alloc(MEMORY[0x1E69853A0]);
      v8 = [v7 initWithFrame:v5 configuration:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      wkWebView = v2->_wkWebView;
      v2->_wkWebView = v8;

      [(WKWebView *)v2->_wkWebView setNavigationDelegate:v2];
      [(WKWebView *)v2->_wkWebView addObserver:v2 forKeyPath:@"loading" options:1 context:0];
      [(SL_OOPAWebViewController *)v2 setView:v2->_wkWebView];
    }

    mEMORY[0x1E696AC60] = [MEMORY[0x1E696AC60] sharedHTTPCookieStorage];
    [mEMORY[0x1E696AC60] setCookieAcceptPolicy:0];
    if (v2->_uiWebView)
    {
      v14 = [objc_alloc(MEMORY[0x1E69E2F78]) initWithIdentifier:@"com.apple.AccountAuthenticationDialog.private"];
      [v14 setAutosaves:0];
      [v14 setPrivateBrowsingEnabled:1];
      [v14 setJavaScriptEnabled:1];
      _browserView = [(UIWebView *)v2->_uiWebView _browserView];
      webView = [_browserView webView];
      [webView setPreferences:v14];
    }

    v17 = objc_alloc_init(SL_OOPASpinnerTitle);
    navigationItem = [(SL_OOPAWebViewController *)v2 navigationItem];
    [navigationItem setTitleView:v17];
  }

  return v2;
}

- (void)dealloc
{
  wkWebView = self->_wkWebView;
  if (wkWebView)
  {
    [(WKWebView *)wkWebView removeObserver:self forKeyPath:@"loading"];
    [(WKWebView *)self->_wkWebView setNavigationDelegate:0];
  }

  else
  {
    [(UIWebView *)self->_uiWebView setDelegate:0];
  }

  v4.receiver = self;
  v4.super_class = SL_OOPAWebViewController;
  [(SL_OOPAWebViewController *)&v4 dealloc];
}

- (void)setNavBarTitle:(id)title
{
  [(SL_OOPAWebViewController *)self setBackingTitle:title];

  [(SL_OOPAWebViewController *)self _updateNavBarTitle];
}

- (void)_updateNavBarTitle
{
  backingTitle = [(SL_OOPAWebViewController *)self backingTitle];
  navigationItem = [(SL_OOPAWebViewController *)self navigationItem];
  titleView = [navigationItem titleView];
  [titleView setTitle:backingTitle];
}

- (void)setAuthURL:(id)l
{
  v4 = [l copy];
  authURL = self->_authURL;
  self->_authURL = v4;

  [(SL_OOPAWebViewController *)self _loadWebViewIfReady];
}

- (void)setAuthFlowDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeStrong(&self->_authFlowDelegate, delegate);
  objc_initWeak(&location, self);
  authFlowDelegate = self->_authFlowDelegate;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __48__SL_OOPAWebViewController_setAuthFlowDelegate___block_invoke;
  v10 = &unk_1E8175E48;
  objc_copyWeak(&v11, &location);
  [(SL_OOPAuthFlowDelegate *)authFlowDelegate setAuthFlowCompletion:&v7];
  [(SL_OOPAWebViewController *)self _loadWebViewIfReady:v7];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)viewWillAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = SL_OOPAWebViewController;
  [(SL_OOPAWebViewController *)&v13 viewWillAppear:appear];
  navigationItem = [(SL_OOPAWebViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonTapped_];
  navigationItem2 = [(SL_OOPAWebViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v5];

  authURL = [(SL_OOPAWebViewController *)self authURL];
  [(SL_OOPAWebViewController *)self _updateNavigationPromptWithActiveURL:authURL];

  navigationController = [(SL_OOPAWebViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  standardAppearance = [navigationBar standardAppearance];
  navigationController2 = [(SL_OOPAWebViewController *)self navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  [navigationBar2 setScrollEdgeAppearance:standardAppearance];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SL_OOPAWebViewController;
  [(SL_OOPAWebViewController *)&v4 viewDidAppear:appear];
  [(SL_OOPAWebViewController *)self _loadWebViewIfReady];
}

- (void)_loadWebViewIfReady
{
  if (!self->_didLoadWebView && (self->_authURL || self->_authFlowDelegate))
  {
    [(SL_OOPAWebViewController *)self _loadWebView];
  }
}

- (void)_loadWebView
{
  self->_didLoadWebView = 1;
  authFlowDelegate = self->_authFlowDelegate;
  if (authFlowDelegate)
  {
    v5 = [(SL_OOPAuthFlowDelegate *)authFlowDelegate authURLForUsername:self->_username];
    authURL = self->_authURL;
    self->_authURL = v5;

    v11 = self->_authURL;
    _SLLog(v2, 7, @"_authURL from delegate %@");
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __40__SL_OOPAWebViewController__loadWebView__block_invoke;
  v18[3] = &unk_1E8175E70;
  v18[4] = self;
  v7 = MEMORY[0x1C6917BF0](v18, a2);
  initialRedirectURL = [(SL_OOPAuthFlowDelegate *)self->_authFlowDelegate initialRedirectURL];
  if (initialRedirectURL)
  {
    v9 = [SLExternalServiceGatekeeper alloc];
    v10 = self->_authURL;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __40__SL_OOPAWebViewController__loadWebView__block_invoke_2;
    v15 = &unk_1E8175EC0;
    selfCopy = self;
    v17 = v7;
  }

  else
  {
    (v7)[2](v7, self->_authURL);
  }

  [(SL_OOPAWebViewController *)self startAnimating:v11];
}

- (void)_didFinishWithSuccess:(BOOL)success response:(id)response error:(id)error
{
  if (!self->_didFinish)
  {
    successCopy = success;
    self->_didFinish = 1;
    errorCopy = error;
    responseCopy = response;
    delegate = [(SL_OOPAWebViewController *)self delegate];
    [delegate webViewController:self didFinishWithSuccess:successCopy response:responseCopy error:errorCopy];
  }
}

- (BOOL)webView:(id)view shouldStartLoadWithRequest:(id)request navigationType:(int64_t)type
{
  viewCopy = view;
  requestCopy = request;
  if (!self->_authFlowDelegate)
  {
    v15 = [requestCopy URL];
    absoluteString = [v15 absoluteString];

    if ([absoluteString hasPrefix:@"account://"])
    {
      _SLLog(v5, 5, @"SL_OOPAWebViewController caught account:// redirect!");
      [(SL_OOPAWebViewController *)self _didFinishWithSuccess:1 response:0 error:0];
      v10 = 0;
      goto LABEL_7;
    }

    if (!self->_authFlowDelegate)
    {
      goto LABEL_9;
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_9:
    v10 = 1;
    goto LABEL_10;
  }

  v10 = 1;
  if ([(SL_OOPAuthFlowDelegate *)self->_authFlowDelegate shouldHideWebViewForLoadWithRequest:requestCopy])
  {
    view = [(SL_OOPAWebViewController *)self view];
    absoluteString = [view snapshotViewAfterScreenUpdates:0];

    view2 = [(SL_OOPAWebViewController *)self view];
    [view2 bounds];
    [absoluteString setFrame:?];

    [absoluteString setAutoresizingMask:18];
    view3 = [(SL_OOPAWebViewController *)self view];
    [view3 addSubview:absoluteString];

    self->_hidingWebView = 1;
LABEL_7:
  }

LABEL_10:

  return v10;
}

- (void)webView:(id)view didFailLoadWithError:(id)error
{
  _SLLog(v4, 5, @"SL_OOPAWebViewController failed to load page with error: %@");

  [(SL_OOPAWebViewController *)self stopAnimating];
}

- (void)webViewDidFinishLoad:(id)load
{
  loadCopy = load;
  if (!self->_hidingWebView)
  {
    [(SL_OOPAWebViewController *)self stopAnimating];
  }

  request = [loadCopy request];
  v6 = [request URL];
  [(SL_OOPAWebViewController *)self _updateNavigationPromptWithActiveURL:v6];

  if (self->_authFlowDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    authFlowDelegate = self->_authFlowDelegate;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__SL_OOPAWebViewController_webViewDidFinishLoad___block_invoke;
    v8[3] = &unk_1E8175EE8;
    v8[4] = self;
    v9 = loadCopy;
    [(SL_OOPAuthFlowDelegate *)authFlowDelegate webViewDidFinishLoadWithPageTitleSupplier:v8];
  }
}

- (void)_evaluateDocumentTitleForUIWebView:(id)view retryCount:(unint64_t)count completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  if (count)
  {
    v11 = [viewCopy stringByEvaluatingJavaScriptFromString:@"document.title"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 length])
    {
      _SLLog(v5, 3, @"Found title for webview");
      completionCopy[2](completionCopy, v11);
    }

    else
    {
      v12 = dispatch_time(0, 200000000);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __85__SL_OOPAWebViewController__evaluateDocumentTitleForUIWebView_retryCount_completion___block_invoke;
      v13[3] = &unk_1E8175F10;
      v13[4] = self;
      v14 = viewCopy;
      countCopy = count;
      v15 = completionCopy;
      dispatch_after(v12, MEMORY[0x1E69E96A0], v13);
    }
  }

  else
  {
    _SLLog(v5, 3, @"No title for webview found");
    completionCopy[2](completionCopy, 0);
  }
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  viewCopy = view;
  actionCopy = action;
  handlerCopy = handler;
  if (self->_authFlowDelegate)
  {
    if (objc_opt_respondsToSelector())
    {
      authFlowDelegate = self->_authFlowDelegate;
      request = [actionCopy request];
      LODWORD(authFlowDelegate) = [(SL_OOPAuthFlowDelegate *)authFlowDelegate shouldHideWebViewForLoadWithRequest:request];

      if (authFlowDelegate)
      {
        view = [(SL_OOPAWebViewController *)self view];
        v13 = [view snapshotViewAfterScreenUpdates:0];

        view2 = [(SL_OOPAWebViewController *)self view];
        [view2 bounds];
        [v13 setFrame:?];

        [v13 setAutoresizingMask:18];
        view3 = [(SL_OOPAWebViewController *)self view];
        [view3 addSubview:v13];

        self->_hidingWebView = 1;
      }
    }
  }

  handlerCopy[2](handlerCopy, 1);
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  viewCopy = view;
  navigationCopy = navigation;
  if (!self->_hidingWebView)
  {
    [(SL_OOPAWebViewController *)self stopAnimating];
    backForwardList = [viewCopy backForwardList];
    currentItem = [backForwardList currentItem];
    v10 = [currentItem URL];
    [(SL_OOPAWebViewController *)self _updateNavigationPromptWithActiveURL:v10];
  }

  if (self->_authFlowDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    authFlowDelegate = self->_authFlowDelegate;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__SL_OOPAWebViewController_webView_didFinishNavigation___block_invoke;
    v12[3] = &unk_1E8175EE8;
    v12[4] = self;
    v13 = viewCopy;
    [(SL_OOPAuthFlowDelegate *)authFlowDelegate webViewDidFinishLoadWithPageTitleSupplier:v12];
  }
}

- (void)_evaluateDocumentTitleForWebView:(id)view retryCount:(unint64_t)count completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  v11 = completionCopy;
  if (count)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __83__SL_OOPAWebViewController__evaluateDocumentTitleForWebView_retryCount_completion___block_invoke;
    v12[3] = &unk_1E8175F38;
    v14 = completionCopy;
    v12[4] = self;
    v13 = viewCopy;
    countCopy = count;
    [v13 evaluateJavaScript:@"document.title" completionHandler:v12];
  }

  else
  {
    _SLLog(v5, 3, @"No title for webview found");
    v11[2](v11, 0);
  }
}

- (void)webView:(id)view didReceiveServerRedirectForProvisionalNavigation:(id)navigation
{
  v6 = v5;
  viewCopy = view;
  queryItems = [viewCopy URL];
  scheme = [queryItems scheme];
  v10 = [scheme isEqualToString:@"https"];
  if ((v10 & 1) == 0)
  {
    v24 = [viewCopy URL];
    scheme2 = [v24 scheme];
    if (![scheme2 isEqualToString:@"http"])
    {
      v19 = v24;
      goto LABEL_14;
    }
  }

  v11 = [viewCopy URL];
  host = [v11 host];
  selfCopy = self;
  if ([host isEqualToString:@"www.apple.com"])
  {
    v13 = 1;
  }

  else
  {
    v14 = [viewCopy URL];
    host2 = [v14 host];
    v13 = [host2 isEqualToString:@"apple.com"];

    v6 = v5;
  }

  if ((v10 & 1) == 0)
  {

    if ((v13 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v13)
  {
LABEL_10:
    v16 = MEMORY[0x1E696AF20];
    v17 = [viewCopy URL];
    v18 = [v16 componentsWithURL:v17 resolvingAgainstBaseURL:0];
    queryItems = [v18 queryItems];

    scheme = [MEMORY[0x1E696AF60] queryItemWithName:@"error" value:@"access_denied"];
    v19 = [MEMORY[0x1E696AF60] queryItemWithName:@"account" value:@"yahoo_japan"];
    if (![queryItems containsObject:scheme] || (objc_msgSend(queryItems, "containsObject:", v19) & 1) != 0)
    {
      goto LABEL_15;
    }

    v20 = v6;
    v21 = [viewCopy URL];
    absoluteString = [v21 absoluteString];
    _SLLog(v20, 7, @"Dimissing auth UI because the server redirected us to %@");

    scheme2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SLErrorDomain" code:-1 userInfo:{0, absoluteString}];
    [(SL_OOPAWebViewController *)selfCopy _didFinishWithSuccess:0 response:0 error:scheme2];
LABEL_14:

LABEL_15:
  }

LABEL_16:
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"loading"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[WKWebView isLoading](self->_wkWebView, "isLoading")}];
    _SLLog(v6, 5, @"SL_OOPAWebViewController observed WKWebView loading did change to %@");

    if ([(WKWebView *)self->_wkWebView isLoading])
    {
      [(SL_OOPAWebViewController *)self startAnimating];
    }

    else
    {
      [(SL_OOPAWebViewController *)self stopAnimating];
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = SL_OOPAWebViewController;
    [(SL_OOPAWebViewController *)&v15 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)_cancelButtonTapped:(id)tapped
{
  _SLLog(v3, 7, @"SL_OOPAWebViewController: user tapped Cancel.");

  [(SL_OOPAWebViewController *)self _didFinishWithSuccess:0 response:0 error:0];
}

- (void)_updateNavigationPromptWithActiveURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  [(SL_OOPAWebViewController *)self setHostString:host];

  navigationItem = [(SL_OOPAWebViewController *)self navigationItem];
  if (lCopy)
  {
    host2 = [lCopy host];
    [navigationItem setPrompt:host2];
  }

  else
  {
    [navigationItem setPrompt:&stru_1F41EC300];
  }
}

- (void)startAnimating
{
  navigationItem = [(SL_OOPAWebViewController *)self navigationItem];
  titleView = [navigationItem titleView];
  [titleView startAnimating];

  webPageLoading = self->_webPageLoading;

  [(UIActivityIndicatorView *)webPageLoading startAnimating];
}

- (void)stopAnimating
{
  navigationItem = [(SL_OOPAWebViewController *)self navigationItem];
  titleView = [navigationItem titleView];
  [titleView stopAnimating];

  webPageLoading = self->_webPageLoading;

  [(UIActivityIndicatorView *)webPageLoading stopAnimating];
}

- (SL_OOPAWebViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end