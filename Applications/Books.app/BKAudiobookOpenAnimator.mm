@interface BKAudiobookOpenAnimator
- (BKAudiobookOpenTransitioning)audiobookViewController;
- (CAMediaTimingFunction)zoomTimingFunction;
- (CGAffineTransform)audiobookToTransform;
- (CGPoint)audiobookToCenter;
- (CGRect)coverToFrame;
- (double)animationScale;
- (double)controlsFadeDuration;
- (double)controlsFadeInDelay;
- (double)duration;
- (double)toolbarFadeDuration;
- (double)zoomDuration;
- (id)_customTimingFunction;
- (id)_zoomSpring;
- (int64_t)coverContentMode;
- (void)_setControlsAlpha:(double)alpha;
- (void)_setLayerShadowOpacity:(float)opacity;
- (void)_setToolbarAlpha:(double)alpha;
- (void)_setupViews;
- (void)_teardownLocalViews;
- (void)animateNonInteractive;
- (void)animationsDidFinish;
- (void)bookContentDidLoad;
- (void)setAudiobookToTransform:(CGAffineTransform *)transform;
- (void)teardownViews:(BOOL)views;
@end

@implementation BKAudiobookOpenAnimator

- (id)_zoomSpring
{
  v3 = [UISpringTimingParameters alloc];
  if ([(BKBookOpenAnimator *)self opening])
  {
    v4 = 300.0;
  }

  else
  {
    v4 = 325.0;
  }

  if ([(BKBookOpenAnimator *)self opening])
  {
    v5 = 35.0;
  }

  else
  {
    v5 = 30.0;
  }

  v6 = [v3 initWithMass:1.0 stiffness:v4 damping:v5 initialVelocity:{0.0, 0.0}];
  v7 = [(BKBookOpenAnimator *)self adjustSpring:v6];

  return v7;
}

- (id)_customTimingFunction
{
  LODWORD(v2) = 1051371084;
  LODWORD(v3) = 1045220557;
  LODWORD(v4) = 1.0;
  return [CAMediaTimingFunction functionWithControlPoints:v2];
}

- (double)duration
{
  [(BKAudiobookOpenAnimator *)self zoomDuration];
  v4 = v3;
  [(BKAudiobookOpenAnimator *)self controlsFadeInDelay];
  v6 = v5;
  [(BKAudiobookOpenAnimator *)self controlsFadeDuration];
  v8 = v6 + v7;
  if ([(BKAudiobookOpenAnimator *)self useLegacyTiming]&& v4 < v8)
  {
    v4 = v8;
  }

  [(BKAudiobookOpenAnimator *)self toolbarFadeDuration];
  [(BKBookOpenAnimator *)self adjustDuration:?];
  return v9 + v4;
}

- (double)zoomDuration
{
  if ([(BKAudiobookOpenAnimator *)self useLegacyTiming])
  {

    [(BKBookOpenAnimator *)self adjustDuration:0.7];
  }

  else
  {
    _zoomSpring = [(BKAudiobookOpenAnimator *)self _zoomSpring];
    [_zoomSpring settlingDuration];
    v6 = v5;

    return v6;
  }

  return result;
}

- (double)controlsFadeInDelay
{
  if (![(BKAudiobookOpenAnimator *)self useLegacyTiming])
  {
    return 0.0;
  }

  [(BKBookOpenAnimator *)self adjustDuration:0.23];
  return result;
}

- (double)controlsFadeDuration
{
  if ([(BKAudiobookOpenAnimator *)self useLegacyTiming])
  {
    opening = [(BKBookOpenAnimator *)self opening];
    v4 = 0.2;
    if (opening)
    {
      v4 = 0.47;
    }
  }

  else
  {
    v4 = 0.16;
  }

  [(BKBookOpenAnimator *)self adjustDuration:v4];
  return result;
}

- (double)toolbarFadeDuration
{
  opening = [(BKBookOpenAnimator *)self opening];
  v4 = 0.1;
  if (opening)
  {
    v4 = 0.5;
  }

  [(BKBookOpenAnimator *)self adjustDuration:v4];
  return result;
}

