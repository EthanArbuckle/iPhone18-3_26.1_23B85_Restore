@interface BuddySimpleTCController
- (BuddySimpleTCController)initWithTitle:(id)title content:(id)content;
- (BuddyTCSubControllerDelegate)delegate;
- (void)agree:(id)agree;
- (void)disagree:(id)disagree;
- (void)loadView;
- (void)updateLayout;
- (void)viewDidLoad;
@end

@implementation BuddySimpleTCController

- (BuddySimpleTCController)initWithTitle:(id)title content:(id)content
{
  titleCopy = title;
  contentCopy = content;
  v12.receiver = self;
  v12.super_class = BuddySimpleTCController;
  v8 = [(BuddySimpleTCController *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(BuddySimpleTCController *)v8 setTitle:titleCopy];
    [(BuddySimpleTCController *)v9 setContent:contentCopy];
    navigationItem = [(BuddySimpleTCController *)v9 navigationItem];
    [navigationItem setHidesBackButton:0];
  }

  return v9;
}

- (void)loadView
{
  v51.receiver = self;
  v51.super_class = BuddySimpleTCController;
  [(BuddySimpleTCController *)&v51 loadView];
  view = [(BuddySimpleTCController *)self view];
  v4 = +[UIColor blackColor];
  [view setBackgroundColor:v4];

  v5 = [[UIToolbar alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  toolbar = self->_toolbar;
  self->_toolbar = v5;

  [(UIToolbar *)self->_toolbar setBarStyle:1];
  [(UIToolbar *)self->_toolbar setTranslucent:1];
  v7 = self->_toolbar;
  v8 = BPSSetupTintColor();
  [(UIToolbar *)v7 setTintColor:v8];

  v9 = [UIBarButtonItem alloc];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"AGREE" value:&stru_10026E598 table:@"Localizable"];
  v12 = [v9 initWithTitle:v11 style:2 target:self action:"agree:"];

  v13 = [UIBarButtonItem alloc];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"DISAGREE" value:&stru_10026E598 table:@"Localizable"];
  v16 = [v13 initWithTitle:v15 style:0 target:self action:"disagree:"];

  v17 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  v18 = self->_toolbar;
  v19 = [NSArray arrayWithObjects:v16, v17, v12, 0];
  [(UIToolbar *)v18 setItems:v19];

  [(UIToolbar *)self->_toolbar setTranslucent:1];
  v20 = [[UIWebView alloc] _initWithFrame:0 enableReachability:{0.0, 0.0, 10.0, 10.0}];
  webView = self->_webView;
  self->_webView = v20;

  [(UIWebView *)self->_webView setOpaque:0];
  v22 = BPSBackgroundColor();
  [(UIWebView *)self->_webView setBackgroundColor:v22];

  [(UIWebView *)self->_webView setDataDetectorTypes:0];
  _browserView = [(UIWebView *)self->_webView _browserView];
  [_browserView setUserInteractionEnabled:0];

  _scrollView = [(UIWebView *)self->_webView _scrollView];
  [_scrollView setIndicatorStyle:2];

  _scrollView2 = [(UIWebView *)self->_webView _scrollView];
  [_scrollView2 _setShowsBackgroundShadow:0];

  _browserView2 = [(UIWebView *)self->_webView _browserView];
  [_browserView2 setDoubleTapEnabled:0];
  [_browserView2 setLoadsSynchronously:1];
  webView = [_browserView2 webView];
  preferences = [webView preferences];
  [preferences _setMinimumZoomFontSize:0.0];

  v29 = BPSSetupTintColor();
  styleString = [v29 styleString];
  v31 = [NSString stringWithFormat:@"a:link {color: %@}\n", styleString];;

  [_browserView2 setUserStyleSheet:v31];
  if (self->_content)
  {
    v32 = self->_webView;
    v33 = [NSString alloc];
    termsText = [(NRTermsEvent *)self->_content termsText];
    v35 = [v33 initWithData:termsText encoding:4];
    [(UIWebView *)v32 loadHTMLString:v35 baseURL:0];
  }

  v36 = self->_webView;
  v37 = BPSBackgroundColor();
  styleString2 = [v37 styleString];
  v39 = [NSString stringWithFormat:@"document.body.style.backgroundColor='%@'", styleString2];;
  v40 = [(UIWebView *)v36 stringByEvaluatingJavaScriptFromString:v39];

  v41 = self->_webView;
  v42 = BPSTextColor();
  styleString3 = [v42 styleString];
  v44 = [NSString stringWithFormat:@"document.body.style.color='%@'", styleString3];;
  v45 = [(UIWebView *)v41 stringByEvaluatingJavaScriptFromString:v44];

  setupController = [UIApp setupController];
  pairingReportManager = [setupController pairingReportManager];

  [pairingReportManager addPairingTimeEventToPairingReportPlist:14 withValue:&__kCFBooleanTrue withError:0];
  v48 = self->_webView;
  v49 = sub_10002D68C();
  v50 = [(UIWebView *)v48 stringByEvaluatingJavaScriptFromString:v49];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = BuddySimpleTCController;
  [(BuddySimpleTCController *)&v5 viewDidLoad];
  view = [(BuddySimpleTCController *)self view];
  [view addSubview:self->_webView];

  view2 = [(BuddySimpleTCController *)self view];
  [view2 addSubview:self->_toolbar];

  [(BuddySimpleTCController *)self updateLayout];
}

- (void)updateLayout
{
  view = [(BuddySimpleTCController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v22.origin.x = v5;
  v22.origin.y = v7;
  v22.size.width = v9;
  v22.size.height = v11;
  Width = CGRectGetWidth(v22);
  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  Height = CGRectGetHeight(v23);
  keyWindow = [UIApp keyWindow];
  [keyWindow safeAreaInsets];
  v16 = v15;

  [(UIToolbar *)self->_toolbar sizeThatFits:Width, 0.0];
  v18 = v17;
  [(UIToolbar *)self->_toolbar setFrame:0.0, v11 - v17 - v16, v19, v17];
  webView = self->_webView;

  [(UIWebView *)webView setFrame:0.0, 64.0, Width, Height + -64.0 - v18 - v16];
}

- (void)agree:(id)agree
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained buddyTCSubController:self didFinishWithAgree:1];
}

- (void)disagree:(id)disagree
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained buddyTCSubController:self didFinishWithAgree:0];
}

- (BuddyTCSubControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end