@interface BCCardSetTransitioningState
- (double)_extraGripperOffsetForViewController:(id)controller;
- (int64_t)contractedPosition;
- (int64_t)expandedPosition;
- (void)_resetInteractiveAnimationWithScrollView:(id)view cardData:(id)data;
- (void)cardViewController:(id)controller animationCompletedAtPosition:(int64_t)position cardData:(id)data;
- (void)cardViewController:(id)controller cardData:(id)data scrollViewDidScroll:(id)scroll contentScrollView:(id)view;
- (void)cardViewController:(id)controller contentScrollViewDidChange:(id)change cardData:(id)data;
- (void)cardViewController:(id)controller willDismissWithCardData:(id)data;
- (void)didBecomeCurrentStateCardViewController:(id)controller previousState:(id)state cardData:(id)data;
- (void)setFractionComplete:(double)complete cardData:(id)data;
@end

@implementation BCCardSetTransitioningState

- (void)setFractionComplete:(double)complete cardData:(id)data
{
  dataCopy = data;
  v5 = [NSString stringWithFormat:@"must override %s", "[BCCardSetTransitioningState setFractionComplete:cardData:]"];
  v6 = [NSException exceptionWithName:@"abstract base class" reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (void)didBecomeCurrentStateCardViewController:(id)controller previousState:(id)state cardData:(id)data
{
  v11.receiver = self;
  v11.super_class = BCCardSetTransitioningState;
  dataCopy = data;
  controllerCopy = controller;
  [(BCCardSetState *)&v11 didBecomeCurrentStateCardViewController:controllerCopy previousState:state cardData:dataCopy];
  contentScrollView = [controllerCopy contentScrollView];
  [(BCCardSetTransitioningState *)self cardViewController:controllerCopy contentScrollViewDidChange:contentScrollView cardData:dataCopy];
}

- (void)cardViewController:(id)controller contentScrollViewDidChange:(id)change cardData:(id)data
{
  dataCopy = data;
  controllerCopy = controller;
  contentScrollView = [controllerCopy contentScrollView];
  scrollView = [controllerCopy scrollView];
  [(BCCardSetState *)self updateCardViewController:controllerCopy contentScrollView:contentScrollView basedOnCardScrollView:scrollView cardData:dataCopy];

  scrollView2 = [controllerCopy scrollView];

  [scrollView2 setShowsVerticalScrollIndicator:0];
}

- (void)cardViewController:(id)controller cardData:(id)data scrollViewDidScroll:(id)scroll contentScrollView:(id)view
{
  controllerCopy = controller;
  dataCopy = data;
  scrollCopy = scroll;
  viewCopy = view;
  animator = [dataCopy animator];

  if (animator)
  {
    [(BCCardSetState *)self yInScrollView:scrollCopy cardViewController:controllerCopy];
    [(BCCardSetState *)self yInScreenFromYInScrollView:controllerCopy cardViewController:dataCopy cardData:?];
    v15 = v14;
    [(BCCardSetState *)self updateCardViewController:controllerCopy contentScrollView:viewCopy basedOnCardScrollView:scrollCopy cardData:dataCopy];
    [dataCopy distanceToExpand];
    v17 = v16;
    v18 = +[UIScreen mainScreen];
    [v18 scale];
    v20 = v19;

    configuration = [dataCopy configuration];
    [configuration cardExpandedTopOffset];
    if (v15 < v22)
    {

LABEL_5:
      [(BCCardSetTransitioningState *)self setFractionComplete:dataCopy cardData:1.0];
      animator2 = [dataCopy animator];
      [animator2 stopAnimation:0];

      animator3 = [dataCopy animator];
      expandedPosition = [(BCCardSetTransitioningState *)self expandedPosition];
LABEL_6:
      [animator3 finishAnimationAtPosition:expandedPosition];

      goto LABEL_7;
    }

    v23 = vabdd_f64(v15, v22);
    v24 = 1.0 / v20;

    if (v23 < v24)
    {
      goto LABEL_5;
    }

    configuration2 = [dataCopy configuration];
    [configuration2 cardUnexpandedTopOffset];
    if (v15 > v29)
    {

LABEL_13:
      [(BCCardSetTransitioningState *)self setFractionComplete:dataCopy cardData:0.0];
      animator4 = [dataCopy animator];
      [animator4 stopAnimation:0];

      animator3 = [dataCopy animator];
      expandedPosition = [(BCCardSetTransitioningState *)self contractedPosition];
      goto LABEL_6;
    }

    v30 = vabdd_f64(v15, v29);

    if (v30 < v24)
    {
      goto LABEL_13;
    }

    configuration3 = [dataCopy configuration];
    [configuration3 cardUnexpandedTopOffset];
    v34 = v33 - v15;

    [(BCCardSetTransitioningState *)self setFractionComplete:dataCopy cardData:v34 / v17];
  }

LABEL_7:
}

- (void)cardViewController:(id)controller animationCompletedAtPosition:(int64_t)position cardData:(id)data
{
  dataCopy = data;
  controllerCopy = controller;
  expandedPosition = [(BCCardSetTransitioningState *)self expandedPosition];
  cardNavigationController = [controllerCopy cardNavigationController];

  viewControllers = [cardNavigationController viewControllers];
  v13 = [viewControllers count];

  if (expandedPosition == position)
  {
    if (v13 > 1)
    {
      +[BCCardSetState pushedState];
    }

    else
    {
      +[BCCardSetState expandedState];
    }
  }

  else if (v13 > 1)
  {
    +[BCCardSetState pushedContractedState];
  }

  else
  {
    +[BCCardSetState contractedState];
  }
  v14 = ;
  v15 = v14;
  [dataCopy setCurrentState:v14];

  cardSetData = [dataCopy cardSetData];

  [cardSetData animationCompletedExpanded:expandedPosition == position];
}

- (int64_t)expandedPosition
{
  v2 = [NSString stringWithFormat:@"must override %s", "[BCCardSetTransitioningState expandedPosition]"];
  v3 = [NSException exceptionWithName:@"abstract base class" reason:v2 userInfo:0];
  v4 = v3;

  objc_exception_throw(v3);
}

- (int64_t)contractedPosition
{
  v2 = [NSString stringWithFormat:@"must override %s", "[BCCardSetTransitioningState contractedPosition]"];
  v3 = [NSException exceptionWithName:@"abstract base class" reason:v2 userInfo:0];
  v4 = v3;

  objc_exception_throw(v3);
}

- (void)_resetInteractiveAnimationWithScrollView:(id)view cardData:(id)data
{
  viewCopy = view;
  dataCopy = data;
  animator = [dataCopy animator];
  [animator pauseAnimation];

  v16 = viewCopy;
  [v16 contentOffset];
  v10 = v9;
  [v16 adjustedContentInset];
  v12 = v10 + v11;

  [dataCopy distanceToExpand];
  v14 = v12 / v13;
  [dataCopy setRawCurrentCardOffset:0.0];
  [(BCCardSetTransitioningState *)self setFractionComplete:dataCopy cardData:v14];
  animator2 = [dataCopy animator];

  [animator2 setReversed:0];
}

- (void)cardViewController:(id)controller willDismissWithCardData:(id)data
{
  v7.receiver = self;
  v7.super_class = BCCardSetTransitioningState;
  dataCopy = data;
  [(BCCardSetState *)&v7 cardViewController:controller willDismissWithCardData:dataCopy];
  animator = [dataCopy animator];

  [animator stopAnimation:1];
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