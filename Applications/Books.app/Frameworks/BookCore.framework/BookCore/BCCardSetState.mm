@interface BCCardSetState
+ (BCCardSetContractedState)contractedState;
+ (BCCardSetContractingState)contractingState;
+ (BCCardSetDismissingState)dismissingState;
+ (BCCardSetExpandedState)expandedState;
+ (BCCardSetExpandingState)expandingState;
+ (BCCardSetPushedContractedState)pushedContractedState;
+ (BCCardSetPushedState)pushedState;
+ (id)cardViewControllerContractedState:(id)state;
+ (id)cardViewControllerExpandedState:(id)state;
- (CGSize)_adjustedContentSizeForCardViewController:(id)controller contentSize:(CGSize)size includeDistanceToExpand:(BOOL)expand;
- (double)cardViewController:(id)controller cardScrollViewOffsetForContentScrollView:(id)view cardData:(id)data;
- (double)cardViewController:(id)controller cardYPositionInScreenFromCardScrollView:(id)view cardData:(id)data;
- (double)cardViewControllerStatusBarBackgroundOpacity:(id)opacity;
- (double)yInScreenFromYInScrollView:(double)view cardViewController:(id)controller cardData:(id)data;
- (double)yInScrollView:(id)view cardViewController:(id)controller;
- (void)_scrollScrollViewToTopForCardViewController:(id)controller animated:(BOOL)animated;
- (void)adjustScrollView:(id)view newContentOffset:(double)offset allowRecursion:(BOOL)recursion cardData:(id)data;
- (void)cardViewController:(id)controller accessibilityWantsToScrollToOffset:(CGPoint)offset cardData:(id)data;
- (void)cardViewController:(id)controller cardData:(id)data scrollViewWillBeginDragging:(id)dragging contentScrollView:(id)view;
- (void)cardViewController:(id)controller cardData:(id)data scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset contentScrollView:(id)view;
- (void)cardViewController:(id)controller contentScrollViewDidChange:(id)change cardData:(id)data;
- (void)cardViewController:(id)controller dismissPan:(id)pan cardData:(id)data;
- (void)cardViewController:(id)controller positionAuxiliaryNavigationBarView:(id)view cardDate:(id)date;
- (void)cardViewController:(id)controller positionCardScrollViewBasedOnContentScrollView:(id)view cardDate:(id)date;
- (void)cardViewController:(id)controller repositionOffsetsWithContentScrollView:(id)view cardData:(id)data;
- (void)cardViewController:(id)controller updateContentSize:(CGSize)size;
- (void)cardViewController:(id)controller willDismissWithCardData:(id)data;
- (void)updateCardSize:(id)size addExtra:(BOOL)extra;
- (void)updateCardViewController:(id)controller contentScrollView:(id)view basedOnCardScrollView:(id)scrollView cardData:(id)data;
@end

@implementation BCCardSetState

+ (BCCardSetExpandedState)expandedState
{
  if (qword_345F80 != -1)
  {
    sub_1EBA48();
  }

  v3 = qword_345F78;

  return v3;
}

+ (BCCardSetContractedState)contractedState
{
  if (qword_345F90 != -1)
  {
    sub_1EBA5C();
  }

  v3 = qword_345F88;

  return v3;
}

+ (BCCardSetExpandingState)expandingState
{
  if (qword_345FA0 != -1)
  {
    sub_1EBA70();
  }

  v3 = qword_345F98;

  return v3;
}

+ (BCCardSetContractingState)contractingState
{
  if (qword_345FB0 != -1)
  {
    sub_1EBA84();
  }

  v3 = qword_345FA8;

  return v3;
}

+ (BCCardSetDismissingState)dismissingState
{
  if (qword_345FC0 != -1)
  {
    sub_1EBA98();
  }

  v3 = qword_345FB8;

  return v3;
}

+ (BCCardSetPushedState)pushedState
{
  if (qword_345FD0 != -1)
  {
    sub_1EBAAC();
  }

  v3 = qword_345FC8;

  return v3;
}

