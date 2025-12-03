@interface BCCardStackCoverSourceController
+ (BOOL)canUseCoverTransitionForDismissingCardSetViewController:(id)controller dataSource:(id)source coverHost:(id)host coverYOffset:(double *)offset inCoordinatesOfView:(id)view;
+ (id)coverHostFromPresentingViewController:(id)controller previousCardSetViewController:(id)viewController;
+ (void)revealCoverSourceAtIndex:(int64_t)index dataSource:(id)source coverHost:(id)host;
- (BCCardSetViewController)underlyingCardSetViewController;
- (BCCardStackCoverSourceController)initWithCardStackViewController:(id)controller isDismiss:(BOOL)dismiss cardSetViewController:(id)viewController focusedIndex:(int64_t)index coverHost:(id)host dataSource:(id)source;
- (BOOL)_hasHiddenCoverSourcesForCardSet:(id)set;
- (BOOL)canUseCoverTransition;
- (_NSRange)_rangeOfIndexesInRange:(_NSRange)range passingTest:(id)test aroundInnerRange:(_NSRange)innerRange;
- (_NSRange)_trimRange:(_NSRange)range withTest:(id)test;
- (_NSRange)horizontalRange;
- (_NSRange)horizontalRangeIncludingFake;
- (_NSRange)visibleCardRange;
- (_NSRange)visibleRange;
- (id)_coverFadeItemsExcludingRange:(_NSRange)range;
- (id)_coverSourceAtIndex:(int64_t)index;
- (id)_placeholderCoverSourceForRelativeCoverFrame:(CGRect)frame inCardView:(id)view;
- (void)_createImaginaryCovers;
- (void)_findHorizontalRange;
- (void)_findVisibleCoverSources;
- (void)_generateAnimationItems;
- (void)_generateDismissSlideAnimationItems;
- (void)_handlePartiallyVisibleCovers;
- (void)_hideVisibleCoverSources;
- (void)_obtainCardCoverSources;
- (void)_preserveNeededCoverSourceFramesWithNewReferenceView:(id)view;
- (void)_refreshNeededCoverSources;
- (void)_unhideAllCoverSources;
- (void)_unhideCardCoverSources;
- (void)_unhideCoverSourcesForCardSet:(id)set;
- (void)finalizeForAnimation;
- (void)hideCardCoverSources;
- (void)performFirstHalfOfProcessing;
- (void)performSecondHalfOfProcessing;
- (void)prepareForAnimation:(BOOL)animation;
- (void)prepareForCoverSourceCapturingWithToViewController:(id)controller toViewTransform:(CGAffineTransform *)transform revealCoverBlock:(id)block captureCoverFrameBlock:(id)frameBlock;
@end

@implementation BCCardStackCoverSourceController

- (BCCardStackCoverSourceController)initWithCardStackViewController:(id)controller isDismiss:(BOOL)dismiss cardSetViewController:(id)viewController focusedIndex:(int64_t)index coverHost:(id)host dataSource:(id)source
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  hostCopy = host;
  sourceCopy = source;
  v22.receiver = self;
  v22.super_class = BCCardStackCoverSourceController;
  v18 = [(BCCardStackCoverSourceController *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_cardStackViewController, controller);
    v19->_isDismiss = dismiss;
    objc_storeStrong(&v19->_cardSetViewController, viewController);
    v19->_focusedIndex = index;
    objc_storeStrong(&v19->_coverHost, host);
    objc_storeStrong(&v19->_dataSource, source);
  }

  return v19;
}

+ (void)revealCoverSourceAtIndex:(int64_t)index dataSource:(id)source coverHost:(id)host
{
  hostCopy = host;
  v8 = [source representedObjectForCardAtIndex:index];
  [hostCopy revealCoverForRepresentedObject:v8];
}

