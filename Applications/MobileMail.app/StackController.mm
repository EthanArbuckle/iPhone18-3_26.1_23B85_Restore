@interface StackController
- (BOOL)isAnyStackElementBeingStacked;
- (BOOL)isDataAvailableForStackElement:(id)element loadIfNeeded:(BOOL)needed;
- (StackController)init;
- (StackDataSource)dataSource;
- (StackDelegate)delegate;
- (UIEdgeInsets)stackContainerViewEdgeInsets;
- (id)keyForItem:(id)item;
- (id)stackElementForItem:(id)item createIfNeeded:(BOOL)needed;
- (id)stackedViewForItem:(id)item;
- (id)viewBelowStackElement:(id)element;
- (id)viewForStackElement:(id)element;
- (void)_updateStackedViewFrameForElement:(id)element;
- (void)addStackedItem:(id)item;
- (void)displayStackedViewsForItems:(id)items animated:(BOOL)animated;
- (void)endTransaction;
- (void)removeStackElement:(id)element;
- (void)removeStackedViews:(BOOL)views;
- (void)setIsAnimating:(BOOL)animating;
- (void)setNeedsToUpdateDisplayedItems:(BOOL)items immediately:(BOOL)immediately;
- (void)setNeedsToUpdateStackElements;
- (void)stackDataSourceDidLoadItemData:(id)data;
- (void)stackElement:(id)element currentStateDidChangeFrom:(int64_t)from to:(int64_t)to;
- (void)stackElement:(id)element targetStateDidChangeFrom:(int64_t)from to:(int64_t)to;
- (void)stackElement:(id)element willRemoveView:(id)view;
- (void)updateDisplayedItems;
- (void)updateIsAnimating;
- (void)updateStackElement:(id)element;
- (void)updateStackElements;
- (void)updateStackedViewFrameForItem:(id)item;
- (void)updateStackedViewsFrame;
@end

@implementation StackController

- (StackController)init
{
  v13.receiver = self;
  v13.super_class = StackController;
  v2 = [(StackController *)&v13 init];
  if (v2)
  {
    v3 = [[NSMutableArray alloc] initWithCapacity:50];
    stackedItems = v2->_stackedItems;
    v2->_stackedItems = v3;

    v5 = [[NSMutableArray alloc] initWithCapacity:50];
    orderedItems = v2->_orderedItems;
    v2->_orderedItems = v5;

    v7 = [[NSMutableDictionary alloc] initWithCapacity:50];
    stackElementsByItem = v2->_stackElementsByItem;
    v2->_stackElementsByItem = v7;

    v9 = [[NSMutableDictionary alloc] initWithCapacity:50];
    loadRequestDatesByItem = v2->_loadRequestDatesByItem;
    v2->_loadRequestDatesByItem = v9;

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v2 selector:"stackDataSourceDidLoadItemData:" name:@"StackDataSourceDidLoadItemData" object:0];
  }

  return v2;
}

- (void)displayStackedViewsForItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  itemsCopy = items;
  self->_isTerminating = 0;
  stackContainerView = self->_stackContainerView;
  if (!stackContainerView)
  {
    delegate = [(StackController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate stackControllerWillStartStackingViews:self];
    }

    dataSource = [(StackController *)self dataSource];
    v9 = [dataSource stackContainerViewForStackController:self];
    v10 = self->_stackContainerView;
    self->_stackContainerView = v9;

    window = [(UIView *)self->_stackContainerView window];
    windowScene = [window windowScene];
    interfaceOrientation = [windowScene interfaceOrientation];

    if ((interfaceOrientation - 3) <= 1)
    {
      [(UIView *)self->_stackContainerView setClipsToBounds:1];
    }

    [dataSource stackContainerViewEdgeInsetsForStackController:self];
    self->_stackContainerViewEdgeInsets.top = v14;
    self->_stackContainerViewEdgeInsets.left = v15;
    self->_stackContainerViewEdgeInsets.bottom = v16;
    self->_stackContainerViewEdgeInsets.right = v17;
  }

  [(StackController *)self setAnimateStateTransitions:animatedCopy];
  [(StackController *)self setItemsToDisplay:itemsCopy];
  [(StackController *)self setNeedsToUpdateDisplayedItems:1 immediately:stackContainerView == 0];
}

