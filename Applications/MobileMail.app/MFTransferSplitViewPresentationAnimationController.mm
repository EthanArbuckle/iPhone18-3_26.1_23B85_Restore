@interface MFTransferSplitViewPresentationAnimationController
- (void)animateTransition:(id)a3;
@end

@implementation MFTransferSplitViewPresentationAnimationController

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v61 = v4;
  v60 = [v4 viewControllerForKey:UITransitionContextToViewControllerKey];
  v59 = [v4 viewControllerForKey:UITransitionContextFromViewControllerKey];
  v5 = [v59 rootViewController];
  v58 = v5;
  v57 = objc_opt_new();
  v6 = +[UIColor clearColor];
  [v57 setBorderColor:v6];

  [v60 setConfiguration:v57];
  v56 = [v4 containerView];
  v7 = [v60 view];
  [v56 addSubview:v7];

  v55 = [v5 viewControllerForColumn:0];
  v8 = [v55 view];
  v65 = [v8 snapshotViewAfterScreenUpdates:0];

  v9 = [v60 viewControllerForColumn:0];
  v10 = [v9 view];

  v66 = v10;
  v11 = [v10 superview];
  [v11 insertSubview:v65 below:v10];

  v12 = [v10 superview];
  [v12 setClipsToBounds:1];

  v54 = [v5 viewControllerForColumn:1];
  v13 = [v54 view];
  v64 = [v13 snapshotViewAfterScreenUpdates:0];

  v14 = [v60 viewControllerForColumn:1];
  v15 = [v14 view];

  v16 = [v15 superview];
  [v16 insertSubview:v64 below:v15];

  v17 = [v15 superview];
  [v17 setClipsToBounds:1];

  v18 = [v56 _shouldReverseLayoutDirection];
  sub_1002261EC(v15, v18 ^ 1);
  [v10 frame];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [v15 frame];
  v62 = v28;
  v63 = v27;
  v30 = v29;
  v32 = v31;
  v33 = -v24;
  if (v18)
  {
    v33 = v24;
  }

  [v10 setFrame:{v20 + v33, v22, v24, v26}];
  v34 = v24 + v32;
  if (!v18)
  {
    v34 = -(v24 + v32);
  }

  [v15 setFrame:{v30 + v34, v63, v32, v62}];
  v35 = [v5 messageDetailNavController];
  v36 = [v35 view];
  [v36 setAlpha:0.0];
  v37 = v20;

  v38 = [UIViewPropertyAnimator alloc];
  [(MFTransferSplitViewPresentationAnimationController *)self transitionDuration:v4];
  v40 = v39;
  v79[0] = _NSConcreteStackBlock;
  v79[1] = 3221225472;
  v79[2] = sub_100226380;
  v79[3] = &unk_100655D70;
  v53 = v66;
  v80 = v53;
  v82 = v37;
  v83 = v22;
  v84 = v24;
  v85 = v26;
  v41 = v15;
  v81 = v41;
  v86 = v30;
  v87 = v63;
  v88 = v32;
  v89 = v62;
  v42 = [v38 initWithDuration:v79 dampingRatio:v40 animations:1.0];
  v43 = [UIViewPropertyAnimator alloc];
  v77[0] = _NSConcreteStackBlock;
  v77[1] = 3221225472;
  v77[2] = sub_1002263CC;
  v77[3] = &unk_10064C7E8;
  v44 = v41;
  v78 = v44;
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_100226430;
  v75[3] = &unk_100655D98;
  v45 = [v43 initWithDuration:2 curve:v77 animations:0.2];
  v76 = v45;
  [v42 addCompletion:v75];
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_100226438;
  v67[3] = &unk_100655DC0;
  v46 = v65;
  v68 = v46;
  v47 = v64;
  v69 = v47;
  v48 = v44;
  v70 = v48;
  v49 = v58;
  v71 = v49;
  v50 = v57;
  v72 = v50;
  v51 = v60;
  v73 = v51;
  v52 = v61;
  v74 = v52;
  [v45 addCompletion:v67];
  [v42 startAnimation];
}

@end