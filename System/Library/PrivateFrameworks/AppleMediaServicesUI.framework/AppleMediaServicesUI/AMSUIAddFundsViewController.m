@interface AMSUIAddFundsViewController
+ (id)bagKeySet;
+ (id)createBagForSubProfile;
- (ACAccount)account;
- (AMSBagProtocol)bag;
- (AMSProcessInfo)clientInfo;
- (AMSUIAddFundsViewController)initWithAccount:(id)a3 bag:(id)a4;
- (AMSUIAddFundsViewController)initWithAccount:(id)a3 bag:(id)a4 clientInfo:(id)a5;
- (NSDictionary)metricsOverlay;
- (void)loadView;
- (void)setAccount:(id)a3;
- (void)setBag:(id)a3;
- (void)setClientInfo:(id)a3;
- (void)setMetricsOverlay:(id)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation AMSUIAddFundsViewController

- (AMSUIAddFundsViewController)initWithAccount:(id)a3 bag:(id)a4
{
  v6 = MEMORY[0x1E698CAC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 currentProcess];
  v10 = [(AMSUIAddFundsViewController *)self initWithAccount:v8 bag:v7 clientInfo:v9];

  return v10;
}

- (AMSUIAddFundsViewController)initWithAccount:(id)a3 bag:(id)a4 clientInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = AMSUIAddFundsViewController;
  v11 = [(AMSUICommonViewController *)&v15 init];
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
  v2 = [(AMSUIAddFundsViewController *)self webViewController];
  v3 = [v2 account];

  return v3;
}

- (AMSBagProtocol)bag
{
  v2 = [(AMSUIAddFundsViewController *)self webViewController];
  v3 = [v2 bag];

  return v3;
}

- (AMSProcessInfo)clientInfo
{
  v2 = [(AMSUIAddFundsViewController *)self webViewController];
  v3 = [v2 clientInfo];

  return v3;
}

- (NSDictionary)metricsOverlay
{
  v2 = [(AMSUIAddFundsViewController *)self webViewController];
  v3 = [v2 metricsOverlay];

  return v3;
}

- (void)setAccount:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIAddFundsViewController *)self webViewController];
  [v5 setAccount:v4];
}

- (void)setBag:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIAddFundsViewController *)self webViewController];
  [v5 setBag:v4];
}

- (void)setClientInfo:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIAddFundsViewController *)self webViewController];
  [v5 setClientInfo:v4];
}

- (void)setMetricsOverlay:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIAddFundsViewController *)self webViewController];
  [v5 setMetricsOverlay:v4];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = AMSUIAddFundsViewController;
  [(AMSUICommonViewController *)&v4 loadView];
  v3 = [(AMSUIAddFundsViewController *)self webViewController];
  [(AMSUICommonViewController *)self setChildViewController:v3];
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = AMSUIAddFundsViewController;
  [(AMSUIAddFundsViewController *)&v14 viewWillLayoutSubviews];
  v3 = [(AMSUICommonViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(AMSUIAddFundsViewController *)self webViewController];
  v13 = [v12 view];
  [v13 setFrame:{v5, v7, v9, v11}];
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

@end