- (void)setNeedsToUpdateDisplayedItems:(BOOL)items immediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  itemsCopy = items;
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"updateDisplayedItems" object:0];
  if (itemsCopy)
  {
    if (immediatelyCopy)
    {

      [(StackController *)self updateDisplayedItems];
    }

    else
    {
      v7 = 0.0;
      if ([(StackController *)self animateStateTransitions])
      {
        +[NSDate timeIntervalSinceReferenceDate];
        v9 = v8 - self->_lastDisplayedItemsUpdateRequest;
        self->_lastDisplayedItemsUpdateRequest = v8;
        if (v9 < 0.3)
        {
          self->_isSuspended = 1;
          v7 = 0.1;
        }
      }

      v10 = [NSArray arrayWithObject:NSRunLoopCommonModes];
      [(StackController *)self performSelector:"updateDisplayedItems" withObject:0 afterDelay:v7 inModes:?];
    }
  }

  else
  {
    self->_isSuspended = 0;
  }
}

- (void)addStackedItem:(id)item
{
  itemCopy = item;
  v4 = [(NSMutableArray *)self->_orderedItems indexOfObject:?];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_stackedItems addObject:itemCopy];
    [(NSMutableArray *)self->_orderedItems addObject:itemCopy];
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = v5;
      if (v5 >= [(NSMutableArray *)self->_stackedItems count])
      {
        break;
      }

      v7 = [(NSMutableArray *)self->_stackedItems objectAtIndex:v5];
      v8 = [(NSMutableArray *)self->_orderedItems indexOfObject:v7];
      ++v5;
    }

    while (v8 <= v4);
    [(NSMutableArray *)self->_stackedItems insertObject:itemCopy atIndex:v6];
  }
}

