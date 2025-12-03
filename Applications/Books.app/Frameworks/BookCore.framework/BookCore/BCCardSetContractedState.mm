@interface BCCardSetContractedState
- (BOOL)cardViewController:(id)controller dismissPanShouldBegin:(id)begin cardData:(id)data;
- (double)_cardViewControllerAuxiliaryNavigationBarAlpha:(id)alpha cardData:(id)data;
- (double)cardViewController:(id)controller cardScrollViewOffsetForContentScrollView:(id)view cardData:(id)data;
- (void)cardViewController:(id)controller accessibilityWantsToScrollToOffset:(CGPoint)offset cardData:(id)data;
- (void)cardViewController:(id)controller cardData:(id)data scrollViewDidScroll:(id)scroll contentScrollView:(id)view;
- (void)cardViewController:(id)controller cardData:(id)data scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset contentScrollView:(id)view;
- (void)cardViewController:(id)controller contentScrollViewDidChange:(id)change cardData:(id)data;
- (void)cardViewController:(id)controller repositionOffsetsWithContentScrollView:(id)view cardData:(id)data;
- (void)cardViewController:(id)controller scrollToTopAnimated:(BOOL)animated cardData:(id)data;
- (void)didBecomeCurrentStateCardViewController:(id)controller previousState:(id)state cardData:(id)data;
- (void)updateScrollViewsWhenCantExpandCardViewController:(id)controller cardScrollView:(id)view contentScrollView:(id)scrollView;
@end

@implementation BCCardSetContractedState

- (void)didBecomeCurrentStateCardViewController:(id)controller previousState:(id)state cardData:(id)data
{
  v11.receiver = self;
  v11.super_class = BCCardSetContractedState;
  dataCopy = data;
  controllerCopy = controller;
  [(BCCardSetState *)&v11 didBecomeCurrentStateCardViewController:controllerCopy previousState:state cardData:dataCopy];
  contentScrollView = [controllerCopy contentScrollView];
  [(BCCardSetContractedState *)self cardViewController:controllerCopy contentScrollViewDidChange:contentScrollView cardData:dataCopy];
}

- (void)updateScrollViewsWhenCantExpandCardViewController:(id)controller cardScrollView:(id)view contentScrollView:(id)scrollView
{
  viewCopy = view;
  scrollViewCopy = scrollView;
  controllerCopy = controller;
  [viewCopy contentOffset];
  v10 = v9;
  [viewCopy adjustedContentInset];
  v12 = v11;

  [viewCopy contentSize];
  v14 = v13;
  topContentViewController = [controllerCopy topContentViewController];

  LODWORD(controllerCopy) = [topContentViewController prefersAdditionalSafeAreaInsetsForInsetting];
  if (controllerCopy)
  {
    [scrollViewCopy adjustedContentInset];
  }

  else
  {
    [scrollViewCopy contentInset];
  }

  v17 = v10 + v12;
  if (v10 + v12 >= v14)
  {
    v17 = v14;
  }

  [scrollViewCopy setContentOffset:{0.0, v17 - v16}];
}

- (void)cardViewController:(id)controller contentScrollViewDidChange:(id)change cardData:(id)data
{
  dataCopy = data;
  controllerCopy = controller;
  contentScrollView = [controllerCopy contentScrollView];
  [(BCCardSetContractedState *)self cardViewController:controllerCopy repositionOffsetsWithContentScrollView:contentScrollView cardData:dataCopy];

  configuration = [dataCopy configuration];

  LODWORD(self) = [configuration cardsCanExpand];
  scrollView = [controllerCopy scrollView];

  [scrollView setShowsVerticalScrollIndicator:self ^ 1];
}

