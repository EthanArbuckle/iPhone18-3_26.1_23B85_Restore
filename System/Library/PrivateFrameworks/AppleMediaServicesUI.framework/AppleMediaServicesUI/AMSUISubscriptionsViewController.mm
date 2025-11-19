@interface AMSUISubscriptionsViewController
+ (AMSBagKeySet)bagKeySet;
+ (id)createBagForSubProfile;
- (ACAccount)account;
- (AMSBagProtocol)bag;
- (AMSProcessInfo)clientInfo;
- (AMSUISubscriptionsViewController)initWithAccount:(id)a3 bag:(id)a4 clientInfo:(id)a5;
- (NSDictionary)metricsOverlay;
- (void)_setChildViewController:(id)a3;
- (void)_setupChildViewController;
- (void)_setupLayout;
- (void)_startLoading;
- (void)setAccount:(id)a3;
- (void)setBag:(id)a3;
- (void)setClientInfo:(id)a3;
- (void)setMetricsOverlay:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation AMSUISubscriptionsViewController

- (AMSUISubscriptionsViewController)initWithAccount:(id)a3 bag:(id)a4 clientInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = AMSUISubscriptionsViewController;
  v11 = [(AMSUISubscriptionsViewController *)&v15 init];
  if (v11)
  {
    v12 = [[AMSUIWebViewController alloc] initWithBag:v9 account:v8 clientInfo:v10];
    webViewController = v11->_webViewController;
    v11->_webViewController = v12;
  }

  return v11;
}

- (ACAccount)account
{
  v2 = [(AMSUISubscriptionsViewController *)self webViewController];
  v3 = [v2 account];

  return v3;
}

- (AMSBagProtocol)bag
{
  v2 = [(AMSUISubscriptionsViewController *)self webViewController];
  v3 = [v2 bag];

  return v3;
}

- (AMSProcessInfo)clientInfo
{
  v2 = [(AMSUISubscriptionsViewController *)self webViewController];
  v3 = [v2 clientInfo];

  return v3;
}

- (NSDictionary)metricsOverlay
{
  v2 = [(AMSUISubscriptionsViewController *)self webViewController];
  v3 = [v2 metricsOverlay];

  return v3;
}

- (void)setAccount:(id)a3
{
  v4 = a3;
  v5 = [(AMSUISubscriptionsViewController *)self webViewController];
  [v5 setAccount:v4];
}

- (void)setBag:(id)a3
{
  v4 = a3;
  v5 = [(AMSUISubscriptionsViewController *)self webViewController];
  [v5 setBag:v4];
}

- (void)setClientInfo:(id)a3
{
  v4 = a3;
  v5 = [(AMSUISubscriptionsViewController *)self webViewController];
  [v5 setClientInfo:v4];
}

- (void)setMetricsOverlay:(id)a3
{
  v4 = a3;
  v5 = [(AMSUISubscriptionsViewController *)self webViewController];
  [v5 setMetricsOverlay:v4];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AMSUISubscriptionsViewController;
  [(AMSUISubscriptionsViewController *)&v3 viewDidLoad];
  [(AMSUISubscriptionsViewController *)self _setup];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = AMSUISubscriptionsViewController;
  [(AMSUISubscriptionsViewController *)&v3 viewWillLayoutSubviews];
  [(AMSUISubscriptionsViewController *)self _setupLayout];
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(MEMORY[0x1E698CA40]);
  [v2 addBagKey:@"manageSubscriptionsDynamicUIUrl" valueType:5];
  v3 = +[AMSUIDynamicViewController bagKeySet];
  [v2 unionBagKeySet:v3];

  return v2;
}

+ (id)createBagForSubProfile
{
  v3 = MEMORY[0x1E698C7E0];
  v4 = [a1 bagKeySet];
  v5 = [a1 bagSubProfile];
  v6 = [a1 bagSubProfileVersion];
  [v3 registerBagKeySet:v4 forProfile:v5 profileVersion:v6];

  v7 = MEMORY[0x1E698C7D8];
  v8 = [a1 bagSubProfile];
  v9 = [a1 bagSubProfileVersion];
  v10 = [v7 bagForProfile:v8 profileVersion:v9];

  return v10;
}

- (void)_setupChildViewController
{
  v3 = [(AMSUISubscriptionsViewController *)self webViewController];
  [(AMSUISubscriptionsViewController *)self _setChildViewController:v3];
}

- (void)_setChildViewController:(id)a3
{
  v6 = a3;
  [(AMSUISubscriptionsViewController *)self addChildViewController:v6];
  v4 = [(AMSUISubscriptionsViewController *)self view];
  v5 = [v6 view];
  [v4 addSubview:v5];

  [v6 ams_didMoveToParentViewController:self];
}

- (void)_setupLayout
{
  v13 = [(AMSUISubscriptionsViewController *)self view];
  [v13 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(AMSUISubscriptionsViewController *)self webViewController];
  v12 = [v11 view];
  [v12 setFrame:{v4, v6, v8, v10}];
}

- (void)_startLoading
{
  objc_initWeak(&location, self);
  v3 = [(AMSUISubscriptionsViewController *)self bag];
  v4 = [v3 URLForKey:@"manageSubscriptionsV2Url"];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __49__AMSUISubscriptionsViewController__startLoading__block_invoke;
  v11 = &unk_1E7F25978;
  objc_copyWeak(&v12, &location);
  v5 = [v4 transformWithBlock:&v8];

  v6 = [(AMSUISubscriptionsViewController *)self webViewController:v8];
  v7 = [v6 loadBagValue:v5];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

id __49__AMSUISubscriptionsViewController__startLoading__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = MEMORY[0x1E696AF20];
  v6 = [v3 absoluteString];
  v7 = [v5 componentsWithString:v6];

  v8 = [v7 queryItems];
  v9 = [v8 mutableCopy];

  v10 = [WeakRetained subscriptionType];

  if (v10)
  {
    v11 = MEMORY[0x1E696AF60];
    v12 = [WeakRetained subscriptionType];
    v13 = [v11 queryItemWithName:@"subscriptionType" value:v12];
    [v9 addObject:v13];
  }

  v14 = [v7 URL];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v3;
  }

  v17 = v16;

  v18 = [MEMORY[0x1E698CAD0] promiseWithResult:v17];

  return v18;
}

@end