- (BKAudiobookOpenTransitioning)audiobookViewController
{
  if ([(BKBookOpenAnimator *)self opening])
  {
    [(BKBookOpenAnimator *)self toViewController];
  }

  else
  {
    [(BKBookOpenAnimator *)self fromViewController];
  }
  v3 = ;
  v4 = [v3 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BKAudiobookOpenTransitioning];
  objc_opt_class();
  v5 = BUClassAndProtocolCast();

  return v5;
}

- (double)animationScale
{
  audiobookViewController = [(BKAudiobookOpenAnimator *)self audiobookViewController];
  [audiobookViewController transitionCoverFrame];

  [(BKBookOpenAnimator *)self closedCoverFrame];

  CGSizeScaleThatFitsInCGSize();
  return result;
}

- (CAMediaTimingFunction)zoomTimingFunction
{
  LODWORD(v2) = 1052602532;
  LODWORD(v3) = 1041865114;
  LODWORD(v4) = 1.0;
  return [CAMediaTimingFunction functionWithControlPoints:v2];
}

- (void)_setControlsAlpha:(double)alpha
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  audiobookViewController = [(BKAudiobookOpenAnimator *)self audiobookViewController];
  transitionControlsViews = [audiobookViewController transitionControlsViews];

  v6 = [transitionControlsViews countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(transitionControlsViews);
        }

        [*(*(&v10 + 1) + 8 * v9) setAlpha:alpha];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [transitionControlsViews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_setLayerShadowOpacity:(float)opacity
{
  coverControlView = [(BKAudiobookOpenAnimator *)self coverControlView];
  layer = [coverControlView layer];

  *&v5 = opacity;
  v6 = [NSNumber numberWithFloat:v5];
  [layer setValue:v6 forKeyPath:@"shadowOpacity"];
}

- (void)_setToolbarAlpha:(double)alpha
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  audiobookViewController = [(BKAudiobookOpenAnimator *)self audiobookViewController];
  transitionToolbarViews = [audiobookViewController transitionToolbarViews];

  v6 = [transitionToolbarViews countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(transitionToolbarViews);
        }

        [*(*(&v10 + 1) + 8 * v9) setAlpha:alpha];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [transitionToolbarViews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_setupViews
{
  opening = [(BKBookOpenAnimator *)self opening];
  audiobookViewController = [(BKAudiobookOpenAnimator *)self audiobookViewController];
  v5 = audiobookViewController;
  if (opening)
  {
    view = [audiobookViewController view];
    v7 = [view snapshotViewAfterScreenUpdates:0];

    v8 = 0.0;
    v9 = 1.0;
  }

  else
  {
    v8 = 1.0;
    v9 = 0.0;
  }

  transitionBackgroundImageView = [v5 transitionBackgroundImageView];
  v11 = [UIImageView alloc];
  superview = [transitionBackgroundImageView superview];
  [transitionBackgroundImageView frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  containerView = [(BKBookOpenAnimator *)self containerView];
  [superview convertRect:containerView toView:{v14, v16, v18, v20}];
  v22 = [v11 initWithFrame:?];
  [(BKAudiobookOpenAnimator *)self setBackgroundView:v22];

  v23 = +[UIColor bc_booksBackground];
  backgroundView = [(BKAudiobookOpenAnimator *)self backgroundView];
  [backgroundView setBackgroundColor:v23];

  contentMode = [transitionBackgroundImageView contentMode];
  backgroundView2 = [(BKAudiobookOpenAnimator *)self backgroundView];
  [backgroundView2 setContentMode:contentMode];

  image = [transitionBackgroundImageView image];
  backgroundView3 = [(BKAudiobookOpenAnimator *)self backgroundView];
  [backgroundView3 setImage:image];

  [transitionBackgroundImageView setAlpha:0.0];
  containerView2 = [(BKBookOpenAnimator *)self containerView];
  backgroundView4 = [(BKAudiobookOpenAnimator *)self backgroundView];
  [containerView2 addSubview:backgroundView4];

  containerView3 = [(BKBookOpenAnimator *)self containerView];
  bookContainerView = [(BKBookOpenAnimator *)self bookContainerView];
  [containerView3 addSubview:bookContainerView];

  containerView4 = [(BKBookOpenAnimator *)self containerView];
  coverContainerView = [(BKBookOpenAnimator *)self coverContainerView];
  [containerView4 addSubview:coverContainerView];

  backgroundView5 = [(BKAudiobookOpenAnimator *)self backgroundView];
  v118 = v8;
  [backgroundView5 setAlpha:v8];

  v117 = v9;
  [(BKAudiobookOpenAnimator *)self setBackgroundToAlpha:v9];
  [v5 transitionCoverFrame];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  coverContainerView2 = [(BKBookOpenAnimator *)self coverContainerView];
  superview2 = [coverContainerView2 superview];
  view2 = [v5 view];
  [superview2 convertRect:view2 fromView:{v37, v39, v41, v43}];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;

  [(BKBookOpenAnimator *)self closedCoverFrame];
  v57 = v55;
  v58 = v56;
  v60 = v59;
  v62 = v61;
  if (!opening)
  {
    v55 = v48;
    v56 = v50;
  }

  [(BKBookOpenAnimator *)self moveCoverToFrame:v55, v56];
  v63 = v48;
  v64 = v50;
  v65 = v52;
  v66 = v54;
  if ((opening & 1) == 0)
  {
    v63 = v57;
    v64 = v58;
    v65 = v60;
    v66 = v62;
  }

  [(BKAudiobookOpenAnimator *)self setCoverToFrame:v63, v64, v65, v66];
  CGRectGetCenterNoRounding();
  v68 = v67;
  v70 = v69;
  CGRectGetCenterNoRounding();
  view3 = [v5 view];
  [view3 frame];

  CGRectGetCenterNoRounding();
  v73 = v72;
  v75 = v74;
  view4 = [v5 view];
  superview3 = [view4 superview];
  coverContainerView3 = [(BKBookOpenAnimator *)self coverContainerView];
  superview4 = [coverContainerView3 superview];
  [superview3 convertPoint:superview4 toView:{v73, v75}];
  CGPointSubtract();

  [(BKAudiobookOpenAnimator *)self animationScale];
  v81 = v80;
  CGPointMultiply();
  view5 = [v5 view];
  superview5 = [view5 superview];
  coverContainerView4 = [(BKBookOpenAnimator *)self coverContainerView];
  superview6 = [coverContainerView4 superview];
  [superview5 convertPoint:superview6 fromView:{v68, v70}];
  CGPointAdd();
  v87 = v86;
  v89 = v88;

  view6 = [v5 view];
  v91 = view6;
  if (opening)
  {
    v92 = v89;
  }

  else
  {
    v92 = v75;
  }

  if (opening)
  {
    v93 = v87;
  }

  else
  {
    v93 = v73;
  }

  if (opening)
  {
    v89 = v75;
    v87 = v73;
  }

  [view6 setCenter:{v93, v92}];

  [(BKAudiobookOpenAnimator *)self setAudiobookToCenter:v87, v89];
  memset(&v125, 0, sizeof(v125));
  view7 = [v5 view];
  v95 = view7;
  if (view7)
  {
    [view7 transform];
  }

  else
  {
    memset(&v125, 0, sizeof(v125));
  }

  memset(&v124, 0, sizeof(v124));
  CGAffineTransformMakeScale(&t2, v81, v81);
  t1 = v125;
  CGAffineTransformConcat(&v124, &t1, &t2);
  if (opening)
  {
    v96 = &v124;
  }

  else
  {
    v96 = &v125;
  }

  *&v121.a = *&v96->a;
  *&v121.c = *&v96->c;
  *&v121.tx = *&v96->tx;
  if (opening)
  {
    v97 = &v125;
  }

  else
  {
    v97 = &v124;
  }

  view8 = [v5 view];
  t2 = v121;
  [view8 setTransform:&t2];

  v119 = *&v97->c;
  v120 = *&v97->tx;
  *&t2.a = *&v97->a;
  *&t2.c = v119;
  *&t2.tx = v120;
  [(BKAudiobookOpenAnimator *)self setAudiobookToTransform:&t2];
  v99 = 1.0;
  v100 = 1.0;
  if ([(BKBookOpenAnimator *)self opening])
  {
    if ([(BKBookOpenAnimator *)self fadeInCover])
    {
      v100 = 0.0;
    }

    else
    {
      v100 = 1.0;
    }
  }

  bookContainerView2 = [(BKBookOpenAnimator *)self bookContainerView];
  [bookContainerView2 setAlpha:v100];

  if (![(BKBookOpenAnimator *)self opening])
  {
    if ([(BKBookOpenAnimator *)self fadeInCover])
    {
      v99 = 0.0;
    }

    else
    {
      v99 = 1.0;
    }
  }

  [(BKAudiobookOpenAnimator *)self setBookContainerToAlpha:v99];
  [(BKAudiobookOpenAnimator *)self _setControlsAlpha:v118];
  [(BKAudiobookOpenAnimator *)self setControlsToAlpha:v117];
  if (opening)
  {
    v102 = 0.0;
    [(BKAudiobookOpenAnimator *)self _setToolbarAlpha:0.0];
    audiobookViewController2 = [(BKAudiobookOpenAnimator *)self audiobookViewController];
    [audiobookViewController2 transitionToolbarAlpha];
    [(BKAudiobookOpenAnimator *)self setToolbarToAlpha:?];

    if ([(BKBookOpenAnimator *)self fadeInCover])
    {
      v104 = 0.0;
    }

    else
    {
      v104 = 1.0;
    }

    coverContainerView5 = [(BKBookOpenAnimator *)self coverContainerView];
    [coverContainerView5 setAlpha:v104];

    coverImageView = [(BKBookOpenAnimator *)self coverImageView];
    [coverImageView _setContinuousCornerRadius:0.0];

    [v5 coverCornerRadius];
    [(BKAudiobookOpenAnimator *)self setCoverToCornerRadius:?];
  }

  else
  {
    transitionCoverImagePlayControl = [v5 transitionCoverImagePlayControl];
    [(BKAudiobookOpenAnimator *)self setCoverControlView:transitionCoverImagePlayControl];

    audiobookViewController3 = [(BKAudiobookOpenAnimator *)self audiobookViewController];
    [audiobookViewController3 transitionCoverImagePlayControlShadowOpacityValue];
    *&v109 = v109;
    [(BKAudiobookOpenAnimator *)self _setLayerShadowOpacity:v109];

    [(BKAudiobookOpenAnimator *)self setCoverControlViewToShadowOpacity:0.0];
    coverControlView = [(BKAudiobookOpenAnimator *)self coverControlView];
    [coverControlView addAnimatablePropertyWithKey:@"shadowOpacity"];

    audiobookViewController4 = [(BKAudiobookOpenAnimator *)self audiobookViewController];
    [audiobookViewController4 transitionToolbarAlpha];
    [(BKAudiobookOpenAnimator *)self _setToolbarAlpha:?];

    [(BKAudiobookOpenAnimator *)self setToolbarToAlpha:0.0];
    coverContainerView6 = [(BKBookOpenAnimator *)self coverContainerView];
    [coverContainerView6 setAlpha:0.0];

    [v5 coverCornerRadius];
    v114 = v113;
    coverImageView2 = [(BKBookOpenAnimator *)self coverImageView];
    [coverImageView2 _setContinuousCornerRadius:v114];

    [(BKAudiobookOpenAnimator *)self setCoverToCornerRadius:0.0];
    if ([(BKBookOpenAnimator *)self fadeInCover])
    {
      v102 = 0.0;
    }

    else
    {
      v102 = 1.0;
    }
  }

  [(BKAudiobookOpenAnimator *)self setCoverToAlpha:v102];
  if (([v5 transitionHasCustomArtwork] & 1) == 0)
  {
    coverShadowView = [(BKBookOpenAnimator *)self coverShadowView];
    [coverShadowView setAlpha:v117];

    [(BKAudiobookOpenAnimator *)self setCoverShadowToAlpha:v118];
  }
}

- (void)animateNonInteractive
{
  opening = [(BKBookOpenAnimator *)self opening];
  if (opening && ![(BKAudiobookOpenAnimator *)self contentLoaded])
  {

    [(BKAudiobookOpenAnimator *)self setWaitingForContentLoaded:1];
  }

  else
  {
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x2020000000;
    v51[3] = 0;
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_1000C8B50;
    v50[3] = &unk_100A03CF0;
    v50[4] = v51;
    v4 = objc_retainBlock(v50);
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1000C8B68;
    v48[3] = &unk_100A06A58;
    v48[4] = self;
    v48[5] = v51;
    v49 = opening;
    v5 = objc_retainBlock(v48);
    [(BKAudiobookOpenAnimator *)self _setupViews];
    audiobookViewController = [(BKAudiobookOpenAnimator *)self audiobookViewController];
    transitionHasCustomArtwork = [audiobookViewController transitionHasCustomArtwork];
    [(BKAudiobookOpenAnimator *)self zoomDuration];
    v8 = v7;
    [(BKAudiobookOpenAnimator *)self toolbarFadeDuration];
    v10 = v9;
    [(BKAudiobookOpenAnimator *)self controlsFadeInDelay];
    v12 = v11;
    [(BKAudiobookOpenAnimator *)self controlsFadeDuration];
    v14 = v13;
    if (opening)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v10;
    }

    if ([(BKAudiobookOpenAnimator *)self useLegacyTiming])
    {
      [(BKAudiobookOpenAnimator *)self zoomTimingFunction];
    }

    else
    {
      [(BKAudiobookOpenAnimator *)self _customTimingFunction];
    }
    v16 = ;
    [(BKBookOpenAnimator *)self animateNavigationBarPrepare];
    v17 = v8 * 0.25;
    if (opening)
    {
      v17 = 0.0;
    }

    [(BKBookOpenAnimator *)self animateNavigationBarWithDuration:v8 * 0.5 delay:v17];
    (v4[2])(v4);
    useLegacyTiming = [(BKAudiobookOpenAnimator *)self useLegacyTiming];
    v19 = v8;
    if ((useLegacyTiming & 1) == 0)
    {
      [(BKBookOpenAnimator *)self adjustDuration:0.3];
    }

    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1000C8C3C;
    v47[3] = &unk_100A033C8;
    v47[4] = self;
    [UIView animateWithDuration:v16 delay:0 timingFunction:v47 options:v5 animations:v19 completion:v15];
    (v4[2])(v4);
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000C8CA4;
    v45[3] = &unk_100A03440;
    v45[4] = self;
    v20 = audiobookViewController;
    v46 = v20;
    v21 = objc_retainBlock(v45);
    if ([(BKAudiobookOpenAnimator *)self useLegacyTiming])
    {
      zoomTimingFunction = [(BKAudiobookOpenAnimator *)self zoomTimingFunction];
      [UIView animateWithDuration:zoomTimingFunction delay:0 timingFunction:v21 options:v5 animations:v8 completion:v15];
    }

    else
    {
      zoomTimingFunction = [(BKAudiobookOpenAnimator *)self _zoomSpring];
      [zoomTimingFunction mass];
      v24 = v23;
      [zoomTimingFunction stiffness];
      v26 = v25;
      [zoomTimingFunction damping];
      [UIView _animateUsingSpringWithDuration:0 delay:v21 options:v5 mass:v8 stiffness:v15 damping:v24 initialVelocity:v26 animations:v27 completion:0.0];
    }

    (v4[2])(v4);
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1000C8D64;
    v42[3] = &unk_100A04030;
    v42[4] = self;
    v43 = transitionHasCustomArtwork;
    v44 = opening;
    [UIView animateWithDuration:v16 delay:0 timingFunction:v42 options:v5 animations:v8 completion:v15];
    (v4[2])(v4);
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000C8E74;
    v41[3] = &unk_100A033C8;
    v41[4] = self;
    [UIView animateWithDuration:v16 delay:0 timingFunction:v41 options:v5 animations:v8 completion:v15];
    (v4[2])(v4);
    if (opening)
    {
      v28 = v12;
    }

    else
    {
      v28 = v10;
    }

    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000C8EDC;
    v40[3] = &unk_100A033C8;
    v40[4] = self;
    [UIView animateWithDuration:v16 delay:0 timingFunction:v40 options:v5 animations:v14 completion:v28];
    (v4[2])(v4);
    v29 = 0.0;
    if (opening)
    {
      useLegacyTiming2 = [(BKAudiobookOpenAnimator *)self useLegacyTiming];
      v31 = 0.7;
      if (useLegacyTiming2)
      {
        v31 = 1.0;
      }

      v29 = v8 * v31;
    }

    useLegacyTiming3 = [(BKAudiobookOpenAnimator *)self useLegacyTiming];
    fadeTimingFunction = v16;
    if (useLegacyTiming3)
    {
      fadeTimingFunction = [(BKAudiobookOpenAnimator *)self fadeTimingFunction];
    }

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000C8F18;
    v38[3] = &unk_100A044C8;
    v39 = transitionHasCustomArtwork;
    v38[4] = self;
    [UIView animateWithDuration:fadeTimingFunction delay:0 timingFunction:v38 options:v5 animations:v10 completion:v29];
    if (useLegacyTiming3)
    {
    }

    (v4[2])(v4);
    [(BKBookOpenAnimator *)self minibarKeyFrameAnimationWithDuration:v5 hide:v8 show:0.2 completion:0.2];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000C8F90;
    v37[3] = &unk_100A033C8;
    v37[4] = self;
    [UIView animateWithDuration:v37 animations:v8];
    v34 = +[AETestDriver shared];
    [v34 postEvent:kBETestDriverOpenAnimationSetupEnd sender:self];

    v35 = +[AETestDriver shared];
    [v35 postEvent:kBETestDriverOpenAnimationZoomStart sender:self];

    kdebug_trace();
    _Block_object_dispose(v51, 8);
  }
}

- (void)animationsDidFinish
{
  audiobookViewController = [(BKAudiobookOpenAnimator *)self audiobookViewController];
  transitionBackgroundImageView = [audiobookViewController transitionBackgroundImageView];
  [transitionBackgroundImageView setAlpha:1.0];

  view = [audiobookViewController view];
  v6 = *&CGAffineTransformIdentity.c;
  v8[0] = *&CGAffineTransformIdentity.a;
  v8[1] = v6;
  v8[2] = *&CGAffineTransformIdentity.tx;
  [view setTransform:v8];

  [(BKAudiobookOpenAnimator *)self _setControlsAlpha:1.0];
  [(BKAudiobookOpenAnimator *)self toolbarToAlpha];
  [(BKAudiobookOpenAnimator *)self _setToolbarAlpha:?];
  v7.receiver = self;
  v7.super_class = BKAudiobookOpenAnimator;
  [(BKBookOpenAnimator *)&v7 animationsDidFinish];
}

- (void)_teardownLocalViews
{
  backgroundView = [(BKAudiobookOpenAnimator *)self backgroundView];
  [backgroundView removeFromSuperview];

  [(BKAudiobookOpenAnimator *)self setBackgroundView:0];
}

- (void)teardownViews:(BOOL)views
{
  viewsCopy = views;
  [(BKAudiobookOpenAnimator *)self _teardownLocalViews];
  v5.receiver = self;
  v5.super_class = BKAudiobookOpenAnimator;
  [(BKBookOpenAnimator *)&v5 teardownViews:viewsCopy];
}

- (int64_t)coverContentMode
{
  audiobookViewController = [(BKAudiobookOpenAnimator *)self audiobookViewController];
  if (audiobookViewController)
  {
    audiobookViewController2 = [(BKAudiobookOpenAnimator *)self audiobookViewController];
    coverContentMode = [audiobookViewController2 coverContentMode];
  }

  else
  {
    coverContentMode = 2;
  }

  return coverContentMode;
}

- (void)bookContentDidLoad
{
  v3.receiver = self;
  v3.super_class = BKAudiobookOpenAnimator;
  [(BKBookOpenAnimator *)&v3 bookContentDidLoad];
  if (![(BKAudiobookOpenAnimator *)self contentLoaded])
  {
    [(BKAudiobookOpenAnimator *)self setContentLoaded:1];
    if ([(BKAudiobookOpenAnimator *)self waitingForContentLoaded])
    {
      [(BKAudiobookOpenAnimator *)self setWaitingForContentLoaded:0];
      [(BKAudiobookOpenAnimator *)self animateNonInteractive];
    }
  }
}

- (CGRect)coverToFrame
{
  x = self->_coverToFrame.origin.x;
  y = self->_coverToFrame.origin.y;
  width = self->_coverToFrame.size.width;
  height = self->_coverToFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)audiobookToCenter
{
  x = self->_audiobookToCenter.x;
  y = self->_audiobookToCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGAffineTransform)audiobookToTransform
{
  v3 = *&self[7].ty;
  *&retstr->a = *&self[7].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[8].b;
  return self;
}

- (void)setAudiobookToTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_audiobookToTransform.a = *&transform->a;
  *&self->_audiobookToTransform.c = v4;
  *&self->_audiobookToTransform.tx = v3;
}

@end