@interface BKAudiobookSlideOpenAnimator
- (BKAudiobookOpenTransitioning)audiobookViewController;
- (BOOL)landscape;
- (CGRect)contentFrame;
- (CGRect)zoomedCoverFrame;
- (double)revealDuration;
- (int64_t)coverContentMode;
- (void)animateRevealWithCompletion:(id)a3;
- (void)animateZoomWithCompletion:(id)a3;
- (void)animationsDidFinish;
- (void)setupViewsForReveal;
- (void)setupViewsForZoom;
@end

@implementation BKAudiobookSlideOpenAnimator

- (BOOL)landscape
{
  v2 = [(BKBookOpenAnimator *)self containerView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  return v4 > v6;
}

- (BKAudiobookOpenTransitioning)audiobookViewController
{
  v2 = [(BKBookOpenAnimator *)self bookViewController];
  objc_opt_class();
  v3 = BUClassAndProtocolCast();

  return v3;
}

- (void)setupViewsForZoom
{
  v3 = [(BKBookOpenAnimator *)self bookViewController];
  v4 = [v3 view];
  [v4 setAlpha:0.0];

  v6 = [(BKBookOpenAnimator *)self containerView];
  v5 = [(BKBookOpenAnimator *)self coverContainerView];
  [v6 addSubview:v5];
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
  [(BKAudiobookSlideOpenAnimator *)self zoomedCoverFrame];
  v18 = v17;
  if (v5)
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

  v26 = [(BKBookOpenAnimator *)self bookshelfTintView];
  [v26 setAlpha:v20];

  [(BKBookOpenAnimator *)self setBookshelfAlpha:v19];
  v27 = [(BKBookOpenAnimator *)self coverShadowView];
  [v27 setAlpha:v19];

  [(BKBookSlideOpenAnimator *)self zoomDuration];
  v29 = v28;
  v30 = [(BKBookZoomRevealOpenAnimator *)self zoomTimingFunction];
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
  [UIView animateWithDuration:v30 delay:0 timingFunction:v33 options:v4 animations:v29 completion:0.0];
}

- (void)setupViewsForReveal
{
  [(BKBookOpenAnimator *)self closedCoverFrame];
  v4 = v3;
  v6 = v5;
  v9 = [[UIView alloc] initWithFrame:{v7, v8, v3, v5}];
  [(BKAudiobookSlideOpenAnimator *)self setContentClipView:v9];

  v10 = [(BKAudiobookSlideOpenAnimator *)self contentClipView];
  [v10 setClipsToBounds:1];

  v11 = [(BKBookOpenAnimator *)self containerView];
  v12 = [(BKAudiobookSlideOpenAnimator *)self contentClipView];
  [v11 addSubview:v12];

  v13 = [(BKBookOpenAnimator *)self bookViewController];
  v14 = [v13 view];
  [v14 layoutIfNeeded];

  v45 = [(BKAudiobookSlideOpenAnimator *)self audiobookViewController];
  v15 = [v45 transitionCoverViews];
  [v15 enumerateObjectsUsingBlock:&stru_100A06168];

  v16 = [(BKBookOpenAnimator *)self bookViewController];
  v17 = [v16 transitionContentView];

  v18 = [v17 snapshotViewAfterScreenUpdates:1];
  [(BKAudiobookSlideOpenAnimator *)self setContentView:v18];

  v19 = [v45 transitionCoverViews];
  [v19 enumerateObjectsUsingBlock:&stru_100A06188];

  v20 = [(BKAudiobookSlideOpenAnimator *)self contentView];
  [v20 frame];
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

  v29 = [(BKAudiobookSlideOpenAnimator *)self contentView];
  [v29 setFrame:{v22, v24, v26, v28}];

  v30 = [(BKAudiobookSlideOpenAnimator *)self contentClipView];
  v31 = [(BKAudiobookSlideOpenAnimator *)self contentView];
  [v30 addSubview:v31];

  if (![(BKBookOpenAnimator *)self skipZoomPhase])
  {
    [(BKAudiobookSlideOpenAnimator *)self zoomedCoverFrame];
  }

  CGRectMakeWithSize();
  [(BKBookOpenAnimator *)self moveCoverToFrame:?];
  v32 = [(BKBookOpenAnimator *)self coverContainerView];
  v33 = [v32 layer];
  [v33 setMasksToBounds:1];

  v34 = [(BKAudiobookSlideOpenAnimator *)self contentClipView];
  v35 = [(BKBookOpenAnimator *)self coverContainerView];
  [v34 addSubview:v35];

  v36 = [UIImageView alloc];
  v37 = [(BKAudiobookSlideOpenAnimator *)self audiobookViewController];
  v38 = [v37 transitionCurrentCoverImage];
  v39 = [v36 initWithImage:v38];

  [v39 setClipsToBounds:1];
  [v39 setContentMode:{-[BKAudiobookSlideOpenAnimator coverContentMode](self, "coverContentMode")}];
  v40 = [(BKBookOpenAnimator *)self coverContainerView];
  [v40 bounds];
  CGRectMakeWithSize();
  [v39 setFrame:?];

  [v39 setAutoresizingMask:18];
  [v39 setAlpha:0.0];
  v41 = [(BKBookOpenAnimator *)self coverImageView];
  v42 = [v41 superview];

  if (!v42)
  {
    sub_10078D0B0();
  }

  v43 = [(BKBookOpenAnimator *)self coverImageView];
  [v42 insertSubview:v39 aboveSubview:v43];

  [(BKAudiobookSlideOpenAnimator *)self setCurrentCoverView:v39];
  v44 = [(BKBookOpenAnimator *)self coverShadowView];
  [v44 setAlpha:0.0];
}

- (void)animateRevealWithCompletion:(id)a3
{
  v4 = a3;
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
    v9 = [(BKBookZoomRevealOpenAnimator *)self revealTimingFunction];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000AF124;
    v26[3] = &unk_100A061D0;
    v26[4] = self;
    v27 = &stru_100A061A8;
    v28 = v4;
    [UIView animateWithDuration:v9 delay:0 timingFunction:v6 options:v26 animations:v8 completion:0.0];

    v10 = [(BKAudiobookSlideOpenAnimator *)self audiobookViewController];
    [v10 coverCornerRadius];
    v12 = v11;

    +[CATransaction begin];
    [(BKAudiobookSlideOpenAnimator *)self revealDuration];
    [CATransaction setAnimationDuration:?];
    v13 = [(BKBookZoomRevealOpenAnimator *)self revealTimingFunction];
    [CATransaction setAnimationTimingFunction:v13];

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
    v21 = [(BKBookOpenAnimator *)self coverContainerView];
    v22 = [v21 layer];
    [v22 addAnimation:v14 forKey:@"cornerRadius"];

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
    v25 = v4;
    [UIView animateWithDuration:&stru_100A061A8 animations:v23 completion:v16];
  }
}

