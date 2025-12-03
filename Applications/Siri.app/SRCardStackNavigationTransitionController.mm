@interface SRCardStackNavigationTransitionController
- (CGAffineTransform)_calculateMoveFromPlatteredCardViewToBackgroundAffineTransformForPercentComplete:(SEL)complete withSemanticContentAttribute:(double)attribute;
- (CGAffineTransform)_prepareFromPlatteredCardViewForTransitionWithContext:(SEL)context;
- (CGRect)_backgroundEmptyPlatterViewOriginalFrame;
- (CGRect)_convertFrameForFromPlatteredCardView:(id)view toContainerView:(id)containerView;
- (CGRect)_fromPlatteredCardViewOriginalFrame;
- (CGRect)_prepareBackgroundEmptyPlatteredViewForTransitionInContext:(id)context;
- (CGRect)_prepareToPlatteredCardViewForTransitionInContext:(id)context;
- (SRCardStackNavigationTransitionController)initWithCompactResultViewController:(id)controller;
- (SiriSharedUICompactResultView)_compactResultView;
- (UINavigationController)_navigationController;
- (double)_transitionDurationForOperation:(int64_t)operation context:(id)context;
- (double)transitionDuration:(id)duration;
- (id)_backgroundPlatteredCardViewForOperation:(int64_t)operation recentViewControllers:(id)controllers;
- (id)_fromPlatteredCardViewGivenFromViewController:(id)controller;
- (id)_popTransitionContextGivenOriginalContext:(id)context revealedViewController:(id)controller poppedViewController:(id)viewController duration:(double)duration;
- (id)_safelyExtractSnippetPlatterViewControllerFromViewController:(id)controller;
- (id)_toPlatteredCardViewGivenToViewController:(id)controller;
- (id)interactionControllerForAnimationController:(id)controller;
- (unint64_t)_expectedPopCountForTransitionContext:(id)context;
- (void)_animateMultiPopKeyframe:(unint64_t)keyframe outOfTotalKeyframes:(unint64_t)keyframes transitionContext:(id)context completion:(id)completion;
- (void)_animateOnePopTransition:(id)transition originalContext:(id)context andComplete:(BOOL)complete completion:(id)completion;
- (void)_animatePushTransition:(id)transition;
- (void)_animateTransitionForOperation:(int64_t)operation context:(id)context;
- (void)_panGestureRecognizerDidPan:(id)pan;
- (void)_performPushTransitionFromViewController:(id)controller andView:(id)view toViewController:(id)viewController andView:(id)andView inContainerView:(id)containerView recentViewControllers:(id)controllers transitionDuration:(double)duration animated:(BOOL)self0 transitionCompletion:(id)self1 completion:(id)self2;
- (void)_recursivelyAnimateNextMultiPopKeyframe:(unint64_t)keyframe outOfTotalKeyframes:(unint64_t)keyframes transitionContext:(id)context;
- (void)_transitionWithContext:(id)context animated:(BOOL)animated completion:(id)completion;
- (void)animateTransition:(id)transition;
- (void)configureWithNavigationController:(id)controller;
- (void)layout;
@end

@implementation SRCardStackNavigationTransitionController

- (SRCardStackNavigationTransitionController)initWithCompactResultViewController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = SRCardStackNavigationTransitionController;
  v6 = [(SRCardStackNavigationTransitionController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_compactResultViewController, controller);
    v8 = [[UIPanGestureRecognizer alloc] initWithTarget:v7 action:"_panGestureRecognizerDidPan:"];
    panGestureRecognizer = v7->_panGestureRecognizer;
    v7->_panGestureRecognizer = v8;
  }

  return v7;
}

- (void)configureWithNavigationController:(id)controller
{
  controllerCopy = controller;
  [(SRCardStackNavigationTransitionController *)self _setNavigationController:controllerCopy];
  [controllerCopy setNavigationBarHidden:1];
}

