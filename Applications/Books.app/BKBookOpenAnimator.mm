@interface BKBookOpenAnimator
+ (BOOL)_isSlowModeEnabled;
- (BKBookOpenTransitioning)bookViewController;
- (BOOL)_sanityCheckPoint:(CGPoint)a3;
- (BOOL)rightToLeft;
- (CGPoint)_sanitizedCenterPoint:(CGPoint)a3 name:(id)a4;
- (CGRect)_fullsizeRectForFallback;
- (CGRect)_sanitizedFrameWithCenteredFrame:(CGRect)a3 ofSize:(CGSize)a4 name:(id)a5;
- (CGRect)_sanitizedFrameWithFallbackFrame:(CGRect)a3 fallbackFrame:(CGRect)a4 name:(id)a5 fallbackName:(id)a6;
- (CGRect)_sanitizedFrameWithFullsizeFrame:(CGRect)a3 name:(id)a4;
- (CGRect)closedCoverFrame;
- (CGRect)zoomedCoverFrame;
- (NSArray)bookshelfContentViews;
- (UIViewController)bookshelfViewController;
- (double)_debugDragCoefficient;
- (double)coverAspectRatio;
- (double)duration;
- (double)transitionDuration:(id)a3;
- (id)adjustSpring:(id)a3;
- (id)initOpening:(BOOL)a3;
- (id)minifiedBarAnimator;
- (id)viewControllerForStatusBarStyle;
- (void)_adjustShadowForCurrentCoverBounds;
- (void)_animateTransition;
- (void)_deferredSetupBookView;
- (void)_loadStateFromContext:(id)a3;
- (void)_prepareHostWithCompletion:(id)a3;
- (void)_setupBookshelfAnimationViewsWithCompletion:(id)a3;
- (void)_setupSharedViewsWithCompletion:(id)a3;
- (void)_setupViewController:(id)a3;
- (void)animateNonInteractive;
- (void)animateTransition:(id)a3;
- (void)animationsDidFinish;
- (void)bookContentDidLoad;
- (void)configureWithFromViewController:(id)a3 toViewController:(id)a4;
- (void)minibarKeyFrameAnimationWithDuration:(double)a3 hide:(double)a4 show:(double)a5 completion:(id)a6;
- (void)moveCoverToFrame:(CGRect)a3;
- (void)setBookshelfAlpha:(double)a3;
- (void)setBookshelfTransform:(CGAffineTransform *)a3;
- (void)setupShadowForCoverView:(id)a3;
- (void)teardownViews:(BOOL)a3;
@end

@implementation BKBookOpenAnimator

- (id)initOpening:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = BKBookOpenAnimator;
  result = [(BKBookOpenAnimator *)&v5 init];
  if (result)
  {
    *(result + 11) = a3;
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
  v3 = [(BKBookOpenAnimator *)self bookshelfViewController];
  objc_opt_class();
  v4 = BUClassAndProtocolCast();
  v5 = v4;
  if (v4)
  {
    v6 = [v4 transitionContentViews];
  }

  else
  {
    v7 = [(BKBookOpenAnimator *)self bookshelfViewController];
    v8 = [v7 view];

    if (v8)
    {
      v10 = v8;
      v6 = [NSArray arrayWithObjects:&v10 count:1];
    }

    else
    {
      sub_100793554();
      v6 = &__NSArray0__struct;
    }
  }

  return v6;
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
  v2 = [(BKBookOpenAnimator *)self bookViewController];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 transitionRightToLeft];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGRect)zoomedCoverFrame
{
  v3 = [(BKBookOpenAnimator *)self containerView];
  [v3 bounds];
  IMActionSafeRectForRect();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(BKBookOpenAnimator *)self coverImage];
  [v12 size];

  CGSizeScaleThatFitsInCGSize();
  CGSizeScale();
  CGRectMakeWithSize();
  v13 = [(BKBookOpenAnimator *)self coverContainerView];
  v14 = [v13 superview];
  v15 = [(BKBookOpenAnimator *)self containerView];
  v16 = [v15 superview];
  [v14 convertRect:v16 fromView:{v5, v7, v9, v11}];
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
  v2 = [(BKBookOpenAnimator *)self coverImage];
  [v2 size];
  v4 = v3;
  v6 = v5;

  if (v4 > 0.0 && v6 > 0.0)
  {
    return v4 / v6;
  }

  sub_1007935DC(v4, v6);
  return 1.0;
}

