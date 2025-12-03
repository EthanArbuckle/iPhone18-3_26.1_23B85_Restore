@interface AMSUIAddFundsViewController
+ (id)bagKeySet;
+ (id)createBagForSubProfile;
- (ACAccount)account;
- (AMSBagProtocol)bag;
- (AMSProcessInfo)clientInfo;
- (AMSUIAddFundsViewController)initWithAccount:(id)account bag:(id)bag;
- (AMSUIAddFundsViewController)initWithAccount:(id)account bag:(id)bag clientInfo:(id)info;
- (NSDictionary)metricsOverlay;
- (void)loadView;
- (void)setAccount:(id)account;
- (void)setBag:(id)bag;
- (void)setClientInfo:(id)info;
- (void)setMetricsOverlay:(id)overlay;
- (void)viewWillLayoutSubviews;
@end

@implementation AMSUIAddFundsViewController

- (AMSUIAddFundsViewController)initWithAccount:(id)account bag:(id)bag
{
  v6 = MEMORY[0x1E698CAC8];
  bagCopy = bag;
  accountCopy = account;
  currentProcess = [v6 currentProcess];
  v10 = [(AMSUIAddFundsViewController *)self initWithAccount:accountCopy bag:bagCopy clientInfo:currentProcess];

  return v10;
}

- (AMSUIAddFundsViewController)initWithAccount:(id)account bag:(id)bag clientInfo:(id)info
{
  accountCopy = account;
  bagCopy = bag;
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = AMSUIAddFundsViewController;
  v11 = [(AMSUICommonViewController *)&v15 init];
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
  webViewController = [(AMSUIAddFundsViewController *)self webViewController];
  account = [webViewController account];

  return account;
}

- (AMSBagProtocol)bag
{
  webViewController = [(AMSUIAddFundsViewController *)self webViewController];
  v3 = [webViewController bag];

  return v3;
}

- (AMSProcessInfo)clientInfo
{
  webViewController = [(AMSUIAddFundsViewController *)self webViewController];
  clientInfo = [webViewController clientInfo];

  return clientInfo;
}

- (NSDictionary)metricsOverlay
{
  webViewController = [(AMSUIAddFundsViewController *)self webViewController];
  metricsOverlay = [webViewController metricsOverlay];

  return metricsOverlay;
}

- (void)setAccount:(id)account
{
  accountCopy = account;
  webViewController = [(AMSUIAddFundsViewController *)self webViewController];
  [webViewController setAccount:accountCopy];
}

- (void)setBag:(id)bag
{
  bagCopy = bag;
  webViewController = [(AMSUIAddFundsViewController *)self webViewController];
  [webViewController setBag:bagCopy];
}

- (void)setClientInfo:(id)info
{
  infoCopy = info;
  webViewController = [(AMSUIAddFundsViewController *)self webViewController];
  [webViewController setClientInfo:infoCopy];
}

- (void)setMetricsOverlay:(id)overlay
{
  overlayCopy = overlay;
  webViewController = [(AMSUIAddFundsViewController *)self webViewController];
  [webViewController setMetricsOverlay:overlayCopy];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = AMSUIAddFundsViewController;
  [(AMSUICommonViewController *)&v4 loadView];
  webViewController = [(AMSUIAddFundsViewController *)self webViewController];
  [(AMSUICommonViewController *)self setChildViewController:webViewController];
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = AMSUIAddFundsViewController;
  [(AMSUIAddFundsViewController *)&v14 viewWillLayoutSubviews];
  view = [(AMSUICommonViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  webViewController = [(AMSUIAddFundsViewController *)self webViewController];
  view2 = [webViewController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

+ (id)bagKeySet
{
  v2 = objc_alloc_init(MEMORY[0x1E698CA40]);
  [v2 addBagKey:@"AddFundsUrl" valueType:5];
  v3 = +[AMSUIWebViewController bagKeySet];
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

@end