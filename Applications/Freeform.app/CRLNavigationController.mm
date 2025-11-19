@interface CRLNavigationController
- (BOOL)crl_preserveEditorSelection;
- (BOOL)hasPreferredPartialScreenPresentationStatusBarStyle;
- (CGSize)preferredContentSize;
- (CRLNavigationController)initWithRootViewController:(id)a3;
- (id)childViewControllerForStatusBarHidden;
- (id)nextResponder;
- (id)popViewControllerAnimated:(BOOL)a3;
- (int64_t)preferredPartialScreenPresentationStatusBarStyle;
- (int64_t)preferredStatusBarStyle;
- (void)didMoveToParentViewController:(id)a3;
- (void)setPreferredPartialScreenPresentationStatusBarStyle:(int64_t)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CRLNavigationController

- (CRLNavigationController)initWithRootViewController:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CRLNavigationController;
  v11 = [(CRLNavigationController *)&v15 initWithRootViewController:v4];
  if (v11)
  {
    v12 = sub_1003035DC(v4, 1, v5, v6, v7, v8, v9, v10, &OBJC_PROTOCOL___CRLNextResponderOverrider);
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
  v3 = [(CRLNavigationController *)self nextResponderOverride];

  if (v3)
  {
    v4 = [(CRLNavigationController *)self nextResponderOverride];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CRLNavigationController;
    v4 = [(CRLNavigationController *)&v6 nextResponder];
  }

  return v4;
}

- (id)popViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CRLNavigationController *)self topViewController];
  v12 = sub_1003035DC(v5, 1, v6, v7, v8, v9, v10, v11, &OBJC_PROTOCOL___CRLFirstResponderResigning);
  [v12 resignFirstResponderForAnyDescendent];
  v15.receiver = self;
  v15.super_class = CRLNavigationController;
  v13 = [(CRLNavigationController *)&v15 popViewControllerAnimated:v3];

  return v13;
}

- (void)didMoveToParentViewController:(id)a3
{
  v7.receiver = self;
  v7.super_class = CRLNavigationController;
  [(CRLNavigationController *)&v7 didMoveToParentViewController:a3];
  if (self->_wantsAppearanceUpdateAfterNextMoveToParentVC)
  {
    v4 = [(CRLNavigationController *)self navigationBar];
    [v4 setTranslucent:0];

    [(CRLNavigationController *)self setExtendedLayoutIncludesOpaqueBars:1];
    v5 = +[UIColor systemBackgroundColor];
    v6 = [(CRLNavigationController *)self view];
    [v6 setBackgroundColor:v5];

    self->_wantsAppearanceUpdateAfterNextMoveToParentVC = 0;
  }
}

- (BOOL)crl_preserveEditorSelection
{
  v2 = [(CRLNavigationController *)self topViewController];
  v3 = [v2 crl_preserveEditorSelection];

  return v3;
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
  v2 = [(CRLNavigationController *)self viewControllers];
  v3 = [v2 firstObject];

  return v3;
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
  v2 = [(CRLNavigationController *)self preferredPartialScreenPresentationStatusBarStyleNumber];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPreferredPartialScreenPresentationStatusBarStyle:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  [(CRLNavigationController *)self setPreferredPartialScreenPresentationStatusBarStyleNumber:v4];
}

- (BOOL)hasPreferredPartialScreenPresentationStatusBarStyle
{
  v2 = [(CRLNavigationController *)self preferredPartialScreenPresentationStatusBarStyleNumber];
  v3 = v2 != 0;

  return v3;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(CRLNavigationController *)self viewControllers];
  v6 = [v5 firstObject];

  if ([v6 conformsToProtocol:&OBJC_PROTOCOL___CRLDismissBlockPopover])
  {
    v7 = v6;
    v8 = [v7 onDismiss];

    if (v8)
    {
      v9 = [v7 onDismiss];
      v9[2]();

      [v7 setOnDismiss:0];
    }
  }

  v10.receiver = self;
  v10.super_class = CRLNavigationController;
  [(CRLNavigationController *)&v10 viewDidDisappear:v3];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v8.receiver = self;
  v8.super_class = CRLNavigationController;
  v6 = a4;
  [(CRLNavigationController *)&v8 willTransitionToTraitCollection:a3 withTransitionCoordinator:v6];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100440CA0;
  v7[3] = &unk_101848DD8;
  v7[4] = self;
  [v6 animateAlongsideTransition:v7 completion:0];
}

@end