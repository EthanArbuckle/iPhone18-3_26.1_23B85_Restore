@interface BKBookOpenAnimator
+ (BOOL)_isSlowModeEnabled;
- (BKBookOpenTransitioning)bookViewController;
- (BOOL)_sanityCheckPoint:(CGPoint)point;
- (BOOL)rightToLeft;
- (CGPoint)_sanitizedCenterPoint:(CGPoint)point name:(id)name;
- (CGRect)_fullsizeRectForFallback;
- (CGRect)_sanitizedFrameWithCenteredFrame:(CGRect)frame ofSize:(CGSize)size name:(id)name;
- (CGRect)_sanitizedFrameWithFallbackFrame:(CGRect)frame fallbackFrame:(CGRect)fallbackFrame name:(id)name fallbackName:(id)fallbackName;
- (CGRect)_sanitizedFrameWithFullsizeFrame:(CGRect)frame name:(id)name;
- (CGRect)closedCoverFrame;
- (CGRect)zoomedCoverFrame;
- (NSArray)bookshelfContentViews;
- (UIViewController)bookshelfViewController;
- (double)_debugDragCoefficient;
- (double)coverAspectRatio;
- (double)duration;
- (double)transitionDuration:(id)duration;
- (id)adjustSpring:(id)spring;
- (id)initOpening:(BOOL)opening;
- (id)minifiedBarAnimator;
- (id)viewControllerForStatusBarStyle;
- (void)_adjustShadowForCurrentCoverBounds;
- (void)_animateTransition;
- (void)_deferredSetupBookView;
- (void)_loadStateFromContext:(id)context;
- (void)_prepareHostWithCompletion:(id)completion;
- (void)_setupBookshelfAnimationViewsWithCompletion:(id)completion;
- (void)_setupSharedViewsWithCompletion:(id)completion;
- (void)_setupViewController:(id)controller;
- (void)animateNonInteractive;
- (void)animateTransition:(id)transition;
- (void)animationsDidFinish;
- (void)bookContentDidLoad;
- (void)configureWithFromViewController:(id)controller toViewController:(id)viewController;
- (void)minibarKeyFrameAnimationWithDuration:(double)duration hide:(double)hide show:(double)show completion:(id)completion;
- (void)moveCoverToFrame:(CGRect)frame;
- (void)setBookshelfAlpha:(double)alpha;
- (void)setBookshelfTransform:(CGAffineTransform *)transform;
- (void)setupShadowForCoverView:(id)view;
- (void)teardownViews:(BOOL)views;
@end

@implementation BKBookOpenAnimator

- (id)initOpening:(BOOL)opening
{
  v5.receiver = self;
  v5.super_class = BKBookOpenAnimator;
  result = [(BKBookOpenAnimator *)&v5 init];
  if (result)
  {
    *(result + 11) = opening;
    *(result + 10) = 0;
  }

  return result;
}

- (void)animateNonInteractive
{
  v4 = NSStringFromSelector(a2);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  BCReportAssertionFailureWithMessage();
}

- (double)duration
{
  v2 = NSStringFromSelector(a2);
  v3 = objc_opt_class();
  v5 = NSStringFromClass(v3);
  BCReportAssertionFailureWithMessage();

  return 0.0;
}

- (UIViewController)bookshelfViewController
{
  if ([(BKBookOpenAnimator *)self opening])
  {
    [(BKBookOpenAnimator *)self fromViewController];
  }

  else
  {
    [(BKBookOpenAnimator *)self toViewController];
  }
  v3 = ;

  return v3;
}

- (NSArray)bookshelfContentViews
{
  bookshelfViewController = [(BKBookOpenAnimator *)self bookshelfViewController];
  objc_opt_class();
  v4 = BUClassAndProtocolCast();
  v5 = v4;
  if (v4)
  {
    transitionContentViews = [v4 transitionContentViews];
  }

  else
  {
    bookshelfViewController2 = [(BKBookOpenAnimator *)self bookshelfViewController];
    view = [bookshelfViewController2 view];

    if (view)
    {
      v10 = view;
      transitionContentViews = [NSArray arrayWithObjects:&v10 count:1];
    }

    else
    {
      sub_100793554();
      transitionContentViews = &__NSArray0__struct;
    }
  }

  return transitionContentViews;
}

- (BKBookOpenTransitioning)bookViewController
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
  v4 = [v3 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BKBookOpenTransitioning];
  objc_opt_class();
  v5 = BUClassAndProtocolCast();

  if (!v5)
  {
    sub_10079358C();
  }

  return v5;
}

- (BOOL)rightToLeft
{
  bookViewController = [(BKBookOpenAnimator *)self bookViewController];
  if (objc_opt_respondsToSelector())
  {
    transitionRightToLeft = [bookViewController transitionRightToLeft];
  }

  else
  {
    transitionRightToLeft = 0;
  }

  return transitionRightToLeft;
}

