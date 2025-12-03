@interface SVSTopAnimator
- (id)animationControllerForDismissedController:(id)controller;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)animateTransition:(id)transition;
@end

@implementation SVSTopAnimator

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  containerView = [transitionCopy containerView];
  [(SVSTopAnimator *)self transitionDuration:transitionCopy];
  v7 = v6;
  v8 = [transitionCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  view = [v8 view];
  [view bounds];
  CGAffineTransformMakeTranslation(&v20, 0.0, -v10);
  view2 = [v8 view];
  v19 = v20;
  [view2 setTransform:&v19];

  view3 = [v8 view];
  [containerView addSubview:view3];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100124E20;
  v17[3] = &unk_100195AC0;
  v18 = v8;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100124E78;
  v15[3] = &unk_1001957D0;
  v16 = transitionCopy;
  v13 = transitionCopy;
  v14 = v8;
  [UIView animateWithDuration:v17 animations:v15 completion:v7];
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v8 = [[PopUpPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

  return v8;
}

- (id)animationControllerForDismissedController:(id)controller
{
  dismissAnimator = self->_dismissAnimator;
  if (!dismissAnimator)
  {
    v5 = objc_alloc_init(SVSTopDismissAnimator);
    v6 = self->_dismissAnimator;
    self->_dismissAnimator = v5;

    dismissAnimator = self->_dismissAnimator;
  }

  return dismissAnimator;
}

@end