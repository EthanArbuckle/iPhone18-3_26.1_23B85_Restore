@interface AMSUIDynamicViewController
+ (AMSBagKeySet)bagKeySet;
+ (id)createBagForSubProfile;
- (ACAccount)account;
- (AMSBagProtocol)bag;
- (AMSProcessInfo)clientInfo;
- (AMSUIDynamicViewController)initWithBag:(id)a3 URL:(id)a4;
- (AMSUIDynamicViewController)initWithBag:(id)a3 bagValue:(id)a4;
- (AMSUIDynamicViewControllerDelegate)delegate;
- (AMSUIMediaContentDelegate)mediaContentDelegate;
- (BOOL)anonymousMetrics;
- (BOOL)isBeingDismissed;
- (BOOL)isMovingFromParentViewController;
- (NSDictionary)clientOptions;
- (NSDictionary)internalClientOptions;
- (NSDictionary)metricsOverlay;
- (NSString)mediaClientIdentifier;
- (id)navigationItem;
- (id)preload;
- (id)title;
- (void)_setup;
- (void)reloadContentViewImpressionItems;
- (void)setAccount:(id)a3;
- (void)setBag:(id)a3;
- (void)setClientInfo:(id)a3;
- (void)setClientOptions:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setInternalClientOptions:(id)a3;
- (void)setMediaClientIdentifier:(id)a3;
- (void)setMediaContentDelegate:(id)a3;
- (void)setMetricsOverlay:(id)a3;
- (void)setTitle:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation AMSUIDynamicViewController

- (AMSUIDynamicViewController)initWithBag:(id)a3 bagValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = AMSUIDynamicViewController;
  v8 = [(AMSUICommonViewController *)&v13 init];
  if (v8)
  {
    v9 = [[AMSEngagementOfflineBag alloc] initWithUnderlyingBag:v6];
    v10 = [objc_alloc(getAMSUIDDynamicViewControllerClass()) initWithBag:v9 bagValue:v7];
    dynamicViewController = v8->_dynamicViewController;
    v8->_dynamicViewController = v10;

    [(AMSUIDynamicViewController *)v8 _setup];
  }

  return v8;
}

- (AMSUIDynamicViewController)initWithBag:(id)a3 URL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = AMSUIDynamicViewController;
  v8 = [(AMSUICommonViewController *)&v13 init];
  if (v8)
  {
    v9 = [[AMSEngagementOfflineBag alloc] initWithUnderlyingBag:v6];
    v10 = [objc_alloc(getAMSUIDDynamicViewControllerClass()) initWithBag:v9 URL:v7];
    dynamicViewController = v8->_dynamicViewController;
    v8->_dynamicViewController = v10;

    [(AMSUIDynamicViewController *)v8 _setup];
  }

  return v8;
}

- (ACAccount)account
{
  v2 = [(AMSUIDynamicViewController *)self dynamicViewController];
  v3 = [v2 account];

  return v3;
}

- (BOOL)anonymousMetrics
{
  v2 = [(AMSUIDynamicViewController *)self dynamicViewController];
  v3 = [v2 anonymousMetrics];

  return v3;
}

- (AMSBagProtocol)bag
{
  v2 = [(AMSUIDynamicViewController *)self dynamicViewController];
  v3 = [v2 bag];

  return v3;
}

- (AMSProcessInfo)clientInfo
{
  v2 = [(AMSUIDynamicViewController *)self dynamicViewController];
  v3 = [v2 clientInfo];

  return v3;
}

- (NSDictionary)clientOptions
{
  v2 = [(AMSUIDynamicViewController *)self dynamicViewController];
  v3 = [v2 clientOptions];

  return v3;
}

- (AMSUIDynamicViewControllerDelegate)delegate
{
  v2 = [(AMSUIDynamicViewController *)self delegateProxy];
  v3 = [v2 delegate];

  return v3;
}

- (NSDictionary)internalClientOptions
{
  v2 = [(AMSUIDynamicViewController *)self dynamicViewController];
  v3 = [v2 internalClientOptions];

  return v3;
}

- (NSString)mediaClientIdentifier
{
  v2 = [(AMSUIDynamicViewController *)self dynamicViewController];
  v3 = [v2 mediaClientIdentifier];

  return v3;
}

- (NSDictionary)metricsOverlay
{
  v2 = [(AMSUIDynamicViewController *)self dynamicViewController];
  v3 = [v2 metricsOverlay];

  return v3;
}

- (void)setAccount:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIDynamicViewController *)self dynamicViewController];
  [v5 setAccount:v4];
}

- (void)setBag:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIDynamicViewController *)self dynamicViewController];
  [v5 setBag:v4];
}

- (void)setClientInfo:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIDynamicViewController *)self dynamicViewController];
  [v5 setClientInfo:v4];
}

- (void)setClientOptions:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIDynamicViewController *)self dynamicViewController];
  [v5 setClientOptions:v4];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIDynamicViewController *)self delegateProxy];
  [v5 setDelegate:v4];
}

