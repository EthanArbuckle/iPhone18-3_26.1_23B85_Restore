@interface BCCardSetCustomPopNavigationTransition
- (void)animationEnded:(BOOL)a3;
- (void)setup;
- (void)updateAnimator;
@end

@implementation BCCardSetCustomPopNavigationTransition

- (void)setup
{
  v3 = [(BCCardSetCustomNavigationTransition *)self fromView];
  [(BCCardSetCustomNavigationTransition *)self setViewToSlide:v3];

  [(BCCardSetCustomNavigationTransition *)self onScreen];
  [(BCCardSetCustomNavigationTransition *)self setStartingRect:?];
  [(BCCardSetCustomNavigationTransition *)self offScreen];
  [(BCCardSetCustomNavigationTransition *)self setEndingRect:?];
  v4 = [(BCCardSetCustomNavigationTransition *)self toViewController];
  v5 = [v4 contentScrollViewForEdge:1];

  if (v5)
  {
    [(BCCardSetCustomNavigationTransition *)self setViewToSnapshot:v5];
  }

  else
  {
    v6 = [(BCCardSetCustomNavigationTransition *)self toView];
    [(BCCardSetCustomNavigationTransition *)self setViewToSnapshot:v6];
  }

  v7 = [(BCCardSetCustomNavigationTransition *)self toView];
  [(BCCardSetCustomNavigationTransition *)self setViewToHide:v7];

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
  v20 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v21 = [v20 configuration];
  [v21 cardExpandedTopOffset];
  v23 = v15 - v22;

  v24 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v25 = [v24 configuration];
  [v25 cardCornerRadius];
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
  v29 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v30 = [v29 currentCardViewController];
  v31 = [v30 configuration];
  [v31 cardExpandedTopOffset];
  CGAffineTransformMakeTranslation(&v43, 0.0, v32);

  v33 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v34 = v33;
  if (v33)
  {
    [v33 expandedTransform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  t2 = v43;
  CGAffineTransformConcat(&v42, &t1, &t2);
  t1 = v42;
  [(BCCardSetCustomNavigationTransition *)self setStartingTransform:&t1];

  v35 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v36 = v35;
  if (v35)
  {
    [v35 contractedTransform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v37 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  [v37 scaledContractedOffset];
  CGAffineTransformTranslate(&v39, &t1, 0.0, v38);
  t1 = v39;
  [(BCCardSetCustomNavigationTransition *)self setTargetTransform:&t1];

  [(BCCardSetCustomNavigationTransition *)self setAfterScreenUpdates:1];
}

- (void)updateAnimator
{
  v3 = [(BCCardSetCustomNavigationTransition *)self animator];
  v4 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v5 = [v4 delegate];
  v6 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  [v5 cardSetViewController:v6 animatorForUnexpanding:v3];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_99074;
  v7[3] = &unk_2C7D40;
  v7[4] = self;
  [v3 addAnimations:v7];
}

- (void)animationEnded:(BOOL)a3
{
  if (a3)
  {
    v4 = [(BCCardSetCustomNavigationTransition *)self toView];
    [v4 setAlpha:1.0];

    v5 = [(BCCardSetCustomNavigationTransition *)self transitioningContext];
    v6 = [v5 containerView];
    v7 = [(BCCardSetCustomNavigationTransition *)self toView];
    [v6 addSubview:v7];

    v8 = [(BCCardSetCustomNavigationTransition *)self fromView];
    [v8 removeFromSuperview];

    [(BCCardSetCustomNavigationTransition *)self targetTransform];
    v9 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    v10 = [v9 scrollView];
    v32[0] = v32[3];
    v32[1] = v32[4];
    v32[2] = v32[5];
    [v10 setTransform:v32];

    v11 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    v12 = [v11 scrollView];
    [v12 setScrollEnabled:1];

    v13 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    v14 = [v13 tapToDismissGestureRecognizer];
    [v14 setEnabled:1];

    v15 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    v16 = [v15 edgePanGestureRecognizer];
    v17 = [v16 view];
    v18 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    v19 = [v18 edgePanGestureRecognizer];
    [v17 removeGestureRecognizer:v19];

    v20 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    [v20 setEdgePanGestureRecognizer:0];

    v21 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    v22 = [v21 navigationSkrimView];
    [v22 removeFromSuperview];

    v23 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    [v23 setNavigationSkrimView:0];

    v24 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    v25 = [v24 currentCardViewController];
    v26 = [v25 contentContainerView];
    [v26 setClipsToBounds:1];

    v27 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    v28 = [v27 currentCardViewController];
    [v28 goContracted];
  }

  else
  {
    v29 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    v30 = [v29 currentCardViewController];
    v31 = [v30 cardNavigationController];

    [v31 bc_updateNavBarVisibleWithTransitionCoordinator:0 duration:0.0];
  }
}

@end