@interface SRCardStackNavigationTransitionController
- (CGAffineTransform)_calculateMoveFromPlatteredCardViewToBackgroundAffineTransformForPercentComplete:(SEL)a3 withSemanticContentAttribute:(double)a4;
- (CGAffineTransform)_prepareFromPlatteredCardViewForTransitionWithContext:(SEL)a3;
- (CGRect)_backgroundEmptyPlatterViewOriginalFrame;
- (CGRect)_convertFrameForFromPlatteredCardView:(id)a3 toContainerView:(id)a4;
- (CGRect)_fromPlatteredCardViewOriginalFrame;
- (CGRect)_prepareBackgroundEmptyPlatteredViewForTransitionInContext:(id)a3;
- (CGRect)_prepareToPlatteredCardViewForTransitionInContext:(id)a3;
- (SRCardStackNavigationTransitionController)initWithCompactResultViewController:(id)a3;
- (SiriSharedUICompactResultView)_compactResultView;
- (UINavigationController)_navigationController;
- (double)_transitionDurationForOperation:(int64_t)a3 context:(id)a4;
- (double)transitionDuration:(id)a3;
- (id)_backgroundPlatteredCardViewForOperation:(int64_t)a3 recentViewControllers:(id)a4;
- (id)_fromPlatteredCardViewGivenFromViewController:(id)a3;
- (id)_popTransitionContextGivenOriginalContext:(id)a3 revealedViewController:(id)a4 poppedViewController:(id)a5 duration:(double)a6;
- (id)_safelyExtractSnippetPlatterViewControllerFromViewController:(id)a3;
- (id)_toPlatteredCardViewGivenToViewController:(id)a3;
- (id)interactionControllerForAnimationController:(id)a3;
- (unint64_t)_expectedPopCountForTransitionContext:(id)a3;
- (void)_animateMultiPopKeyframe:(unint64_t)a3 outOfTotalKeyframes:(unint64_t)a4 transitionContext:(id)a5 completion:(id)a6;
- (void)_animateOnePopTransition:(id)a3 originalContext:(id)a4 andComplete:(BOOL)a5 completion:(id)a6;
- (void)_animatePushTransition:(id)a3;
- (void)_animateTransitionForOperation:(int64_t)a3 context:(id)a4;
- (void)_panGestureRecognizerDidPan:(id)a3;
- (void)_performPushTransitionFromViewController:(id)a3 andView:(id)a4 toViewController:(id)a5 andView:(id)a6 inContainerView:(id)a7 recentViewControllers:(id)a8 transitionDuration:(double)a9 animated:(BOOL)a10 transitionCompletion:(id)a11 completion:(id)a12;
- (void)_recursivelyAnimateNextMultiPopKeyframe:(unint64_t)a3 outOfTotalKeyframes:(unint64_t)a4 transitionContext:(id)a5;
- (void)_transitionWithContext:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)animateTransition:(id)a3;
- (void)configureWithNavigationController:(id)a3;
- (void)layout;
@end

@implementation SRCardStackNavigationTransitionController

- (SRCardStackNavigationTransitionController)initWithCompactResultViewController:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SRCardStackNavigationTransitionController;
  v6 = [(SRCardStackNavigationTransitionController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_compactResultViewController, a3);
    v8 = [[UIPanGestureRecognizer alloc] initWithTarget:v7 action:"_panGestureRecognizerDidPan:"];
    panGestureRecognizer = v7->_panGestureRecognizer;
    v7->_panGestureRecognizer = v8;
  }

  return v7;
}

- (void)configureWithNavigationController:(id)a3
{
  v4 = a3;
  [(SRCardStackNavigationTransitionController *)self _setNavigationController:v4];
  [v4 setNavigationBarHidden:1];
}

