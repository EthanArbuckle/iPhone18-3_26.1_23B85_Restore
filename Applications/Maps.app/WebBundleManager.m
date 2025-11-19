@interface WebBundleManager
- (WKProcessPool)pool;
- (WebBundleManager)initWithConfiguration:(id)a3 delegate:(id)a4;
- (id)_newConfiguredWebView;
- (void)_cancelPageLoadTimerIfNeeded;
- (void)_pageLoadFailureOccurred;
- (void)_startPageLoadTimer;
- (void)cancelLoadRequest;
- (void)dealloc;
- (void)didLoadPageWithSuccess:(BOOL)a3;
- (void)loadRequest;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4;
@end

@implementation WebBundleManager

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  if (self->_currentNavigation == a4)
  {
    [(WebBundleManager *)self _pageLoadFailureOccurred];
  }
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  if (self->_currentNavigation == a4)
  {
    [(WebBundleManager *)self _pageLoadFailureOccurred];
  }
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  if (self->_currentNavigation == a4)
  {
    v6 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained webViewDidFinishNavigation:v6];
  }
}

- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4
{
  objc_storeStrong(&self->_currentNavigation, a4);

  [(WebBundleManager *)self _startPageLoadTimer];
}

- (void)_pageLoadFailureOccurred
{
  [(WebBundleManager *)self _cancelPageLoadTimerIfNeeded];
  v3 = sub_100038318();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(WebBundleConfiguration *)self->_webBundleConfiguration temporarilyUseOnDeviceDirectory];
    v5 = @"YES";
    if (v4)
    {
      v5 = @"NO";
    }

    v6 = v5;
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Page load failure occurred, reloading: %@", &v11, 0xCu);
  }

  if ([(WebBundleConfiguration *)self->_webBundleConfiguration temporarilyUseOnDeviceDirectory])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = [(WebBundleManager *)self webView];
    [WeakRetained webView:v8 didFinishLoadingWithError:0];
  }

  else
  {
    [(WebBundleConfiguration *)self->_webBundleConfiguration setTemporarilyUseOnDeviceDirectory:1];
    v9 = [(WebBundleManager *)self webView];
    [v9 stopLoading];

    WeakRetained = [(WebBundleManager *)self webView];
    v10 = [WeakRetained reloadFromOrigin];
  }
}

- (void)_cancelPageLoadTimerIfNeeded
{
  pageLoadTimer = self->_pageLoadTimer;
  if (pageLoadTimer)
  {
    [(NSTimer *)pageLoadTimer invalidate];
    v4 = self->_pageLoadTimer;
    self->_pageLoadTimer = 0;
  }
}

- (void)_startPageLoadTimer
{
  [(WebBundleManager *)self _cancelPageLoadTimerIfNeeded];
  v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"_pageLoadFailureOccurred" selector:0 userInfo:0 repeats:3.0];
  pageLoadTimer = self->_pageLoadTimer;
  self->_pageLoadTimer = v3;
}