- (void)setInternalClientOptions:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIDynamicViewController *)self dynamicViewController];
  [v5 setInternalClientOptions:v4];
}

- (void)setMediaClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIDynamicViewController *)self dynamicViewController];
  [v5 setMediaClientIdentifier:v4];
}

- (void)setMediaContentDelegate:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIDynamicViewController *)self dynamicViewController];
  [v5 setMediaContentDelegate:v4];
}

- (void)setMetricsOverlay:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIDynamicViewController *)self dynamicViewController];
  [v5 setMetricsOverlay:v4];
}

- (id)preload
{
  v2 = [(AMSUIDynamicViewController *)self dynamicViewController];
  v3 = [v2 preload];

  return v3;
}

- (void)reloadContentViewImpressionItems
{
  v2 = [(AMSUIDynamicViewController *)self dynamicViewController];
  [v2 reloadContentViewImpressionItems];
}

- (void)_setup
{
  v3 = [[AMSUIDynamicViewControllerDelegateProxy alloc] initWithDynamicViewController:self];
  delegateProxy = self->_delegateProxy;
  self->_delegateProxy = v3;

  v5 = self->_delegateProxy;
  dynamicViewController = self->_dynamicViewController;

  [(AMSUIDynamicViewController *)dynamicViewController setDelegate:v5];
}

- (BOOL)isBeingDismissed
{
  v3 = [(AMSUIDynamicViewController *)self parentViewController];

  if (v3)
  {
    v4 = [(AMSUIDynamicViewController *)self parentViewController];
    v5 = [v4 isBeingDismissed];

    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = AMSUIDynamicViewController;
    return [(AMSUIDynamicViewController *)&v7 isBeingDismissed];
  }
}

- (BOOL)isMovingFromParentViewController
{
  v3 = [(AMSUIDynamicViewController *)self parentViewController];

  if (v3)
  {
    v4 = [(AMSUIDynamicViewController *)self parentViewController];
    v5 = [v4 isMovingFromParentViewController];

    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = AMSUIDynamicViewController;
    return [(AMSUIDynamicViewController *)&v7 isMovingFromParentViewController];
  }
}

- (id)navigationItem
{
  v3 = [(AMSUIDynamicViewController *)self parentViewController];
  if (v3 && (v4 = v3, [(AMSUIDynamicViewController *)self parentViewController], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, v4, (isKindOfClass & 1) == 0))
  {
    v8 = [(AMSUIDynamicViewController *)self parentViewController];
    v7 = [v8 navigationItem];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = AMSUIDynamicViewController;
    v7 = [(AMSUIDynamicViewController *)&v10 navigationItem];
  }

  return v7;
}

- (id)title
{
  v3 = [(AMSUIDynamicViewController *)self parentViewController];

  if (v3)
  {
    v4 = [(AMSUIDynamicViewController *)self parentViewController];
    v5 = [v4 title];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = AMSUIDynamicViewController;
    v5 = [(AMSUIDynamicViewController *)&v7 title];
  }

  return v5;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIDynamicViewController *)self parentViewController];

  if (v5)
  {
    v6 = [(AMSUIDynamicViewController *)self parentViewController];
    [v6 setTitle:v4];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = AMSUIDynamicViewController;
    [(AMSUIDynamicViewController *)&v7 setTitle:v4];
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = AMSUIDynamicViewController;
  [(AMSUIDynamicViewController *)&v4 viewDidLoad];
  v3 = [(AMSUIDynamicViewController *)self dynamicViewController];
  [(AMSUICommonViewController *)self setChildViewController:v3];
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = AMSUIDynamicViewController;
  [(AMSUIDynamicViewController *)&v14 viewWillLayoutSubviews];
  v3 = [(AMSUICommonViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(AMSUIDynamicViewController *)self dynamicViewController];
  v13 = [v12 view];
  [v13 setFrame:{v5, v7, v9, v11}];
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(MEMORY[0x1E698CA40]);
  v3 = [MEMORY[0x1E698C9E0] bagKeySet];
  [v2 unionBagKeySet:v3];

  v4 = [MEMORY[0x1E698CAE8] bagKeySet];
  [v2 unionBagKeySet:v4];

  return v2;
}

+ (id)createBagForSubProfile
{
  v2 = MEMORY[0x1E698C7E0];
  v3 = [objc_opt_class() bagKeySet];
  v4 = [objc_opt_class() bagSubProfile];
  v5 = [objc_opt_class() bagSubProfileVersion];
  [v2 registerBagKeySet:v3 forProfile:v4 profileVersion:v5];

  v6 = MEMORY[0x1E698C7D8];
  v7 = [objc_opt_class() bagSubProfile];
  v8 = [objc_opt_class() bagSubProfileVersion];
  v9 = [v6 bagForProfile:v7 profileVersion:v8];

  return v9;
}

- (AMSUIMediaContentDelegate)mediaContentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaContentDelegate);

  return WeakRetained;
}

@end