@interface AMSUIRedeemViewController
- (ACAccount)account;
- (AMSBagProtocol)bag;
- (AMSProcessInfo)clientInfo;
- (AMSUIRedeemViewController)initWithAccount:(id)a3 bag:(id)a4;
- (AMSUIRedeemViewController)initWithAccount:(id)a3 bag:(id)a4 clientInfo:(id)a5;
- (NSDictionary)clientOptions;
- (NSDictionary)metricsOverlay;
- (id)_redeemURLWithInitialCode:(id)a3;
- (void)loadView;
- (void)setAccount:(id)a3;
- (void)setBag:(id)a3;
- (void)setClientInfo:(id)a3;
- (void)setClientOptions:(id)a3;
- (void)setMetricsOverlay:(id)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation AMSUIRedeemViewController

- (AMSUIRedeemViewController)initWithAccount:(id)a3 bag:(id)a4
{
  v6 = MEMORY[0x1E698CAC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 currentProcess];
  v10 = [(AMSUIRedeemViewController *)self initWithAccount:v8 bag:v7 clientInfo:v9];

  return v10;
}

- (AMSUIRedeemViewController)initWithAccount:(id)a3 bag:(id)a4 clientInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = AMSUIRedeemViewController;
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
  v2 = [(AMSUIRedeemViewController *)self webViewController];
  v3 = [v2 account];

  return v3;
}

- (AMSBagProtocol)bag
{
  v2 = [(AMSUIRedeemViewController *)self webViewController];
  v3 = [v2 bag];

  return v3;
}

- (AMSProcessInfo)clientInfo
{
  v2 = [(AMSUIRedeemViewController *)self webViewController];
  v3 = [v2 clientInfo];

  return v3;
}

- (NSDictionary)clientOptions
{
  v2 = [(AMSUIRedeemViewController *)self webViewController];
  v3 = [v2 clientOptions];

  return v3;
}

- (NSDictionary)metricsOverlay
{
  v2 = [(AMSUIRedeemViewController *)self webViewController];
  v3 = [v2 metricsOverlay];

  return v3;
}

- (void)setAccount:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIRedeemViewController *)self webViewController];
  [v5 setAccount:v4];
}

- (void)setBag:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIRedeemViewController *)self webViewController];
  [v5 setBag:v4];
}

- (void)setClientInfo:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIRedeemViewController *)self webViewController];
  [v5 setClientInfo:v4];
}

- (void)setClientOptions:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIRedeemViewController *)self webViewController];
  [v5 setClientOptions:v4];
}

- (void)setMetricsOverlay:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIRedeemViewController *)self webViewController];
  [v5 setMetricsOverlay:v4];
}

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = AMSUIRedeemViewController;
  [(AMSUICommonViewController *)&v8 loadView];
  v3 = [(AMSUIRedeemViewController *)self navigationController];

  if (v3)
  {
    [(AMSUIRedeemViewController *)self webViewController];
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E69DCCD8]);
    v5 = [(AMSUIRedeemViewController *)self webViewController];
    v6 = [v4 initWithRootViewController:v5];
    [(AMSUIRedeemViewController *)self setNavViewController:v6];

    [(AMSUIRedeemViewController *)self navViewController];
  }
  v7 = ;
  [(AMSUICommonViewController *)self setChildViewController:v7];
}

- (void)viewWillLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = AMSUIRedeemViewController;
  [(AMSUIRedeemViewController *)&v17 viewWillLayoutSubviews];
  v3 = [(AMSUIRedeemViewController *)self childViewControllers];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = [(AMSUICommonViewController *)self view];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(AMSUIRedeemViewController *)self childViewControllers];
    v15 = [v14 firstObject];
    v16 = [v15 view];
    [v16 setFrame:{v7, v9, v11, v13}];
  }
}

- (id)_redeemURLWithInitialCode:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIRedeemViewController *)self bag];
  v6 = [v5 URLForKey:@"redeemCodeLanding"];

  if (v4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__AMSUIRedeemViewController__redeemURLWithInitialCode___block_invoke;
    v9[3] = &unk_1E7F25928;
    v10 = v4;
    v7 = [v6 transformWithBlock:v9];
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

id __55__AMSUIRedeemViewController__redeemURLWithInitialCode___block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v10 = @"code";
  v11[0] = v2;
  v3 = MEMORY[0x1E695DF20];
  v4 = a2;
  v5 = [v3 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v6 = [v4 ams_URLByAppendingQueryParameters:v5];

  v7 = [MEMORY[0x1E698CAD0] promiseWithResult:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end