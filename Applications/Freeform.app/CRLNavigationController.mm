@interface CRLNavigationController
- (BOOL)crl_preserveEditorSelection;
- (BOOL)hasPreferredPartialScreenPresentationStatusBarStyle;
- (CGSize)preferredContentSize;
- (CRLNavigationController)initWithRootViewController:(id)controller;
- (id)childViewControllerForStatusBarHidden;
- (id)nextResponder;
- (id)popViewControllerAnimated:(BOOL)animated;
- (int64_t)preferredPartialScreenPresentationStatusBarStyle;
- (int64_t)preferredStatusBarStyle;
- (void)didMoveToParentViewController:(id)controller;
- (void)setPreferredPartialScreenPresentationStatusBarStyle:(int64_t)style;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation CRLNavigationController

- (CRLNavigationController)initWithRootViewController:(id)controller
{
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = CRLNavigationController;
  v11 = [(CRLNavigationController *)&v15 initWithRootViewController:controllerCopy];
  if (v11)
  {
    v12 = sub_1003035DC(controllerCopy, 1, v5, v6, v7, v8, v9, v10, &OBJC_PROTOCOL___CRLNextResponderOverrider);
    v13 = v12;
    if (v12)
    {
      [v12 setNextResponderOverride:0];
    }
  }

  return v11;
}

- (id)nextResponder
{
  nextResponderOverride = [(CRLNavigationController *)self nextResponderOverride];

  if (nextResponderOverride)
  {
    nextResponderOverride2 = [(CRLNavigationController *)self nextResponderOverride];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CRLNavigationController;
    nextResponderOverride2 = [(CRLNavigationController *)&v6 nextResponder];
  }

  return nextResponderOverride2;
}

- (id)popViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  topViewController = [(CRLNavigationController *)self topViewController];
  v12 = sub_1003035DC(topViewController, 1, v6, v7, v8, v9, v10, v11, &OBJC_PROTOCOL___CRLFirstResponderResigning);
  [v12 resignFirstResponderForAnyDescendent];
  v15.receiver = self;
  v15.super_class = CRLNavigationController;
  v13 = [(CRLNavigationController *)&v15 popViewControllerAnimated:animatedCopy];

  return v13;
}

- (void)didMoveToParentViewController:(id)controller
{
  v7.receiver = self;
  v7.super_class = CRLNavigationController;
  [(CRLNavigationController *)&v7 didMoveToParentViewController:controller];
  if (self->_wantsAppearanceUpdateAfterNextMoveToParentVC)
  {
    navigationBar = [(CRLNavigationController *)self navigationBar];
    [navigationBar setTranslucent:0];

    [(CRLNavigationController *)self setExtendedLayoutIncludesOpaqueBars:1];
    v5 = +[UIColor systemBackgroundColor];
    view = [(CRLNavigationController *)self view];
    [view setBackgroundColor:v5];

    self->_wantsAppearanceUpdateAfterNextMoveToParentVC = 0;
  }
}

- (BOOL)crl_preserveEditorSelection
{
  topViewController = [(CRLNavigationController *)self topViewController];
  crl_preserveEditorSelection = [topViewController crl_preserveEditorSelection];

  return crl_preserveEditorSelection;
}

- (int64_t)preferredStatusBarStyle
{
  if ([(CRLNavigationController *)self hasPreferredPartialScreenPresentationStatusBarStyle])
  {

    return [(CRLNavigationController *)self preferredPartialScreenPresentationStatusBarStyle];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = CRLNavigationController;
    return [(CRLNavigationController *)&v4 preferredStatusBarStyle];
  }
}

- (id)childViewControllerForStatusBarHidden
{
  viewControllers = [(CRLNavigationController *)self viewControllers];
  firstObject = [viewControllers firstObject];

  return firstObject;
}

- (CGSize)preferredContentSize
{
  v11.receiver = self;
  v11.super_class = CRLNavigationController;
  [(CRLNavigationController *)&v11 preferredContentSize];
  v4 = v3;
  v6 = v5;
  [(CRLNavigationController *)self preferredContentHeightOverride];
  if (v7 != 0.0)
  {
    [(CRLNavigationController *)self preferredContentHeightOverride];
    v6 = v8;
  }

  v9 = v4;
  v10 = v6;
  result.height = v10;
  result.width = v9;
  return result;
}

- (int64_t)preferredPartialScreenPresentationStatusBarStyle
{
  preferredPartialScreenPresentationStatusBarStyleNumber = [(CRLNavigationController *)self preferredPartialScreenPresentationStatusBarStyleNumber];
  v3 = preferredPartialScreenPresentationStatusBarStyleNumber;
  if (preferredPartialScreenPresentationStatusBarStyleNumber)
  {
    integerValue = [preferredPartialScreenPresentationStatusBarStyleNumber integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)setPreferredPartialScreenPresentationStatusBarStyle:(int64_t)style
{
  v4 = [NSNumber numberWithInteger:style];
  [(CRLNavigationController *)self setPreferredPartialScreenPresentationStatusBarStyleNumber:v4];
}

- (BOOL)hasPreferredPartialScreenPresentationStatusBarStyle
{
  preferredPartialScreenPresentationStatusBarStyleNumber = [(CRLNavigationController *)self preferredPartialScreenPresentationStatusBarStyleNumber];
  v3 = preferredPartialScreenPresentationStatusBarStyleNumber != 0;

  return v3;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  viewControllers = [(CRLNavigationController *)self viewControllers];
  firstObject = [viewControllers firstObject];

  if ([firstObject conformsToProtocol:&OBJC_PROTOCOL___CRLDismissBlockPopover])
  {
    v7 = firstObject;
    onDismiss = [v7 onDismiss];

    if (onDismiss)
    {
      onDismiss2 = [v7 onDismiss];
      onDismiss2[2]();

      [v7 setOnDismiss:0];
    }
  }

  v10.receiver = self;
  v10.super_class = CRLNavigationController;
  [(CRLNavigationController *)&v10 viewDidDisappear:disappearCopy];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = CRLNavigationController;
  coordinatorCopy = coordinator;
  [(CRLNavigationController *)&v8 willTransitionToTraitCollection:collection withTransitionCoordinator:coordinatorCopy];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100440CA0;
  v7[3] = &unk_101848DD8;
  v7[4] = self;
  [coordinatorCopy animateAlongsideTransition:v7 completion:0];
}

@end