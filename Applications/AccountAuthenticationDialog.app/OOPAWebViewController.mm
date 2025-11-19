@interface OOPAWebViewController
- (OOPAWebViewController)init;
- (OOPAWebViewControllerDelegate)delegate;
- (id)connection:(id)a3 willSendRequest:(id)a4 redirectResponse:(id)a5;
- (void)_cancelButtonTapped:(id)a3;
- (void)_loadWebView;
- (void)_loadWebViewIfReady;
- (void)_updateNavigationButtons;
- (void)_updateNavigationPromptWithActiveURL:(id)a3;
- (void)connection:(id)a3 didFailWithError:(id)a4;
- (void)connection:(id)a3 didReceiveAuthenticationChallenge:(id)a4;
- (void)setAuthURL:(id)a3;
- (void)setNavBarTitle:(id)a3;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4;
@end

@implementation OOPAWebViewController

- (OOPAWebViewController)init
{
  v8.receiver = self;
  v8.super_class = OOPAWebViewController;
  v2 = [(OOPAWebViewController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(WKWebViewConfiguration);
    v4 = +[WKWebsiteDataStore nonPersistentDataStore];
    [v3 setWebsiteDataStore:v4];

    v5 = [[WKWebView alloc] initWithFrame:v3 configuration:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    webView = v2->_webView;
    v2->_webView = v5;

    [(WKWebView *)v2->_webView setNavigationDelegate:v2];
    [(OOPAWebViewController *)v2 setView:v2->_webView];
  }

  return v2;
}

- (void)setNavBarTitle:(id)a3
{
  v4 = [a3 copy];
  navBarTitle = self->_navBarTitle;
  self->_navBarTitle = v4;

  if (self->_hasAlreadyAppeared)
  {
    v6 = [OOPASpinnerTitle alloc];
    v7 = [(OOPAWebViewController *)self navBarTitle];
    v9 = [(OOPASpinnerTitle *)v6 initWithTitle:v7];

    v8 = [(OOPAWebViewController *)self navigationItem];
    [v8 setTitleView:v9];
  }
}

- (void)setAuthURL:(id)a3
{
  v4 = [a3 copy];
  authURL = self->_authURL;
  self->_authURL = v4;

  [(OOPAWebViewController *)self _loadWebViewIfReady];
}

- (void)_loadWebViewIfReady
{
  if (self->_hasAlreadyAppeared && !self->_urlRequest)
  {
    if (self->_authURL)
    {
      [(OOPAWebViewController *)self _loadWebView];
    }
  }
}

- (void)_loadWebView
{
  v3 = [(NSURL *)self->_authURL resourceSpecifier];
  v4 = [v3 substringFromIndex:2];
  v5 = [@"https://gil.apple.com/" stringByAppendingString:v4];
  v6 = [NSURL URLWithString:v5];

  v7 = _ACLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000028FC();
  }

  v8 = [NSMutableURLRequest requestWithURL:v6 cachePolicy:1 timeoutInterval:30.0];
  urlRequest = self->_urlRequest;
  self->_urlRequest = v8;

  v10 = [NSURLConnection connectionWithRequest:self->_urlRequest delegate:self];
  v11 = [(OOPAWebViewController *)self navigationItem];
  v12 = [v11 titleView];
  [v12 startAnimating];
}

- (id)connection:(id)a3 willSendRequest:(id)a4 redirectResponse:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = _ACLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100002970(v8, v9);
  }

  v10 = [v8 URL];
  v11 = [v10 host];
  v12 = [v11 isEqualToString:@"gil.apple.com"];

  if (v12)
  {
    v13 = v8;
  }

  else
  {
    v14 = [v8 mutableCopy];
    [v7 cancel];
    v15 = [(WKWebView *)self->_webView loadRequest:v14];

    v13 = 0;
  }

  return v13;
}

- (void)connection:(id)a3 didReceiveAuthenticationChallenge:(id)a4
{
  v4 = a4;
  v5 = _ACLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100002A20();
  }

  v6 = [v4 protectionSpace];
  v7 = [v6 serverTrust];

  v8 = [v4 protectionSpace];
  v9 = [v8 authenticationMethod];
  v10 = [v9 isEqualToString:NSURLAuthenticationMethodServerTrust];

  if (v10)
  {
    if (SecTrustEvaluateWithError(v7, 0))
    {
      v11 = SecTrustCopyInfo();
      if (v11)
      {
        v12 = v11;
        v13 = [v11 objectForKeyedSubscript:kSecTrustInfoCompanyNameKey];
        v14 = v13;
        if (v13 && [v13 isEqualToString:@"Apple Inc."])
        {
          v15 = _ACLogSystem();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            sub_100002A5C();
          }

          v16 = [v4 sender];
          v17 = [NSURLCredential credentialForTrust:v7];
          [v16 useCredential:v17 forAuthenticationChallenge:v4];

          goto LABEL_15;
        }
      }
    }
  }

  v18 = _ACLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_100002A98();
  }

  v16 = [v4 sender];
  [v16 cancelAuthenticationChallenge:v4];
LABEL_15:
}

- (void)connection:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v6 = _ACLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100002AD4();
  }

  v7 = [(OOPAWebViewController *)self delegate];
  [v7 webViewController:self didFinishWithSuccess:0 response:0];
}

- (void)_cancelButtonTapped:(id)a3
{
  v4 = _ACLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100002B48();
  }

  v5 = [(OOPAWebViewController *)self delegate];
  [v5 webViewController:self didFinishWithSuccess:0 response:0];
}

- (void)_updateNavigationButtons
{
  [(UIBarButtonItem *)self->_backButton setEnabled:[(WKWebView *)self->_webView canGoBack]];
  forwardButton = self->_forwardButton;
  v4 = [(WKWebView *)self->_webView canGoForward];

  [(UIBarButtonItem *)forwardButton setEnabled:v4];
}

- (void)_updateNavigationPromptWithActiveURL:(id)a3
{
  v6 = a3;
  v4 = [(OOPAWebViewController *)self navigationItem];
  if (v6)
  {
    v5 = [v6 host];
    [v4 setPrompt:v5];
  }

  else
  {
    [v4 setPrompt:&stru_100008338];
  }
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v7 = a5;
  v8 = [a4 request];
  v9 = [v8 URL];
  v10 = [v9 absoluteString];
  v11 = [v10 hasPrefix:@"account://"];

  if (v11)
  {
    v12 = _ACLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "OOPAWebViewController caught account:// redirect!", v14, 2u);
    }

    v13 = [(OOPAWebViewController *)self delegate];
    [v13 webViewController:self didFinishWithSuccess:1 response:0];

    v7[2](v7, 0);
  }

  else
  {
    v7[2](v7, 1);
  }
}

- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4
{
  v5 = [(OOPAWebViewController *)self navigationItem:a3];
  v4 = [v5 titleView];
  [v4 startAnimating];
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v8 = a3;
  if (!self->_hidingWebView)
  {
    v5 = [(OOPAWebViewController *)self navigationItem];
    v6 = [v5 titleView];
    [v6 stopAnimating];
  }

  [(OOPAWebViewController *)self _updateNavigationButtons];
  v7 = [v8 URL];
  [(OOPAWebViewController *)self _updateNavigationPromptWithActiveURL:v7];
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  v6 = a5;
  v7 = _ACLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "OOPAWebViewController failed to load page with error: %@", &v10, 0xCu);
  }

  v8 = [(OOPAWebViewController *)self navigationItem];
  v9 = [v8 titleView];
  [v9 stopAnimating];

  [(OOPAWebViewController *)self _updateNavigationButtons];
}

- (OOPAWebViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end