- (void)updateDisplayedItems
{
  self->_isSuspended = 0;
  itemsToDisplay = [(StackController *)self itemsToDisplay];
  v32 = [(NSMutableArray *)self->_stackedItems copy];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v3 = itemsToDisplay;
  v4 = [v3 countByEnumeratingWithState:&v58 objects:v67 count:16];
  v5 = 0;
  if (v4)
  {
    v6 = *v59;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v59 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v58 + 1) + 8 * i);
        if (([(NSMutableArray *)self->_stackedItems containsObject:v8, v32]& 1) == 0)
        {
          [(StackController *)self addStackedItem:v8];
          if (!v5)
          {
            v5 = [[NSMutableArray alloc] initWithCapacity:1];
          }

          [v5 addObject:v8];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v58 objects:v67 count:16];
    }

    while (v4);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v32;
  v9 = 0;
  v10 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (v10)
  {
    v11 = *v55;
    do
    {
      for (j = 0; j != v10; j = j + 1)
      {
        if (*v55 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v54 + 1) + 8 * j);
        if (([v3 containsObject:{v13, v32}] & 1) == 0)
        {
          [(NSMutableArray *)self->_stackedItems removeObject:v13];
          if (!v9)
          {
            v9 = [[NSMutableArray alloc] initWithCapacity:1];
          }

          [v9 addObject:v13];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
    }

    while (v10);
  }

  [(StackController *)self beginTransaction];
  if ([v3 count])
  {
    v48 = 0uLL;
    v49 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
    v35 = v5;
    v14 = [v35 countByEnumeratingWithState:&v46 objects:v64 count:16];
    if (v14)
    {
      v15 = *v47;
      do
      {
        for (k = 0; k != v14; k = k + 1)
        {
          if (*v47 != v15)
          {
            objc_enumerationMutation(v35);
          }

          v17 = [(StackController *)self stackElementForItem:*(*(&v46 + 1) + 8 * k) createIfNeeded:1, v32];
          [v17 setTargetState:4];
        }

        v14 = [v35 countByEnumeratingWithState:&v46 objects:v64 count:16];
      }

      while (v14);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v34 = v9;
    v18 = [v34 countByEnumeratingWithState:&v42 objects:v63 count:16];
    if (v18)
    {
      v19 = *v43;
      do
      {
        for (m = 0; m != v18; m = m + 1)
        {
          if (*v43 != v19)
          {
            objc_enumerationMutation(v34);
          }

          v21 = [(StackController *)self stackElementForItem:*(*(&v42 + 1) + 8 * m) createIfNeeded:0, v32];
          [v21 setTargetState:5];
        }

        v18 = [v34 countByEnumeratingWithState:&v42 objects:v63 count:16];
      }

      while (v18);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    reverseObjectEnumerator = [(NSMutableArray *)self->_stackedItems reverseObjectEnumerator];
    v22 = [reverseObjectEnumerator countByEnumeratingWithState:&v38 objects:v62 count:16];
    if (v22)
    {
      v23 = 0;
      v24 = 0;
      v25 = *v39;
      do
      {
        for (n = 0; n != v22; n = n + 1)
        {
          if (*v39 != v25)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v27 = [(StackController *)self stackElementForItem:*(*(&v38 + 1) + 8 * n) createIfNeeded:0, v32];
          [v27 setTargetDepth:v24];
          if (v23 > 4)
          {
            [v27 setTargetState:6];
          }

          else
          {
            [v27 setTargetState:4];
            ++v23;
          }

          ++v24;
        }

        v22 = [reverseObjectEnumerator countByEnumeratingWithState:&v38 objects:v62 count:16];
      }

      while (v22);
    }
  }

  else
  {
    v52 = 0uLL;
    v53 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    reverseObjectEnumerator = v9;
    v28 = [reverseObjectEnumerator countByEnumeratingWithState:&v50 objects:v65 count:16];
    if (v28)
    {
      v29 = *v51;
      do
      {
        for (ii = 0; ii != v28; ii = ii + 1)
        {
          if (*v51 != v29)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v31 = [(StackController *)self stackElementForItem:*(*(&v50 + 1) + 8 * ii) createIfNeeded:0, v32];
          [v31 setTargetState:5];
        }

        v28 = [reverseObjectEnumerator countByEnumeratingWithState:&v50 objects:v65 count:16];
      }

      while (v28);
    }
  }

  [(StackController *)self endTransaction];
}

- (void)removeStackedViews:(BOOL)views
{
  viewsCopy = views;
  self->_isTerminating = 1;
  v5 = [(NSMutableArray *)self->_stackedItems copy];
  [(NSMutableArray *)self->_stackedItems removeAllObjects];
  [(StackController *)self setAnimateStateTransitions:viewsCopy];
  [(StackController *)self setItemsToDisplay:0];
  [(StackController *)self setNeedsToUpdateDisplayedItems:0 immediately:1];
  [(StackController *)self beginTransaction];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [(StackController *)self stackElementForItem:*(*(&v13 + 1) + 8 * v9) createIfNeeded:0, v13];
        [v10 setTargetState:1];
        if ([v10 currentState] == 1)
        {
          [(StackController *)self stackElement:v10 currentStateDidChangeFrom:1 to:1];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(StackController *)self endTransaction];
  if (![v6 count])
  {
    delegate = [(StackController *)self delegate];
    selfCopy = self;
    if (objc_opt_respondsToSelector())
    {
      [delegate stackControllerDidStopStackingViews:selfCopy];
    }
  }
}

- (void)updateStackedViewsFrame
{
  v3 = [(NSMutableArray *)self->_stackedItems copy];
  [(StackController *)self beginTransaction];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  reverseObjectEnumerator = [v3 reverseObjectEnumerator];
  v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v8 = [(StackController *)self stackElementForItem:*(*(&v9 + 1) + 8 * v7) createIfNeeded:0];
        if ([v8 currentState] != 1)
        {
          [(StackController *)self _updateStackedViewFrameForElement:v8];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(StackController *)self endTransaction];
}

- (void)updateStackedViewFrameForItem:(id)item
{
  v4 = [(StackController *)self stackElementForItem:item createIfNeeded:0];
  [(StackController *)self _updateStackedViewFrameForElement:?];
}

- (void)_updateStackedViewFrameForElement:(id)element
{
  elementCopy = element;
  dataSource = [(StackController *)self dataSource];
  item = [elementCopy item];
  [dataSource stackController:self rectForItem:item];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [elementCopy updateViewFrame:{v7, v9, v11, v13}];
}

- (id)stackedViewForItem:(id)item
{
  itemCopy = item;
  dataSource = [(StackController *)self dataSource];
  v6 = [dataSource stackController:self viewForItem:itemCopy];

  superview = [v6 superview];

  if (!superview)
  {
    stackContainerView = [(StackController *)self stackContainerView];
    [stackContainerView addSubview:v6];

    [v6 setAlpha:0.0];
  }

  layer = [v6 layer];
  [layer setCornerRadius:0.0];

  return v6;
}

- (id)keyForItem:(id)item
{
  itemCopy = item;
  v4 = itemCopy;
  if (itemCopy)
  {
    v5 = itemCopy;
  }

  else
  {
    v5 = +[NSNull null];
  }

  v6 = v5;

  return v6;
}

- (id)stackElementForItem:(id)item createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  itemCopy = item;
  v7 = [(StackController *)self keyForItem:itemCopy];
  v8 = [(NSMutableDictionary *)self->_stackElementsByItem objectForKeyedSubscript:v7];
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = !neededCopy;
  }

  if (!v9)
  {
    v8 = [[StackElement alloc] initWithItem:itemCopy state:1];
    [(StackElement *)v8 setDelegate:self];
    [(NSMutableDictionary *)self->_stackElementsByItem setObject:v8 forKeyedSubscript:v7];
  }

  return v8;
}

