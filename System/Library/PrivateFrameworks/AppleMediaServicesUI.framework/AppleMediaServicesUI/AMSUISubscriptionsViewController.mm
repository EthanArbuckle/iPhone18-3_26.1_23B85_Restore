@interface AMSUISubscriptionsViewController
+ (AMSBagKeySet)bagKeySet;
+ (id)createBagForSubProfile;
- (ACAccount)account;
- (AMSBagProtocol)bag;
- (AMSProcessInfo)clientInfo;
- (AMSUISubscriptionsViewController)initWithAccount:(id)account bag:(id)bag clientInfo:(id)info;
- (NSDictionary)metricsOverlay;
- (void)_setChildViewController:(id)controller;
- (void)_setupChildViewController;
- (void)_setupLayout;
- (void)_startLoading;
- (void)setAccount:(id)account;
- (void)setBag:(id)bag;
- (void)setClientInfo:(id)info;
- (void)setMetricsOverlay:(id)overlay;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation AMSUISubscriptionsViewController

- (AMSUISubscriptionsViewController)initWithAccount:(id)account bag:(id)bag clientInfo:(id)info
{
  accountCopy = account;
  bagCopy = bag;
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = AMSUISubscriptionsViewController;
  v11 = [(AMSUISubscriptionsViewController *)&v15 init];
  if (v11)
  {
    v12 = [[AMSUIWebViewController alloc] initWithBag:bagCopy account:accountCopy clientInfo:infoCopy];
    webViewController = v11->_webViewController;
    v11->_webViewController = v12;
  }

  return v11;
}

- (ACAccount)account
{
  webViewController = [(AMSUISubscriptionsViewController *)self webViewController];
  account = [webViewController account];

  return account;
}

- (AMSBagProtocol)bag
{
  webViewController = [(AMSUISubscriptionsViewController *)self webViewController];
  v3 = [webViewController bag];

  return v3;
}

- (AMSProcessInfo)clientInfo
{
  webViewController = [(AMSUISubscriptionsViewController *)self webViewController];
  clientInfo = [webViewController clientInfo];

  return clientInfo;
}

- (NSDictionary)metricsOverlay
{
  webViewController = [(AMSUISubscriptionsViewController *)self webViewController];
  metricsOverlay = [webViewController metricsOverlay];

  return metricsOverlay;
}

- (void)setAccount:(id)account
{
  accountCopy = account;
  webViewController = [(AMSUISubscriptionsViewController *)self webViewController];
  [webViewController setAccount:accountCopy];
}

- (void)setBag:(id)bag
{
  bagCopy = bag;
  webViewController = [(AMSUISubscriptionsViewController *)self webViewController];
  [webViewController setBag:bagCopy];
}

- (void)setClientInfo:(id)info
{
  infoCopy = info;
  webViewController = [(AMSUISubscriptionsViewController *)self webViewController];
  [webViewController setClientInfo:infoCopy];
}

- (void)setMetricsOverlay:(id)overlay
{
  overlayCopy = overlay;
  webViewController = [(AMSUISubscriptionsViewController *)self webViewController];
  [webViewController setMetricsOverlay:overlayCopy];
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
  bagKeySet = [self bagKeySet];
  bagSubProfile = [self bagSubProfile];
  bagSubProfileVersion = [self bagSubProfileVersion];
  [v3 registerBagKeySet:bagKeySet forProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  v7 = MEMORY[0x1E698C7D8];
  bagSubProfile2 = [self bagSubProfile];
  bagSubProfileVersion2 = [self bagSubProfileVersion];
  v10 = [v7 bagForProfile:bagSubProfile2 profileVersion:bagSubProfileVersion2];

  return v10;
}

- (void)_setupChildViewController
{
  webViewController = [(AMSUISubscriptionsViewController *)self webViewController];
  [(AMSUISubscriptionsViewController *)self _setChildViewController:webViewController];
}

- (void)_setChildViewController:(id)controller
{
  controllerCopy = controller;
  [(AMSUISubscriptionsViewController *)self addChildViewController:controllerCopy];
  view = [(AMSUISubscriptionsViewController *)self view];
  view2 = [controllerCopy view];
  [view addSubview:view2];

  [controllerCopy ams_didMoveToParentViewController:self];
}

- (void)_setupLayout
{
  view = [(AMSUISubscriptionsViewController *)self view];
  [view bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  webViewController = [(AMSUISubscriptionsViewController *)self webViewController];
  view2 = [webViewController view];
  [view2 setFrame:{v4, v6, v8, v10}];
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