- (void)cardViewController:(id)controller repositionOffsetsWithContentScrollView:(id)view cardData:(id)data
{
  controllerCopy = controller;
  viewCopy = view;
  dataCopy = data;
  configuration = [dataCopy configuration];
  cardsCanExpand = [configuration cardsCanExpand];

  if (cardsCanExpand)
  {
    v14.receiver = self;
    v14.super_class = BCCardSetContractedState;
    [(BCCardSetState *)&v14 cardViewController:controllerCopy repositionOffsetsWithContentScrollView:viewCopy cardData:dataCopy];
  }

  else if (viewCopy)
  {
    scrollView = [controllerCopy scrollView];
    [(BCCardSetContractedState *)self updateScrollViewsWhenCantExpandCardViewController:controllerCopy cardScrollView:scrollView contentScrollView:viewCopy];
  }
}

- (double)cardViewController:(id)controller cardScrollViewOffsetForContentScrollView:(id)view cardData:(id)data
{
  viewCopy = view;
  dataCopy = data;
  controllerCopy = controller;
  configuration = [dataCopy configuration];
  cardsCanExpand = [configuration cardsCanExpand];

  if (cardsCanExpand)
  {
    v21.receiver = self;
    v21.super_class = BCCardSetContractedState;
    [(BCCardSetState *)&v21 cardViewController:controllerCopy cardScrollViewOffsetForContentScrollView:viewCopy cardData:dataCopy];
    v14 = v13;
  }

  else
  {
    topContentViewController = [controllerCopy topContentViewController];

    prefersAdditionalSafeAreaInsetsForInsetting = [topContentViewController prefersAdditionalSafeAreaInsetsForInsetting];
    [viewCopy contentOffset];
    v18 = v17;
    if (prefersAdditionalSafeAreaInsetsForInsetting)
    {
      [viewCopy adjustedContentInset];
    }

    else
    {
      [viewCopy contentInset];
    }

    v14 = v18 + v19;
  }

  return v14;
}

- (void)cardViewController:(id)controller cardData:(id)data scrollViewDidScroll:(id)scroll contentScrollView:(id)view
{
  controllerCopy = controller;
  dataCopy = data;
  scrollCopy = scroll;
  viewCopy = view;
  [scrollCopy contentOffset];
  v15 = v14;
  [scrollCopy adjustedContentInset];
  v17 = v15 + v16;
  topContentViewController = [controllerCopy topContentViewController];
  shouldOnlyAllowDismiss = [topContentViewController shouldOnlyAllowDismiss];

  if (shouldOnlyAllowDismiss && v17 > 0.0)
  {
    [scrollCopy contentOffset];
    v21 = v20;
    [scrollCopy adjustedContentInset];
    [scrollCopy setContentOffset:{v21, v22}];
  }

  else
  {
    view = [controllerCopy view];
    v24 = view;
    if (view)
    {
      [view transform];
      v25 = *(&v36 + 1);
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v25 = 0.0;
    }

    [dataCopy setRawCurrentCardOffset:{v25, v34, v35, v36}];

    if (v17 <= 0.0)
    {
      [scrollCopy setShowsVerticalScrollIndicator:0];
      if (([scrollCopy isDecelerating] & 1) == 0)
      {
        v30 = +[BCCardSetState dismissingState];
        [dataCopy setCurrentState:v30];

        currentState = [dataCopy currentState];
        [currentState cardViewController:controllerCopy cardData:dataCopy scrollViewDidScroll:scrollCopy contentScrollView:viewCopy];
      }

      contentScrollView = [controllerCopy contentScrollView];
      scrollView = [controllerCopy scrollView];
      [(BCCardSetState *)self updateCardViewController:controllerCopy contentScrollView:contentScrollView basedOnCardScrollView:scrollView cardData:dataCopy];
    }

    else
    {
      [scrollCopy setShowsVerticalScrollIndicator:1];
      configuration = [dataCopy configuration];
      cardsCanExpand = [configuration cardsCanExpand];

      if (cardsCanExpand)
      {
        v28 = +[BCCardSetState expandingState];
        [dataCopy setCurrentState:v28];

        currentState2 = [dataCopy currentState];
        [currentState2 cardViewController:controllerCopy cardData:dataCopy scrollViewDidScroll:scrollCopy contentScrollView:viewCopy];
      }

      else
      {
        [(BCCardSetContractedState *)self updateScrollViewsWhenCantExpandCardViewController:controllerCopy cardScrollView:scrollCopy contentScrollView:viewCopy];
      }
    }
  }
}

