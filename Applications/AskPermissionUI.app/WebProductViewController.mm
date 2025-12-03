@interface WebProductViewController
- (ProductViewControllerActionDelegate)actionDelegate;
- (WebProductViewController)initWithRequest:(id)request;
- (void)_approveButtonAction;
- (void)_declineButtonAction;
- (void)_loadWebsite;
- (void)_setup;
- (void)_setupNavigationItem;
- (void)_setupSubviews;
- (void)loadView;
- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)webView:(id)view didCommitNavigation:(id)navigation;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
@end

@implementation WebProductViewController

- (WebProductViewController)initWithRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = WebProductViewController;
  v6 = [(WebProductViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
  }

  return v7;
}

- (void)loadView
{
  v2.receiver = self;
  v2.super_class = WebProductViewController;
  [(WebProductViewController *)&v2 loadView];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = WebProductViewController;
  [(WebProductViewController *)&v8 viewDidLoad];
  [(WebProductViewController *)self _setup];
  [(WebProductViewController *)self _loadWebsite];
  v3 = +[UIColor clearColor];
  view = [(WebProductViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = +[UIColor clearColor];
  navigationController = [(WebProductViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setBackgroundColor:v5];
}

- (void)viewWillLayoutSubviews
{
  v20.receiver = self;
  v20.super_class = WebProductViewController;
  [(WebProductViewController *)&v20 viewWillLayoutSubviews];
  view = [(WebProductViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  bannerLabel = [(WebProductViewController *)self bannerLabel];
  [bannerLabel heightForWidth:v5 + -30.0];
  v10 = v9;

  view2 = [(WebProductViewController *)self view];
  [view2 center];
  v13 = v12;
  v15 = v14;
  activityIndicatorView = [(WebProductViewController *)self activityIndicatorView];
  [activityIndicatorView setCenter:{v13, v15}];

  bannerLabel2 = [(WebProductViewController *)self bannerLabel];
  [bannerLabel2 setFrame:{15.0, 25.0, v5 + -30.0, v10}];

  separatorView = [(WebProductViewController *)self separatorView];
  [separatorView setFrame:{0.0, v10 + 50.0, v5, 0.5}];

  webView = [(WebProductViewController *)self webView];
  [webView setFrame:{0.0, v10 + 50.0, v5, v7 - v10}];
}

- (void)_setup
{
  [(WebProductViewController *)self _setupNavigationItem];

  [(WebProductViewController *)self _setupSubviews];
}

- (void)_setupNavigationItem
{
  request = [(WebProductViewController *)self request];
  localizations = [request localizations];
  approve = [localizations approve];
  v14 = [Localizations stringWithKey:approve];

  v6 = [[UIBarButtonItem alloc] initWithTitle:v14 style:0 target:self action:"_approveButtonAction"];
  navigationItem = [(WebProductViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v6];

  request2 = [(WebProductViewController *)self request];
  localizations2 = [request2 localizations];
  decline = [localizations2 decline];
  v11 = [Localizations stringWithKey:decline];

  v12 = [[UIBarButtonItem alloc] initWithTitle:v11 style:0 target:self action:"_declineButtonAction"];
  navigationItem2 = [(WebProductViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v12];
}

- (void)_setupSubviews
{
  v3 = objc_alloc_init(WKWebView);
  [(WebProductViewController *)self setWebView:v3];

  webView = [(WebProductViewController *)self webView];
  [webView setCustomUserAgent:@"MobileAskPermissionUI/1.0"];

  webView2 = [(WebProductViewController *)self webView];
  [webView2 setNavigationDelegate:self];

  webView3 = [(WebProductViewController *)self webView];
  scrollView = [webView3 scrollView];
  [scrollView setDelegate:self];

  view = [(WebProductViewController *)self view];
  webView4 = [(WebProductViewController *)self webView];
  [view addSubview:webView4];

  v10 = objc_alloc_init(UILabel);
  [(WebProductViewController *)self setBannerLabel:v10];

  v11 = [UIFont systemFontOfSize:14.0];
  bannerLabel = [(WebProductViewController *)self bannerLabel];
  [bannerLabel setFont:v11];

  bannerLabel2 = [(WebProductViewController *)self bannerLabel];
  [bannerLabel2 setNumberOfLines:0];

  request = [(WebProductViewController *)self request];
  localizations = [request localizations];
  body = [localizations body];
  bannerLabel3 = [(WebProductViewController *)self bannerLabel];
  [bannerLabel3 setText:body];

  bannerLabel4 = [(WebProductViewController *)self bannerLabel];
  [bannerLabel4 setTextAlignment:1];

  view2 = [(WebProductViewController *)self view];
  bannerLabel5 = [(WebProductViewController *)self bannerLabel];
  [view2 addSubview:bannerLabel5];

  v21 = objc_alloc_init(UIView);
  [(WebProductViewController *)self setSeparatorView:v21];

  v22 = +[UIColor separatorColor];
  separatorView = [(WebProductViewController *)self separatorView];
  [separatorView setBackgroundColor:v22];

  view3 = [(WebProductViewController *)self view];
  separatorView2 = [(WebProductViewController *)self separatorView];
  [view3 addSubview:separatorView2];

  v26 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [(WebProductViewController *)self setActivityIndicatorView:v26];

  activityIndicatorView = [(WebProductViewController *)self activityIndicatorView];
  [activityIndicatorView setHidesWhenStopped:1];

  activityIndicatorView2 = [(WebProductViewController *)self activityIndicatorView];
  [activityIndicatorView2 startAnimating];

  view4 = [(WebProductViewController *)self view];
  activityIndicatorView3 = [(WebProductViewController *)self activityIndicatorView];
  [view4 addSubview:activityIndicatorView3];
}

- (void)_approveButtonAction
{
  actionDelegate = [(WebProductViewController *)self actionDelegate];
  [actionDelegate productViewControllerDidFinishWithAction:0];
}

- (void)_declineButtonAction
{
  actionDelegate = [(WebProductViewController *)self actionDelegate];
  [actionDelegate productViewControllerDidFinishWithAction:1];
}

- (void)_loadWebsite
{
  request = [(WebProductViewController *)self request];
  previewURL = [request previewURL];
  v7 = [NSURLRequest requestWithURL:previewURL];

  webView = [(WebProductViewController *)self webView];
  v6 = [webView loadRequest:v7];
}

- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view
{
  pinchGestureRecognizer = [zooming pinchGestureRecognizer];
  [pinchGestureRecognizer setEnabled:0];
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  errorCopy = error;
  v7 = +[APLogConfig sharedUIServiceConfig];
  if (!v7)
  {
    v7 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = errorCopy;
    v9 = v13;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Web view failed to load. Error: %{public}@", &v12, 0x16u);
  }

  activityIndicatorView = [(WebProductViewController *)self activityIndicatorView];
  [activityIndicatorView stopAnimating];

  actionDelegate = [(WebProductViewController *)self actionDelegate];
  [actionDelegate productViewControllerDidFinishWithAction:3];
}

- (void)webView:(id)view didCommitNavigation:(id)navigation
{
  v5 = [APLogConfig sharedUIServiceConfig:view];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = objc_opt_class();
    v7 = v10;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Web view loaded succesfully.", &v9, 0xCu);
  }

  activityIndicatorView = [(WebProductViewController *)self activityIndicatorView];
  [activityIndicatorView stopAnimating];
}

- (ProductViewControllerActionDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

@end