- (void)setBookshelfAlpha:(double)a3
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [(BKBookOpenAnimator *)self bookshelfSnapshots];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v19 + 1) + 8 * v9) setAlpha:a3];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = [(BKBookOpenAnimator *)self bookshelfLiveViews];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
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
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14) setAlpha:a3];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)setBookshelfTransform:(CGAffineTransform *)a3
{
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [(BKBookOpenAnimator *)self bookshelfSnapshots];
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        v11 = *&a3->c;
        v23 = *&a3->a;
        v24 = v11;
        v25 = *&a3->tx;
        [v10 setTransform:&v23];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [(BKBookOpenAnimator *)self bookshelfLiveViews];
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v30 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        v18 = *&a3->c;
        v23 = *&a3->a;
        v24 = v18;
        v25 = *&a3->tx;
        [v17 setTransform:&v23];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v19 objects:v30 count:16];
    }

    while (v14);
  }
}

- (void)moveCoverToFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(BKBookOpenAnimator *)self animatesCoverBounds])
  {
    [(BKBookOpenAnimator *)self _sanitizedFrameWithCenteredFrame:@"cover.coverContainerView.frame" ofSize:x name:y, width, height, CGSizeZero.width, CGSizeZero.height];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(BKBookOpenAnimator *)self coverContainerView];
    [v16 setFrame:{v9, v11, v13, v15}];

    [(BKBookOpenAnimator *)self _adjustShadowForCurrentCoverBounds];
  }

  else
  {
    CGRectGetCenterNoRounding();
    [(BKBookOpenAnimator *)self _sanitizedCenterPoint:@"cover.coverContainerView.center" name:?];
    v18 = v17;
    v20 = v19;
    v21 = [(BKBookOpenAnimator *)self coverContainerView];
    [v21 setCenter:{v18, v20}];

    v22 = [(BKBookOpenAnimator *)self coverImage];
    [v22 size];
    CGSizeScaleThatFitsInCGSize();
    v24 = v23;

    CGAffineTransformMakeScale(&v27, v24, v24);
    v25 = [(BKBookOpenAnimator *)self coverContainerView];
    v26 = v27;
    [v25 setTransform:&v26];

    [(BKBookOpenAnimator *)self _adjustShadowForCurrentCoverBounds];
  }
}

- (void)teardownViews:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKBookOpenAnimator *)self bookshelfTintView];
  [v5 removeFromSuperview];

  [(BKBookOpenAnimator *)self setBookshelfTintView:0];
  v6 = [(BKBookOpenAnimator *)self coverImageView];
  [v6 removeFromSuperview];

  [(BKBookOpenAnimator *)self setCoverImageView:0];
  v7 = [(BKBookOpenAnimator *)self coverShadowView];
  [v7 removeFromSuperview];

  [(BKBookOpenAnimator *)self setCoverShadowView:0];
  v8 = [(BKBookOpenAnimator *)self coverContainerView];
  [v8 removeFromSuperview];

  [(BKBookOpenAnimator *)self setCoverContainerView:0];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [(BKBookOpenAnimator *)self bookshelfSnapshots];
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v9);
        }

        [*(*(&v22 + 1) + 8 * i) removeFromSuperview];
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  [(BKBookOpenAnimator *)self setBookshelfSnapshots:0];
  [(BKBookOpenAnimator *)self setBookshelfLiveViews:0];
  v14 = [(BKBookOpenAnimator *)self bookshelfViewState];
  [v14 restore];

  v15 = [(BKBookOpenAnimator *)self bookViewState];
  [v15 restore];

  v16 = [(BKBookOpenAnimator *)self minifiedBarAnimator];
  v17 = [v16 minifiedBarAnimatorContainerView];

  if (v17)
  {
    [v17 setAlpha:1.0];
    v18 = [(BKBookOpenAnimator *)self minibarContainerViewState];
    [v18 restore];
  }

  v19 = [(BKBookOpenAnimator *)self bookContainerView];
  [v19 removeFromSuperview];

  [(BKBookOpenAnimator *)self setBookContainerView:0];
  if (v3)
  {
    [(BKBookOpenAnimator *)self fromViewController];
  }

  else
  {
    [(BKBookOpenAnimator *)self toViewController];
  }
  v20 = ;
  v21 = [v20 view];
  [v21 removeFromSuperview];
}

