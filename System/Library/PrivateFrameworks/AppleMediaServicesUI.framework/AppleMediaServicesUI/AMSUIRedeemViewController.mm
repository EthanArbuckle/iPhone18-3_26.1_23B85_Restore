@interface AMSUIRedeemViewController
- (ACAccount)account;
- (AMSBagProtocol)bag;
- (AMSProcessInfo)clientInfo;
- (AMSUIRedeemViewController)initWithAccount:(id)account bag:(id)bag;
- (AMSUIRedeemViewController)initWithAccount:(id)account bag:(id)bag clientInfo:(id)info;
- (NSDictionary)clientOptions;
- (NSDictionary)metricsOverlay;
- (id)_redeemURLWithInitialCode:(id)code;
- (void)loadView;
- (void)setAccount:(id)account;
- (void)setBag:(id)bag;
- (void)setClientInfo:(id)info;
- (void)setClientOptions:(id)options;
- (void)setMetricsOverlay:(id)overlay;
- (void)viewWillLayoutSubviews;
@end

@implementation AMSUIRedeemViewController

- (AMSUIRedeemViewController)initWithAccount:(id)account bag:(id)bag
{
  v6 = MEMORY[0x1E698CAC8];
  bagCopy = bag;
  accountCopy = account;
  currentProcess = [v6 currentProcess];
  v10 = [(AMSUIRedeemViewController *)self initWithAccount:accountCopy bag:bagCopy clientInfo:currentProcess];

  return v10;
}

- (AMSUIRedeemViewController)initWithAccount:(id)account bag:(id)bag clientInfo:(id)info
{
  accountCopy = account;
  bagCopy = bag;
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = AMSUIRedeemViewController;
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
  webViewController = [(AMSUIRedeemViewController *)self webViewController];
  account = [webViewController account];

  return account;
}

- (AMSBagProtocol)bag
{
  webViewController = [(AMSUIRedeemViewController *)self webViewController];
  v3 = [webViewController bag];

  return v3;
}

- (AMSProcessInfo)clientInfo
{
  webViewController = [(AMSUIRedeemViewController *)self webViewController];
  clientInfo = [webViewController clientInfo];

  return clientInfo;
}

- (NSDictionary)clientOptions
{
  webViewController = [(AMSUIRedeemViewController *)self webViewController];
  clientOptions = [webViewController clientOptions];

  return clientOptions;
}

- (NSDictionary)metricsOverlay
{
  webViewController = [(AMSUIRedeemViewController *)self webViewController];
  metricsOverlay = [webViewController metricsOverlay];

  return metricsOverlay;
}

- (void)setAccount:(id)account
{
  accountCopy = account;
  webViewController = [(AMSUIRedeemViewController *)self webViewController];
  [webViewController setAccount:accountCopy];
}

- (void)setBag:(id)bag
{
  bagCopy = bag;
  webViewController = [(AMSUIRedeemViewController *)self webViewController];
  [webViewController setBag:bagCopy];
}

- (void)setClientInfo:(id)info
{
  infoCopy = info;
  webViewController = [(AMSUIRedeemViewController *)self webViewController];
  [webViewController setClientInfo:infoCopy];
}

- (void)setClientOptions:(id)options
{
  optionsCopy = options;
  webViewController = [(AMSUIRedeemViewController *)self webViewController];
  [webViewController setClientOptions:optionsCopy];
}

- (void)setMetricsOverlay:(id)overlay
{
  overlayCopy = overlay;
  webViewController = [(AMSUIRedeemViewController *)self webViewController];
  [webViewController setMetricsOverlay:overlayCopy];
}

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = AMSUIRedeemViewController;
  [(AMSUICommonViewController *)&v8 loadView];
  navigationController = [(AMSUIRedeemViewController *)self navigationController];

  if (navigationController)
  {
    [(AMSUIRedeemViewController *)self webViewController];
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E69DCCD8]);
    webViewController = [(AMSUIRedeemViewController *)self webViewController];
    v6 = [v4 initWithRootViewController:webViewController];
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
  childViewControllers = [(AMSUIRedeemViewController *)self childViewControllers];
  firstObject = [childViewControllers firstObject];

  if (firstObject)
  {
    view = [(AMSUICommonViewController *)self view];
    [view bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    childViewControllers2 = [(AMSUIRedeemViewController *)self childViewControllers];
    firstObject2 = [childViewControllers2 firstObject];
    view2 = [firstObject2 view];
    [view2 setFrame:{v7, v9, v11, v13}];
  }
}

- (id)_redeemURLWithInitialCode:(id)code
{
  codeCopy = code;
  v5 = [(AMSUIRedeemViewController *)self bag];
  v6 = [v5 URLForKey:@"redeemCodeLanding"];

  if (codeCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__AMSUIRedeemViewController__redeemURLWithInitialCode___block_invoke;
    v9[3] = &unk_1E7F25928;
    v10 = codeCopy;
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