@interface BKBookSlideOpenAnimator
- (double)duration;
- (double)zoomedContentScale;
- (void)_teardownContentViews;
- (void)animateRevealWithCompletion:(id)a3;
- (void)animateZoomWithCompletion:(id)a3;
- (void)setupViewsForReveal;
- (void)setupViewsForZoom;
- (void)teardownViews:(BOOL)a3;
@end

@implementation BKBookSlideOpenAnimator

- (double)duration
{
  [(BKBookSlideOpenAnimator *)self zoomDuration];
  v4 = v3;
  [(BKBookSlideOpenAnimator *)self revealDuration];
  v6 = v4 + v5;
  [(BKBookSlideOpenAnimator *)self accessoryFadeDuration];
  return v6 + v7;
}

- (double)zoomedContentScale
{
  [(BKBookOpenAnimator *)self zoomedCoverFrame];
  Height = CGRectGetHeight(v7);
  v4 = [(BKBookOpenAnimator *)self containerView];
  [v4 bounds];
  v5 = Height / CGRectGetHeight(v8);

  return v5;
}

- (void)_teardownContentViews
{
  v3 = [(BKBookSlideOpenAnimator *)self fullBookSnapshot];
  [v3 removeFromSuperview];

  [(BKBookSlideOpenAnimator *)self setFullBookSnapshot:0];
  v4 = [(BKBookSlideOpenAnimator *)self contentTintView];
  [v4 removeFromSuperview];

  [(BKBookSlideOpenAnimator *)self setContentTintView:0];
  v5 = [(BKBookSlideOpenAnimator *)self contentSnapshot];
  [v5 removeFromSuperview];

  [(BKBookSlideOpenAnimator *)self setContentSnapshot:0];
  v6 = [(BKBookSlideOpenAnimator *)self contentContainerView];
  [v6 removeFromSuperview];

  [(BKBookSlideOpenAnimator *)self setContentContainerView:0];
  v7 = [(BKBookSlideOpenAnimator *)self contentClipView];
  [v7 removeFromSuperview];

  [(BKBookSlideOpenAnimator *)self setContentClipView:0];
}

- (void)teardownViews:(BOOL)a3
{
  v3 = a3;
  [(BKBookSlideOpenAnimator *)self _teardownContentViews];
  v5.receiver = self;
  v5.super_class = BKBookSlideOpenAnimator;
  [(BKBookZoomRevealOpenAnimator *)&v5 teardownViews:v3];
}

- (void)setupViewsForZoom
{
  [(BKBookSlideOpenAnimator *)self _teardownContentViews];
  v3 = [(BKBookOpenAnimator *)self bookContainerView];
  [v3 setAlpha:0.0];

  v5 = [(BKBookOpenAnimator *)self containerView];
  v4 = [(BKBookOpenAnimator *)self coverContainerView];
  [v5 addSubview:v4];
}

