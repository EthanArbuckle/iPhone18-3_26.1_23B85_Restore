@interface BKBookZoomRevealOpenAnimator
- (BOOL)isContentRevealed;
- (CAMediaTimingFunction)revealTimingFunction;
- (CAMediaTimingFunction)zoomTimingFunction;
- (double)_spinnerScale;
- (double)revealDuration;
- (double)zoomDuration;
- (id)viewControllerForStatusBarStyle;
- (void)_animateFirstHalf;
- (void)_animateSecondHalf;
- (void)_revealWithCompletion:(id)completion;
- (void)_showSpinner:(BOOL)spinner delay:(double)delay completion:(id)completion;
- (void)_zoomWithCompletion:(id)completion;
- (void)animateNonInteractive;
- (void)animateRevealWithCompletion:(id)completion;
- (void)animateZoomWithCompletion:(id)completion;
- (void)bookContentDidLoad;
- (void)setupSpinner;
- (void)setupViewsForReveal;
- (void)setupViewsForZoom;
- (void)teardownViews:(BOOL)views;
@end

@implementation BKBookZoomRevealOpenAnimator

- (double)zoomDuration
{
  v2 = NSStringFromSelector(a2);
  v3 = objc_opt_class();
  v5 = NSStringFromClass(v3);
  BCReportAssertionFailureWithMessage();

  return 0.0;
}

- (double)revealDuration
{
  v2 = NSStringFromSelector(a2);
  v3 = objc_opt_class();
  v5 = NSStringFromClass(v3);
  BCReportAssertionFailureWithMessage();

  return 0.0;
}

- (void)setupViewsForZoom
{
  v4 = NSStringFromSelector(a2);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  BCReportAssertionFailureWithMessage();
}

- (void)animateZoomWithCompletion:(id)completion
{
  v5 = NSStringFromSelector(a2);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  BCReportAssertionFailureWithMessage();
}

- (void)setupViewsForReveal
{
  v4 = NSStringFromSelector(a2);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  BCReportAssertionFailureWithMessage();
}

- (void)animateRevealWithCompletion:(id)completion
{
  v5 = NSStringFromSelector(a2);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  BCReportAssertionFailureWithMessage();
}

- (CAMediaTimingFunction)zoomTimingFunction
{
  LODWORD(v2) = 1051371084;
  LODWORD(v3) = 1045220557;
  LODWORD(v4) = 1.0;
  return [CAMediaTimingFunction functionWithControlPoints:v2];
}

- (CAMediaTimingFunction)revealTimingFunction
{
  LODWORD(v2) = 1057674284;
  LODWORD(v3) = 1051928088;
  LODWORD(v4) = 1.0;
  return [CAMediaTimingFunction functionWithControlPoints:v2];
}

- (void)teardownViews:(BOOL)views
{
  viewsCopy = views;
  spinnerView = [(BKBookZoomRevealOpenAnimator *)self spinnerView];
  [spinnerView removeFromSuperview];

  [(BKBookZoomRevealOpenAnimator *)self setSpinnerView:0];
  v6.receiver = self;
  v6.super_class = BKBookZoomRevealOpenAnimator;
  [(BKBookOpenAnimator *)&v6 teardownViews:viewsCopy];
}

- (void)bookContentDidLoad
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000E52EC;
  v3[3] = &unk_100A033C8;
  v3[4] = self;
  v2 = objc_retainBlock(v3);
  (v2[2])();
}

- (double)_spinnerScale
{
  [(BKBookOpenAnimator *)self coverAspectRatio];
  v4 = v3;
  coverContainerView = [(BKBookOpenAnimator *)self coverContainerView];
  [coverContainerView bounds];
  if (v4 > 0.9)
  {
    v10 = CGRectGetHeight(*&v6) / 768.0;
  }

  else
  {
    v10 = CGRectGetWidth(*&v6) * 0.0009765625;
  }

  return v10;
}

- (void)setupSpinner
{
  [(BKBookZoomRevealOpenAnimator *)self _spinnerScale];
  v4 = round(v3 * 112.0);
  v10 = [[UIView alloc] initWithFrame:{0.0, 0.0, v4, v4}];
  coverContainerView = [(BKBookOpenAnimator *)self coverContainerView];
  [coverContainerView bounds];
  CGRectGetCenterNoRounding();
  [v10 setCenter:?];

  [v10 frame];
  v13 = CGRectIntegral(v12);
  [v10 setFrame:{v13.origin.x, v13.origin.y, v13.size.width, v13.size.height}];
  layer = [v10 layer];
  [layer setCornerRadius:8.0];

  v7 = [UIColor colorWithWhite:0.0 alpha:0.8];
  [v10 setBackgroundColor:v7];

  [(BKBookZoomRevealOpenAnimator *)self setSpinnerView:v10];
  v8 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  [v10 bounds];
  CGRectGetCenterNoRounding();
  [v8 setCenter:?];
  [v8 frame];
  v15 = CGRectIntegral(v14);
  [v8 setFrame:{v15.origin.x, v15.origin.y, v15.size.width, v15.size.height}];
  [v8 startAnimating];
  [v10 addSubview:v8];
  [v10 setAlpha:0.0];
  coverContainerView2 = [(BKBookOpenAnimator *)self coverContainerView];
  [coverContainerView2 addSubview:v10];
}