- (id)interactionControllerForAnimationController:(id)a3
{
  if ([(SRCardStackNavigationTransitionController *)self _isGesturing])
  {
    v4 = self;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_animateTransitionForOperation:(int64_t)a3 context:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 == 1)
  {
    v8 = v6;
    v6 = [(SRCardStackNavigationTransitionController *)self _recursivelyAnimateNextMultiPopKeyframe:0 outOfTotalKeyframes:[(SRCardStackNavigationTransitionController *)self _expectedPopCountForTransitionContext:v6] transitionContext:v7];
  }

  else
  {
    if (a3)
    {
      goto LABEL_6;
    }

    v8 = v6;
    v6 = [(SRCardStackNavigationTransitionController *)self _animatePushTransition:v6];
  }

  v7 = v8;
LABEL_6:

  _objc_release_x1(v6, v7);
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [(SRCardStackNavigationTransitionController *)self operation];
  if (v5 == 2)
  {
    v6 = self;
    v7 = 1;
    goto LABEL_8;
  }

  if (v5 == 1)
  {
    v6 = self;
    v7 = 0;
LABEL_8:
    [(SRCardStackNavigationTransitionController *)v6 _animateTransitionForOperation:v7 context:v4];
    goto LABEL_9;
  }

  if (!v5 && os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_FAULT))
  {
    sub_1000CEDCC();
  }

LABEL_9:
}

- (double)_transitionDurationForOperation:(int64_t)a3 context:(id)a4
{
  if (a3 != 1)
  {
    return 0.5;
  }

  v6 = [(SRCardStackNavigationTransitionController *)self _expectedPopCountForTransitionContext:a4, v4, v5];
  return 0.5 / v6 + (v6 - 1) * 0.05;
}

- (double)transitionDuration:(id)a3
{
  v5 = a3;
  v6 = [(SRCardStackNavigationTransitionController *)self operation];
  switch(v6)
  {
    case 2:
      v7 = self;
      v8 = 1;
      goto LABEL_8;
    case 1:
      v7 = self;
      v8 = 0;
LABEL_8:
      [(SRCardStackNavigationTransitionController *)v7 _transitionDurationForOperation:v8 context:v5];
      v3 = v9;
      break;
    case 0:
      v3 = 0.0;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_FAULT))
      {
        sub_1000CEE4C();
      }

      break;
  }

  return v3;
}

- (void)layout
{
  v3 = [(SRCardStackNavigationTransitionController *)self _navigationController];
  v4 = [v3 viewControllers];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    v17 = *&CGAffineTransformIdentity.c;
    v18 = *&CGAffineTransformIdentity.a;
    v16 = *&CGAffineTransformIdentity.tx;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(SRCardStackNavigationTransitionController *)self _fromPlatteredCardViewGivenFromViewController:*(*(&v21 + 1) + 8 * v9), v16, v17, v18];
        v20[0] = v18;
        v20[1] = v17;
        v20[2] = v16;
        [v10 setTransform:v20];
        [v10 setNeedsLayout];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v11 = [v5 reverseObjectEnumerator];
  v12 = [v11 allObjects];

  v13 = [[SRUIFMutableStack alloc] initWithArray:v12];
  v14 = objc_alloc_init(SRUIFMutableStack);
  v15 = [v13 popTopObject];
  if (v15)
  {
    [v14 pushObject:v15];
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10007CCD8;
  v19[3] = &unk_100168A00;
  v19[4] = v14;
  v19[5] = self;
  [v13 popObjectsUsingBlock:v19];
}

- (SiriSharedUICompactResultView)_compactResultView
{
  v2 = [(SRCardStackNavigationTransitionController *)self compactResultViewController];
  v3 = [v2 compactResultView];

  return v3;
}

