@interface MSCLOAuthWebViewController
- (MSCLOAuthWebViewController)initWithAuthURL:(id)l redirectURL:(id)rL;
- (void)_endAuthenticationWithError:(id)error;
- (void)cancelAuthentication;
- (void)startAuthentication;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
@end

@implementation MSCLOAuthWebViewController

- (MSCLOAuthWebViewController)initWithAuthURL:(id)l redirectURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v14.receiver = self;
  v14.super_class = MSCLOAuthWebViewController;
  v8 = [(MSCLOAuthWebViewController *)&v14 init];
  if (v8)
  {
    v9 = [lCopy copy];
    authURL = v8->_authURL;
    v8->_authURL = v9;

    v11 = [rLCopy copy];
    redirectURL = v8->_redirectURL;
    v8->_redirectURL = v11;
  }

  return v8;
}

- (void)cancelAuthentication
{
  [(WKWebView *)self->_webView stopLoading];
  v3 = [NSError errorWithDomain:@"MSCLOAuthErrorDomain" code:1 userInfo:0];
  [(MSCLOAuthWebViewController *)self _endAuthenticationWithError:v3];
}

- (void)startAuthentication
{
  if (!self->_authenticating)
  {
    [(MSCLOAuthWebViewController *)self loadViewIfNeeded];
    v3 = +[NSHTTPCookieStorage sharedHTTPCookieStorage];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [v3 cookiesForURL:{self->_authURL, 0}];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 deleteCookie:*(*(&v11 + 1) + 8 * v8)];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    v9 = [NSURLRequest requestWithURL:self->_authURL cachePolicy:1 timeoutInterval:30.0];
    v10 = [(WKWebView *)self->_webView loadRequest:v9];
    [(MSCLOAuthWebViewController *)self setAuthenticating:1];
  }
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = MSCLOAuthWebViewController;
  [(MSCLOAuthWebViewController *)&v13 viewDidLayoutSubviews];
  view = [(MSCLOAuthWebViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(WKWebView *)self->_webView setFrame:v5, v7, v9, v11];
  [(UIActivityIndicatorView *)self->_activityIndicator setFrame:v5, v7, v9, v11];
  view2 = [(MSCLOAuthWebViewController *)self view];
  [view2 bringSubviewToFront:self->_activityIndicator];
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = MSCLOAuthWebViewController;
  [(MSCLOAuthWebViewController *)&v17 viewDidLoad];
  view = [(MSCLOAuthWebViewController *)self view];
  v4 = +[UIColor whiteColor];
  [view setBackgroundColor:v4];

  v5 = [WKWebView alloc];
  view2 = [(MSCLOAuthWebViewController *)self view];
  [view2 bounds];
  v7 = [v5 initWithFrame:?];

  [(WKWebView *)v7 setNavigationDelegate:self];
  view3 = [(MSCLOAuthWebViewController *)self view];
  [view3 addSubview:v7];

  v9 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [(UIActivityIndicatorView *)v9 setHidesWhenStopped:1];
  view4 = [(MSCLOAuthWebViewController *)self view];
  [view4 addSubview:v9];

  webView = self->_webView;
  self->_webView = v7;
  v12 = v7;

  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = v9;
  v14 = v9;

  navigationItem = [(MSCLOAuthWebViewController *)self navigationItem];
  v16 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelAuthentication"];

  [navigationItem setLeftBarButtonItem:v16];
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  if (!self->_interceptedRedirectURL)
  {
    [(MSCLOAuthWebViewController *)self _endAuthenticationWithError:error, navigation];
  }
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  handlerCopy = handler;
  request = [action request];
  v8 = [request URL];

  host = [v8 host];
  lowercaseString = [host lowercaseString];

  path = [v8 path];
  lowercaseString2 = [path lowercaseString];

  host2 = [(NSURL *)self->_redirectURL host];
  lowercaseString3 = [host2 lowercaseString];

  path2 = [(NSURL *)self->_redirectURL path];
  lowercaseString4 = [path2 lowercaseString];

  if ([lowercaseString isEqualToString:lowercaseString3] && objc_msgSend(lowercaseString2, "isEqualToString:", lowercaseString4))
  {
    v17 = [v8 copy];
    interceptedRedirectURL = self->_interceptedRedirectURL;
    self->_interceptedRedirectURL = v17;

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  handlerCopy[2](handlerCopy, v19);
  if (self->_interceptedRedirectURL)
  {
    [(MSCLOAuthWebViewController *)self _endAuthenticationWithError:0];
  }
}

- (void)_endAuthenticationWithError:(id)error
{
  errorCopy = error;
  [(MSCLOAuthWebViewController *)self setAuthenticating:0];
  completionBlock = [(MSCLOAuthWebViewController *)self completionBlock];
  if (completionBlock)
  {
    v5 = errorCopy;
    v6 = v5;
    if (!v5)
    {
      if (self->_interceptedRedirectURL)
      {
        v6 = 0;
      }

      else
      {
        v6 = [NSError errorWithDomain:@"MSCLOAuthErrorDomain" code:0 userInfo:0];
      }
    }

    v7 = [(NSURL *)self->_interceptedRedirectURL copy];
    (completionBlock)[2](completionBlock, v7, v5);
  }
}

@end