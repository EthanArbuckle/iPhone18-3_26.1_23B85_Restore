@interface CAMReviewTransitionAnimator
- ($E927905399350D4C972495EAC2D81E51)_sendGeometryForReferenceBounds:(SEL)a3 orientation:(CGRect)a4 screenScale:(int64_t)a5;
- ($E927905399350D4C972495EAC2D81E51)_shutterGeometryForReferenceBounds:(SEL)a3 orientation:(CGRect)a4 screenScale:(int64_t)a5;
- (CAMReviewTransitionAnimatorDelegate)delegate;
- (CAMShutterButtonSpec)_cameraButtonShutterSpecForLayoutStyle:(SEL)a3;
- (CAMShutterButtonSpec)_sendButtonShutterSpecForSendBounds:(SEL)a3;
- (CGAffineTransform)_sendImageTransformOrientation:(SEL)a3;
- (id)_buttonColorForMode:(int64_t)a3;
- (int64_t)_captureMode;
- (int64_t)_layoutStyle;
- (void)_finishTransitionWithContext:(id)a3;
- (void)_prepareTransitionWithContext:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation CAMReviewTransitionAnimator

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 viewForKey:UITransitionContextToViewKey];
  v6 = [v4 containerView];
  v7 = [v4 isAnimated];
  [v6 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v5 setFrame:?];
  [v6 addSubview:v5];
  [(CAMReviewTransitionAnimator *)self _prepareTransitionWithContext:v4];
  if (v7)
  {
    v16 = [v6 window];
    v17 = [v16 screen];
    [v17 scale];
    v19 = v18;

    v20 = [v6 window];
    v21 = [v20 _windowInterfaceOrientation];

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    [(CAMReviewTransitionAnimator *)self _shutterGeometryForReferenceBounds:v21 orientation:v9 screenScale:v11, v13, v15, v19];
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    [(CAMReviewTransitionAnimator *)self _sendGeometryForReferenceBounds:v21 orientation:v9 screenScale:v11, v13, v15, v19];
    v22 = [(CAMReviewTransitionAnimator *)self transitionDirection];
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    [(CAMReviewTransitionAnimator *)self _cameraButtonShutterSpecForLayoutStyle:[(CAMReviewTransitionAnimator *)self _layoutStyle]];
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    [(CAMReviewTransitionAnimator *)self _sendButtonShutterSpecForSendBounds:0, 0];
    if (v22)
    {
      v58 = v61;
      v59 = v62;
      v60 = v63;
      v23 = &v64;
    }

    else
    {
      v58 = v64;
      v59 = v65;
      v60 = v66;
      v23 = &v61;
    }

    v24 = v23[1];
    v55 = *v23;
    v56 = v24;
    v57 = *(v23 + 4);
    if (v22)
    {
      v25 = 1.0;
    }

    else
    {
      v25 = 0.0;
    }

    if (v22)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = 1.0;
    }

    v27 = objc_alloc_init(CAMReviewTransitionButton);
    v49 = v58;
    v50 = v59;
    *&v51 = v60;
    [(CAMReviewTransitionButton *)v27 configureWithShutterButtonSpec:&v49];
    [(CAMReviewTransitionButton *)v27 setCenter:0.0, 0.0];
    v28 = [(CAMReviewTransitionAnimator *)self _buttonColorForMode:[(CAMReviewTransitionAnimator *)self _captureMode]];
    v29 = [(CAMReviewTransitionButton *)v27 innerCircle];
    [v29 setBackgroundColor:v28];

    v30 = [(CAMReviewTransitionButton *)v27 imageView];
    [v30 setAlpha:v25];

    v31 = [NSBundle bundleForClass:objc_opt_class()];
    v32 = [UIImage imageNamed:@"CAMMessagesSendButton" inBundle:v31];
    v33 = [(CAMReviewTransitionButton *)v27 imageView];
    [v33 setImage:v32];

    [(CAMReviewTransitionAnimator *)self _sendImageTransformOrientation:v21];
    v34 = [(CAMReviewTransitionButton *)v27 imageView];
    v49 = v52;
    v50 = v53;
    v51 = v54;
    [v34 setTransform:&v49];

    [v6 addSubview:v27];
    [v5 setAlpha:0.0];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100006C20;
    v40[3] = &unk_100010688;
    v41 = v27;
    v43 = v55;
    v44 = v56;
    v45 = v57;
    v46 = v26;
    v47 = 0;
    v48 = 0;
    v42 = v5;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100006CA4;
    v36[3] = &unk_1000106B0;
    v37 = v41;
    v38 = v4;
    v39 = self;
    v35 = v41;
    [UIView animateWithDuration:0 delay:v40 usingSpringWithDamping:v36 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:1.0];
  }
}

