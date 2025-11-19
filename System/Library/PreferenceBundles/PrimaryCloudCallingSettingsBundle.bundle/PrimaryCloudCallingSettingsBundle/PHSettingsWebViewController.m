@interface PHSettingsWebViewController
- (PHSettingsWebViewController)initWithType:(int64_t)a3;
- (void)_cancelButtonClicked:(id)a3;
- (void)cancelWebView;
- (void)doProvisioningCanceled;
- (void)doProvisioningDone;
- (void)doProvisioningFailed;
- (void)doWebViewTimedOut;
- (void)loadURL:(id)a3 body:(id)a4 completion:(id)a5;
- (void)loadView;
- (void)loadWebViewWithSpinner:(id)a3;
- (void)setupControllerInWebFrame:(id)a3;
- (void)webView:(id)a3 didFailLoadWithError:(id)a4;
@end

@implementation PHSettingsWebViewController

- (PHSettingsWebViewController)initWithType:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = PHSettingsWebViewController;
  v4 = [(PHSettingsWebViewController *)&v9 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3;
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
  v14 = [(PHSettingsWebViewController *)self webView];
  [v14 setFrame:{v7, v9, v11, v13}];

  v15 = [(PHSettingsWebViewController *)self webView];
  [v15 setScalesPageToFit:1];

  v16 = [(PHSettingsWebViewController *)self webView];
  [v16 setDelegate:self];

  v17 = [(PHSettingsWebViewController *)self webView];
  [v17 setAutoresizingMask:18];

  v18 = [(PHSettingsWebViewController *)self webView];
  [v21 addSubview:v18];

  v19 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelButtonClicked:"];
  v20 = [(PHSettingsWebViewController *)self navigationItem];
  [v20 setLeftBarButtonItem:v19];
}

- (void)loadWebViewWithSpinner:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "loadWebViewWithSpinner", buf, 2u);
  }

  [(PHSettingsWebViewController *)self setCompletionBlock:v4];
  if (!self->_activityIndicator)
  {
    v6 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:2];
    activityIndicator = self->_activityIndicator;
    self->_activityIndicator = v6;

    [(UIActivityIndicatorView *)self->_activityIndicator setAutoresizingMask:45];
    v8 = [(PHSettingsWebViewController *)self view];
    [v8 center];
    [(UIActivityIndicatorView *)self->_activityIndicator setCenter:?];

    [(UIActivityIndicatorView *)self->_activityIndicator setHidesWhenStopped:1];
    [(UIWebView *)self->_webView addSubview:self->_activityIndicator];
  }

  v9 = dispatch_time(0, 10000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5060;
  block[3] = &unk_C550;
  block[4] = self;
  dispatch_after(v9, &_dispatch_main_q, block);
  [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
}

- (void)loadURL:(id)a3 body:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PHDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "LoadURL: %@ body: %@", buf, 0x16u);
  }

  url = self->_url;
  self->_url = v8;
  v13 = v8;

  body = self->_body;
  self->_body = v9;
  v15 = v9;

  [(UIActivityIndicatorView *)self->_activityIndicator stopAnimating];
  [(UIActivityIndicatorView *)self->_activityIndicator removeFromSuperview];
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = 0;

  [(PHSettingsWebViewController *)self setCompletionBlock:v10];
  v17 = [[NSMutableURLRequest alloc] initWithURL:v13 cachePolicy:1 timeoutInterval:30.0];
  [(NSURL *)v17 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
  v18 = +[NSLocale preferredLanguages];
  v19 = [v18 firstObject];

  if (v19)
  {
    v20 = v19;
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

  v23 = [(PHSettingsWebViewController *)self webView];
  [v23 loadRequest:v17];
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

- (void)_cancelButtonClicked:(id)a3
{
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "_cancelButtonClicked", v5, 2u);
  }

  [(PHSettingsWebViewController *)self doProvisioningCanceled];
}

- (void)webView:(id)a3 didFailLoadWithError:(id)a4
{
  v5 = a4;
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_6ADC(v5, v6);
  }

  if ([v5 code] != -999)
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

  v4 = [(PHSettingsWebViewController *)self completionBlock];
  v5 = [v4 copy];

  [(PHSettingsWebViewController *)self setCompletionBlock:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5600;
  v7[3] = &unk_C648;
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

  v4 = [(PHSettingsWebViewController *)self completionBlock];
  v5 = [v4 copy];

  [(PHSettingsWebViewController *)self setCompletionBlock:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5724;
  v7[3] = &unk_C648;
  v8 = v5;
  v6 = v5;
  [(PHSettingsWebViewController *)self dismissViewControllerAnimated:1 completion:v7];
}

- (void)doProvisioningFailed
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_6B54(v3);
  }

  v4 = [(PHSettingsWebViewController *)self completionBlock];
  v5 = [v4 copy];

  [(PHSettingsWebViewController *)self setCompletionBlock:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_582C;
  v7[3] = &unk_C648;
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

  v4 = [(PHSettingsWebViewController *)self completionBlock];
  v5 = [v4 copy];

  [(PHSettingsWebViewController *)self setCompletionBlock:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5950;
  v7[3] = &unk_C648;
  v8 = v5;
  v6 = v5;
  [(PHSettingsWebViewController *)self dismissViewControllerAnimated:1 completion:v7];
}

- (void)setupControllerInWebFrame:(id)a3
{
  v12 = a3;
  v4 = [v12 globalContext];
  if (!v4)
  {
    sub_6BF0();
  }

  v5 = v4;
  v6 = qword_11440;
  if (!qword_11440)
  {
    v6 = JSClassCreate(&unk_112E8);
    qword_11440 = v6;
  }

  v7 = JSObjectMake(v5, v6, self);
  if (!v7)
  {
    sub_6BC4();
  }

  v8 = v7;
  v9 = [v12 windowObject];
  v10 = [v9 JSObject];

  if (!v10)
  {
    sub_6B98();
  }

  v11 = JSStringCreateWithCFString(@"WiFiCallingWebViewController");
  JSObjectSetProperty(v5, v10, v11, v8, 0, 0);
}

@end