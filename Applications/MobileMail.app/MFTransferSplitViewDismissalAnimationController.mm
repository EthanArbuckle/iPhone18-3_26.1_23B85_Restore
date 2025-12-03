@interface MFTransferSplitViewDismissalAnimationController
- (void)animateTransition:(id)transition;
@end

@implementation MFTransferSplitViewDismissalAnimationController

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v52 = [transitionCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  v51 = [transitionCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  containerView = [transitionCopy containerView];
  view = [v52 view];
  [containerView addSubview:view];

  [transitionCopy finalFrameForViewController:v52];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v51 viewControllerForColumn:0];
  view2 = [v15 view];

  v53 = [view2 snapshotViewAfterScreenUpdates:0];
  [containerView addSubview:v53];
  v17 = [v51 viewControllerForColumn:1];
  view3 = [v17 view];

  v19 = [view3 snapshotViewAfterScreenUpdates:0];
  [containerView addSubview:v19];
  _shouldReverseLayoutDirection = [containerView _shouldReverseLayoutDirection];
  sub_1002261EC(v19, _shouldReverseLayoutDirection ^ 1);
  [view2 bounds];
  [view2 convertRect:containerView toView:?];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [v53 setFrame:?];
  v45 = v28;
  v46 = v24;
  v47 = v14;
  v48 = v12;
  v49 = v10;
  v50 = v8;
  [view3 bounds];
  [view3 convertRect:containerView toView:?];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  [v19 setFrame:?];
  if (_shouldReverseLayoutDirection)
  {
    v37 = v26;
  }

  else
  {
    v37 = -v26;
  }

  if (_shouldReverseLayoutDirection)
  {
    v38 = v26 + v34;
  }

  else
  {
    v38 = -(v26 + v34);
  }

  [view2 setAlpha:0.0];
  [view3 setAlpha:0.0];
  [(MFTransferSplitViewDismissalAnimationController *)self transitionDuration:transitionCopy];
  v44 = v39;
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_1002269F4;
  v58[3] = &unk_100655DE8;
  v59 = v53;
  v62 = v22 + v37;
  v63 = v46;
  v64 = v26;
  v65 = v45;
  v60 = v19;
  v66 = v30 + v38;
  v67 = v32;
  v68 = v34;
  v69 = v36;
  v40 = v52;
  v61 = v40;
  v70 = v50;
  v71 = v49;
  v72 = v48;
  v73 = v47;
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100226AA0;
  v54[3] = &unk_10064FB80;
  v41 = v59;
  v55 = v41;
  v42 = v60;
  v56 = v42;
  v43 = transitionCopy;
  v57 = v43;
  [UIView animateWithDuration:0 delay:v58 usingSpringWithDamping:v54 initialSpringVelocity:v44 options:0.0 animations:1.0 completion:0.0];
}

@end