- (void)_adjustShadowForCurrentCoverBounds
{
  v3 = [(BKBookOpenAnimator *)self coverShadowView];

  if (v3)
  {
    v4 = [(BKBookOpenAnimator *)self coverShadowImage];

    if (v4)
    {
      v5 = [(BKBookOpenAnimator *)self coverShadowView];
      v6 = [v5 superview];
      [v6 bounds];

      CGRectGetCenterNoRounding();
      v8 = v7;
      v10 = v9;
      v11 = [(BKBookOpenAnimator *)self coverShadowView];
      [v11 setCenter:{v8, v10}];

      v12 = [(BKBookOpenAnimator *)self coverShadowImage];
      [v12 alignmentRectInsets];

      v13 = [(BKBookOpenAnimator *)self coverShadowImage];
      [v13 size];
      CGRectMakeWithSize();

      CGSizeScaleThatFitsInCGSize();
      CGAffineTransformMakeScale(&v17, v14, v14);
      v15 = [(BKBookOpenAnimator *)self coverShadowView];
      v16 = v17;
      [v15 setTransform:&v16];
    }
  }
}

- (void)setupShadowForCoverView:(id)a3
{
  v4 = a3;
  v10 = [v4 layer];
  [v4 bounds];
  v5 = [UIBezierPath bezierPathWithRect:?];
  [v10 setShadowPath:{objc_msgSend(v5, "CGPath")}];

  v6 = +[UIColor blackColor];
  [v10 setShadowColor:{objc_msgSend(v6, "CGColor")}];

  LODWORD(v7) = 1041865114;
  [v10 setShadowOpacity:v7];
  [(BKBookOpenAnimator *)self closedCoverFrame];
  [v4 bounds];

  CGSizeScaleThatFitsInCGSize();
  v9 = v8;
  CGSizeScale();
  [v10 setShadowOffset:?];
  [v10 setShadowRadius:v9 * 4.0];
}

