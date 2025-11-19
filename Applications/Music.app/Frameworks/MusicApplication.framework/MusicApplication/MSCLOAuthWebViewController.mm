@interface MSCLOAuthWebViewController
- (MSCLOAuthWebViewController)initWithAuthURL:(id)a3 redirectURL:(id)a4;
- (void)_endAuthenticationWithError:(id)a3;
- (void)cancelAuthentication;
- (void)startAuthentication;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
@end

@implementation MSCLOAuthWebViewController

- (MSCLOAuthWebViewController)initWithAuthURL:(id)a3 redirectURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MSCLOAuthWebViewController;
  v8 = [(MSCLOAuthWebViewController *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    authURL = v8->_authURL;
    v8->_authURL = v9;

    v11 = [v7 copy];
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
  v3 = [(MSCLOAuthWebViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(WKWebView *)self->_webView setFrame:v5, v7, v9, v11];
  [(UIActivityIndicatorView *)self->_activityIndicator setFrame:v5, v7, v9, v11];
  v12 = [(MSCLOAuthWebViewController *)self view];
  [v12 bringSubviewToFront:self->_activityIndicator];
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = MSCLOAuthWebViewController;
  [(MSCLOAuthWebViewController *)&v17 viewDidLoad];
  v3 = [(MSCLOAuthWebViewController *)self view];
  v4 = +[UIColor whiteColor];
  [v3 setBackgroundColor:v4];

  v5 = [WKWebView alloc];
  v6 = [(MSCLOAuthWebViewController *)self view];
  [v6 bounds];
  v7 = [v5 initWithFrame:?];

  [(WKWebView *)v7 setNavigationDelegate:self];
  v8 = [(MSCLOAuthWebViewController *)self view];
  [v8 addSubview:v7];

  v9 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [(UIActivityIndicatorView *)v9 setHidesWhenStopped:1];
  v10 = [(MSCLOAuthWebViewController *)self view];
  [v10 addSubview:v9];

  webView = self->_webView;
  self->_webView = v7;
  v12 = v7;

  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = v9;
  v14 = v9;

  v15 = [(MSCLOAuthWebViewController *)self navigationItem];
  v16 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelAuthentication"];

  [v15 setLeftBarButtonItem:v16];
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  if (!self->_interceptedRedirectURL)
  {
    [(MSCLOAuthWebViewController *)self _endAuthenticationWithError:a5, a4];
  }
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v20 = a5;
  v7 = [a4 request];
  v8 = [v7 URL];

  v9 = [v8 host];
  v10 = [v9 lowercaseString];

  v11 = [v8 path];
  v12 = [v11 lowercaseString];

  v13 = [(NSURL *)self->_redirectURL host];
  v14 = [v13 lowercaseString];

  v15 = [(NSURL *)self->_redirectURL path];
  v16 = [v15 lowercaseString];

  if ([v10 isEqualToString:v14] && objc_msgSend(v12, "isEqualToString:", v16))
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

  v20[2](v20, v19);
  if (self->_interceptedRedirectURL)
  {
    [(MSCLOAuthWebViewController *)self _endAuthenticationWithError:0];
  }
}

- (void)_endAuthenticationWithError:(id)a3
{
  v8 = a3;
  [(MSCLOAuthWebViewController *)self setAuthenticating:0];
  v4 = [(MSCLOAuthWebViewController *)self completionBlock];
  if (v4)
  {
    v5 = v8;
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
    (v4)[2](v4, v7, v5);
  }
}

@end