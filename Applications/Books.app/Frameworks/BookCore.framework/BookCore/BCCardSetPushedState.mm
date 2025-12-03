@interface BCCardSetPushedState
- (void)cardViewController:(id)controller contentScrollViewDidChange:(id)change cardData:(id)data;
- (void)cardViewController:(id)controller scrollToTopAnimated:(BOOL)animated cardData:(id)data;
- (void)cardViewController:(id)controller updateContentSize:(CGSize)size;
- (void)cardViewControllerUpdateCardSize:(id)size;
- (void)didBecomeCurrentStateCardViewController:(id)controller previousState:(id)state cardData:(id)data;
- (void)willStopBeingCurrentStateCardViewController:(id)controller newState:(id)state cardDate:(id)date;
@end

@implementation BCCardSetPushedState

- (void)didBecomeCurrentStateCardViewController:(id)controller previousState:(id)state cardData:(id)data
{
  controllerCopy = controller;
  v41.receiver = self;
  v41.super_class = BCCardSetPushedState;
  dataCopy = data;
  [(BCCardSetState *)&v41 didBecomeCurrentStateCardViewController:controllerCopy previousState:state cardData:dataCopy];
  cardNavigationController = [controllerCopy cardNavigationController];
  view = [cardNavigationController view];
  v33 = *&CGAffineTransformIdentity.c;
  v34 = *&CGAffineTransformIdentity.a;
  v38 = *&CGAffineTransformIdentity.a;
  v39 = v33;
  v32 = *&CGAffineTransformIdentity.tx;
  v40 = v32;
  [view setTransform:&v38];

  cardNavigationController2 = [controllerCopy cardNavigationController];
  view2 = [cardNavigationController2 view];
  v14 = view2;
  if (view2)
  {
    [view2 transform];
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
  }

  auxiliaryNavigationBarView = [controllerCopy auxiliaryNavigationBarView];
  v38 = v35;
  v39 = v36;
  v40 = v37;
  [auxiliaryNavigationBarView setTransform:&v38];

  cardView = [controllerCopy cardView];
  v38 = v34;
  v39 = v33;
  v40 = v32;
  [cardView setTransform:&v38];

  contentScrollView = [controllerCopy contentScrollView];
  [(BCCardSetPushedState *)self cardViewController:controllerCopy contentScrollViewDidChange:contentScrollView cardData:dataCopy];

  y = CGPointZero.y;
  scrollView = [controllerCopy scrollView];
  [scrollView setContentOffset:{CGPointZero.x, y}];

  scrollView2 = [controllerCopy scrollView];
  [scrollView2 setShowsVerticalScrollIndicator:0];

  scrollView3 = [controllerCopy scrollView];
  [scrollView3 setScrollEnabled:0];

  view3 = [controllerCopy view];
  [view3 bounds];
  CGRectMakeWithSize();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  cardView2 = [controllerCopy cardView];
  [cardView2 setFrame:{v24, v26, v28, v30}];
}

- (void)willStopBeingCurrentStateCardViewController:(id)controller newState:(id)state cardDate:(id)date
{
  controllerCopy = controller;
  dateCopy = date;
  stateCopy = state;
  [(BCCardSetPushedState *)self setPopping:1];
  [dateCopy _updateCardFrames];
  [dateCopy _updateScrollViewContentInset];

  scrollView = [controllerCopy scrollView];
  [scrollView setScrollEnabled:1];

  LODWORD(scrollView) = [stateCopy transitioning];
  if (scrollView)
  {
    contentScrollView = [controllerCopy contentScrollView];
    [contentScrollView setScrollEnabled:0];

    contentScrollView2 = [controllerCopy contentScrollView];
    [contentScrollView2 setShowsVerticalScrollIndicator:0];
  }

  [(BCCardSetPushedState *)self setPopping:0];
}

- (void)cardViewController:(id)controller contentScrollViewDidChange:(id)change cardData:(id)data
{
  changeCopy = change;
  [changeCopy setShowsVerticalScrollIndicator:1];
  [changeCopy setScrollEnabled:1];
}

- (void)cardViewController:(id)controller updateContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  controllerCopy = controller;
  [(BCCardSetState *)self _adjustedContentSizeForCardViewController:controllerCopy contentSize:0 includeDistanceToExpand:width, height];
  v9 = v8;
  v11 = v10;
  scrollView = [controllerCopy scrollView];

  [scrollView setContentSize:{v9, v11}];
}

- (void)cardViewControllerUpdateCardSize:(id)size
{
  sizeCopy = size;
  if ([(BCCardSetPushedState *)self popping])
  {
    [(BCCardSetState *)self updateCardSize:sizeCopy addExtra:1];
  }

  else
  {
    configuration = [sizeCopy configuration];
    -[BCCardSetState updateCardSize:addExtra:](self, "updateCardSize:addExtra:", sizeCopy, [configuration cardsCanExpand] ^ 1);
  }
}

- (void)cardViewController:(id)controller scrollToTopAnimated:(BOOL)animated cardData:(id)data
{
  animatedCopy = animated;
  contentScrollView = [controller contentScrollView];
  [(BCCardSetState *)self _scrollScrollViewToTopForCardViewController:contentScrollView animated:animatedCopy];
}

@end