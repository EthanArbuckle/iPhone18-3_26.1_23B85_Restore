@interface TabSelectionPresentationAnimationController
- (TabSelectionPresentationAnimationController)initWithSourceView:(id)view;
- (void)animateTransition:(id)transition;
@end

@implementation TabSelectionPresentationAnimationController

- (TabSelectionPresentationAnimationController)initWithSourceView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = TabSelectionPresentationAnimationController;
  v6 = [(TabSelectionPresentationAnimationController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceView, view);
  }

  return v7;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  [(TabSelectionPresentationAnimationController *)self transitionDuration:transitionCopy];
  v6 = v5;
  v7 = [transitionCopy viewForKey:UITransitionContextToViewKey];
  v8 = [transitionCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  containerView = [transitionCopy containerView];
  sourceView = [(TabSelectionPresentationAnimationController *)self sourceView];
  window = [sourceView window];
  sourceView2 = [(TabSelectionPresentationAnimationController *)self sourceView];
  [sourceView2 frame];
  [window convertRect:containerView toView:?];
  x = v13;
  y = v15;
  width = v17;
  height = v19;

  sourceView3 = [(TabSelectionPresentationAnimationController *)self sourceView];
  superview = [sourceView3 superview];
  objc_opt_class();
  LOBYTE(sourceView2) = objc_opt_isKindOfClass();

  if (sourceView2)
  {
    sourceView4 = [(TabSelectionPresentationAnimationController *)self sourceView];
    superview2 = [sourceView4 superview];

    [superview2 contentOffset];
    v26 = -v25;
    v28 = -v27;
    v108.origin.x = x;
    v108.origin.y = y;
    v108.size.width = width;
    v108.size.height = height;
    v109 = CGRectOffset(v108, v26, v28);
    x = v109.origin.x;
    y = v109.origin.y;
    width = v109.size.width;
    height = v109.size.height;
  }

  *&v29 = -1;
  *(&v29 + 1) = -1;
  v106 = v29;
  v107 = v29;
  v104 = v29;
  v105 = v29;
  v102 = v29;
  v103 = v29;
  v100 = v29;
  v101 = v29;
  sourceView5 = [(TabSelectionPresentationAnimationController *)self sourceView];
  v31 = sourceView5;
  if (sourceView5)
  {
    [sourceView5 transform3D];
  }

  else
  {
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
  }

  sourceView6 = [(TabSelectionPresentationAnimationController *)self sourceView];
  layer = [sourceView6 layer];
  v65 = v6;
  [layer anchorPoint];
  v35 = v34;
  v37 = v36;

  [transitionCopy finalFrameForViewController:v8];
  v63 = v39;
  v64 = v38;
  v41 = v40;
  v43 = v42;
  sourceView7 = [(TabSelectionPresentationAnimationController *)self sourceView];
  superview3 = [sourceView7 superview];
  layer2 = [superview3 layer];
  v47 = layer2;
  if (layer2)
  {
    [layer2 sublayerTransform];
  }

  else
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
  }

  layer3 = [containerView layer];
  v88 = v96;
  v89 = v97;
  v90 = v98;
  v91 = v99;
  v84 = v92;
  v85 = v93;
  v86 = v94;
  v87 = v95;
  [layer3 setSublayerTransform:&v84];

  [containerView addSubview:v7];
  sourceView8 = [(TabSelectionPresentationAnimationController *)self sourceView];
  [sourceView8 setHidden:1];

  layer4 = [v7 layer];
  [layer4 setAnchorPoint:{v35, v37}];

  v88 = v104;
  v89 = v105;
  v90 = v106;
  v91 = v107;
  v84 = v100;
  v85 = v101;
  v86 = v102;
  v87 = v103;
  [v7 setTransform3D:&v84];
  [v7 setFrame:{x, y, width, height}];
  [v7 layoutIfNeeded];
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_1002514CC;
  v69[3] = &unk_100656930;
  v51 = v7;
  v70 = v51;
  v71 = v64;
  v72 = v41;
  v73 = v43;
  v74 = v63;
  v52 = *&CATransform3DIdentity.m33;
  v79 = *&CATransform3DIdentity.m31;
  v80 = v52;
  v53 = *&CATransform3DIdentity.m43;
  v81 = *&CATransform3DIdentity.m41;
  v82 = v53;
  v54 = *&CATransform3DIdentity.m13;
  v75 = *&CATransform3DIdentity.m11;
  v76 = v54;
  v55 = *&CATransform3DIdentity.m23;
  v77 = *&CATransform3DIdentity.m21;
  v78 = v55;
  __asm { FMOV            V0.2D, #0.5 }

  v83 = _Q0;
  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_100251584;
  v66[3] = &unk_10064FC70;
  v61 = transitionCopy;
  v67 = v61;
  v62 = v8;
  v68 = v62;
  [UIView animateWithDuration:0 delay:v69 options:v66 animations:v65 completion:0.0];
}

@end