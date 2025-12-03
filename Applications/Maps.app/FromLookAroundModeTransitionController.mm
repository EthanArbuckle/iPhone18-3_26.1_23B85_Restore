@interface FromLookAroundModeTransitionController
- (void)animateTransition:(id)transition;
@end

@implementation FromLookAroundModeTransitionController

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  containerView = [transitionCopy containerView];
  v6 = [transitionCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  v7 = [transitionCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  [transitionCopy finalFrameForViewController:v6];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  view = [v6 view];
  view2 = [v7 view];
  [containerView insertSubview:view belowSubview:view2];
  [view setFrame:{v9, v11, v13, v15}];
  [view layoutIfNeeded];
  [v6 lookAroundButtonFrame];
  [v7 setLookAroundButtonFrame:?];
  [v7 animateFromModeTransition:transitionCopy];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100BCA54C;
  v31[3] = &unk_101661A90;
  v18 = v7;
  v32 = v18;
  v19 = v6;
  v33 = v19;
  v20 = objc_retainBlock(v31);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100BCA590;
  v29[3] = &unk_101661B18;
  v21 = transitionCopy;
  v30 = v21;
  v22 = objc_retainBlock(v29);
  if ([v21 isAnimated])
  {
    [v19 applyTransitionWithProgress:0.0];
    [(FromLookAroundModeTransitionController *)self transitionDuration:v21];
    v24 = v23;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100BCA59C;
    v27[3] = &unk_101661760;
    v28 = v20;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100BCA5AC;
    v25[3] = &unk_10165F438;
    v26 = v22;
    [UIView animateWithDuration:v27 animations:v25 completion:v24];
  }

  else
  {
    (v20[2])(v20);
    (v22[2])(v22);
  }
}

@end