@interface BuddySimpleTCController
- (BuddyTCSubControllerDelegate)termsAndConditionsDelegate;
- (void)_agreeTapped:(id)a3;
- (void)_disagreeTapped:(id)a3;
- (void)viewDidLoad;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
@end

@implementation BuddySimpleTCController

- (void)viewDidLoad
{
  v72 = self;
  v71 = a2;
  v70.receiver = self;
  v70.super_class = BuddySimpleTCController;
  [(BuddySimpleTCController *)&v70 viewDidLoad];
  v2 = [(BuddySimpleTCController *)v72 titleString];
  [(BuddySimpleTCController *)v72 setTitle:v2];

  [(BuddySimpleTCController *)v72 setModalInPresentation:1];
  v3 = [UIBarButtonItem alloc];
  v4 = +[NSBundle mainBundle];
  v5 = [(NSBundle *)v4 localizedStringForKey:@"AGREE" value:&stru_10032F900 table:@"Localizable"];
  v6 = [v3 initWithTitle:v5 style:2 target:v72 action:"_agreeTapped:"];
  v7 = [(BuddySimpleTCController *)v72 navigationItem];
  [v7 setRightBarButtonItem:v6];

  v8 = [UIBarButtonItem alloc];
  v9 = +[NSBundle mainBundle];
  v10 = [(NSBundle *)v9 localizedStringForKey:@"DISAGREE" value:&stru_10032F900 table:@"Localizable"];
  v11 = [v8 initWithTitle:v10 style:0 target:v72 action:"_disagreeTapped:"];
  v12 = [(BuddySimpleTCController *)v72 navigationItem];
  [v12 setLeftBarButtonItem:v11];

  location = objc_alloc_init(WKWebViewConfiguration);
  [location setSuppressesIncrementalRendering:1];
  [location setDataDetectorTypes:0];
  v13 = [location preferences];
  [v13 setMinimumFontSize:0.0];

  v14 = [location preferences];
  [v14 setTextInteractionEnabled:0];

  [location setIgnoresViewportScaleLimits:0];
  v15 = [WKWebView alloc];
  v16 = sub_10016C200();
  v20 = [v15 initWithFrame:location configuration:{v16, v17, v18, v19}];
  [(BuddySimpleTCController *)v72 setWebView:v20];

  v21 = [(BuddySimpleTCController *)v72 webView];
  [(WKWebView *)v21 setOpaque:0];

  v22 = [(BuddySimpleTCController *)v72 webView];
  [(WKWebView *)v22 setAllowsLinkPreview:0];

  v23 = v72;
  v24 = [(BuddySimpleTCController *)v72 webView];
  [(WKWebView *)v24 setNavigationDelegate:v23];

  v25 = [(BuddySimpleTCController *)v72 webView];
  [(WKWebView *)v25 _setDragInteractionPolicy:2];

  v26 = [(BuddySimpleTCController *)v72 webView];
  [(WKWebView *)v26 setTranslatesAutoresizingMaskIntoConstraints:0];

  v27 = [(BuddySimpleTCController *)v72 webView];
  v28 = [(WKWebView *)v27 scrollView];
  [(UIScrollView *)v28 _setShowsBackgroundShadow:0];

  v29 = [(BuddySimpleTCController *)v72 webView];
  v30 = [(BuddySimpleTCController *)v72 termsContent];
  v31 = +[NSBundle mainBundle];
  v32 = [(NSBundle *)v31 resourceURL];
  v33 = [(WKWebView *)v29 loadHTMLString:v30 baseURL:v32];

  v34 = [(BuddySimpleTCController *)v72 webView];
  v35 = [(WKWebView *)v34 scrollView];
  [(UIScrollView *)v35 _setIndicatorInsetAdjustmentBehavior:2];

  v36 = [(BuddySimpleTCController *)v72 webView];
  v37 = [(WKWebView *)v36 scrollView];
  [(UIScrollView *)v37 setContentInsetAdjustmentBehavior:2];

  v68 = *&UIEdgeInsetsZero.bottom;
  v67 = *&UIEdgeInsetsZero.top;
  v38 = [(BuddySimpleTCController *)v72 webView];
  v39 = [(WKWebView *)v38 scrollView];
  [(UIScrollView *)v39 setContentInset:v67, v68];

  v40 = [(BuddySimpleTCController *)v72 view];
  v41 = [(BuddySimpleTCController *)v72 webView];
  [v40 addSubview:v41];

  v66 = [(BuddySimpleTCController *)v72 view];
  v65 = [v66 safeAreaLayoutGuide];
  v63 = [v65 topAnchor];
  v64 = [(BuddySimpleTCController *)v72 webView];
  v62 = [(WKWebView *)v64 topAnchor];
  v61 = [v63 constraintEqualToAnchor:?];
  v73[0] = v61;
  v60 = [(BuddySimpleTCController *)v72 view];
  v59 = [v60 layoutMarginsGuide];
  v57 = [v59 rightAnchor];
  v58 = [(BuddySimpleTCController *)v72 webView];
  v56 = [(WKWebView *)v58 rightAnchor];
  v55 = [v57 constraintEqualToAnchor:?];
  v73[1] = v55;
  v54 = [(BuddySimpleTCController *)v72 view];
  v53 = [v54 safeAreaLayoutGuide];
  v52 = [v53 bottomAnchor];
  v42 = [(BuddySimpleTCController *)v72 webView];
  v43 = [(WKWebView *)v42 bottomAnchor];
  v44 = [v52 constraintEqualToAnchor:v43];
  v73[2] = v44;
  v45 = [(BuddySimpleTCController *)v72 view];
  v46 = [v45 layoutMarginsGuide];
  v47 = [v46 leftAnchor];
  v48 = [(BuddySimpleTCController *)v72 webView];
  v49 = [(WKWebView *)v48 leftAnchor];
  v50 = [v47 constraintEqualToAnchor:v49];
  v73[3] = v50;
  v51 = [NSArray arrayWithObjects:v73 count:4];
  [NSLayoutConstraint activateConstraints:v51];

  objc_storeStrong(&location, 0);
}

- (void)_agreeTapped:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  WeakRetained = objc_loadWeakRetained(&v5->_termsAndConditionsDelegate);
  [WeakRetained buddyTCSubController:v5 didFinishWithAgree:1];

  objc_storeStrong(location, 0);
}

- (void)_disagreeTapped:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  WeakRetained = objc_loadWeakRetained(&v5->_termsAndConditionsDelegate);
  [WeakRetained buddyTCSubController:v5 didFinishWithAgree:0];

  objc_storeStrong(location, 0);
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
  if (v12)
  {
    v7 = [v13 request];
    v8 = [v7 URL];
    v9 = +[NSBundle mainBundle];
    v10 = [(NSBundle *)v9 resourceURL];
    v11 = [v8 isEqual:v10];

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