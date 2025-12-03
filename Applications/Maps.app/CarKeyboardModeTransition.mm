@interface CarKeyboardModeTransition
- (void)animateTransition:(id)transition;
@end

@implementation CarKeyboardModeTransition

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = [transitionCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  v6 = [transitionCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  containerView = [transitionCopy containerView];
  view = [v6 view];
  [containerView addSubview:view];

  view2 = [v6 view];
  [view2 setAlpha:0.0];

  [(CarKeyboardModeTransition *)self transitionDuration:transitionCopy];
  v11 = v10;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1006AF698;
  v18[3] = &unk_101661A90;
  v19 = v5;
  v20 = v6;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1006AF708;
  v15[3] = &unk_101661570;
  v16 = transitionCopy;
  v17 = v19;
  v12 = v19;
  v13 = transitionCopy;
  v14 = v6;
  [UIView animateWithDuration:5242880 delay:v18 options:v15 animations:v11 completion:0.0];
}

@end