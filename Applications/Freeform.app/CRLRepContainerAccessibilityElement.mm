@interface CRLRepContainerAccessibilityElement
- (BOOL)crlaxIsReadyToLoadChildren;
- (CGRect)accessibilityFrame;
- (CRLCanvasRepAccessibility)_selectableRep;
- (CRLCanvasRepAccessibility)rep;
- (CRLRepContainerAccessibilityElement)initWithRep:(id)rep accessibilityParent:(id)parent;
- (id)_crlaxGroupRepAncestor;
- (id)_crlaxKnobElementsUniqueToRep;
- (void)crlaxLoadChildrenIntoCollection:(id)collection;
- (void)dealloc;
@end

@implementation CRLRepContainerAccessibilityElement

- (CRLRepContainerAccessibilityElement)initWithRep:(id)rep accessibilityParent:(id)parent
{
  repCopy = rep;
  parentCopy = parent;
  v17.receiver = self;
  v17.super_class = CRLRepContainerAccessibilityElement;
  v8 = [(CRLAccessibilityElement *)&v17 initWithAccessibilityParent:parentCopy];
  ShouldPerformValidationChecks = CRLAccessibilityShouldPerformValidationChecks();
  if (repCopy || !ShouldPerformValidationChecks)
  {
    if (repCopy)
    {
      objc_storeWeak(&v8->_rep, repCopy);
    }
  }

  else
  {
    ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
    if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Cannot create a rep container with a nil rep!", v11, v12, v13, v14, v15, v17.receiver))
    {
      abort();
    }
  }

  return v8;
}

- (void)dealloc
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  crlaxChildren = [(CRLRepContainerAccessibilityElement *)self crlaxChildren];
  v4 = [crlaxChildren countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(crlaxChildren);
        }

        [*(*(&v9 + 1) + 8 * v7) setAccessibilityContainer:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [crlaxChildren countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  objc_storeWeak(&self->_rep, 0);
  v8.receiver = self;
  v8.super_class = CRLRepContainerAccessibilityElement;
  [(CRLRepContainerAccessibilityElement *)&v8 dealloc];
}

- (BOOL)crlaxIsReadyToLoadChildren
{
  v3 = [(CRLRepContainerAccessibilityElement *)self rep];
  if (v3)
  {
    v4 = [(CRLRepContainerAccessibilityElement *)self rep];
    if ([v4 crlaxIsBeingRemoved])
    {
      v5 = 0;
    }

    else
    {
      v6 = [(CRLRepContainerAccessibilityElement *)self rep];
      crlaxInteractiveCanvasController = [v6 crlaxInteractiveCanvasController];
      if ([crlaxInteractiveCanvasController crlaxIsTearingDown])
      {
        v5 = 0;
      }

      else
      {
        v5 = +[NSThread isMainThread];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)crlaxLoadChildrenIntoCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [(CRLRepContainerAccessibilityElement *)self rep];
  [collectionCopy addObject:v5];
  if ([v5 crlaxShouldCreateKnobs])
  {
    _crlaxKnobElementsUniqueToRep = [(CRLRepContainerAccessibilityElement *)self _crlaxKnobElementsUniqueToRep];
    [collectionCopy addObjectsFromArray:_crlaxKnobElementsUniqueToRep];
  }

  if ([v5 isAccessibilityElement])
  {
    crlaxChildren = [v5 crlaxChildren];
    v8 = [crlaxChildren count];

    if (v8)
    {
      crlaxChildren2 = [v5 crlaxChildren];
      [collectionCopy addObjectsFromArray:crlaxChildren2];
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = collectionCopy;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        [v15 crlaxEnsureChildrenAreLoaded];
        [v15 setAccessibilityContainer:self];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (CGRect)accessibilityFrame
{
  _selectableRep = [(CRLRepContainerAccessibilityElement *)self _selectableRep];
  [_selectableRep accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CRLCanvasRepAccessibility)_selectableRep
{
  WeakRetained = objc_loadWeakRetained(&self->_rep);
  crlaxRepForSelecting = [WeakRetained crlaxRepForSelecting];

  if (!crlaxRepForSelecting)
  {
    crlaxRepForSelecting = objc_loadWeakRetained(&self->_rep);
  }

  return crlaxRepForSelecting;
}

- (id)_crlaxKnobElementsUniqueToRep
{
  v3 = +[NSMutableArray array];
  v4 = +[NSSet set];
  v5 = [(CRLRepContainerAccessibilityElement *)self rep];
  crlaxIsInGroup = [v5 crlaxIsInGroup];

  if (crlaxIsInGroup)
  {
    _crlaxGroupRepAncestor = [(CRLRepContainerAccessibilityElement *)self _crlaxGroupRepAncestor];
    crlaxKnobAccessibilityElements = [_crlaxGroupRepAncestor crlaxKnobAccessibilityElements];
    v9 = [NSSet setWithArray:crlaxKnobAccessibilityElements];

    v4 = v9;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  _selectableRep = [(CRLRepContainerAccessibilityElement *)self _selectableRep];
  crlaxKnobAccessibilityElements2 = [_selectableRep crlaxKnobAccessibilityElements];
  v12 = [CRLCanvasKnobAccessibilityElement crlaxSortKnobElements:crlaxKnobAccessibilityElements2];

  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * i);
        if (([v4 containsObject:v17] & 1) == 0)
        {
          [v3 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return v3;
}

- (id)_crlaxGroupRepAncestor
{
  accessibilityContainer = [(CRLRepContainerAccessibilityElement *)self accessibilityContainer];
  if (accessibilityContainer)
  {
    while (1)
    {
      v7 = 0;
      v3 = accessibilityContainer;
      v4 = objc_opt_class();
      v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v7);
      if (v7 == 1)
      {
        abort();
      }

      accessibilityContainer = v5;

      if (accessibilityContainer)
      {
        break;
      }

      accessibilityContainer = [v3 accessibilityContainer];

      if (!accessibilityContainer)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v3 = 0;
  }

  return accessibilityContainer;
}

- (CRLCanvasRepAccessibility)rep
{
  WeakRetained = objc_loadWeakRetained(&self->_rep);

  return WeakRetained;
}

@end