@interface AMSUIDynamicViewController
+ (AMSBagKeySet)bagKeySet;
+ (id)createBagForSubProfile;
- (ACAccount)account;
- (AMSBagProtocol)bag;
- (AMSProcessInfo)clientInfo;
- (AMSUIDynamicViewController)initWithBag:(id)bag URL:(id)l;
- (AMSUIDynamicViewController)initWithBag:(id)bag bagValue:(id)value;
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
- (void)setAccount:(id)account;
- (void)setBag:(id)bag;
- (void)setClientInfo:(id)info;
- (void)setClientOptions:(id)options;
- (void)setDelegate:(id)delegate;
- (void)setInternalClientOptions:(id)options;
- (void)setMediaClientIdentifier:(id)identifier;
- (void)setMediaContentDelegate:(id)delegate;
- (void)setMetricsOverlay:(id)overlay;
- (void)setTitle:(id)title;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation AMSUIDynamicViewController

- (AMSUIDynamicViewController)initWithBag:(id)bag bagValue:(id)value
{
  bagCopy = bag;
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = AMSUIDynamicViewController;
  v8 = [(AMSUICommonViewController *)&v13 init];
  if (v8)
  {
    v9 = [[AMSEngagementOfflineBag alloc] initWithUnderlyingBag:bagCopy];
    v10 = [objc_alloc(getAMSUIDDynamicViewControllerClass()) initWithBag:v9 bagValue:valueCopy];
    dynamicViewController = v8->_dynamicViewController;
    v8->_dynamicViewController = v10;

    [(AMSUIDynamicViewController *)v8 _setup];
  }

  return v8;
}

- (AMSUIDynamicViewController)initWithBag:(id)bag URL:(id)l
{
  bagCopy = bag;
  lCopy = l;
  v13.receiver = self;
  v13.super_class = AMSUIDynamicViewController;
  v8 = [(AMSUICommonViewController *)&v13 init];
  if (v8)
  {
    v9 = [[AMSEngagementOfflineBag alloc] initWithUnderlyingBag:bagCopy];
    v10 = [objc_alloc(getAMSUIDDynamicViewControllerClass()) initWithBag:v9 URL:lCopy];
    dynamicViewController = v8->_dynamicViewController;
    v8->_dynamicViewController = v10;

    [(AMSUIDynamicViewController *)v8 _setup];
  }

  return v8;
}

- (ACAccount)account
{
  dynamicViewController = [(AMSUIDynamicViewController *)self dynamicViewController];
  account = [dynamicViewController account];

  return account;
}

- (BOOL)anonymousMetrics
{
  dynamicViewController = [(AMSUIDynamicViewController *)self dynamicViewController];
  anonymousMetrics = [dynamicViewController anonymousMetrics];

  return anonymousMetrics;
}

- (AMSBagProtocol)bag
{
  dynamicViewController = [(AMSUIDynamicViewController *)self dynamicViewController];
  v3 = [dynamicViewController bag];

  return v3;
}

- (AMSProcessInfo)clientInfo
{
  dynamicViewController = [(AMSUIDynamicViewController *)self dynamicViewController];
  clientInfo = [dynamicViewController clientInfo];

  return clientInfo;
}

- (NSDictionary)clientOptions
{
  dynamicViewController = [(AMSUIDynamicViewController *)self dynamicViewController];
  clientOptions = [dynamicViewController clientOptions];

  return clientOptions;
}

- (AMSUIDynamicViewControllerDelegate)delegate
{
  delegateProxy = [(AMSUIDynamicViewController *)self delegateProxy];
  delegate = [delegateProxy delegate];

  return delegate;
}

- (NSDictionary)internalClientOptions
{
  dynamicViewController = [(AMSUIDynamicViewController *)self dynamicViewController];
  internalClientOptions = [dynamicViewController internalClientOptions];

  return internalClientOptions;
}

- (NSString)mediaClientIdentifier
{
  dynamicViewController = [(AMSUIDynamicViewController *)self dynamicViewController];
  mediaClientIdentifier = [dynamicViewController mediaClientIdentifier];

  return mediaClientIdentifier;
}

- (NSDictionary)metricsOverlay
{
  dynamicViewController = [(AMSUIDynamicViewController *)self dynamicViewController];
  metricsOverlay = [dynamicViewController metricsOverlay];

  return metricsOverlay;
}

- (void)setAccount:(id)account
{
  accountCopy = account;
  dynamicViewController = [(AMSUIDynamicViewController *)self dynamicViewController];
  [dynamicViewController setAccount:accountCopy];
}

- (void)setBag:(id)bag
{
  bagCopy = bag;
  dynamicViewController = [(AMSUIDynamicViewController *)self dynamicViewController];
  [dynamicViewController setBag:bagCopy];
}

- (void)setClientInfo:(id)info
{
  infoCopy = info;
  dynamicViewController = [(AMSUIDynamicViewController *)self dynamicViewController];
  [dynamicViewController setClientInfo:infoCopy];
}

