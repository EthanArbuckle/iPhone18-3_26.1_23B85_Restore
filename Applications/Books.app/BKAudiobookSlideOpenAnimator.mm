@interface BKAudiobookSlideOpenAnimator
- (BKAudiobookOpenTransitioning)audiobookViewController;
- (BOOL)landscape;
- (CGRect)contentFrame;
- (CGRect)zoomedCoverFrame;
- (double)revealDuration;
- (int64_t)coverContentMode;
- (void)animateRevealWithCompletion:(id)completion;
- (void)animateZoomWithCompletion:(id)completion;
- (void)animationsDidFinish;
- (void)setupViewsForReveal;
- (void)setupViewsForZoom;
@end

@implementation BKAudiobookSlideOpenAnimator

- (BOOL)landscape
{
  containerView = [(BKBookOpenAnimator *)self containerView];
  [containerView bounds];
  v4 = v3;
  v6 = v5;

  return v4 > v6;
}

- (BKAudiobookOpenTransitioning)audiobookViewController
{
  bookViewController = [(BKBookOpenAnimator *)self bookViewController];
  objc_opt_class();
  v3 = BUClassAndProtocolCast();

  return v3;
}

- (void)setupViewsForZoom
{
  bookViewController = [(BKBookOpenAnimator *)self bookViewController];
  view = [bookViewController view];
  [view setAlpha:0.0];

  containerView = [(BKBookOpenAnimator *)self containerView];
  coverContainerView = [(BKBookOpenAnimator *)self coverContainerView];
  [containerView addSubview:coverContainerView];
}

- (void)animateZoomWithCompletion:(id)completion
{
  completionCopy = completion;
  opening = [(BKBookOpenAnimator *)self opening];
  [(BKBookOpenAnimator *)self closedCoverFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(BKAudiobookSlideOpenAnimator *)self zoomedCoverFrame];
  v18 = v17;
  if (opening)
  {
    v19 = 1.0;
    v20 = 0.0;
    v21 = v13;
    v22 = v15;
    v23 = v9;
    v24 = v14;
    v25 = 0.0;
    [(BKBookOpenAnimator *)self moveCoverToFrame:v7, v23, v11, v21, *&v16, 0x3FA999999999999ALL];
  }

  else
  {
    v25 = 1.0;
    v20 = 0.05;
    v19 = 0.0;
    v18 = v13;
    v22 = v9;
    v24 = v7;
    [(BKBookOpenAnimator *)self moveCoverToFrame:v14, v15, v16, v17, *&v11, 0];
  }

  bookshelfTintView = [(BKBookOpenAnimator *)self bookshelfTintView];
  [bookshelfTintView setAlpha:v20];

  [(BKBookOpenAnimator *)self setBookshelfAlpha:v19];
  coverShadowView = [(BKBookOpenAnimator *)self coverShadowView];
  [coverShadowView setAlpha:v19];

  [(BKBookSlideOpenAnimator *)self zoomDuration];
  v29 = v28;
  zoomTimingFunction = [(BKBookZoomRevealOpenAnimator *)self zoomTimingFunction];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000AE78C;
  v33[3] = &unk_100A06128;
  v33[4] = self;
  *&v33[5] = v24;
  *&v33[6] = v22;
  v33[7] = v31;
  *&v33[8] = v18;
  v33[9] = v32;
  *&v33[10] = v25;
  *&v33[11] = v25;
  [UIView animateWithDuration:zoomTimingFunction delay:0 timingFunction:v33 options:completionCopy animations:v29 completion:0.0];
}