- (void)_performPushTransitionFromViewController:(id)a3 andView:(id)a4 toViewController:(id)a5 andView:(id)a6 inContainerView:(id)a7 recentViewControllers:(id)a8 transitionDuration:(double)a9 animated:(BOOL)a10 transitionCompletion:(id)a11 completion:(id)a12
{
  v19 = a3;
  v52 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v54 = a11;
  v24 = a12;
  v51 = v23;
  v25 = [(SRCardStackNavigationTransitionController *)self _backgroundPlatteredCardViewForOperation:0 recentViewControllers:v23];
  v53 = v19;
  v26 = [(SRCardStackNavigationTransitionController *)self _fromPlatteredCardViewGivenFromViewController:v19];
  v27 = [(SRCardStackNavigationTransitionController *)self _toPlatteredCardViewGivenToViewController:v20];
  [v22 bounds];
  [v21 setFrame:?];
  [v22 addSubview:v21];
  [v26 frame];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = [v26 superview];
  [v22 convertRect:v36 fromView:{v29, v31, v33, v35}];
  [(SRCardStackNavigationTransitionController *)self _setFromPlatteredCardViewOriginalFrame:?];

  if (v25)
  {
    [v25 frame];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = [v25 superview];
    [v22 convertRect:v45 fromView:{v38, v40, v42, v44}];
    [(SRCardStackNavigationTransitionController *)self _setBackgroundEmptyPlatterViewOriginalFrame:?];
  }

  v46 = [[SRCardStackNavigationTransitionContext alloc] initWithCompletion:v54];
  [(SRCardStackNavigationTransitionContext *)v46 setPercentComplete:1.0];
  [(SRCardStackNavigationTransitionContext *)v46 setBackgroundPlatteredCardView:v25];
  [(SRCardStackNavigationTransitionController *)self _backgroundEmptyPlatterViewOriginalFrame];
  [(SRCardStackNavigationTransitionContext *)v46 setBackgroundPlatteredCardViewOriginalFrame:?];
  [(SRCardStackNavigationTransitionController *)self _fromPlatteredCardViewOriginalFrame];
  [(SRCardStackNavigationTransitionContext *)v46 setFromPlatteredCardViewOriginalFrame:?];
  [(SRCardStackNavigationTransitionContext *)v46 setFromPlatteredCardView:v26];
  [(SRCardStackNavigationTransitionContext *)v46 setToPlatteredCardView:v27];
  [(SRCardStackNavigationTransitionContext *)v46 setContainerView:v22];
  [(SRCardStackNavigationTransitionContext *)v46 setTransitionDuration:a9];
  objc_initWeak(location, self);
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_10007D1E8;
  v56[3] = &unk_100168A28;
  objc_copyWeak(&v59, location);
  v47 = v46;
  v57 = v47;
  v60 = a10;
  v48 = v24;
  v58 = v48;
  v49 = objc_retainBlock(v56);
  v50 = v49;
  if (a10)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007D23C;
    block[3] = &unk_1001678F8;
    block[4] = v49;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    (v49[2])(v49);
  }

  objc_destroyWeak(&v59);
  objc_destroyWeak(location);
}

- (void)_animatePushTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 containerView];
  v20 = [v4 viewControllerForKey:UITransitionContextFromViewControllerKey];
  v6 = [v4 viewForKey:UITransitionContextFromViewKey];
  v7 = [v4 viewControllerForKey:UITransitionContextToViewControllerKey];
  v8 = [v4 viewForKey:UITransitionContextToViewKey];
  v9 = [(SRCardStackNavigationTransitionController *)self _toPlatteredCardViewGivenToViewController:v7];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10007D504;
  v29[3] = &unk_100168888;
  v10 = v4;
  v30 = v10;
  v11 = objc_retainBlock(v29);
  objc_initWeak(&location, self);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10007D510;
  v21[3] = &unk_100168A50;
  objc_copyWeak(&v27, &location);
  v12 = v9;
  v22 = v12;
  v13 = v10;
  v23 = v13;
  v14 = v5;
  v24 = v14;
  v15 = v6;
  v25 = v15;
  v16 = v8;
  v26 = v16;
  v17 = objc_retainBlock(v21);
  v18 = [(SRCardStackNavigationTransitionController *)self _recentViewControllers];
  [(SRCardStackNavigationTransitionController *)self transitionDuration:v13];
  LOBYTE(v19) = 1;
  [(SRCardStackNavigationTransitionController *)self _performPushTransitionFromViewController:v20 andView:v15 toViewController:v7 andView:v16 inContainerView:v14 recentViewControllers:v18 transitionDuration:v19 animated:v11 transitionCompletion:v17 completion:?];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