+ (BCCardSetPushedContractedState)pushedContractedState
{
  if (qword_345FE0 != -1)
  {
    sub_1EBAC0();
  }

  v3 = qword_345FD8;

  return v3;
}

+ (id)cardViewControllerExpandedState:(id)state
{
  cardNavigationController = [state cardNavigationController];
  childViewControllers = [cardNavigationController childViewControllers];
  if ([childViewControllers count] > 1)
  {
    [self pushedState];
  }

  else
  {
    [self expandedState];
  }
  v6 = ;

  return v6;
}

+ (id)cardViewControllerContractedState:(id)state
{
  cardNavigationController = [state cardNavigationController];
  childViewControllers = [cardNavigationController childViewControllers];
  if ([childViewControllers count] > 1)
  {
    [self pushedContractedState];
  }

  else
  {
    [self contractedState];
  }
  v6 = ;

  return v6;
}

- (double)cardViewControllerStatusBarBackgroundOpacity:(id)opacity
{
  opacityCopy = opacity;
  v4 = 0.0;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    cardNavigationController = [opacityCopy cardNavigationController];
    if ([cardNavigationController isNavigationBarHidden])
    {
      v4 = 1.0;
    }

    else
    {
      v4 = 0.0;
    }
  }

  return v4;
}

- (double)cardViewController:(id)controller cardYPositionInScreenFromCardScrollView:(id)view cardData:(id)data
{
  dataCopy = data;
  controllerCopy = controller;
  [(BCCardSetState *)self yInScrollView:view cardViewController:controllerCopy];
  [(BCCardSetState *)self yInScreenFromYInScrollView:controllerCopy cardViewController:dataCopy cardData:?];
  v11 = v10;

  return v11;
}

- (double)yInScrollView:(id)view cardViewController:(id)controller
{
  viewCopy = view;
  controllerCopy = controller;
  [viewCopy contentOffset];
  v8 = v7;
  [viewCopy adjustedContentInset];
  v10 = v8 + v9;

  cardSetViewController = [controllerCopy cardSetViewController];

  [cardSetViewController scaledContractedOffset];
  v13 = v12 - v10;

  return v13;
}

- (double)yInScreenFromYInScrollView:(double)view cardViewController:(id)controller cardData:(id)data
{
  dataCopy = data;
  controllerCopy = controller;
  cardSetData = [dataCopy cardSetData];
  scrollView = [cardSetData scrollView];
  layer = [scrollView layer];

  presentationLayer = [layer presentationLayer];
  if (presentationLayer)
  {
    animator = [dataCopy animator];
    v14 = animator != 0;
  }

  else
  {
    v14 = 0;
  }

  cardSetViewController = [controllerCopy cardSetViewController];

  view = [cardSetViewController view];
  layer2 = [view layer];

  if (v14)
  {
    presentationLayer2 = [layer2 presentationLayer];

    presentationLayer3 = [layer presentationLayer];

    layer = presentationLayer3;
    layer2 = presentationLayer2;
  }

  [layer convertPoint:layer2 toLayer:{0.0, view}];
  v21 = v20;

  return v21;
}

- (void)cardViewController:(id)controller repositionOffsetsWithContentScrollView:(id)view cardData:(id)data
{
  dataCopy = data;
  viewCopy = view;
  controllerCopy = controller;
  scrollView = [controllerCopy scrollView];
  [(BCCardSetState *)self updateCardViewController:controllerCopy contentScrollView:viewCopy basedOnCardScrollView:scrollView cardData:dataCopy];
}

