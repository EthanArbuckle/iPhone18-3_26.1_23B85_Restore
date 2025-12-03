@interface BCCardSetCustomPushNavigationTransition
- (void)animationEnded:(BOOL)ended;
- (void)setup;
- (void)updateAnimator;
@end

@implementation BCCardSetCustomPushNavigationTransition

- (void)setup
{
  toView = [(BCCardSetCustomNavigationTransition *)self toView];
  [(BCCardSetCustomNavigationTransition *)self setViewToSlide:toView];

  [(BCCardSetCustomNavigationTransition *)self offScreen];
  [(BCCardSetCustomNavigationTransition *)self setStartingRect:?];
  [(BCCardSetCustomNavigationTransition *)self onScreen];
  [(BCCardSetCustomNavigationTransition *)self setEndingRect:?];
  cardSetViewController = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  currentCardViewController = [cardSetViewController currentCardViewController];
  cardView = [currentCardViewController cardView];
  [(BCCardSetCustomNavigationTransition *)self setViewToSnapshot:cardView];

  fromView = [(BCCardSetCustomNavigationTransition *)self fromView];
  [(BCCardSetCustomNavigationTransition *)self setViewToHide:fromView];

  viewToSnapshot = [(BCCardSetCustomNavigationTransition *)self viewToSnapshot];
  [viewToSnapshot bounds];
  [(BCCardSetCustomNavigationTransition *)self setSnapshotFrame:?];

  [(BCCardSetCustomNavigationTransition *)self setGripperEndingAlpha:0.0];
  [(BCCardSetCustomNavigationTransition *)self setGripperStartingAlpha:0.0];
  cardSetViewController2 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v10 = cardSetViewController2;
  if (cardSetViewController2)
  {
    [cardSetViewController2 contractedTransform];
  }

  else
  {
    memset(&v27, 0, sizeof(v27));
  }

  cardSetViewController3 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  [cardSetViewController3 scaledContractedOffset];
  CGAffineTransformTranslate(&v28, &v27, 0.0, v12);
  v27 = v28;
  [(BCCardSetCustomNavigationTransition *)self setStartingTransform:&v27];

  cardSetViewController4 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v14 = cardSetViewController4;
  if (cardSetViewController4)
  {
    [cardSetViewController4 expandedTransform];
  }

  else
  {
    memset(&v27, 0, sizeof(v27));
  }

  cardSetViewController5 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  currentCardViewController2 = [cardSetViewController5 currentCardViewController];
  configuration = [currentCardViewController2 configuration];
  [configuration cardExpandedTopOffset];
  CGAffineTransformTranslate(&v26, &v27, 0.0, v18);
  v27 = v26;
  [(BCCardSetCustomNavigationTransition *)self setTargetTransform:&v27];

  v19 = [UIView alloc];
  [(BCCardSetCustomNavigationTransition *)self onScreen];
  v20 = [v19 initWithFrame:?];
  [v20 setAlpha:0.0];
  v21 = +[UIColor blackColor];
  [v20 setBackgroundColor:v21];

  cardSetViewController6 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  [cardSetViewController6 setNavigationSkrimView:v20];

  cardSetViewController7 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  currentCardViewController3 = [cardSetViewController7 currentCardViewController];
  contentContainerView = [currentCardViewController3 contentContainerView];
  [contentContainerView setClipsToBounds:0];

  [(BCCardSetCustomNavigationTransition *)self setAfterScreenUpdates:0];
}

- (void)updateAnimator
{
  animator = [(BCCardSetCustomNavigationTransition *)self animator];
  cardSetViewController = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v5 = cardSetViewController;
  if (cardSetViewController)
  {
    [cardSetViewController expandedTransform];
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
  }

  cardSetViewController2 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  scrollView = [cardSetViewController2 scrollView];
  v33[0] = v34;
  v33[1] = v35;
  v33[2] = v36;
  [scrollView setTransform:v33];

  cardSetViewController3 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  scrollView2 = [cardSetViewController3 scrollView];
  [scrollView2 setScrollEnabled:0];

  cardSetViewController4 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  tapToDismissGestureRecognizer = [cardSetViewController4 tapToDismissGestureRecognizer];
  [tapToDismissGestureRecognizer setEnabled:0];

  cardSetViewController5 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  currentCardViewController = [cardSetViewController5 currentCardViewController];
  cardNavigationController = [currentCardViewController cardNavigationController];
  view = [cardNavigationController view];

  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];
  v17 = [UIScreenEdgePanGestureRecognizer alloc];
  cardSetViewController6 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v19 = [v17 initWithTarget:cardSetViewController6 action:"edgePanGesture:"];

  if (effectiveUserInterfaceLayoutDirection == &dword_0 + 1)
  {
    v20 = 8;
  }

  else
  {
    v20 = 2;
  }

  [v19 setEdges:v20];
  [view addGestureRecognizer:v19];
  cardSetViewController7 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  [cardSetViewController7 setEdgePanGestureRecognizer:v19];

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_98B64;
  v32[3] = &unk_2C7D40;
  v32[4] = self;
  [animator addAnimations:v32];
  fromView = [(BCCardSetCustomNavigationTransition *)self fromView];
  [fromView removeFromSuperview];

  cardSetViewController8 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  delegate = [cardSetViewController8 delegate];
  cardSetViewController9 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  [delegate cardSetViewController:cardSetViewController9 animatorForExpanding:animator];

  cardSetViewController10 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  [cardSetViewController10 scaledContractedOffset];
  v28 = v27;
  cardSetViewController11 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  currentCardViewController2 = [cardSetViewController11 currentCardViewController];
  scrollView3 = [currentCardViewController2 scrollView];
  [scrollView3 setContentOffset:{0.0, v28}];
}

- (void)animationEnded:(BOOL)ended
{
  if (ended)
  {
    v6 = +[BCCardSetState pushedState];
    cardSetViewController = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    currentCardViewController = [cardSetViewController currentCardViewController];
    [currentCardViewController setCurrentState:v6];
  }
}

@end