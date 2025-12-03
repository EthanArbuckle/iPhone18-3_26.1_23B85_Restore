@interface COSLegalMessagePane
- (BOOL)webView:(id)view shouldStartLoadWithRequest:(id)request navigationType:(int64_t)type;
- (COSLegalMessagePane)init;
- (void)loadView;
- (void)setTitle:(id)title;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation COSLegalMessagePane

- (COSLegalMessagePane)init
{
  v30.receiver = self;
  v30.super_class = COSLegalMessagePane;
  v2 = [(COSLegalMessagePane *)&v30 init];
  v3 = v2;
  if (v2)
  {
    markupString = [(COSLegalMessagePane *)v2 markupString];
    v5 = [[UIWebView alloc] _initWithFrame:0 enableReachability:{0.0, 0.0, 10.0, 10.0}];
    webView = v3->_webView;
    v3->_webView = v5;

    [(UIWebView *)v3->_webView setOpaque:0];
    v7 = v3->_webView;
    v8 = BPSBackgroundColor();
    [(UIWebView *)v7 setBackgroundColor:v8];

    [(UIWebView *)v3->_webView setAutoresizingMask:18];
    [(UIWebView *)v3->_webView setDelegate:v3];
    [(UIWebView *)v3->_webView setDataDetectorTypes:0];
    [(UIWebView *)v3->_webView _setDrawsCheckeredPattern:0];
    scrollView = [(UIWebView *)v3->_webView scrollView];
    [scrollView setIndicatorStyle:2];
    [scrollView setDecelerationRate:UIScrollViewDecelerationRateNormal];
    _browserView = [(UIWebView *)v3->_webView _browserView];
    [_browserView setDoubleTapEnabled:0];
    [_browserView setTilesOpaque:0];
    [_browserView setLoadsSynchronously:1];
    [_browserView setDetectsPhoneNumbers:0];
    v11 = objc_opt_new();
    v12 = BPSBridgeTintColor();
    styleString = [v12 styleString];
    [v11 appendFormat:@"a:link {color: %@;}\n", styleString];

    [v11 appendString:{@"body {font: 12px HelveticaNeue, sans-serif;}\n"}];
    if ([(COSLegalMessagePane *)v3 adjustTextDirection])
    {
      v14 = +[UIApplication sharedApplication];
      userInterfaceLayoutDirection = [v14 userInterfaceLayoutDirection];

      if (userInterfaceLayoutDirection == 1)
      {
        [v11 appendString:@"body {direction: rtl !important; }\n"];
      }
    }

    [_browserView setUserStyleSheet:v11];
    [(UIWebView *)v3->_webView loadHTMLString:markupString baseURL:0];
    v16 = v3->_webView;
    v17 = BPSBackgroundColor();
    styleString2 = [v17 styleString];
    v19 = [NSString stringWithFormat:@"document.body.style.backgroundColor='%@'", styleString2];;
    v20 = [(UIWebView *)v16 stringByEvaluatingJavaScriptFromString:v19];

    v21 = v3->_webView;
    v22 = BPSTextColor();
    styleString3 = [v22 styleString];
    v24 = [NSString stringWithFormat:@"document.body.style.color='%@'", styleString3];;
    v25 = [(UIWebView *)v21 stringByEvaluatingJavaScriptFromString:v24];

    v26 = v3->_webView;
    v27 = sub_10002D68C();
    v28 = [(UIWebView *)v26 stringByEvaluatingJavaScriptFromString:v27];
  }

  return v3;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  navigationItem = [(COSLegalMessagePane *)self navigationItem];
  [navigationItem setTitle:titleCopy];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = COSLegalMessagePane;
  [(COSLegalMessagePane *)&v4 loadView];
  view = [(COSLegalMessagePane *)self view];
  [view addSubview:self->_webView];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = COSLegalMessagePane;
  [(COSLegalMessagePane *)&v4 viewDidLoad];
  title = [(COSLegalMessagePane *)self title];
  [(COSLegalMessagePane *)self setTitle:title];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = COSLegalMessagePane;
  [(COSLegalMessagePane *)&v5 viewWillLayoutSubviews];
  webView = self->_webView;
  view = [(COSLegalMessagePane *)self view];
  [view bounds];
  [(UIWebView *)webView setFrame:?];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = COSLegalMessagePane;
  [(COSLegalMessagePane *)&v5 viewDidAppear:appear];
  _scrollView = [(UIWebView *)self->_webView _scrollView];
  [_scrollView flashScrollIndicators];
}

- (BOOL)webView:(id)view shouldStartLoadWithRequest:(id)request navigationType:(int64_t)type
{
  if (!type)
  {
    v6 = UIApp;
    v7 = [request URL];
    [v6 openURL:v7 withCompletionHandler:0];
  }

  return type != 0;
}

@end