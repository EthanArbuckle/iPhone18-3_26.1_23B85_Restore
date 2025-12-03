@interface OOPAWebViewController
- (OOPAWebViewController)init;
- (OOPAWebViewControllerDelegate)delegate;
- (id)connection:(id)connection willSendRequest:(id)request redirectResponse:(id)response;
- (void)_cancelButtonTapped:(id)tapped;
- (void)_loadWebView;
- (void)_loadWebViewIfReady;
- (void)_updateNavigationButtons;
- (void)_updateNavigationPromptWithActiveURL:(id)l;
- (void)connection:(id)connection didFailWithError:(id)error;
- (void)connection:(id)connection didReceiveAuthenticationChallenge:(id)challenge;
- (void)setAuthURL:(id)l;
- (void)setNavBarTitle:(id)title;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation;
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

- (void)setNavBarTitle:(id)title
{
  v4 = [title copy];
  navBarTitle = self->_navBarTitle;
  self->_navBarTitle = v4;

  if (self->_hasAlreadyAppeared)
  {
    v6 = [OOPASpinnerTitle alloc];
    navBarTitle = [(OOPAWebViewController *)self navBarTitle];
    v9 = [(OOPASpinnerTitle *)v6 initWithTitle:navBarTitle];

    navigationItem = [(OOPAWebViewController *)self navigationItem];
    [navigationItem setTitleView:v9];
  }
}

- (void)setAuthURL:(id)l
{
  v4 = [l copy];
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
  resourceSpecifier = [(NSURL *)self->_authURL resourceSpecifier];
  v4 = [resourceSpecifier substringFromIndex:2];
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
  navigationItem = [(OOPAWebViewController *)self navigationItem];
  titleView = [navigationItem titleView];
  [titleView startAnimating];
}

- (id)connection:(id)connection willSendRequest:(id)request redirectResponse:(id)response
{
  connectionCopy = connection;
  requestCopy = request;
  v9 = _ACLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100002970(requestCopy, v9);
  }

  v10 = [requestCopy URL];
  host = [v10 host];
  v12 = [host isEqualToString:@"gil.apple.com"];

  if (v12)
  {
    v13 = requestCopy;
  }

  else
  {
    v14 = [requestCopy mutableCopy];
    [connectionCopy cancel];
    v15 = [(WKWebView *)self->_webView loadRequest:v14];

    v13 = 0;
  }

  return v13;
}

- (void)connection:(id)connection didReceiveAuthenticationChallenge:(id)challenge
{
  challengeCopy = challenge;
  v5 = _ACLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100002A20();
  }

  protectionSpace = [challengeCopy protectionSpace];
  serverTrust = [protectionSpace serverTrust];

  protectionSpace2 = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace2 authenticationMethod];
  v10 = [authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust];

  if (v10)
  {
    if (SecTrustEvaluateWithError(serverTrust, 0))
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

          sender = [challengeCopy sender];
          v17 = [NSURLCredential credentialForTrust:serverTrust];
          [sender useCredential:v17 forAuthenticationChallenge:challengeCopy];

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

  sender = [challengeCopy sender];
  [sender cancelAuthenticationChallenge:challengeCopy];
LABEL_15:
}

- (void)connection:(id)connection didFailWithError:(id)error
{
  errorCopy = error;
  v6 = _ACLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100002AD4();
  }

  delegate = [(OOPAWebViewController *)self delegate];
  [delegate webViewController:self didFinishWithSuccess:0 response:0];
}

- (void)_cancelButtonTapped:(id)tapped
{
  v4 = _ACLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100002B48();
  }

  delegate = [(OOPAWebViewController *)self delegate];
  [delegate webViewController:self didFinishWithSuccess:0 response:0];
}

- (void)_updateNavigationButtons
{
  [(UIBarButtonItem *)self->_backButton setEnabled:[(WKWebView *)self->_webView canGoBack]];
  forwardButton = self->_forwardButton;
  canGoForward = [(WKWebView *)self->_webView canGoForward];

  [(UIBarButtonItem *)forwardButton setEnabled:canGoForward];
}

- (void)_updateNavigationPromptWithActiveURL:(id)l
{
  lCopy = l;
  navigationItem = [(OOPAWebViewController *)self navigationItem];
  if (lCopy)
  {
    host = [lCopy host];
    [navigationItem setPrompt:host];
  }

  else
  {
    [navigationItem setPrompt:&stru_100008338];
  }
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  handlerCopy = handler;
  request = [action request];
  v9 = [request URL];
  absoluteString = [v9 absoluteString];
  v11 = [absoluteString hasPrefix:@"account://"];

  if (v11)
  {
    v12 = _ACLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "OOPAWebViewController caught account:// redirect!", v14, 2u);
    }

    delegate = [(OOPAWebViewController *)self delegate];
    [delegate webViewController:self didFinishWithSuccess:1 response:0];

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    handlerCopy[2](handlerCopy, 1);
  }
}

- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation
{
  v5 = [(OOPAWebViewController *)self navigationItem:view];
  titleView = [v5 titleView];
  [titleView startAnimating];
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  viewCopy = view;
  if (!self->_hidingWebView)
  {
    navigationItem = [(OOPAWebViewController *)self navigationItem];
    titleView = [navigationItem titleView];
    [titleView stopAnimating];
  }

  [(OOPAWebViewController *)self _updateNavigationButtons];
  v7 = [viewCopy URL];
  [(OOPAWebViewController *)self _updateNavigationPromptWithActiveURL:v7];
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  errorCopy = error;
  v7 = _ACLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = errorCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "OOPAWebViewController failed to load page with error: %@", &v10, 0xCu);
  }

  navigationItem = [(OOPAWebViewController *)self navigationItem];
  titleView = [navigationItem titleView];
  [titleView stopAnimating];

  [(OOPAWebViewController *)self _updateNavigationButtons];
}

- (OOPAWebViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end