- (void)removeStackElement:(id)element
{
  item = [element item];
  v8 = [(StackController *)self keyForItem:item];

  [(NSMutableDictionary *)self->_stackElementsByItem removeObjectForKey:v8];
  if (![(NSMutableDictionary *)self->_stackElementsByItem count])
  {
    [(UIView *)self->_stackContainerView setClipsToBounds:0];
    stackContainerView = self->_stackContainerView;
    self->_stackContainerView = 0;

    delegate = [(StackController *)self delegate];
    selfCopy = self;
    if (objc_opt_respondsToSelector())
    {
      [delegate stackControllerDidStopStackingViews:selfCopy];
    }
  }
}

- (BOOL)isDataAvailableForStackElement:(id)element loadIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  elementCopy = element;
  item = [elementCopy item];
  lastObject = [(NSMutableArray *)self->_orderedItems lastObject];

  if (item == lastObject)
  {
    dataSource = [(StackController *)self dataSource];
    v11 = [(StackController *)self keyForItem:item];
    itemView = [elementCopy itemView];
    v9 = [dataSource stackController:self isDataLoadedForItem:item inView:itemView];
    if (((v9 | !neededCopy) & 1) == 0)
    {
      [dataSource stackController:self loadDataForItem:item inView:itemView];
    }

    v13 = [(NSMutableDictionary *)self->_loadRequestDatesByItem objectForKey:v11];
    v14 = v13;
    if (v13)
    {
      if (v9)
      {
        LOBYTE(v9) = 1;
LABEL_15:

        goto LABEL_16;
      }

      [v13 timeIntervalSinceNow];
      if (v17 > -0.05)
      {
        LOBYTE(v9) = 0;
        goto LABEL_15;
      }

      delegate = [(StackController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate stackController:self dataLoadTimedOutInView:itemView forItem:item];
      }

      LOBYTE(v9) = 1;
    }

    else
    {
      loadRequestDatesByItem = self->_loadRequestDatesByItem;
      delegate = +[NSDate date];
      [(NSMutableDictionary *)loadRequestDatesByItem setObject:delegate forKey:v11];
    }

    goto LABEL_15;
  }

  LOBYTE(v9) = 1;
LABEL_16:

  return v9;
}

- (void)endTransaction
{
  v2 = self->_transactionCount - 1;
  self->_transactionCount = v2;
  if (!v2 && self->_updateNeeded)
  {
    self->_updateNeeded = 0;
    [(StackController *)self updateStackElements];
  }
}

- (void)setNeedsToUpdateStackElements
{
  if (self->_transactionCount)
  {
    self->_updateNeeded = 1;
  }

  else
  {
    [(StackController *)self updateStackElements];
  }
}

- (void)updateStackElements
{
  if (!self->_isSuspended)
  {
    self->_loadingData = 0;
    self->_itemsBecameStacked = 0;
    allValues = [(NSMutableDictionary *)self->_stackElementsByItem allValues];
    if ([allValues count])
    {
      [(StackController *)self beginTransaction];
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      v4 = allValues;
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v5)
      {
        v6 = *v9;
        do
        {
          v7 = 0;
          do
          {
            if (*v9 != v6)
            {
              objc_enumerationMutation(v4);
            }

            [(StackController *)self updateStackElement:*(*(&v8 + 1) + 8 * v7), v8];
            v7 = v7 + 1;
          }

          while (v5 != v7);
          v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
        }

        while (v5);
      }

      [(StackController *)self endTransaction];
    }

    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"setNeedsToUpdateStackElements" object:0, v8];
    if (self->_loadingData)
    {
      [(StackController *)self performSelector:"setNeedsToUpdateStackElements" withObject:0 afterDelay:0.05];
    }

    [(StackController *)self updateIsAnimating];
  }
}

