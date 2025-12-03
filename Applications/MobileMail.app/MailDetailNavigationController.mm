@interface MailDetailNavigationController
- (BOOL)_shouldHideBarsInCurrentLayout;
- (BOOL)containsTransferStackViewController;
- (MailDetailNavigationController)init;
- (MailDetailNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (MailDetailNavigationController)initWithRootViewController:(id)controller;
- (id)conversationViewController;
- (int64_t)ancestorSplitViewControllerDisplayMode;
- (void)_commonInit;
- (void)_updateBarHidingEnabled;
- (void)didMoveToParentViewController:(id)controller;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MailDetailNavigationController

- (void)_commonInit
{
  [(MailDetailNavigationController *)self setDelegate:self];
  v3 = +[UIColor clearColor];
  view = [(MailDetailNavigationController *)self view];
  [view setBackgroundColor:v3];

  view2 = [(MailDetailNavigationController *)self view];
  [view2 setOpaque:0];

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

- (MailDetailNavigationController)initWithRootViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = MailDetailNavigationController;
  v5 = [(MailDetailNavigationController *)&v8 initWithRootViewController:controllerCopy];
  v6 = v5;
  if (v5)
  {
    [(MailDetailNavigationController *)v5 _commonInit];
  }

  return v6;
}

- (MailDetailNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7.receiver = self;
  v7.super_class = MailDetailNavigationController;
  v4 = [(MailDetailNavigationController *)&v7 initWithNavigationBarClass:class toolbarClass:toolbarClass];
  v5 = v4;
  if (v4)
  {
    [(MailDetailNavigationController *)v4 _commonInit];
  }

  return v5;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v5.receiver = self;
  v5.super_class = MailDetailNavigationController;
  [(MailDetailNavigationController *)&v5 traitCollectionDidChange:changeCopy];
  [(MailDetailNavigationController *)self _updateBarHidingEnabled];
}

- (void)_updateBarHidingEnabled
{
  topViewController = [(MailDetailNavigationController *)self topViewController];
  -[MailDetailNavigationController setHidesBarsOnSwipe:](self, "setHidesBarsOnSwipe:", [topViewController wantsBarHidingWhenVerticallyCompact] & -[MailDetailNavigationController _shouldHideBarsInCurrentLayout](self, "_shouldHideBarsInCurrentLayout"));
}

- (BOOL)_shouldHideBarsInCurrentLayout
{
  traitCollection = [(MailDetailNavigationController *)self traitCollection];
  v3 = [traitCollection verticalSizeClass] == 1;

  return v3;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v9.receiver = self;
  v9.super_class = MailDetailNavigationController;
  [(MailDetailNavigationController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  splitViewController = [(MailDetailNavigationController *)self splitViewController];
  self->_ancestorSplitViewControllerDisplayMode = [splitViewController displayMode];
}

- (void)didMoveToParentViewController:(id)controller
{
  if (!controller)
  {
    self->_ancestorSplitViewControllerDisplayMode = 0;
  }
}

- (int64_t)ancestorSplitViewControllerDisplayMode
{
  ancestorSplitViewControllerDisplayMode = self->_ancestorSplitViewControllerDisplayMode;
  if (!ancestorSplitViewControllerDisplayMode)
  {
    splitViewController = [(MailDetailNavigationController *)self splitViewController];
    ancestorSplitViewControllerDisplayMode = [splitViewController displayMode];
  }

  return ancestorSplitViewControllerDisplayMode;
}

- (BOOL)containsTransferStackViewController
{
  v2 = [(MailDetailNavigationController *)self mf_viewControllerOfClass:objc_opt_class() startFromTopOfStack:1];
  v3 = v2 != 0;

  return v3;
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  if ([controllerCopy isNavigationBarHidden])
  {
    [controllerCopy setNavigationBarHidden:0 animated:animatedCopy];
  }
}

@end