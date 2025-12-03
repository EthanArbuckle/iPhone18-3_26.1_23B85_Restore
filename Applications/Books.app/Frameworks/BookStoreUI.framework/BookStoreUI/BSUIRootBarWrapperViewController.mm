@interface BSUIRootBarWrapperViewController
- (BOOL)bc_analyticsVisibilityOfSelf;
- (BSUIRootBarWrapperViewController)initWithContentNavigationController:(id)controller;
- (id)contentScrollViewForEdge:(unint64_t)edge;
- (id)im_childViewControllerForTabBarVisibility;
- (unint64_t)supportedInterfaceOrientations;
- (void)_updateContentNavigationControllerFrom:(id)from to:(id)to;
- (void)setContentNavigationController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation BSUIRootBarWrapperViewController

- (BSUIRootBarWrapperViewController)initWithContentNavigationController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = BSUIRootBarWrapperViewController;
  v6 = [(BSUIRootBarWrapperViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentNavigationController, controller);
  }

  return v7;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = BSUIRootBarWrapperViewController;
  [(BSUIRootBarWrapperViewController *)&v3 viewDidLoad];
  if (self->_contentNavigationController)
  {
    [(BSUIRootBarWrapperViewController *)self _updateContentNavigationControllerFrom:0 to:?];
  }
}

- (void)setContentNavigationController:(id)controller
{
  controllerCopy = controller;
  viewIfLoaded = [(BSUIRootBarWrapperViewController *)self viewIfLoaded];
  if (viewIfLoaded)
  {
    contentNavigationController = self->_contentNavigationController;
    if (contentNavigationController != controllerCopy)
    {
      [(BSUIRootBarWrapperViewController *)self _updateContentNavigationControllerFrom:contentNavigationController to:controllerCopy];
    }
  }

  v6 = self->_contentNavigationController;
  self->_contentNavigationController = controllerCopy;
}

- (void)_updateContentNavigationControllerFrom:(id)from to:(id)to
{
  toCopy = to;
  fromCopy = from;
  [fromCopy willMoveToParentViewController:0];
  wrapperView = [fromCopy wrapperView];
  [wrapperView removeFromSuperview];

  [fromCopy removeFromParentViewController];
  if (toCopy)
  {
    [(BSUIRootBarWrapperViewController *)self addChildViewController:toCopy];
    view = [(BSUIRootBarWrapperViewController *)self view];
    [view bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    wrapperView2 = [toCopy wrapperView];
    [wrapperView2 setFrame:{v10, v12, v14, v16}];

    view2 = [(BSUIRootBarWrapperViewController *)self view];
    wrapperView3 = [toCopy wrapperView];
    [view2 addSubview:wrapperView3];

    [toCopy didMoveToParentViewController:self];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  contentNavigationController = [(BSUIRootBarWrapperViewController *)self contentNavigationController];

  if (contentNavigationController)
  {
    contentNavigationController2 = [(BSUIRootBarWrapperViewController *)self contentNavigationController];
    supportedInterfaceOrientations = [contentNavigationController2 supportedInterfaceOrientations];

    return supportedInterfaceOrientations;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BSUIRootBarWrapperViewController;
    return [(BSUIRootBarWrapperViewController *)&v7 supportedInterfaceOrientations];
  }
}

- (id)contentScrollViewForEdge:(unint64_t)edge
{
  v8.receiver = self;
  v8.super_class = BSUIRootBarWrapperViewController;
  v5 = [(BSUIRootBarWrapperViewController *)&v8 contentScrollViewForEdge:?];
  if (!v5)
  {
    contentNavigationController = [(BSUIRootBarWrapperViewController *)self contentNavigationController];
    v5 = [contentNavigationController contentScrollViewForEdge:edge];
  }

  return v5;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BSUIRootBarWrapperViewController;
  [(BSUIRootBarWrapperViewController *)&v4 viewDidAppear:appear];
  [(BSUIRootBarWrapperViewController *)self bc_analyticsVisibilityUpdateSubtree];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = BSUIRootBarWrapperViewController;
  [(BSUIRootBarWrapperViewController *)&v4 viewWillDisappear:disappear];
  [(BSUIRootBarWrapperViewController *)self bc_analyticsVisibilitySubtreeWillDisappear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = BSUIRootBarWrapperViewController;
  [(BSUIRootBarWrapperViewController *)&v4 viewDidDisappear:disappear];
  [(BSUIRootBarWrapperViewController *)self bc_analyticsVisibilitySubtreeDidDisappear];
}

- (BOOL)bc_analyticsVisibilityOfSelf
{
  contentNavigationController = [(BSUIRootBarWrapperViewController *)self contentNavigationController];
  visibleViewController = [contentNavigationController visibleViewController];

  if (visibleViewController)
  {
    objc_opt_class();
    v4 = BUDynamicCast();
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)im_childViewControllerForTabBarVisibility
{
  contentNavigationController = [(BSUIRootBarWrapperViewController *)self contentNavigationController];
  im_childViewControllerForTabBarVisibility = [contentNavigationController im_childViewControllerForTabBarVisibility];

  return im_childViewControllerForTabBarVisibility;
}

@end