- (void)updateStackElement:(id)element
{
  elementCopy = element;
  nextState = [elementCopy nextState];
  targetState = [elementCopy targetState];
  nextDepth = [elementCopy nextDepth];
  targetDepth = [elementCopy targetDepth];
  maximumStackElementDepth = targetDepth;
  if (nextState != targetState || nextDepth != targetDepth)
  {
    animateStateTransitions = [(StackController *)self animateStateTransitions];
    if ([elementCopy isAnimating])
    {
      maximumStackElementDepth = nextDepth;
    }

    if (targetState > 3)
    {
      if (targetState == 4)
      {
        if (![(StackController *)self isDataAvailableForStackElement:elementCopy loadIfNeeded:[(StackController *)self _shouldLoadDataForElement:elementCopy]])
        {
          self->_loadingData = 1;
          goto LABEL_22;
        }

        v10 = 4;
      }

      else if (targetState == 5)
      {
        v10 = 5;
        if (nextState == 6 && maximumStackElementDepth >= 5)
        {
          maximumStackElementDepth = [(StackController *)self maximumStackElementDepth];
          v10 = 5;
        }
      }

      else
      {
        v10 = targetState;
        if (targetState != 6)
        {
          goto LABEL_22;
        }
      }
    }

    else if ((targetState - 1) >= 2)
    {
      if (targetState != 3)
      {
        goto LABEL_22;
      }

      if ([(StackController *)self isAnyStackElementBeingStacked])
      {
        v10 = nextState;
      }

      else
      {
        v10 = 3;
      }
    }

    else
    {
      v10 = targetState;
    }

    if (v10 != nextState)
    {
      if (v10 == 4 && targetState == 4)
      {
        self->_itemsBecameStacked = 1;
        delegate = [(StackController *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          itemView = [elementCopy itemView];
          item = [elementCopy item];
          [delegate stackController:self willDisplayView:itemView forItem:item];
        }

        v10 = 4;
      }

LABEL_35:
      [elementCopy setNextState:v10 nextDepth:maximumStackElementDepth animated:animateStateTransitions];
      goto LABEL_36;
    }

LABEL_22:
    v12 = nextState != 4 || maximumStackElementDepth == nextDepth;
    v10 = nextState;
    if (v12 && animateStateTransitions)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_36:
}

- (void)stackDataSourceDidLoadItemData:(id)data
{
  object = [data object];
  v4 = [StackController stackElementForItem:"stackElementForItem:createIfNeeded:" createIfNeeded:?];

  if (v4)
  {
    [(StackController *)self setNeedsToUpdateStackElements];
  }
}

- (BOOL)isAnyStackElementBeingStacked
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->_stackedItems reverseObjectEnumerator];
  v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v7 = [(StackController *)self stackElementForItem:*(*(&v11 + 1) + 8 * i) createIfNeeded:0];
        v8 = v7;
        if (v7 && [v7 nextState] == 4 && !objc_msgSend(v8, "currentState"))
        {

          v9 = 1;
          goto LABEL_13;
        }
      }

      v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (void)setIsAnimating:(BOOL)animating
{
  if (self->_isAnimating != animating)
  {
    animatingCopy = animating;
    self->_isAnimating = animating;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (animatingCopy)
    {
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained stackControllerWillStartAnimatingViews:self];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [WeakRetained stackControllerDidStopAnimatingViews:self];
    }
  }
}

- (void)updateIsAnimating
{
  if (self->_isTerminating)
  {
    v3 = 0;
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    allValues = [(NSMutableDictionary *)self->_stackElementsByItem allValues];
    v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v5 = *v8;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(allValues);
          }

          if ([*(*(&v7 + 1) + 8 * i) isAnimating])
          {
            v3 = 1;
            goto LABEL_13;
          }
        }

        v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  [(StackController *)self setIsAnimating:v3];
}