- (void)cardViewController:(id)controller cardData:(id)data scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset contentScrollView:(id)view
{
  y = velocity.y;
  x = velocity.x;
  controllerCopy = controller;
  dataCopy = data;
  draggingCopy = dragging;
  viewCopy = view;
  configuration = [dataCopy configuration];
  cardsCanExpand = [configuration cardsCanExpand];

  if (cardsCanExpand)
  {
    v21.receiver = self;
    v21.super_class = BCCardSetContractedState;
    [(BCCardSetState *)&v21 cardViewController:controllerCopy cardData:dataCopy scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:viewCopy contentScrollView:x, y];
  }
}

- (void)cardViewController:(id)controller scrollToTopAnimated:(BOOL)animated cardData:(id)data
{
  animatedCopy = animated;
  contentScrollView = [controller contentScrollView];
  [(BCCardSetState *)self _scrollScrollViewToTopForCardViewController:contentScrollView animated:animatedCopy];
}

- (void)cardViewController:(id)controller accessibilityWantsToScrollToOffset:(CGPoint)offset cardData:(id)data
{
  y = offset.y;
  x = offset.x;
  controllerCopy = controller;
  dataCopy = data;
  if (y >= 0.0)
  {
    configuration = [controllerCopy configuration];
    cardsCanExpand = [configuration cardsCanExpand];

    if (cardsCanExpand)
    {
      cardSetViewController = [controllerCopy cardSetViewController];
      [cardSetViewController scaledContractedOffset];
      v15 = v14;
      configuration2 = [controllerCopy configuration];
      [configuration2 cardExpandedTopOffset];
      v18 = v15 - v17;

      contentScrollView = [controllerCopy contentScrollView];
      [contentScrollView adjustedContentInset];
      v21 = v18 - v20;

      v22 = +[BCCardSetState expandingState];
      [controllerCopy setCurrentState:v22];

      scrollView = [controllerCopy scrollView];
      animator = [controllerCopy animator];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1518D4;
      v30[3] = &unk_2C7DB8;
      v31 = scrollView;
      v32 = 0;
      v33 = v21;
      v25 = scrollView;
      [animator addAnimations:v30];

      animator2 = [controllerCopy animator];
      [animator2 startAnimation];
    }

    else
    {
      scrollView2 = [controllerCopy scrollView];
      [scrollView2 setContentOffset:{x, y}];

      scrollView3 = [controllerCopy scrollView];
      contentScrollView2 = [controllerCopy contentScrollView];
      [(BCCardSetContractedState *)self updateScrollViewsWhenCantExpandCardViewController:controllerCopy cardScrollView:scrollView3 contentScrollView:contentScrollView2];
    }
  }
}

- (BOOL)cardViewController:(id)controller dismissPanShouldBegin:(id)begin cardData:(id)data
{
  configuration = [controller configuration];
  if ([configuration cardsCanExpand])
  {
    v6 = _os_feature_enabled_impl();
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (double)_cardViewControllerAuxiliaryNavigationBarAlpha:(id)alpha cardData:(id)data
{
  alphaCopy = alpha;
  cardNavigationController = [alphaCopy cardNavigationController];
  viewControllers = [cardNavigationController viewControllers];
  v7 = 0.0;
  if ([viewControllers count] <= 1)
  {
    cardSetViewController = [alphaCopy cardSetViewController];
    currentCardViewController = [cardSetViewController currentCardViewController];
    if (currentCardViewController == alphaCopy)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }
  }

  return v7;
}

@end