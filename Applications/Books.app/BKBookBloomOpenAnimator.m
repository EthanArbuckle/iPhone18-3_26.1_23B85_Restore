@interface BKBookBloomOpenAnimator
+ (CGRect)_availableRectForFittingZoomedCoverInContainerViewBounds:(CGRect)a3 isCompact:(BOOL)a4;
+ (CGRect)zoomedFrameForCoverWithSize:(CGSize)a3 isCompact:(BOOL)a4 containerViewBounds:(CGRect)a5;
+ (double)marginPercentage:(BOOL)a3;
+ (void)setBlurRadius:(double)a3 forView:(id)a4;
+ (void)setBrightnessFilter:(double)a3 forView:(id)a4;
- (BOOL)_contentViewIsShowingCover;
- (CGRect)closedContentContainerFrame;
- (CGRect)revealBigContentContainerFrame;
- (CGRect)revealBigCoverFrame;
- (CGRect)revealSmallContentContainerFrame;
- (CGRect)zoomedCoverFrame;
- (UIEdgeInsets)_insetsFromContentSize:(CGSize)a3 toCoverSize:(CGSize)a4 containerSize:(CGSize)a5 isCompact:(BOOL)a6;
- (double)closeDuration;
- (double)duration;
- (double)revealDuration;
- (double)zoomDuration;
- (id)_closeSpring;
- (id)_customTimingFunction;
- (id)_revealSpring;
- (id)_zoomSpring;
- (id)initOpening:(BOOL)a3;
- (uint64_t)_frameOfContentWithAspectRatio:thatFitsCoverOfAspectRatio:withFrame:insetsContentToCover:;
- (void)_adjustShadowForCurrentCoverBounds;
- (void)_animateRevealForClosingWithCompletion:(id)a3;
- (void)_animateRevealForOpeningWithCompletion:(id)a3;
- (void)_moveContentContainerToFrame:(CGRect)a3;
- (void)_moveCoverToFrame:(CGRect)a3 extraTransform:(CGAffineTransform *)a4;
- (void)_setTargetFrame:(CGRect)a3 forView:(id)a4 baseFrame:(CGRect)a5 extraTransform:(CGAffineTransform *)a6;
- (void)_teardownContentViews;
- (void)animateRevealWithCompletion:(id)a3;
- (void)animateZoomWithCompletion:(id)a3;
- (void)performAdditionSetup;
- (void)setupSpinner;
- (void)setupViewsForReveal;
- (void)setupViewsForZoom;
- (void)teardownViews:(BOOL)a3;
@end

@implementation BKBookBloomOpenAnimator

- (id)initOpening:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = BKBookBloomOpenAnimator;
  v3 = [(BKBookOpenAnimator *)&v7 initOpening:a3];
  if (v3)
  {
    v4 = +[NSMutableArray array];
    v5 = v3[40];
    v3[40] = v4;
  }

  return v3;
}

- (id)_zoomSpring
{
  v3 = [(BKBookOpenAnimator *)self toViewController];
  if ([v3 im_isCompactWidth])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(BKBookOpenAnimator *)self toViewController];
    v4 = [v5 im_isCompactHeight];
  }

  v6 = [UISpringTimingParameters alloc];
  v7 = 300.0;
  if ((v4 & 1) == 0)
  {
    v7 = 200.0;
  }

  v8 = 30.0;
  if (v4)
  {
    v8 = 35.0;
  }

  v9 = [v6 initWithMass:1.0 stiffness:v7 damping:v8 initialVelocity:{0.0, 0.0}];
  v10 = [(BKBookOpenAnimator *)self adjustSpring:v9];

  return v10;
}

- (id)_revealSpring
{
  v3 = [[UISpringTimingParameters alloc] initWithMass:1.0 stiffness:325.0 damping:30.0 initialVelocity:{0.0, 0.0}];
  v4 = [(BKBookOpenAnimator *)self adjustSpring:v3];

  return v4;
}

- (id)_closeSpring
{
  v3 = [[UISpringTimingParameters alloc] initWithMass:1.0 stiffness:325.0 damping:30.0 initialVelocity:{0.0, 0.0}];
  v4 = [(BKBookOpenAnimator *)self adjustSpring:v3];

  return v4;
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
  if ([(BKBookOpenAnimator *)self opening])
  {
    [(BKBookBloomOpenAnimator *)self zoomDuration];
    v4 = v3;
    [(BKBookBloomOpenAnimator *)self revealDuration];
    return v4 + v5;
  }

  else
  {

    [(BKBookBloomOpenAnimator *)self closeDuration];
  }

  return result;
}

- (double)zoomDuration
{
  v2 = [(BKBookBloomOpenAnimator *)self _zoomSpring];
  [v2 settlingDuration];
  v4 = v3;

  return v4;
}

- (double)revealDuration
{
  v2 = [(BKBookBloomOpenAnimator *)self _revealSpring];
  [v2 settlingDuration];
  v4 = v3;

  return v4;
}

- (double)closeDuration
{
  if ([(BKBookOpenAnimator *)self fadeInCover])
  {

    [(BKBookOpenAnimator *)self adjustDuration:0.32];
  }

  else
  {
    v4 = [(BKBookBloomOpenAnimator *)self _closeSpring];
    [v4 settlingDuration];
    v6 = v5;

    return v6;
  }

  return result;
}