- (UIEdgeInsets)stackContainerViewEdgeInsets
{
  top = self->_stackContainerViewEdgeInsets.top;
  left = self->_stackContainerViewEdgeInsets.left;
  bottom = self->_stackContainerViewEdgeInsets.bottom;
  right = self->_stackContainerViewEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)viewForStackElement:(id)element
{
  item = [element item];
  v5 = [(StackController *)self stackedViewForItem:item];

  return v5;
}

- (id)viewBelowStackElement:(id)element
{
  item = [element item];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->_orderedItems reverseObjectEnumerator];
  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (v7)
        {
          v11 = [(StackController *)self stackElementForItem:v10 createIfNeeded:0];
          v12 = [v11 itemViewCreateIfNeeded:0];

          if (v12)
          {
            goto LABEL_13;
          }

          v7 = 1;
        }

        else
        {
          v7 = v10 == item;
        }
      }

      v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (void)stackElement:(id)element willRemoveView:(id)view
{
  elementCopy = element;
  item = [elementCopy item];
  delegate = [(StackController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate stackController:self willRemoveViewForItem:item];
  }

  if (([(NSMutableArray *)self->_stackedItems containsObject:item]& 1) == 0)
  {
    [(NSMutableArray *)self->_orderedItems removeObject:item];
    if ([(NSMutableArray *)self->_stackedItems count])
    {
      lastObject = [(NSMutableArray *)self->_stackedItems lastObject];
      v8 = [(StackController *)self stackElementForItem:lastObject createIfNeeded:0];
      v9 = v8;
      if (v8)
      {
        itemView = [v8 itemView];
        dataSource = [(StackController *)self dataSource];
        if (([dataSource stackController:self isDataLoadedForItem:lastObject inView:itemView] & 1) == 0 && -[StackController _shouldLoadDataForElement:](self, "_shouldLoadDataForElement:", elementCopy))
        {
          [dataSource stackController:self loadDataForItem:lastObject inView:itemView];
        }
      }
    }
  }
}

- (void)stackElement:(id)element currentStateDidChangeFrom:(int64_t)from to:(int64_t)to
{
  elementCopy = element;
  if ([elementCopy targetState] != to)
  {
    goto LABEL_21;
  }

  if (to > 4)
  {
    if ((to - 5) >= 2)
    {
      goto LABEL_21;
    }

LABEL_14:
    item = [elementCopy item];
    [elementCopy removeView];
    if (([(NSMutableArray *)self->_stackedItems containsObject:item]& 1) == 0)
    {
      [(StackController *)self removeStackElement:elementCopy];
    }

    if (item && ([(NSMutableArray *)self->_stackedItems containsObject:item]& 1) == 0)
    {
      [(NSMutableArray *)self->_orderedItems removeObject:item];
    }

    goto LABEL_19;
  }

  if (to == 1)
  {
    goto LABEL_14;
  }

  if (to == 2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10024E770;
    block[3] = &unk_10064C7E8;
    v13 = elementCopy;
    v15 = v13;
    dispatch_async(&_dispatch_main_q, block);
    [(StackController *)self removeStackElement:v13];

    goto LABEL_21;
  }

  if (to == 4 && (from & 0xFFFFFFFFFFFFFFFBLL) == 1 && [(NSMutableArray *)self->_orderedItems count])
  {
    item = [elementCopy item];
    lastObject = [(NSMutableArray *)self->_orderedItems lastObject];

    if (item == lastObject)
    {
      dataSource = [(StackController *)self dataSource];
      itemView = [elementCopy itemView];
      if (([dataSource stackController:self isDataLoadedForItem:item inView:itemView] & 1) == 0 && -[StackController _shouldLoadDataForElement:](self, "_shouldLoadDataForElement:", elementCopy))
      {
        [dataSource stackController:self loadDataForItem:item inView:itemView];
      }
    }

LABEL_19:
  }

LABEL_21:
  [(StackController *)self setNeedsToUpdateStackElements];
}

- (void)stackElement:(id)element targetStateDidChangeFrom:(int64_t)from to:(int64_t)to
{
  elementCopy = element;
  if (from == 1 && to == 4)
  {
    delegate = [(StackController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      itemView = [elementCopy itemView];
      item = [elementCopy item];
      [delegate stackController:self willStackView:itemView forItem:item];
    }
  }

  [(StackController *)self setNeedsToUpdateStackElements];
}

- (StackDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (StackDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end