@interface COSSoftwareUpdateReleaseNotesDetail
- (COSSoftwareUpdateReleaseNotesDetail)init;
- (void)loadView;
- (void)viewWillAppear:(BOOL)appear;
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

  _scrollView = [v12 _scrollView];
  [_scrollView setIndicatorStyle:2];

  _scrollView2 = [v12 _scrollView];
  [_scrollView2 _setShowsBackgroundShadow:0];

  _browserView = [v12 _browserView];
  [_browserView setDoubleTapEnabled:0];
  [_browserView setLoadsSynchronously:1];
  webView = [_browserView webView];
  preferences = [webView preferences];
  [preferences _setMinimumZoomFontSize:0.0];

  v9 = BPSBridgeTintColor();
  styleString = [v9 styleString];
  v11 = [NSString stringWithFormat:@"a:link {color: %@}\n", styleString];;

  [_browserView setUserStyleSheet:v11];
  [v12 setDelegate:self];
  [(COSSoftwareUpdateReleaseNotesDetail *)self setView:v12];
}

- (void)viewWillAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = COSSoftwareUpdateReleaseNotesDetail;
  [(COSSoftwareUpdateReleaseNotesDetail *)&v16 viewWillAppear:appear];
  view = [(COSSoftwareUpdateReleaseNotesDetail *)self view];
  scrollView = [view scrollView];
  [scrollView setDecelerationRate:UIScrollViewDecelerationRateNormal];

  v6 = [view stringByEvaluatingJavaScriptFromString:@"document.body.style.webkitUserSelect='none';"];
  v7 = BPSBackgroundColor();
  [view setBackgroundColor:v7];

  v8 = BPSBackgroundColor();
  styleString = [v8 styleString];
  v10 = [NSString stringWithFormat:@"document.body.style.backgroundColor='%@'", styleString];;
  v11 = [view stringByEvaluatingJavaScriptFromString:v10];

  v12 = BPSTextColor();
  styleString2 = [v12 styleString];
  v14 = [NSString stringWithFormat:@"document.body.style.color='%@'", styleString2];;
  v15 = [view stringByEvaluatingJavaScriptFromString:v14];
}

@end