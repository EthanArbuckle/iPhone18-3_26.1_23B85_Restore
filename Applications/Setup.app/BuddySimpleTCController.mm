@interface BuddySimpleTCController
- (BuddyTCSubControllerDelegate)termsAndConditionsDelegate;
- (void)_agreeTapped:(id)tapped;
- (void)_disagreeTapped:(id)tapped;
- (void)viewDidLoad;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
@end

@implementation BuddySimpleTCController

- (void)viewDidLoad
{
  selfCopy = self;
  v71 = a2;
  v70.receiver = self;
  v70.super_class = BuddySimpleTCController;
  [(BuddySimpleTCController *)&v70 viewDidLoad];
  titleString = [(BuddySimpleTCController *)selfCopy titleString];
  [(BuddySimpleTCController *)selfCopy setTitle:titleString];

  [(BuddySimpleTCController *)selfCopy setModalInPresentation:1];
  v3 = [UIBarButtonItem alloc];
  v4 = +[NSBundle mainBundle];
  v5 = [(NSBundle *)v4 localizedStringForKey:@"AGREE" value:&stru_10032F900 table:@"Localizable"];
  v6 = [v3 initWithTitle:v5 style:2 target:selfCopy action:"_agreeTapped:"];
  navigationItem = [(BuddySimpleTCController *)selfCopy navigationItem];
  [navigationItem setRightBarButtonItem:v6];

  v8 = [UIBarButtonItem alloc];
  v9 = +[NSBundle mainBundle];
  v10 = [(NSBundle *)v9 localizedStringForKey:@"DISAGREE" value:&stru_10032F900 table:@"Localizable"];
  v11 = [v8 initWithTitle:v10 style:0 target:selfCopy action:"_disagreeTapped:"];
  navigationItem2 = [(BuddySimpleTCController *)selfCopy navigationItem];
  [navigationItem2 setLeftBarButtonItem:v11];

  location = objc_alloc_init(WKWebViewConfiguration);
  [location setSuppressesIncrementalRendering:1];
  [location setDataDetectorTypes:0];
  preferences = [location preferences];
  [preferences setMinimumFontSize:0.0];

  preferences2 = [location preferences];
  [preferences2 setTextInteractionEnabled:0];

  [location setIgnoresViewportScaleLimits:0];
  v15 = [WKWebView alloc];
  v16 = sub_10016C200();
  v20 = [v15 initWithFrame:location configuration:{v16, v17, v18, v19}];
  [(BuddySimpleTCController *)selfCopy setWebView:v20];

  webView = [(BuddySimpleTCController *)selfCopy webView];
  [(WKWebView *)webView setOpaque:0];

  webView2 = [(BuddySimpleTCController *)selfCopy webView];
  [(WKWebView *)webView2 setAllowsLinkPreview:0];

  v23 = selfCopy;
  webView3 = [(BuddySimpleTCController *)selfCopy webView];
  [(WKWebView *)webView3 setNavigationDelegate:v23];

  webView4 = [(BuddySimpleTCController *)selfCopy webView];
  [(WKWebView *)webView4 _setDragInteractionPolicy:2];

  webView5 = [(BuddySimpleTCController *)selfCopy webView];
  [(WKWebView *)webView5 setTranslatesAutoresizingMaskIntoConstraints:0];

  webView6 = [(BuddySimpleTCController *)selfCopy webView];
  scrollView = [(WKWebView *)webView6 scrollView];
  [(UIScrollView *)scrollView _setShowsBackgroundShadow:0];

  webView7 = [(BuddySimpleTCController *)selfCopy webView];
  termsContent = [(BuddySimpleTCController *)selfCopy termsContent];
  v31 = +[NSBundle mainBundle];
  resourceURL = [(NSBundle *)v31 resourceURL];
  v33 = [(WKWebView *)webView7 loadHTMLString:termsContent baseURL:resourceURL];

  webView8 = [(BuddySimpleTCController *)selfCopy webView];
  scrollView2 = [(WKWebView *)webView8 scrollView];
  [(UIScrollView *)scrollView2 _setIndicatorInsetAdjustmentBehavior:2];

  webView9 = [(BuddySimpleTCController *)selfCopy webView];
  scrollView3 = [(WKWebView *)webView9 scrollView];
  [(UIScrollView *)scrollView3 setContentInsetAdjustmentBehavior:2];

  v68 = *&UIEdgeInsetsZero.bottom;
  v67 = *&UIEdgeInsetsZero.top;
  webView10 = [(BuddySimpleTCController *)selfCopy webView];
  scrollView4 = [(WKWebView *)webView10 scrollView];
  [(UIScrollView *)scrollView4 setContentInset:v67, v68];

  view = [(BuddySimpleTCController *)selfCopy view];
  webView11 = [(BuddySimpleTCController *)selfCopy webView];
  [view addSubview:webView11];

  view2 = [(BuddySimpleTCController *)selfCopy view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  topAnchor = [safeAreaLayoutGuide topAnchor];
  webView12 = [(BuddySimpleTCController *)selfCopy webView];
  topAnchor2 = [(WKWebView *)webView12 topAnchor];
  v61 = [topAnchor constraintEqualToAnchor:?];
  v73[0] = v61;
  view3 = [(BuddySimpleTCController *)selfCopy view];
  layoutMarginsGuide = [view3 layoutMarginsGuide];
  rightAnchor = [layoutMarginsGuide rightAnchor];
  webView13 = [(BuddySimpleTCController *)selfCopy webView];
  rightAnchor2 = [(WKWebView *)webView13 rightAnchor];
  v55 = [rightAnchor constraintEqualToAnchor:?];
  v73[1] = v55;
  view4 = [(BuddySimpleTCController *)selfCopy view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  bottomAnchor = [safeAreaLayoutGuide2 bottomAnchor];
  webView14 = [(BuddySimpleTCController *)selfCopy webView];
  bottomAnchor2 = [(WKWebView *)webView14 bottomAnchor];
  v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v73[2] = v44;
  view5 = [(BuddySimpleTCController *)selfCopy view];
  layoutMarginsGuide2 = [view5 layoutMarginsGuide];
  leftAnchor = [layoutMarginsGuide2 leftAnchor];
  webView15 = [(BuddySimpleTCController *)selfCopy webView];
  leftAnchor2 = [(WKWebView *)webView15 leftAnchor];
  v50 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v73[3] = v50;
  v51 = [NSArray arrayWithObjects:v73 count:4];
  [NSLayoutConstraint activateConstraints:v51];

  objc_storeStrong(&location, 0);
}

- (void)_agreeTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_termsAndConditionsDelegate);
  [WeakRetained buddyTCSubController:selfCopy didFinishWithAgree:1];

  objc_storeStrong(location, 0);
}

- (void)_disagreeTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_termsAndConditionsDelegate);
  [WeakRetained buddyTCSubController:selfCopy didFinishWithAgree:0];

  objc_storeStrong(location, 0);
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v13 = 0;
  objc_storeStrong(&v13, action);
  v12 = 0;
  objc_storeStrong(&v12, handler);
  if (v12)
  {
    request = [v13 request];
    v8 = [request URL];
    v9 = +[NSBundle mainBundle];
    resourceURL = [(NSBundle *)v9 resourceURL];
    v11 = [v8 isEqual:resourceURL];

    if (v11)
    {
      (*(v12 + 2))(v12, 1);
    }

    else
    {
      (*(v12 + 2))(v12, 0);
    }
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (BuddyTCSubControllerDelegate)termsAndConditionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_termsAndConditionsDelegate);

  return WeakRetained;
}

@end