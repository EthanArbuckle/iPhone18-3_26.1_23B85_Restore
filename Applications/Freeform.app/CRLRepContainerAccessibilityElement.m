@interface CRLRepContainerAccessibilityElement
- (BOOL)crlaxIsReadyToLoadChildren;
- (CGRect)accessibilityFrame;
- (CRLCanvasRepAccessibility)_selectableRep;
- (CRLCanvasRepAccessibility)rep;
- (CRLRepContainerAccessibilityElement)initWithRep:(id)a3 accessibilityParent:(id)a4;
- (id)_crlaxGroupRepAncestor;
- (id)_crlaxKnobElementsUniqueToRep;
- (void)crlaxLoadChildrenIntoCollection:(id)a3;
- (void)dealloc;
@end

@implementation CRLRepContainerAccessibilityElement

- (CRLRepContainerAccessibilityElement)initWithRep:(id)a3 accessibilityParent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = CRLRepContainerAccessibilityElement;
  v8 = [(CRLAccessibilityElement *)&v17 initWithAccessibilityParent:v7];
  ShouldPerformValidationChecks = CRLAccessibilityShouldPerformValidationChecks();
  if (v6 || !ShouldPerformValidationChecks)
  {
    if (v6)
    {
      objc_storeWeak(&v8->_rep, v6);
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
  v3 = [(CRLRepContainerAccessibilityElement *)self crlaxChildren];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7) setAccessibilityContainer:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
      v7 = [v6 crlaxInteractiveCanvasController];
      if ([v7 crlaxIsTearingDown])
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

- (void)crlaxLoadChildrenIntoCollection:(id)a3
{
  v4 = a3;
  v5 = [(CRLRepContainerAccessibilityElement *)self rep];
  [v4 addObject:v5];
  if ([v5 crlaxShouldCreateKnobs])
  {
    v6 = [(CRLRepContainerAccessibilityElement *)self _crlaxKnobElementsUniqueToRep];
    [v4 addObjectsFromArray:v6];
  }

  if ([v5 isAccessibilityElement])
  {
    v7 = [v5 crlaxChildren];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [v5 crlaxChildren];
      [v4 addObjectsFromArray:v9];
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v4;
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
  v2 = [(CRLRepContainerAccessibilityElement *)self _selectableRep];
  [v2 accessibilityFrame];
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
  v4 = [WeakRetained crlaxRepForSelecting];

  if (!v4)
  {
    v4 = objc_loadWeakRetained(&self->_rep);
  }

  return v4;
}

- (id)_crlaxKnobElementsUniqueToRep
{
  v3 = +[NSMutableArray array];
  v4 = +[NSSet set];
  v5 = [(CRLRepContainerAccessibilityElement *)self rep];
  v6 = [v5 crlaxIsInGroup];

  if (v6)
  {
    v7 = [(CRLRepContainerAccessibilityElement *)self _crlaxGroupRepAncestor];
    v8 = [v7 crlaxKnobAccessibilityElements];
    v9 = [NSSet setWithArray:v8];

    v4 = v9;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [(CRLRepContainerAccessibilityElement *)self _selectableRep];
  v11 = [v10 crlaxKnobAccessibilityElements];
  v12 = [CRLCanvasKnobAccessibilityElement crlaxSortKnobElements:v11];

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
  v2 = [(CRLRepContainerAccessibilityElement *)self accessibilityContainer];
  if (v2)
  {
    while (1)
    {
      v7 = 0;
      v3 = v2;
      v4 = objc_opt_class();
      v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v7);
      if (v7 == 1)
      {
        abort();
      }

      v2 = v5;

      if (v2)
      {
        break;
      }

      v2 = [v3 accessibilityContainer];

      if (!v2)
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

  return v2;
}

- (CRLCanvasRepAccessibility)rep
{
  WeakRetained = objc_loadWeakRetained(&self->_rep);

  return WeakRetained;
}

@end