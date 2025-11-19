@interface FullscreenImageViewControllerZoomAnimationController
- (FullscreenImageViewControllerZoomAnimationController)initWithOriginalImageView:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation FullscreenImageViewControllerZoomAnimationController

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 viewControllerForKey:UITransitionContextFromViewControllerKey];
  v6 = [v4 viewControllerForKey:UITransitionContextToViewControllerKey];
  v7 = [v6 isBeingPresented];
  if (v7)
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
    v10 = [v9 contentView];
    [v10 setAlpha:0.0];

    [(UIImageView *)self->_originalImageView setAlpha:0.0];
    v11 = [v4 containerView];
    v12 = [v6 view];
    if (v7)
    {
      [v11 addSubview:v12];
    }

    else
    {
      [v11 sendSubviewToBack:v12];
    }

    v13 = [UIImageView alloc];
    v14 = [(UIImageView *)self->_originalImageView image];
    v15 = [v13 initWithImage:v14];

    [v15 setContentMode:{-[UIImageView contentMode](self->_originalImageView, "contentMode")}];
    [v15 setClipsToBounds:1];
    v16 = [v4 containerView];
    [v16 addSubview:v15];

    v17 = [v4 containerView];
    [(UIImageView *)self->_originalImageView bounds];
    [v17 convertRect:self->_originalImageView fromView:?];
    v69 = v19;
    v71 = v18;
    v65 = v21;
    v67 = v20;

    if (v7)
    {
      [v4 finalFrameForViewController:v6];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
    }

    else
    {
      v30 = [v4 containerView];
      v31 = [v5 contentView];
      [v31 bounds];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v40 = [v5 contentView];
      [v30 convertRect:v40 fromView:{v33, v35, v37, v39}];
      v23 = v41;
      v25 = v42;
      v27 = v43;
      v29 = v44;
    }

    v45 = [(UIImageView *)self->_originalImageView image:v65];
    [v45 size];
    v47 = v27 / v46;

    v48 = [(UIImageView *)self->_originalImageView image];
    [v48 size];
    v50 = v29 / v49;

    v51 = fmin(v47, v50);
    v52 = [(UIImageView *)self->_originalImageView image];
    [v52 size];
    v54 = v53 * v51;
    v55 = [(UIImageView *)self->_originalImageView image];
    [v55 size];
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
    if (v7)
    {
      [v15 setFrame:{v72, v70, v68, v66}];
      v60 = [v6 view];
      [v60 setAlpha:0.0];

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

    [(FullscreenImageViewControllerZoomAnimationController *)self transitionDuration:v4];
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
    v76 = v4;
    v64 = v79;
    [UIView animateWithDuration:0x20000 delay:v77 options:v73 animations:v63 completion:0.0];
  }

  else
  {
    [v4 completeTransition:0];
  }
}

- (FullscreenImageViewControllerZoomAnimationController)initWithOriginalImageView:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = FullscreenImageViewControllerZoomAnimationController;
  v6 = [(FullscreenImageViewControllerZoomAnimationController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalImageView, a3);
    v8 = v7;
  }

  return v7;
}

@end