+ (BOOL)canUseCoverTransitionForDismissingCardSetViewController:(id)controller dataSource:(id)source coverHost:(id)host coverYOffset:(double *)offset inCoordinatesOfView:(id)view
{
  controllerCopy = controller;
  sourceCopy = source;
  hostCopy = host;
  viewCopy = view;
  currentCardViewController = [controllerCopy currentCardViewController];
  transitioningCardContent = [currentCardViewController transitioningCardContent];
  cardStackTransitioningCardContentCoverSource = [transitioningCardContent cardStackTransitioningCardContentCoverSource];
  if (cardStackTransitioningCardContentCoverSource && ![transitioningCardContent visibilityOfCoverSource:cardStackTransitioningCardContentCoverSource ignoringYAxis:0])
  {
    v44 = [sourceCopy representedObjectForCardAtIndex:{objc_msgSend(controllerCopy, "focusedIndex")}];
    v20 = [hostCopy coverSourceForRepresentedObject:?];
    v21 = v20;
    v18 = v20 != 0;
    v19 = NAN;
    if (offset && v20)
    {
      [cardStackTransitioningCardContentCoverSource cardStackTransitioningCoverSourceReferenceView];
      v22 = v43 = v21;
      [cardStackTransitioningCardContentCoverSource cardStackTransitioningCoverSourceFrame];
      [v22 convertRect:viewCopy toView:?];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v21 = v43;
      [v43 cardStackTransitioningCoverSourceReferenceView];
      v31 = v42 = sourceCopy;
      [v43 cardStackTransitioningCoverSourceFrame];
      [v31 convertRect:viewCopy toView:?];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      sourceCopy = v42;
      v45.origin.x = v33;
      v45.origin.y = v35;
      v45.size.width = v37;
      v45.size.height = v39;
      MidY = CGRectGetMidY(v45);
      v46.origin.x = v24;
      v46.origin.y = v26;
      v46.size.width = v28;
      v46.size.height = v30;
      v19 = MidY - CGRectGetMidY(v46);
    }
  }

  else
  {
    v18 = 0;
    v19 = NAN;
  }

  if (offset)
  {
    *offset = v19;
  }

  return v18;
}

+ (id)coverHostFromPresentingViewController:(id)controller previousCardSetViewController:(id)viewController
{
  controllerCopy = controller;
  currentCardViewController = [viewController currentCardViewController];
  v7 = currentCardViewController;
  if (currentCardViewController)
  {
    v8 = currentCardViewController;
  }

  else
  {
    v8 = controllerCopy;
  }

  v9 = v8;

  v10 = [v9 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCCardStackTransitioningCoverHost includePresented:0];
  if (v10)
  {
    presentingViewController = v10;
  }

  else
  {
    while (1)
    {
      presentingViewController = [v9 presentingViewController];

      if (!presentingViewController)
      {
        break;
      }

      presentingViewController2 = [v9 presentingViewController];

      v13 = [presentingViewController2 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCCardStackTransitioningCoverHost includePresented:0];
      v9 = presentingViewController2;
      if (v13)
      {
        presentingViewController = v13;
        v9 = presentingViewController2;
        break;
      }
    }
  }

  return presentingViewController;
}

- (void)performFirstHalfOfProcessing
{
  dataSource = [(BCCardStackCoverSourceController *)self dataSource];
  cardStackViewController = [(BCCardStackCoverSourceController *)self cardStackViewController];
  -[BCCardStackCoverSourceController setTotalCoverCount:](self, "setTotalCoverCount:", [dataSource numberOfCards:cardStackViewController]);

  cardSetViewController = [(BCCardStackCoverSourceController *)self cardSetViewController];
  visibleCardRange = [cardSetViewController visibleCardRange];
  [(BCCardStackCoverSourceController *)self setVisibleCardRange:visibleCardRange, v7];

  if ([(BCCardStackCoverSourceController *)self isDismiss]&& [(BCCardStackCoverSourceController *)self preferSlideForDismiss]&& ([(BCCardStackCoverSourceController *)self cardSetViewController], v8 = objc_claimAutoreleasedReturnValue(), v9 = [(BCCardStackCoverSourceController *)self _hasHiddenCoverSourcesForCardSet:v8], v8, (v9 & 1) == 0))
  {
    [(BCCardStackCoverSourceController *)self setVisibleRange:0x7FFFFFFFFFFFFFFFLL, 0];
    [(BCCardStackCoverSourceController *)self setVisibleCoverSourceByIndex:&__NSDictionary0__struct];
  }

  else
  {
    [(BCCardStackCoverSourceController *)self _findVisibleCoverSources];
  }

  if ([(BCCardStackCoverSourceController *)self canUseCoverTransition]&& (![(BCCardStackCoverSourceController *)self isDismiss]|| ![(BCCardStackCoverSourceController *)self preferSlideForDismiss]))
  {
    if ([(BCCardStackCoverSourceController *)self coversAreInNonHorizontalLayout])
    {
      [(BCCardStackCoverSourceController *)self setHorizontalRange:[(BCCardStackCoverSourceController *)self focusedIndex], 1];
    }

    else
    {
      [(BCCardStackCoverSourceController *)self _findHorizontalRange];
    }

    [(BCCardStackCoverSourceController *)self _createImaginaryCovers];
    if ([(BCCardStackCoverSourceController *)self coversNeedClipping])
    {

      [(BCCardStackCoverSourceController *)self _handlePartiallyVisibleCovers];
    }
  }
}