- (void)_showSpinner:(BOOL)spinner delay:(double)delay completion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E593C;
  v5[3] = &unk_100A044C8;
  v5[4] = self;
  spinnerCopy = spinner;
  [UIView animateWithDuration:0 delay:v5 options:completion animations:0.3 completion:delay];
}

- (void)_animateFirstHalf
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000E5B78;
  v13[3] = &unk_100A033C8;
  v13[4] = self;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000E5E00;
  v10[3] = &unk_100A03788;
  selfCopy = self;
  v12 = objc_retainBlock(v13);
  v3 = v12;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E60A8;
  v8[3] = &unk_100A04160;
  v8[4] = selfCopy;
  v9 = objc_retainBlock(v10);
  v4 = v9;
  v5 = objc_retainBlock(v8);
  [(BKBookZoomRevealOpenAnimator *)self setSecondHalfStarted:0];
  fromViewController = [(BKBookOpenAnimator *)self fromViewController];
  [fromViewController setNeedsStatusBarAppearanceUpdate];

  if ([(BKBookOpenAnimator *)self opening])
  {
    if ([(BKBookOpenAnimator *)self skipZoomPhase])
    {
      (v5[2])(v5, 1);
    }

    else if ([(BKBookZoomRevealOpenAnimator *)self zoomRequiresContentLoaded]&& ![(BKBookZoomRevealOpenAnimator *)self contentLoaded])
    {
      [(BKBookZoomRevealOpenAnimator *)self setWaitingForContentLoaded:1];
    }

    else
    {
      [(BKBookZoomRevealOpenAnimator *)self _zoomWithCompletion:v5];
    }
  }

  else
  {
    [(BKBookZoomRevealOpenAnimator *)self _revealWithCompletion:v5];
  }

  v7 = +[AETestDriver shared];
  [v7 postEvent:kBETestDriverOpenAnimationSetupEnd sender:self];
}

- (void)_animateSecondHalf
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E6524;
  v5[3] = &unk_100A038D0;
  v5[4] = self;
  v3 = objc_retainBlock(v5);
  [(BKBookZoomRevealOpenAnimator *)self setSecondHalfStarted:1];
  toViewController = [(BKBookOpenAnimator *)self toViewController];
  [toViewController setNeedsStatusBarAppearanceUpdate];

  if ([(BKBookOpenAnimator *)self opening])
  {
    [(BKBookZoomRevealOpenAnimator *)self _revealWithCompletion:v3];
  }

  else
  {
    [(BKBookZoomRevealOpenAnimator *)self _zoomWithCompletion:v3];
  }
}

- (void)_zoomWithCompletion:(id)completion
{
  completionCopy = completion;
  [(BKBookZoomRevealOpenAnimator *)self setupViewsForZoom];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1000E66B4;
  v10 = &unk_100A04160;
  selfCopy = self;
  v12 = completionCopy;
  v5 = completionCopy;
  [(BKBookZoomRevealOpenAnimator *)self animateZoomWithCompletion:&v7];
  kdebug_trace();
  v6 = [AETestDriver shared:v7];
  [v6 postEvent:kBETestDriverOpenAnimationZoomStart sender:self];
}

- (void)_revealWithCompletion:(id)completion
{
  completionCopy = completion;
  [(BKBookZoomRevealOpenAnimator *)self setupViewsForReveal];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1000E684C;
  v10 = &unk_100A04160;
  selfCopy = self;
  v12 = completionCopy;
  v5 = completionCopy;
  [(BKBookZoomRevealOpenAnimator *)self animateRevealWithCompletion:&v7];
  kdebug_trace();
  v6 = [AETestDriver shared:v7];
  [v6 postEvent:kBETestDriverOpenAnimationRevealStart sender:self];
}

- (void)animateNonInteractive
{
  [(BKBookOpenAnimator *)self animateNavigationBarPrepare];

  [(BKBookZoomRevealOpenAnimator *)self _animateFirstHalf];
}

- (BOOL)isContentRevealed
{
  if ([(BKBookOpenAnimator *)self opening]&& [(BKBookZoomRevealOpenAnimator *)self secondHalfStarted])
  {
    return 1;
  }

  if ([(BKBookOpenAnimator *)self opening])
  {
    return 0;
  }

  return ![(BKBookZoomRevealOpenAnimator *)self secondHalfStarted];
}

- (id)viewControllerForStatusBarStyle
{
  if ([(BKBookOpenAnimator *)self opening]&& ![(BKBookZoomRevealOpenAnimator *)self secondHalfStarted])
  {
    fromViewController = [(BKBookOpenAnimator *)self fromViewController];
  }

  else
  {
    fromViewController = [(BKBookOpenAnimator *)self toViewController];
  }

  return fromViewController;
}

@end