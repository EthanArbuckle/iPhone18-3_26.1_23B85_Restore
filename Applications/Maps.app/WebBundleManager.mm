@interface WebBundleManager
- (WKProcessPool)pool;
- (WebBundleManager)initWithConfiguration:(id)configuration delegate:(id)delegate;
- (id)_newConfiguredWebView;
- (void)_cancelPageLoadTimerIfNeeded;
- (void)_pageLoadFailureOccurred;
- (void)_startPageLoadTimer;
- (void)cancelLoadRequest;
- (void)dealloc;
- (void)didLoadPageWithSuccess:(BOOL)success;
- (void)loadRequest;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation;
@end

@implementation WebBundleManager

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  if (self->_currentNavigation == navigation)
  {
    [(WebBundleManager *)self _pageLoadFailureOccurred];
  }
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  if (self->_currentNavigation == navigation)
  {
    [(WebBundleManager *)self _pageLoadFailureOccurred];
  }
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  if (self->_currentNavigation == navigation)
  {
    viewCopy = view;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained webViewDidFinishNavigation:viewCopy];
  }
}

- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation
{
  objc_storeStrong(&self->_currentNavigation, navigation);

  [(WebBundleManager *)self _startPageLoadTimer];
}

- (void)_pageLoadFailureOccurred
{
  [(WebBundleManager *)self _cancelPageLoadTimerIfNeeded];
  v3 = sub_100038318();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    temporarilyUseOnDeviceDirectory = [(WebBundleConfiguration *)self->_webBundleConfiguration temporarilyUseOnDeviceDirectory];
    v5 = @"YES";
    if (temporarilyUseOnDeviceDirectory)
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
    webView = [(WebBundleManager *)self webView];
    [WeakRetained webView:webView didFinishLoadingWithError:0];
  }

  else
  {
    [(WebBundleConfiguration *)self->_webBundleConfiguration setTemporarilyUseOnDeviceDirectory:1];
    webView2 = [(WebBundleManager *)self webView];
    [webView2 stopLoading];

    WeakRetained = [(WebBundleManager *)self webView];
    reloadFromOrigin = [WeakRetained reloadFromOrigin];
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
  urlScheme = [(WebBundleConfiguration *)self->_webBundleConfiguration urlScheme];
  [(WKWebViewConfiguration *)v9 setURLSchemeHandler:v5 forURLScheme:urlScheme];

  pool = [(WebBundleManager *)self pool];
  [(WKWebViewConfiguration *)v9 setProcessPool:pool];

  v12 = objc_alloc_init(WKUserContentController);
  [(WKWebViewConfiguration *)v9 setUserContentController:v12];

  userContentController = [(WKWebViewConfiguration *)v9 userContentController];
  v14 = +[WKContentWorld pageWorld];
  messageHandlerName = [(WebBundleConfiguration *)self->_webBundleConfiguration messageHandlerName];
  [userContentController addScriptMessageHandlerWithReply:v8 contentWorld:v14 name:messageHandlerName];

  webViewConfiguration = self->_webViewConfiguration;
  self->_webViewConfiguration = v9;
  v17 = v9;

  v18 = [[NoKeyboardAccessoryWebView alloc] initWithFrame:v17 configuration:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(NoKeyboardAccessoryWebView *)v18 _setInputDelegate:self];
  [(NoKeyboardAccessoryWebView *)v18 setNavigationDelegate:self];
  scrollView = [(NoKeyboardAccessoryWebView *)v18 scrollView];
  [scrollView setScrollsToTop:0];

  scrollView2 = [(NoKeyboardAccessoryWebView *)v18 scrollView];
  [scrollView2 setMaximumZoomScale:1.0];

  scrollView3 = [(NoKeyboardAccessoryWebView *)v18 scrollView];
  [scrollView3 setMinimumZoomScale:1.0];

  [(NoKeyboardAccessoryWebView *)v18 setOpaque:0];
  scrollView4 = [(NoKeyboardAccessoryWebView *)v18 scrollView];
  [scrollView4 setZoomEnabled:0];

  [(NoKeyboardAccessoryWebView *)v18 _setUseSystemAppearance:1];
  return v18;
}

- (void)dealloc
{
  userContentController = [(WKWebViewConfiguration *)self->_webViewConfiguration userContentController];
  messageHandlerName = [(WebBundleConfiguration *)self->_webBundleConfiguration messageHandlerName];
  v5 = +[WKContentWorld pageWorld];
  [userContentController removeScriptMessageHandlerForName:messageHandlerName contentWorld:v5];

  v6.receiver = self;
  v6.super_class = WebBundleManager;
  [(WebBundleManager *)&v6 dealloc];
}

- (void)didLoadPageWithSuccess:(BOOL)success
{
  successCopy = success;
  v5 = sub_100038318();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"NO";
    if (successCopy)
    {
      v6 = @"YES";
    }

    v7 = v6;
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Did load page with success: %@", &v8, 0xCu);
  }

  if (successCopy)
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
  webView = [(WebBundleManager *)self webView];
  [webView stopLoading];
}

- (void)loadRequest
{
  entryPointString = [(WebBundleManager *)self entryPointString];
  webBundleConfiguration = self->_webBundleConfiguration;
  if (entryPointString)
  {
    entryPointUrlBase = [(WebBundleConfiguration *)webBundleConfiguration entryPointUrlBase];
    entryPointString2 = [(WebBundleManager *)self entryPointString];
    entryPointUrl = [entryPointUrlBase URLByAppendingPathComponent:entryPointString2];
  }

  else
  {
    entryPointUrl = [(WebBundleConfiguration *)webBundleConfiguration entryPointUrl];
  }

  webView = [(WebBundleManager *)self webView];
  v8 = [[NSURLRequest alloc] initWithURL:entryPointUrl];
  v9 = [webView loadRequest:v8];
}

- (WebBundleManager)initWithConfiguration:(id)configuration delegate:(id)delegate
{
  configurationCopy = configuration;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = WebBundleManager;
  v9 = [(WebBundleManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, delegateCopy);
    objc_storeStrong(&v10->_webBundleConfiguration, configuration);
    _newConfiguredWebView = [(WebBundleManager *)v10 _newConfiguredWebView];
    webView = v10->_webView;
    v10->_webView = _newConfiguredWebView;
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