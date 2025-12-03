@interface ModeTransitionController
- (void)animateTransition:(id)transition;
@end

@implementation ModeTransitionController

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  containerView = [transitionCopy containerView];
  v6 = [transitionCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  v7 = [transitionCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  view = [v6 view];
  view2 = [v7 view];
  subviews = [containerView subviews];
  v11 = [subviews containsObject:view];

  if ((v11 & 1) == 0)
  {
    [containerView addSubview:view];
  }

  subviews2 = [containerView subviews];
  v13 = [subviews2 containsObject:view2];

  if ((v13 & 1) == 0)
  {
    [containerView addSubview:view2];
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100BC9DB4;
  v24[3] = &unk_101661A90;
  v14 = v7;
  v25 = v14;
  v15 = v6;
  v26 = v15;
  v16 = objc_retainBlock(v24);
  if ([transitionCopy isAnimated])
  {
    [v15 applyTransitionWithProgress:0.0];
    [(ModeTransitionController *)self transitionDuration:transitionCopy];
    v18 = v17;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100BC9DF8;
    v22[3] = &unk_101661760;
    v23 = v16;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100BC9E08;
    v19[3] = &unk_101661570;
    v20 = transitionCopy;
    v21 = v14;
    [UIView animateWithDuration:v22 animations:v19 completion:v18];
  }

  else
  {
    (v16[2])(v16);
    [transitionCopy completeTransition:1];
  }
}

@end