- (void)_recursivelyAnimateNextMultiPopKeyframe:(unint64_t)a3 outOfTotalKeyframes:(unint64_t)a4 transitionContext:(id)a5
{
  v8 = a5;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007D730;
  v10[3] = &unk_100168A78;
  v12[1] = a3;
  v12[2] = a4;
  objc_copyWeak(v12, &location);
  v9 = v8;
  v11 = v9;
  [(SRCardStackNavigationTransitionController *)self _animateMultiPopKeyframe:a3 outOfTotalKeyframes:a4 transitionContext:v9 completion:v10];

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

- (void)_animateMultiPopKeyframe:(unint64_t)a3 outOfTotalKeyframes:(unint64_t)a4 transitionContext:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [(SRCardStackNavigationTransitionController *)self _recentViewControllers];
  v13 = [v12 count];
  v14 = [v12 objectAtIndex:v13 - 1];
  v15 = [v12 objectAtIndex:v13 - 2];
  [(SRCardStackNavigationTransitionController *)self transitionDuration:v10];
  v16 = [(SRCardStackNavigationTransitionController *)self _popTransitionContextGivenOriginalContext:v10 revealedViewController:v15 poppedViewController:v14 duration:?];
  v17 = a4 - 1 == a3;
  objc_initWeak(&location, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10007D950;
  v19[3] = &unk_100168AA0;
  v22 = v17;
  objc_copyWeak(&v21, &location);
  v18 = v11;
  v20 = v18;
  [(SRCardStackNavigationTransitionController *)self _animateOnePopTransition:v16 originalContext:v10 andComplete:v17 completion:v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (id)_popTransitionContextGivenOriginalContext:(id)a3 revealedViewController:(id)a4 poppedViewController:(id)a5 duration:(double)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  v13 = [v10 containerView];
  [v13 setClipsToBounds:0];
  v14 = [(SRCardStackNavigationTransitionController *)self _fromPlatteredCardViewGivenFromViewController:v12];

  v15 = [(SRCardStackNavigationTransitionController *)self _toPlatteredCardViewGivenToViewController:v11];

  v16 = [(SRCardStackNavigationTransitionController *)self _recentViewControllers];
  v17 = [(SRCardStackNavigationTransitionController *)self _backgroundPlatteredCardViewForOperation:1 recentViewControllers:v16];

  [(SRCardStackNavigationTransitionController *)self _backgroundEmptyPlatterViewOriginalFrame];
  v36.origin.x = CGRectZero.origin.x;
  v36.origin.y = CGRectZero.origin.y;
  v36.size.width = CGRectZero.size.width;
  v36.size.height = CGRectZero.size.height;
  if (CGRectEqualToRect(v35, v36))
  {
    [v14 frame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = [v14 superview];
    [v13 convertRect:v26 fromView:{v19, v21, v23, v25}];
    [(SRCardStackNavigationTransitionController *)self _setBackgroundEmptyPlatterViewOriginalFrame:?];
  }

  v27 = [SRCardStackNavigationTransitionContext alloc];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10007DC58;
  v32[3] = &unk_100168888;
  v33 = v10;
  v28 = v10;
  v29 = [(SRCardStackNavigationTransitionContext *)v27 initWithCompletion:v32];
  [(SRCardStackNavigationTransitionContext *)v29 setPercentComplete:0.0];
  [(SRCardStackNavigationTransitionContext *)v29 setBackgroundPlatteredCardView:v17];
  [(SRCardStackNavigationTransitionController *)self _backgroundEmptyPlatterViewOriginalFrame];
  [(SRCardStackNavigationTransitionContext *)v29 setBackgroundPlatteredCardViewOriginalFrame:?];
  [(SRCardStackNavigationTransitionController *)self _fromPlatteredCardViewOriginalFrame];
  [(SRCardStackNavigationTransitionContext *)v29 setFromPlatteredCardViewOriginalFrame:?];
  [(SRCardStackNavigationTransitionContext *)v29 setFromPlatteredCardView:v14];
  [(SRCardStackNavigationTransitionContext *)v29 setToPlatteredCardView:v15];
  v30 = [v28 containerView];
  [(SRCardStackNavigationTransitionContext *)v29 setContainerView:v30];

  [(SRCardStackNavigationTransitionContext *)v29 setTransitionDuration:a6];

  return v29;
}

- (void)_animateOnePopTransition:(id)a3 originalContext:(id)a4 andComplete:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10007DDB0;
  v16[3] = &unk_100168AC8;
  v13 = v10;
  v17 = v13;
  objc_copyWeak(&v20, &location);
  v21 = a5;
  v14 = v11;
  v18 = v14;
  v15 = v12;
  v19 = v15;
  [(SRCardStackNavigationTransitionController *)self _transitionWithContext:v13 animated:1 completion:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)_transitionWithContext:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [v8 backgroundPlatteredCardView];
  v11 = [v8 fromPlatteredCardView];
  v12 = [v8 toPlatteredCardView];
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  [(SRCardStackNavigationTransitionController *)self _prepareFromPlatteredCardViewForTransitionWithContext:v8];
  [(SRCardStackNavigationTransitionController *)self _prepareToPlatteredCardViewForTransitionInContext:v8];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(SRCardStackNavigationTransitionController *)self _prepareBackgroundEmptyPlatteredViewForTransitionInContext:v8];
  v35 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10007E31C;
  v42[3] = &unk_100168AF0;
  v28 = v11;
  v43 = v28;
  v47 = v58;
  v48 = v59;
  v49 = v60;
  v29 = v12;
  v44 = v29;
  v50 = v14;
  v51 = v16;
  v52 = v18;
  v53 = v20;
  v30 = v8;
  v45 = v30;
  v31 = v10;
  v46 = v31;
  v54 = v35;
  v55 = v23;
  v56 = v25;
  v57 = v27;
  v32 = objc_retainBlock(v42);
  objc_initWeak(&location, self);
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10007E394;
  v38[3] = &unk_100168B18;
  v33 = v9;
  v39 = v33;
  objc_copyWeak(&v40, &location);
  v34 = objc_retainBlock(v38);
  if (v6)
  {
    [v30 transitionDuration];
    v36[4] = v34;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10007E450;
    v37[3] = &unk_1001678F8;
    v37[4] = v32;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10007E460;
    v36[3] = &unk_1001674E0;
    [UIView animateWithDuration:"animateWithDuration:delay:usingSpringWithDamping:initialSpringVelocity:options:animations:completion:" delay:0 usingSpringWithDamping:v37 initialSpringVelocity:v36 options:? animations:? completion:?];
  }

  else
  {
    (v32[2])(v32);
    (v34[2])(v34, 1);
  }

  objc_destroyWeak(&v40);
  objc_destroyWeak(&location);
}

- (id)_safelyExtractSnippetPlatterViewControllerFromViewController:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 contentPlatterViewController];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_backgroundPlatteredCardViewForOperation:(int64_t)a3 recentViewControllers:(id)a4
{
  v6 = a3 == 0;
  v7 = a4;
  v8 = [v7 count];
  if (a3 == 1)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2 * v6;
  }

  v10 = [(SRCardStackNavigationTransitionController *)self _compactResultView];
  if (v8 >= v9)
  {
    v12 = [v7 objectAtIndex:&v8[-v9]];
    v13 = [(SRCardStackNavigationTransitionController *)self _safelyExtractSnippetPlatterViewControllerFromViewController:v12];

    v14 = [v13 contentPlatterView];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v10;
    }

    v11 = v16;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)_expectedPopCountForTransitionContext:(id)a3
{
  v4 = [a3 viewControllerForKey:UITransitionContextToViewControllerKey];
  v5 = [(SRCardStackNavigationTransitionController *)self _recentViewControllers];
  v6 = [v5 indexOfObject:v4];
  v7 = [v5 count];

  return v7 + ~v6;
}

