@interface BCCardSetExpandedState
- (double)_extraGripperOffsetForViewController:(id)controller;
- (double)cardViewController:(id)controller cardScrollViewOffsetForContentScrollView:(id)view cardData:(id)data;
- (void)cardViewController:(id)controller accessibilityWantsToScrollToOffset:(CGPoint)offset cardData:(id)data;
- (void)cardViewController:(id)controller cardData:(id)data scrollViewDidScroll:(id)scroll contentScrollView:(id)view;
- (void)cardViewController:(id)controller contentScrollViewDidChange:(id)change cardData:(id)data;
- (void)cardViewController:(id)controller scrollToTopAnimated:(BOOL)animated cardData:(id)data;
- (void)didBecomeCurrentStateCardViewController:(id)controller previousState:(id)state cardData:(id)data;
@end

@implementation BCCardSetExpandedState

- (void)didBecomeCurrentStateCardViewController:(id)controller previousState:(id)state cardData:(id)data
{
  v11.receiver = self;
  v11.super_class = BCCardSetExpandedState;
  dataCopy = data;
  controllerCopy = controller;
  [(BCCardSetState *)&v11 didBecomeCurrentStateCardViewController:controllerCopy previousState:state cardData:dataCopy];
  contentScrollView = [controllerCopy contentScrollView];
  [(BCCardSetExpandedState *)self cardViewController:controllerCopy contentScrollViewDidChange:contentScrollView cardData:dataCopy];
}

- (void)cardViewController:(id)controller contentScrollViewDidChange:(id)change cardData:(id)data
{
  dataCopy = data;
  controllerCopy = controller;
  contentScrollView = [controllerCopy contentScrollView];
  scrollView = [controllerCopy scrollView];
  [(BCCardSetState *)self updateCardViewController:controllerCopy contentScrollView:contentScrollView basedOnCardScrollView:scrollView cardData:dataCopy];

  scrollView2 = [controllerCopy scrollView];

  [scrollView2 setShowsVerticalScrollIndicator:1];
}

- (void)cardViewController:(id)controller cardData:(id)data scrollViewDidScroll:(id)scroll contentScrollView:(id)view
{
  controllerCopy = controller;
  dataCopy = data;
  scrollCopy = scroll;
  viewCopy = view;
  [(BCCardSetState *)self yInScrollView:scrollCopy cardViewController:controllerCopy];
  [(BCCardSetState *)self yInScreenFromYInScrollView:controllerCopy cardViewController:dataCopy cardData:?];
  v14 = v13;
  contentScrollView = [controllerCopy contentScrollView];
  [(BCCardSetState *)self updateCardViewController:controllerCopy contentScrollView:contentScrollView basedOnCardScrollView:scrollCopy cardData:dataCopy];

  configuration = [dataCopy configuration];
  [configuration cardExpandedTopOffset];
  if (v14 > v17)
  {
    cardNavigationController = [controllerCopy cardNavigationController];
    viewControllers = [cardNavigationController viewControllers];
    v20 = [viewControllers count];

    if (v20 != &dword_0 + 1)
    {
      goto LABEL_5;
    }

    v21 = +[BCCardSetState contractingState];
    [dataCopy setCurrentState:v21];

    configuration = [dataCopy currentState];
    [configuration cardViewController:controllerCopy cardData:dataCopy scrollViewDidScroll:scrollCopy contentScrollView:viewCopy];
  }

LABEL_5:
}

- (double)cardViewController:(id)controller cardScrollViewOffsetForContentScrollView:(id)view cardData:(id)data
{
  viewCopy = view;
  controllerCopy = controller;
  configuration = [data configuration];
  [configuration cardExpandedTopOffset];
  v11 = v10;

  [viewCopy contentOffset];
  v13 = v12;
  [viewCopy contentInset];
  v15 = v14;

  v16 = v13 + v15;
  if (v16 >= -v11)
  {
    cardSetViewController = [controllerCopy cardSetViewController];

    [cardSetViewController scaledContractedOffset];
    v19 = v16 + v20;
  }

  else
  {
    cardSetViewController = [controllerCopy scrollView];

    [cardSetViewController contentOffset];
    v19 = v18;
  }

  return v19;
}

- (void)cardViewController:(id)controller scrollToTopAnimated:(BOOL)animated cardData:(id)data
{
  animatedCopy = animated;
  controllerCopy = controller;
  dataCopy = data;
  v9 = +[BCCardSetState contractingState];
  [controllerCopy setCurrentState:v9];

  objc_initWeak(&location, controllerCopy);
  scrollView = [controllerCopy scrollView];
  [scrollView setScrollEnabled:0];

  animator = [controllerCopy animator];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_152004;
  v22[3] = &unk_2CE420;
  objc_copyWeak(&v23, &location);
  v24 = animatedCopy;
  [animator addAnimations:v22];

  animator2 = [controllerCopy animator];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_152070;
  v20 = &unk_2CE448;
  objc_copyWeak(&v21, &location);
  [animator2 addCompletion:&v17];

  [controllerCopy animator];
  if (animatedCopy)
    animator5 = {;
    [animator5 startAnimation];
  }

  else
    v14 = {;
    [v14 pauseAnimation];

    animator3 = [controllerCopy animator];
    [animator3 setFractionComplete:1.0];

    animator4 = [controllerCopy animator];
    [animator4 stopAnimation:0];

    animator5 = [controllerCopy animator];
    [animator5 finishAnimationAtPosition:0];
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)cardViewController:(id)controller accessibilityWantsToScrollToOffset:(CGPoint)offset cardData:(id)data
{
  y = offset.y;
  x = offset.x;
  controllerCopy = controller;
  dataCopy = data;
  contentScrollView = [controllerCopy contentScrollView];
  [contentScrollView adjustedContentInset];
  v13 = y + v12;

  cardSetViewController = [controllerCopy cardSetViewController];
  [cardSetViewController scaledContractedOffset];
  v16 = v15 - v13;

  [(BCCardSetState *)self yInScreenFromYInScrollView:controllerCopy cardViewController:dataCopy cardData:v16];
  v18 = v17;
  configuration = [controllerCopy configuration];
  [configuration cardExpandedTopOffset];
  v21 = v20;

  if (v18 <= v21)
  {
    v24.receiver = self;
    v24.super_class = BCCardSetExpandedState;
    [(BCCardSetState *)&v24 cardViewController:controllerCopy accessibilityWantsToScrollToOffset:dataCopy cardData:x, y];
  }

  else
  {
    v22 = CGPointZero.y;
    scrollView = [controllerCopy scrollView];
    [scrollView setContentOffset:{CGPointZero.x, v22}];

    [(BCCardSetExpandedState *)self cardViewController:controllerCopy scrollToTopAnimated:1 cardData:controllerCopy];
  }
}

- (double)_extraGripperOffsetForViewController:(id)controller
{
  view = [controller view];
  window = [view window];
  windowScene = [window windowScene];

  statusBarManager = [windowScene statusBarManager];
  [statusBarManager statusBarHeight];
  v8 = v7;

  return v8;
}

@end