- (UIEdgeInsets)_insetsFromContentSize:(CGSize)a3 toCoverSize:(CGSize)a4 containerSize:(CGSize)a5 isCompact:(BOOL)a6
{
  v6 = a6;
  height = a5.height;
  width = a5.width;
  v9 = a4.height;
  v10 = a4.width;
  if ([(BKBookBloomOpenAnimator *)self _contentViewIsShowingCover])
  {
    CGRectMakeWithSize();
  }

  else
  {
    CGRectMakeWithSize();
    [BKBookBloomOpenAnimator zoomedFrameForCoverWithSize:v6 isCompact:v10 containerViewBounds:v9, v11, v12, v13, v14];
    v19 = v18;
    v20 = v15;
    v21 = v16;
    v22 = v17;
    v23 = 0.1;
    if (!v6)
    {
      v23 = 0.0;
    }

    if (width <= height)
    {
      v24 = v23;
    }

    else
    {
      v24 = -0.3;
    }

    v25 = v19;
    v26 = v24 * CGRectGetWidth(*(&v15 - 1));
    v40.origin.x = v19;
    v40.origin.y = v20;
    v40.size.width = v21;
    v40.size.height = v22;
    v41 = CGRectInset(v40, v26, 0.0);
    x = v41.origin.x;
    v38 = v41.size.width;
    y = v41.origin.y;
    v37 = v41.size.height;
    CGRectMakeWithSize();
    [BKBookBloomOpenAnimator _availableRectForFittingZoomedCoverInContainerViewBounds:v6 isCompact:?];
    v44.origin.x = v29;
    v44.origin.y = v30;
    v44.size.width = v31;
    v44.size.height = v32;
    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.height = v37;
    v42.size.width = v38;
    CGRectIntersection(v42, v44);
  }

  sub_100083BBC();

  BCNormalizedInsetsForRects();
  result.right = v36;
  result.bottom = v35;
  result.left = v34;
  result.top = v33;
  return result;
}

- (uint64_t)_frameOfContentWithAspectRatio:thatFitsCoverOfAspectRatio:withFrame:insetsContentToCover:
{
  v0 = sub_100083BBC();

  return _BCRectByUnapplyingNormalizedInsets(v0);
}

- (CGRect)zoomedCoverFrame
{
  v3 = [(BKBookOpenAnimator *)self bookViewController];
  if ([v3 im_isCompactWidth])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(BKBookOpenAnimator *)self bookViewController];
    v4 = [v5 im_isCompactHeight];
  }

  v6 = [(BKBookOpenAnimator *)self containerView];
  [v6 bounds];
  IMActionSafeRectForRect();

  v7 = [(BKBookOpenAnimator *)self coverImage];
  [v7 size];
  [BKBookBloomOpenAnimator zoomedFrameForCoverWithSize:"zoomedFrameForCoverWithSize:isCompact:containerViewBounds:" isCompact:v4 containerViewBounds:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(BKBookOpenAnimator *)self coverContainerView];
  v17 = [v16 superview];
  v18 = [(BKBookOpenAnimator *)self containerView];
  [v17 convertRect:v18 fromView:{v9, v11, v13, v15}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = v20;
  v28 = v22;
  v29 = v24;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (void)performAdditionSetup
{
  v25.receiver = self;
  v25.super_class = BKBookBloomOpenAnimator;
  [(BKBookOpenAnimator *)&v25 performAdditionSetup];
  useShadowEffects = self->_useShadowEffects;
  v4 = [BKCustomAnimationPropertiesView alloc];
  v5 = [(BKBookOpenAnimator *)self containerView];
  [v5 bounds];
  v6 = [(BKCustomAnimationPropertiesView *)v4 initWithFrame:?];
  [(BKBookBloomOpenAnimator *)self setBlurredCoverContainer:v6];

  v7 = [(BKBookBloomOpenAnimator *)self blurredCoverContainer];
  [v7 addAnimatablePropertyWithKey:@"filters.gaussianBlur.inputRadius"];

  v8 = [BKCustomAnimationPropertiesView alloc];
  v9 = [(BKBookBloomOpenAnimator *)self blurredCoverContainer];
  [v9 bounds];
  v10 = [(BKCustomAnimationPropertiesView *)v8 initWithFrame:?];
  [(BKBookBloomOpenAnimator *)self setBlurredShadowContainer:v10];

  v11 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
  [v11 addAnimatablePropertyWithKey:@"filters.gaussianBlur.inputRadius"];

  v12 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
  [v12 addAnimatablePropertyWithKey:@"filters.colorBrightness.inputAmount"];

  v13 = [(BKBookBloomOpenAnimator *)self blurredCoverContainer];
  v14 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
  [v13 addSubview:v14];

  if ([(BKBookOpenAnimator *)self skipZoomPhase]&& useShadowEffects)
  {
    v15 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
    [BKBookBloomOpenAnimator setBlurRadius:v15 forView:60.0];

    v16 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
    [BKBookBloomOpenAnimator setBrightnessFilter:v16 forView:-0.6];

    [(BKBookBloomOpenAnimator *)self _adjustShadowForCurrentCoverBounds];
  }

  v17 = [(BKBookBloomOpenAnimator *)self blurredCoverContainer];
  v18 = [(BKBookOpenAnimator *)self coverContainerView];
  [v17 addSubview:v18];

  v19 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
  v20 = [(BKBookOpenAnimator *)self coverShadowView];
  [v19 addSubview:v20];

  [(BKBookBloomOpenAnimator *)self _adjustShadowForCurrentCoverBounds];
  if (![(BKBookOpenAnimator *)self opening])
  {
    v21 = [(BKBookBloomOpenAnimator *)self blurredCoverContainer];
    [v21 setHidden:1];
  }

  if ([(BKBookOpenAnimator *)self skipZoomPhase]&& !useShadowEffects)
  {
    v22 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
    [v22 setHidden:1];
  }

  v23 = [(BKBookOpenAnimator *)self containerView];
  v24 = [(BKBookBloomOpenAnimator *)self blurredCoverContainer];
  [v23 addSubview:v24];
}

- (void)_teardownContentViews
{
  v3 = [(BKBookBloomOpenAnimator *)self fullBookSnapshot];
  [v3 removeFromSuperview];

  [(BKBookBloomOpenAnimator *)self setFullBookSnapshot:0];
  v4 = [(BKBookBloomOpenAnimator *)self contentSnapshot];
  [v4 removeFromSuperview];

  [(BKBookBloomOpenAnimator *)self setContentSnapshot:0];
  v5 = [(BKBookBloomOpenAnimator *)self contentBackgroundView];
  [v5 removeFromSuperview];

  [(BKBookBloomOpenAnimator *)self setContentBackgroundView:0];
  v6 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  [v6 removeFromSuperview];

  [(BKBookBloomOpenAnimator *)self setContentContainerView:0];
}

- (void)teardownViews:(BOOL)a3
{
  v3 = a3;
  [(BKBookBloomOpenAnimator *)self _teardownContentViews];
  v5 = [(BKBookBloomOpenAnimator *)self blurredShadowSnapshot];
  [v5 removeFromSuperview];

  [(BKBookBloomOpenAnimator *)self setBlurredShadowSnapshot:0];
  v6 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
  [v6 removeFromSuperview];

  [(BKBookBloomOpenAnimator *)self setBlurredShadowContainer:0];
  v7 = [(BKBookBloomOpenAnimator *)self blurredCoverContainer];
  [v7 removeFromSuperview];

  [(BKBookBloomOpenAnimator *)self setBlurredCoverContainer:0];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(BKBookBloomOpenAnimator *)self viewsToBeCleanedUp];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v15 + 1) + 8 * v12) removeFromSuperview];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = [(BKBookBloomOpenAnimator *)self viewsToBeCleanedUp];
  [v13 removeAllObjects];

  v14.receiver = self;
  v14.super_class = BKBookBloomOpenAnimator;
  [(BKBookZoomRevealOpenAnimator *)&v14 teardownViews:v3];
}

