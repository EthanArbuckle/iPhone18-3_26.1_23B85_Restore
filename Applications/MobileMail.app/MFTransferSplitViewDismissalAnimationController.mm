@interface MFTransferSplitViewDismissalAnimationController
- (void)animateTransition:(id)a3;
@end

@implementation MFTransferSplitViewDismissalAnimationController

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v52 = [v4 viewControllerForKey:UITransitionContextToViewControllerKey];
  v51 = [v4 viewControllerForKey:UITransitionContextFromViewControllerKey];
  v5 = [v4 containerView];
  v6 = [v52 view];
  [v5 addSubview:v6];

  [v4 finalFrameForViewController:v52];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v51 viewControllerForColumn:0];
  v16 = [v15 view];

  v53 = [v16 snapshotViewAfterScreenUpdates:0];
  [v5 addSubview:v53];
  v17 = [v51 viewControllerForColumn:1];
  v18 = [v17 view];

  v19 = [v18 snapshotViewAfterScreenUpdates:0];
  [v5 addSubview:v19];
  v20 = [v5 _shouldReverseLayoutDirection];
  sub_1002261EC(v19, v20 ^ 1);
  [v16 bounds];
  [v16 convertRect:v5 toView:?];
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
  [v18 bounds];
  [v18 convertRect:v5 toView:?];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  [v19 setFrame:?];
  if (v20)
  {
    v37 = v26;
  }

  else
  {
    v37 = -v26;
  }

  if (v20)
  {
    v38 = v26 + v34;
  }

  else
  {
    v38 = -(v26 + v34);
  }

  [v16 setAlpha:0.0];
  [v18 setAlpha:0.0];
  [(MFTransferSplitViewDismissalAnimationController *)self transitionDuration:v4];
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
  v43 = v4;
  v57 = v43;
  [UIView animateWithDuration:0 delay:v58 usingSpringWithDamping:v54 initialSpringVelocity:v44 options:0.0 animations:1.0 completion:0.0];
}

@end