- (id)interactionControllerForAnimationController:(id)controller
{
  if ([(SRCardStackNavigationTransitionController *)self _isGesturing])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_animateTransitionForOperation:(int64_t)operation context:(id)context
{
  contextCopy = context;
  v7 = contextCopy;
  if (operation == 1)
  {
    v8 = contextCopy;
    contextCopy = [(SRCardStackNavigationTransitionController *)self _recursivelyAnimateNextMultiPopKeyframe:0 outOfTotalKeyframes:[(SRCardStackNavigationTransitionController *)self _expectedPopCountForTransitionContext:contextCopy] transitionContext:v7];
  }

  else
  {
    if (operation)
    {
      goto LABEL_6;
    }

    v8 = contextCopy;
    contextCopy = [(SRCardStackNavigationTransitionController *)self _animatePushTransition:contextCopy];
  }

  v7 = v8;
LABEL_6:

  _objc_release_x1(contextCopy, v7);
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  operation = [(SRCardStackNavigationTransitionController *)self operation];
  if (operation == 2)
  {
    selfCopy2 = self;
    v7 = 1;
    goto LABEL_8;
  }

  if (operation == 1)
  {
    selfCopy2 = self;
    v7 = 0;
LABEL_8:
    [(SRCardStackNavigationTransitionController *)selfCopy2 _animateTransitionForOperation:v7 context:transitionCopy];
    goto LABEL_9;
  }

  if (!operation && os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_FAULT))
  {
    sub_1000CEDCC();
  }

LABEL_9:
}

- (double)_transitionDurationForOperation:(int64_t)operation context:(id)context
{
  if (operation != 1)
  {
    return 0.5;
  }

  v6 = [(SRCardStackNavigationTransitionController *)self _expectedPopCountForTransitionContext:context, v4, v5];
  return 0.5 / v6 + (v6 - 1) * 0.05;
}