- (void)setupViewsForReveal
{
  [(BKBookOpenAnimator *)self closedCoverFrame];
  v4 = v3;
  v6 = v5;
  v9 = [[UIView alloc] initWithFrame:{v7, v8, v3, v5}];
  [(BKAudiobookSlideOpenAnimator *)self setContentClipView:v9];

  contentClipView = [(BKAudiobookSlideOpenAnimator *)self contentClipView];
  [contentClipView setClipsToBounds:1];

  containerView = [(BKBookOpenAnimator *)self containerView];
  contentClipView2 = [(BKAudiobookSlideOpenAnimator *)self contentClipView];
  [containerView addSubview:contentClipView2];

  bookViewController = [(BKBookOpenAnimator *)self bookViewController];
  view = [bookViewController view];
  [view layoutIfNeeded];

  audiobookViewController = [(BKAudiobookSlideOpenAnimator *)self audiobookViewController];
  transitionCoverViews = [audiobookViewController transitionCoverViews];
  [transitionCoverViews enumerateObjectsUsingBlock:&stru_100A06168];

  bookViewController2 = [(BKBookOpenAnimator *)self bookViewController];
  transitionContentView = [bookViewController2 transitionContentView];

  v18 = [transitionContentView snapshotViewAfterScreenUpdates:1];
  [(BKAudiobookSlideOpenAnimator *)self setContentView:v18];

  transitionCoverViews2 = [audiobookViewController transitionCoverViews];
  [transitionCoverViews2 enumerateObjectsUsingBlock:&stru_100A06188];

  contentView = [(BKAudiobookSlideOpenAnimator *)self contentView];
  [contentView frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [(BKAudiobookSlideOpenAnimator *)self setContentFrame:v22, v24, v26, v28];
  if ([(BKAudiobookSlideOpenAnimator *)self landscape])
  {
    v22 = (v4 - v26) * 0.5;
  }

  else
  {
    v24 = (v6 - v28) * 0.5;
  }

  contentView2 = [(BKAudiobookSlideOpenAnimator *)self contentView];
  [contentView2 setFrame:{v22, v24, v26, v28}];

  contentClipView3 = [(BKAudiobookSlideOpenAnimator *)self contentClipView];
  contentView3 = [(BKAudiobookSlideOpenAnimator *)self contentView];
  [contentClipView3 addSubview:contentView3];

  if (![(BKBookOpenAnimator *)self skipZoomPhase])
  {
    [(BKAudiobookSlideOpenAnimator *)self zoomedCoverFrame];
  }

  CGRectMakeWithSize();
  [(BKBookOpenAnimator *)self moveCoverToFrame:?];
  coverContainerView = [(BKBookOpenAnimator *)self coverContainerView];
  layer = [coverContainerView layer];
  [layer setMasksToBounds:1];

  contentClipView4 = [(BKAudiobookSlideOpenAnimator *)self contentClipView];
  coverContainerView2 = [(BKBookOpenAnimator *)self coverContainerView];
  [contentClipView4 addSubview:coverContainerView2];

  v36 = [UIImageView alloc];
  audiobookViewController2 = [(BKAudiobookSlideOpenAnimator *)self audiobookViewController];
  transitionCurrentCoverImage = [audiobookViewController2 transitionCurrentCoverImage];
  v39 = [v36 initWithImage:transitionCurrentCoverImage];

  [v39 setClipsToBounds:1];
  [v39 setContentMode:{-[BKAudiobookSlideOpenAnimator coverContentMode](self, "coverContentMode")}];
  coverContainerView3 = [(BKBookOpenAnimator *)self coverContainerView];
  [coverContainerView3 bounds];
  CGRectMakeWithSize();
  [v39 setFrame:?];

  [v39 setAutoresizingMask:18];
  [v39 setAlpha:0.0];
  coverImageView = [(BKBookOpenAnimator *)self coverImageView];
  superview = [coverImageView superview];

  if (!superview)
  {
    sub_10078D0B0();
  }

  coverImageView2 = [(BKBookOpenAnimator *)self coverImageView];
  [superview insertSubview:v39 aboveSubview:coverImageView2];

  [(BKAudiobookSlideOpenAnimator *)self setCurrentCoverView:v39];
  coverShadowView = [(BKBookOpenAnimator *)self coverShadowView];
  [coverShadowView setAlpha:0.0];
}

- (void)animateRevealWithCompletion:(id)completion
{
  completionCopy = completion;
  [(BKAudiobookSlideOpenAnimator *)self audiobookViewController];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000AEFF0;
  v29[3] = &unk_100A03440;
  v5 = v29[4] = self;
  v30 = v5;
  v6 = objc_retainBlock(v29);
  if ([(BKBookOpenAnimator *)self opening])
  {
    [(BKAudiobookSlideOpenAnimator *)self revealDuration];
    v8 = v7;
    revealTimingFunction = [(BKBookZoomRevealOpenAnimator *)self revealTimingFunction];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000AF124;
    v26[3] = &unk_100A061D0;
    v26[4] = self;
    v27 = &stru_100A061A8;
    v28 = completionCopy;
    [UIView animateWithDuration:revealTimingFunction delay:0 timingFunction:v6 options:v26 animations:v8 completion:0.0];

    audiobookViewController = [(BKAudiobookSlideOpenAnimator *)self audiobookViewController];
    [audiobookViewController coverCornerRadius];
    v12 = v11;

    +[CATransaction begin];
    [(BKAudiobookSlideOpenAnimator *)self revealDuration];
    [CATransaction setAnimationDuration:?];
    revealTimingFunction2 = [(BKBookZoomRevealOpenAnimator *)self revealTimingFunction];
    [CATransaction setAnimationTimingFunction:revealTimingFunction2];

    v14 = [CABasicAnimation animationWithKeyPath:@"cornerRadius"];
    if ([(BKBookOpenAnimator *)self opening])
    {
      [v14 setFromValue:&off_100A434E8];
    }

    else
    {
      v19 = [NSNumber numberWithDouble:v12];
      [v14 setFromValue:v19];
    }

    v17 = &v27;
    v18 = &v28;
    if ([(BKBookOpenAnimator *)self opening])
    {
      v20 = [NSNumber numberWithDouble:v12];
      [v14 setToValue:v20];
    }

    else
    {
      [v14 setToValue:&off_100A434E8];
    }

    [v14 setFillMode:kCAFillModeForwards];
    [v14 setRemovedOnCompletion:0];
    coverContainerView = [(BKBookOpenAnimator *)self coverContainerView];
    layer = [coverContainerView layer];
    [layer addAnimation:v14 forKey:@"cornerRadius"];

    +[CATransaction commit];
  }

  else
  {
    [(BKAudiobookSlideOpenAnimator *)self coverFadeDuration];
    v16 = v15;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000AF16C;
    v23[3] = &unk_100A061D0;
    v23[4] = self;
    v17 = &v24;
    v24 = v6;
    v18 = &v25;
    v25 = completionCopy;
    [UIView animateWithDuration:&stru_100A061A8 animations:v23 completion:v16];
  }
}

- (void)animationsDidFinish
{
  currentCoverView = [(BKAudiobookSlideOpenAnimator *)self currentCoverView];
  [currentCoverView removeFromSuperview];

  [(BKAudiobookSlideOpenAnimator *)self setCurrentCoverView:0];
  contentView = [(BKAudiobookSlideOpenAnimator *)self contentView];
  [contentView removeFromSuperview];

  [(BKAudiobookSlideOpenAnimator *)self setContentView:0];
  contentClipView = [(BKAudiobookSlideOpenAnimator *)self contentClipView];
  [contentClipView removeFromSuperview];

  [(BKAudiobookSlideOpenAnimator *)self setContentClipView:0];
  v6.receiver = self;
  v6.super_class = BKAudiobookSlideOpenAnimator;
  [(BKBookOpenAnimator *)&v6 animationsDidFinish];
}

- (CGRect)zoomedCoverFrame
{
  containerView = [(BKBookOpenAnimator *)self containerView];
  [containerView bounds];

  audiobookViewController = [(BKAudiobookSlideOpenAnimator *)self audiobookViewController];
  [audiobookViewController transitionCoverFrame];

  CGSizeScaleThatFitsInCGSize();
  CGSizeScale();
  CGRectMakeWithSize();

  CGRectCenterRectInRect();
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (double)revealDuration
{
  v3.receiver = self;
  v3.super_class = BKAudiobookSlideOpenAnimator;
  [(BKBookSlideOpenAnimator *)&v3 revealDuration];
  return result;
}

- (int64_t)coverContentMode
{
  audiobookViewController = [(BKAudiobookSlideOpenAnimator *)self audiobookViewController];
  if (audiobookViewController)
  {
    audiobookViewController2 = [(BKAudiobookSlideOpenAnimator *)self audiobookViewController];
    coverContentMode = [audiobookViewController2 coverContentMode];
  }

  else
  {
    coverContentMode = 2;
  }

  return coverContentMode;
}

- (CGRect)contentFrame
{
  x = self->_contentFrame.origin.x;
  y = self->_contentFrame.origin.y;
  width = self->_contentFrame.size.width;
  height = self->_contentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end