- (void)_setupSharedViewsWithCompletion:(id)a3
{
  v4 = a3;
  if ([(BKBookOpenAnimator *)self opening])
  {
    v5 = [(BKBookOpenAnimator *)self defersBookViewSetupForOpening];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(BKBookOpenAnimator *)self containerView];
  if ([(BKBookOpenAnimator *)self opening])
  {
    v7 = [v6 window];
    v8 = [BCStatusBarBackgroundController backgroundControllerForWindow:v7];
    [v8 setOpacity:1 animated:0.0];
  }

  v9 = [UIView alloc];
  [v6 bounds];
  v10 = [v9 initWithFrame:?];
  [(BKBookOpenAnimator *)self setBookContainerView:v10];
  [v6 addSubview:v10];
  [v10 setAlpha:{(-[BKBookOpenAnimator opening](self, "opening") ^ 1)}];
  v11 = [(BKBookOpenAnimator *)self fromViewController];
  [(BKBookOpenAnimator *)self _setupViewController:v11];

  if ((v5 & 1) == 0)
  {
    v12 = [(BKBookOpenAnimator *)self toViewController];
    [(BKBookOpenAnimator *)self _setupViewController:v12];
  }

  v13 = [(BKBookOpenAnimator *)self preTransitionBlock];
  v14 = v13;
  if (v13)
  {
    (*(v13 + 16))(v13);
  }

  v15 = [(BKBookOpenAnimator *)self minifiedBarAnimator];
  v16 = [v15 minifiedBarAnimatorContainerView];

  if (v16)
  {
    v17 = [IMViewState saveStateForView:v16 flags:3];
    [(BKBookOpenAnimator *)self setMinibarContainerViewState:v17];

    v18 = [v16 layer];
    [v18 setZPosition:1.0];

    [v6 addSubview:v16];
  }

  [v6 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = [(BKBookOpenAnimator *)self bookshelfViewController];
  v28 = [v27 view];
  [v28 setFrame:{v20, v22, v24, v26}];

  v29 = [(BKBookOpenAnimator *)self bookshelfViewController];
  v30 = [v29 view];
  [v6 addSubview:v30];

  if (![(BKBookOpenAnimator *)self opening])
  {
    v31 = [(BKBookOpenAnimator *)self bookContainerView];
    [v6 addSubview:v31];
  }

  v32 = [(BKBookOpenAnimator *)self closedCoverFrameBlock];
  if (v32)
  {
    v30 = [(BKBookOpenAnimator *)self closedCoverFrameBlock];
    x = v30[2]();
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

  v40 = [(BKBookOpenAnimator *)self bookshelfViewController];
  v41 = [v40 view];
  [v6 convertRect:v41 fromView:{x, y, width, height}];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  if (v32)
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
  v57 = [(BKBookOpenAnimator *)self coverSource];
  v58 = [v57 coverAnimationSourceAlignment];

  if (v58 == 2)
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
    v62 = [(BKBookOpenAnimator *)self containerView];
    [v62 bounds];
    IMActionSafeRectForRect();

    v63 = [(BKBookOpenAnimator *)self coverImage];
    [v63 size];

    CGSizeScaleThatFitsInCGSize();
    CGSizeScale();
    CGRectMakeWithSize();
    CGRectCenterRectInRect();
    [(BKBookOpenAnimator *)self setClosedCoverFrame:?];
  }

  [(BKBookOpenAnimator *)self bookshelfTintCoversBars];
  v108 = v6;
  v64 = [UIView alloc];
  [v108 bounds];
  v65 = [v64 initWithFrame:?];
  v66 = [(BKBookOpenAnimator *)self bookshelfTintColor];
  [v65 setBackgroundColor:v66];
  [v65 setAlpha:0.0];
  [v108 addSubview:v65];
  [(BKBookOpenAnimator *)self setBookshelfTintView:v65];
  v67 = [(BKBookOpenAnimator *)self coverImage];
  [v67 size];
  CGRectMakeWithSize();
  IsEmpty = CGRectIsEmpty(v117);

  if (IsEmpty)
  {
    sub_100793680();
  }

  v69 = [UIView alloc];
  v70 = [(BKBookOpenAnimator *)self coverImage];
  [v70 size];
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

  v73 = [(BKBookOpenAnimator *)self coverContainerView];
  [v73 setAlpha:v72];

  if ([(BKBookOpenAnimator *)self wantsCoverShadow])
  {
    v74 = [(BKBookOpenAnimator *)self coverShadowImage];

    if (v74)
    {
      v75 = [UIImageView alloc];
      v76 = [(BKBookOpenAnimator *)self coverShadowImage];
      v77 = [v75 initWithImage:v76];

      v78 = [(BKBookOpenAnimator *)self coverShadowImage];
      [v78 alignmentRectInsets];
      v80 = v79;
      v82 = v81;
      v84 = v83;
      v86 = v85;

      v87 = [(BKBookOpenAnimator *)self coverShadowImage];
      [v87 size];
      v89 = v88;
      v91 = v90;

      CGRectMakeWithSize();
      v94 = (v82 + (v92 - (v82 + v86)) * 0.5) / v89;
      v95 = (v80 + (v93 - (v80 + v84)) * 0.5) / v91;
      v96 = [(BKCustomAnimationPropertiesView *)v77 layer];
      [v96 setAnchorPoint:{v94, v95}];
    }

    else
    {
      v97 = [BKCustomAnimationPropertiesView alloc];
      v98 = [(BKBookOpenAnimator *)self coverImage];
      [v98 size];
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
  v100 = [(BKBookOpenAnimator *)self coverImage];
  v101 = [v99 initWithImage:v100];

  [(BKBookOpenAnimator *)self setCoverImageView:v101];
  [v101 setAccessibilityIgnoresInvertColors:1];
  [v101 setAutoresizingMask:18];
  v102 = [(BKBookOpenAnimator *)self coverImage];
  [v102 scale];
  v104 = v103;
  v105 = [v101 layer];
  [v105 setContentsScale:v104];

  [v101 setClipsToBounds:1];
  [v101 setContentMode:{-[BKBookOpenAnimator coverContentMode](self, "coverContentMode")}];
  v106 = [(BKBookOpenAnimator *)self coverImage];
  [v106 size];
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
  [(BKBookOpenAnimator *)self _prepareHostWithCompletion:v4];
}

- (void)_setupViewController:(id)a3
{
  v4 = a3;
  v5 = [(BKBookOpenAnimator *)self containerView];
  v6 = [v4 view];
  v7 = [(BKBookOpenAnimator *)self fromViewController];

  v8 = [(BKBookOpenAnimator *)self bookshelfViewController];

  v9 = BUProtocolCast();
  if (objc_opt_respondsToSelector())
  {
    [v9 willAddViewToHierarchy];
  }

  +[CATransaction begin];
  [v5 addSubview:v6];
  [v5 bounds];
  [v6 setFrame:?];
  kdebug_trace();
  v10 = _AEBookOpenLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"to";
    if (v7 == v4)
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
  v12 = v6;
  v19 = v12;
  [UIView performWithoutAnimation:v18];
  kdebug_trace();
  if (v8 == v4)
  {
    v14 = [(BKBookOpenAnimator *)self bookshelfViewController];
    v16 = [v14 view];
    v17 = [IMViewState saveStateForView:v16 flags:1];
    [(BKBookOpenAnimator *)self setBookshelfViewState:v17];
  }

  else
  {
    v13 = [(BKBookOpenAnimator *)self bookViewController];
    v14 = [v13 view];

    v15 = [IMViewState saveStateForView:v14 flags:1];
    [(BKBookOpenAnimator *)self setBookViewState:v15];

    v16 = [(BKBookOpenAnimator *)self bookContainerView];
    [v16 addSubview:v14];
  }

  +[CATransaction commit];
}

- (void)_deferredSetupBookView
{
  v3 = [(BKBookOpenAnimator *)self toViewController];
  [(BKBookOpenAnimator *)self _setupViewController:v3];
}

- (void)_prepareHostWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BKBookOpenAnimator *)self toViewController];
  v6 = [v5 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCCoverAnimatingHost];

  if (objc_opt_respondsToSelector())
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001B6258;
    v12[3] = &unk_100A03788;
    v7 = &v13;
    v12[4] = self;
    v13 = v4;
    v8 = v4;
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
    v11 = v4;
    v9 = v4;
    dispatch_async(&_dispatch_main_q, v10);
  }
}

- (void)_setupBookshelfAnimationViewsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = UIApp;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B6398;
  v7[3] = &unk_100A03788;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)configureWithFromViewController:(id)a3 toViewController:(id)a4
{
  v6 = a4;
  [(BKBookOpenAnimator *)self setFromViewController:a3];
  [(BKBookOpenAnimator *)self setToViewController:v6];
}

- (id)viewControllerForStatusBarStyle
{
  v3 = [(BKBookOpenAnimator *)self transitionContext];
  if ([v3 transitionWasCancelled])
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

  v4 = [(BKBookOpenAnimator *)self transitionContext];
  v5 = [v4 transitionWasCancelled] ^ 1;

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
  v7 = [(BKBookOpenAnimator *)self cleanupBlock];
  v8 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7, v5);
  }

  [(BKBookOpenAnimator *)self setCleanupBlock:0];

  (v6[2])(v6);
}

- (void)_loadStateFromContext:(id)a3
{
  v4 = a3;
  [(BKBookOpenAnimator *)self setTransitionContext:v4];
  v5 = [v4 viewControllerForKey:UITransitionContextFromViewControllerKey];
  [(BKBookOpenAnimator *)self setFromViewController:v5];

  v6 = [v4 viewControllerForKey:UITransitionContextToViewControllerKey];
  [(BKBookOpenAnimator *)self setToViewController:v6];

  v7 = [v4 containerView];
  [(BKBookOpenAnimator *)self setContainerView:v7];

  v8 = [v4 isInteractive];

  [(BKBookOpenAnimator *)self setInteractive:v8];
}

- (double)transitionDuration:(id)a3
{
  [(BKBookOpenAnimator *)self _loadStateFromContext:a3];
  if ([(BKBookOpenAnimator *)self opening])
  {
    return 1.0e10;
  }

  [(BKBookOpenAnimator *)self duration];
  return result;
}