- (void)setupViewsForZoom
{
  if ([(BKBookOpenAnimator *)self opening])
  {
    [(BKBookBloomOpenAnimator *)self _teardownContentViews];
    v3 = [(BKBookOpenAnimator *)self bookContainerView];
    [v3 setAlpha:0.0];

    v5 = [(BKBookOpenAnimator *)self containerView];
    v4 = [(BKBookBloomOpenAnimator *)self blurredCoverContainer];
    [v5 addSubview:v4];
  }
}

- (void)_setTargetFrame:(CGRect)a3 forView:(id)a4 baseFrame:(CGRect)a5 extraTransform:(CGAffineTransform *)a6
{
  memset(&v14, 0, sizeof(v14));
  v7 = a3.size.width / a5.size.width;
  v8 = a3.size.height / a5.size.height;
  v9 = a4;
  CGAffineTransformMakeScale(&v14, v7, v8);
  t1 = v14;
  v10 = *&a6->c;
  *&v11.a = *&a6->a;
  *&v11.c = v10;
  *&v11.tx = *&a6->tx;
  CGAffineTransformConcat(&v13, &t1, &v11);
  v14 = v13;
  CGRectGetCenterNoRounding();
  [v9 setCenter:?];
  v13 = v14;
  [v9 setTransform:&v13];
}

