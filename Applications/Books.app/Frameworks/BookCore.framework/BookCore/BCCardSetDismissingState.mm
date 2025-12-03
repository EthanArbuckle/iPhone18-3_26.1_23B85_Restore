@interface BCCardSetDismissingState
- (void)_finishAnimationWithScrollView:(id)view cardViewController:(id)controller cardData:(id)data;
- (void)cardViewController:(id)controller cardData:(id)data scrollViewDidEndDecelerating:(id)decelerating contentScrollView:(id)view;
- (void)cardViewController:(id)controller cardData:(id)data scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate contentScrollView:(id)view;
- (void)cardViewController:(id)controller cardData:(id)data scrollViewDidScroll:(id)scroll contentScrollView:(id)view;
- (void)cardViewController:(id)controller cardData:(id)data scrollViewWillBeginDragging:(id)dragging contentScrollView:(id)view;
- (void)cardViewController:(id)controller contentScrollViewDidChange:(id)change cardData:(id)data;
- (void)cardViewController:(id)controller dismissPan:(id)pan cardData:(id)data;
- (void)cardViewController:(id)controller willDismissWithCardData:(id)data;
- (void)didBecomeCurrentStateCardViewController:(id)controller previousState:(id)state cardData:(id)data;
@end

@implementation BCCardSetDismissingState

- (void)didBecomeCurrentStateCardViewController:(id)controller previousState:(id)state cardData:(id)data
{
  v11.receiver = self;
  v11.super_class = BCCardSetDismissingState;
  dataCopy = data;
  controllerCopy = controller;
  [(BCCardSetState *)&v11 didBecomeCurrentStateCardViewController:controllerCopy previousState:state cardData:dataCopy];
  contentScrollView = [controllerCopy contentScrollView];
  [(BCCardSetDismissingState *)self cardViewController:controllerCopy contentScrollViewDidChange:contentScrollView cardData:dataCopy];
}

- (void)cardViewController:(id)controller contentScrollViewDidChange:(id)change cardData:(id)data
{
  scrollView = [controller scrollView];
  [scrollView setShowsVerticalScrollIndicator:0];
}

- (void)cardViewController:(id)controller cardData:(id)data scrollViewWillBeginDragging:(id)dragging contentScrollView:(id)view
{
  viewCopy = view;
  dataCopy = data;
  objc_opt_class();
  animator = [dataCopy animator];
  v10 = BUDynamicCast();
  [v10 pauseDismissCancellationAndReset];
  [dataCopy setRawCurrentCardOffset:?];

  delegate = [viewCopy delegate];
  [delegate scrollViewWillBeginDragging:viewCopy];
}

- (void)cardViewController:(id)controller cardData:(id)data scrollViewDidScroll:(id)scroll contentScrollView:(id)view
{
  controllerCopy = controller;
  dataCopy = data;
  scrollCopy = scroll;
  [scrollCopy contentOffset];
  v12 = v11;
  [scrollCopy adjustedContentInset];
  v14 = v12 + v13;
  [dataCopy rawCurrentCardOffset];
  [dataCopy setRawCurrentCardOffset:v15 - v14];
  [dataCopy rawCurrentCardOffset];
  if (v16 <= 0.0)
  {
    [dataCopy setRawCurrentCardOffset:0.0];
    [dataCopy rawCurrentCardOffset];
    v22 = v23;
    animator = [dataCopy animator];
    [animator setFractionComplete:0.0];

    animator2 = [dataCopy animator];
    [animator2 stopAnimation:0];

    animator3 = [dataCopy animator];
    [animator3 finishAnimationAtPosition:1];

    [dataCopy setAnimator:0];
    if ([controllerCopy itemPushedOnCard])
    {
      +[BCCardSetState pushedContractedState];
    }

    else
    {
      +[BCCardSetState contractedState];
    }
    animator5 = ;
    [dataCopy setCurrentState:animator5];
  }

  else
  {
    animator4 = [dataCopy animator];

    if (!animator4)
    {
      cardSetData = [dataCopy cardSetData];
      animatorForInteractiveDismiss = [cardSetData animatorForInteractiveDismiss];
      [dataCopy setAnimator:animatorForInteractiveDismiss];
    }

    objc_opt_class();
    animator5 = [dataCopy animator];
    v21 = BUDynamicCast();
    [dataCopy rawCurrentCardOffset];
    [v21 updateDismissFractionCompleteWithCardOffset:?];

    v22 = 0.0;
  }

  [scrollCopy adjustedContentInset];
  [(BCCardSetState *)self adjustScrollView:scrollCopy newContentOffset:dataCopy cardData:-v22 - v27];
}