- (id)_newConfiguredWebView
{
  v3 = [WebBundleSchemaHandler alloc];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [(WebBundleSchemaHandler *)v3 initWithDelegate:WeakRetained configuration:self->_webBundleConfiguration];

  v6 = [WebBundleScriptMessageHandlerWithReply alloc];
  v7 = objc_loadWeakRetained(&self->_delegate);
  v8 = [(WebBundleScriptMessageHandlerWithReply *)v6 initWithDelegate:v7];

  v9 = objc_alloc_init(WKWebViewConfiguration);
  v10 = [(WebBundleConfiguration *)self->_webBundleConfiguration urlScheme];
  [(WKWebViewConfiguration *)v9 setURLSchemeHandler:v5 forURLScheme:v10];

  v11 = [(WebBundleManager *)self pool];
  [(WKWebViewConfiguration *)v9 setProcessPool:v11];

  v12 = objc_alloc_init(WKUserContentController);
  [(WKWebViewConfiguration *)v9 setUserContentController:v12];

  v13 = [(WKWebViewConfiguration *)v9 userContentController];
  v14 = +[WKContentWorld pageWorld];
  v15 = [(WebBundleConfiguration *)self->_webBundleConfiguration messageHandlerName];
  [v13 addScriptMessageHandlerWithReply:v8 contentWorld:v14 name:v15];

  webViewConfiguration = self->_webViewConfiguration;
  self->_webViewConfiguration = v9;
  v17 = v9;

  v18 = [[NoKeyboardAccessoryWebView alloc] initWithFrame:v17 configuration:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(NoKeyboardAccessoryWebView *)v18 _setInputDelegate:self];
  [(NoKeyboardAccessoryWebView *)v18 setNavigationDelegate:self];
  v19 = [(NoKeyboardAccessoryWebView *)v18 scrollView];
  [v19 setScrollsToTop:0];

  v20 = [(NoKeyboardAccessoryWebView *)v18 scrollView];
  [v20 setMaximumZoomScale:1.0];

  v21 = [(NoKeyboardAccessoryWebView *)v18 scrollView];
  [v21 setMinimumZoomScale:1.0];

  [(NoKeyboardAccessoryWebView *)v18 setOpaque:0];
  v22 = [(NoKeyboardAccessoryWebView *)v18 scrollView];
  [v22 setZoomEnabled:0];

  [(NoKeyboardAccessoryWebView *)v18 _setUseSystemAppearance:1];
  return v18;
}

- (void)dealloc
{
  v3 = [(WKWebViewConfiguration *)self->_webViewConfiguration userContentController];
  v4 = [(WebBundleConfiguration *)self->_webBundleConfiguration messageHandlerName];
  v5 = +[WKContentWorld pageWorld];
  [v3 removeScriptMessageHandlerForName:v4 contentWorld:v5];

  v6.receiver = self;
  v6.super_class = WebBundleManager;
  [(WebBundleManager *)&v6 dealloc];
}

- (void)didLoadPageWithSuccess:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100038318();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = v6;
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Did load page with success: %@", &v8, 0xCu);
  }

  if (v3)
  {
    [(WebBundleManager *)self _cancelPageLoadTimerIfNeeded];
  }

  else
  {
    [(WebBundleManager *)self _pageLoadFailureOccurred];
  }
}

- (void)cancelLoadRequest
{
  [(WebBundleManager *)self _cancelPageLoadTimerIfNeeded];
  v3 = [(WebBundleManager *)self webView];
  [v3 stopLoading];
}

- (void)loadRequest
{
  v3 = [(WebBundleManager *)self entryPointString];
  webBundleConfiguration = self->_webBundleConfiguration;
  if (v3)
  {
    v5 = [(WebBundleConfiguration *)webBundleConfiguration entryPointUrlBase];
    v6 = [(WebBundleManager *)self entryPointString];
    v10 = [v5 URLByAppendingPathComponent:v6];
  }

  else
  {
    v10 = [(WebBundleConfiguration *)webBundleConfiguration entryPointUrl];
  }

  v7 = [(WebBundleManager *)self webView];
  v8 = [[NSURLRequest alloc] initWithURL:v10];
  v9 = [v7 loadRequest:v8];
}

- (WebBundleManager)initWithConfiguration:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = WebBundleManager;
  v9 = [(WebBundleManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    objc_storeStrong(&v10->_webBundleConfiguration, a3);
    v11 = [(WebBundleManager *)v10 _newConfiguredWebView];
    webView = v10->_webView;
    v10->_webView = v11;
  }

  return v10;
}

- (WKProcessPool)pool
{
  pool = self->_pool;
  if (!pool)
  {
    v4 = objc_alloc_init(_WKProcessPoolConfiguration);
    [v4 setUsesSingleWebProcess:1];
    v5 = [[WKProcessPool alloc] _initWithConfiguration:v4];
    v6 = self->_pool;
    self->_pool = v5;

    pool = self->_pool;
  }

  return pool;
}

@end