- (void)_moveCoverToFrame:(CGRect)a3 extraTransform:(CGAffineTransform *)a4
{
  [(BKBookOpenAnimator *)self moveCoverToFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = [(BKBookOpenAnimator *)self coverContainerView];
  v7 = v6;
  if (v6)
  {
    [v6 transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v8 = *&a4->c;
  *&v10.a = *&a4->a;
  *&v10.c = v8;
  *&v10.tx = *&a4->tx;
  CGAffineTransformConcat(&v12, &t1, &v10);
  v9 = [(BKBookOpenAnimator *)self coverContainerView];
  t1 = v12;
  [v9 setTransform:&t1];
}

- (void)_moveContentContainerToFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  [(BKBookBloomOpenAnimator *)self revealSmallContentContainerFrame];
  v10 = v9;
  v11 = *&CGAffineTransformIdentity.c;
  v15[0] = *&CGAffineTransformIdentity.a;
  v15[1] = v11;
  v15[2] = *&CGAffineTransformIdentity.tx;
  [(BKBookBloomOpenAnimator *)self _setTargetFrame:v8 forView:v15 baseFrame:x extraTransform:y, width, height, v12, v10, v13, v14];
}

- (void)animateZoomWithCompletion:(id)a3
{
  v4 = a3;
  if ([(BKBookOpenAnimator *)self opening])
  {
    useShadowEffects = self->_useShadowEffects;
    [(BKBookOpenAnimator *)self closedCoverFrame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(BKBookBloomOpenAnimator *)self zoomedCoverFrame];
    v46 = v15;
    v47 = v14;
    v17 = v16;
    v19 = v18;
    [(BKBookBloomOpenAnimator *)self zoomDuration];
    v21 = v20;
    v22 = 0.0;
    [(BKBookOpenAnimator *)self animateNavigationBarWithDuration:v20 * 0.5 delay:0.0];
    if (![(BKBookOpenAnimator *)self fadeInCover])
    {
      v22 = 1.0;
    }

    v23 = *&CGAffineTransformIdentity.c;
    v55[0] = *&CGAffineTransformIdentity.a;
    v55[1] = v23;
    v55[2] = *&CGAffineTransformIdentity.tx;
    [(BKBookBloomOpenAnimator *)self _moveCoverToFrame:v55 extraTransform:v7, v9, v11, v13];
    v24 = [(BKBookOpenAnimator *)self coverContainerView];
    [v24 setAlpha:v22];

    v25 = [(BKBookOpenAnimator *)self bookshelfTintView];
    [v25 setAlpha:0.0];

    v26 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
    [v26 setAlpha:1.0];

    if (useShadowEffects)
    {
      v27 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
      [BKBookBloomOpenAnimator setBlurRadius:v27 forView:0.0];

      v28 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
      [BKBookBloomOpenAnimator setBrightnessFilter:v28 forView:0.0];
    }

    [(BKBookOpenAnimator *)self adjustDuration:0.2];
    [(BKBookOpenAnimator *)self minibarKeyFrameAnimationWithDuration:0 hide:v21 show:v29 completion:-1.0];
    v30 = [(BKBookBloomOpenAnimator *)self _zoomSpring];
    [v30 mass];
    v32 = v31;
    [v30 stiffness];
    v34 = v33;
    [v30 damping];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_100084A00;
    v52[3] = &unk_100A04D58;
    v52[4] = self;
    v52[5] = v47;
    v52[6] = v46;
    v52[7] = v17;
    v52[8] = v19;
    v54 = useShadowEffects;
    v53 = xmmword_10080B270;
    [UIView _animateUsingSpringWithDuration:0 delay:v52 options:v4 mass:v21 stiffness:0.0 damping:v32 initialVelocity:v34 animations:v35 completion:0.0];
    [(BKBookOpenAnimator *)self adjustDuration:0.3];
    v37 = v36;
    v38 = [(BKBookBloomOpenAnimator *)self _customTimingFunction];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100084ACC;
    v49[3] = &unk_100A04D80;
    v49[4] = self;
    __asm { FMOV            V0.2D, #1.0 }

    v50 = _Q0;
    v51 = useShadowEffects;
    [UIView animateWithDuration:v38 delay:0 timingFunction:v49 options:0 animations:v37 completion:0.0];

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100084B84;
    v48[3] = &unk_100A033C8;
    v48[4] = self;
    [UIView animateWithDuration:v48 animations:v21];
  }

  else
  {
    v44 = objc_retainBlock(v4);
    v45 = v44;
    if (v44)
    {
      (*(v44 + 2))(v44, 1);
    }
  }
}

- (void)_adjustShadowForCurrentCoverBounds
{
  v3 = [(BKBookOpenAnimator *)self coverShadowView];

  if (v3)
  {
    v4 = [(BKBookOpenAnimator *)self coverShadowImage];

    if (v4)
    {
      v5 = [(BKBookOpenAnimator *)self coverContainerView];
      [v5 frame];
      CGRectGetCenterNoRounding();
      v7 = v6;
      v9 = v8;

      v10 = [(BKBookOpenAnimator *)self coverShadowView];
      [v10 setCenter:{v7, v9}];

      v11 = [(BKBookOpenAnimator *)self coverShadowImage];
      [v11 alignmentRectInsets];

      v12 = [(BKBookOpenAnimator *)self coverShadowImage];
      [v12 size];
      CGRectMakeWithSize();

      v13 = [(BKBookOpenAnimator *)self coverContainerView];
      [v13 frame];
      CGSizeScaleThatFillsInCGSize();
      v15 = v14;

      CGAffineTransformMakeScale(&v18, v15, v15);
      v16 = [(BKBookOpenAnimator *)self coverShadowView];
      v17 = v18;
      [v16 setTransform:&v17];
    }
  }
}

- (void)setupSpinner
{
  v3 = [(BKBookOpenAnimator *)self containerView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(BKBookOpenAnimator *)self containerView];
  [(BKBookBloomOpenAnimator *)self zoomedCoverFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(BKBookOpenAnimator *)self coverContainerView];
  v22 = [v21 superview];
  [v12 convertRect:v22 fromView:{v14, v16, v18, v20}];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v34.origin.x = v24;
  v34.origin.y = v26;
  v34.size.width = v28;
  v34.size.height = v30;
  CGRectGetMaxY(v34);
  v35.origin.x = v5;
  v35.origin.y = v7;
  v35.size.width = v9;
  v35.size.height = v11;
  CGRectGetMaxY(v35);
  v36.origin.x = v5;
  v36.origin.y = v7;
  v36.size.width = v9;
  v36.size.height = v11;
  CGRectGetMidX(v36);
  v32 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [v32 bounds];
  CGRectMakeWithCenterAndSize();
  v38 = CGRectIntegral(v37);
  [v32 setFrame:{v38.origin.x, v38.origin.y, v38.size.width, v38.size.height}];
  [v32 setAlpha:0.0];
  [v32 startAnimating];
  v31 = [(BKBookOpenAnimator *)self containerView];
  [v31 addSubview:v32];

  [(BKBookZoomRevealOpenAnimator *)self setSpinnerView:v32];
}

- (void)setupViewsForReveal
{
  v4 = [(BKBookOpenAnimator *)self opening];
  v5 = [(BKBookZoomRevealOpenAnimator *)self contentLoaded];
  if (v4)
  {
    if ((v5 & 1) == 0)
    {
      sub_10078B220();
    }

    if (![(BKBookZoomRevealOpenAnimator *)self contentLoaded])
    {
      v6 = _AEBookOpenLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Revealing content before book is loaded!", buf, 2u);
      }
    }

    v7 = [(BKBookOpenAnimator *)self bookshelfTintView];
    [v7 setAlpha:1.0];

    v8 = [(BKBookOpenAnimator *)self bookContainerView];
    [v8 setAlpha:0.0];

    v9 = [(BKBookBloomOpenAnimator *)self blurredCoverContainer];
    [v9 setHidden:0];

    v10 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
    v11 = [v10 snapshotViewAfterScreenUpdates:0];

    if (v11)
    {
      v12 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
      v13 = [v12 superview];
      [v13 addSubview:v11];

      v14 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
      [v14 center];
      [v11 setCenter:?];

      v15 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
      v16 = [v15 superview];
      v17 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
      [v16 insertSubview:v11 belowSubview:v17];

      v18 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
      [v18 setAlpha:0.0];

      [(BKBookBloomOpenAnimator *)self setBlurredShadowSnapshot:v11];
    }
  }

  else
  {
    v19 = [(BKBookOpenAnimator *)self bookshelfTintView];
    [v19 setAlpha:1.0];

    v20 = [(BKBookOpenAnimator *)self bookContainerView];
    [v20 setAlpha:0.0];

    v11 = [(BKBookBloomOpenAnimator *)self blurredCoverContainer];
    [v11 setHidden:0];
  }

  v21 = [(BKBookOpenAnimator *)self containerView];
  [v21 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v204.origin.x = v23;
  v204.origin.y = v25;
  v204.size.width = v27;
  v204.size.height = v29;
  if (CGRectIsEmpty(v204))
  {
    sub_10078B25C();
  }

  v30 = [[UIView alloc] initWithFrame:{v23, v25, v27, v29}];
  [(BKBookBloomOpenAnimator *)self setContentContainerView:v30];

  v31 = [(BKBookOpenAnimator *)self containerView];
  v32 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  [v31 addSubview:v32];

  v33 = [(BKBookOpenAnimator *)self bookViewController];
  v34 = [UIView alloc];
  v35 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  [v35 bounds];
  v36 = [v34 initWithFrame:?];
  [(BKBookBloomOpenAnimator *)self setContentBackgroundView:v36];

  v37 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  v38 = [(BKBookBloomOpenAnimator *)self contentBackgroundView];
  [v37 addSubview:v38];

  if (objc_opt_respondsToSelector())
  {
    [v33 transitionContentBackgroundColor];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v39 = ;
  v40 = [(BKBookBloomOpenAnimator *)self contentBackgroundView];
  [v40 setBackgroundColor:v39];

  v41 = [v33 transitionContentView];
  v200 = v25;
  v201 = v23;
  v198 = v29;
  v199 = v27;
  if (v41)
  {
    v42 = [(BKBookBloomOpenAnimator *)self contentContainerView];
    [v41 frame];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v51 = [v41 superview];
    [v42 convertRect:v51 fromView:{v44, v46, v48, v50}];
    x = v52;
    y = v54;
    width = v56;
    height = v58;
  }

  else
  {
    v60 = _AEBookOpenLog();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v61 = objc_opt_class();
      *buf = 138412290;
      v203 = v61;
      v62 = v61;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "[%@ transitionContentView] should not return nil", buf, 0xCu);
    }

    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v63 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  [v63 bounds];
  v210.origin.x = x;
  v210.origin.y = y;
  v210.size.width = width;
  v210.size.height = height;
  v206 = CGRectIntersection(v205, v210);
  v64 = v206.origin.x;
  v65 = v206.origin.y;
  v66 = v206.size.width;
  v67 = v206.size.height;

  v207.origin.x = v64;
  v207.origin.y = v65;
  v207.size.width = v66;
  v207.size.height = v67;
  if (CGRectIsNull(v207))
  {
    sub_10078B298(x, y, width, height);
  }

  [(BKBookOpenAnimator *)self _sanitizedFrameWithFullsizeFrame:@"bigContentVisibleRect" name:v64, v65, v66, v67];
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v76 = [(BKBookOpenAnimator *)self coverImage];
  [v76 size];
  v78 = v77;
  v80 = v79;
  v81 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  [v81 bounds];
  v83 = v82;
  v85 = v84;
  v86 = [(BKBookOpenAnimator *)self toViewController];
  v87 = [v86 im_isCompactWidth];
  if (v87)
  {
    v88 = 1;
  }

  else
  {
    v2 = [(BKBookOpenAnimator *)self toViewController];
    v88 = [v2 im_isCompactHeight];
  }

  [(BKBookBloomOpenAnimator *)self _insetsFromContentSize:v88 toCoverSize:v73 containerSize:v75 isCompact:v78, v80, v83, v85];
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v96 = v95;
  if ((v87 & 1) == 0)
  {
  }

  v196 = v92;
  v197 = v90;
  [(BKBookBloomOpenAnimator *)self _frameOfCoverThatFitsContentWithFrame:v69 insetsContentToCover:v71, v73, v75, v90, v92, v94, v96];
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v105 = [(BKBookOpenAnimator *)self coverContainerView];
  v106 = [v105 superview];
  v107 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  [v106 convertRect:v107 fromView:{v98, v100, v102, v104}];
  [(BKBookBloomOpenAnimator *)self setRevealBigCoverFrame:?];

  v108 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  if (v4)
  {
    [(BKBookBloomOpenAnimator *)self zoomedCoverFrame];
  }

  else
  {
    [(BKBookOpenAnimator *)self closedCoverFrame];
  }

  v113 = v109;
  v114 = v110;
  v115 = v111;
  v116 = v112;
  v117 = [(BKBookOpenAnimator *)self coverContainerView];
  v118 = [v117 superview];
  [v108 convertRect:v118 fromView:{v113, v114, v115, v116}];
  v120 = v119;
  v122 = v121;
  v124 = v123;
  v126 = v125;

  v127 = [(BKBookOpenAnimator *)self coverImage];
  [v127 size];
  [(BKBookBloomOpenAnimator *)self _frameOfContentWithAspectRatio:v73 thatFitsCoverOfAspectRatio:v75 withFrame:v128 insetsContentToCover:v129, v120, v122, v124, v126, *&v197, *&v196, *&v94, *&v96];

  BCNormalizedInsetsForRects();
  BCRectByApplyingNormalizedInsets();
  v131 = v130;
  v133 = v132;
  v135 = v134;
  v137 = v136;
  if (objc_opt_respondsToSelector())
  {
    v138 = [v33 transitionContentViewImage];
    if (v138)
    {
      v139 = [[UIImageView alloc] initWithImage:v138];
      [(BKBookBloomOpenAnimator *)self setContentSnapshot:v139];
    }
  }

  v140 = [(BKBookBloomOpenAnimator *)self contentSnapshot];

  if (!v140)
  {
    v141 = [v41 snapshotViewAfterScreenUpdates:0];
    [(BKBookBloomOpenAnimator *)self setContentSnapshot:v141];
  }

  [(BKBookOpenAnimator *)self _sanitizedFrameWithCenteredFrame:@"smallContentFrame" ofSize:v131 name:v133, v135, v137, 1.0, 1.0];
  v143 = v142;
  v145 = v144;
  v147 = v146;
  v149 = v148;
  v150 = [(BKBookBloomOpenAnimator *)self contentSnapshot];
  [v150 setFrame:{v143, v145, v147, v149}];

  v151 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  v152 = [(BKBookBloomOpenAnimator *)self contentSnapshot];
  [v151 addSubview:v152];

  v153 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  [v153 bounds];
  BCNormalizedInsetsForRects();

  BCRectByApplyingNormalizedInsets();
  v155 = v154;
  v157 = v156;
  v159 = v158;
  v161 = v160;
  v162 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  v163 = [v162 superview];
  v164 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  [v163 convertRect:v164 fromView:{v155, v157, v159, v161}];
  [(BKBookBloomOpenAnimator *)self setRevealBigContentContainerFrame:?];

  [(BKBookBloomOpenAnimator *)self setRevealSmallContentContainerFrame:v201, v200, v199, v198];
  [(BKBookBloomOpenAnimator *)self revealBigContentContainerFrame];
  BCNormalizedInsetsForRects();
  BCRectByApplyingNormalizedInsets();
  v166 = v165;
  v168 = v167;
  v170 = v169;
  v172 = v171;
  v173 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  v174 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  v175 = [v174 superview];
  [v173 convertRect:v175 fromView:{v166, v168, v170, v172}];
  v177 = v176;
  v179 = v178;
  v181 = v180;
  v183 = v182;

  v184 = [(BKBookBloomOpenAnimator *)self contentBackgroundView];
  [v184 frame];
  v211.origin.x = v185;
  v211.origin.y = v186;
  v211.size.width = v187;
  v211.size.height = v188;
  v208.origin.x = v177;
  v208.origin.y = v179;
  v208.size.width = v181;
  v208.size.height = v183;
  v209 = CGRectUnion(v208, v211);
  v189 = v209.origin.x;
  v190 = v209.origin.y;
  v191 = v209.size.width;
  v192 = v209.size.height;
  v193 = [(BKBookBloomOpenAnimator *)self contentBackgroundView];
  [v193 setFrame:{v189, v190, v191, v192}];

  v194 = [(BKBookOpenAnimator *)self containerView];
  v195 = [(BKBookBloomOpenAnimator *)self blurredCoverContainer];
  [v194 addSubview:v195];
}

- (void)animateRevealWithCompletion:(id)a3
{
  v4 = a3;
  if ([(BKBookOpenAnimator *)self opening])
  {
    [(BKBookBloomOpenAnimator *)self _animateRevealForOpeningWithCompletion:v4];
  }

  else
  {
    [(BKBookBloomOpenAnimator *)self _animateRevealForClosingWithCompletion:v4];
  }
}

- (BOOL)_contentViewIsShowingCover
{
  v2 = [(BKBookOpenAnimator *)self bookViewController];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 transitionContentViewIsShowingCover];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_animateRevealForOpeningWithCompletion:(id)a3
{
  v4 = a3;
  v93[0] = 0;
  v93[1] = v93;
  v93[2] = 0x2020000000;
  v93[3] = 0;
  v92[0] = _NSConcreteStackBlock;
  v92[1] = 3221225472;
  v92[2] = sub_10008648C;
  v92[3] = &unk_100A03CF0;
  v92[4] = v93;
  v5 = objc_retainBlock(v92);
  v89[0] = _NSConcreteStackBlock;
  v89[1] = 3221225472;
  v89[2] = sub_1000864A4;
  v89[3] = &unk_100A04DA8;
  v91 = v93;
  v67 = v4;
  v90 = v67;
  v6 = objc_retainBlock(v89);
  v7 = [(BKBookBloomOpenAnimator *)self _contentViewIsShowingCover];
  useShadowEffects = self->_useShadowEffects;
  [(BKBookBloomOpenAnimator *)self revealDuration];
  v77 = v9;
  [(BKBookBloomOpenAnimator *)self zoomedCoverFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(BKBookBloomOpenAnimator *)self revealBigCoverFrame];
  v75 = v19;
  v76 = v18;
  v73 = v21;
  v74 = v20;
  [(BKBookBloomOpenAnimator *)self revealSmallContentContainerFrame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [(BKBookBloomOpenAnimator *)self revealBigContentContainerFrame];
  v71 = v31;
  v72 = v30;
  v69 = v33;
  v70 = v32;
  v34 = *&CGAffineTransformIdentity.c;
  v88[0] = *&CGAffineTransformIdentity.a;
  v88[1] = v34;
  v88[2] = *&CGAffineTransformIdentity.tx;
  [(BKBookBloomOpenAnimator *)self _moveCoverToFrame:v88 extraTransform:v11, v13, v15, v17];
  [(BKBookBloomOpenAnimator *)self _moveContentContainerToFrame:v23, v25, v27, v29];
  if (useShadowEffects)
  {
    v35 = [(BKBookBloomOpenAnimator *)self blurredShadowSnapshot];

    if (v35)
    {
      [(BKBookBloomOpenAnimator *)self blurredShadowSnapshot];
    }

    else
    {
      [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
    }
    v36 = ;
    [v36 setAlpha:1.0];
  }

  (v5[2])(v5);
  v37 = [(BKBookBloomOpenAnimator *)self _revealSpring];
  [v37 mass];
  v39 = v38;
  [v37 stiffness];
  v41 = v40;
  [v37 damping];
  v87[0] = _NSConcreteStackBlock;
  v87[1] = 3221225472;
  v87[2] = sub_10008652C;
  v87[3] = &unk_100A04558;
  v87[4] = self;
  v87[5] = v76;
  v87[6] = v75;
  v87[7] = v74;
  v87[8] = v73;
  v87[9] = v72;
  v87[10] = v71;
  v87[11] = v70;
  v87[12] = v69;
  [UIView _animateUsingSpringWithDuration:0 delay:v87 options:v6 mass:v77 stiffness:0.0 damping:v39 initialVelocity:v41 animations:v42 completion:0.0];
  if (useShadowEffects)
  {
    [(BKBookOpenAnimator *)self adjustDuration:0.2];
    v44 = v43;
    v45 = [(BKBookBloomOpenAnimator *)self _customTimingFunction];
    v86[0] = _NSConcreteStackBlock;
    v86[1] = 3221225472;
    v86[2] = sub_100086590;
    v86[3] = &unk_100A033C8;
    v86[4] = self;
    [UIView animateWithDuration:v45 delay:0 timingFunction:v86 options:v6 animations:v44 completion:0.0];
  }

  v46 = [(BKBookOpenAnimator *)self bookViewController];
  if (objc_opt_respondsToSelector())
  {
    v47 = [v46 transitionContentBackgroundColor];
  }

  else
  {
    v47 = 0;
  }

  v48 = [(BKBookBloomOpenAnimator *)self bookshelfTintColor];
  v49 = v47;
  if (v7)
  {
    v50 = [(BKBookOpenAnimator *)self coverContainerView];
    [v50 setAlpha:1.0];

    v51 = [(BKBookBloomOpenAnimator *)self contentContainerView];
    [v51 setAlpha:0.0];

    if (v49)
    {
      v52 = [(BKBookOpenAnimator *)self bookshelfTintView];
      [v52 setBackgroundColor:v48];

      (v5[2])(v5);
      [(BKBookOpenAnimator *)self adjustDuration:0.2];
      v54 = v53;
      v55 = [(BKBookBloomOpenAnimator *)self _customTimingFunction];
      v84[0] = _NSConcreteStackBlock;
      v84[1] = 3221225472;
      v84[2] = sub_100086608;
      v84[3] = &unk_100A03440;
      v84[4] = self;
      v85 = v49;
      [UIView animateWithDuration:v55 delay:0 timingFunction:v84 options:v6 animations:v54 completion:0.0];
    }
  }

  else
  {
    v56 = [(BKBookOpenAnimator *)self coverContainerView];
    [v56 setAlpha:1.0];

    v57 = [(BKBookBloomOpenAnimator *)self contentContainerView];
    [v57 setAlpha:0.0];

    v58 = [(BKBookBloomOpenAnimator *)self blurredCoverContainer];
    [BKBookBloomOpenAnimator setBlurRadius:v58 forView:0.0];

    (v5[2])(v5);
    [(BKBookOpenAnimator *)self adjustDuration:0.4];
    v83[0] = _NSConcreteStackBlock;
    v83[1] = 3221225472;
    v83[2] = sub_100086658;
    v83[3] = &unk_100A04DD0;
    v83[4] = self;
    v83[5] = 0x405E000000000000;
    [UIView animateWithDuration:"animateWithDuration:delay:options:animations:completion:" delay:0 options:v83 animations:v6 completion:?];
    if (v49)
    {
      v59 = [(BKBookOpenAnimator *)self bookshelfTintView];
      [v59 setBackgroundColor:v48];

      (v5[2])(v5);
      [(BKBookOpenAnimator *)self adjustDuration:0.2];
      v61 = v60;
      v62 = [(BKBookBloomOpenAnimator *)self _customTimingFunction];
      v81[0] = _NSConcreteStackBlock;
      v81[1] = 3221225472;
      v81[2] = sub_1000866C4;
      v81[3] = &unk_100A03440;
      v81[4] = self;
      v82 = v49;
      [UIView animateWithDuration:v62 delay:0 timingFunction:v81 options:v6 animations:v61 completion:0.0];
    }

    (v5[2])(v5);
    [(BKBookOpenAnimator *)self adjustDuration:0.2];
    v64 = v63;
    v65 = [(BKBookBloomOpenAnimator *)self _customTimingFunction];
    v80[0] = _NSConcreteStackBlock;
    v80[1] = 3221225472;
    v80[2] = sub_100086714;
    v80[3] = &unk_100A04DD0;
    v80[4] = self;
    v80[5] = 0;
    [UIView animateWithDuration:v65 delay:0 timingFunction:v80 options:v6 animations:v64 completion:0.0];

    (v5[2])(v5);
    [(BKBookOpenAnimator *)self adjustDuration:0.17];
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_100086768;
    v79[3] = &unk_100A04DD0;
    v79[4] = self;
    v79[5] = 0x3FF0000000000000;
    [UIView animateWithDuration:"animateWithDuration:delay:options:animations:completion:" delay:0 options:v79 animations:v6 completion:?];
  }

  (v5[2])(v5);
  [(BKBookOpenAnimator *)self adjustDuration:0.2];
  [(BKBookOpenAnimator *)self minibarKeyFrameAnimationWithDuration:v6 hide:v77 show:-1.0 completion:v66];
  v78[0] = _NSConcreteStackBlock;
  v78[1] = 3221225472;
  v78[2] = sub_1000867BC;
  v78[3] = &unk_100A033C8;
  v78[4] = self;
  [UIView animateWithDuration:v78 animations:v77];

  _Block_object_dispose(v93, 8);
}

- (void)_animateRevealForClosingWithCompletion:(id)a3
{
  v4 = a3;
  v79[0] = 0;
  v79[1] = v79;
  v79[2] = 0x2020000000;
  v79[3] = 0;
  v78[0] = _NSConcreteStackBlock;
  v78[1] = 3221225472;
  v78[2] = sub_100086ECC;
  v78[3] = &unk_100A03CF0;
  v78[4] = v79;
  v5 = objc_retainBlock(v78);
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_100086EE4;
  v75[3] = &unk_100A04DA8;
  v77 = v79;
  v6 = v4;
  v76 = v6;
  v7 = objc_retainBlock(v75);
  [(BKBookBloomOpenAnimator *)self closeDuration];
  v67 = v8;
  v9 = [(BKBookOpenAnimator *)self fadeInCover];
  [(BKBookBloomOpenAnimator *)self revealBigCoverFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(BKBookOpenAnimator *)self closedCoverFrame];
  v65 = v19;
  v66 = v18;
  v63 = v21;
  v64 = v20;
  [(BKBookBloomOpenAnimator *)self revealBigContentContainerFrame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [(BKBookBloomOpenAnimator *)self revealSmallContentContainerFrame];
  v61 = v31;
  v62 = v30;
  v59 = v33;
  v60 = v32;
  v34 = *&CGAffineTransformIdentity.c;
  v74[0] = *&CGAffineTransformIdentity.a;
  v74[1] = v34;
  v74[2] = *&CGAffineTransformIdentity.tx;
  [(BKBookBloomOpenAnimator *)self _moveCoverToFrame:v74 extraTransform:v11, v13, v15, v17];
  [(BKBookBloomOpenAnimator *)self _moveContentContainerToFrame:v23, v25, v27, v29];
  v35 = [(BKBookOpenAnimator *)self coverContainerView];
  [v35 setAlpha:0.0];

  v36 = [(BKBookBloomOpenAnimator *)self blurredCoverContainer];
  [BKBookBloomOpenAnimator setBlurRadius:v36 forView:120.0];

  v37 = [(BKBookOpenAnimator *)self bookshelfTintView];
  [v37 setAlpha:1.0];

  v38 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  [v38 setAlpha:1.0];

  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_100086F6C;
  v73[3] = &unk_100A04558;
  v73[4] = self;
  v73[5] = v66;
  v73[6] = v65;
  v73[7] = v64;
  v73[8] = v63;
  v73[9] = v62;
  v73[10] = v61;
  v73[11] = v60;
  v73[12] = v59;
  v39 = objc_retainBlock(v73);
  (v5[2])(v5);
  if (v9)
  {
    v40 = [(BKBookBloomOpenAnimator *)self _customTimingFunction];
    [UIView animateWithDuration:v40 delay:0 timingFunction:v39 options:v7 animations:v67 completion:0.0];
  }

  else
  {
    v40 = [(BKBookBloomOpenAnimator *)self _closeSpring];
    [v40 mass];
    v42 = v41;
    [v40 stiffness];
    v44 = v43;
    [v40 damping];
    [UIView _animateUsingSpringWithDuration:0 delay:v39 options:v7 mass:v67 stiffness:0.0 damping:v42 initialVelocity:v44 animations:v45 completion:0.0];
  }

  (v5[2])(v5);
  [(BKBookOpenAnimator *)self adjustDuration:0.32];
  v47 = v46;
  v48 = [(BKBookBloomOpenAnimator *)self _customTimingFunction];
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_100086FD0;
  v72[3] = &unk_100A04DD0;
  v72[4] = self;
  v72[5] = 0x3FF0000000000000;
  [UIView animateWithDuration:v48 delay:0 timingFunction:v72 options:v7 animations:v47 completion:0.0];

  (v5[2])(v5);
  [(BKBookOpenAnimator *)self adjustDuration:0.15];
  v50 = v49;
  v51 = [(BKBookBloomOpenAnimator *)self _customTimingFunction];
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_100087024;
  v71[3] = &unk_100A04DD0;
  v71[4] = self;
  v71[5] = 0;
  [UIView animateWithDuration:v51 delay:0 timingFunction:v71 options:v7 animations:v50 completion:0.0];

  (v5[2])(v5);
  [(BKBookOpenAnimator *)self adjustDuration:0.2];
  v53 = v52;
  v54 = [(BKBookBloomOpenAnimator *)self _customTimingFunction];
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_100087090;
  v70[3] = &unk_100A04DD0;
  v70[4] = self;
  v70[5] = 0;
  [UIView animateWithDuration:v54 delay:0 timingFunction:v70 options:v7 animations:v53 completion:0.0];

  (v5[2])(v5);
  [(BKBookOpenAnimator *)self adjustDuration:0.32];
  v56 = v55;
  v57 = [(BKBookBloomOpenAnimator *)self _customTimingFunction];
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_1000870E4;
  v69[3] = &unk_100A04DD0;
  v69[4] = self;
  v69[5] = 0;
  [UIView animateWithDuration:v57 delay:0 timingFunction:v69 options:v7 animations:v56 completion:0.0];

  (v5[2])(v5);
  [(BKBookOpenAnimator *)self adjustDuration:0.2];
  [(BKBookOpenAnimator *)self minibarKeyFrameAnimationWithDuration:v7 hide:v67 show:-1.0 completion:v58];
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_100087138;
  v68[3] = &unk_100A033C8;
  v68[4] = self;
  [UIView animateWithDuration:v68 animations:v67];

  _Block_object_dispose(v79, 8);
}

+ (double)marginPercentage:(BOOL)a3
{
  result = 0.13;
  if (a3)
  {
    return 0.1;
  }

  return result;
}

+ (CGRect)_availableRectForFittingZoomedCoverInContainerViewBounds:(CGRect)a3 isCompact:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [objc_opt_class() marginPercentage:a4];
  v9 = width * v8;
  v10 = height * v8;
  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;

  return CGRectInset(*&v11, v9, v10);
}

+ (CGRect)zoomedFrameForCoverWithSize:(CGSize)a3 isCompact:(BOOL)a4 containerViewBounds:(CGRect)a5
{
  [a1 _availableRectForFittingZoomedCoverInContainerViewBounds:a4 isCompact:{a5.origin.x, a5.origin.y, a5.size.width, a5.size.height}];

  sub_100083BBC();
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

+ (void)setBlurRadius:(double)a3 forView:(id)a4
{
  v5 = [a4 layer];
  v6 = [v5 valueForKeyPath:@"filters.gaussianBlur"];

  if (v6)
  {
    v7 = [NSNumber numberWithDouble:a3];
    [v5 setValue:v7 forKeyPath:@"filters.gaussianBlur.inputRadius"];
  }

  else
  {
    v8 = [CAFilter alloc];
    v7 = [v8 initWithType:kCAFilterGaussianBlur];
    [v7 setName:@"gaussianBlur"];
    v9 = [NSNumber numberWithDouble:a3];
    [v7 setValue:v9 forKey:kCIInputRadiusKey];

    [v7 setValue:@"low" forKey:@"inputQuality"];
    [v7 setValue:@"low" forKey:@"inputIntermediateBitDepth"];
    v10 = [v5 filters];
    if (v10)
    {
      v11 = [v5 filters];
      v12 = [v11 arrayByAddingObject:v7];
      [v5 setFilters:v12];
    }

    else
    {
      v13 = v7;
      v11 = [NSArray arrayWithObjects:&v13 count:1];
      [v5 setFilters:v11];
    }
  }
}

+ (void)setBrightnessFilter:(double)a3 forView:(id)a4
{
  v5 = [a4 layer];
  v6 = [v5 valueForKeyPath:@"filters.colorBrightness.inputAmount"];

  if (v6)
  {
    v7 = [NSNumber numberWithDouble:a3];
    [v5 setValue:v7 forKeyPath:@"filters.colorBrightness.inputAmount"];
  }

  else
  {
    v7 = [CAFilter filterWithType:kCAFilterColorBrightness];
    [v7 setName:@"colorBrightness"];
    v8 = [NSNumber numberWithDouble:a3];
    [v7 setValue:v8 forKey:@"inputAmount"];

    v9 = [v5 filters];
    if (v9)
    {
      v10 = [v5 filters];
      v11 = [v10 arrayByAddingObject:v7];
      [v5 setFilters:v11];
    }

    else
    {
      v12 = v7;
      v10 = [NSArray arrayWithObjects:&v12 count:1];
      [v5 setFilters:v10];
    }
  }
}

- (CGRect)revealSmallContentContainerFrame
{
  x = self->_revealSmallContentContainerFrame.origin.x;
  y = self->_revealSmallContentContainerFrame.origin.y;
  width = self->_revealSmallContentContainerFrame.size.width;
  height = self->_revealSmallContentContainerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)revealBigCoverFrame
{
  x = self->_revealBigCoverFrame.origin.x;
  y = self->_revealBigCoverFrame.origin.y;
  width = self->_revealBigCoverFrame.size.width;
  height = self->_revealBigCoverFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)revealBigContentContainerFrame
{
  x = self->_revealBigContentContainerFrame.origin.x;
  y = self->_revealBigContentContainerFrame.origin.y;
  width = self->_revealBigContentContainerFrame.size.width;
  height = self->_revealBigContentContainerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)closedContentContainerFrame
{
  x = self->_closedContentContainerFrame.origin.x;
  y = self->_closedContentContainerFrame.origin.y;
  width = self->_closedContentContainerFrame.size.width;
  height = self->_closedContentContainerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end