- (CGRect)zoomedCoverFrame
{
  containerView = [(BKBookOpenAnimator *)self containerView];
  [containerView bounds];
  IMActionSafeRectForRect();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  coverImage = [(BKBookOpenAnimator *)self coverImage];
  [coverImage size];

  CGSizeScaleThatFitsInCGSize();
  CGSizeScale();
  CGRectMakeWithSize();
  coverContainerView = [(BKBookOpenAnimator *)self coverContainerView];
  superview = [coverContainerView superview];
  containerView2 = [(BKBookOpenAnimator *)self containerView];
  superview2 = [containerView2 superview];
  [superview convertRect:superview2 fromView:{v5, v7, v9, v11}];
  CGRectCenterRectInRect();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = v18;
  v26 = v20;
  v27 = v22;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (double)coverAspectRatio
{
  coverImage = [(BKBookOpenAnimator *)self coverImage];
  [coverImage size];
  v4 = v3;
  v6 = v5;

  if (v4 > 0.0 && v6 > 0.0)
  {
    return v4 / v6;
  }

  sub_1007935DC(v4, v6);
  return 1.0;
}

- (void)setBookshelfAlpha:(double)alpha
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  bookshelfSnapshots = [(BKBookOpenAnimator *)self bookshelfSnapshots];
  v6 = [bookshelfSnapshots countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(bookshelfSnapshots);
        }

        [*(*(&v19 + 1) + 8 * v9) setAlpha:alpha];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [bookshelfSnapshots countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  bookshelfLiveViews = [(BKBookOpenAnimator *)self bookshelfLiveViews];
  v11 = [bookshelfLiveViews countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(bookshelfLiveViews);
        }

        [*(*(&v15 + 1) + 8 * v14) setAlpha:alpha];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [bookshelfLiveViews countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)setBookshelfTransform:(CGAffineTransform *)transform
{
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  bookshelfSnapshots = [(BKBookOpenAnimator *)self bookshelfSnapshots];
  v6 = [bookshelfSnapshots countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(bookshelfSnapshots);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        v11 = *&transform->c;
        v23 = *&transform->a;
        v24 = v11;
        v25 = *&transform->tx;
        [v10 setTransform:&v23];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [bookshelfSnapshots countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  bookshelfLiveViews = [(BKBookOpenAnimator *)self bookshelfLiveViews];
  v13 = [bookshelfLiveViews countByEnumeratingWithState:&v19 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(bookshelfLiveViews);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        v18 = *&transform->c;
        v23 = *&transform->a;
        v24 = v18;
        v25 = *&transform->tx;
        [v17 setTransform:&v23];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [bookshelfLiveViews countByEnumeratingWithState:&v19 objects:v30 count:16];
    }

    while (v14);
  }
}

- (void)moveCoverToFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ([(BKBookOpenAnimator *)self animatesCoverBounds])
  {
    [(BKBookOpenAnimator *)self _sanitizedFrameWithCenteredFrame:@"cover.coverContainerView.frame" ofSize:x name:y, width, height, CGSizeZero.width, CGSizeZero.height];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    coverContainerView = [(BKBookOpenAnimator *)self coverContainerView];
    [coverContainerView setFrame:{v9, v11, v13, v15}];

    [(BKBookOpenAnimator *)self _adjustShadowForCurrentCoverBounds];
  }

  else
  {
    CGRectGetCenterNoRounding();
    [(BKBookOpenAnimator *)self _sanitizedCenterPoint:@"cover.coverContainerView.center" name:?];
    v18 = v17;
    v20 = v19;
    coverContainerView2 = [(BKBookOpenAnimator *)self coverContainerView];
    [coverContainerView2 setCenter:{v18, v20}];

    coverImage = [(BKBookOpenAnimator *)self coverImage];
    [coverImage size];
    CGSizeScaleThatFitsInCGSize();
    v24 = v23;

    CGAffineTransformMakeScale(&v27, v24, v24);
    coverContainerView3 = [(BKBookOpenAnimator *)self coverContainerView];
    v26 = v27;
    [coverContainerView3 setTransform:&v26];

    [(BKBookOpenAnimator *)self _adjustShadowForCurrentCoverBounds];
  }
}

- (void)teardownViews:(BOOL)views
{
  viewsCopy = views;
  bookshelfTintView = [(BKBookOpenAnimator *)self bookshelfTintView];
  [bookshelfTintView removeFromSuperview];

  [(BKBookOpenAnimator *)self setBookshelfTintView:0];
  coverImageView = [(BKBookOpenAnimator *)self coverImageView];
  [coverImageView removeFromSuperview];

  [(BKBookOpenAnimator *)self setCoverImageView:0];
  coverShadowView = [(BKBookOpenAnimator *)self coverShadowView];
  [coverShadowView removeFromSuperview];

  [(BKBookOpenAnimator *)self setCoverShadowView:0];
  coverContainerView = [(BKBookOpenAnimator *)self coverContainerView];
  [coverContainerView removeFromSuperview];

  [(BKBookOpenAnimator *)self setCoverContainerView:0];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  bookshelfSnapshots = [(BKBookOpenAnimator *)self bookshelfSnapshots];
  v10 = [bookshelfSnapshots countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(bookshelfSnapshots);
        }

        [*(*(&v22 + 1) + 8 * i) removeFromSuperview];
      }

      v11 = [bookshelfSnapshots countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  [(BKBookOpenAnimator *)self setBookshelfSnapshots:0];
  [(BKBookOpenAnimator *)self setBookshelfLiveViews:0];
  bookshelfViewState = [(BKBookOpenAnimator *)self bookshelfViewState];
  [bookshelfViewState restore];

  bookViewState = [(BKBookOpenAnimator *)self bookViewState];
  [bookViewState restore];

  minifiedBarAnimator = [(BKBookOpenAnimator *)self minifiedBarAnimator];
  minifiedBarAnimatorContainerView = [minifiedBarAnimator minifiedBarAnimatorContainerView];

  if (minifiedBarAnimatorContainerView)
  {
    [minifiedBarAnimatorContainerView setAlpha:1.0];
    minibarContainerViewState = [(BKBookOpenAnimator *)self minibarContainerViewState];
    [minibarContainerViewState restore];
  }

  bookContainerView = [(BKBookOpenAnimator *)self bookContainerView];
  [bookContainerView removeFromSuperview];

  [(BKBookOpenAnimator *)self setBookContainerView:0];
  if (viewsCopy)
  {
    [(BKBookOpenAnimator *)self fromViewController];
  }

  else
  {
    [(BKBookOpenAnimator *)self toViewController];
  }
  v20 = ;
  view = [v20 view];
  [view removeFromSuperview];
}

- (void)_adjustShadowForCurrentCoverBounds
{
  coverShadowView = [(BKBookOpenAnimator *)self coverShadowView];

  if (coverShadowView)
  {
    coverShadowImage = [(BKBookOpenAnimator *)self coverShadowImage];

    if (coverShadowImage)
    {
      coverShadowView2 = [(BKBookOpenAnimator *)self coverShadowView];
      superview = [coverShadowView2 superview];
      [superview bounds];

      CGRectGetCenterNoRounding();
      v8 = v7;
      v10 = v9;
      coverShadowView3 = [(BKBookOpenAnimator *)self coverShadowView];
      [coverShadowView3 setCenter:{v8, v10}];

      coverShadowImage2 = [(BKBookOpenAnimator *)self coverShadowImage];
      [coverShadowImage2 alignmentRectInsets];

      coverShadowImage3 = [(BKBookOpenAnimator *)self coverShadowImage];
      [coverShadowImage3 size];
      CGRectMakeWithSize();

      CGSizeScaleThatFitsInCGSize();
      CGAffineTransformMakeScale(&v17, v14, v14);
      coverShadowView4 = [(BKBookOpenAnimator *)self coverShadowView];
      v16 = v17;
      [coverShadowView4 setTransform:&v16];
    }
  }
}

- (void)setupShadowForCoverView:(id)view
{
  viewCopy = view;
  layer = [viewCopy layer];
  [viewCopy bounds];
  v5 = [UIBezierPath bezierPathWithRect:?];
  [layer setShadowPath:{objc_msgSend(v5, "CGPath")}];

  v6 = +[UIColor blackColor];
  [layer setShadowColor:{objc_msgSend(v6, "CGColor")}];

  LODWORD(v7) = 1041865114;
  [layer setShadowOpacity:v7];
  [(BKBookOpenAnimator *)self closedCoverFrame];
  [viewCopy bounds];

  CGSizeScaleThatFitsInCGSize();
  v9 = v8;
  CGSizeScale();
  [layer setShadowOffset:?];
  [layer setShadowRadius:v9 * 4.0];
}

- (void)_setupSharedViewsWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(BKBookOpenAnimator *)self opening])
  {
    defersBookViewSetupForOpening = [(BKBookOpenAnimator *)self defersBookViewSetupForOpening];
  }

  else
  {
    defersBookViewSetupForOpening = 0;
  }

  containerView = [(BKBookOpenAnimator *)self containerView];
  if ([(BKBookOpenAnimator *)self opening])
  {
    window = [containerView window];
    v8 = [BCStatusBarBackgroundController backgroundControllerForWindow:window];
    [v8 setOpacity:1 animated:0.0];
  }

  v9 = [UIView alloc];
  [containerView bounds];
  v10 = [v9 initWithFrame:?];
  [(BKBookOpenAnimator *)self setBookContainerView:v10];
  [containerView addSubview:v10];
  [v10 setAlpha:{(-[BKBookOpenAnimator opening](self, "opening") ^ 1)}];
  fromViewController = [(BKBookOpenAnimator *)self fromViewController];
  [(BKBookOpenAnimator *)self _setupViewController:fromViewController];

  if ((defersBookViewSetupForOpening & 1) == 0)
  {
    toViewController = [(BKBookOpenAnimator *)self toViewController];
    [(BKBookOpenAnimator *)self _setupViewController:toViewController];
  }

  preTransitionBlock = [(BKBookOpenAnimator *)self preTransitionBlock];
  v14 = preTransitionBlock;
  if (preTransitionBlock)
  {
    (*(preTransitionBlock + 16))(preTransitionBlock);
  }

  minifiedBarAnimator = [(BKBookOpenAnimator *)self minifiedBarAnimator];
  minifiedBarAnimatorContainerView = [minifiedBarAnimator minifiedBarAnimatorContainerView];

  if (minifiedBarAnimatorContainerView)
  {
    v17 = [IMViewState saveStateForView:minifiedBarAnimatorContainerView flags:3];
    [(BKBookOpenAnimator *)self setMinibarContainerViewState:v17];

    layer = [minifiedBarAnimatorContainerView layer];
    [layer setZPosition:1.0];

    [containerView addSubview:minifiedBarAnimatorContainerView];
  }

  [containerView bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  bookshelfViewController = [(BKBookOpenAnimator *)self bookshelfViewController];
  view = [bookshelfViewController view];
  [view setFrame:{v20, v22, v24, v26}];

  bookshelfViewController2 = [(BKBookOpenAnimator *)self bookshelfViewController];
  view2 = [bookshelfViewController2 view];
  [containerView addSubview:view2];

  if (![(BKBookOpenAnimator *)self opening])
  {
    bookContainerView = [(BKBookOpenAnimator *)self bookContainerView];
    [containerView addSubview:bookContainerView];
  }

  closedCoverFrameBlock = [(BKBookOpenAnimator *)self closedCoverFrameBlock];
  if (closedCoverFrameBlock)
  {
    view2 = [(BKBookOpenAnimator *)self closedCoverFrameBlock];
    x = view2[2]();
    y = v34;
    width = v36;
    height = v38;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  bookshelfViewController3 = [(BKBookOpenAnimator *)self bookshelfViewController];
  view3 = [bookshelfViewController3 view];
  [containerView convertRect:view3 fromView:{x, y, width, height}];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  if (closedCoverFrameBlock)
  {
  }

  v50 = v49;
  v51 = v47;
  v52 = v45;
  v53 = v43;
  if ([(BKBookOpenAnimator *)self fitCoverImageIntoClosedCoverFrame])
  {
    [(UIImage *)self->_coverImage size];
    CGRectFitRectInRect();
    v54 = v110.origin.x;
    v107 = v49;
    v55 = v47;
    v56 = v110.origin.y;
    v51 = v110.size.width;
    v50 = v110.size.height;
    v53 = v43 + CGRectGetMinX(v110);
    v111.origin.x = v54;
    v111.origin.y = v56;
    v47 = v55;
    v49 = v107;
    v111.size.width = v51;
    v111.size.height = v50;
    v52 = v45 + CGRectGetMinY(v111);
  }

  [(BKBookOpenAnimator *)self setClosedCoverFrame:v53, v52, v51, v50];
  coverSource = [(BKBookOpenAnimator *)self coverSource];
  coverAnimationSourceAlignment = [coverSource coverAnimationSourceAlignment];

  if (coverAnimationSourceAlignment == 2)
  {
    v112.origin.x = v43;
    v112.origin.y = v45;
    v112.size.width = v47;
    v112.size.height = v49;
    MaxY = CGRectGetMaxY(v112);
    v113.origin.x = v53;
    v113.origin.y = v52;
    v113.size.width = v51;
    v113.size.height = v50;
    v60 = MaxY - CGRectGetHeight(v113);
    v114.origin.x = v53;
    v114.origin.y = v52;
    v114.size.width = v51;
    v114.size.height = v50;
    v61 = round(v60 - CGRectGetMinY(v114));
    if (v61 > 0.0)
    {
      [(BKBookOpenAnimator *)self setClosedCoverFrame:v53, v52 + v61, v51, v50];
    }
  }

  [(BKBookOpenAnimator *)self closedCoverFrame];
  if (CGRectIsEmpty(v115))
  {
    [(BKBookOpenAnimator *)self closedCoverFrame];
    v118.origin.x = CGRectZero.origin.x;
    v118.origin.y = CGRectZero.origin.y;
    v118.size.width = CGRectZero.size.width;
    v118.size.height = CGRectZero.size.height;
    if (!CGRectEqualToRect(v116, v118))
    {
      sub_100793644();
    }

    [(BKBookOpenAnimator *)self setFadeInCover:1];
    containerView2 = [(BKBookOpenAnimator *)self containerView];
    [containerView2 bounds];
    IMActionSafeRectForRect();

    coverImage = [(BKBookOpenAnimator *)self coverImage];
    [coverImage size];

    CGSizeScaleThatFitsInCGSize();
    CGSizeScale();
    CGRectMakeWithSize();
    CGRectCenterRectInRect();
    [(BKBookOpenAnimator *)self setClosedCoverFrame:?];
  }

  [(BKBookOpenAnimator *)self bookshelfTintCoversBars];
  v108 = containerView;
  v64 = [UIView alloc];
  [v108 bounds];
  v65 = [v64 initWithFrame:?];
  bookshelfTintColor = [(BKBookOpenAnimator *)self bookshelfTintColor];
  [v65 setBackgroundColor:bookshelfTintColor];
  [v65 setAlpha:0.0];
  [v108 addSubview:v65];
  [(BKBookOpenAnimator *)self setBookshelfTintView:v65];
  coverImage2 = [(BKBookOpenAnimator *)self coverImage];
  [coverImage2 size];
  CGRectMakeWithSize();
  IsEmpty = CGRectIsEmpty(v117);

  if (IsEmpty)
  {
    sub_100793680();
  }

  v69 = [UIView alloc];
  coverImage3 = [(BKBookOpenAnimator *)self coverImage];
  [coverImage3 size];
  CGRectMakeWithSize();
  v71 = [v69 initWithFrame:?];

  [(BKBookOpenAnimator *)self setCoverContainerView:v71];
  v72 = 1.0;
  if ([(BKBookOpenAnimator *)self opening])
  {
    if ([(BKBookOpenAnimator *)self fadeInCover])
    {
      v72 = 0.0;
    }

    else
    {
      v72 = 1.0;
    }
  }

  coverContainerView = [(BKBookOpenAnimator *)self coverContainerView];
  [coverContainerView setAlpha:v72];

  if ([(BKBookOpenAnimator *)self wantsCoverShadow])
  {
    coverShadowImage = [(BKBookOpenAnimator *)self coverShadowImage];

    if (coverShadowImage)
    {
      v75 = [UIImageView alloc];
      coverShadowImage2 = [(BKBookOpenAnimator *)self coverShadowImage];
      v77 = [v75 initWithImage:coverShadowImage2];

      coverShadowImage3 = [(BKBookOpenAnimator *)self coverShadowImage];
      [coverShadowImage3 alignmentRectInsets];
      v80 = v79;
      v82 = v81;
      v84 = v83;
      v86 = v85;

      coverShadowImage4 = [(BKBookOpenAnimator *)self coverShadowImage];
      [coverShadowImage4 size];
      v89 = v88;
      v91 = v90;

      CGRectMakeWithSize();
      v94 = (v82 + (v92 - (v82 + v86)) * 0.5) / v89;
      v95 = (v80 + (v93 - (v80 + v84)) * 0.5) / v91;
      layer2 = [(BKCustomAnimationPropertiesView *)v77 layer];
      [layer2 setAnchorPoint:{v94, v95}];
    }

    else
    {
      v97 = [BKCustomAnimationPropertiesView alloc];
      coverImage4 = [(BKBookOpenAnimator *)self coverImage];
      [coverImage4 size];
      CGRectMakeWithSize();
      v77 = [(BKCustomAnimationPropertiesView *)v97 initWithFrame:?];

      [(BKCustomAnimationPropertiesView *)v77 setAutoresizingMask:18];
      [(BKCustomAnimationPropertiesView *)v77 addAnimatablePropertyWithKey:@"shadowPath"];
      [(BKCustomAnimationPropertiesView *)v77 addAnimatablePropertyWithKey:@"shadowRadius"];
      [(BKCustomAnimationPropertiesView *)v77 addAnimatablePropertyWithKey:@"shadowOffset"];
    }

    [(BKBookOpenAnimator *)self setCoverShadowView:v77];
    [v71 addSubview:v77];
    [(BKBookOpenAnimator *)self _adjustShadowForCurrentCoverBounds];
  }

  v99 = [UIImageView alloc];
  coverImage5 = [(BKBookOpenAnimator *)self coverImage];
  v101 = [v99 initWithImage:coverImage5];

  [(BKBookOpenAnimator *)self setCoverImageView:v101];
  [v101 setAccessibilityIgnoresInvertColors:1];
  [v101 setAutoresizingMask:18];
  coverImage6 = [(BKBookOpenAnimator *)self coverImage];
  [coverImage6 scale];
  v104 = v103;
  layer3 = [v101 layer];
  [layer3 setContentsScale:v104];

  [v101 setClipsToBounds:1];
  [v101 setContentMode:{-[BKBookOpenAnimator coverContentMode](self, "coverContentMode")}];
  coverImage7 = [(BKBookOpenAnimator *)self coverImage];
  [coverImage7 size];
  CGRectMakeWithSize();
  [v101 setFrame:?];

  [v71 addSubview:v101];
  if ([(BKBookOpenAnimator *)self opening])
  {
    [v108 addSubview:v71];
    [(BKBookOpenAnimator *)self closedCoverFrame];
    [(BKBookOpenAnimator *)self moveCoverToFrame:?];
  }

  [(BKBookOpenAnimator *)self performAdditionSetup];
  [(BKBookOpenAnimator *)self _prepareHostWithCompletion:completionCopy];
}

- (void)_setupViewController:(id)controller
{
  controllerCopy = controller;
  containerView = [(BKBookOpenAnimator *)self containerView];
  view = [controllerCopy view];
  fromViewController = [(BKBookOpenAnimator *)self fromViewController];

  bookshelfViewController = [(BKBookOpenAnimator *)self bookshelfViewController];

  v9 = BUProtocolCast();
  if (objc_opt_respondsToSelector())
  {
    [v9 willAddViewToHierarchy];
  }

  +[CATransaction begin];
  [containerView addSubview:view];
  [containerView bounds];
  [view setFrame:?];
  kdebug_trace();
  v10 = _AEBookOpenLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"to";
    if (fromViewController == controllerCopy)
    {
      v11 = @"from";
    }

    *buf = 138543362;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Beginning layout %{public}@VC start", buf, 0xCu);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001B60B4;
  v18[3] = &unk_100A033C8;
  v12 = view;
  v19 = v12;
  [UIView performWithoutAnimation:v18];
  kdebug_trace();
  if (bookshelfViewController == controllerCopy)
  {
    bookshelfViewController2 = [(BKBookOpenAnimator *)self bookshelfViewController];
    view2 = [bookshelfViewController2 view];
    v17 = [IMViewState saveStateForView:view2 flags:1];
    [(BKBookOpenAnimator *)self setBookshelfViewState:v17];
  }

  else
  {
    bookViewController = [(BKBookOpenAnimator *)self bookViewController];
    bookshelfViewController2 = [bookViewController view];

    v15 = [IMViewState saveStateForView:bookshelfViewController2 flags:1];
    [(BKBookOpenAnimator *)self setBookViewState:v15];

    view2 = [(BKBookOpenAnimator *)self bookContainerView];
    [view2 addSubview:bookshelfViewController2];
  }

  +[CATransaction commit];
}

- (void)_deferredSetupBookView
{
  toViewController = [(BKBookOpenAnimator *)self toViewController];
  [(BKBookOpenAnimator *)self _setupViewController:toViewController];
}

- (void)_prepareHostWithCompletion:(id)completion
{
  completionCopy = completion;
  toViewController = [(BKBookOpenAnimator *)self toViewController];
  v6 = [toViewController im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCCoverAnimatingHost];

  if (objc_opt_respondsToSelector())
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001B6258;
    v12[3] = &unk_100A03788;
    v7 = &v13;
    v12[4] = self;
    v13 = completionCopy;
    v8 = completionCopy;
    [v6 coverAnimationHostPrepareWithCompletion:v12];
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001B62EC;
    v10[3] = &unk_100A03788;
    v7 = &v11;
    v10[4] = self;
    v11 = completionCopy;
    v9 = completionCopy;
    dispatch_async(&_dispatch_main_q, v10);
  }
}

- (void)_setupBookshelfAnimationViewsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = UIApp;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B6398;
  v7[3] = &unk_100A03788;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 _performBlockAfterCATransactionCommits:v7];
}

- (void)bookContentDidLoad
{
  kdebug_trace();
  v2 = _AEBookOpenLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "bookContentDidLoad signaled", v3, 2u);
  }
}

- (void)configureWithFromViewController:(id)controller toViewController:(id)viewController
{
  viewControllerCopy = viewController;
  [(BKBookOpenAnimator *)self setFromViewController:controller];
  [(BKBookOpenAnimator *)self setToViewController:viewControllerCopy];
}

- (id)viewControllerForStatusBarStyle
{
  transitionContext = [(BKBookOpenAnimator *)self transitionContext];
  if ([transitionContext transitionWasCancelled])
  {
    [(BKBookOpenAnimator *)self fromViewController];
  }

  else
  {
    [(BKBookOpenAnimator *)self toViewController];
  }
  v4 = ;

  return v4;
}

- (void)animationsDidFinish
{
  v3 = _AEBookOpenLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "animationsDidFinish signaled", buf, 2u);
  }

  transitionContext = [(BKBookOpenAnimator *)self transitionContext];
  v5 = [transitionContext transitionWasCancelled] ^ 1;

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001B6974;
  v11[3] = &unk_100A044C8;
  v11[4] = self;
  v12 = v5;
  [UIView performWithoutAnimation:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001B6C44;
  v9[3] = &unk_100A044C8;
  v10 = v5;
  v9[4] = self;
  v6 = objc_retainBlock(v9);
  cleanupBlock = [(BKBookOpenAnimator *)self cleanupBlock];
  v8 = cleanupBlock;
  if (cleanupBlock)
  {
    (*(cleanupBlock + 16))(cleanupBlock, v5);
  }

  [(BKBookOpenAnimator *)self setCleanupBlock:0];

  (v6[2])(v6);
}