- (id)_fromPlatteredCardViewGivenFromViewController:(id)a3
{
  v4 = a3;
  v5 = [(SRCardStackNavigationTransitionController *)self _compactResultView];
  v6 = [(SRCardStackNavigationTransitionController *)self _safelyExtractSnippetPlatterViewControllerFromViewController:v4];

  v7 = [v6 contentPlatterView];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  v10 = v9;

  return v9;
}

- (id)_toPlatteredCardViewGivenToViewController:(id)a3
{
  v3 = [(SRCardStackNavigationTransitionController *)self _safelyExtractSnippetPlatterViewControllerFromViewController:a3];
  v4 = [v3 contentPlatterView];

  return v4;
}

- (CGRect)_convertFrameForFromPlatteredCardView:(id)a3 toContainerView:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v6 superview];

  [v5 convertRect:v15 fromView:{v8, v10, v12, v14}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGAffineTransform)_prepareFromPlatteredCardViewForTransitionWithContext:(SEL)a3
{
  v6 = a4;
  [v6 percentComplete];
  v8 = v7;
  v9 = [v6 fromPlatteredCardView];
  v10 = [v6 semanticContentAttribute];

  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  [(SRCardStackNavigationTransitionController *)self _calculateMoveFromPlatteredCardViewToBackgroundAffineTransformForPercentComplete:v10 withSemanticContentAttribute:1.0 - v8];
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  [(SRCardStackNavigationTransitionController *)self _calculateMoveFromPlatteredCardViewToBackgroundAffineTransformForPercentComplete:v10 withSemanticContentAttribute:v8];
  v12[0] = v13;
  v12[1] = v14;
  v12[2] = v15;
  [v9 setTransform:v12];

  return result;
}