- (void)_finishAnimationWithScrollView:(id)view cardViewController:(id)controller cardData:(id)data
{
  viewCopy = view;
  controllerCopy = controller;
  dataCopy = data;
  [dataCopy scrollViewVerticalVelocityWhenDraggingEnded];
  v11 = v10 * -1000.0;
  objc_opt_class();
  animator = [dataCopy animator];
  v13 = BUDynamicCast();

  v14 = 0.0;
  [dataCopy setScrollViewVerticalVelocityWhenDraggingEnded:0.0];
  if (v11 < 0.0 || v11 < 3000.0 && ([dataCopy rawCurrentCardOffset], v17 = v16, objc_msgSend(dataCopy, "cardSetData"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "cutoffToDismissScrollView:", viewCopy), v20 = v19, v18, v17 <= v20))
  {
    [dataCopy rawCurrentCardOffset];
    if (fabs(v15) >= 2.22044605e-16)
    {
      v14 = -v11 / v15;
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1534A0;
    v22[3] = &unk_2C8200;
    v23 = dataCopy;
    v24 = controllerCopy;
    [v13 animateDismissCancellationWithVelocity:v22 completion:v14];
  }

  else
  {
    [v13 stopAnimation:1];
    [dataCopy setAnimator:0];
    [dataCopy setRawCurrentCardOffset:0.0];
    cardSetData = [dataCopy cardSetData];
    [cardSetData _didCommitDismissWithVelocity:v13 interactiveAnimator:v11];
  }
}

- (void)cardViewController:(id)controller cardData:(id)data scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate contentScrollView:(id)view
{
  controllerCopy = controller;
  dataCopy = data;
  draggingCopy = dragging;
  animator = [dataCopy animator];

  if (animator && !decelerate)
  {
    [(BCCardSetDismissingState *)self _finishAnimationWithScrollView:draggingCopy cardViewController:controllerCopy cardData:dataCopy];
  }
}

- (void)cardViewController:(id)controller cardData:(id)data scrollViewDidEndDecelerating:(id)decelerating contentScrollView:(id)view
{
  controllerCopy = controller;
  dataCopy = data;
  deceleratingCopy = decelerating;
  animator = [dataCopy animator];

  if (animator)
  {
    [(BCCardSetDismissingState *)self _finishAnimationWithScrollView:deceleratingCopy cardViewController:controllerCopy cardData:dataCopy];
  }
}

- (void)cardViewController:(id)controller willDismissWithCardData:(id)data
{
  v8.receiver = self;
  v8.super_class = BCCardSetDismissingState;
  dataCopy = data;
  [(BCCardSetState *)&v8 cardViewController:controller willDismissWithCardData:dataCopy];
  objc_opt_class();
  animator = [dataCopy animator];

  v7 = BUDynamicCast();

  [v7 stopAnimation:1];
}

- (void)cardViewController:(id)controller dismissPan:(id)pan cardData:(id)data
{
  controllerCopy = controller;
  panCopy = pan;
  dataCopy = data;
  state = [panCopy state];
  if ((state - 3) >= 3)
  {
    if (state != &dword_0 + 2)
    {
      goto LABEL_8;
    }

    cardView = [controllerCopy cardView];
    [panCopy translationInView:cardView];
    [dataCopy setRawCurrentCardOffset:v16];

    animator = [dataCopy animator];

    if (!animator)
    {
      cardSetData = [dataCopy cardSetData];
      animatorForInteractiveDismiss = [cardSetData animatorForInteractiveDismiss];
      [dataCopy setAnimator:animatorForInteractiveDismiss];
    }

    objc_opt_class();
    animator2 = [dataCopy animator];
    v20 = BUDynamicCast();
    [dataCopy rawCurrentCardOffset];
    [v20 updateDismissFractionCompleteWithCardOffset:?];
  }

  else
  {
    scrollView = [controllerCopy scrollView];
    [scrollView setScrollEnabled:1];

    cardView2 = [controllerCopy cardView];
    [panCopy velocityInView:cardView2];
    [dataCopy setScrollViewVerticalVelocityWhenDraggingEnded:v13 / -1000.0];

    animator2 = [controllerCopy scrollView];
    [(BCCardSetDismissingState *)self _finishAnimationWithScrollView:animator2 cardViewController:controllerCopy cardData:dataCopy];
  }

LABEL_8:
}

@end