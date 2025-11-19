@interface QLScreenTimeItemViewController
- (QLScreenTimeItemViewController)initWithBundleIdentifier:(id)a3;
- (QLScreenTimeItemViewController)initWithCategoryIdentifier:(id)a3;
- (void)_updateBlockingViewControllerWithCurrentPolicy;
- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)showBlockingViewControllerWithPolicy:(int64_t)a3;
@end

@implementation QLScreenTimeItemViewController

- (QLScreenTimeItemViewController)initWithBundleIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = QLScreenTimeItemViewController;
  v6 = [(QLItemViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, a3);
  }

  return v7;
}

- (QLScreenTimeItemViewController)initWithCategoryIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = QLScreenTimeItemViewController;
  v6 = [(QLItemViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_categoryIdentifier, a3);
  }

  return v7;
}

- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v32[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D75348];
  v7 = a5;
  v8 = [v6 clearColor];
  v9 = [(QLScreenTimeItemViewController *)self view];
  [v9 setBackgroundColor:v8];

  Helper_x8__OBJC_CLASS___STBlockingViewController = gotLoadHelper_x8__OBJC_CLASS___STBlockingViewController(v10);
  v13 = [*(v12 + 3472) newTranslucentBlockingViewController];
  blockingViewController = self->_blockingViewController;
  self->_blockingViewController = v13;

  [(QLScreenTimeItemViewController *)self addChildViewController:self->_blockingViewController];
  v15 = [(QLScreenTimeItemViewController *)self view];
  v16 = [(STBlockingViewController *)self->_blockingViewController view];
  [v15 addSubview:v16];

  [(STBlockingViewController *)self->_blockingViewController didMoveToParentViewController:self];
  v17 = [(STBlockingViewController *)self->_blockingViewController view];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = [(QLScreenTimeItemViewController *)self view];
  v19 = MEMORY[0x277CCAAD0];
  v31 = @"lockoutView";
  v20 = [(STBlockingViewController *)self->_blockingViewController view];
  v32[0] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  v22 = [v19 constraintsWithVisualFormat:@"H:|[lockoutView]|" options:0 metrics:0 views:v21];
  [v18 addConstraints:v22];

  v23 = [(QLScreenTimeItemViewController *)self view];
  v24 = MEMORY[0x277CCAAD0];
  v29 = @"lockoutView";
  v25 = [(STBlockingViewController *)self->_blockingViewController view];
  v30 = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v27 = [v24 constraintsWithVisualFormat:@"V:|[lockoutView]|" options:0 metrics:0 views:v26];
  [v23 addConstraints:v27];

  v7[2](v7, 0);
  v28 = *MEMORY[0x277D85DE8];
}

- (void)showBlockingViewControllerWithPolicy:(int64_t)a3
{
  if (self->_policy != a3)
  {
    self->_policy = a3;
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