- (void)updateCardViewController:(id)controller contentScrollView:(id)view basedOnCardScrollView:(id)scrollView cardData:(id)data
{
  controllerCopy = controller;
  viewCopy = view;
  scrollViewCopy = scrollView;
  dataCopy = data;
  configuration = [dataCopy configuration];
  [configuration cardExpandedTopOffset];
  v16 = v15;

  cardSetData = [dataCopy cardSetData];
  scrollView = [cardSetData scrollView];
  layer = [scrollView layer];

  presentationLayer = [layer presentationLayer];
  if (presentationLayer)
  {
    animator = [dataCopy animator];
    v22 = animator != 0;
  }

  else
  {
    v22 = 0;
  }

  cardSetViewController = [controllerCopy cardSetViewController];
  view = [cardSetViewController view];
  layer2 = [view layer];

  if (v22)
  {
    presentationLayer2 = [layer2 presentationLayer];

    presentationLayer3 = [layer presentationLayer];

    layer2 = presentationLayer2;
    layer = presentationLayer3;
  }

  [layer2 frame];
  [layer convertRect:layer2 fromLayer:?];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  [(BCCardSetState *)self yInScrollView:scrollViewCopy cardViewController:controllerCopy];
  v37 = v36;
  v66.origin.x = v29;
  v66.origin.y = v31;
  v66.size.width = v33;
  v66.size.height = v35;
  v38 = CGRectGetMinY(v66) - v37;
  [layer2 convertPoint:layer toLayer:{0.0, v16}];
  v40 = fmin(v38, -v39);
  v41 = scrollViewCopy;
  topContentViewController = [controllerCopy topContentViewController];
  prefersAdditionalSafeAreaInsetsForInsetting = [topContentViewController prefersAdditionalSafeAreaInsetsForInsetting];

  [v41 contentOffset];
  v45 = v44;
  if (prefersAdditionalSafeAreaInsetsForInsetting)
  {
    [v41 adjustedContentInset];
  }

  else
  {
    [v41 contentInset];
  }

  v47 = v46;

  if (v40 <= 0.0)
  {
    v48 = *&CGAffineTransformIdentity.c;
    *&v65.a = *&CGAffineTransformIdentity.a;
    *&v65.c = v48;
    *&v65.tx = *&CGAffineTransformIdentity.tx;
  }

  else
  {
    CGAffineTransformMakeTranslation(&v65, 0.0, v40);
  }

  v49 = fmax(v38 - v40, 0.0);
  v50 = v45 + v47;
  cardNavigationController = [controllerCopy cardNavigationController];
  view2 = [cardNavigationController view];
  v64 = v65;
  [view2 setTransform:&v64];

  cardNavigationController2 = [controllerCopy cardNavigationController];
  view3 = [cardNavigationController2 view];
  v55 = view3;
  if (view3)
  {
    [view3 transform];
  }

  else
  {
    memset(&v63[1], 0, sizeof(CGAffineTransform));
  }

  auxiliaryNavigationBarView = [controllerCopy auxiliaryNavigationBarView];
  v64 = v63[1];
  [auxiliaryNavigationBarView setTransform:&v64];

  CGAffineTransformMakeTranslation(v63, 0.0, -(v50 - v49));
  cardView = [controllerCopy cardView];
  v64 = v63[0];
  [cardView setTransform:&v64];

  v58 = fmax(v38, 0.0);
  topContentViewController2 = [controllerCopy topContentViewController];
  prefersAdditionalSafeAreaInsetsForInsetting2 = [topContentViewController2 prefersAdditionalSafeAreaInsetsForInsetting];

  if (prefersAdditionalSafeAreaInsetsForInsetting2)
  {
    [viewCopy adjustedContentInset];
  }

  else
  {
    [viewCopy contentInset];
  }

  v62 = v58 - v61;
  if (([controllerCopy isPoppingAndContracting] & 1) == 0)
  {
    [(BCCardSetState *)self setContentOffsetUpdatesSuspended:1];
    [viewCopy setContentOffset:{0.0, v62}];
    [(BCCardSetState *)self setContentOffsetUpdatesSuspended:0];
  }
}

- (double)cardViewController:(id)controller cardScrollViewOffsetForContentScrollView:(id)view cardData:(id)data
{
  scrollView = [controller scrollView];
  [scrollView contentOffset];
  v7 = v6;

  return v7;
}