- (CGAffineTransform)_calculateMoveFromPlatteredCardViewToBackgroundAffineTransformForPercentComplete:(SEL)a3 withSemanticContentAttribute:(double)a4
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  CGAffineTransformMakeScale(retstr, a4 * -0.1 + 1.0, a4 * -0.1 + 1.0);
  v8 = -30.0;
  if (a5 == 4)
  {
    v8 = 30.0;
  }

  v9 = *&retstr->c;
  *&v12.a = *&retstr->a;
  *&v12.c = v9;
  *&v12.tx = *&retstr->tx;
  result = CGAffineTransformTranslate(&v13, &v12, v8 * a4, 0.0);
  v11 = *&v13.c;
  *&retstr->a = *&v13.a;
  *&retstr->c = v11;
  *&retstr->tx = *&v13.tx;
  return result;
}

- (CGRect)_prepareToPlatteredCardViewForTransitionInContext:(id)a3
{
  v3 = a3;
  [v3 percentComplete];
  v44 = v4;
  v5 = [v3 toPlatteredCardView];
  v6 = [v3 containerView];
  [v3 fromPlatteredCardViewOriginalFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v3 semanticContentAttribute];

  v16 = [v5 superview];
  [v16 convertRect:v6 fromView:{v8, v10, v12, v14}];
  v18 = v17;
  v20 = v19;
  v43 = v21;
  v23 = v22;
  [v6 bounds];
  v25 = v24;
  v27 = v26;
  v28 = v24 - v18;
  v29 = -(v24 - v18);
  [v6 safeAreaInsets];
  v31 = v20 + v23 - v30;
  [v5 sizeThatFits:{v25, v27}];
  if (v32 >= v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = v32;
  }

  if (v33 >= v23)
  {
    v34 = v33;
  }

  else
  {
    v34 = v23;
  }

  if (v15 == 4)
  {
    v35 = v29;
  }

  else
  {
    v35 = v28;
  }

  v36 = v18 + v35 * v44;
  v37 = v20 - (v34 - v23);
  if (v15 == 4)
  {
    v38 = -((1.0 - v44) * v25);
  }

  else
  {
    v38 = (1.0 - v44) * v25;
  }

  [v5 setFrame:{v36, v37, v43, v34}];

  v39 = v18 + v38;
  v40 = v37;
  v41 = v43;
  v42 = v34;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v40;
  result.origin.x = v39;
  return result;
}

