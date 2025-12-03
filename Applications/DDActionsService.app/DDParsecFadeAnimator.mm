@interface DDParsecFadeAnimator
- (void)animateTransition:(id)transition;
@end

@implementation DDParsecFadeAnimator

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = [transitionCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  v6 = [transitionCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  containerView = [transitionCopy containerView];
  view = [v5 view];
  [containerView addSubview:view];

  view2 = [v5 view];
  [view2 setAlpha:0.0];

  [(DDParsecFadeAnimator *)self transitionDuration:transitionCopy];
  v11 = v10;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000050F4;
  v18[3] = &unk_1000189B8;
  v19 = v5;
  v20 = v6;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100005164;
  v15[3] = &unk_1000189E0;
  v16 = v20;
  v17 = transitionCopy;
  v12 = transitionCopy;
  v13 = v20;
  v14 = v5;
  [UIView animateWithDuration:v18 animations:v15 completion:v11];
}

@end