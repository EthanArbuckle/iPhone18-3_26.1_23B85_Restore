@interface MFTransferSplitViewPresentationAnimationController
- (void)animateTransition:(id)transition;
@end

@implementation MFTransferSplitViewPresentationAnimationController

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v61 = transitionCopy;
  v60 = [transitionCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  v59 = [transitionCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  rootViewController = [v59 rootViewController];
  v58 = rootViewController;
  v57 = objc_opt_new();
  v6 = +[UIColor clearColor];
  [v57 setBorderColor:v6];

  [v60 setConfiguration:v57];
  containerView = [transitionCopy containerView];
  view = [v60 view];
  [containerView addSubview:view];

  v55 = [rootViewController viewControllerForColumn:0];
  view2 = [v55 view];
  v65 = [view2 snapshotViewAfterScreenUpdates:0];

  v9 = [v60 viewControllerForColumn:0];
  view3 = [v9 view];

  v66 = view3;
  superview = [view3 superview];
  [superview insertSubview:v65 below:view3];

  superview2 = [view3 superview];
  [superview2 setClipsToBounds:1];

  v54 = [rootViewController viewControllerForColumn:1];
  view4 = [v54 view];
  v64 = [view4 snapshotViewAfterScreenUpdates:0];

  v14 = [v60 viewControllerForColumn:1];
  view5 = [v14 view];

  superview3 = [view5 superview];
  [superview3 insertSubview:v64 below:view5];

  superview4 = [view5 superview];
  [superview4 setClipsToBounds:1];

  _shouldReverseLayoutDirection = [containerView _shouldReverseLayoutDirection];
  sub_1002261EC(view5, _shouldReverseLayoutDirection ^ 1);
  [view3 frame];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [view5 frame];
  v62 = v28;
  v63 = v27;
  v30 = v29;
  v32 = v31;
  v33 = -v24;
  if (_shouldReverseLayoutDirection)
  {
    v33 = v24;
  }

  [view3 setFrame:{v20 + v33, v22, v24, v26}];
  v34 = v24 + v32;
  if (!_shouldReverseLayoutDirection)
  {
    v34 = -(v24 + v32);
  }

  [view5 setFrame:{v30 + v34, v63, v32, v62}];
  messageDetailNavController = [rootViewController messageDetailNavController];
  view6 = [messageDetailNavController view];
  [view6 setAlpha:0.0];
  v37 = v20;

  v38 = [UIViewPropertyAnimator alloc];
  [(MFTransferSplitViewPresentationAnimationController *)self transitionDuration:transitionCopy];
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
  v41 = view5;
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