- (CGRect)_prepareBackgroundEmptyPlatteredViewForTransitionInContext:(id)a3
{
  v3 = a3;
  [v3 percentComplete];
  v5 = v4;
  v6 = [v3 backgroundPlatteredCardView];
  [v3 backgroundPlatteredCardViewOriginalFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v3 containerView];
  v16 = [v6 superview];
  [v16 convertRect:v15 fromView:{v8, v10, v12, v14}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = [v3 semanticContentAttribute];
  v26 = -12.0;
  if (v25 != 4)
  {
    v26 = 12.0;
  }

  v27 = v18 + v26 * (1.0 - v5);
  v28 = v18 + v26 * v5;
  [v6 setFrame:{v27, v20, v22, v24}];

  v29 = v28;
  v30 = v20;
  v31 = v22;
  v32 = v24;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)_panGestureRecognizerDidPan:(id)a3
{
  v17 = a3;
  v4 = [v17 view];
  [v17 translationInView:v4];
  v6 = v5;
  [v4 bounds];
  v8 = v7;
  v9 = [v4 superview];
  [v9 bounds];
  v11 = v8 + v10;
  if ([v4 semanticContentAttribute] == 4)
  {
    v11 = -v11;
  }

  v12 = [v17 state];
  if (v12 > 2)
  {
    if (v12 == 3)
    {
      [(SRCardStackNavigationTransitionController *)self _setGesturing:0];
      [v17 velocityInView:v4];
      if ((v6 + v16 * 0.2) / v11 > 0.15)
      {
        [(SRCardStackNavigationTransitionController *)self finishInteractiveTransition];
        goto LABEL_17;
      }

      [(SRCardStackNavigationTransitionController *)self _setCancelling:1];
    }

    else
    {
      if (v12 != 4)
      {
        goto LABEL_17;
      }

      [(SRCardStackNavigationTransitionController *)self _setGesturing:0];
    }

    [(SRCardStackNavigationTransitionController *)self cancelInteractiveTransition];
  }

  else if (v12 == 1)
  {
    [(SRCardStackNavigationTransitionController *)self _setGesturing:1];
    v14 = [(SRCardStackNavigationTransitionController *)self _navigationController];
    v15 = [v14 popViewControllerAnimated:1];
  }

  else if (v12 == 2)
  {
    v13 = fmin(v6 / v11, 1.0);
    if (v13 < 0.0)
    {
      v13 = 0.0;
    }

    [(SRCardStackNavigationTransitionController *)self updateInteractiveTransition:v13];
  }

LABEL_17:
}

- (UINavigationController)_navigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  return WeakRetained;
}

- (CGRect)_fromPlatteredCardViewOriginalFrame
{
  x = self->_fromPlatteredCardViewOriginalFrame.origin.x;
  y = self->_fromPlatteredCardViewOriginalFrame.origin.y;
  width = self->_fromPlatteredCardViewOriginalFrame.size.width;
  height = self->_fromPlatteredCardViewOriginalFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_backgroundEmptyPlatterViewOriginalFrame
{
  x = self->_backgroundEmptyPlatterViewOriginalFrame.origin.x;
  y = self->_backgroundEmptyPlatterViewOriginalFrame.origin.y;
  width = self->_backgroundEmptyPlatterViewOriginalFrame.size.width;
  height = self->_backgroundEmptyPlatterViewOriginalFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end