- (void)_loadStateFromContext:(id)context
{
  contextCopy = context;
  [(BKBookOpenAnimator *)self setTransitionContext:contextCopy];
  v5 = [contextCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  [(BKBookOpenAnimator *)self setFromViewController:v5];

  v6 = [contextCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  [(BKBookOpenAnimator *)self setToViewController:v6];

  containerView = [contextCopy containerView];
  [(BKBookOpenAnimator *)self setContainerView:containerView];

  isInteractive = [contextCopy isInteractive];

  [(BKBookOpenAnimator *)self setInteractive:isInteractive];
}

- (double)transitionDuration:(id)duration
{
  [(BKBookOpenAnimator *)self _loadStateFromContext:duration];
  if ([(BKBookOpenAnimator *)self opening])
  {
    return 1.0e10;
  }

  [(BKBookOpenAnimator *)self duration];
  return result;
}

- (void)animateTransition:(id)transition
{
  [(BKBookOpenAnimator *)self _loadStateFromContext:transition];
  asyncPrepareWithCompletion = self->_asyncPrepareWithCompletion;
  if (asyncPrepareWithCompletion)
  {
    v5 = objc_retainBlock(asyncPrepareWithCompletion);
    v6 = self->_asyncPrepareWithCompletion;
    self->_asyncPrepareWithCompletion = 0;

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001B6FBC;
    v7[3] = &unk_100A033C8;
    v7[4] = self;
    v5[2](v5, v7);
  }

  else
  {

    [(BKBookOpenAnimator *)self _animateTransition];
  }
}

- (void)_animateTransition
{
  toViewController = [(BKBookOpenAnimator *)self toViewController];
  transitionCoordinator = [toViewController transitionCoordinator];
  containerView = [(BKBookOpenAnimator *)self containerView];
  [transitionCoordinator animateAlongsideTransitionInView:containerView animation:&stru_100A0A690 completion:0];

  coverSource = [(BKBookOpenAnimator *)self coverSource];
  [coverSource coverAnimationSourcePrepare];

  kdebug_trace();
  v7 = _AEBookOpenLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Open animator setup", buf, 2u);
  }

  if ([(BKBookOpenAnimator *)self opening]&& [(BKBookOpenAnimator *)self defersBookViewSetupForOpening])
  {
    bookViewController = [(BKBookOpenAnimator *)self bookViewController];
    if (objc_opt_respondsToSelector())
    {
      [bookViewController bookOpenTransitionWillBegin];
    }
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001B7154;
  v9[3] = &unk_100A033C8;
  v9[4] = self;
  [(BKBookOpenAnimator *)self _setupSharedViewsWithCompletion:v9];
}

- (id)minifiedBarAnimator
{
  toViewController = [(BKBookOpenAnimator *)self toViewController];
  v3 = [toViewController im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKMinifiedBarAnimating];

  return v3;
}

- (void)minibarKeyFrameAnimationWithDuration:(double)duration hide:(double)hide show:(double)show completion:(id)completion
{
  completionCopy = completion;
  [(BKBookOpenAnimator *)self minifiedBarAnimator];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001B74FC;
  v11 = v21[3] = &unk_100A03440;
  v22 = v11;
  selfCopy = self;
  [UIView performWithoutAnimation:v21];
  opening = [(BKBookOpenAnimator *)self opening];
  if ([(BKBookOpenAnimator *)self opening])
  {
    v13 = objc_retainBlock(completionCopy);

    if (v13)
    {
      v13[2](v13, 1);
    }
  }

  else
  {
    if (opening)
    {
      showCopy = hide;
    }

    else
    {
      showCopy = show;
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001B7550;
    v15[3] = &unk_100A0A6B8;
    if (!opening)
    {
      show = hide;
    }

    v18 = showCopy;
    durationCopy = duration;
    v16 = v11;
    selfCopy2 = self;
    showCopy2 = show;
    [UIView animateKeyframesWithDuration:0 delay:v15 options:completionCopy animations:duration completion:0.0];

    v13 = v16;
  }
}

+ (BOOL)_isSlowModeEnabled
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"BKBookOpenAnimatorSlowModeEnabled"];

  return v3;
}

- (double)_debugDragCoefficient
{
  if ([objc_opt_class() _isSlowModeEnabled])
  {
    v3 = 3.0;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = AudiobookNowPlayingTouchViewController.transitionToolbarAlpha()() * v3;
  [(BKBookOpenAnimator *)self slowModeExtraDurationMultiplier];
  return v4 * v5;
}

- (id)adjustSpring:(id)spring
{
  springCopy = spring;
  [(BKBookOpenAnimator *)self _debugDragCoefficient];
  v6 = v5;
  v7 = [UISpringTimingParameters alloc];
  [springCopy mass];
  v9 = v8;
  [springCopy stiffness];
  v11 = v10 / (v6 * v6);
  [springCopy damping];
  v13 = v12 / v6;
  [springCopy initialVelocity];
  v15 = v14;
  v17 = v16;

  v18 = [v7 initWithMass:v9 stiffness:v11 damping:v13 initialVelocity:{v15, v17}];

  return v18;
}

- (BOOL)_sanityCheckPoint:(CGPoint)point
{
  IsValid = CGFloatIsValid();
  if (IsValid)
  {

    LOBYTE(IsValid) = CGFloatIsValid();
  }

  return IsValid;
}

- (CGRect)_sanitizedFrameWithFallbackFrame:(CGRect)frame fallbackFrame:(CGRect)fallbackFrame name:(id)name fallbackName:(id)fallbackName
{
  height = fallbackFrame.size.height;
  width = fallbackFrame.size.width;
  y = fallbackFrame.origin.y;
  x = fallbackFrame.origin.x;
  v11 = frame.size.height;
  v12 = frame.size.width;
  v13 = frame.origin.y;
  v14 = frame.origin.x;
  nameCopy = name;
  fallbackNameCopy = fallbackName;
  if (![(BKBookOpenAnimator *)self _sanityCheckRect:v14, v13, v12, v11])
  {
    v24.origin.x = v14;
    v24.origin.y = v13;
    v24.size.width = v12;
    v24.size.height = v11;
    v18 = NSStringFromCGRect(v24);
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v23 = NSStringFromCGRect(v25);
    BCReportAssertionFailureWithMessage();

    if ([(BKBookOpenAnimator *)self _shouldFallbackForFailedSanityCheck:nameCopy])
    {
      v11 = height;
      v12 = width;
      v13 = y;
      v14 = x;
    }
  }

  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = v11;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)_fullsizeRectForFallback
{
  containerView = [(BKBookOpenAnimator *)self containerView];
  window = [containerView window];

  if (window)
  {
    [window bounds];
    x = v4;
    y = v6;
    width = v8;
    height = v10;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  if (CGRectIsEmpty(v21))
  {
    v12 = +[UIScreen mainScreen];
    [v12 bounds];
    x = v13;
    y = v14;
    width = v15;
    height = v16;
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)_sanitizedFrameWithFullsizeFrame:(CGRect)frame name:(id)name
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  nameCopy = name;
  if (![(BKBookOpenAnimator *)self _sanityCheckRect:x, y, width, height])
  {
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v18 = NSStringFromCGRect(v19);
    BCReportAssertionFailureWithMessage();

    if ([(BKBookOpenAnimator *)self _shouldFallbackForFailedSanityCheck:nameCopy])
    {
      [(BKBookOpenAnimator *)self _fullsizeRectForFallback];
      x = v10;
      y = v11;
      width = v12;
      height = v13;
    }
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)_sanitizedFrameWithCenteredFrame:(CGRect)frame ofSize:(CGSize)size name:(id)name
{
  height = size.height;
  width = size.width;
  v7 = frame.size.height;
  v8 = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  nameCopy = name;
  if (![(BKBookOpenAnimator *)self _sanityCheckRect:x, y, v8, v7])
  {
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = v8;
    v24.size.height = v7;
    v13 = NSStringFromCGRect(v24);
    v23.width = width;
    v23.height = height;
    v22 = NSStringFromCGSize(v23);
    BCReportAssertionFailureWithMessage();

    if ([(BKBookOpenAnimator *)self _shouldFallbackForFailedSanityCheck:nameCopy])
    {
      [(BKBookOpenAnimator *)self _fullsizeRectForFallback];
      CGRectGetCenter();
      CGRectMakeWithCenterAndSize();
      x = v14;
      y = v15;
      v8 = v16;
      v7 = v17;
    }
  }

  v18 = x;
  v19 = y;
  v20 = v8;
  v21 = v7;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGPoint)_sanitizedCenterPoint:(CGPoint)point name:(id)name
{
  y = point.y;
  x = point.x;
  nameCopy = name;
  if (![(BKBookOpenAnimator *)self _sanityCheckPoint:x, y])
  {
    v13.x = x;
    v13.y = y;
    v12 = NSStringFromCGPoint(v13);
    BCReportAssertionFailureWithMessage();

    if ([(BKBookOpenAnimator *)self _shouldFallbackForFailedSanityCheck:nameCopy])
    {
      [(BKBookOpenAnimator *)self _fullsizeRectForFallback];
      CGRectGetCenter();
      x = v8;
      y = v9;
    }
  }

  v10 = x;
  v11 = y;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGRect)closedCoverFrame
{
  x = self->_closedCoverFrame.origin.x;
  y = self->_closedCoverFrame.origin.y;
  width = self->_closedCoverFrame.size.width;
  height = self->_closedCoverFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end