- (CGSize)_adjustedContentSizeForCardViewController:(id)controller contentSize:(CGSize)size includeDistanceToExpand:(BOOL)expand
{
  expandCopy = expand;
  height = size.height;
  controllerCopy = controller;
  v8 = controllerCopy;
  if (expandCopy)
  {
    cardSetViewController = [controllerCopy cardSetViewController];
    [cardSetViewController scaledContractedOffset];
    height = height + v10;
  }

  view = [v8 view];
  [view bounds];
  v13 = v12;

  v14 = v13;
  v15 = height;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)cardViewController:(id)controller updateContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  controllerCopy = controller;
  configuration = [controllerCopy configuration];
  -[BCCardSetState _adjustedContentSizeForCardViewController:contentSize:includeDistanceToExpand:](self, "_adjustedContentSizeForCardViewController:contentSize:includeDistanceToExpand:", controllerCopy, [configuration cardsCanExpand], width, height);
  v10 = v9;
  v12 = v11;

  scrollView = [controllerCopy scrollView];

  [scrollView setContentSize:{v10, v12}];
}

- (void)updateCardSize:(id)size addExtra:(BOOL)extra
{
  extraCopy = extra;
  sizeCopy = size;
  view = [sizeCopy view];
  [view bounds];
  CGRectMakeWithSize();
  v8 = v7;

  if (extraCopy)
  {
    configuration = [sizeCopy configuration];
    cardsCanExpand = [configuration cardsCanExpand];

    v11 = v8;
    if (cardsCanExpand)
    {
      configuration2 = [sizeCopy configuration];
      [configuration2 cardExpandedTopOffset];
      v11 = v8 - v13;
    }

    configuration3 = [sizeCopy configuration];
    [configuration3 cardCornerRadius];
    v16 = v11 + v15;

    if (v16 <= 0.0)
    {
      v18 = BCCardModelLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v62 = 134217984;
        v63 = v16;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "In updateCardSize, addExtra:YES. Resulting height (%f) is <= 0, so not adjusting frame.", &v62, 0xCu);
      }
    }

    else
    {
      cardSetViewController = [sizeCopy cardSetViewController];
      [cardSetViewController scaledContractedOffset];
    }
  }

  CGRectGetCenterNoRounding();
  v21 = v19;
  v22 = v20;
  cardView = [sizeCopy cardView];
  [cardView setCenter:{v21, v22}];

  cardView2 = [sizeCopy cardView];
  [cardView2 bounds];
  CGRectMakeWithOriginSize();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  cardView3 = [sizeCopy cardView];
  [cardView3 setBounds:{v26, v28, v30, v32}];

  configuration4 = [sizeCopy configuration];
  if (![configuration4 cardsCanExpand])
  {

    goto LABEL_15;
  }

  expanded = [sizeCopy expanded];

  if (expanded)
  {
LABEL_15:
    view2 = [sizeCopy view];
    [view2 bounds];
    CGRectMakeWithSize();

    CGRectGetCenterNoRounding();
    v47 = v46;
    v49 = v48;
    cardNavigationController = [sizeCopy cardNavigationController];
    view3 = [cardNavigationController view];
    [view3 setCenter:{v47, v49}];

    cardNavigationController2 = [sizeCopy cardNavigationController];
    view4 = [cardNavigationController2 view];
    [view4 bounds];
    goto LABEL_16;
  }

  cardSetViewController2 = [sizeCopy cardSetViewController];
  [cardSetViewController2 scaledContractedOffset];

  CGRectGetCenterNoRounding();
  v38 = v37;
  v40 = v39;
  cardNavigationController3 = [sizeCopy cardNavigationController];
  view5 = [cardNavigationController3 view];
  [view5 setCenter:{v38, v40}];

  cardNavigationController2 = [sizeCopy cardNavigationController];
  view4 = [cardNavigationController2 view];
  [view4 bounds];
LABEL_16:
  CGRectMakeWithOriginSize();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  cardNavigationController4 = [sizeCopy cardNavigationController];
  view6 = [cardNavigationController4 view];
  [view6 setBounds:{v53, v55, v57, v59}];
}

- (void)adjustScrollView:(id)view newContentOffset:(double)offset allowRecursion:(BOOL)recursion cardData:(id)data
{
  viewCopy = view;
  dataCopy = data;
  [viewCopy contentOffset];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_150554;
  v15[3] = &unk_2C7DB8;
  v16 = viewCopy;
  v17 = v11;
  offsetCopy = offset;
  v12 = viewCopy;
  v13 = objc_retainBlock(v15);
  v14 = v13;
  if (recursion)
  {
    (v13[2])(v13);
  }

  else
  {
    [dataCopy setSettingContentOffset:1];
    v14[2](v14);
    [dataCopy setSettingContentOffset:0];
  }
}

