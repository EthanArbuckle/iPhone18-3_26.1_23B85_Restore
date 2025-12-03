@interface BCCardSetCustomPopNavigationTransition
- (void)animationEnded:(BOOL)ended;
- (void)setup;
- (void)updateAnimator;
@end

@implementation BCCardSetCustomPopNavigationTransition

- (void)setup
{
  fromView = [(BCCardSetCustomNavigationTransition *)self fromView];
  [(BCCardSetCustomNavigationTransition *)self setViewToSlide:fromView];

  [(BCCardSetCustomNavigationTransition *)self onScreen];
  [(BCCardSetCustomNavigationTransition *)self setStartingRect:?];
  [(BCCardSetCustomNavigationTransition *)self offScreen];
  [(BCCardSetCustomNavigationTransition *)self setEndingRect:?];
  toViewController = [(BCCardSetCustomNavigationTransition *)self toViewController];
  v5 = [toViewController contentScrollViewForEdge:1];

  if (v5)
  {
    [(BCCardSetCustomNavigationTransition *)self setViewToSnapshot:v5];
  }

  else
  {
    toView = [(BCCardSetCustomNavigationTransition *)self toView];
    [(BCCardSetCustomNavigationTransition *)self setViewToSnapshot:toView];
  }

  toView2 = [(BCCardSetCustomNavigationTransition *)self toView];
  [(BCCardSetCustomNavigationTransition *)self setViewToHide:toView2];

  [(BCCardSetCustomNavigationTransition *)self setGripperStartingAlpha:0.0];
  [(BCCardSetCustomNavigationTransition *)self setGripperEndingAlpha:1.0];
  [(BCCardSetCustomNavigationTransition *)self snapshotFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  CGRectMakeWithSize();
  CGRectGetCenter();
  v17 = v16;
  v19 = v18;
  cardSetViewController = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  configuration = [cardSetViewController configuration];
  [configuration cardExpandedTopOffset];
  v23 = v15 - v22;

  cardSetViewController2 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  configuration2 = [cardSetViewController2 configuration];
  [configuration2 cardCornerRadius];
  v27 = v23 + v26;

  [(BCCardSetCustomNavigationTransition *)self setSnapshotFrame:v9, v11, v13, v27];
  v44.origin.x = v9;
  v44.origin.y = v11;
  v44.size.width = v13;
  v44.size.height = v27;
  v28 = v17 / CGRectGetWidth(v44);
  v45.origin.x = v9;
  v45.origin.y = v11;
  v45.size.width = v13;
  v45.size.height = v27;
  [(BCCardSetCustomNavigationTransition *)self setSnapshotAnchorPoint:v28, v19 / CGRectGetHeight(v45)];
  memset(&v43, 0, sizeof(v43));
  cardSetViewController3 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  currentCardViewController = [cardSetViewController3 currentCardViewController];
  configuration3 = [currentCardViewController configuration];
  [configuration3 cardExpandedTopOffset];
  CGAffineTransformMakeTranslation(&v43, 0.0, v32);

  cardSetViewController4 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v34 = cardSetViewController4;
  if (cardSetViewController4)
  {
    [cardSetViewController4 expandedTransform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  t2 = v43;
  CGAffineTransformConcat(&v42, &t1, &t2);
  t1 = v42;
  [(BCCardSetCustomNavigationTransition *)self setStartingTransform:&t1];

  cardSetViewController5 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v36 = cardSetViewController5;
  if (cardSetViewController5)
  {
    [cardSetViewController5 contractedTransform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  cardSetViewController6 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  [cardSetViewController6 scaledContractedOffset];
  CGAffineTransformTranslate(&v39, &t1, 0.0, v38);
  t1 = v39;
  [(BCCardSetCustomNavigationTransition *)self setTargetTransform:&t1];

  [(BCCardSetCustomNavigationTransition *)self setAfterScreenUpdates:1];
}

- (void)updateAnimator
{
  animator = [(BCCardSetCustomNavigationTransition *)self animator];
  cardSetViewController = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  delegate = [cardSetViewController delegate];
  cardSetViewController2 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  [delegate cardSetViewController:cardSetViewController2 animatorForUnexpanding:animator];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_99074;
  v7[3] = &unk_2C7D40;
  v7[4] = self;
  [animator addAnimations:v7];
}

- (void)animationEnded:(BOOL)ended
{
  if (ended)
  {
    toView = [(BCCardSetCustomNavigationTransition *)self toView];
    [toView setAlpha:1.0];

    transitioningContext = [(BCCardSetCustomNavigationTransition *)self transitioningContext];
    containerView = [transitioningContext containerView];
    toView2 = [(BCCardSetCustomNavigationTransition *)self toView];
    [containerView addSubview:toView2];

    fromView = [(BCCardSetCustomNavigationTransition *)self fromView];
    [fromView removeFromSuperview];

    [(BCCardSetCustomNavigationTransition *)self targetTransform];
    cardSetViewController = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    scrollView = [cardSetViewController scrollView];
    v32[0] = v32[3];
    v32[1] = v32[4];
    v32[2] = v32[5];
    [scrollView setTransform:v32];

    cardSetViewController2 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    scrollView2 = [cardSetViewController2 scrollView];
    [scrollView2 setScrollEnabled:1];

    cardSetViewController3 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    tapToDismissGestureRecognizer = [cardSetViewController3 tapToDismissGestureRecognizer];
    [tapToDismissGestureRecognizer setEnabled:1];

    cardSetViewController4 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    edgePanGestureRecognizer = [cardSetViewController4 edgePanGestureRecognizer];
    view = [edgePanGestureRecognizer view];
    cardSetViewController5 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    edgePanGestureRecognizer2 = [cardSetViewController5 edgePanGestureRecognizer];
    [view removeGestureRecognizer:edgePanGestureRecognizer2];

    cardSetViewController6 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    [cardSetViewController6 setEdgePanGestureRecognizer:0];

    cardSetViewController7 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    navigationSkrimView = [cardSetViewController7 navigationSkrimView];
    [navigationSkrimView removeFromSuperview];

    cardSetViewController8 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    [cardSetViewController8 setNavigationSkrimView:0];

    cardSetViewController9 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    currentCardViewController = [cardSetViewController9 currentCardViewController];
    contentContainerView = [currentCardViewController contentContainerView];
    [contentContainerView setClipsToBounds:1];

    cardSetViewController10 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    currentCardViewController2 = [cardSetViewController10 currentCardViewController];
    [currentCardViewController2 goContracted];
  }

  else
  {
    cardSetViewController11 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    currentCardViewController3 = [cardSetViewController11 currentCardViewController];
    cardNavigationController = [currentCardViewController3 cardNavigationController];

    [cardNavigationController bc_updateNavBarVisibleWithTransitionCoordinator:0 duration:0.0];
  }
}

@end