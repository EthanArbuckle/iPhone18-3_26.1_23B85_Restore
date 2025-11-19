@interface ToLookAroundModeTransitionController
- (void)animateTransition:(id)a3;
@end

@implementation ToLookAroundModeTransitionController

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 containerView];
  v6 = [v4 viewControllerForKey:UITransitionContextFromViewControllerKey];
  v7 = [v4 viewControllerForKey:UITransitionContextToViewControllerKey];
  [v4 finalFrameForViewController:v7];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v7 view];
  [v5 addSubview:v16];
  [v16 setFrame:{v9, v11, v13, v15}];
  [v7 animateToModeTransition:v4];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100BCA170;
  v34[3] = &unk_101661A90;
  v17 = v6;
  v35 = v17;
  v18 = v7;
  v36 = v18;
  v19 = objc_retainBlock(v34);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100BCA1B4;
  v30[3] = &unk_101661A40;
  v20 = v4;
  v31 = v20;
  v21 = v17;
  v32 = v21;
  v22 = v18;
  v33 = v22;
  v23 = objc_retainBlock(v30);
  if ([v20 isAnimated])
  {
    [v22 applyTransitionWithProgress:0.0];
    [(ToLookAroundModeTransitionController *)self transitionDuration:v20];
    v25 = v24;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100BCA200;
    v28[3] = &unk_101661760;
    v29 = v19;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100BCA210;
    v26[3] = &unk_10165F438;
    v27 = v23;
    [UIView animateWithDuration:v28 animations:v26 completion:v25];
  }

  else
  {
    (v19[2])(v19);
    (v23[2])(v23);
  }
}

@end