- (void)animateZoomWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BKBookOpenAnimator *)self opening];
  [(BKBookOpenAnimator *)self closedCoverFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(BKBookOpenAnimator *)self zoomedCoverFrame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(BKBookSlideOpenAnimator *)self zoomDuration];
  [(BKBookOpenAnimator *)self animateNavigationBarWithDuration:v22 * 0.5 delay:0.0];
  if (v5)
  {
    v38 = v11;
    v39 = v13;
    v23 = v17;
    v17 = v9;
    v36 = v15;
    v15 = v7;
    v41 = 0.0;
    v42 = 0.0;
    v43 = 0x3FA999999999999ALL;
    v40 = 1.0;
    v11 = v19;
    v24 = v23;
    v25 = [(BKBookOpenAnimator *)self fadeInCover];
  }

  else
  {
    v42 = 1.0;
    v43 = 0;
    v38 = v19;
    v39 = v21;
    v40 = 0.0;
    v41 = 0.05;
    v21 = v13;
    v24 = v9;
    v25 = [(BKBookOpenAnimator *)self fadeInCover];
  }

  v26 = 0.0;
  if ((v25 & v5) != 0)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = 1.0;
  }

  if (([(BKBookOpenAnimator *)self fadeInCover]& (v5 ^ 1)) == 0)
  {
    v26 = 1.0;
  }

  v28 = [(BKBookOpenAnimator *)self coverContainerView];
  [v28 setAlpha:v27];

  [(BKBookOpenAnimator *)self moveCoverToFrame:v15, v17, v38, v39];
  v29 = [(BKBookOpenAnimator *)self bookshelfTintView];
  [v29 setAlpha:v41];

  [(BKBookOpenAnimator *)self setBookshelfAlpha:v40];
  [(BKBookSlideOpenAnimator *)self zoomDuration];
  v31 = v30;
  [(BKBookSlideOpenAnimator *)self minibarSlideDuration];
  [(BKBookOpenAnimator *)self minibarKeyFrameAnimationWithDuration:0 hide:v31 show:v32 completion:-1.0];
  [(BKBookSlideOpenAnimator *)self zoomDuration];
  v34 = v33;
  v35 = [(BKBookZoomRevealOpenAnimator *)self zoomTimingFunction];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1000D56DC;
  v45[3] = &unk_100A06128;
  v45[4] = self;
  *&v45[5] = v26;
  v45[6] = v37;
  *&v45[7] = v24;
  *&v45[8] = v11;
  *&v45[9] = v21;
  v45[10] = v43;
  *&v45[11] = v42;
  [UIView animateWithDuration:v35 delay:0 timingFunction:v45 options:v4 animations:v34 completion:0.0];

  [(BKBookSlideOpenAnimator *)self zoomDuration];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1000D576C;
  v44[3] = &unk_100A033C8;
  v44[4] = self;
  [UIView animateWithDuration:v44 animations:?];
}

