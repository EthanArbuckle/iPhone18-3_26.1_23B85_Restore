@interface BCCardStackInteractiveDismissAnimator
- (BCCardStackInteractiveDismissAnimator)init;
- (double)_minBackgroundViewAlpha;
- (double)pauseDismissCancellationAndReset;
- (id)_bounceBackSpringWithVelocity:(double)velocity;
- (void)animateDismissCancellationWithVelocity:(double)velocity completion:(id)completion;
- (void)setupAnimatorsForCancellation:(BOOL)cancellation velocity:(double)velocity;
- (void)setupForInteractiveDismiss;
- (void)updateDismissFractionCompleteWithCardOffset:(double)offset;
@end

@implementation BCCardStackInteractiveDismissAnimator

- (BCCardStackInteractiveDismissAnimator)init
{
  v7.receiver = self;
  v7.super_class = BCCardStackInteractiveDismissAnimator;
  v2 = [(BCCardStackInteractiveDismissAnimator *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_distanceToCoverSource = NAN;
    v2->_dismissState = 0;
    v2->_finalAnimationType = 2;
    v4 = objc_opt_new();
    txForCardIndex = v3->_txForCardIndex;
    v3->_txForCardIndex = v4;
  }

  return v3;
}

- (id)_bounceBackSpringWithVelocity:(double)velocity
{
  v3 = [[UISpringTimingParameters alloc] initWithMass:1.0 stiffness:200.0 damping:28.0 initialVelocity:{velocity, 0.0}];

  return v3;
}

- (double)_minBackgroundViewAlpha
{
  v6 = 0.0;
  backgroundView = [(BCCardStackInteractiveDismissAnimator *)self backgroundView];
  backgroundColor = [backgroundView backgroundColor];
  v4 = [backgroundColor getWhite:0 alpha:&v6];

  if (!v4)
  {
    return 0.15;
  }

  result = 0.15 / v6;
  if (fabs(v6) < 2.22044605e-16)
  {
    return 0.15;
  }

  return result;
}

- (void)setupAnimatorsForCancellation:(BOOL)cancellation velocity:(double)velocity
{
  txForCardIndex = [(BCCardStackInteractiveDismissAnimator *)self txForCardIndex];
  v8 = [UIViewPropertyAnimator alloc];
  v9 = [(BCCardStackInteractiveDismissAnimator *)self _bounceBackSpringWithVelocity:velocity];
  v10 = [v8 initWithDuration:v9 timingParameters:0.0];

  if (!cancellation)
  {
    displayedCardViewControllers = [(BCCardStackInteractiveDismissAnimator *)self displayedCardViewControllers];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_39048;
    v32[3] = &unk_2C92E0;
    v33 = txForCardIndex;
    [displayedCardViewControllers enumerateKeysAndObjectsUsingBlock:v32];

    titleLabel = [(BCCardStackInteractiveDismissAnimator *)self titleLabel];
    v13 = *&CGAffineTransformIdentity.c;
    v31[0] = *&CGAffineTransformIdentity.a;
    v31[1] = v13;
    v31[2] = *&CGAffineTransformIdentity.tx;
    [titleLabel setTransform:v31];

    backgroundView = [(BCCardStackInteractiveDismissAnimator *)self backgroundView];
    [backgroundView setAlpha:1.0];

    titleLabel2 = [(BCCardStackInteractiveDismissAnimator *)self titleLabel];
    [titleLabel2 setAlpha:1.0];

    leftArrowButton = [(BCCardStackInteractiveDismissAnimator *)self leftArrowButton];
    [leftArrowButton setAlpha:1.0];

    rightArrowButton = [(BCCardStackInteractiveDismissAnimator *)self rightArrowButton];
    [rightArrowButton setAlpha:1.0];
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_39144;
  v28[3] = &unk_2C81D8;
  cancellationCopy = cancellation;
  v28[4] = self;
  v18 = txForCardIndex;
  v29 = v18;
  [v10 addAnimations:v28];
  if (-[BCCardStackInteractiveDismissAnimator shouldRetainBackgroundAndTitleState](self, "shouldRetainBackgroundAndTitleState") || ([v10 duration], v20 = v19, v26[0] = _NSConcreteStackBlock, v26[1] = 3221225472, v26[2] = sub_392DC, v26[3] = &unk_2C9330, v26[4] = self, v27 = cancellation, objc_msgSend(v10, "addAnimations:", v26), v24[0] = _NSConcreteStackBlock, v24[1] = 3221225472, v24[2] = sub_395CC, v24[3] = &unk_2C9358, v25 = cancellation, v24[4] = self, *&v24[5] = v20, (v21 = objc_msgSend([UIViewPropertyAnimator alloc], "initWithDuration:curve:animations:", 3, v24, v20)) == 0))
  {
    v34 = v10;
    v22 = [NSArray arrayWithObjects:&v34 count:1];
    [(BCViewPropertyAnimatorGroup *)self setAnimators:v22];
  }

  else
  {
    v22 = v21;
    v35[0] = v10;
    v35[1] = v21;
    v23 = [NSArray arrayWithObjects:v35 count:2];
    [(BCViewPropertyAnimatorGroup *)self setAnimators:v23];
  }
}

- (void)setupForInteractiveDismiss
{
  [(BCCardStackInteractiveDismissAnimator *)self setDismissState:1];
  [(BCCardStackInteractiveDismissAnimator *)self setupAnimatorsForCancellation:0 velocity:0.0];

  [(BCViewPropertyAnimatorGroup *)self pauseAnimation];
}

- (void)updateDismissFractionCompleteWithCardOffset:(double)offset
{
  [(BCCardStackInteractiveDismissAnimator *)self maxSlideDistance];
  v6 = offset / v5;

  [(BCViewPropertyAnimatorGroup *)self setFractionComplete:v6];
}

- (void)animateDismissCancellationWithVelocity:(double)velocity completion:(id)completion
{
  completionCopy = completion;
  [(BCCardStackInteractiveDismissAnimator *)self setDismissState:2];
  [(BCViewPropertyAnimatorGroup *)self stopAnimation:1];
  [(BCCardStackInteractiveDismissAnimator *)self setupAnimatorsForCancellation:1 velocity:velocity];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_39AD4;
  v8[3] = &unk_2C9380;
  v9 = completionCopy;
  v7 = completionCopy;
  [(BCViewPropertyAnimatorGroup *)self addCompletion:v8];
  [(BCViewPropertyAnimatorGroup *)self startAnimation];
}

- (double)pauseDismissCancellationAndReset
{
  [(BCCardStackInteractiveDismissAnimator *)self setDismissState:1];
  [(BCViewPropertyAnimatorGroup *)self stopAnimation:1];
  displayedCardViewControllers = [(BCCardStackInteractiveDismissAnimator *)self displayedCardViewControllers];
  v4 = [NSNumber numberWithInteger:[(BCCardStackInteractiveDismissAnimator *)self focusedIndex]];
  v5 = [displayedCardViewControllers objectForKeyedSubscript:v4];
  view = [v5 view];
  v7 = view;
  if (view)
  {
    [view transform];
    v8 = v12;
  }

  else
  {
    v8 = 0.0;
  }

  [(BCCardStackInteractiveDismissAnimator *)self maxSlideDistance];
  v10 = v8 / v9;
  [(BCCardStackInteractiveDismissAnimator *)self setupAnimatorsForCancellation:0 velocity:0.0];
  [(BCViewPropertyAnimatorGroup *)self pauseAnimation];
  [(BCViewPropertyAnimatorGroup *)self setFractionComplete:v10];
  return v8;
}

@end