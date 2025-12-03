@interface FullscreenImageViewControllerZoomAnimationController
- (FullscreenImageViewControllerZoomAnimationController)initWithOriginalImageView:(id)view;
- (void)animateTransition:(id)transition;
@end

@implementation FullscreenImageViewControllerZoomAnimationController

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = [transitionCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  v6 = [transitionCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  isBeingPresented = [v6 isBeingPresented];
  if (isBeingPresented)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contentView = [v9 contentView];
    [contentView setAlpha:0.0];

    [(UIImageView *)self->_originalImageView setAlpha:0.0];
    containerView = [transitionCopy containerView];
    view = [v6 view];
    if (isBeingPresented)
    {
      [containerView addSubview:view];
    }

    else
    {
      [containerView sendSubviewToBack:view];
    }

    v13 = [UIImageView alloc];
    image = [(UIImageView *)self->_originalImageView image];
    v15 = [v13 initWithImage:image];

    [v15 setContentMode:{-[UIImageView contentMode](self->_originalImageView, "contentMode")}];
    [v15 setClipsToBounds:1];
    containerView2 = [transitionCopy containerView];
    [containerView2 addSubview:v15];

    containerView3 = [transitionCopy containerView];
    [(UIImageView *)self->_originalImageView bounds];
    [containerView3 convertRect:self->_originalImageView fromView:?];
    v69 = v19;
    v71 = v18;
    v65 = v21;
    v67 = v20;

    if (isBeingPresented)
    {
      [transitionCopy finalFrameForViewController:v6];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
    }

    else
    {
      containerView4 = [transitionCopy containerView];
      contentView2 = [v5 contentView];
      [contentView2 bounds];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;
      contentView3 = [v5 contentView];
      [containerView4 convertRect:contentView3 fromView:{v33, v35, v37, v39}];
      v23 = v41;
      v25 = v42;
      v27 = v43;
      v29 = v44;
    }

    v45 = [(UIImageView *)self->_originalImageView image:v65];
    [v45 size];
    v47 = v27 / v46;

    image2 = [(UIImageView *)self->_originalImageView image];
    [image2 size];
    v50 = v29 / v49;

    v51 = fmin(v47, v50);
    image3 = [(UIImageView *)self->_originalImageView image];
    [image3 size];
    v54 = v53 * v51;
    image4 = [(UIImageView *)self->_originalImageView image];
    [image4 size];
    v57 = v56 * v51;

    v85.origin.x = v23;
    v85.origin.y = v25;
    v85.size.width = v27;
    v85.size.height = v29;
    v58 = CGRectGetMidX(v85) - v54 * 0.5;
    v86.origin.x = v23;
    v86.origin.y = v25;
    v86.size.width = v27;
    v86.size.height = v29;
    v59 = CGRectGetMidY(v86) - v57 * 0.5;
    if (isBeingPresented)
    {
      [v15 setFrame:{v72, v70, v68, v66}];
      view2 = [v6 view];
      [view2 setAlpha:0.0];

      v61 = 1.0;
    }

    else
    {
      [v15 setFrame:{v58, v59, v54, v57}];
      v61 = 0.0;
      v57 = v66;
      v54 = v68;
      v59 = v70;
      v58 = v72;
    }

    [(FullscreenImageViewControllerZoomAnimationController *)self transitionDuration:transitionCopy];
    v63 = v62;
    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_1008AAA10;
    v77[3] = &unk_10162D290;
    v78 = v9;
    v80 = v61;
    v79 = v15;
    v81 = v58;
    v82 = v59;
    v83 = v54;
    v84 = v57;
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_1008AAA74;
    v73[3] = &unk_101656038;
    v73[4] = self;
    v74 = v78;
    v75 = v79;
    v76 = transitionCopy;
    v64 = v79;
    [UIView animateWithDuration:0x20000 delay:v77 options:v73 animations:v63 completion:0.0];
  }

  else
  {
    [transitionCopy completeTransition:0];
  }
}

- (FullscreenImageViewControllerZoomAnimationController)initWithOriginalImageView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = FullscreenImageViewControllerZoomAnimationController;
  v6 = [(FullscreenImageViewControllerZoomAnimationController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalImageView, view);
    v8 = v7;
  }

  return v7;
}

@end