- (void)setupViewsForReveal
{
  if ([(BKBookOpenAnimator *)self opening]&& ![(BKBookZoomRevealOpenAnimator *)self contentLoaded])
  {
    sub_10078E370();
  }

  [(BKBookOpenAnimator *)self rightToLeft];
  [(BKBookOpenAnimator *)self setBookshelfAlpha:0.0];
  v62 = [(BKBookOpenAnimator *)self bookViewController];
  v3 = [v62 transitionContentView];
  if (!v3)
  {
    sub_10078E3AC();
  }

  v4 = [(BKBookOpenAnimator *)self containerView];
  [v4 bounds];

  [(BKBookOpenAnimator *)self coverAspectRatio];
  v5 = [(BKBookOpenAnimator *)self containerView];
  [v3 frame];
  v7 = v6;
  v9 = v8;
  v10 = [v62 view];
  [v5 convertPoint:v10 fromView:{v7, v9}];

  v11 = [UIView alloc];
  CGRectMakeWithOriginSize();
  v12 = [v11 initWithFrame:?];
  contentClipView = self->_contentClipView;
  self->_contentClipView = v12;

  [(UIView *)self->_contentClipView setClipsToBounds:1];
  v14 = [(BKBookOpenAnimator *)self containerView];
  v15 = [(BKBookSlideOpenAnimator *)self contentClipView];
  v16 = [(BKBookOpenAnimator *)self bookshelfTintView];
  [v14 insertSubview:v15 aboveSubview:v16];

  v17 = [UIView alloc];
  CGRectMakeWithOriginSize();
  v18 = [v17 initWithFrame:?];
  contentContainerView = self->_contentContainerView;
  self->_contentContainerView = v18;

  [(UIView *)self->_contentClipView addSubview:self->_contentContainerView];
  v20 = self->_contentContainerView;
  [v3 frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [v3 superview];
  [(UIView *)v20 convertRect:v29 fromView:v22, v24, v26, v28];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v38 = [v3 snapshotViewAfterScreenUpdates:0];
  contentSnapshot = self->_contentSnapshot;
  self->_contentSnapshot = v38;

  [(UIView *)self->_contentSnapshot setFrame:v31, v33, v35, v37];
  [(UIView *)self->_contentContainerView addSubview:self->_contentSnapshot];
  v40 = [UIView alloc];
  [(UIView *)self->_contentSnapshot bounds];
  v41 = [v40 initWithFrame:?];
  contentTintView = self->_contentTintView;
  self->_contentTintView = v41;

  v43 = +[UIColor blackColor];
  [(UIView *)self->_contentTintView setBackgroundColor:v43];

  [(UIView *)self->_contentSnapshot addSubview:self->_contentTintView];
  [(UIView *)self->_contentTintView setAutoresizingMask:18];
  if (objc_opt_respondsToSelector())
  {
    v44 = [v62 transitionContentBackgroundColor];
    [(UIView *)self->_contentContainerView setBackgroundColor:v44];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v62 transitionContentViewIsFullBookView] & 1) == 0)
  {
    v45 = [v62 view];
    v46 = [v45 snapshotViewAfterScreenUpdates:0];
    fullBookSnapshot = self->_fullBookSnapshot;
    self->_fullBookSnapshot = v46;

    v48 = [v62 view];
    [v48 frame];
    [(UIView *)self->_fullBookSnapshot setFrame:?];

    v49 = [(BKBookOpenAnimator *)self containerView];
    [v49 addSubview:self->_fullBookSnapshot];

    v50 = [(BKBookOpenAnimator *)self opening];
    v51 = 1.0;
    if (v50)
    {
      v51 = 0.0;
    }

    [(UIView *)self->_fullBookSnapshot setAlpha:v51];
  }

  v52 = [(BKBookOpenAnimator *)self bookContainerView];
  [v52 setAlpha:0.0];

  v53 = [(BKBookOpenAnimator *)self containerView];
  [v3 frame];
  v55 = v54;
  v57 = v56;
  v58 = [v62 view];
  v59 = [v58 superview];
  [v53 convertPoint:v59 fromView:{v55, v57}];

  CGRectMakeWithOriginSize();
  [(BKBookOpenAnimator *)self moveCoverToFrame:?];
  v60 = [(BKBookOpenAnimator *)self containerView];
  v61 = [(BKBookOpenAnimator *)self coverContainerView];
  [v60 addSubview:v61];
}

