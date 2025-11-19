@interface ModeTransitionController
- (void)animateTransition:(id)a3;
@end

@implementation ModeTransitionController

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 containerView];
  v6 = [v4 viewControllerForKey:UITransitionContextToViewControllerKey];
  v7 = [v4 viewControllerForKey:UITransitionContextFromViewControllerKey];
  v8 = [v6 view];
  v9 = [v7 view];
  v10 = [v5 subviews];
  v11 = [v10 containsObject:v8];

  if ((v11 & 1) == 0)
  {
    [v5 addSubview:v8];
  }

  v12 = [v5 subviews];
  v13 = [v12 containsObject:v9];

  if ((v13 & 1) == 0)
  {
    [v5 addSubview:v9];
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
  if ([v4 isAnimated])
  {
    [v15 applyTransitionWithProgress:0.0];
    [(ModeTransitionController *)self transitionDuration:v4];
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
    v20 = v4;
    v21 = v14;
    [UIView animateWithDuration:v22 animations:v19 completion:v18];
  }

  else
  {
    (v16[2])(v16);
    [v4 completeTransition:1];
  }
}

@end