@interface BCCardSetPushedContractedState
- (void)cardViewController:(id)controller contentScrollViewDidChange:(id)change cardData:(id)data;
- (void)cardViewController:(id)controller scrollToTopAnimated:(BOOL)animated cardData:(id)data;
- (void)didBecomeCurrentStateCardViewController:(id)controller previousState:(id)state cardData:(id)data;
- (void)willStopBeingCurrentStateCardViewController:(id)controller newState:(id)state cardDate:(id)date;
@end

@implementation BCCardSetPushedContractedState

- (void)didBecomeCurrentStateCardViewController:(id)controller previousState:(id)state cardData:(id)data
{
  controllerCopy = controller;
  stateCopy = state;
  dataCopy = data;
  contentContainerView = [controllerCopy contentContainerView];
  [contentContainerView setClipsToBounds:1];

  v12 = +[BCCardSetState contractedState];

  if (v12 == stateCopy)
  {
    y = CGPointZero.y;
    scrollView = [controllerCopy scrollView];
    [scrollView setContentOffset:{CGPointZero.x, y}];

    cardView = [controllerCopy cardView];
    v23 = *&CGAffineTransformIdentity.c;
    v29 = *&CGAffineTransformIdentity.a;
    v24 = v29;
    v30 = v23;
    v31 = *&CGAffineTransformIdentity.tx;
    v22 = v31;
    [cardView setTransform:&v29];

    cardNavigationController = [controllerCopy cardNavigationController];
    view = [cardNavigationController view];
    v29 = v24;
    v30 = v23;
    v31 = v22;
    [view setTransform:&v29];

    cardNavigationController2 = [controllerCopy cardNavigationController];
    view2 = [cardNavigationController2 view];
    v20 = view2;
    if (view2)
    {
      [view2 transform];
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
    }

    auxiliaryNavigationBarView = [controllerCopy auxiliaryNavigationBarView];
    v29 = v26;
    v30 = v27;
    v31 = v28;
    [auxiliaryNavigationBarView setTransform:&v29];
  }

  [dataCopy _updateScrollViewContentInset];
  v25.receiver = self;
  v25.super_class = BCCardSetPushedContractedState;
  [(BCCardSetContractedState *)&v25 didBecomeCurrentStateCardViewController:controllerCopy previousState:stateCopy cardData:dataCopy];
}

- (void)cardViewController:(id)controller contentScrollViewDidChange:(id)change cardData:(id)data
{
  dataCopy = data;
  changeCopy = change;
  controllerCopy = controller;
  [(BCCardSetContractedState *)self cardViewController:controllerCopy cardScrollViewOffsetForContentScrollView:changeCopy cardData:dataCopy];
  v12 = v11;
  scrollView = [controllerCopy scrollView];
  [scrollView contentOffset];
  v15 = v14;

  scrollView2 = [controllerCopy scrollView];
  [scrollView2 setContentOffset:{v15, v12}];

  [(BCCardSetContractedState *)self cardViewController:controllerCopy repositionOffsetsWithContentScrollView:changeCopy cardData:dataCopy];
  configuration = [dataCopy configuration];

  LODWORD(dataCopy) = [configuration cardsCanExpand];
  scrollView3 = [controllerCopy scrollView];

  [scrollView3 setShowsVerticalScrollIndicator:dataCopy ^ 1];
}

- (void)willStopBeingCurrentStateCardViewController:(id)controller newState:(id)state cardDate:(id)date
{
  controllerCopy = controller;
  dateCopy = date;
  stateCopy = state;
  if (([stateCopy transitioning] & 1) == 0)
  {
    contentScrollView = [controllerCopy contentScrollView];
    [(BCCardSetContractedState *)self cardViewController:controllerCopy repositionOffsetsWithContentScrollView:contentScrollView cardData:dateCopy];
  }

  [(BCCardSetPushedContractedState *)self setPopping:1];
  [dateCopy _updateScrollViewContentInset];
  [(BCCardSetPushedContractedState *)self setPopping:0];
  v12.receiver = self;
  v12.super_class = BCCardSetPushedContractedState;
  [(BCCardSetState *)&v12 willStopBeingCurrentStateCardViewController:controllerCopy newState:stateCopy cardDate:dateCopy];
}

- (void)cardViewController:(id)controller scrollToTopAnimated:(BOOL)animated cardData:(id)data
{
  animatedCopy = animated;
  scrollView = [controller scrollView];
  [(BCCardSetState *)self _scrollScrollViewToTopForCardViewController:scrollView animated:animatedCopy];
}

@end