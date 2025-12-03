@interface PHSettingsWebViewController
- (PHSettingsWebViewController)initWithType:(int64_t)type;
- (void)_cancelButtonClicked:(id)clicked;
- (void)cancelWebView;
- (void)doProvisioningCanceled;
- (void)doProvisioningDone;
- (void)doProvisioningFailed;
- (void)doWebViewTimedOut;
- (void)loadURL:(id)l body:(id)body completion:(id)completion;
- (void)loadView;
- (void)loadWebViewWithSpinner:(id)spinner;
- (void)setupControllerInWebFrame:(id)frame;
- (void)webView:(id)view didFailLoadWithError:(id)error;
@end

@implementation PHSettingsWebViewController

- (PHSettingsWebViewController)initWithType:(int64_t)type
{
  v9.receiver = self;
  v9.super_class = PHSettingsWebViewController;
  v4 = [(PHSettingsWebViewController *)&v9 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    v4->_type = type;
    v6 = objc_alloc_init(UIWebView);
    webView = v5->_webView;
    v5->_webView = v6;
  }

  return v5;
}

- (void)loadView
{
  v3 = [UIView alloc];
  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v21 = [v3 initWithFrame:?];

  v5 = +[UIColor whiteColor];
  [v21 setBackgroundColor:v5];

  [v21 setAutoresizingMask:18];
  [(PHSettingsWebViewController *)self setView:v21];
  [v21 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  webView = [(PHSettingsWebViewController *)self webView];
  [webView setFrame:{v7, v9, v11, v13}];

  webView2 = [(PHSettingsWebViewController *)self webView];
  [webView2 setScalesPageToFit:1];

  webView3 = [(PHSettingsWebViewController *)self webView];
  [webView3 setDelegate:self];

  webView4 = [(PHSettingsWebViewController *)self webView];
  [webView4 setAutoresizingMask:18];

  webView5 = [(PHSettingsWebViewController *)self webView];
  [v21 addSubview:webView5];

  v19 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelButtonClicked:"];
  navigationItem = [(PHSettingsWebViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v19];
}

- (void)loadWebViewWithSpinner:(id)spinner
{
  spinnerCopy = spinner;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "loadWebViewWithSpinner", buf, 2u);
  }

  [(PHSettingsWebViewController *)self setCompletionBlock:spinnerCopy];
  if (!self->_activityIndicator)
  {
    v6 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:2];
    activityIndicator = self->_activityIndicator;
    self->_activityIndicator = v6;

    [(UIActivityIndicatorView *)self->_activityIndicator setAutoresizingMask:45];
    view = [(PHSettingsWebViewController *)self view];
    [view center];
    [(UIActivityIndicatorView *)self->_activityIndicator setCenter:?];

    [(UIActivityIndicatorView *)self->_activityIndicator setHidesWhenStopped:1];
    [(UIWebView *)self->_webView addSubview:self->_activityIndicator];
  }

  v9 = dispatch_time(0, 10000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_48E0;
  block[3] = &unk_C5B8;
  block[4] = self;
  dispatch_after(v9, &_dispatch_main_q, block);
  [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
}

- (void)loadURL:(id)l body:(id)body completion:(id)completion
{
  lCopy = l;
  bodyCopy = body;
  completionCopy = completion;
  v11 = PHDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = lCopy;
    v26 = 2112;
    v27 = bodyCopy;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "LoadURL: %@ body: %@", buf, 0x16u);
  }

  url = self->_url;
  self->_url = lCopy;
  v13 = lCopy;

  body = self->_body;
  self->_body = bodyCopy;
  v15 = bodyCopy;

  [(UIActivityIndicatorView *)self->_activityIndicator stopAnimating];
  [(UIActivityIndicatorView *)self->_activityIndicator removeFromSuperview];
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = 0;

  [(PHSettingsWebViewController *)self setCompletionBlock:completionCopy];
  v17 = [[NSMutableURLRequest alloc] initWithURL:v13 cachePolicy:1 timeoutInterval:30.0];
  [(NSURL *)v17 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
  v18 = +[NSLocale preferredLanguages];
  firstObject = [v18 firstObject];

  if (firstObject)
  {
    v20 = firstObject;
  }

  else
  {
    v20 = @"en";
  }

  [(NSURL *)v17 setValue:v20 forHTTPHeaderField:@"Accept-Language"];
  [(NSURL *)v17 setHTTPMethod:@"POST"];
  [(NSURL *)v17 setHTTPBody:v15];
  v21 = [NSString stringWithFormat:@"%lu", [(NSData *)v15 length]];

  [(NSURL *)v17 setValue:v21 forHTTPHeaderField:@"Content-Length"];
  v22 = PHDefaultLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v17;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Loading URL request: %@", buf, 0xCu);
  }

  webView = [(PHSettingsWebViewController *)self webView];
  [webView loadRequest:v17];
}