- (void)cardViewController:(id)controller cardData:(id)data scrollViewWillBeginDragging:(id)dragging contentScrollView:(id)view
{
  viewCopy = view;
  [data animator];

  delegate = [viewCopy delegate];
  [delegate scrollViewWillBeginDragging:viewCopy];
}

- (void)cardViewController:(id)controller contentScrollViewDidChange:(id)change cardData:(id)data
{
  controllerCopy = controller;
  changeCopy = change;
  dataCopy = data;
  v10 = [NSString stringWithFormat:@"must override %s", "[BCCardSetState cardViewController:contentScrollViewDidChange:cardData:]"];
  v11 = [NSException exceptionWithName:@"abstract base class" reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (void)cardViewController:(id)controller cardData:(id)data scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset contentScrollView:(id)view
{
  y = velocity.y;
  controllerCopy = controller;
  dataCopy = data;
  draggingCopy = dragging;
  cardNavigationController = [controllerCopy cardNavigationController];
  viewControllers = [cardNavigationController viewControllers];
  v16 = [viewControllers count];

  if (v16 <= 1)
  {
    v17 = offset->y;
    [draggingCopy adjustedContentInset];
    v19 = v17 - v18;
    cardSetViewController = [controllerCopy cardSetViewController];
    [cardSetViewController scaledContractedOffset];
    v22 = v21;

    cardSetData = [dataCopy cardSetData];
    scrollView = [cardSetData scrollView];
    layer = [scrollView layer];

    presentationLayer = [layer presentationLayer];
    if (presentationLayer)
    {
      animator = [dataCopy animator];
      v28 = animator != 0;
    }

    else
    {
      v28 = 0;
    }

    v29 = v22 - v19;

    cardSetViewController2 = [controllerCopy cardSetViewController];
    view = [cardSetViewController2 view];
    layer2 = [view layer];

    if (v28)
    {
      presentationLayer2 = [layer2 presentationLayer];

      presentationLayer3 = [layer presentationLayer];

      layer2 = presentationLayer2;
      layer = presentationLayer3;
    }

    [layer convertPoint:layer2 toLayer:{0.0, v29}];
    v36 = v35;
    configuration = [dataCopy configuration];
    [configuration cardExpandedTopOffset];
    if (v36 <= v38)
    {

      goto LABEL_15;
    }

    configuration2 = [dataCopy configuration];
    [configuration2 cardUnexpandedTopOffset];
    v41 = v40;

    if (v36 >= v41)
    {
LABEL_15:

      goto LABEL_16;
    }

    v42 = y <= 0.0;
    if (y == 0.0)
    {
      v43 = 0.0;
      if (v36 <= 0.0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v43 = 0.0;
      if (!v42)
      {
LABEL_11:
        cardSetViewController3 = [controllerCopy cardSetViewController];
        [cardSetViewController3 scaledContractedOffset];
        v46 = v45;
        configuration3 = [controllerCopy configuration];
        [configuration3 cardExpandedTopOffset];
        v43 = v46 - v48 + 1.0;

        [draggingCopy bounds];
        v49 = v43 + CGRectGetHeight(v54);
        [draggingCopy contentSize];
        if (v49 > v50)
        {
          v43 = 0.0;
        }
      }
    }

    [draggingCopy adjustedContentInset];
    offset->y = v43 + v51;
    goto LABEL_15;
  }

LABEL_16:
}

- (void)cardViewController:(id)controller willDismissWithCardData:(id)data
{
  dataCopy = data;
  [dataCopy setDismissing:1];
  scrollView = [dataCopy scrollView];

  [scrollView _stopScrollingAndZoomingAnimations];
}

- (void)_scrollScrollViewToTopForCardViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  y = CGPointZero.y;
  [controllerCopy adjustedContentInset];
  [controllerCopy setContentOffset:animatedCopy animated:{CGPointZero.x, y - v6}];
}

- (void)cardViewController:(id)controller accessibilityWantsToScrollToOffset:(CGPoint)offset cardData:(id)data
{
  y = offset.y;
  x = offset.x;
  scrollView = [controller scrollView];
  [scrollView setContentOffset:{x, y}];
}

- (void)cardViewController:(id)controller dismissPan:(id)pan cardData:(id)data
{
  dataCopy = data;
  panCopy = pan;
  controllerCopy = controller;
  scrollView = [controllerCopy scrollView];
  [scrollView setScrollEnabled:0];

  scrollView2 = [controllerCopy scrollView];
  [scrollView2 _stopScrollingAndZoomingAnimations];

  v12 = +[BCCardSetState dismissingState];
  [dataCopy setCurrentState:v12];

  currentState = [dataCopy currentState];
  [currentState cardViewController:controllerCopy dismissPan:panCopy cardData:dataCopy];
}

- (void)cardViewController:(id)controller positionCardScrollViewBasedOnContentScrollView:(id)view cardDate:(id)date
{
  dateCopy = date;
  viewCopy = view;
  controllerCopy = controller;
  scrollView = [controllerCopy scrollView];
  [scrollView contentOffset];
  v13 = v12;

  [(BCCardSetState *)self cardViewController:controllerCopy cardScrollViewOffsetForContentScrollView:viewCopy cardData:dateCopy];
  v15 = v14;

  scrollView2 = [controllerCopy scrollView];

  [scrollView2 setContentOffset:{v13, v15}];
}

- (void)cardViewController:(id)controller positionAuxiliaryNavigationBarView:(id)view cardDate:(id)date
{
  controllerCopy = controller;
  dateCopy = date;
  configuration = [dateCopy configuration];
  [configuration cardExpandedTopOffset];
  v10 = v9;

  scrollView = [controllerCopy scrollView];
  cardSetData = [dateCopy cardSetData];
  scrollView2 = [cardSetData scrollView];
  layer = [scrollView2 layer];

  presentationLayer = [layer presentationLayer];
  if (presentationLayer)
  {
    animator = [dateCopy animator];
    v17 = animator != 0;
  }

  else
  {
    v17 = 0;
  }

  cardSetViewController = [controllerCopy cardSetViewController];
  view = [cardSetViewController view];
  layer2 = [view layer];

  if (v17)
  {
    presentationLayer2 = [layer2 presentationLayer];

    presentationLayer3 = [layer presentationLayer];

    layer2 = presentationLayer2;
    layer = presentationLayer3;
  }

  [layer2 frame];
  [layer convertRect:layer2 fromLayer:?];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [(BCCardSetState *)self yInScrollView:scrollView cardViewController:controllerCopy];
  v32 = v31;
  v45.origin.x = v24;
  v45.origin.y = v26;
  v45.size.width = v28;
  v45.size.height = v30;
  v33 = CGRectGetMinY(v45) - v32;
  [layer2 convertPoint:layer toLayer:{0.0, v10}];
  v35 = fmin(v33, -v34);
  [(BCCardSetState *)self _extraGripperOffsetForViewController:controllerCopy];
  v37 = -v36;
  if (v36 + v35 < v36)
  {
    v36 = v36 + v35;
  }

  if (v35 <= v37)
  {
    v38 = 0.0;
  }

  else
  {
    v38 = v36;
  }

  if (_os_feature_enabled_impl())
  {
    auxiliaryNavigationBarTopConstraint = [dateCopy auxiliaryNavigationBarTopConstraint];
    [auxiliaryNavigationBarTopConstraint setConstant:v38];
  }

  else
  {
    auxiliaryNavigationBarTopConstraint = [controllerCopy configuration];
    [auxiliaryNavigationBarTopConstraint auxiliaryNavigationBarVerticalInset];
    v41 = v38 + v40;
    auxiliaryNavigationBarTopConstraint2 = [dateCopy auxiliaryNavigationBarTopConstraint];
    [auxiliaryNavigationBarTopConstraint2 setConstant:v41];
  }
}

@end