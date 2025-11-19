@interface TabSelectionPresentationAnimationController
- (TabSelectionPresentationAnimationController)initWithSourceView:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation TabSelectionPresentationAnimationController

- (TabSelectionPresentationAnimationController)initWithSourceView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TabSelectionPresentationAnimationController;
  v6 = [(TabSelectionPresentationAnimationController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceView, a3);
  }

  return v7;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  [(TabSelectionPresentationAnimationController *)self transitionDuration:v4];
  v6 = v5;
  v7 = [v4 viewForKey:UITransitionContextToViewKey];
  v8 = [v4 viewControllerForKey:UITransitionContextToViewControllerKey];
  v9 = [v4 containerView];
  v10 = [(TabSelectionPresentationAnimationController *)self sourceView];
  v11 = [v10 window];
  v12 = [(TabSelectionPresentationAnimationController *)self sourceView];
  [v12 frame];
  [v11 convertRect:v9 toView:?];
  x = v13;
  y = v15;
  width = v17;
  height = v19;

  v21 = [(TabSelectionPresentationAnimationController *)self sourceView];
  v22 = [v21 superview];
  objc_opt_class();
  LOBYTE(v12) = objc_opt_isKindOfClass();

  if (v12)
  {
    v23 = [(TabSelectionPresentationAnimationController *)self sourceView];
    v24 = [v23 superview];

    [v24 contentOffset];
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
  v30 = [(TabSelectionPresentationAnimationController *)self sourceView];
  v31 = v30;
  if (v30)
  {
    [v30 transform3D];
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

  v32 = [(TabSelectionPresentationAnimationController *)self sourceView];
  v33 = [v32 layer];
  v65 = v6;
  [v33 anchorPoint];
  v35 = v34;
  v37 = v36;

  [v4 finalFrameForViewController:v8];
  v63 = v39;
  v64 = v38;
  v41 = v40;
  v43 = v42;
  v44 = [(TabSelectionPresentationAnimationController *)self sourceView];
  v45 = [v44 superview];
  v46 = [v45 layer];
  v47 = v46;
  if (v46)
  {
    [v46 sublayerTransform];
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

  v48 = [v9 layer];
  v88 = v96;
  v89 = v97;
  v90 = v98;
  v91 = v99;
  v84 = v92;
  v85 = v93;
  v86 = v94;
  v87 = v95;
  [v48 setSublayerTransform:&v84];

  [v9 addSubview:v7];
  v49 = [(TabSelectionPresentationAnimationController *)self sourceView];
  [v49 setHidden:1];

  v50 = [v7 layer];
  [v50 setAnchorPoint:{v35, v37}];

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
  v61 = v4;
  v67 = v61;
  v62 = v8;
  v68 = v62;
  [UIView animateWithDuration:0 delay:v69 options:v66 animations:v65 completion:0.0];
}

@end