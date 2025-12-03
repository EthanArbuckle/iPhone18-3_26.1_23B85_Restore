@interface BCCardSetExpandingState
- (void)cardViewController:(id)controller cardData:(id)data scrollViewWillBeginDragging:(id)dragging contentScrollView:(id)view;
- (void)didBecomeCurrentStateCardViewController:(id)controller previousState:(id)state cardData:(id)data;
- (void)setFractionComplete:(double)complete cardData:(id)data;
@end

@implementation BCCardSetExpandingState

- (void)setFractionComplete:(double)complete cardData:(id)data
{
  animator = [data animator];
  [animator setFractionComplete:complete];
}

- (void)didBecomeCurrentStateCardViewController:(id)controller previousState:(id)state cardData:(id)data
{
  v9.receiver = self;
  v9.super_class = BCCardSetExpandingState;
  dataCopy = data;
  [(BCCardSetTransitioningState *)&v9 didBecomeCurrentStateCardViewController:controller previousState:state cardData:dataCopy];
  cardSetData = [dataCopy cardSetData];

  [cardSetData goExpandedInteractive:1];
}

- (void)cardViewController:(id)controller cardData:(id)data scrollViewWillBeginDragging:(id)dragging contentScrollView:(id)view
{
  dataCopy = data;
  draggingCopy = dragging;
  viewCopy = view;
  animator = [dataCopy animator];

  if (animator)
  {
    [(BCCardSetTransitioningState *)self _resetInteractiveAnimationWithScrollView:draggingCopy cardData:dataCopy];
    delegate = [viewCopy delegate];
    [delegate scrollViewWillBeginDragging:viewCopy];
  }

  else
  {
    sub_1EBB70(v12, v13, v14, v15, v16, v17, v18, v19);
  }
}

@end