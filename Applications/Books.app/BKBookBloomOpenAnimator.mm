@interface BKBookBloomOpenAnimator
+ (CGRect)_availableRectForFittingZoomedCoverInContainerViewBounds:(CGRect)bounds isCompact:(BOOL)compact;
+ (CGRect)zoomedFrameForCoverWithSize:(CGSize)size isCompact:(BOOL)compact containerViewBounds:(CGRect)bounds;
+ (double)marginPercentage:(BOOL)percentage;
+ (void)setBlurRadius:(double)radius forView:(id)view;
+ (void)setBrightnessFilter:(double)filter forView:(id)view;
- (BOOL)_contentViewIsShowingCover;
- (CGRect)closedContentContainerFrame;
- (CGRect)revealBigContentContainerFrame;
- (CGRect)revealBigCoverFrame;
- (CGRect)revealSmallContentContainerFrame;
- (CGRect)zoomedCoverFrame;
- (UIEdgeInsets)_insetsFromContentSize:(CGSize)size toCoverSize:(CGSize)coverSize containerSize:(CGSize)containerSize isCompact:(BOOL)compact;
- (double)closeDuration;
- (double)duration;
- (double)revealDuration;
- (double)zoomDuration;
- (id)_closeSpring;
- (id)_customTimingFunction;
- (id)_revealSpring;
- (id)_zoomSpring;
- (id)initOpening:(BOOL)opening;
- (uint64_t)_frameOfContentWithAspectRatio:thatFitsCoverOfAspectRatio:withFrame:insetsContentToCover:;
- (void)_adjustShadowForCurrentCoverBounds;
- (void)_animateRevealForClosingWithCompletion:(id)completion;
- (void)_animateRevealForOpeningWithCompletion:(id)completion;
- (void)_moveContentContainerToFrame:(CGRect)frame;
- (void)_moveCoverToFrame:(CGRect)frame extraTransform:(CGAffineTransform *)transform;
- (void)_setTargetFrame:(CGRect)frame forView:(id)view baseFrame:(CGRect)baseFrame extraTransform:(CGAffineTransform *)transform;
- (void)_teardownContentViews;
- (void)animateRevealWithCompletion:(id)completion;
- (void)animateZoomWithCompletion:(id)completion;
- (void)performAdditionSetup;
- (void)setupSpinner;
- (void)setupViewsForReveal;
- (void)setupViewsForZoom;
- (void)teardownViews:(BOOL)views;
@end

@implementation BKBookBloomOpenAnimator

- (id)initOpening:(BOOL)opening
{
  v7.receiver = self;
  v7.super_class = BKBookBloomOpenAnimator;
  v3 = [(BKBookOpenAnimator *)&v7 initOpening:opening];
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
  toViewController = [(BKBookOpenAnimator *)self toViewController];
  if ([toViewController im_isCompactWidth])
  {
    im_isCompactHeight = 1;
  }

  else
  {
    toViewController2 = [(BKBookOpenAnimator *)self toViewController];
    im_isCompactHeight = [toViewController2 im_isCompactHeight];
  }

  v6 = [UISpringTimingParameters alloc];
  v7 = 300.0;
  if ((im_isCompactHeight & 1) == 0)
  {
    v7 = 200.0;
  }

  v8 = 30.0;
  if (im_isCompactHeight)
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
  _zoomSpring = [(BKBookBloomOpenAnimator *)self _zoomSpring];
  [_zoomSpring settlingDuration];
  v4 = v3;

  return v4;
}

- (double)revealDuration
{
  _revealSpring = [(BKBookBloomOpenAnimator *)self _revealSpring];
  [_revealSpring settlingDuration];
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
    _closeSpring = [(BKBookBloomOpenAnimator *)self _closeSpring];
    [_closeSpring settlingDuration];
    v6 = v5;

    return v6;
  }

  return result;
}

