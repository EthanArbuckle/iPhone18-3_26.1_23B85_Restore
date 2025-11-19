@interface DDParsecFadeAnimator
- (void)animateTransition:(id)a3;
@end

@implementation DDParsecFadeAnimator

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 viewControllerForKey:UITransitionContextToViewControllerKey];
  v6 = [v4 viewControllerForKey:UITransitionContextFromViewControllerKey];
  v7 = [v4 containerView];
  v8 = [v5 view];
  [v7 addSubview:v8];

  v9 = [v5 view];
  [v9 setAlpha:0.0];

  [(DDParsecFadeAnimator *)self transitionDuration:v4];
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
  v17 = v4;
  v12 = v4;
  v13 = v20;
  v14 = v5;
  [UIView animateWithDuration:v18 animations:v15 completion:v11];
}

@end