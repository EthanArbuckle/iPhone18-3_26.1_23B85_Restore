@interface ChromeMapToMapTransition
- (void)animateTransition:(id)a3;
@end

@implementation ChromeMapToMapTransition

- (void)animateTransition:(id)a3
{
  v3 = a3;
  v4 = [v3 containerView];
  v5 = [v3 viewControllerForKey:UITransitionContextToViewControllerKey];
  [v3 finalFrameForViewController:v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v5 view];
  [v4 addSubview:v14];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1006DF8B0;
  v16[3] = &unk_10164E3F8;
  v17 = v5;
  v18 = v7;
  v19 = v9;
  v20 = v11;
  v21 = v13;
  v15 = v5;
  [UIView performWithoutAnimation:v16];
  [v3 completeTransition:1];
}

@end