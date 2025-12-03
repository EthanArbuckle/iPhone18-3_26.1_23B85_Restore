@interface BCCardSetContractingState
- (void)cardViewController:(id)controller cardData:(id)data scrollViewWillBeginDragging:(id)dragging contentScrollView:(id)view;
- (void)didBecomeCurrentStateCardViewController:(id)controller previousState:(id)state cardData:(id)data;
- (void)setFractionComplete:(double)complete cardData:(id)data;
@end

@implementation BCCardSetContractingState

- (void)didBecomeCurrentStateCardViewController:(id)controller previousState:(id)state cardData:(id)data
{
  v9.receiver = self;
  v9.super_class = BCCardSetContractingState;
  dataCopy = data;
  [(BCCardSetTransitioningState *)&v9 didBecomeCurrentStateCardViewController:controller previousState:state cardData:dataCopy];
  cardSetData = [dataCopy cardSetData];

  [cardSetData goContractedInteractive:1];
}

- (void)setFractionComplete:(double)complete cardData:(id)data
{
  v4 = fmax(1.0 - complete, 0.0);
  animator = [data animator];
  [animator setFractionComplete:v4];
}

- (void)cardViewController:(id)controller cardData:(id)data scrollViewWillBeginDragging:(id)dragging contentScrollView:(id)view
{
  dataCopy = data;
  draggingCopy = dragging;
  viewCopy = view;
  cardNavigationController = [controller cardNavigationController];
  viewControllers = [cardNavigationController viewControllers];
  v14 = [viewControllers count];

  if (v14 <= 1)
  {
    animator = [dataCopy animator];

    if (animator)
    {
      [(BCCardSetTransitioningState *)self _resetInteractiveAnimationWithScrollView:draggingCopy cardData:dataCopy];
      delegate = [viewCopy delegate];
      [delegate scrollViewWillBeginDragging:viewCopy];
    }

    else
    {
      sub_1EBBAC(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }
}

@end