- (void)animateRevealWithCompletion:(id)a3
{
  v4 = a3;
  v125[0] = 0;
  v125[1] = v125;
  v125[2] = 0x2020000000;
  v125[3] = 0;
  v124[0] = _NSConcreteStackBlock;
  v124[1] = 3221225472;
  v124[2] = sub_1000D64AC;
  v124[3] = &unk_100A03CF0;
  v124[4] = v125;
  v5 = objc_retainBlock(v124);
  v121[0] = _NSConcreteStackBlock;
  v121[1] = 3221225472;
  v121[2] = sub_1000D64C4;
  v121[3] = &unk_100A04DA8;
  v123 = v125;
  v6 = v4;
  v122 = v6;
  v7 = objc_retainBlock(v121);
  v8 = [(BKBookOpenAnimator *)self opening];
  v9 = [(BKBookOpenAnimator *)self rightToLeft];
  [(BKBookSlideOpenAnimator *)self zoomedContentScale];
  sx = v10;
  v11 = [(BKBookOpenAnimator *)self coverContainerView];
  [v11 frame];
  IMActionSafeRectForRect();
  v105 = v12;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [(BKBookOpenAnimator *)self zoomedCoverFrame];
  v22 = v21;
  v24 = v23;
  v25 = v19;
  v26 = v20;
  if (v8)
  {
    v27 = v20;
  }

  else
  {
    v27 = v18;
  }

  if (v8)
  {
    v28 = v24;
  }

  else
  {
    v19 = v16;
    v28 = v14;
  }

  v29 = v105;
  if (v8)
  {
    v29 = v22;
  }

  v95 = v19;
  v96 = v27;
  v93 = v29;
  v94 = v28;
  if ((v8 & 1) == 0)
  {
    v18 = v26;
    v16 = v25;
    v14 = v24;
    v105 = v22;
  }

  v90 = v14;
  v91 = v16;
  [(UIView *)self->_contentClipView frame];
  v101 = v31;
  v103 = v30;
  v97 = v33;
  v99 = v32;
  [(UIView *)self->_contentContainerView frame];
  CGSizeScale();
  if (v9)
  {
    v126.origin.x = v22;
    v126.origin.y = v24;
    v126.size.width = v25;
    v126.size.height = v26;
    CGRectGetMaxX(v126);
  }

  CGRectMakeWithOriginSize();
  if (v8)
  {
    v38 = v34;
  }

  else
  {
    v38 = v103;
  }

  v92 = v38;
  if (v8)
  {
    v39 = v35;
  }

  else
  {
    v39 = v101;
  }

  if (v8)
  {
    v40 = v36;
  }

  else
  {
    v40 = v99;
  }

  if (v8)
  {
    v41 = v37;
  }

  else
  {
    v41 = v97;
  }

  if (v8)
  {
    v34 = v103;
  }

  v104 = v34;
  if (v8)
  {
    v42 = v101;
  }

  else
  {
    v42 = v35;
  }

  if (v8)
  {
    v43 = v99;
  }

  else
  {
    v43 = v36;
  }

  v100 = v43;
  v102 = v42;
  if (v8)
  {
    v44 = v97;
  }

  else
  {
    v44 = v37;
  }

  v98 = v44;
  CGRectGetCenterNoRounding();
  v46 = v45;
  v48 = v47;
  CGRectMakeWithOriginSize();
  CGRectGetCenterNoRounding();
  if (v8)
  {
    v51 = v49;
  }

  else
  {
    v51 = v46;
  }

  if (v8)
  {
    v52 = v50;
  }

  else
  {
    v52 = v48;
  }

  if (!v8)
  {
    v46 = v49;
  }

  memset(&v120.c, 0, 32);
  if (!v8)
  {
    v48 = v50;
  }

  *&v120.a = 0uLL;
  CGAffineTransformMakeScale(&v120, sx, sx);
  if (v8)
  {
    v119 = v120;
    v53 = &CGAffineTransformIdentity;
  }

  else
  {
    v54 = *&CGAffineTransformIdentity.c;
    *&v119.a = *&CGAffineTransformIdentity.a;
    *&v119.c = v54;
    *&v119.tx = *&CGAffineTransformIdentity.tx;
    v53 = &v120;
  }

  v55 = *&v53->c;
  v116 = *&v53->a;
  v117 = v55;
  v118 = *&v53->tx;
  [(BKBookOpenAnimator *)self moveCoverToFrame:v93, v94, v95, v96, *&v18];
  [(UIView *)self->_contentClipView setFrame:v92, v39, v40, v41];
  [(UIView *)self->_contentContainerView setCenter:v51, v52];
  v115 = v119;
  [(UIView *)self->_contentContainerView setTransform:&v115];
  (v5[2])(v5);
  [(BKBookSlideOpenAnimator *)self revealDuration];
  v57 = v56;
  v58 = 0.0;
  if ((v8 & 1) == 0)
  {
    [(BKBookSlideOpenAnimator *)self accessoryFadeDuration];
    v58 = v59;
  }

  v60 = [(BKBookZoomRevealOpenAnimator *)self revealTimingFunction];
  v111[0] = _NSConcreteStackBlock;
  v111[1] = 3221225472;
  v111[2] = sub_1000D6500;
  v111[3] = &unk_100A06C80;
  v111[4] = self;
  *&v111[5] = v105;
  *&v111[6] = v90;
  *&v111[7] = v91;
  v111[8] = v89;
  *&v111[9] = v104;
  *&v111[10] = v102;
  *&v111[11] = v100;
  *&v111[12] = v98;
  *&v111[13] = v46;
  *&v111[14] = v48;
  v114 = v118;
  v113 = v117;
  v112 = v116;
  [UIView animateWithDuration:v60 delay:0 timingFunction:v111 options:v7 animations:v57 completion:v58];

  fullBookSnapshot = self->_fullBookSnapshot;
  if (fullBookSnapshot)
  {
    if (v8)
    {
      v62 = 0.0;
    }

    else
    {
      v62 = 1.0;
    }

    if (v8)
    {
      v63 = 1.0;
    }

    else
    {
      v63 = 0.0;
    }

    [(UIView *)fullBookSnapshot setAlpha:v62];
    (v5[2])(v5);
    [(BKBookSlideOpenAnimator *)self accessoryFadeDuration];
    v65 = v64;
    v66 = 0.0;
    if (v8)
    {
      [(BKBookSlideOpenAnimator *)self revealDuration];
      v66 = v67;
    }

    v110[0] = _NSConcreteStackBlock;
    v110[1] = 3221225472;
    v110[2] = sub_1000D6590;
    v110[3] = &unk_100A04DD0;
    v110[4] = self;
    *&v110[5] = v63;
    [UIView animateWithDuration:0 delay:v110 options:v7 animations:v65 completion:v66];
  }

  if (v8)
  {
    v68 = 0.7;
  }

  else
  {
    v68 = 0.05;
  }

  v69 = [(BKBookOpenAnimator *)self bookshelfTintView];
  v70 = v69;
  if (v8)
  {
    v71 = 0.05;
  }

  else
  {
    v71 = 0.7;
  }

  [v69 setAlpha:v71];

  (v5[2])(v5);
  [(BKBookSlideOpenAnimator *)self revealDuration];
  v73 = v72;
  v74 = 0.0;
  if ((v8 & 1) == 0)
  {
    [(BKBookSlideOpenAnimator *)self accessoryFadeDuration];
    v74 = v75;
  }

  v109[0] = _NSConcreteStackBlock;
  v109[1] = 3221225472;
  v109[2] = sub_1000D65A8;
  v109[3] = &unk_100A04DD0;
  v109[4] = self;
  *&v109[5] = v68;
  [UIView animateWithDuration:0 delay:v109 options:v7 animations:v73 completion:v74];
  if (v8)
  {
    v76 = 0.25;
  }

  else
  {
    v76 = 0.0;
  }

  if (v8)
  {
    v77 = 0.0;
  }

  else
  {
    v77 = 0.25;
  }

  [(UIView *)self->_contentTintView setAlpha:v76];
  (v5[2])(v5);
  [(BKBookSlideOpenAnimator *)self contentTintFadeDuration];
  v79 = v78;
  v80 = 0.0;
  if ((v8 & 1) == 0)
  {
    [(BKBookSlideOpenAnimator *)self revealDuration];
    v82 = v81;
    [(BKBookSlideOpenAnimator *)self accessoryFadeDuration];
    v84 = v83;
    [(BKBookSlideOpenAnimator *)self contentTintFadeDuration];
    v80 = v82 + v84 - v85;
  }

  v108[0] = _NSConcreteStackBlock;
  v108[1] = 3221225472;
  v108[2] = sub_1000D65FC;
  v108[3] = &unk_100A04DD0;
  v108[4] = self;
  *&v108[5] = v77;
  [UIView animateWithDuration:0 delay:v108 options:v7 animations:v79 completion:v80];
  (v5[2])(v5);
  [(BKBookSlideOpenAnimator *)self revealDuration];
  v87 = v86;
  [(BKBookSlideOpenAnimator *)self minibarSlideDuration];
  [(BKBookOpenAnimator *)self minibarKeyFrameAnimationWithDuration:v7 hide:v87 show:-1.0 completion:v88];
  [(BKBookSlideOpenAnimator *)self revealDuration];
  v107[0] = _NSConcreteStackBlock;
  v107[1] = 3221225472;
  v107[2] = sub_1000D6614;
  v107[3] = &unk_100A033C8;
  v107[4] = self;
  [UIView animateWithDuration:v107 animations:?];

  _Block_object_dispose(v125, 8);
}

@end