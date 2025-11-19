@interface WebProductViewController
- (ProductViewControllerActionDelegate)actionDelegate;
- (WebProductViewController)initWithRequest:(id)a3;
- (void)_approveButtonAction;
- (void)_declineButtonAction;
- (void)_loadWebsite;
- (void)_setup;
- (void)_setupNavigationItem;
- (void)_setupSubviews;
- (void)loadView;
- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)webView:(id)a3 didCommitNavigation:(id)a4;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
@end

@implementation WebProductViewController

- (WebProductViewController)initWithRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = WebProductViewController;
  v6 = [(WebProductViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
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
  v4 = [(WebProductViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = +[UIColor clearColor];
  v6 = [(WebProductViewController *)self navigationController];
  v7 = [v6 navigationBar];
  [v7 setBackgroundColor:v5];
}

- (void)viewWillLayoutSubviews
{
  v20.receiver = self;
  v20.super_class = WebProductViewController;
  [(WebProductViewController *)&v20 viewWillLayoutSubviews];
  v3 = [(WebProductViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = [(WebProductViewController *)self bannerLabel];
  [v8 heightForWidth:v5 + -30.0];
  v10 = v9;

  v11 = [(WebProductViewController *)self view];
  [v11 center];
  v13 = v12;
  v15 = v14;
  v16 = [(WebProductViewController *)self activityIndicatorView];
  [v16 setCenter:{v13, v15}];

  v17 = [(WebProductViewController *)self bannerLabel];
  [v17 setFrame:{15.0, 25.0, v5 + -30.0, v10}];

  v18 = [(WebProductViewController *)self separatorView];
  [v18 setFrame:{0.0, v10 + 50.0, v5, 0.5}];

  v19 = [(WebProductViewController *)self webView];
  [v19 setFrame:{0.0, v10 + 50.0, v5, v7 - v10}];
}

- (void)_setup
{
  [(WebProductViewController *)self _setupNavigationItem];

  [(WebProductViewController *)self _setupSubviews];
}

- (void)_setupNavigationItem
{
  v3 = [(WebProductViewController *)self request];
  v4 = [v3 localizations];
  v5 = [v4 approve];
  v14 = [Localizations stringWithKey:v5];

  v6 = [[UIBarButtonItem alloc] initWithTitle:v14 style:0 target:self action:"_approveButtonAction"];
  v7 = [(WebProductViewController *)self navigationItem];
  [v7 setRightBarButtonItem:v6];

  v8 = [(WebProductViewController *)self request];
  v9 = [v8 localizations];
  v10 = [v9 decline];
  v11 = [Localizations stringWithKey:v10];

  v12 = [[UIBarButtonItem alloc] initWithTitle:v11 style:0 target:self action:"_declineButtonAction"];
  v13 = [(WebProductViewController *)self navigationItem];
  [v13 setLeftBarButtonItem:v12];
}

- (void)_setupSubviews
{
  v3 = objc_alloc_init(WKWebView);
  [(WebProductViewController *)self setWebView:v3];

  v4 = [(WebProductViewController *)self webView];
  [v4 setCustomUserAgent:@"MobileAskPermissionUI/1.0"];

  v5 = [(WebProductViewController *)self webView];
  [v5 setNavigationDelegate:self];

  v6 = [(WebProductViewController *)self webView];
  v7 = [v6 scrollView];
  [v7 setDelegate:self];

  v8 = [(WebProductViewController *)self view];
  v9 = [(WebProductViewController *)self webView];
  [v8 addSubview:v9];

  v10 = objc_alloc_init(UILabel);
  [(WebProductViewController *)self setBannerLabel:v10];

  v11 = [UIFont systemFontOfSize:14.0];
  v12 = [(WebProductViewController *)self bannerLabel];
  [v12 setFont:v11];

  v13 = [(WebProductViewController *)self bannerLabel];
  [v13 setNumberOfLines:0];

  v14 = [(WebProductViewController *)self request];
  v15 = [v14 localizations];
  v16 = [v15 body];
  v17 = [(WebProductViewController *)self bannerLabel];
  [v17 setText:v16];

  v18 = [(WebProductViewController *)self bannerLabel];
  [v18 setTextAlignment:1];

  v19 = [(WebProductViewController *)self view];
  v20 = [(WebProductViewController *)self bannerLabel];
  [v19 addSubview:v20];

  v21 = objc_alloc_init(UIView);
  [(WebProductViewController *)self setSeparatorView:v21];

  v22 = +[UIColor separatorColor];
  v23 = [(WebProductViewController *)self separatorView];
  [v23 setBackgroundColor:v22];

  v24 = [(WebProductViewController *)self view];
  v25 = [(WebProductViewController *)self separatorView];
  [v24 addSubview:v25];

  v26 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [(WebProductViewController *)self setActivityIndicatorView:v26];

  v27 = [(WebProductViewController *)self activityIndicatorView];
  [v27 setHidesWhenStopped:1];

  v28 = [(WebProductViewController *)self activityIndicatorView];
  [v28 startAnimating];

  v30 = [(WebProductViewController *)self view];
  v29 = [(WebProductViewController *)self activityIndicatorView];
  [v30 addSubview:v29];
}

- (void)_approveButtonAction
{
  v2 = [(WebProductViewController *)self actionDelegate];
  [v2 productViewControllerDidFinishWithAction:0];
}

- (void)_declineButtonAction
{
  v2 = [(WebProductViewController *)self actionDelegate];
  [v2 productViewControllerDidFinishWithAction:1];
}

- (void)_loadWebsite
{
  v3 = [(WebProductViewController *)self request];
  v4 = [v3 previewURL];
  v7 = [NSURLRequest requestWithURL:v4];

  v5 = [(WebProductViewController *)self webView];
  v6 = [v5 loadRequest:v7];
}

- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4
{
  v4 = [a3 pinchGestureRecognizer];
  [v4 setEnabled:0];
}

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  v6 = a5;
  v7 = +[APLogConfig sharedUIServiceConfig];
  if (!v7)
  {
    v7 = +[APLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = v6;
    v9 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@: Web view failed to load. Error: %{public}@", &v12, 0x16u);
  }

  v10 = [(WebProductViewController *)self activityIndicatorView];
  [v10 stopAnimating];

  v11 = [(WebProductViewController *)self actionDelegate];
  [v11 productViewControllerDidFinishWithAction:3];
}

- (void)webView:(id)a3 didCommitNavigation:(id)a4
{
  v5 = [APLogConfig sharedUIServiceConfig:a3];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = objc_opt_class();
    v7 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Web view loaded succesfully.", &v9, 0xCu);
  }

  v8 = [(WebProductViewController *)self activityIndicatorView];
  [v8 stopAnimating];
}

- (ProductViewControllerActionDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

@end