- (void)animateTransition:(id)a3
{
  [(BKBookOpenAnimator *)self _loadStateFromContext:a3];
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
  v3 = [(BKBookOpenAnimator *)self toViewController];
  v4 = [v3 transitionCoordinator];
  v5 = [(BKBookOpenAnimator *)self containerView];
  [v4 animateAlongsideTransitionInView:v5 animation:&stru_100A0A690 completion:0];

  v6 = [(BKBookOpenAnimator *)self coverSource];
  [v6 coverAnimationSourcePrepare];

  kdebug_trace();
  v7 = _AEBookOpenLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Open animator setup", buf, 2u);
  }

  if ([(BKBookOpenAnimator *)self opening]&& [(BKBookOpenAnimator *)self defersBookViewSetupForOpening])
  {
    v8 = [(BKBookOpenAnimator *)self bookViewController];
    if (objc_opt_respondsToSelector())
    {
      [v8 bookOpenTransitionWillBegin];
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
  v2 = [(BKBookOpenAnimator *)self toViewController];
  v3 = [v2 im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKMinifiedBarAnimating];

  return v3;
}

- (void)minibarKeyFrameAnimationWithDuration:(double)a3 hide:(double)a4 show:(double)a5 completion:(id)a6
{
  v10 = a6;
  [(BKBookOpenAnimator *)self minifiedBarAnimator];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001B74FC;
  v11 = v21[3] = &unk_100A03440;
  v22 = v11;
  v23 = self;
  [UIView performWithoutAnimation:v21];
  v12 = [(BKBookOpenAnimator *)self opening];
  if ([(BKBookOpenAnimator *)self opening])
  {
    v13 = objc_retainBlock(v10);

    if (v13)
    {
      v13[2](v13, 1);
    }
  }

  else
  {
    if (v12)
    {
      v14 = a4;
    }

    else
    {
      v14 = a5;
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001B7550;
    v15[3] = &unk_100A0A6B8;
    if (!v12)
    {
      a5 = a4;
    }

    v18 = v14;
    v19 = a3;
    v16 = v11;
    v17 = self;
    v20 = a5;
    [UIView animateKeyframesWithDuration:0 delay:v15 options:v10 animations:a3 completion:0.0];

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

- (id)adjustSpring:(id)a3
{
  v4 = a3;
  [(BKBookOpenAnimator *)self _debugDragCoefficient];
  v6 = v5;
  v7 = [UISpringTimingParameters alloc];
  [v4 mass];
  v9 = v8;
  [v4 stiffness];
  v11 = v10 / (v6 * v6);
  [v4 damping];
  v13 = v12 / v6;
  [v4 initialVelocity];
  v15 = v14;
  v17 = v16;

  v18 = [v7 initWithMass:v9 stiffness:v11 damping:v13 initialVelocity:{v15, v17}];

  return v18;
}

- (BOOL)_sanityCheckPoint:(CGPoint)a3
{
  IsValid = CGFloatIsValid();
  if (IsValid)
  {

    LOBYTE(IsValid) = CGFloatIsValid();
  }

  return IsValid;
}

- (CGRect)_sanitizedFrameWithFallbackFrame:(CGRect)a3 fallbackFrame:(CGRect)a4 name:(id)a5 fallbackName:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3.size.height;
  v12 = a3.size.width;
  v13 = a3.origin.y;
  v14 = a3.origin.x;
  v16 = a5;
  v17 = a6;
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

    if ([(BKBookOpenAnimator *)self _shouldFallbackForFailedSanityCheck:v16])
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
  v2 = [(BKBookOpenAnimator *)self containerView];
  v3 = [v2 window];

  if (v3)
  {
    [v3 bounds];
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

- (CGRect)_sanitizedFrameWithFullsizeFrame:(CGRect)a3 name:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  if (![(BKBookOpenAnimator *)self _sanityCheckRect:x, y, width, height])
  {
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v18 = NSStringFromCGRect(v19);
    BCReportAssertionFailureWithMessage();

    if ([(BKBookOpenAnimator *)self _shouldFallbackForFailedSanityCheck:v9])
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

- (CGRect)_sanitizedFrameWithCenteredFrame:(CGRect)a3 ofSize:(CGSize)a4 name:(id)a5
{
  height = a4.height;
  width = a4.width;
  v7 = a3.size.height;
  v8 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a5;
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

    if ([(BKBookOpenAnimator *)self _shouldFallbackForFailedSanityCheck:v12])
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

- (CGPoint)_sanitizedCenterPoint:(CGPoint)a3 name:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (![(BKBookOpenAnimator *)self _sanityCheckPoint:x, y])
  {
    v13.x = x;
    v13.y = y;
    v12 = NSStringFromCGPoint(v13);
    BCReportAssertionFailureWithMessage();

    if ([(BKBookOpenAnimator *)self _shouldFallbackForFailedSanityCheck:v7])
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