- (void)_prepareTransitionWithContext:(id)a3
{
  v4 = a3;
  v9 = [(CAMReviewTransitionAnimator *)self reviewViewController];
  v5 = [v9 reviewBarsModel];
  [v5 performChanges:&stru_1000106F0];
  v6 = [v4 isAnimated];

  v7 = [(CAMReviewTransitionAnimator *)self cameraViewController];
  if ([(CAMReviewTransitionAnimator *)self transitionDirection])
  {
    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  [v7 setMessagesTransitionState:v8 animated:v6];
}

- (void)_finishTransitionWithContext:(id)a3
{
  v8 = a3;
  v4 = [(CAMReviewTransitionAnimator *)self reviewViewController];
  v5 = [v4 reviewBarsModel];
  [v5 performChanges:&stru_100010710];
  v6 = [(CAMReviewTransitionAnimator *)self cameraViewController];
  if ([(CAMReviewTransitionAnimator *)self transitionDirection]== 1)
  {
    v7 = 0;
  }

  else
  {
    if ([(CAMReviewTransitionAnimator *)self transitionDirection])
    {
      goto LABEL_6;
    }

    v7 = 2;
  }

  [v6 setMessagesTransitionState:v7 animated:{objc_msgSend(v8, "isAnimated")}];
LABEL_6:
}

- (int64_t)_captureMode
{
  v3 = [(CAMReviewTransitionAnimator *)self cameraViewController];

  if (!v3)
  {
    return 0;
  }

  v4 = [(CAMReviewTransitionAnimator *)self cameraViewController];
  v5 = [v4 captureMode];

  return v5;
}

- (id)_buttonColorForMode:(int64_t)a3
{
  if (a3 <= 9 && ((1 << a3) & 0x1A6) != 0)
  {
    v3 = [UIColor colorWithRed:0.961 green:0.2 blue:0.2 alpha:1.0];
  }

  else
  {
    v3 = +[UIColor whiteColor];
  }

  return v3;
}

- (int64_t)_layoutStyle
{
  v2 = [(CAMReviewTransitionAnimator *)self cameraViewController];
  v3 = [v2 view];
  v4 = CAMLayoutStyleForView();

  return v4;
}

- ($E927905399350D4C972495EAC2D81E51)_shutterGeometryForReferenceBounds:(SEL)a3 orientation:(CGRect)a4 screenScale:(int64_t)a5
{
  [CMAMessagesExtensionUtilities shutterButtonAlignmentRectForReferenceBounds:[(CAMReviewTransitionAnimator *)self _layoutStyle] layoutStyle:a4.origin.x screenScale:a4.origin.y, a4.size.width, a4.size.height, a6];
  retstr->var0.origin = 0u;
  retstr->var0.size = 0u;
  retstr->var1 = 0u;
  *&retstr->var2.a = 0u;
  *&retstr->var2.c = 0u;
  *&retstr->var2.tx = 0u;

  return [PUReviewScreenUtilities orientedGeometryForFrame:"orientedGeometryForFrame:inBounds:orientation:" inBounds:a5 orientation:?];
}

- ($E927905399350D4C972495EAC2D81E51)_sendGeometryForReferenceBounds:(SEL)a3 orientation:(CGRect)a4 screenScale:(int64_t)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [PUReviewScreenUtilities reviewScreenControlBarFrameForReferenceBounds:?];
  v27 = v14;
  v28 = v15;
  v17 = v16;
  v19 = v18;
  [CMAMessagesExtensionUtilities shutterButtonAlignmentRectForReferenceBounds:[(CAMReviewTransitionAnimator *)self _layoutStyle] layoutStyle:x screenScale:y, width, height, a6];
  UIRectGetCenter();
  v22 = v20;
  v23 = v21;
  if (v19 <= v17)
  {
    [PUReviewScreenControlBar sendButtonAlignmentRectInHorizontalBounds:v27 relativeCenterAlignmentPoint:v28, v17, v19, v20, v21];
  }

  else
  {
    v24 = [(CAMReviewTransitionAnimator *)self delegate];
    v25 = [v24 availableControlsCountForReviewTransition:self];

    [PUReviewScreenControlBar sendButtonAlignmentRectInVerticalBounds:v25 relativeCenterAlignmentPoint:v27 controlsCount:v28, v17, v19, v22, v23];
  }

  *&retstr->var2.c = 0u;
  *&retstr->var2.tx = 0u;
  retstr->var1 = 0u;
  *&retstr->var2.a = 0u;
  retstr->var0.origin = 0u;
  retstr->var0.size = 0u;

  return [PUReviewScreenUtilities orientedGeometryForFrame:"orientedGeometryForFrame:inBounds:orientation:" inBounds:a5 orientation:?];
}

- (CGAffineTransform)_sendImageTransformOrientation:(SEL)a3
{
  v6 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v6;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  v7 = +[UIDevice currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 != 1)
  {
    switch(a4)
    {
      case 1:
        v10 = 0.0;
        break;
      case 3:
        v10 = 1.57079633;
        break;
      case 4:
        v10 = -1.57079633;
        break;
      default:
        v10 = 3.14159265;
        if (a4 != 2)
        {
          v10 = 0.0;
        }

        break;
    }

    v11 = -v10;

    return CGAffineTransformMakeRotation(retstr, v11);
  }

  return result;
}

- (CAMShutterButtonSpec)_cameraButtonShutterSpecForLayoutStyle:(SEL)a3
{
  retstr->var4 = 0.0;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  v5 = +[CAMCaptureCapabilities capabilities];
  v6 = [v5 wantsFullscreenViewfinder];

  if (v6)
  {

    return [CAMDynamicShutterControl shutterButtonSpecForLayoutStyle:a4];
  }

  else
  {

    return _CAMShutterButtonSpecForLayoutStyle(a4);
  }
}

- (CAMShutterButtonSpec)_sendButtonShutterSpecForSendBounds:(SEL)a3
{
  width = a4.size.width;
  retstr->var4 = 0.0;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  result = CAMShutterButtonSpecMake();
  if (width > 60.0)
  {
    retstr->var1 = 6.0;
    retstr->var4 = 2.5;
  }

  return result;
}

- (CAMReviewTransitionAnimatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end