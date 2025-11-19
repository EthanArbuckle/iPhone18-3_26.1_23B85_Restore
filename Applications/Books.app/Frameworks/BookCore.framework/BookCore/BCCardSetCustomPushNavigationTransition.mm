@interface BCCardSetCustomPushNavigationTransition
- (void)animationEnded:(BOOL)a3;
- (void)setup;
- (void)updateAnimator;
@end

@implementation BCCardSetCustomPushNavigationTransition

- (void)setup
{
  v3 = [(BCCardSetCustomNavigationTransition *)self toView];
  [(BCCardSetCustomNavigationTransition *)self setViewToSlide:v3];

  [(BCCardSetCustomNavigationTransition *)self offScreen];
  [(BCCardSetCustomNavigationTransition *)self setStartingRect:?];
  [(BCCardSetCustomNavigationTransition *)self onScreen];
  [(BCCardSetCustomNavigationTransition *)self setEndingRect:?];
  v4 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v5 = [v4 currentCardViewController];
  v6 = [v5 cardView];
  [(BCCardSetCustomNavigationTransition *)self setViewToSnapshot:v6];

  v7 = [(BCCardSetCustomNavigationTransition *)self fromView];
  [(BCCardSetCustomNavigationTransition *)self setViewToHide:v7];

  v8 = [(BCCardSetCustomNavigationTransition *)self viewToSnapshot];
  [v8 bounds];
  [(BCCardSetCustomNavigationTransition *)self setSnapshotFrame:?];

  [(BCCardSetCustomNavigationTransition *)self setGripperEndingAlpha:0.0];
  [(BCCardSetCustomNavigationTransition *)self setGripperStartingAlpha:0.0];
  v9 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v10 = v9;
  if (v9)
  {
    [v9 contractedTransform];
  }

  else
  {
    memset(&v27, 0, sizeof(v27));
  }

  v11 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  [v11 scaledContractedOffset];
  CGAffineTransformTranslate(&v28, &v27, 0.0, v12);
  v27 = v28;
  [(BCCardSetCustomNavigationTransition *)self setStartingTransform:&v27];

  v13 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v14 = v13;
  if (v13)
  {
    [v13 expandedTransform];
  }

  else
  {
    memset(&v27, 0, sizeof(v27));
  }

  v15 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v16 = [v15 currentCardViewController];
  v17 = [v16 configuration];
  [v17 cardExpandedTopOffset];
  CGAffineTransformTranslate(&v26, &v27, 0.0, v18);
  v27 = v26;
  [(BCCardSetCustomNavigationTransition *)self setTargetTransform:&v27];

  v19 = [UIView alloc];
  [(BCCardSetCustomNavigationTransition *)self onScreen];
  v20 = [v19 initWithFrame:?];
  [v20 setAlpha:0.0];
  v21 = +[UIColor blackColor];
  [v20 setBackgroundColor:v21];

  v22 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  [v22 setNavigationSkrimView:v20];

  v23 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v24 = [v23 currentCardViewController];
  v25 = [v24 contentContainerView];
  [v25 setClipsToBounds:0];

  [(BCCardSetCustomNavigationTransition *)self setAfterScreenUpdates:0];
}

- (void)updateAnimator
{
  v3 = [(BCCardSetCustomNavigationTransition *)self animator];
  v4 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v5 = v4;
  if (v4)
  {
    [v4 expandedTransform];
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
  }

  v6 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v7 = [v6 scrollView];
  v33[0] = v34;
  v33[1] = v35;
  v33[2] = v36;
  [v7 setTransform:v33];

  v8 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v9 = [v8 scrollView];
  [v9 setScrollEnabled:0];

  v10 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v11 = [v10 tapToDismissGestureRecognizer];
  [v11 setEnabled:0];

  v12 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v13 = [v12 currentCardViewController];
  v14 = [v13 cardNavigationController];
  v15 = [v14 view];

  v16 = [v15 effectiveUserInterfaceLayoutDirection];
  v17 = [UIScreenEdgePanGestureRecognizer alloc];
  v18 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v19 = [v17 initWithTarget:v18 action:"edgePanGesture:"];

  if (v16 == &dword_0 + 1)
  {
    v20 = 8;
  }

  else
  {
    v20 = 2;
  }

  [v19 setEdges:v20];
  [v15 addGestureRecognizer:v19];
  v21 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  [v21 setEdgePanGestureRecognizer:v19];

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_98B64;
  v32[3] = &unk_2C7D40;
  v32[4] = self;
  [v3 addAnimations:v32];
  v22 = [(BCCardSetCustomNavigationTransition *)self fromView];
  [v22 removeFromSuperview];

  v23 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v24 = [v23 delegate];
  v25 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  [v24 cardSetViewController:v25 animatorForExpanding:v3];

  v26 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  [v26 scaledContractedOffset];
  v28 = v27;
  v29 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v30 = [v29 currentCardViewController];
  v31 = [v30 scrollView];
  [v31 setContentOffset:{0.0, v28}];
}

- (void)animationEnded:(BOOL)a3
{
  if (a3)
  {
    v6 = +[BCCardSetState pushedState];
    v4 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    v5 = [v4 currentCardViewController];
    [v5 setCurrentState:v6];
  }
}

@end