- (double)transitionDuration:(id)duration
{
  durationCopy = duration;
  operation = [(SRCardStackNavigationTransitionController *)self operation];
  switch(operation)
  {
    case 2:
      selfCopy2 = self;
      v8 = 1;
      goto LABEL_8;
    case 1:
      selfCopy2 = self;
      v8 = 0;
LABEL_8:
      [(SRCardStackNavigationTransitionController *)selfCopy2 _transitionDurationForOperation:v8 context:durationCopy];
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
  _navigationController = [(SRCardStackNavigationTransitionController *)self _navigationController];
  viewControllers = [_navigationController viewControllers];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = viewControllers;
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

  reverseObjectEnumerator = [v5 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  v13 = [[SRUIFMutableStack alloc] initWithArray:allObjects];
  v14 = objc_alloc_init(SRUIFMutableStack);
  popTopObject = [v13 popTopObject];
  if (popTopObject)
  {
    [v14 pushObject:popTopObject];
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
  compactResultViewController = [(SRCardStackNavigationTransitionController *)self compactResultViewController];
  compactResultView = [compactResultViewController compactResultView];

  return compactResultView;
}

- (void)_performPushTransitionFromViewController:(id)controller andView:(id)view toViewController:(id)viewController andView:(id)andView inContainerView:(id)containerView recentViewControllers:(id)controllers transitionDuration:(double)duration animated:(BOOL)self0 transitionCompletion:(id)self1 completion:(id)self2
{
  controllerCopy = controller;
  viewCopy = view;
  viewControllerCopy = viewController;
  andViewCopy = andView;
  containerViewCopy = containerView;
  controllersCopy = controllers;
  completionCopy = completion;
  v24 = a12;
  v51 = controllersCopy;
  v25 = [(SRCardStackNavigationTransitionController *)self _backgroundPlatteredCardViewForOperation:0 recentViewControllers:controllersCopy];
  v53 = controllerCopy;
  v26 = [(SRCardStackNavigationTransitionController *)self _fromPlatteredCardViewGivenFromViewController:controllerCopy];
  v27 = [(SRCardStackNavigationTransitionController *)self _toPlatteredCardViewGivenToViewController:viewControllerCopy];
  [containerViewCopy bounds];
  [andViewCopy setFrame:?];
  [containerViewCopy addSubview:andViewCopy];
  [v26 frame];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  superview = [v26 superview];
  [containerViewCopy convertRect:superview fromView:{v29, v31, v33, v35}];
  [(SRCardStackNavigationTransitionController *)self _setFromPlatteredCardViewOriginalFrame:?];

  if (v25)
  {
    [v25 frame];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    superview2 = [v25 superview];
    [containerViewCopy convertRect:superview2 fromView:{v38, v40, v42, v44}];
    [(SRCardStackNavigationTransitionController *)self _setBackgroundEmptyPlatterViewOriginalFrame:?];
  }

  v46 = [[SRCardStackNavigationTransitionContext alloc] initWithCompletion:completionCopy];
  [(SRCardStackNavigationTransitionContext *)v46 setPercentComplete:1.0];
  [(SRCardStackNavigationTransitionContext *)v46 setBackgroundPlatteredCardView:v25];
  [(SRCardStackNavigationTransitionController *)self _backgroundEmptyPlatterViewOriginalFrame];
  [(SRCardStackNavigationTransitionContext *)v46 setBackgroundPlatteredCardViewOriginalFrame:?];
  [(SRCardStackNavigationTransitionController *)self _fromPlatteredCardViewOriginalFrame];
  [(SRCardStackNavigationTransitionContext *)v46 setFromPlatteredCardViewOriginalFrame:?];
  [(SRCardStackNavigationTransitionContext *)v46 setFromPlatteredCardView:v26];
  [(SRCardStackNavigationTransitionContext *)v46 setToPlatteredCardView:v27];
  [(SRCardStackNavigationTransitionContext *)v46 setContainerView:containerViewCopy];
  [(SRCardStackNavigationTransitionContext *)v46 setTransitionDuration:duration];
  objc_initWeak(location, self);
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_10007D1E8;
  v56[3] = &unk_100168A28;
  objc_copyWeak(&v59, location);
  v47 = v46;
  v57 = v47;
  animatedCopy = animated;
  v48 = v24;
  v58 = v48;
  v49 = objc_retainBlock(v56);
  v50 = v49;
  if (animated)
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

- (void)_animatePushTransition:(id)transition
{
  transitionCopy = transition;
  containerView = [transitionCopy containerView];
  v20 = [transitionCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  v6 = [transitionCopy viewForKey:UITransitionContextFromViewKey];
  v7 = [transitionCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  v8 = [transitionCopy viewForKey:UITransitionContextToViewKey];
  v9 = [(SRCardStackNavigationTransitionController *)self _toPlatteredCardViewGivenToViewController:v7];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10007D504;
  v29[3] = &unk_100168888;
  v10 = transitionCopy;
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
  v14 = containerView;
  v24 = v14;
  v15 = v6;
  v25 = v15;
  v16 = v8;
  v26 = v16;
  v17 = objc_retainBlock(v21);
  _recentViewControllers = [(SRCardStackNavigationTransitionController *)self _recentViewControllers];
  [(SRCardStackNavigationTransitionController *)self transitionDuration:v13];
  LOBYTE(v19) = 1;
  [(SRCardStackNavigationTransitionController *)self _performPushTransitionFromViewController:v20 andView:v15 toViewController:v7 andView:v16 inContainerView:v14 recentViewControllers:_recentViewControllers transitionDuration:v19 animated:v11 transitionCompletion:v17 completion:?];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

- (void)_recursivelyAnimateNextMultiPopKeyframe:(unint64_t)keyframe outOfTotalKeyframes:(unint64_t)keyframes transitionContext:(id)context
{
  contextCopy = context;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007D730;
  v10[3] = &unk_100168A78;
  v12[1] = keyframe;
  v12[2] = keyframes;
  objc_copyWeak(v12, &location);
  v9 = contextCopy;
  v11 = v9;
  [(SRCardStackNavigationTransitionController *)self _animateMultiPopKeyframe:keyframe outOfTotalKeyframes:keyframes transitionContext:v9 completion:v10];

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

- (void)_animateMultiPopKeyframe:(unint64_t)keyframe outOfTotalKeyframes:(unint64_t)keyframes transitionContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  _recentViewControllers = [(SRCardStackNavigationTransitionController *)self _recentViewControllers];
  v13 = [_recentViewControllers count];
  v14 = [_recentViewControllers objectAtIndex:v13 - 1];
  v15 = [_recentViewControllers objectAtIndex:v13 - 2];
  [(SRCardStackNavigationTransitionController *)self transitionDuration:contextCopy];
  v16 = [(SRCardStackNavigationTransitionController *)self _popTransitionContextGivenOriginalContext:contextCopy revealedViewController:v15 poppedViewController:v14 duration:?];
  v17 = keyframes - 1 == keyframe;
  objc_initWeak(&location, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10007D950;
  v19[3] = &unk_100168AA0;
  v22 = v17;
  objc_copyWeak(&v21, &location);
  v18 = completionCopy;
  v20 = v18;
  [(SRCardStackNavigationTransitionController *)self _animateOnePopTransition:v16 originalContext:contextCopy andComplete:v17 completion:v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (id)_popTransitionContextGivenOriginalContext:(id)context revealedViewController:(id)controller poppedViewController:(id)viewController duration:(double)duration
{
  contextCopy = context;
  viewControllerCopy = viewController;
  controllerCopy = controller;
  containerView = [contextCopy containerView];
  [containerView setClipsToBounds:0];
  v14 = [(SRCardStackNavigationTransitionController *)self _fromPlatteredCardViewGivenFromViewController:controllerCopy];

  v15 = [(SRCardStackNavigationTransitionController *)self _toPlatteredCardViewGivenToViewController:viewControllerCopy];

  _recentViewControllers = [(SRCardStackNavigationTransitionController *)self _recentViewControllers];
  v17 = [(SRCardStackNavigationTransitionController *)self _backgroundPlatteredCardViewForOperation:1 recentViewControllers:_recentViewControllers];

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
    superview = [v14 superview];
    [containerView convertRect:superview fromView:{v19, v21, v23, v25}];
    [(SRCardStackNavigationTransitionController *)self _setBackgroundEmptyPlatterViewOriginalFrame:?];
  }

  v27 = [SRCardStackNavigationTransitionContext alloc];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10007DC58;
  v32[3] = &unk_100168888;
  v33 = contextCopy;
  v28 = contextCopy;
  v29 = [(SRCardStackNavigationTransitionContext *)v27 initWithCompletion:v32];
  [(SRCardStackNavigationTransitionContext *)v29 setPercentComplete:0.0];
  [(SRCardStackNavigationTransitionContext *)v29 setBackgroundPlatteredCardView:v17];
  [(SRCardStackNavigationTransitionController *)self _backgroundEmptyPlatterViewOriginalFrame];
  [(SRCardStackNavigationTransitionContext *)v29 setBackgroundPlatteredCardViewOriginalFrame:?];
  [(SRCardStackNavigationTransitionController *)self _fromPlatteredCardViewOriginalFrame];
  [(SRCardStackNavigationTransitionContext *)v29 setFromPlatteredCardViewOriginalFrame:?];
  [(SRCardStackNavigationTransitionContext *)v29 setFromPlatteredCardView:v14];
  [(SRCardStackNavigationTransitionContext *)v29 setToPlatteredCardView:v15];
  containerView2 = [v28 containerView];
  [(SRCardStackNavigationTransitionContext *)v29 setContainerView:containerView2];

  [(SRCardStackNavigationTransitionContext *)v29 setTransitionDuration:duration];

  return v29;
}

- (void)_animateOnePopTransition:(id)transition originalContext:(id)context andComplete:(BOOL)complete completion:(id)completion
{
  transitionCopy = transition;
  contextCopy = context;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10007DDB0;
  v16[3] = &unk_100168AC8;
  v13 = transitionCopy;
  v17 = v13;
  objc_copyWeak(&v20, &location);
  completeCopy = complete;
  v14 = contextCopy;
  v18 = v14;
  v15 = completionCopy;
  v19 = v15;
  [(SRCardStackNavigationTransitionController *)self _transitionWithContext:v13 animated:1 completion:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)_transitionWithContext:(id)context animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  contextCopy = context;
  completionCopy = completion;
  backgroundPlatteredCardView = [contextCopy backgroundPlatteredCardView];
  fromPlatteredCardView = [contextCopy fromPlatteredCardView];
  toPlatteredCardView = [contextCopy toPlatteredCardView];
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  [(SRCardStackNavigationTransitionController *)self _prepareFromPlatteredCardViewForTransitionWithContext:contextCopy];
  [(SRCardStackNavigationTransitionController *)self _prepareToPlatteredCardViewForTransitionInContext:contextCopy];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(SRCardStackNavigationTransitionController *)self _prepareBackgroundEmptyPlatteredViewForTransitionInContext:contextCopy];
  v35 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10007E31C;
  v42[3] = &unk_100168AF0;
  v28 = fromPlatteredCardView;
  v43 = v28;
  v47 = v58;
  v48 = v59;
  v49 = v60;
  v29 = toPlatteredCardView;
  v44 = v29;
  v50 = v14;
  v51 = v16;
  v52 = v18;
  v53 = v20;
  v30 = contextCopy;
  v45 = v30;
  v31 = backgroundPlatteredCardView;
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
  v33 = completionCopy;
  v39 = v33;
  objc_copyWeak(&v40, &location);
  v34 = objc_retainBlock(v38);
  if (animatedCopy)
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

- (id)_safelyExtractSnippetPlatterViewControllerFromViewController:(id)controller
{
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    contentPlatterViewController = [controllerCopy contentPlatterViewController];
  }

  else
  {
    contentPlatterViewController = 0;
  }

  return contentPlatterViewController;
}

- (id)_backgroundPlatteredCardViewForOperation:(int64_t)operation recentViewControllers:(id)controllers
{
  v6 = operation == 0;
  controllersCopy = controllers;
  v8 = [controllersCopy count];
  if (operation == 1)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2 * v6;
  }

  _compactResultView = [(SRCardStackNavigationTransitionController *)self _compactResultView];
  if (v8 >= v9)
  {
    v12 = [controllersCopy objectAtIndex:&v8[-v9]];
    v13 = [(SRCardStackNavigationTransitionController *)self _safelyExtractSnippetPlatterViewControllerFromViewController:v12];

    contentPlatterView = [v13 contentPlatterView];
    v15 = contentPlatterView;
    if (contentPlatterView)
    {
      v16 = contentPlatterView;
    }

    else
    {
      v16 = _compactResultView;
    }

    v11 = v16;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)_expectedPopCountForTransitionContext:(id)context
{
  v4 = [context viewControllerForKey:UITransitionContextToViewControllerKey];
  _recentViewControllers = [(SRCardStackNavigationTransitionController *)self _recentViewControllers];
  v6 = [_recentViewControllers indexOfObject:v4];
  v7 = [_recentViewControllers count];

  return v7 + ~v6;
}

- (id)_fromPlatteredCardViewGivenFromViewController:(id)controller
{
  controllerCopy = controller;
  _compactResultView = [(SRCardStackNavigationTransitionController *)self _compactResultView];
  v6 = [(SRCardStackNavigationTransitionController *)self _safelyExtractSnippetPlatterViewControllerFromViewController:controllerCopy];

  contentPlatterView = [v6 contentPlatterView];
  v8 = contentPlatterView;
  if (contentPlatterView)
  {
    v9 = contentPlatterView;
  }

  else
  {
    v9 = _compactResultView;
  }

  v10 = v9;

  return v9;
}

- (id)_toPlatteredCardViewGivenToViewController:(id)controller
{
  v3 = [(SRCardStackNavigationTransitionController *)self _safelyExtractSnippetPlatterViewControllerFromViewController:controller];
  contentPlatterView = [v3 contentPlatterView];

  return contentPlatterView;
}

- (CGRect)_convertFrameForFromPlatteredCardView:(id)view toContainerView:(id)containerView
{
  containerViewCopy = containerView;
  viewCopy = view;
  [viewCopy frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  superview = [viewCopy superview];

  [containerViewCopy convertRect:superview fromView:{v8, v10, v12, v14}];
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

- (CGAffineTransform)_prepareFromPlatteredCardViewForTransitionWithContext:(SEL)context
{
  v6 = a4;
  [v6 percentComplete];
  v8 = v7;
  fromPlatteredCardView = [v6 fromPlatteredCardView];
  semanticContentAttribute = [v6 semanticContentAttribute];

  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  [(SRCardStackNavigationTransitionController *)self _calculateMoveFromPlatteredCardViewToBackgroundAffineTransformForPercentComplete:semanticContentAttribute withSemanticContentAttribute:1.0 - v8];
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  [(SRCardStackNavigationTransitionController *)self _calculateMoveFromPlatteredCardViewToBackgroundAffineTransformForPercentComplete:semanticContentAttribute withSemanticContentAttribute:v8];
  v12[0] = v13;
  v12[1] = v14;
  v12[2] = v15;
  [fromPlatteredCardView setTransform:v12];

  return result;
}

- (CGAffineTransform)_calculateMoveFromPlatteredCardViewToBackgroundAffineTransformForPercentComplete:(SEL)complete withSemanticContentAttribute:(double)attribute
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  CGAffineTransformMakeScale(retstr, attribute * -0.1 + 1.0, attribute * -0.1 + 1.0);
  v8 = -30.0;
  if (a5 == 4)
  {
    v8 = 30.0;
  }

  v9 = *&retstr->c;
  *&v12.a = *&retstr->a;
  *&v12.c = v9;
  *&v12.tx = *&retstr->tx;
  result = CGAffineTransformTranslate(&v13, &v12, v8 * attribute, 0.0);
  v11 = *&v13.c;
  *&retstr->a = *&v13.a;
  *&retstr->c = v11;
  *&retstr->tx = *&v13.tx;
  return result;
}

- (CGRect)_prepareToPlatteredCardViewForTransitionInContext:(id)context
{
  contextCopy = context;
  [contextCopy percentComplete];
  v44 = v4;
  toPlatteredCardView = [contextCopy toPlatteredCardView];
  containerView = [contextCopy containerView];
  [contextCopy fromPlatteredCardViewOriginalFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  semanticContentAttribute = [contextCopy semanticContentAttribute];

  superview = [toPlatteredCardView superview];
  [superview convertRect:containerView fromView:{v8, v10, v12, v14}];
  v18 = v17;
  v20 = v19;
  v43 = v21;
  v23 = v22;
  [containerView bounds];
  v25 = v24;
  v27 = v26;
  v28 = v24 - v18;
  v29 = -(v24 - v18);
  [containerView safeAreaInsets];
  v31 = v20 + v23 - v30;
  [toPlatteredCardView sizeThatFits:{v25, v27}];
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

  if (semanticContentAttribute == 4)
  {
    v35 = v29;
  }

  else
  {
    v35 = v28;
  }

  v36 = v18 + v35 * v44;
  v37 = v20 - (v34 - v23);
  if (semanticContentAttribute == 4)
  {
    v38 = -((1.0 - v44) * v25);
  }

  else
  {
    v38 = (1.0 - v44) * v25;
  }

  [toPlatteredCardView setFrame:{v36, v37, v43, v34}];

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

- (CGRect)_prepareBackgroundEmptyPlatteredViewForTransitionInContext:(id)context
{
  contextCopy = context;
  [contextCopy percentComplete];
  v5 = v4;
  backgroundPlatteredCardView = [contextCopy backgroundPlatteredCardView];
  [contextCopy backgroundPlatteredCardViewOriginalFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  containerView = [contextCopy containerView];
  superview = [backgroundPlatteredCardView superview];
  [superview convertRect:containerView fromView:{v8, v10, v12, v14}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  semanticContentAttribute = [contextCopy semanticContentAttribute];
  v26 = -12.0;
  if (semanticContentAttribute != 4)
  {
    v26 = 12.0;
  }

  v27 = v18 + v26 * (1.0 - v5);
  v28 = v18 + v26 * v5;
  [backgroundPlatteredCardView setFrame:{v27, v20, v22, v24}];

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

- (void)_panGestureRecognizerDidPan:(id)pan
{
  panCopy = pan;
  view = [panCopy view];
  [panCopy translationInView:view];
  v6 = v5;
  [view bounds];
  v8 = v7;
  superview = [view superview];
  [superview bounds];
  v11 = v8 + v10;
  if ([view semanticContentAttribute] == 4)
  {
    v11 = -v11;
  }

  state = [panCopy state];
  if (state > 2)
  {
    if (state == 3)
    {
      [(SRCardStackNavigationTransitionController *)self _setGesturing:0];
      [panCopy velocityInView:view];
      if ((v6 + v16 * 0.2) / v11 > 0.15)
      {
        [(SRCardStackNavigationTransitionController *)self finishInteractiveTransition];
        goto LABEL_17;
      }

      [(SRCardStackNavigationTransitionController *)self _setCancelling:1];
    }

    else
    {
      if (state != 4)
      {
        goto LABEL_17;
      }

      [(SRCardStackNavigationTransitionController *)self _setGesturing:0];
    }

    [(SRCardStackNavigationTransitionController *)self cancelInteractiveTransition];
  }

  else if (state == 1)
  {
    [(SRCardStackNavigationTransitionController *)self _setGesturing:1];
    _navigationController = [(SRCardStackNavigationTransitionController *)self _navigationController];
    v15 = [_navigationController popViewControllerAnimated:1];
  }

  else if (state == 2)
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