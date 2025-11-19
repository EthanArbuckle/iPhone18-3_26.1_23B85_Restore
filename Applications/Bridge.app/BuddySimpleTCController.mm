@interface BuddySimpleTCController
- (BuddySimpleTCController)initWithTitle:(id)a3 content:(id)a4;
- (BuddyTCSubControllerDelegate)delegate;
- (void)agree:(id)a3;
- (void)disagree:(id)a3;
- (void)loadView;
- (void)updateLayout;
- (void)viewDidLoad;
@end

@implementation BuddySimpleTCController

- (BuddySimpleTCController)initWithTitle:(id)a3 content:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = BuddySimpleTCController;
  v8 = [(BuddySimpleTCController *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(BuddySimpleTCController *)v8 setTitle:v6];
    [(BuddySimpleTCController *)v9 setContent:v7];
    v10 = [(BuddySimpleTCController *)v9 navigationItem];
    [v10 setHidesBackButton:0];
  }

  return v9;
}

- (void)loadView
{
  v51.receiver = self;
  v51.super_class = BuddySimpleTCController;
  [(BuddySimpleTCController *)&v51 loadView];
  v3 = [(BuddySimpleTCController *)self view];
  v4 = +[UIColor blackColor];
  [v3 setBackgroundColor:v4];

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
  v23 = [(UIWebView *)self->_webView _browserView];
  [v23 setUserInteractionEnabled:0];

  v24 = [(UIWebView *)self->_webView _scrollView];
  [v24 setIndicatorStyle:2];

  v25 = [(UIWebView *)self->_webView _scrollView];
  [v25 _setShowsBackgroundShadow:0];

  v26 = [(UIWebView *)self->_webView _browserView];
  [v26 setDoubleTapEnabled:0];
  [v26 setLoadsSynchronously:1];
  v27 = [v26 webView];
  v28 = [v27 preferences];
  [v28 _setMinimumZoomFontSize:0.0];

  v29 = BPSSetupTintColor();
  v30 = [v29 styleString];
  v31 = [NSString stringWithFormat:@"a:link {color: %@}\n", v30];;

  [v26 setUserStyleSheet:v31];
  if (self->_content)
  {
    v32 = self->_webView;
    v33 = [NSString alloc];
    v34 = [(NRTermsEvent *)self->_content termsText];
    v35 = [v33 initWithData:v34 encoding:4];
    [(UIWebView *)v32 loadHTMLString:v35 baseURL:0];
  }

  v36 = self->_webView;
  v37 = BPSBackgroundColor();
  v38 = [v37 styleString];
  v39 = [NSString stringWithFormat:@"document.body.style.backgroundColor='%@'", v38];;
  v40 = [(UIWebView *)v36 stringByEvaluatingJavaScriptFromString:v39];

  v41 = self->_webView;
  v42 = BPSTextColor();
  v43 = [v42 styleString];
  v44 = [NSString stringWithFormat:@"document.body.style.color='%@'", v43];;
  v45 = [(UIWebView *)v41 stringByEvaluatingJavaScriptFromString:v44];

  v46 = [UIApp setupController];
  v47 = [v46 pairingReportManager];

  [v47 addPairingTimeEventToPairingReportPlist:14 withValue:&__kCFBooleanTrue withError:0];
  v48 = self->_webView;
  v49 = sub_10002D68C();
  v50 = [(UIWebView *)v48 stringByEvaluatingJavaScriptFromString:v49];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = BuddySimpleTCController;
  [(BuddySimpleTCController *)&v5 viewDidLoad];
  v3 = [(BuddySimpleTCController *)self view];
  [v3 addSubview:self->_webView];

  v4 = [(BuddySimpleTCController *)self view];
  [v4 addSubview:self->_toolbar];

  [(BuddySimpleTCController *)self updateLayout];
}

- (void)updateLayout
{
  v3 = [(BuddySimpleTCController *)self view];
  [v3 bounds];
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
  v14 = [UIApp keyWindow];
  [v14 safeAreaInsets];
  v16 = v15;

  [(UIToolbar *)self->_toolbar sizeThatFits:Width, 0.0];
  v18 = v17;
  [(UIToolbar *)self->_toolbar setFrame:0.0, v11 - v17 - v16, v19, v17];
  webView = self->_webView;

  [(UIWebView *)webView setFrame:0.0, 64.0, Width, Height + -64.0 - v18 - v16];
}

- (void)agree:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained buddyTCSubController:self didFinishWithAgree:1];
}

- (void)disagree:(id)a3
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