- (UIEdgeInsets)_insetsFromContentSize:(CGSize)size toCoverSize:(CGSize)coverSize containerSize:(CGSize)containerSize isCompact:(BOOL)compact
{
  compactCopy = compact;
  height = containerSize.height;
  width = containerSize.width;
  v9 = coverSize.height;
  v10 = coverSize.width;
  if ([(BKBookBloomOpenAnimator *)self _contentViewIsShowingCover])
  {
    CGRectMakeWithSize();
  }

  else
  {
    CGRectMakeWithSize();
    [BKBookBloomOpenAnimator zoomedFrameForCoverWithSize:compactCopy isCompact:v10 containerViewBounds:v9, v11, v12, v13, v14];
    v19 = v18;
    v20 = v15;
    v21 = v16;
    v22 = v17;
    v23 = 0.1;
    if (!compactCopy)
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
    [BKBookBloomOpenAnimator _availableRectForFittingZoomedCoverInContainerViewBounds:compactCopy isCompact:?];
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
  bookViewController = [(BKBookOpenAnimator *)self bookViewController];
  if ([bookViewController im_isCompactWidth])
  {
    im_isCompactHeight = 1;
  }

  else
  {
    bookViewController2 = [(BKBookOpenAnimator *)self bookViewController];
    im_isCompactHeight = [bookViewController2 im_isCompactHeight];
  }

  containerView = [(BKBookOpenAnimator *)self containerView];
  [containerView bounds];
  IMActionSafeRectForRect();

  coverImage = [(BKBookOpenAnimator *)self coverImage];
  [coverImage size];
  [BKBookBloomOpenAnimator zoomedFrameForCoverWithSize:"zoomedFrameForCoverWithSize:isCompact:containerViewBounds:" isCompact:im_isCompactHeight containerViewBounds:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  coverContainerView = [(BKBookOpenAnimator *)self coverContainerView];
  superview = [coverContainerView superview];
  containerView2 = [(BKBookOpenAnimator *)self containerView];
  [superview convertRect:containerView2 fromView:{v9, v11, v13, v15}];
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
  containerView = [(BKBookOpenAnimator *)self containerView];
  [containerView bounds];
  v6 = [(BKCustomAnimationPropertiesView *)v4 initWithFrame:?];
  [(BKBookBloomOpenAnimator *)self setBlurredCoverContainer:v6];

  blurredCoverContainer = [(BKBookBloomOpenAnimator *)self blurredCoverContainer];
  [blurredCoverContainer addAnimatablePropertyWithKey:@"filters.gaussianBlur.inputRadius"];

  v8 = [BKCustomAnimationPropertiesView alloc];
  blurredCoverContainer2 = [(BKBookBloomOpenAnimator *)self blurredCoverContainer];
  [blurredCoverContainer2 bounds];
  v10 = [(BKCustomAnimationPropertiesView *)v8 initWithFrame:?];
  [(BKBookBloomOpenAnimator *)self setBlurredShadowContainer:v10];

  blurredShadowContainer = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
  [blurredShadowContainer addAnimatablePropertyWithKey:@"filters.gaussianBlur.inputRadius"];

  blurredShadowContainer2 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
  [blurredShadowContainer2 addAnimatablePropertyWithKey:@"filters.colorBrightness.inputAmount"];

  blurredCoverContainer3 = [(BKBookBloomOpenAnimator *)self blurredCoverContainer];
  blurredShadowContainer3 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
  [blurredCoverContainer3 addSubview:blurredShadowContainer3];

  if ([(BKBookOpenAnimator *)self skipZoomPhase]&& useShadowEffects)
  {
    blurredShadowContainer4 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
    [BKBookBloomOpenAnimator setBlurRadius:blurredShadowContainer4 forView:60.0];

    blurredShadowContainer5 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
    [BKBookBloomOpenAnimator setBrightnessFilter:blurredShadowContainer5 forView:-0.6];

    [(BKBookBloomOpenAnimator *)self _adjustShadowForCurrentCoverBounds];
  }

  blurredCoverContainer4 = [(BKBookBloomOpenAnimator *)self blurredCoverContainer];
  coverContainerView = [(BKBookOpenAnimator *)self coverContainerView];
  [blurredCoverContainer4 addSubview:coverContainerView];

  blurredShadowContainer6 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
  coverShadowView = [(BKBookOpenAnimator *)self coverShadowView];
  [blurredShadowContainer6 addSubview:coverShadowView];

  [(BKBookBloomOpenAnimator *)self _adjustShadowForCurrentCoverBounds];
  if (![(BKBookOpenAnimator *)self opening])
  {
    blurredCoverContainer5 = [(BKBookBloomOpenAnimator *)self blurredCoverContainer];
    [blurredCoverContainer5 setHidden:1];
  }

  if ([(BKBookOpenAnimator *)self skipZoomPhase]&& !useShadowEffects)
  {
    blurredShadowContainer7 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
    [blurredShadowContainer7 setHidden:1];
  }

  containerView2 = [(BKBookOpenAnimator *)self containerView];
  blurredCoverContainer6 = [(BKBookBloomOpenAnimator *)self blurredCoverContainer];
  [containerView2 addSubview:blurredCoverContainer6];
}

- (void)_teardownContentViews
{
  fullBookSnapshot = [(BKBookBloomOpenAnimator *)self fullBookSnapshot];
  [fullBookSnapshot removeFromSuperview];

  [(BKBookBloomOpenAnimator *)self setFullBookSnapshot:0];
  contentSnapshot = [(BKBookBloomOpenAnimator *)self contentSnapshot];
  [contentSnapshot removeFromSuperview];

  [(BKBookBloomOpenAnimator *)self setContentSnapshot:0];
  contentBackgroundView = [(BKBookBloomOpenAnimator *)self contentBackgroundView];
  [contentBackgroundView removeFromSuperview];

  [(BKBookBloomOpenAnimator *)self setContentBackgroundView:0];
  contentContainerView = [(BKBookBloomOpenAnimator *)self contentContainerView];
  [contentContainerView removeFromSuperview];

  [(BKBookBloomOpenAnimator *)self setContentContainerView:0];
}

- (void)teardownViews:(BOOL)views
{
  viewsCopy = views;
  [(BKBookBloomOpenAnimator *)self _teardownContentViews];
  blurredShadowSnapshot = [(BKBookBloomOpenAnimator *)self blurredShadowSnapshot];
  [blurredShadowSnapshot removeFromSuperview];

  [(BKBookBloomOpenAnimator *)self setBlurredShadowSnapshot:0];
  blurredShadowContainer = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
  [blurredShadowContainer removeFromSuperview];

  [(BKBookBloomOpenAnimator *)self setBlurredShadowContainer:0];
  blurredCoverContainer = [(BKBookBloomOpenAnimator *)self blurredCoverContainer];
  [blurredCoverContainer removeFromSuperview];

  [(BKBookBloomOpenAnimator *)self setBlurredCoverContainer:0];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  viewsToBeCleanedUp = [(BKBookBloomOpenAnimator *)self viewsToBeCleanedUp];
  v9 = [viewsToBeCleanedUp countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(viewsToBeCleanedUp);
        }

        [*(*(&v15 + 1) + 8 * v12) removeFromSuperview];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [viewsToBeCleanedUp countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  viewsToBeCleanedUp2 = [(BKBookBloomOpenAnimator *)self viewsToBeCleanedUp];
  [viewsToBeCleanedUp2 removeAllObjects];

  v14.receiver = self;
  v14.super_class = BKBookBloomOpenAnimator;
  [(BKBookZoomRevealOpenAnimator *)&v14 teardownViews:viewsCopy];
}

- (void)setupViewsForZoom
{
  if ([(BKBookOpenAnimator *)self opening])
  {
    [(BKBookBloomOpenAnimator *)self _teardownContentViews];
    bookContainerView = [(BKBookOpenAnimator *)self bookContainerView];
    [bookContainerView setAlpha:0.0];

    containerView = [(BKBookOpenAnimator *)self containerView];
    blurredCoverContainer = [(BKBookBloomOpenAnimator *)self blurredCoverContainer];
    [containerView addSubview:blurredCoverContainer];
  }
}

- (void)_setTargetFrame:(CGRect)frame forView:(id)view baseFrame:(CGRect)baseFrame extraTransform:(CGAffineTransform *)transform
{
  memset(&v14, 0, sizeof(v14));
  v7 = frame.size.width / baseFrame.size.width;
  v8 = frame.size.height / baseFrame.size.height;
  viewCopy = view;
  CGAffineTransformMakeScale(&v14, v7, v8);
  t1 = v14;
  v10 = *&transform->c;
  *&v11.a = *&transform->a;
  *&v11.c = v10;
  *&v11.tx = *&transform->tx;
  CGAffineTransformConcat(&v13, &t1, &v11);
  v14 = v13;
  CGRectGetCenterNoRounding();
  [viewCopy setCenter:?];
  v13 = v14;
  [viewCopy setTransform:&v13];
}

- (void)_moveCoverToFrame:(CGRect)frame extraTransform:(CGAffineTransform *)transform
{
  [(BKBookOpenAnimator *)self moveCoverToFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  coverContainerView = [(BKBookOpenAnimator *)self coverContainerView];
  v7 = coverContainerView;
  if (coverContainerView)
  {
    [coverContainerView transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v8 = *&transform->c;
  *&v10.a = *&transform->a;
  *&v10.c = v8;
  *&v10.tx = *&transform->tx;
  CGAffineTransformConcat(&v12, &t1, &v10);
  coverContainerView2 = [(BKBookOpenAnimator *)self coverContainerView];
  t1 = v12;
  [coverContainerView2 setTransform:&t1];
}

- (void)_moveContentContainerToFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  contentContainerView = [(BKBookBloomOpenAnimator *)self contentContainerView];
  [(BKBookBloomOpenAnimator *)self revealSmallContentContainerFrame];
  v10 = v9;
  v11 = *&CGAffineTransformIdentity.c;
  v15[0] = *&CGAffineTransformIdentity.a;
  v15[1] = v11;
  v15[2] = *&CGAffineTransformIdentity.tx;
  [(BKBookBloomOpenAnimator *)self _setTargetFrame:contentContainerView forView:v15 baseFrame:x extraTransform:y, width, height, v12, v10, v13, v14];
}

- (void)animateZoomWithCompletion:(id)completion
{
  completionCopy = completion;
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
    coverContainerView = [(BKBookOpenAnimator *)self coverContainerView];
    [coverContainerView setAlpha:v22];

    bookshelfTintView = [(BKBookOpenAnimator *)self bookshelfTintView];
    [bookshelfTintView setAlpha:0.0];

    blurredShadowContainer = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
    [blurredShadowContainer setAlpha:1.0];

    if (useShadowEffects)
    {
      blurredShadowContainer2 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
      [BKBookBloomOpenAnimator setBlurRadius:blurredShadowContainer2 forView:0.0];

      blurredShadowContainer3 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
      [BKBookBloomOpenAnimator setBrightnessFilter:blurredShadowContainer3 forView:0.0];
    }

    [(BKBookOpenAnimator *)self adjustDuration:0.2];
    [(BKBookOpenAnimator *)self minibarKeyFrameAnimationWithDuration:0 hide:v21 show:v29 completion:-1.0];
    _zoomSpring = [(BKBookBloomOpenAnimator *)self _zoomSpring];
    [_zoomSpring mass];
    v32 = v31;
    [_zoomSpring stiffness];
    v34 = v33;
    [_zoomSpring damping];
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
    [UIView _animateUsingSpringWithDuration:0 delay:v52 options:completionCopy mass:v21 stiffness:0.0 damping:v32 initialVelocity:v34 animations:v35 completion:0.0];
    [(BKBookOpenAnimator *)self adjustDuration:0.3];
    v37 = v36;
    _customTimingFunction = [(BKBookBloomOpenAnimator *)self _customTimingFunction];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100084ACC;
    v49[3] = &unk_100A04D80;
    v49[4] = self;
    __asm { FMOV            V0.2D, #1.0 }

    v50 = _Q0;
    v51 = useShadowEffects;
    [UIView animateWithDuration:_customTimingFunction delay:0 timingFunction:v49 options:0 animations:v37 completion:0.0];

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100084B84;
    v48[3] = &unk_100A033C8;
    v48[4] = self;
    [UIView animateWithDuration:v48 animations:v21];
  }

  else
  {
    v44 = objc_retainBlock(completionCopy);
    v45 = v44;
    if (v44)
    {
      (*(v44 + 2))(v44, 1);
    }
  }
}

- (void)_adjustShadowForCurrentCoverBounds
{
  coverShadowView = [(BKBookOpenAnimator *)self coverShadowView];

  if (coverShadowView)
  {
    coverShadowImage = [(BKBookOpenAnimator *)self coverShadowImage];

    if (coverShadowImage)
    {
      coverContainerView = [(BKBookOpenAnimator *)self coverContainerView];
      [coverContainerView frame];
      CGRectGetCenterNoRounding();
      v7 = v6;
      v9 = v8;

      coverShadowView2 = [(BKBookOpenAnimator *)self coverShadowView];
      [coverShadowView2 setCenter:{v7, v9}];

      coverShadowImage2 = [(BKBookOpenAnimator *)self coverShadowImage];
      [coverShadowImage2 alignmentRectInsets];

      coverShadowImage3 = [(BKBookOpenAnimator *)self coverShadowImage];
      [coverShadowImage3 size];
      CGRectMakeWithSize();

      coverContainerView2 = [(BKBookOpenAnimator *)self coverContainerView];
      [coverContainerView2 frame];
      CGSizeScaleThatFillsInCGSize();
      v15 = v14;

      CGAffineTransformMakeScale(&v18, v15, v15);
      coverShadowView3 = [(BKBookOpenAnimator *)self coverShadowView];
      v17 = v18;
      [coverShadowView3 setTransform:&v17];
    }
  }
}

- (void)setupSpinner
{
  containerView = [(BKBookOpenAnimator *)self containerView];
  [containerView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  containerView2 = [(BKBookOpenAnimator *)self containerView];
  [(BKBookBloomOpenAnimator *)self zoomedCoverFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  coverContainerView = [(BKBookOpenAnimator *)self coverContainerView];
  superview = [coverContainerView superview];
  [containerView2 convertRect:superview fromView:{v14, v16, v18, v20}];
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
  containerView3 = [(BKBookOpenAnimator *)self containerView];
  [containerView3 addSubview:v32];

  [(BKBookZoomRevealOpenAnimator *)self setSpinnerView:v32];
}

- (void)setupViewsForReveal
{
  opening = [(BKBookOpenAnimator *)self opening];
  contentLoaded = [(BKBookZoomRevealOpenAnimator *)self contentLoaded];
  if (opening)
  {
    if ((contentLoaded & 1) == 0)
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

    bookshelfTintView = [(BKBookOpenAnimator *)self bookshelfTintView];
    [bookshelfTintView setAlpha:1.0];

    bookContainerView = [(BKBookOpenAnimator *)self bookContainerView];
    [bookContainerView setAlpha:0.0];

    blurredCoverContainer = [(BKBookBloomOpenAnimator *)self blurredCoverContainer];
    [blurredCoverContainer setHidden:0];

    blurredShadowContainer = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
    blurredCoverContainer2 = [blurredShadowContainer snapshotViewAfterScreenUpdates:0];

    if (blurredCoverContainer2)
    {
      blurredShadowContainer2 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
      superview = [blurredShadowContainer2 superview];
      [superview addSubview:blurredCoverContainer2];

      blurredShadowContainer3 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
      [blurredShadowContainer3 center];
      [blurredCoverContainer2 setCenter:?];

      blurredShadowContainer4 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
      superview2 = [blurredShadowContainer4 superview];
      blurredShadowContainer5 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
      [superview2 insertSubview:blurredCoverContainer2 belowSubview:blurredShadowContainer5];

      blurredShadowContainer6 = [(BKBookBloomOpenAnimator *)self blurredShadowContainer];
      [blurredShadowContainer6 setAlpha:0.0];

      [(BKBookBloomOpenAnimator *)self setBlurredShadowSnapshot:blurredCoverContainer2];
    }
  }

  else
  {
    bookshelfTintView2 = [(BKBookOpenAnimator *)self bookshelfTintView];
    [bookshelfTintView2 setAlpha:1.0];

    bookContainerView2 = [(BKBookOpenAnimator *)self bookContainerView];
    [bookContainerView2 setAlpha:0.0];

    blurredCoverContainer2 = [(BKBookBloomOpenAnimator *)self blurredCoverContainer];
    [blurredCoverContainer2 setHidden:0];
  }

  containerView = [(BKBookOpenAnimator *)self containerView];
  [containerView bounds];
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

  containerView2 = [(BKBookOpenAnimator *)self containerView];
  contentContainerView = [(BKBookBloomOpenAnimator *)self contentContainerView];
  [containerView2 addSubview:contentContainerView];

  bookViewController = [(BKBookOpenAnimator *)self bookViewController];
  v34 = [UIView alloc];
  contentContainerView2 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  [contentContainerView2 bounds];
  v36 = [v34 initWithFrame:?];
  [(BKBookBloomOpenAnimator *)self setContentBackgroundView:v36];

  contentContainerView3 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  contentBackgroundView = [(BKBookBloomOpenAnimator *)self contentBackgroundView];
  [contentContainerView3 addSubview:contentBackgroundView];

  if (objc_opt_respondsToSelector())
  {
    [bookViewController transitionContentBackgroundColor];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v39 = ;
  contentBackgroundView2 = [(BKBookBloomOpenAnimator *)self contentBackgroundView];
  [contentBackgroundView2 setBackgroundColor:v39];

  transitionContentView = [bookViewController transitionContentView];
  v200 = v25;
  v201 = v23;
  v198 = v29;
  v199 = v27;
  if (transitionContentView)
  {
    contentContainerView4 = [(BKBookBloomOpenAnimator *)self contentContainerView];
    [transitionContentView frame];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    superview3 = [transitionContentView superview];
    [contentContainerView4 convertRect:superview3 fromView:{v44, v46, v48, v50}];
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

  contentContainerView5 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  [contentContainerView5 bounds];
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
  coverImage = [(BKBookOpenAnimator *)self coverImage];
  [coverImage size];
  v78 = v77;
  v80 = v79;
  contentContainerView6 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  [contentContainerView6 bounds];
  v83 = v82;
  v85 = v84;
  toViewController = [(BKBookOpenAnimator *)self toViewController];
  im_isCompactWidth = [toViewController im_isCompactWidth];
  if (im_isCompactWidth)
  {
    im_isCompactHeight = 1;
  }

  else
  {
    toViewController2 = [(BKBookOpenAnimator *)self toViewController];
    im_isCompactHeight = [toViewController2 im_isCompactHeight];
  }

  [(BKBookBloomOpenAnimator *)self _insetsFromContentSize:im_isCompactHeight toCoverSize:v73 containerSize:v75 isCompact:v78, v80, v83, v85];
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v96 = v95;
  if ((im_isCompactWidth & 1) == 0)
  {
  }

  v196 = v92;
  v197 = v90;
  [(BKBookBloomOpenAnimator *)self _frameOfCoverThatFitsContentWithFrame:v69 insetsContentToCover:v71, v73, v75, v90, v92, v94, v96];
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v104 = v103;
  coverContainerView = [(BKBookOpenAnimator *)self coverContainerView];
  superview4 = [coverContainerView superview];
  contentContainerView7 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  [superview4 convertRect:contentContainerView7 fromView:{v98, v100, v102, v104}];
  [(BKBookBloomOpenAnimator *)self setRevealBigCoverFrame:?];

  contentContainerView8 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  if (opening)
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
  coverContainerView2 = [(BKBookOpenAnimator *)self coverContainerView];
  superview5 = [coverContainerView2 superview];
  [contentContainerView8 convertRect:superview5 fromView:{v113, v114, v115, v116}];
  v120 = v119;
  v122 = v121;
  v124 = v123;
  v126 = v125;

  coverImage2 = [(BKBookOpenAnimator *)self coverImage];
  [coverImage2 size];
  [(BKBookBloomOpenAnimator *)self _frameOfContentWithAspectRatio:v73 thatFitsCoverOfAspectRatio:v75 withFrame:v128 insetsContentToCover:v129, v120, v122, v124, v126, *&v197, *&v196, *&v94, *&v96];

  BCNormalizedInsetsForRects();
  BCRectByApplyingNormalizedInsets();
  v131 = v130;
  v133 = v132;
  v135 = v134;
  v137 = v136;
  if (objc_opt_respondsToSelector())
  {
    transitionContentViewImage = [bookViewController transitionContentViewImage];
    if (transitionContentViewImage)
    {
      v139 = [[UIImageView alloc] initWithImage:transitionContentViewImage];
      [(BKBookBloomOpenAnimator *)self setContentSnapshot:v139];
    }
  }

  contentSnapshot = [(BKBookBloomOpenAnimator *)self contentSnapshot];

  if (!contentSnapshot)
  {
    v141 = [transitionContentView snapshotViewAfterScreenUpdates:0];
    [(BKBookBloomOpenAnimator *)self setContentSnapshot:v141];
  }

  [(BKBookOpenAnimator *)self _sanitizedFrameWithCenteredFrame:@"smallContentFrame" ofSize:v131 name:v133, v135, v137, 1.0, 1.0];
  v143 = v142;
  v145 = v144;
  v147 = v146;
  v149 = v148;
  contentSnapshot2 = [(BKBookBloomOpenAnimator *)self contentSnapshot];
  [contentSnapshot2 setFrame:{v143, v145, v147, v149}];

  contentContainerView9 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  contentSnapshot3 = [(BKBookBloomOpenAnimator *)self contentSnapshot];
  [contentContainerView9 addSubview:contentSnapshot3];

  contentContainerView10 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  [contentContainerView10 bounds];
  BCNormalizedInsetsForRects();

  BCRectByApplyingNormalizedInsets();
  v155 = v154;
  v157 = v156;
  v159 = v158;
  v161 = v160;
  contentContainerView11 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  superview6 = [contentContainerView11 superview];
  contentContainerView12 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  [superview6 convertRect:contentContainerView12 fromView:{v155, v157, v159, v161}];
  [(BKBookBloomOpenAnimator *)self setRevealBigContentContainerFrame:?];

  [(BKBookBloomOpenAnimator *)self setRevealSmallContentContainerFrame:v201, v200, v199, v198];
  [(BKBookBloomOpenAnimator *)self revealBigContentContainerFrame];
  BCNormalizedInsetsForRects();
  BCRectByApplyingNormalizedInsets();
  v166 = v165;
  v168 = v167;
  v170 = v169;
  v172 = v171;
  contentContainerView13 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  contentContainerView14 = [(BKBookBloomOpenAnimator *)self contentContainerView];
  superview7 = [contentContainerView14 superview];
  [contentContainerView13 convertRect:superview7 fromView:{v166, v168, v170, v172}];
  v177 = v176;
  v179 = v178;
  v181 = v180;
  v183 = v182;

  contentBackgroundView3 = [(BKBookBloomOpenAnimator *)self contentBackgroundView];
  [contentBackgroundView3 frame];
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
  contentBackgroundView4 = [(BKBookBloomOpenAnimator *)self contentBackgroundView];
  [contentBackgroundView4 setFrame:{v189, v190, v191, v192}];

  containerView3 = [(BKBookOpenAnimator *)self containerView];
  blurredCoverContainer3 = [(BKBookBloomOpenAnimator *)self blurredCoverContainer];
  [containerView3 addSubview:blurredCoverContainer3];
}

- (void)animateRevealWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(BKBookOpenAnimator *)self opening])
  {
    [(BKBookBloomOpenAnimator *)self _animateRevealForOpeningWithCompletion:completionCopy];
  }

  else
  {
    [(BKBookBloomOpenAnimator *)self _animateRevealForClosingWithCompletion:completionCopy];
  }
}

- (BOOL)_contentViewIsShowingCover
{
  bookViewController = [(BKBookOpenAnimator *)self bookViewController];
  if (objc_opt_respondsToSelector())
  {
    transitionContentViewIsShowingCover = [bookViewController transitionContentViewIsShowingCover];
  }

  else
  {
    transitionContentViewIsShowingCover = 0;
  }

  return transitionContentViewIsShowingCover;
}

- (void)_animateRevealForOpeningWithCompletion:(id)completion
{
  completionCopy = completion;
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
  v67 = completionCopy;
  v90 = v67;
  v6 = objc_retainBlock(v89);
  _contentViewIsShowingCover = [(BKBookBloomOpenAnimator *)self _contentViewIsShowingCover];
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
    blurredShadowSnapshot = [(BKBookBloomOpenAnimator *)self blurredShadowSnapshot];

    if (blurredShadowSnapshot)
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
  _revealSpring = [(BKBookBloomOpenAnimator *)self _revealSpring];
  [_revealSpring mass];
  v39 = v38;
  [_revealSpring stiffness];
  v41 = v40;
  [_revealSpring damping];
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
    _customTimingFunction = [(BKBookBloomOpenAnimator *)self _customTimingFunction];
    v86[0] = _NSConcreteStackBlock;
    v86[1] = 3221225472;
    v86[2] = sub_100086590;
    v86[3] = &unk_100A033C8;
    v86[4] = self;
    [UIView animateWithDuration:_customTimingFunction delay:0 timingFunction:v86 options:v6 animations:v44 completion:0.0];
  }

  bookViewController = [(BKBookOpenAnimator *)self bookViewController];
  if (objc_opt_respondsToSelector())
  {
    transitionContentBackgroundColor = [bookViewController transitionContentBackgroundColor];
  }

  else
  {
    transitionContentBackgroundColor = 0;
  }

  bookshelfTintColor = [(BKBookBloomOpenAnimator *)self bookshelfTintColor];
  v49 = transitionContentBackgroundColor;
  if (_contentViewIsShowingCover)
  {
    coverContainerView = [(BKBookOpenAnimator *)self coverContainerView];
    [coverContainerView setAlpha:1.0];

    contentContainerView = [(BKBookBloomOpenAnimator *)self contentContainerView];
    [contentContainerView setAlpha:0.0];

    if (v49)
    {
      bookshelfTintView = [(BKBookOpenAnimator *)self bookshelfTintView];
      [bookshelfTintView setBackgroundColor:bookshelfTintColor];

      (v5[2])(v5);
      [(BKBookOpenAnimator *)self adjustDuration:0.2];
      v54 = v53;
      _customTimingFunction2 = [(BKBookBloomOpenAnimator *)self _customTimingFunction];
      v84[0] = _NSConcreteStackBlock;
      v84[1] = 3221225472;
      v84[2] = sub_100086608;
      v84[3] = &unk_100A03440;
      v84[4] = self;
      v85 = v49;
      [UIView animateWithDuration:_customTimingFunction2 delay:0 timingFunction:v84 options:v6 animations:v54 completion:0.0];
    }
  }

  else
  {
    coverContainerView2 = [(BKBookOpenAnimator *)self coverContainerView];
    [coverContainerView2 setAlpha:1.0];

    contentContainerView2 = [(BKBookBloomOpenAnimator *)self contentContainerView];
    [contentContainerView2 setAlpha:0.0];

    blurredCoverContainer = [(BKBookBloomOpenAnimator *)self blurredCoverContainer];
    [BKBookBloomOpenAnimator setBlurRadius:blurredCoverContainer forView:0.0];

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
      bookshelfTintView2 = [(BKBookOpenAnimator *)self bookshelfTintView];
      [bookshelfTintView2 setBackgroundColor:bookshelfTintColor];

      (v5[2])(v5);
      [(BKBookOpenAnimator *)self adjustDuration:0.2];
      v61 = v60;
      _customTimingFunction3 = [(BKBookBloomOpenAnimator *)self _customTimingFunction];
      v81[0] = _NSConcreteStackBlock;
      v81[1] = 3221225472;
      v81[2] = sub_1000866C4;
      v81[3] = &unk_100A03440;
      v81[4] = self;
      v82 = v49;
      [UIView animateWithDuration:_customTimingFunction3 delay:0 timingFunction:v81 options:v6 animations:v61 completion:0.0];
    }

    (v5[2])(v5);
    [(BKBookOpenAnimator *)self adjustDuration:0.2];
    v64 = v63;
    _customTimingFunction4 = [(BKBookBloomOpenAnimator *)self _customTimingFunction];
    v80[0] = _NSConcreteStackBlock;
    v80[1] = 3221225472;
    v80[2] = sub_100086714;
    v80[3] = &unk_100A04DD0;
    v80[4] = self;
    v80[5] = 0;
    [UIView animateWithDuration:_customTimingFunction4 delay:0 timingFunction:v80 options:v6 animations:v64 completion:0.0];

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

- (void)_animateRevealForClosingWithCompletion:(id)completion
{
  completionCopy = completion;
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
  v6 = completionCopy;
  v76 = v6;
  v7 = objc_retainBlock(v75);
  [(BKBookBloomOpenAnimator *)self closeDuration];
  v67 = v8;
  fadeInCover = [(BKBookOpenAnimator *)self fadeInCover];
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
  coverContainerView = [(BKBookOpenAnimator *)self coverContainerView];
  [coverContainerView setAlpha:0.0];

  blurredCoverContainer = [(BKBookBloomOpenAnimator *)self blurredCoverContainer];
  [BKBookBloomOpenAnimator setBlurRadius:blurredCoverContainer forView:120.0];

  bookshelfTintView = [(BKBookOpenAnimator *)self bookshelfTintView];
  [bookshelfTintView setAlpha:1.0];

  contentContainerView = [(BKBookBloomOpenAnimator *)self contentContainerView];
  [contentContainerView setAlpha:1.0];

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
  if (fadeInCover)
  {
    _customTimingFunction = [(BKBookBloomOpenAnimator *)self _customTimingFunction];
    [UIView animateWithDuration:_customTimingFunction delay:0 timingFunction:v39 options:v7 animations:v67 completion:0.0];
  }

  else
  {
    _customTimingFunction = [(BKBookBloomOpenAnimator *)self _closeSpring];
    [_customTimingFunction mass];
    v42 = v41;
    [_customTimingFunction stiffness];
    v44 = v43;
    [_customTimingFunction damping];
    [UIView _animateUsingSpringWithDuration:0 delay:v39 options:v7 mass:v67 stiffness:0.0 damping:v42 initialVelocity:v44 animations:v45 completion:0.0];
  }

  (v5[2])(v5);
  [(BKBookOpenAnimator *)self adjustDuration:0.32];
  v47 = v46;
  _customTimingFunction2 = [(BKBookBloomOpenAnimator *)self _customTimingFunction];
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_100086FD0;
  v72[3] = &unk_100A04DD0;
  v72[4] = self;
  v72[5] = 0x3FF0000000000000;
  [UIView animateWithDuration:_customTimingFunction2 delay:0 timingFunction:v72 options:v7 animations:v47 completion:0.0];

  (v5[2])(v5);
  [(BKBookOpenAnimator *)self adjustDuration:0.15];
  v50 = v49;
  _customTimingFunction3 = [(BKBookBloomOpenAnimator *)self _customTimingFunction];
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_100087024;
  v71[3] = &unk_100A04DD0;
  v71[4] = self;
  v71[5] = 0;
  [UIView animateWithDuration:_customTimingFunction3 delay:0 timingFunction:v71 options:v7 animations:v50 completion:0.0];

  (v5[2])(v5);
  [(BKBookOpenAnimator *)self adjustDuration:0.2];
  v53 = v52;
  _customTimingFunction4 = [(BKBookBloomOpenAnimator *)self _customTimingFunction];
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_100087090;
  v70[3] = &unk_100A04DD0;
  v70[4] = self;
  v70[5] = 0;
  [UIView animateWithDuration:_customTimingFunction4 delay:0 timingFunction:v70 options:v7 animations:v53 completion:0.0];

  (v5[2])(v5);
  [(BKBookOpenAnimator *)self adjustDuration:0.32];
  v56 = v55;
  _customTimingFunction5 = [(BKBookBloomOpenAnimator *)self _customTimingFunction];
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_1000870E4;
  v69[3] = &unk_100A04DD0;
  v69[4] = self;
  v69[5] = 0;
  [UIView animateWithDuration:_customTimingFunction5 delay:0 timingFunction:v69 options:v7 animations:v56 completion:0.0];

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

+ (double)marginPercentage:(BOOL)percentage
{
  result = 0.13;
  if (percentage)
  {
    return 0.1;
  }

  return result;
}

+ (CGRect)_availableRectForFittingZoomedCoverInContainerViewBounds:(CGRect)bounds isCompact:(BOOL)compact
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [objc_opt_class() marginPercentage:compact];
  v9 = width * v8;
  v10 = height * v8;
  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;

  return CGRectInset(*&v11, v9, v10);
}

+ (CGRect)zoomedFrameForCoverWithSize:(CGSize)size isCompact:(BOOL)compact containerViewBounds:(CGRect)bounds
{
  [self _availableRectForFittingZoomedCoverInContainerViewBounds:compact isCompact:{bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height}];

  sub_100083BBC();
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

+ (void)setBlurRadius:(double)radius forView:(id)view
{
  layer = [view layer];
  v6 = [layer valueForKeyPath:@"filters.gaussianBlur"];

  if (v6)
  {
    v7 = [NSNumber numberWithDouble:radius];
    [layer setValue:v7 forKeyPath:@"filters.gaussianBlur.inputRadius"];
  }

  else
  {
    v8 = [CAFilter alloc];
    v7 = [v8 initWithType:kCAFilterGaussianBlur];
    [v7 setName:@"gaussianBlur"];
    v9 = [NSNumber numberWithDouble:radius];
    [v7 setValue:v9 forKey:kCIInputRadiusKey];

    [v7 setValue:@"low" forKey:@"inputQuality"];
    [v7 setValue:@"low" forKey:@"inputIntermediateBitDepth"];
    filters = [layer filters];
    if (filters)
    {
      filters2 = [layer filters];
      v12 = [filters2 arrayByAddingObject:v7];
      [layer setFilters:v12];
    }

    else
    {
      v13 = v7;
      filters2 = [NSArray arrayWithObjects:&v13 count:1];
      [layer setFilters:filters2];
    }
  }
}

+ (void)setBrightnessFilter:(double)filter forView:(id)view
{
  layer = [view layer];
  v6 = [layer valueForKeyPath:@"filters.colorBrightness.inputAmount"];

  if (v6)
  {
    v7 = [NSNumber numberWithDouble:filter];
    [layer setValue:v7 forKeyPath:@"filters.colorBrightness.inputAmount"];
  }

  else
  {
    v7 = [CAFilter filterWithType:kCAFilterColorBrightness];
    [v7 setName:@"colorBrightness"];
    v8 = [NSNumber numberWithDouble:filter];
    [v7 setValue:v8 forKey:@"inputAmount"];

    filters = [layer filters];
    if (filters)
    {
      filters2 = [layer filters];
      v11 = [filters2 arrayByAddingObject:v7];
      [layer setFilters:v11];
    }

    else
    {
      v12 = v7;
      filters2 = [NSArray arrayWithObjects:&v12 count:1];
      [layer setFilters:filters2];
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