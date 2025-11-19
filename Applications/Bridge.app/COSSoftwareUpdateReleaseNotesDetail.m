@interface COSSoftwareUpdateReleaseNotesDetail
- (COSSoftwareUpdateReleaseNotesDetail)init;
- (void)loadView;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation COSSoftwareUpdateReleaseNotesDetail

- (COSSoftwareUpdateReleaseNotesDetail)init
{
  v6.receiver = self;
  v6.super_class = COSSoftwareUpdateReleaseNotesDetail;
  v2 = [(COSSoftwareUpdateReleaseNotesDetail *)&v6 init];
  if (v2)
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"ABOUT_THIS_UPDATE" value:&stru_10026E598 table:@"Software Update"];
    [(COSSoftwareUpdateReleaseNotesDetail *)v2 setTitle:v4];
  }

  return v2;
}

- (void)loadView
{
  v12 = [[UIWebView alloc] _initWithFrame:0 enableReachability:{0.0, 0.0, 10.0, 10.0}];
  [v12 setOpaque:0];
  v3 = BPSBackgroundColor();
  [v12 setBackgroundColor:v3];

  v4 = [v12 _scrollView];
  [v4 setIndicatorStyle:2];

  v5 = [v12 _scrollView];
  [v5 _setShowsBackgroundShadow:0];

  v6 = [v12 _browserView];
  [v6 setDoubleTapEnabled:0];
  [v6 setLoadsSynchronously:1];
  v7 = [v6 webView];
  v8 = [v7 preferences];
  [v8 _setMinimumZoomFontSize:0.0];

  v9 = BPSBridgeTintColor();
  v10 = [v9 styleString];
  v11 = [NSString stringWithFormat:@"a:link {color: %@}\n", v10];;

  [v6 setUserStyleSheet:v11];
  [v12 setDelegate:self];
  [(COSSoftwareUpdateReleaseNotesDetail *)self setView:v12];
}

- (void)viewWillAppear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = COSSoftwareUpdateReleaseNotesDetail;
  [(COSSoftwareUpdateReleaseNotesDetail *)&v16 viewWillAppear:a3];
  v4 = [(COSSoftwareUpdateReleaseNotesDetail *)self view];
  v5 = [v4 scrollView];
  [v5 setDecelerationRate:UIScrollViewDecelerationRateNormal];

  v6 = [v4 stringByEvaluatingJavaScriptFromString:@"document.body.style.webkitUserSelect='none';"];
  v7 = BPSBackgroundColor();
  [v4 setBackgroundColor:v7];

  v8 = BPSBackgroundColor();
  v9 = [v8 styleString];
  v10 = [NSString stringWithFormat:@"document.body.style.backgroundColor='%@'", v9];;
  v11 = [v4 stringByEvaluatingJavaScriptFromString:v10];

  v12 = BPSTextColor();
  v13 = [v12 styleString];
  v14 = [NSString stringWithFormat:@"document.body.style.color='%@'", v13];;
  v15 = [v4 stringByEvaluatingJavaScriptFromString:v14];
}

@end