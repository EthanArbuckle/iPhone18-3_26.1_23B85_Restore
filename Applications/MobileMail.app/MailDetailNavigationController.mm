@interface MailDetailNavigationController
- (BOOL)_shouldHideBarsInCurrentLayout;
- (BOOL)containsTransferStackViewController;
- (MailDetailNavigationController)init;
- (MailDetailNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (MailDetailNavigationController)initWithRootViewController:(id)a3;
- (id)conversationViewController;
- (int64_t)ancestorSplitViewControllerDisplayMode;
- (void)_commonInit;
- (void)_updateBarHidingEnabled;
- (void)didMoveToParentViewController:(id)a3;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MailDetailNavigationController

- (void)_commonInit
{
  [(MailDetailNavigationController *)self setDelegate:self];
  v3 = +[UIColor clearColor];
  v4 = [(MailDetailNavigationController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(MailDetailNavigationController *)self view];
  [v5 setOpaque:0];

  self->_ancestorSplitViewControllerDisplayMode = 0;
}

- (id)conversationViewController
{
  v3 = objc_opt_class();

  return [(MailDetailNavigationController *)self mf_viewControllerOfClass:v3 startFromTopOfStack:0];
}

- (MailDetailNavigationController)init
{
  v5.receiver = self;
  v5.super_class = MailDetailNavigationController;
  v2 = [(MailDetailNavigationController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MailDetailNavigationController *)v2 _commonInit];
  }

  return v3;
}

- (MailDetailNavigationController)initWithRootViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MailDetailNavigationController;
  v5 = [(MailDetailNavigationController *)&v8 initWithRootViewController:v4];
  v6 = v5;
  if (v5)
  {
    [(MailDetailNavigationController *)v5 _commonInit];
  }

  return v6;
}

- (MailDetailNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  v7.receiver = self;
  v7.super_class = MailDetailNavigationController;
  v4 = [(MailDetailNavigationController *)&v7 initWithNavigationBarClass:a3 toolbarClass:a4];
  v5 = v4;
  if (v4)
  {
    [(MailDetailNavigationController *)v4 _commonInit];
  }

  return v5;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MailDetailNavigationController;
  [(MailDetailNavigationController *)&v5 traitCollectionDidChange:v4];
  [(MailDetailNavigationController *)self _updateBarHidingEnabled];
}

- (void)_updateBarHidingEnabled
{
  v3 = [(MailDetailNavigationController *)self topViewController];
  -[MailDetailNavigationController setHidesBarsOnSwipe:](self, "setHidesBarsOnSwipe:", [v3 wantsBarHidingWhenVerticallyCompact] & -[MailDetailNavigationController _shouldHideBarsInCurrentLayout](self, "_shouldHideBarsInCurrentLayout"));
}

- (BOOL)_shouldHideBarsInCurrentLayout
{
  v2 = [(MailDetailNavigationController *)self traitCollection];
  v3 = [v2 verticalSizeClass] == 1;

  return v3;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v9.receiver = self;
  v9.super_class = MailDetailNavigationController;
  [(MailDetailNavigationController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(MailDetailNavigationController *)self splitViewController];
  self->_ancestorSplitViewControllerDisplayMode = [v8 displayMode];
}

- (void)didMoveToParentViewController:(id)a3
{
  if (!a3)
  {
    self->_ancestorSplitViewControllerDisplayMode = 0;
  }
}

- (int64_t)ancestorSplitViewControllerDisplayMode
{
  ancestorSplitViewControllerDisplayMode = self->_ancestorSplitViewControllerDisplayMode;
  if (!ancestorSplitViewControllerDisplayMode)
  {
    v3 = [(MailDetailNavigationController *)self splitViewController];
    ancestorSplitViewControllerDisplayMode = [v3 displayMode];
  }

  return ancestorSplitViewControllerDisplayMode;
}

- (BOOL)containsTransferStackViewController
{
  v2 = [(MailDetailNavigationController *)self mf_viewControllerOfClass:objc_opt_class() startFromTopOfStack:1];
  v3 = v2 != 0;

  return v3;
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  if ([v6 isNavigationBarHidden])
  {
    [v6 setNavigationBarHidden:0 animated:v5];
  }
}

@end