- (void)cancelWebView
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Asked to cancel web view", v4, 2u);
  }

  [(PHSettingsWebViewController *)self doProvisioningCanceled];
}

- (void)_cancelButtonClicked:(id)clicked
{
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "_cancelButtonClicked", v5, 2u);
  }

  [(PHSettingsWebViewController *)self doProvisioningCanceled];
}

- (void)webView:(id)view didFailLoadWithError:(id)error
{
  errorCopy = error;
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_64C4(errorCopy, v6);
  }

  if ([errorCopy code] != -999)
  {
    [(PHSettingsWebViewController *)self doProvisioningFailed];
  }
}

- (void)doProvisioningDone
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "doProvisioningDone", buf, 2u);
  }

  completionBlock = [(PHSettingsWebViewController *)self completionBlock];
  v5 = [completionBlock copy];

  [(PHSettingsWebViewController *)self setCompletionBlock:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4E80;
  v7[3] = &unk_C5E0;
  v8 = v5;
  v6 = v5;
  [(PHSettingsWebViewController *)self dismissViewControllerAnimated:1 completion:v7];
}

- (void)doProvisioningCanceled
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "doProvisioningCanceled", buf, 2u);
  }

  completionBlock = [(PHSettingsWebViewController *)self completionBlock];
  v5 = [completionBlock copy];

  [(PHSettingsWebViewController *)self setCompletionBlock:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4FA4;
  v7[3] = &unk_C5E0;
  v8 = v5;
  v6 = v5;
  [(PHSettingsWebViewController *)self dismissViewControllerAnimated:1 completion:v7];
}

- (void)doProvisioningFailed
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_653C(v3);
  }

  completionBlock = [(PHSettingsWebViewController *)self completionBlock];
  v5 = [completionBlock copy];

  [(PHSettingsWebViewController *)self setCompletionBlock:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_50AC;
  v7[3] = &unk_C5E0;
  v8 = v5;
  v6 = v5;
  [(PHSettingsWebViewController *)self dismissViewControllerAnimated:1 completion:v7];
}

- (void)doWebViewTimedOut
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[WARN] doWebViewTimedOut", buf, 2u);
  }

  completionBlock = [(PHSettingsWebViewController *)self completionBlock];
  v5 = [completionBlock copy];

  [(PHSettingsWebViewController *)self setCompletionBlock:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_51D0;
  v7[3] = &unk_C5E0;
  v8 = v5;
  v6 = v5;
  [(PHSettingsWebViewController *)self dismissViewControllerAnimated:1 completion:v7];
}

- (void)setupControllerInWebFrame:(id)frame
{
  frameCopy = frame;
  globalContext = [frameCopy globalContext];
  if (!globalContext)
  {
    sub_65D8();
  }

  v5 = globalContext;
  v6 = qword_114B0;
  if (!qword_114B0)
  {
    v6 = JSClassCreate(&unk_11338);
    qword_114B0 = v6;
  }

  v7 = JSObjectMake(v5, v6, self);
  if (!v7)
  {
    sub_65AC();
  }

  v8 = v7;
  windowObject = [frameCopy windowObject];
  jSObject = [windowObject JSObject];

  if (!jSObject)
  {
    sub_6580();
  }

  v11 = JSStringCreateWithCFString(@"WiFiCallingWebViewController");
  JSObjectSetProperty(v5, jSObject, v11, v8, 0, 0);
}

@end