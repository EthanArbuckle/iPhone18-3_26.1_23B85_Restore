@interface CarKeyboardModeTransition
- (void)animateTransition:(id)a3;
@end

@implementation CarKeyboardModeTransition

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 viewControllerForKey:UITransitionContextFromViewControllerKey];
  v6 = [v4 viewControllerForKey:UITransitionContextToViewControllerKey];
  v7 = [v4 containerView];
  v8 = [v6 view];
  [v7 addSubview:v8];

  v9 = [v6 view];
  [v9 setAlpha:0.0];

  [(CarKeyboardModeTransition *)self transitionDuration:v4];
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
  v16 = v4;
  v17 = v19;
  v12 = v19;
  v13 = v4;
  v14 = v6;
  [UIView animateWithDuration:5242880 delay:v18 options:v15 animations:v11 completion:0.0];
}

@end