- (void)animationsDidFinish
{
  v3 = [(BKAudiobookSlideOpenAnimator *)self currentCoverView];
  [v3 removeFromSuperview];

  [(BKAudiobookSlideOpenAnimator *)self setCurrentCoverView:0];
  v4 = [(BKAudiobookSlideOpenAnimator *)self contentView];
  [v4 removeFromSuperview];

  [(BKAudiobookSlideOpenAnimator *)self setContentView:0];
  v5 = [(BKAudiobookSlideOpenAnimator *)self contentClipView];
  [v5 removeFromSuperview];

  [(BKAudiobookSlideOpenAnimator *)self setContentClipView:0];
  v6.receiver = self;
  v6.super_class = BKAudiobookSlideOpenAnimator;
  [(BKBookOpenAnimator *)&v6 animationsDidFinish];
}

- (CGRect)zoomedCoverFrame
{
  v3 = [(BKBookOpenAnimator *)self containerView];
  [v3 bounds];

  v4 = [(BKAudiobookSlideOpenAnimator *)self audiobookViewController];
  [v4 transitionCoverFrame];

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
  v3 = [(BKAudiobookSlideOpenAnimator *)self audiobookViewController];
  if (v3)
  {
    v4 = [(BKAudiobookSlideOpenAnimator *)self audiobookViewController];
    v5 = [v4 coverContentMode];
  }

  else
  {
    v5 = 2;
  }

  return v5;
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