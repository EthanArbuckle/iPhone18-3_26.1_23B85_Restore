@interface QLScreenTimeItemViewController
- (QLScreenTimeItemViewController)initWithBundleIdentifier:(id)identifier;
- (QLScreenTimeItemViewController)initWithCategoryIdentifier:(id)identifier;
- (void)_updateBlockingViewControllerWithCurrentPolicy;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
- (void)showBlockingViewControllerWithPolicy:(int64_t)policy;
@end

@implementation QLScreenTimeItemViewController

- (QLScreenTimeItemViewController)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = QLScreenTimeItemViewController;
  v6 = [(QLItemViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, identifier);
  }

  return v7;
}

- (QLScreenTimeItemViewController)initWithCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = QLScreenTimeItemViewController;
  v6 = [(QLItemViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_categoryIdentifier, identifier);
  }

  return v7;
}

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  v32[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D75348];
  handlerCopy = handler;
  clearColor = [v6 clearColor];
  view = [(QLScreenTimeItemViewController *)self view];
  [view setBackgroundColor:clearColor];

  Helper_x8__OBJC_CLASS___STBlockingViewController = gotLoadHelper_x8__OBJC_CLASS___STBlockingViewController(v10);
  newTranslucentBlockingViewController = [*(v12 + 3472) newTranslucentBlockingViewController];
  blockingViewController = self->_blockingViewController;
  self->_blockingViewController = newTranslucentBlockingViewController;

  [(QLScreenTimeItemViewController *)self addChildViewController:self->_blockingViewController];
  view2 = [(QLScreenTimeItemViewController *)self view];
  view3 = [(STBlockingViewController *)self->_blockingViewController view];
  [view2 addSubview:view3];

  [(STBlockingViewController *)self->_blockingViewController didMoveToParentViewController:self];
  view4 = [(STBlockingViewController *)self->_blockingViewController view];
  [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

  view5 = [(QLScreenTimeItemViewController *)self view];
  v19 = MEMORY[0x277CCAAD0];
  v31 = @"lockoutView";
  view6 = [(STBlockingViewController *)self->_blockingViewController view];
  v32[0] = view6;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  v22 = [v19 constraintsWithVisualFormat:@"H:|[lockoutView]|" options:0 metrics:0 views:v21];
  [view5 addConstraints:v22];

  view7 = [(QLScreenTimeItemViewController *)self view];
  v24 = MEMORY[0x277CCAAD0];
  v29 = @"lockoutView";
  view8 = [(STBlockingViewController *)self->_blockingViewController view];
  v30 = view8;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v27 = [v24 constraintsWithVisualFormat:@"V:|[lockoutView]|" options:0 metrics:0 views:v26];
  [view7 addConstraints:v27];

  handlerCopy[2](handlerCopy, 0);
  v28 = *MEMORY[0x277D85DE8];
}

- (void)showBlockingViewControllerWithPolicy:(int64_t)policy
{
  if (self->_policy != policy)
  {
    self->_policy = policy;
    [(QLScreenTimeItemViewController *)self _updateBlockingViewControllerWithCurrentPolicy];
    if (self->_policy)
    {
      blockingViewController = self->_blockingViewController;

      [(STBlockingViewController *)blockingViewController showWithAnimation:1 completionHandler:0];
    }
  }
}

- (void)_updateBlockingViewControllerWithCurrentPolicy
{
  if (self->_policy)
  {
    if (self->_bundleIdentifier)
    {
      [STBlockingViewController updateAppearanceUsingPolicy:"updateAppearanceUsingPolicy:forBundleIdentifier:" forBundleIdentifier:?];
    }

    else if (self->_categoryIdentifier)
    {
      [STBlockingViewController updateAppearanceUsingPolicy:"updateAppearanceUsingPolicy:forCategoryIdentifier:" forCategoryIdentifier:?];
    }
  }
}

@end