@interface BCCardSetCustomNavigationTransition
- (BCCardSetNavigationSource)cardSetViewController;
- (CGAffineTransform)startingTransform;
- (CGAffineTransform)targetTransform;
- (CGPoint)snapshotAnchorPoint;
- (CGRect)endingRect;
- (CGRect)offScreen;
- (CGRect)onScreen;
- (CGRect)snapshotFrame;
- (CGRect)startingRect;
- (double)transitionDuration:(id)duration;
- (id)interruptibleAnimatorForTransition:(id)transition;
- (void)animateTransition:(id)transition;
- (void)animationCompleteWithFinished:(BOOL)finished;
- (void)createAnimator;
- (void)initalizeAnimation;
- (void)setStartingTransform:(CGAffineTransform *)transform;
- (void)setTargetTransform:(CGAffineTransform *)transform;
- (void)setup;
- (void)updateAnimator;
@end

@implementation BCCardSetCustomNavigationTransition

- (void)animateTransition:(id)transition
{
  v3 = [(BCCardSetCustomNavigationTransition *)self interruptibleAnimatorForTransition:transition];
  [v3 startAnimation];
}

- (void)initalizeAnimation
{
  transitioningContext = [(BCCardSetCustomNavigationTransition *)self transitioningContext];
  v4 = [transitioningContext viewForKey:UITransitionContextFromViewKey];
  [(BCCardSetCustomNavigationTransition *)self setFromView:v4];

  v5 = [transitioningContext viewForKey:UITransitionContextToViewKey];
  [(BCCardSetCustomNavigationTransition *)self setToView:v5];

  v6 = [transitioningContext viewControllerForKey:UITransitionContextToViewControllerKey];
  [(BCCardSetCustomNavigationTransition *)self setToViewController:v6];

  v7 = [transitioningContext viewControllerForKey:UITransitionContextFromViewControllerKey];
  [transitioningContext initialFrameForViewController:v7];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(BCCardSetCustomNavigationTransition *)self setOnScreen:?];
  v144 = v7;
  traitCollection = [v7 traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  v164.origin.x = v9;
  v164.origin.y = v11;
  v164.size.width = v13;
  v164.size.height = v15;
  MinX = CGRectGetMinX(v164);
  v165.origin.x = v9;
  v165.origin.y = v11;
  v165.size.width = v13;
  v165.size.height = v15;
  Width = CGRectGetWidth(v165);
  v20 = MinX - Width + -1.0;
  v21 = MinX + Width + 1.0;
  v142 = layoutDirection;
  if (layoutDirection == &dword_0 + 1)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  v166.origin.x = v9;
  v166.origin.y = v11;
  v166.size.width = v13;
  v166.size.height = v15;
  MinY = CGRectGetMinY(v166);
  v167.origin.x = v9;
  v167.origin.y = v11;
  v167.size.width = v13;
  v167.size.height = v15;
  v24 = CGRectGetWidth(v167);
  v168.origin.x = v9;
  v168.origin.y = v11;
  v168.size.width = v13;
  v168.size.height = v15;
  [(BCCardSetCustomNavigationTransition *)self setOffScreen:v22, MinY, v24, CGRectGetHeight(v168)];
  [(BCCardSetCustomNavigationTransition *)self setSnapshotFrame:v9, v11, v13, v15];
  v25 = [[UIView alloc] initWithFrame:{v9, v11, v13, v15}];
  [(BCCardSetCustomNavigationTransition *)self setSnapshotContainerView:v25];

  [(BCCardSetCustomNavigationTransition *)self setup];
  containerView = [transitioningContext containerView];
  toView = [(BCCardSetCustomNavigationTransition *)self toView];
  [containerView addSubview:toView];

  viewToSnapshot = [(BCCardSetCustomNavigationTransition *)self viewToSnapshot];
  [viewToSnapshot frame];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  [(BCCardSetCustomNavigationTransition *)self snapshotFrame];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  viewToSnapshot2 = [(BCCardSetCustomNavigationTransition *)self viewToSnapshot];
  [viewToSnapshot2 setFrame:{v38, v40, v42, v44}];

  objc_opt_class();
  viewToSnapshot3 = [(BCCardSetCustomNavigationTransition *)self viewToSnapshot];
  v47 = BUDynamicCast();

  [v47 contentOffset];
  v49 = v48;
  v51 = v50;
  y = CGPointZero.y;
  [v47 setContentOffset:{CGPointZero.x, y}];
  viewToSnapshot4 = [(BCCardSetCustomNavigationTransition *)self viewToSnapshot];
  v54 = [viewToSnapshot4 snapshotViewAfterScreenUpdates:{-[BCCardSetCustomNavigationTransition afterScreenUpdates](self, "afterScreenUpdates")}];

  viewToSnapshot5 = [(BCCardSetCustomNavigationTransition *)self viewToSnapshot];
  layer = [viewToSnapshot5 layer];
  flipsHorizontalAxis = [layer flipsHorizontalAxis];
  layer2 = [v54 layer];
  [layer2 setFlipsHorizontalAxis:flipsHorizontalAxis];

  v143 = v47;
  [v47 setContentOffset:{v49, v51}];
  viewToSnapshot6 = [(BCCardSetCustomNavigationTransition *)self viewToSnapshot];
  [viewToSnapshot6 setFrame:{v30, v32, v34, v36}];

  cardSetViewController = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  currentCardViewController = [cardSetViewController currentCardViewController];

  auxiliaryNavigationBarView = [currentCardViewController auxiliaryNavigationBarView];
  [auxiliaryNavigationBarView setHidden:1];

  v63 = +[UIColor bc_booksBackground];
  [v54 setBackgroundColor:v63];

  auxiliaryNavigationBarViewForAnimation = [currentCardViewController auxiliaryNavigationBarViewForAnimation];
  if (auxiliaryNavigationBarViewForAnimation)
  {
    [v54 addSubview:auxiliaryNavigationBarViewForAnimation];
    [currentCardViewController anchorAuxiliaryNavigationBarView:auxiliaryNavigationBarViewForAnimation toView:v54];
    [(BCCardSetCustomNavigationTransition *)self gripperStartingAlpha];
    [auxiliaryNavigationBarViewForAnimation setAlpha:?];
  }

  viewToHide = [(BCCardSetCustomNavigationTransition *)self viewToHide];
  [viewToHide setAlpha:0.0];

  viewToSlide = [(BCCardSetCustomNavigationTransition *)self viewToSlide];
  v67 = [UIView alloc];
  [(BCCardSetCustomNavigationTransition *)self startingRect];
  v68 = [v67 initWithFrame:?];
  [v68 bounds];
  [viewToSlide setFrame:?];
  v140 = v68;
  v141 = viewToSlide;
  [v68 addSubview:viewToSlide];
  v69 = *&CGAffineTransformIdentity.c;
  v161 = *&CGAffineTransformIdentity.a;
  v162 = v69;
  v163 = *&CGAffineTransformIdentity.tx;
  [v54 setTransform:&v161];
  [(BCCardSetCustomNavigationTransition *)self snapshotAnchorPoint];
  if (v71 != CGPointZero.x || v70 != y)
  {
    [(BCCardSetCustomNavigationTransition *)self snapshotAnchorPoint];
    v73 = v72;
    v75 = v74;
    layer3 = [v54 layer];
    [layer3 setAnchorPoint:{v73, v75}];
  }

  [(BCCardSetCustomNavigationTransition *)self snapshotFrame];
  [v54 setFrame:?];
  [currentCardViewController setRoundedCorners:1];
  cardView = [currentCardViewController cardView];
  [v54 bc_applyCornerRadiusFromView:cardView];

  [v54 setClipsToBounds:1];
  [(BCCardSetCustomNavigationTransition *)self startingTransform];
  snapshotContainerView = [(BCCardSetCustomNavigationTransition *)self snapshotContainerView];
  v161 = v158;
  v162 = v159;
  v163 = v160;
  [snapshotContainerView setTransform:&v161];

  snapshotContainerView2 = [(BCCardSetCustomNavigationTransition *)self snapshotContainerView];
  [snapshotContainerView2 addSubview:v54];

  cardSetViewController2 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  focusedIndex = [cardSetViewController2 focusedIndex];

  cardSetViewController3 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  cardCount = [cardSetViewController3 cardCount];

  if (focusedIndex)
  {
    cardSetViewController4 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    v85 = [cardSetViewController4 cardViewControllerAtIndex:focusedIndex - 1];
    cardView2 = [v85 cardView];
  }

  else
  {
    cardView2 = 0;
  }

  if (focusedIndex >= cardCount)
  {
    cardView3 = 0;
  }

  else
  {
    cardSetViewController5 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    v88 = [cardSetViewController5 cardViewControllerAtIndex:focusedIndex + 1];
    cardView3 = [v88 cardView];
  }

  if (v142 == &dword_0 + 1)
  {
    v90 = cardView2;
  }

  else
  {
    v90 = cardView3;
  }

  if (v142 == &dword_0 + 1)
  {
    v91 = cardView3;
  }

  else
  {
    v91 = cardView2;
  }

  if (v91)
  {
    v92 = [v91 snapshotViewAfterScreenUpdates:{-[BCCardSetCustomNavigationTransition afterScreenUpdates](self, "afterScreenUpdates")}];
    [(BCCardSetCustomNavigationTransition *)self snapshotFrame];
    v94 = v93;
    v96 = v95;
    v98 = v97;
    v100 = v99;
    [(BCCardSetCustomNavigationTransition *)self snapshotFrame];
    v102 = v101;
    cardSetViewController6 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    [cardSetViewController6 _cardSeparation];
    v105 = v94 - (v102 + v104);

    [v92 setFrame:{v105, v96, v98, v100}];
    snapshotContainerView3 = [(BCCardSetCustomNavigationTransition *)self snapshotContainerView];
    [snapshotContainerView3 addSubview:v92];
  }

  if (v90)
  {
    v107 = [v90 snapshotViewAfterScreenUpdates:{-[BCCardSetCustomNavigationTransition afterScreenUpdates](self, "afterScreenUpdates")}];
    [(BCCardSetCustomNavigationTransition *)self snapshotFrame];
    v109 = v108;
    v111 = v110;
    v113 = v112;
    v115 = v114;
    [(BCCardSetCustomNavigationTransition *)self snapshotFrame];
    v117 = v116;
    cardSetViewController7 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    [cardSetViewController7 _cardSeparation];
    v120 = v109 + v117 + v119;

    [v107 setFrame:{v120, v111, v113, v115}];
    snapshotContainerView4 = [(BCCardSetCustomNavigationTransition *)self snapshotContainerView];
    [snapshotContainerView4 addSubview:v107];
  }

  cardSetViewController8 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  navigationSkrimView = [cardSetViewController8 navigationSkrimView];
  [navigationSkrimView removeFromSuperview];

  containerView2 = [transitioningContext containerView];
  snapshotContainerView5 = [(BCCardSetCustomNavigationTransition *)self snapshotContainerView];
  [containerView2 addSubview:snapshotContainerView5];

  cardSetViewController9 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  navigationSkrimView2 = [cardSetViewController9 navigationSkrimView];
  [containerView2 addSubview:navigationSkrimView2];

  [containerView2 addSubview:v140];
  cardSetViewController10 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  delegate = [cardSetViewController10 delegate];
  [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v130 = v139 = v90;
  [delegate cardSetViewController:v130 prepareForNavigationTransitionWithContext:transitioningContext];

  [(BCCardSetCustomNavigationTransition *)self updateAnimator];
  v163 = 0u;
  v162 = 0u;
  v161 = 0u;
  [(BCCardSetCustomNavigationTransition *)self targetTransform];
  animator = [(BCCardSetCustomNavigationTransition *)self animator];
  v151[0] = _NSConcreteStackBlock;
  v151[1] = 3221225472;
  v151[2] = sub_99ECC;
  v151[3] = &unk_2CBF98;
  v132 = v140;
  v152 = v132;
  selfCopy = self;
  v155 = v161;
  v156 = v162;
  v157 = v163;
  v154 = auxiliaryNavigationBarViewForAnimation;
  v133 = auxiliaryNavigationBarViewForAnimation;
  [animator addAnimations:v151];
  v145[0] = _NSConcreteStackBlock;
  v145[1] = 3221225472;
  v145[2] = sub_99F44;
  v145[3] = &unk_2CBFC0;
  v145[4] = self;
  v146 = containerView2;
  v147 = v141;
  v148 = v132;
  v149 = transitioningContext;
  v150 = currentCardViewController;
  v134 = currentCardViewController;
  v135 = transitioningContext;
  v136 = v132;
  v137 = v141;
  v138 = containerView2;
  [animator addCompletion:v145];
  [(BCCardSetCustomNavigationTransition *)self setAnimatorInitialized:1];
}

- (id)interruptibleAnimatorForTransition:(id)transition
{
  transitionCopy = transition;
  animator = [(BCCardSetCustomNavigationTransition *)self animator];

  if (!animator)
  {
    [(BCCardSetCustomNavigationTransition *)self setTransitioningContext:transitionCopy];
    [(BCCardSetCustomNavigationTransition *)self createAnimator];
  }

  if (![(BCCardSetCustomNavigationTransition *)self animatorInitialized])
  {
    [(BCCardSetCustomNavigationTransition *)self initalizeAnimation];
  }

  animator2 = [(BCCardSetCustomNavigationTransition *)self animator];

  return animator2;
}

- (void)createAnimator
{
  cardSetViewController = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  percentDrivenInteractiveTransition = [cardSetViewController percentDrivenInteractiveTransition];
  if (percentDrivenInteractiveTransition)
  {
    v5 = [[UICubicTimingParameters alloc] initWithAnimationCurve:3];
  }

  else
  {
    v5 = [[UISpringTimingParameters alloc] initWithMass:1.0 stiffness:250.0 damping:35.0 initialVelocity:{0.0, 0.0}];
  }

  v7 = v5;

  v6 = [[UIViewPropertyAnimator alloc] initWithDuration:v7 timingParameters:0.35];
  [(BCCardSetCustomNavigationTransition *)self setAnimator:v6];
}

- (double)transitionDuration:(id)duration
{
  durationCopy = duration;
  animator = [(BCCardSetCustomNavigationTransition *)self animator];

  if (!animator)
  {
    [(BCCardSetCustomNavigationTransition *)self setTransitioningContext:durationCopy];
    [(BCCardSetCustomNavigationTransition *)self createAnimator];
  }

  animator2 = [(BCCardSetCustomNavigationTransition *)self animator];
  [animator2 duration];
  v8 = v7;

  return v8;
}

- (void)updateAnimator
{
  v2 = [NSString stringWithFormat:@"must override %s", "[BCCardSetCustomNavigationTransition updateAnimator]"];
  v3 = [NSException exceptionWithName:@"abstract base class" reason:v2 userInfo:0];
  v4 = v3;

  objc_exception_throw(v3);
}

- (void)animationCompleteWithFinished:(BOOL)finished
{
  v3 = [NSString stringWithFormat:@"must override %s", "[BCCardSetCustomNavigationTransition animationCompleteWithFinished:]"];
  v4 = [NSException exceptionWithName:@"abstract base class" reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (void)setup
{
  v2 = [NSString stringWithFormat:@"must override %s", "[BCCardSetCustomNavigationTransition setup]"];
  v3 = [NSException exceptionWithName:@"abstract base class" reason:v2 userInfo:0];
  v4 = v3;

  objc_exception_throw(v3);
}

- (BCCardSetNavigationSource)cardSetViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_cardSetViewController);

  return WeakRetained;
}

- (CGRect)onScreen
{
  x = self->_onScreen.origin.x;
  y = self->_onScreen.origin.y;
  width = self->_onScreen.size.width;
  height = self->_onScreen.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)offScreen
{
  x = self->_offScreen.origin.x;
  y = self->_offScreen.origin.y;
  width = self->_offScreen.size.width;
  height = self->_offScreen.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)snapshotFrame
{
  x = self->_snapshotFrame.origin.x;
  y = self->_snapshotFrame.origin.y;
  width = self->_snapshotFrame.size.width;
  height = self->_snapshotFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)snapshotAnchorPoint
{
  x = self->_snapshotAnchorPoint.x;
  y = self->_snapshotAnchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)startingRect
{
  x = self->_startingRect.origin.x;
  y = self->_startingRect.origin.y;
  width = self->_startingRect.size.width;
  height = self->_startingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)endingRect
{
  x = self->_endingRect.origin.x;
  y = self->_endingRect.origin.y;
  width = self->_endingRect.size.width;
  height = self->_endingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGAffineTransform)startingTransform
{
  v3 = *&self[6].c;
  *&retstr->a = *&self[6].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[6].tx;
  return self;
}

- (void)setStartingTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_startingTransform.c = *&transform->c;
  *&self->_startingTransform.tx = v4;
  *&self->_startingTransform.a = v3;
}

- (CGAffineTransform)targetTransform
{
  v3 = *&self[7].c;
  *&retstr->a = *&self[7].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[7].tx;
  return self;
}

- (void)setTargetTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_targetTransform.c = *&transform->c;
  *&self->_targetTransform.tx = v4;
  *&self->_targetTransform.a = v3;
}

@end