- (BOOL)canUseCoverTransition
{
  if ([(BCCardStackCoverSourceController *)self visibleRange]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  [(BCCardStackCoverSourceController *)self visibleRange];
  return v4 != 0;
}

- (_NSRange)_rangeOfIndexesInRange:(_NSRange)range passingTest:(id)test aroundInnerRange:(_NSRange)innerRange
{
  length = innerRange.length;
  location = innerRange.location;
  v7 = range.length;
  v8 = range.location;
  testCopy = test;
  if (v7)
  {
    v10 = v7 + v8 - 1;
    v11 = location;
    while (v11 > v8)
    {
      if ((testCopy[2](testCopy, --v11) & 1) == 0)
      {
        v12 = v11 + 1;
        goto LABEL_8;
      }
    }

    v12 = v8;
LABEL_8:
    v13 = location + length;
    if (v13 <= v10)
    {
      v14 = v7 + v8;
      while ((testCopy[2](testCopy, v13) & 1) != 0)
      {
        if (v14 == ++v13)
        {
          goto LABEL_14;
        }
      }

      v10 = v13 - 1;
    }

LABEL_14:
    v7 = v10 - v12 + 1;
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v15 = v12;
  v16 = v7;
  result.length = v16;
  result.location = v15;
  return result;
}

- (void)_findVisibleCoverSources
{
  totalCoverCount = [(BCCardStackCoverSourceController *)self totalCoverCount];
  focusedIndex = [(BCCardStackCoverSourceController *)self focusedIndex];
  [NSMutableDictionary dictionaryWithCapacity:totalCoverCount];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_48B64;
  v16[3] = &unk_2C9790;
  v5 = v16[4] = self;
  v17 = v5;
  v6 = objc_retainBlock(v16);
  if ((v6[2])(v6, focusedIndex, 0))
  {
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_48C78;
    v13 = &unk_2C97B8;
    selfCopy = self;
    v15 = v6;
    v7 = [(BCCardStackCoverSourceController *)self _rangeOfIndexesInRange:0 passingTest:totalCoverCount aroundInnerRange:&v10, focusedIndex, 1];
    v9 = v8;
  }

  else
  {
    v9 = 0;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(BCCardStackCoverSourceController *)self setVisibleRange:v7, v9, v10, v11, v12, v13, selfCopy];
  [(BCCardStackCoverSourceController *)self setVisibleCoverSourceByIndex:v5];
}

- (void)_findHorizontalRange
{
  visibleCoverSourceByIndex = [(BCCardStackCoverSourceController *)self visibleCoverSourceByIndex];
  v4 = [NSNumber numberWithInteger:[(BCCardStackCoverSourceController *)self focusedIndex]];
  v5 = [visibleCoverSourceByIndex objectForKeyedSubscript:v4];

  cardStackTransitioningCoverSourceReferenceView = [v5 cardStackTransitioningCoverSourceReferenceView];
  [v5 cardStackTransitioningCoverSourceFrame];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_48E28;
  v13[3] = &unk_2C97E0;
  v13[4] = self;
  v14 = cardStackTransitioningCoverSourceReferenceView;
  MaxY = CGRectGetMaxY(v16);
  v7 = cardStackTransitioningCoverSourceReferenceView;
  v8 = objc_retainBlock(v13);
  visibleRange = [(BCCardStackCoverSourceController *)self visibleRange];
  v11 = [(BCCardStackCoverSourceController *)self _rangeOfIndexesInRange:visibleRange passingTest:v10 aroundInnerRange:v8, [(BCCardStackCoverSourceController *)self focusedIndex], 1];
  [(BCCardStackCoverSourceController *)self setHorizontalRange:v11, v12];
}

- (void)_createImaginaryCovers
{
  visibleRange = [(BCCardStackCoverSourceController *)self visibleRange];
  v5 = v4;
  horizontalRange = [(BCCardStackCoverSourceController *)self horizontalRange];
  v8 = v7;
  visibleCoverSourceByIndex = [(BCCardStackCoverSourceController *)self visibleCoverSourceByIndex];
  visibleCardRange = [(BCCardStackCoverSourceController *)self visibleCardRange];
  v12 = visibleCardRange + v11;
  visibleRange2 = [(BCCardStackCoverSourceController *)self visibleRange];
  if (v12 > visibleRange2 + v14 && v12 <= [(BCCardStackCoverSourceController *)self totalCoverCount])
  {
    v5 = v12;
  }

  [NSMutableDictionary dictionaryWithCapacity:v5 - v8];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_490D0;
  v19[3] = &unk_2C9808;
  v23 = horizontalRange;
  v24 = horizontalRange + v8 - 1;
  v20 = visibleCoverSourceByIndex;
  v22 = v21 = self;
  v15 = v22;
  v16 = visibleCoverSourceByIndex;
  v17 = [(BCCardStackCoverSourceController *)self _rangeOfIndexesInRange:visibleRange passingTest:v5 aroundInnerRange:v19, horizontalRange, v8];
  [(BCCardStackCoverSourceController *)self setHorizontalRangeIncludingFake:v17, v18];
  [(BCCardStackCoverSourceController *)self setFakeCoverSourceByIndex:v15];
}

- (_NSRange)_trimRange:(_NSRange)range withTest:(id)test
{
  length = range.length;
  location = range.location;
  testCopy = test;
  if (length)
  {
    v7 = length + location - 1;
    if (location > v7)
    {
      goto LABEL_8;
    }

    while (testCopy[2](testCopy, location))
    {
      ++location;
      if (!--length)
      {
        goto LABEL_8;
      }
    }

    if (location == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_8:
      v8 = 0;
      location = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = location;
      if (v7 > location)
      {
        while (testCopy[2](testCopy, v7))
        {
          if (--v7 <= location)
          {
            v11 = location;
            goto LABEL_15;
          }
        }

        v11 = v7;
      }

LABEL_15:
      v8 = v11 - location + 1;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = location;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (id)_coverSourceAtIndex:(int64_t)index
{
  horizontalRange = [(BCCardStackCoverSourceController *)self horizontalRange];
  if (index < horizontalRange || index - horizontalRange >= v6)
  {
    fakeCoverSourceByIndex = [(BCCardStackCoverSourceController *)self fakeCoverSourceByIndex];
  }

  else
  {
    fakeCoverSourceByIndex = [(BCCardStackCoverSourceController *)self visibleCoverSourceByIndex];
  }

  v8 = fakeCoverSourceByIndex;
  v9 = [NSNumber numberWithInteger:index];
  v10 = [v8 objectForKeyedSubscript:v9];

  return v10;
}

- (void)_handlePartiallyVisibleCovers
{
  horizontalRangeIncludingFake = [(BCCardStackCoverSourceController *)self horizontalRangeIncludingFake];
  v5 = v4;
  horizontalRange = [(BCCardStackCoverSourceController *)self horizontalRange];
  v8 = v7;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_49520;
  v14[3] = &unk_2C9830;
  v14[5] = [(BCCardStackCoverSourceController *)self visibleCardRange];
  v14[6] = v9;
  v14[4] = self;
  v15.location = [(BCCardStackCoverSourceController *)self _trimRange:horizontalRangeIncludingFake withTest:v5, v14];
  location = v15.location;
  length = v15.length;
  v16.location = horizontalRange;
  v16.length = v8;
  v12 = NSUnionRange(v15, v16);
  [(BCCardStackCoverSourceController *)self setHorizontalRangeIncludingFake:v12.location, v12.length];
  v13 = [NSMutableIndexSet indexSetWithIndexesInRange:horizontalRange, v8];
  [v13 removeIndexesInRange:{location, length}];
  [(BCCardStackCoverSourceController *)self setClippedCoverIndexes:v13];
}

- (void)prepareForCoverSourceCapturingWithToViewController:(id)controller toViewTransform:(CGAffineTransform *)transform revealCoverBlock:(id)block captureCoverFrameBlock:(id)frameBlock
{
  controllerCopy = controller;
  frameBlockCopy = frameBlock;
  (*(block + 2))(block);
  if ([(BCCardStackCoverSourceController *)self preferSlideForDismiss])
  {
    frameBlockCopy[2](frameBlockCopy);
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    view = [controllerCopy view];
    v13 = view;
    if (view)
    {
      [view transform];
    }

    else
    {
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
    }

    v14 = *&transform->c;
    v25 = *&transform->a;
    v26 = v14;
    v27 = *&transform->tx;
    view2 = [controllerCopy view];
    v22 = v25;
    v23 = v26;
    v24 = v27;
    [view2 setTransform:&v22];

    frameBlockCopy[2](frameBlockCopy);
    if ([(BCCardStackCoverSourceController *)self canUseCoverTransition])
    {
      cardStackViewController = [(BCCardStackCoverSourceController *)self cardStackViewController];
      view3 = [cardStackViewController view];
      [(BCCardStackCoverSourceController *)self _preserveNeededCoverSourceFramesWithNewReferenceView:view3];
    }

    view4 = [controllerCopy view];
    v22 = v19;
    v23 = v20;
    v24 = v21;
    [view4 setTransform:&v22];

    [(BCCardStackCoverSourceController *)self _refreshNeededCoverSources];
  }
}

- (void)_preserveNeededCoverSourceFramesWithNewReferenceView:(id)view
{
  viewCopy = view;
  horizontalRangeIncludingFake = [(BCCardStackCoverSourceController *)self horizontalRangeIncludingFake];
  v7 = [NSMutableIndexSet indexSetWithIndexesInRange:horizontalRangeIncludingFake, v6];
  clippedCoverIndexes = [(BCCardStackCoverSourceController *)self clippedCoverIndexes];
  [v7 removeIndexes:clippedCoverIndexes];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_4982C;
  v10[3] = &unk_2C9858;
  v10[4] = self;
  v11 = viewCopy;
  v9 = viewCopy;
  [v7 enumerateIndexesUsingBlock:v10];
}

- (void)_refreshNeededCoverSources
{
  visibleRange = [(BCCardStackCoverSourceController *)self visibleRange];
  v5 = [NSMutableIndexSet indexSetWithIndexesInRange:visibleRange, v4];
  horizontalRange = [(BCCardStackCoverSourceController *)self horizontalRange];
  [v5 removeIndexesInRange:{horizontalRange, v7}];
  clippedCoverIndexes = [(BCCardStackCoverSourceController *)self clippedCoverIndexes];
  [v5 addIndexes:clippedCoverIndexes];

  visibleCoverSourceByIndex = [(BCCardStackCoverSourceController *)self visibleCoverSourceByIndex];
  v10 = [visibleCoverSourceByIndex mutableCopy];

  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_499A4;
  v15 = &unk_2C9858;
  selfCopy = self;
  v17 = v10;
  v11 = v10;
  [v5 enumerateIndexesUsingBlock:&v12];
  [(BCCardStackCoverSourceController *)self setVisibleCoverSourceByIndex:v11, v12, v13, v14, v15, selfCopy];
}

- (void)performSecondHalfOfProcessing
{
  if ([(BCCardStackCoverSourceController *)self isDismiss]&& (![(BCCardStackCoverSourceController *)self canUseCoverTransition]|| [(BCCardStackCoverSourceController *)self preferSlideForDismiss]))
  {

    [(BCCardStackCoverSourceController *)self _generateDismissSlideAnimationItems];
  }

  else
  {
    [(BCCardStackCoverSourceController *)self _obtainCardCoverSources];

    [(BCCardStackCoverSourceController *)self _generateAnimationItems];
  }
}

- (id)_placeholderCoverSourceForRelativeCoverFrame:(CGRect)frame inCardView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  viewCopy = view;
  [viewCopy bounds];
  CGPointAdd();
  height = [[BCCardStackTransitioningPlaceholderCoverSource alloc] initWithCoverFrame:viewCopy referenceView:v7, v8, width, height];

  return height;
}

- (void)_obtainCardCoverSources
{
  focusedIndex = [(BCCardStackCoverSourceController *)self focusedIndex];
  cardSetViewController = [(BCCardStackCoverSourceController *)self cardSetViewController];
  v55 = focusedIndex;
  v4 = [cardSetViewController cardViewControllerAtIndex:focusedIndex];
  view = [v4 view];
  [view layoutIfNeeded];

  transitioningCardContent = [v4 transitioningCardContent];
  cardStackTransitioningCardContentCoverSource = [transitioningCardContent cardStackTransitioningCardContentCoverSource];
  v54 = v4;
  view2 = [v4 view];
  [cardStackTransitioningCardContentCoverSource cardStackTransitioningCoverSourceFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  cardStackTransitioningCoverSourceReferenceView = [cardStackTransitioningCardContentCoverSource cardStackTransitioningCoverSourceReferenceView];
  [view2 convertRect:cardStackTransitioningCoverSourceReferenceView fromView:{v9, v11, v13, v15}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  _rangeForCoverMove = [(BCCardStackCoverSourceController *)self _rangeForCoverMove];
  v27 = v26;
  _rangeForCardMove = [(BCCardStackCoverSourceController *)self _rangeForCardMove];
  v30 = v29;
  v31 = [NSMutableDictionary dictionaryWithCapacity:v27];
  v32 = [NSMutableDictionary dictionaryWithCapacity:v30];
  v53 = objc_alloc_init(NSMutableIndexSet);
  if (_rangeForCardMove < &_rangeForCardMove[v30])
  {
    do
    {
      v33 = [cardSetViewController cardViewControllerAtIndex:_rangeForCardMove];
      v34 = [NSNumber numberWithInteger:_rangeForCardMove];
      [v32 setObject:v33 forKeyedSubscript:v34];

      ++_rangeForCardMove;
      --v30;
    }

    while (v30);
  }

  v35 = v55;
  if (_rangeForCoverMove < &_rangeForCoverMove[v27])
  {
    while (v35 == _rangeForCoverMove)
    {
      v36 = cardStackTransitioningCardContentCoverSource;
LABEL_19:
      v51 = [NSNumber numberWithInteger:_rangeForCoverMove];
      [v31 setObject:v36 forKeyedSubscript:v51];

      ++_rangeForCoverMove;
      if (!--v27)
      {
        goto LABEL_20;
      }
    }

    v37 = [NSNumber numberWithInteger:_rangeForCoverMove];
    v38 = [v32 objectForKeyedSubscript:v37];

    transitioningCardContent2 = [v38 transitioningCardContent];
    cardStackTransitioningCardContentCoverSource2 = [transitioningCardContent2 cardStackTransitioningCardContentCoverSource];
    if (cardStackTransitioningCardContentCoverSource2)
    {
      v36 = cardStackTransitioningCardContentCoverSource2;
      if (!-[BCCardStackCoverSourceController isDismiss](self, "isDismiss") || ![transitioningCardContent2 visibilityOfCoverSource:v36 ignoringYAxis:0])
      {
LABEL_18:

        goto LABEL_19;
      }
    }

    if ([(BCCardStackCoverSourceController *)self isDismiss])
    {
      visibleCardRange = [(BCCardStackCoverSourceController *)self visibleCardRange];
      if (_rangeForCoverMove >= visibleCardRange && _rangeForCoverMove - visibleCardRange < v42)
      {
        [v53 addIndex:_rangeForCoverMove];
      }
    }

    if (v38)
    {
      view3 = [v38 view];
      selfCopy2 = self;
      v45 = v18;
      v46 = v20;
    }

    else
    {
      [cardSetViewController frameForCardAtIndex:_rangeForCoverMove inCoordinatesOfCardAtIndex:v35];
      CGPointAdd();
      v48 = v47;
      v50 = v49;
      view3 = [v54 view];
      selfCopy2 = self;
      v45 = v48;
      v46 = v50;
    }

    v36 = [(BCCardStackCoverSourceController *)selfCopy2 _placeholderCoverSourceForRelativeCoverFrame:view3 inCardView:v45, v46, v22, v24];

    v35 = v55;
    goto LABEL_18;
  }

LABEL_20:
  [(BCCardStackCoverSourceController *)self setCardByIndex:v32];
  [(BCCardStackCoverSourceController *)self setCardCoverSourceByIndex:v31];
  [(BCCardStackCoverSourceController *)self setVisibleCardIndexesWithAdjustedCoverSource:v53];
}

- (void)_generateAnimationItems
{
  _rangeForCoverMove = [(BCCardStackCoverSourceController *)self _rangeForCoverMove];
  v5 = [NSIndexSet indexSetWithIndexesInRange:_rangeForCoverMove, v4];
  v6 = +[NSMutableArray array];
  v7 = +[NSMutableArray array];
  focusedIndex = [(BCCardStackCoverSourceController *)self focusedIndex];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_4A144;
  v24[3] = &unk_2C9880;
  v25 = v6;
  v26 = focusedIndex;
  v24[4] = self;
  v9 = v6;
  [v5 enumerateIndexesUsingBlock:v24];
  _rangeForCardMove = [(BCCardStackCoverSourceController *)self _rangeForCardMove];
  v12 = [NSIndexSet indexSetWithIndexesInRange:_rangeForCardMove, v11];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_4A304;
  v20 = &unk_2C9880;
  v22 = v7;
  v23 = focusedIndex;
  selfCopy = self;
  v13 = v7;
  [v12 enumerateIndexesUsingBlock:&v17];
  v14 = [(BCCardStackCoverSourceController *)self _rangeForCoverMove:v17];
  v16 = [(BCCardStackCoverSourceController *)self _coverFadeItemsExcludingRange:v14, v15];
  [(BCCardStackCoverSourceController *)self setCoverMoveItems:v9];
  [(BCCardStackCoverSourceController *)self setCardMoveItems:v13];
  [(BCCardStackCoverSourceController *)self setCoverFadeItems:v16];
}

- (id)_coverFadeItemsExcludingRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  visibleRange = [(BCCardStackCoverSourceController *)self visibleRange];
  v8 = [NSMutableIndexSet indexSetWithIndexesInRange:visibleRange, v7];
  [v8 removeIndexesInRange:{location, length}];
  +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_4A724;
  v15 = &unk_2C9858;
  v17 = v16 = self;
  v9 = v17;
  [v8 enumerateIndexesUsingBlock:&v12];
  v10 = [v9 copy];

  return v10;
}

- (void)_generateDismissSlideAnimationItems
{
  visibleCardRange = [(BCCardStackCoverSourceController *)self visibleCardRange];
  v5 = v4;
  v18 = [NSMutableArray arrayWithCapacity:v4];
  if (visibleCardRange < &visibleCardRange[v5])
  {
    do
    {
      v6 = [NSString stringWithFormat:@"%ld-slide", visibleCardRange];
      v7 = [(BCCardStackTransitionAnimationItem *)[BCCardStackTransitionCardSlideAnimationItem alloc] initWithKey:v6];
      [(BCCardStackTransitionCardSlideAnimationItem *)v7 setIsFocusedCard:visibleCardRange == [(BCCardStackCoverSourceController *)self focusedIndex]];
      cardSetViewController = [(BCCardStackCoverSourceController *)self cardSetViewController];
      v9 = [cardSetViewController cardViewControllerAtIndex:visibleCardRange];
      [(BCCardStackTransitionCardSlideAnimationItem *)v7 setCard:v9];

      [v18 addObject:v7];
      ++visibleCardRange;
      --v5;
    }

    while (v5);
  }

  underlyingCardSetViewController = [(BCCardStackCoverSourceController *)self underlyingCardSetViewController];

  if (underlyingCardSetViewController)
  {
    underlyingCardSetViewController2 = [(BCCardStackCoverSourceController *)self underlyingCardSetViewController];
    focusedIndex = [underlyingCardSetViewController2 focusedIndex];

    v13 = [NSString stringWithFormat:@"%ld-slide", focusedIndex];
    v14 = [(BCCardStackTransitionAnimationItem *)[BCCardStackTransitionCardSlideAnimationItem alloc] initWithKey:v13];
    underlyingCardSetViewController3 = [(BCCardStackCoverSourceController *)self underlyingCardSetViewController];
    v16 = [underlyingCardSetViewController3 cardViewControllerAtIndex:focusedIndex];
    [(BCCardStackTransitionCardSlideAnimationItem *)v14 setCard:v16];

    [v18 addObject:v14];
  }

  v17 = [(BCCardStackCoverSourceController *)self _coverFadeItemsExcludingRange:0, 0];
  [(BCCardStackCoverSourceController *)self setCardSlideItems:v18];
  [(BCCardStackCoverSourceController *)self setCoverFadeItems:v17];
}

- (void)prepareForAnimation:(BOOL)animation
{
  animationCopy = animation;
  [(BCCardStackCoverSourceController *)self _hideVisibleCoverSources];
  if (animationCopy)
  {
    [(BCCardStackCoverSourceController *)self hideCardCoverSources];
  }

  focusedIndex = [(BCCardStackCoverSourceController *)self focusedIndex];
  cardByIndex = [(BCCardStackCoverSourceController *)self cardByIndex];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4AAE0;
  v7[3] = &unk_2C98A8;
  v7[4] = self;
  v7[5] = focusedIndex;
  [cardByIndex enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)_hideVisibleCoverSources
{
  cardStackViewController = [(BCCardStackCoverSourceController *)self cardStackViewController];
  unhideBlocksByCardSet = [cardStackViewController unhideBlocksByCardSet];
  cardSetViewController = [(BCCardStackCoverSourceController *)self cardSetViewController];
  v6 = [unhideBlocksByCardSet objectForKeyedSubscript:cardSetViewController];

  if (!v6)
  {
    v6 = +[NSMutableDictionary dictionary];
    cardStackViewController2 = [(BCCardStackCoverSourceController *)self cardStackViewController];
    unhideBlocksByCardSet2 = [cardStackViewController2 unhideBlocksByCardSet];
    cardSetViewController2 = [(BCCardStackCoverSourceController *)self cardSetViewController];
    [unhideBlocksByCardSet2 setObject:v6 forKeyedSubscript:cardSetViewController2];
  }

  visibleCoverSourceByIndex = [(BCCardStackCoverSourceController *)self visibleCoverSourceByIndex];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_4ACE4;
  v12[3] = &unk_2C98D0;
  v13 = v6;
  v11 = v6;
  [visibleCoverSourceByIndex enumerateKeysAndObjectsUsingBlock:v12];
}

- (void)hideCardCoverSources
{
  cardCoverSourceByIndex = [(BCCardStackCoverSourceController *)self cardCoverSourceByIndex];
  v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [cardCoverSourceByIndex count]);

  cardCoverSourceByIndex2 = [(BCCardStackCoverSourceController *)self cardCoverSourceByIndex];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4AE74;
  v7[3] = &unk_2C98D0;
  v8 = v4;
  v6 = v4;
  [cardCoverSourceByIndex2 enumerateKeysAndObjectsUsingBlock:v7];

  [(BCCardStackCoverSourceController *)self setCardCoverSourceUnhideBlocksByIndex:v6];
}

- (void)finalizeForAnimation
{
  if ([(BCCardStackCoverSourceController *)self isDismiss])
  {
    if ([(BCCardStackCoverSourceController *)self isDismissingCardStack])
    {
      [(BCCardStackCoverSourceController *)self _unhideAllCoverSources];
    }

    else
    {
      cardSetViewController = [(BCCardStackCoverSourceController *)self cardSetViewController];
      [(BCCardStackCoverSourceController *)self _unhideCoverSourcesForCardSet:cardSetViewController];
    }
  }

  [(BCCardStackCoverSourceController *)self _unhideCardCoverSources];
  cardByIndex = [(BCCardStackCoverSourceController *)self cardByIndex];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_4AFC8;
  v5[3] = &unk_2C98F8;
  v5[4] = self;
  [cardByIndex enumerateKeysAndObjectsUsingBlock:v5];
}

- (BOOL)_hasHiddenCoverSourcesForCardSet:(id)set
{
  setCopy = set;
  cardStackViewController = [(BCCardStackCoverSourceController *)self cardStackViewController];
  unhideBlocksByCardSet = [cardStackViewController unhideBlocksByCardSet];
  v7 = [unhideBlocksByCardSet objectForKeyedSubscript:setCopy];

  return v7 != 0;
}

- (void)_unhideAllCoverSources
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  cardStackViewController = [(BCCardStackCoverSourceController *)self cardStackViewController];
  unhideBlocksByCardSet = [cardStackViewController unhideBlocksByCardSet];
  objectEnumerator = [unhideBlocksByCardSet objectEnumerator];

  v6 = [objectEnumerator countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        allValues = [v10 allValues];
        v12 = [allValues countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
          do
          {
            v15 = 0;
            do
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(allValues);
              }

              (*(*(*(&v18 + 1) + 8 * v15) + 16))();
              v15 = v15 + 1;
            }

            while (v13 != v15);
            v13 = [allValues countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v13);
        }

        v9 = v9 + 1;
      }

      while (v9 != v7);
      v7 = [objectEnumerator countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  cardStackViewController2 = [(BCCardStackCoverSourceController *)self cardStackViewController];
  unhideBlocksByCardSet2 = [cardStackViewController2 unhideBlocksByCardSet];
  [unhideBlocksByCardSet2 removeAllObjects];
}

- (void)_unhideCoverSourcesForCardSet:(id)set
{
  setCopy = set;
  cardStackViewController = [(BCCardStackCoverSourceController *)self cardStackViewController];
  unhideBlocksByCardSet = [cardStackViewController unhideBlocksByCardSet];
  v7 = [unhideBlocksByCardSet objectForKeyedSubscript:setCopy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allValues = [v7 allValues];
  v9 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        (*(*(*(&v15 + 1) + 8 * v12) + 16))();
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  cardStackViewController2 = [(BCCardStackCoverSourceController *)self cardStackViewController];
  unhideBlocksByCardSet2 = [cardStackViewController2 unhideBlocksByCardSet];
  [unhideBlocksByCardSet2 setObject:0 forKeyedSubscript:setCopy];
}

- (void)_unhideCardCoverSources
{
  cardCoverSourceUnhideBlocksByIndex = [(BCCardStackCoverSourceController *)self cardCoverSourceUnhideBlocksByIndex];
  [cardCoverSourceUnhideBlocksByIndex enumerateKeysAndObjectsUsingBlock:&stru_2C9938];
}

- (BCCardSetViewController)underlyingCardSetViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_underlyingCardSetViewController);

  return WeakRetained;
}

- (_NSRange)visibleCardRange
{
  length = self->_visibleCardRange.length;
  location = self->_visibleCardRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)visibleRange
{
  length = self->_visibleRange.length;
  location = self->_visibleRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)horizontalRange
{
  length = self->_horizontalRange.length;
  location = self->_horizontalRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)horizontalRangeIncludingFake
{
  length = self->_horizontalRangeIncludingFake.length;
  location = self->_horizontalRangeIncludingFake.location;
  result.length = length;
  result.location = location;
  return result;
}

@end