- (void)setClientOptions:(id)options
{
  optionsCopy = options;
  dynamicViewController = [(AMSUIDynamicViewController *)self dynamicViewController];
  [dynamicViewController setClientOptions:optionsCopy];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegateProxy = [(AMSUIDynamicViewController *)self delegateProxy];
  [delegateProxy setDelegate:delegateCopy];
}

- (void)setInternalClientOptions:(id)options
{
  optionsCopy = options;
  dynamicViewController = [(AMSUIDynamicViewController *)self dynamicViewController];
  [dynamicViewController setInternalClientOptions:optionsCopy];
}

- (void)setMediaClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dynamicViewController = [(AMSUIDynamicViewController *)self dynamicViewController];
  [dynamicViewController setMediaClientIdentifier:identifierCopy];
}

- (void)setMediaContentDelegate:(id)delegate
{
  delegateCopy = delegate;
  dynamicViewController = [(AMSUIDynamicViewController *)self dynamicViewController];
  [dynamicViewController setMediaContentDelegate:delegateCopy];
}

- (void)setMetricsOverlay:(id)overlay
{
  overlayCopy = overlay;
  dynamicViewController = [(AMSUIDynamicViewController *)self dynamicViewController];
  [dynamicViewController setMetricsOverlay:overlayCopy];
}

- (id)preload
{
  dynamicViewController = [(AMSUIDynamicViewController *)self dynamicViewController];
  preload = [dynamicViewController preload];

  return preload;
}

- (void)reloadContentViewImpressionItems
{
  dynamicViewController = [(AMSUIDynamicViewController *)self dynamicViewController];
  [dynamicViewController reloadContentViewImpressionItems];
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
  parentViewController = [(AMSUIDynamicViewController *)self parentViewController];

  if (parentViewController)
  {
    parentViewController2 = [(AMSUIDynamicViewController *)self parentViewController];
    isBeingDismissed = [parentViewController2 isBeingDismissed];

    return isBeingDismissed;
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
  parentViewController = [(AMSUIDynamicViewController *)self parentViewController];

  if (parentViewController)
  {
    parentViewController2 = [(AMSUIDynamicViewController *)self parentViewController];
    isMovingFromParentViewController = [parentViewController2 isMovingFromParentViewController];

    return isMovingFromParentViewController;
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
  parentViewController = [(AMSUIDynamicViewController *)self parentViewController];
  if (parentViewController && (v4 = parentViewController, [(AMSUIDynamicViewController *)self parentViewController], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, v4, (isKindOfClass & 1) == 0))
  {
    parentViewController2 = [(AMSUIDynamicViewController *)self parentViewController];
    navigationItem = [parentViewController2 navigationItem];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = AMSUIDynamicViewController;
    navigationItem = [(AMSUIDynamicViewController *)&v10 navigationItem];
  }

  return navigationItem;
}

- (id)title
{
  parentViewController = [(AMSUIDynamicViewController *)self parentViewController];

  if (parentViewController)
  {
    parentViewController2 = [(AMSUIDynamicViewController *)self parentViewController];
    title = [parentViewController2 title];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = AMSUIDynamicViewController;
    title = [(AMSUIDynamicViewController *)&v7 title];
  }

  return title;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  parentViewController = [(AMSUIDynamicViewController *)self parentViewController];

  if (parentViewController)
  {
    parentViewController2 = [(AMSUIDynamicViewController *)self parentViewController];
    [parentViewController2 setTitle:titleCopy];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = AMSUIDynamicViewController;
    [(AMSUIDynamicViewController *)&v7 setTitle:titleCopy];
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = AMSUIDynamicViewController;
  [(AMSUIDynamicViewController *)&v4 viewDidLoad];
  dynamicViewController = [(AMSUIDynamicViewController *)self dynamicViewController];
  [(AMSUICommonViewController *)self setChildViewController:dynamicViewController];
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = AMSUIDynamicViewController;
  [(AMSUIDynamicViewController *)&v14 viewWillLayoutSubviews];
  view = [(AMSUICommonViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  dynamicViewController = [(AMSUIDynamicViewController *)self dynamicViewController];
  view2 = [dynamicViewController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(MEMORY[0x1E698CA40]);
  bagKeySet = [MEMORY[0x1E698C9E0] bagKeySet];
  [v2 unionBagKeySet:bagKeySet];

  bagKeySet2 = [MEMORY[0x1E698CAE8] bagKeySet];
  [v2 unionBagKeySet:bagKeySet2];

  return v2;
}

+ (id)createBagForSubProfile
{
  v2 = MEMORY[0x1E698C7E0];
  bagKeySet = [objc_opt_class() bagKeySet];
  bagSubProfile = [objc_opt_class() bagSubProfile];
  bagSubProfileVersion = [objc_opt_class() bagSubProfileVersion];
  [v2 registerBagKeySet:bagKeySet forProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  v6 = MEMORY[0x1E698C7D8];
  bagSubProfile2 = [objc_opt_class() bagSubProfile];
  bagSubProfileVersion2 = [objc_opt_class() bagSubProfileVersion];
  v9 = [v6 bagForProfile:bagSubProfile2 profileVersion:bagSubProfileVersion2];

  return v9;
}

- (AMSUIMediaContentDelegate)mediaContentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaContentDelegate);

  return WeakRetained;
}

@end