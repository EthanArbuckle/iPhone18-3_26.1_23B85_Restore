@interface SVSTopAnimator
- (id)animationControllerForDismissedController:(id)a3;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)animateTransition:(id)a3;
@end

@implementation SVSTopAnimator

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 containerView];
  [(SVSTopAnimator *)self transitionDuration:v4];
  v7 = v6;
  v8 = [v4 viewControllerForKey:UITransitionContextToViewControllerKey];
  v9 = [v8 view];
  [v9 bounds];
  CGAffineTransformMakeTranslation(&v20, 0.0, -v10);
  v11 = [v8 view];
  v19 = v20;
  [v11 setTransform:&v19];

  v12 = [v8 view];
  [v5 addSubview:v12];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100124E20;
  v17[3] = &unk_100195AC0;
  v18 = v8;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100124E78;
  v15[3] = &unk_1001957D0;
  v16 = v4;
  v13 = v4;
  v14 = v8;
  [UIView animateWithDuration:v17 animations:v15 completion:v7];
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [[PopUpPresentationController alloc] initWithPresentedViewController:v7 presentingViewController:v6];

  return v8;
}

- (id)animationControllerForDismissedController:(id)a3
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