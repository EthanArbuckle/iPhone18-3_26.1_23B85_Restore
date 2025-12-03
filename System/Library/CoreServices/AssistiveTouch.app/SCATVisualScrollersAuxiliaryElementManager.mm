@interface SCATVisualScrollersAuxiliaryElementManager
- (BOOL)_isGroupingEnabled;
- (BOOL)_showScroller:(int64_t)scroller withElement:(id)element;
- (BOOL)containsElement:(id)element;
- (NSArray)scrollerElements;
- (NSArray)scrollerGroups;
- (SCATVisualScrollersAuxiliaryElementManager)initWithMode:(int64_t)mode;
- (id)_groupForElement:(id)element;
- (id)elementAfter:(id)after didWrap:(BOOL *)wrap options:(int *)options;
- (id)elementBefore:(id)before didWrap:(BOOL *)wrap options:(int *)options;
- (id)firstElementWithOptions:(int *)options;
- (id)lastElementWithOptions:(int *)options;
- (id)scrollerElementsForContextElement;
- (id)scrollerGroupsForContextElement;
- (void)dealloc;
- (void)scrollContainer:(id)container scrollInDirection:(int64_t)direction;
- (void)setContextElement:(id)element;
@end

@implementation SCATVisualScrollersAuxiliaryElementManager

- (SCATVisualScrollersAuxiliaryElementManager)initWithMode:(int64_t)mode
{
  v10.receiver = self;
  v10.super_class = SCATVisualScrollersAuxiliaryElementManager;
  v4 = [(SCATVisualScrollersAuxiliaryElementManager *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_mode = mode;
    v6 = objc_opt_new();
    [(SCATAuxiliaryElementManager *)v5 setViewController:v6];
    [v6 setScrollDelegate:v5];
    [v6 setPositionRelativeToContextElement:mode == 1];
    horizontalScroller = [v6 horizontalScroller];
    [horizontalScroller setDelegate:v5];

    verticalScroller = [v6 verticalScroller];
    [verticalScroller setDelegate:v5];
  }

  return v5;
}

- (void)dealloc
{
  if ([(SCATAuxiliaryElementManager *)self isViewControllerLoaded])
  {
    viewController = [(SCATAuxiliaryElementManager *)self viewController];
    [viewController setScrollDelegate:0];
    verticalScroller = [viewController verticalScroller];
    [verticalScroller setDelegate:0];

    horizontalScroller = [viewController horizontalScroller];
    [horizontalScroller setDelegate:0];
  }

  v6.receiver = self;
  v6.super_class = SCATVisualScrollersAuxiliaryElementManager;
  [(SCATVisualScrollersAuxiliaryElementManager *)&v6 dealloc];
}

- (NSArray)scrollerElements
{
  if (!self->_scrollerElements)
  {
    viewController = [(SCATAuxiliaryElementManager *)self viewController];

    if (viewController)
    {
      viewController2 = [(SCATAuxiliaryElementManager *)self viewController];
      verticalScroller = [viewController2 verticalScroller];
      scrollUpView = [verticalScroller scrollUpView];
      v27[0] = scrollUpView;
      verticalScroller2 = [viewController2 verticalScroller];
      scrollDownView = [verticalScroller2 scrollDownView];
      v27[1] = scrollDownView;
      horizontalScroller = [viewController2 horizontalScroller];
      scrollLeftView = [horizontalScroller scrollLeftView];
      v27[2] = scrollLeftView;
      horizontalScroller2 = [viewController2 horizontalScroller];
      scrollRightView = [horizontalScroller2 scrollRightView];
      v27[3] = scrollRightView;
      v12 = [NSArray arrayWithObjects:v27 count:4];
      scrollerElements = self->_scrollerElements;
      self->_scrollerElements = v12;

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v14 = self->_scrollerElements;
      v15 = [(NSArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v23;
        do
        {
          v18 = 0;
          do
          {
            if (*v23 != v17)
            {
              objc_enumerationMutation(v14);
            }

            [*(*(&v22 + 1) + 8 * v18) setScatAuxiliaryElementManager:self];
            v18 = v18 + 1;
          }

          while (v16 != v18);
          v16 = [(NSArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v16);
      }
    }
  }

  v19 = self->_scrollerElements;

  return v19;
}

- (NSArray)scrollerGroups
{
  if (!self->_scrollerGroups)
  {
    viewController = [(SCATAuxiliaryElementManager *)self viewController];

    if (viewController)
    {
      viewController2 = [(SCATAuxiliaryElementManager *)self viewController];
      v5 = [AXElementGroup alloc];
      verticalScroller = [viewController2 verticalScroller];
      scrollUpView = [verticalScroller scrollUpView];
      v47[0] = scrollUpView;
      verticalScroller2 = [viewController2 verticalScroller];
      scrollDownView = [verticalScroller2 scrollDownView];
      v47[1] = scrollDownView;
      v10 = [NSArray arrayWithObjects:v47 count:2];
      v11 = [v5 initWithElements:v10 label:0];

      v12 = sub_100042B24(@"ScrollUpDownContainer");
      [v11 setAccessibilityLabel:v12];

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v39 objects:v46 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v40;
        do
        {
          v17 = 0;
          do
          {
            if (*v40 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v39 + 1) + 8 * v17) setScatAuxiliaryElementManager:self];
            v17 = v17 + 1;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v39 objects:v46 count:16];
        }

        while (v15);
      }

      [v13 setScatAuxiliaryElementManager:self];
      v18 = [AXElementGroup alloc];
      horizontalScroller = [viewController2 horizontalScroller];
      scrollLeftView = [horizontalScroller scrollLeftView];
      v45[0] = scrollLeftView;
      horizontalScroller2 = [viewController2 horizontalScroller];
      scrollRightView = [horizontalScroller2 scrollRightView];
      v45[1] = scrollRightView;
      v23 = [NSArray arrayWithObjects:v45 count:2];
      v24 = [v18 initWithElements:v23 label:0];

      v25 = sub_100042B24(@"ScrollLeftRightContainer");
      [v24 setAccessibilityLabel:v25];

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v26 = v24;
      v27 = [v26 countByEnumeratingWithState:&v35 objects:v44 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v36;
        do
        {
          v30 = 0;
          do
          {
            if (*v36 != v29)
            {
              objc_enumerationMutation(v26);
            }

            [*(*(&v35 + 1) + 8 * v30) setScatAuxiliaryElementManager:{self, v35}];
            v30 = v30 + 1;
          }

          while (v28 != v30);
          v28 = [v26 countByEnumeratingWithState:&v35 objects:v44 count:16];
        }

        while (v28);
      }

      [v26 setScatAuxiliaryElementManager:self];
      v43[0] = v13;
      v43[1] = v26;
      v31 = [NSArray arrayWithObjects:v43 count:2];
      scrollerGroups = self->_scrollerGroups;
      self->_scrollerGroups = v31;
    }
  }

  v33 = self->_scrollerGroups;

  return v33;
}

- (BOOL)_isGroupingEnabled
{
  v2 = +[AXSettings sharedInstance];
  assistiveTouchGroupElementsEnabled = [v2 assistiveTouchGroupElementsEnabled];

  return assistiveTouchGroupElementsEnabled;
}

- (BOOL)_showScroller:(int64_t)scroller withElement:(id)element
{
  elementCopy = element;
  _isGroupingEnabled = [(SCATVisualScrollersAuxiliaryElementManager *)self _isGroupingEnabled];
  mode = [(SCATVisualScrollersAuxiliaryElementManager *)self mode];
  v9 = mode;
  if (_isGroupingEnabled)
  {
    scatScanningBehaviorTraits = [elementCopy scatScanningBehaviorTraits];
    if (v9)
    {
      if (scroller)
      {
        LOBYTE(v11) = scatScanningBehaviorTraits;
      }

      else
      {
        LOBYTE(v11) = (scatScanningBehaviorTraits & 2) != 0;
      }
    }

    else if (scroller)
    {
      if ((scatScanningBehaviorTraits & 1) != 0 && ([elementCopy isGroup] & 1) == 0)
      {
        parentGroup = [elementCopy parentGroup];
        v13ParentGroup = [parentGroup parentGroup];
        LOBYTE(v11) = v13ParentGroup == 0;
      }

      else
      {
        v11 = ([elementCopy scatScanningBehaviorTraits] >> 2) & 1;
      }
    }

    else
    {
      v11 = (scatScanningBehaviorTraits >> 3) & 1;
    }
  }

  else if (mode)
  {
    scatScanningBehaviorTraits2 = [elementCopy scatScanningBehaviorTraits];
    if (scroller)
    {
      LOBYTE(v11) = (scatScanningBehaviorTraits2 & 5) != 0;
    }

    else
    {
      LOBYTE(v11) = (scatScanningBehaviorTraits2 & 0xA) != 0;
    }
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  return v11 & 1;
}

- (id)scrollerElementsForContextElement
{
  contextElement = [(SCATAuxiliaryElementManager *)self contextElement];
  v25 = [(SCATVisualScrollersAuxiliaryElementManager *)self _showScroller:1 withElement:contextElement];

  contextElement2 = [(SCATAuxiliaryElementManager *)self contextElement];
  v5 = [(SCATVisualScrollersAuxiliaryElementManager *)self _showScroller:0 withElement:contextElement2];

  viewController = [(SCATAuxiliaryElementManager *)self viewController];
  v24 = [NSMutableArray arrayWithCapacity:4];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(SCATVisualScrollersAuxiliaryElementManager *)self scrollerElements];
  v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        if (!v25)
        {
LABEL_9:
          if (!v5)
          {
            continue;
          }

          goto LABEL_13;
        }

        horizontalScroller = [viewController horizontalScroller];
        scrollLeftView = [horizontalScroller scrollLeftView];
        v14 = scrollLeftView;
        if (v11 == scrollLeftView)
        {
        }

        else
        {
          horizontalScroller2 = [viewController horizontalScroller];
          scrollRightView = [horizontalScroller2 scrollRightView];

          if (v11 != scrollRightView)
          {
            goto LABEL_9;
          }
        }

        [v24 addObject:v11];
        if (!v5)
        {
          continue;
        }

LABEL_13:
        verticalScroller = [viewController verticalScroller];
        scrollUpView = [verticalScroller scrollUpView];
        v19 = scrollUpView;
        if (v11 == scrollUpView)
        {
        }

        else
        {
          verticalScroller2 = [viewController verticalScroller];
          scrollDownView = [verticalScroller2 scrollDownView];

          if (v11 != scrollDownView)
          {
            continue;
          }
        }

        [v24 addObject:v11];
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  return v24;
}

- (id)scrollerGroupsForContextElement
{
  contextElement = [(SCATAuxiliaryElementManager *)self contextElement];
  v4 = [(SCATVisualScrollersAuxiliaryElementManager *)self _showScroller:1 withElement:contextElement];

  contextElement2 = [(SCATAuxiliaryElementManager *)self contextElement];
  v6 = [(SCATVisualScrollersAuxiliaryElementManager *)self _showScroller:0 withElement:contextElement2];

  viewController = [(SCATAuxiliaryElementManager *)self viewController];
  v20 = [NSMutableArray arrayWithCapacity:2];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(SCATVisualScrollersAuxiliaryElementManager *)self scrollerGroups];
  v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if (v4)
        {
          horizontalScroller = [viewController horizontalScroller];
          scrollLeftView = [horizontalScroller scrollLeftView];
          v15 = [v12 containsObject:scrollLeftView];

          if (v15)
          {
            [v20 addObject:v12];
          }
        }

        if (v6)
        {
          verticalScroller = [viewController verticalScroller];
          scrollUpView = [verticalScroller scrollUpView];
          v18 = [v12 containsObject:scrollUpView];

          if (v18)
          {
            [v20 addObject:v12];
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  return v20;
}

- (id)_groupForElement:(id)element
{
  elementCopy = element;
  scrollerGroupsForContextElement = [(SCATVisualScrollersAuxiliaryElementManager *)self scrollerGroupsForContextElement];
  if ([scrollerGroupsForContextElement containsObject:elementCopy])
  {
    v6 = scrollerGroupsForContextElement;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = scrollerGroupsForContextElement;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if ([v12 isGroup] && (objc_msgSend(v12, "containsObject:", elementCopy) & 1) != 0)
          {
            v6 = v12;

            goto LABEL_14;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
  }

LABEL_14:

  return v6;
}

- (void)setContextElement:(id)element
{
  elementCopy = element;
  v15.receiver = self;
  v15.super_class = SCATVisualScrollersAuxiliaryElementManager;
  [(SCATAuxiliaryElementManager *)&v15 setContextElement:elementCopy];
  [(SCATVisualScrollersAuxiliaryElementManager *)self setHasActivatedScrollSinceContextUpdate:0];
  if ([(SCATVisualScrollersAuxiliaryElementManager *)self mode]== 1)
  {
    isGroup = [elementCopy isGroup];
    if (!elementCopy || isGroup)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      scrollerGroups = [(SCATVisualScrollersAuxiliaryElementManager *)self scrollerGroups];
      v7 = [scrollerGroups countByEnumeratingWithState:&v11 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(scrollerGroups);
            }

            [*(*(&v11 + 1) + 8 * v10) setParentGroup:elementCopy];
            v10 = v10 + 1;
          }

          while (v8 != v10);
          v8 = [scrollerGroups countByEnumeratingWithState:&v11 objects:v16 count:16];
        }

        while (v8);
      }
    }
  }
}

- (id)firstElementWithOptions:(int *)options
{
  if ([(SCATVisualScrollersAuxiliaryElementManager *)self _isGroupingEnabled])
  {
    [(SCATVisualScrollersAuxiliaryElementManager *)self scrollerGroupsForContextElement];
  }

  else
  {
    [(SCATVisualScrollersAuxiliaryElementManager *)self scrollerElementsForContextElement];
  }
  v4 = ;
  firstObject = [v4 firstObject];

  return firstObject;
}

- (id)lastElementWithOptions:(int *)options
{
  if ([(SCATVisualScrollersAuxiliaryElementManager *)self _isGroupingEnabled])
  {
    [(SCATVisualScrollersAuxiliaryElementManager *)self scrollerGroupsForContextElement];
  }

  else
  {
    [(SCATVisualScrollersAuxiliaryElementManager *)self scrollerElementsForContextElement];
  }
  v4 = ;
  lastObject = [v4 lastObject];

  return lastObject;
}

- (id)elementBefore:(id)before didWrap:(BOOL *)wrap options:(int *)options
{
  beforeCopy = before;
  if ([(SCATVisualScrollersAuxiliaryElementManager *)self _isGroupingEnabled])
  {
    [(SCATVisualScrollersAuxiliaryElementManager *)self _groupForElement:beforeCopy];
  }

  else
  {
    [(SCATVisualScrollersAuxiliaryElementManager *)self scrollerElementsForContextElement];
  }
  v8 = ;
  v9 = v8;
  if (v8 && (v10 = [v8 indexOfObject:beforeCopy], v10 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v14 = v10;
    v15 = [v9 count];
    v12 = v14 == 0;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    v11 = [v9 objectAtIndex:v16 - 1];
    if (!wrap)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    if (!wrap)
    {
      goto LABEL_8;
    }
  }

  *wrap = v12;
LABEL_8:

  return v11;
}

- (id)elementAfter:(id)after didWrap:(BOOL *)wrap options:(int *)options
{
  afterCopy = after;
  if ([(SCATVisualScrollersAuxiliaryElementManager *)self _isGroupingEnabled])
  {
    [(SCATVisualScrollersAuxiliaryElementManager *)self _groupForElement:afterCopy];
  }

  else
  {
    [(SCATVisualScrollersAuxiliaryElementManager *)self scrollerElementsForContextElement];
  }
  v8 = ;
  v9 = [v8 indexOfObject:afterCopy];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [v8 count] - 1;
    v11 = v9 == v12;
    if (v9 == v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v9 + 1;
    }

    v10 = [v8 objectAtIndex:v13];
    if (!wrap)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v10 = 0;
  v11 = 0;
  if (wrap)
  {
LABEL_11:
    *wrap = v11;
  }

LABEL_12:

  return v10;
}

- (BOOL)containsElement:(id)element
{
  elementCopy = element;
  if ([(SCATVisualScrollersAuxiliaryElementManager *)self _isGroupingEnabled])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    scrollerGroups = [(SCATVisualScrollersAuxiliaryElementManager *)self scrollerGroups];
    v6 = [scrollerGroups countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(scrollerGroups);
          }

          if ([*(*(&v13 + 1) + 8 * i) containsObject:elementCopy])
          {

            v10 = 1;
            goto LABEL_13;
          }
        }

        v7 = [scrollerGroups countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
  }

  else
  {
    scrollerElements = [(SCATVisualScrollersAuxiliaryElementManager *)self scrollerElements];
    v10 = [scrollerElements containsObject:elementCopy];
  }

LABEL_13:

  return v10;
}

- (void)scrollContainer:(id)container scrollInDirection:(int64_t)direction
{
  hasActivatedScrollSinceContextUpdate = [(SCATVisualScrollersAuxiliaryElementManager *)self hasActivatedScrollSinceContextUpdate];
  [(SCATVisualScrollersAuxiliaryElementManager *)self setHasActivatedScrollSinceContextUpdate:1];
  if (direction > 3)
  {
    v7 = 0;
    if (hasActivatedScrollSinceContextUpdate)
    {
LABEL_10:
      v10 = *(v7 + 16);

      v10(v7);
      return;
    }
  }

  else
  {
    v7 = *(&off_1001D68C8 + direction);
    if (hasActivatedScrollSinceContextUpdate)
    {
      goto LABEL_10;
    }
  }

  if (![(SCATVisualScrollersAuxiliaryElementManager *)self mode])
  {
    goto LABEL_10;
  }

  contextElement = [(SCATAuxiliaryElementManager *)self contextElement];
  isGroup = [contextElement isGroup];

  if ((isGroup & 1) == 0)
  {
    _AXAssert();
    goto LABEL_10;
  }

  contextElement2 = [(SCATAuxiliaryElementManager *)self contextElement];
  if (![contextElement2 containsNativeFocusElement])
  {
    v11 = 0;
    if (direction > 1)
    {
      if (direction == 2)
      {
        leftMostLeafAXElement = [contextElement2 leftMostLeafAXElement];
        goto LABEL_22;
      }

      if (direction == 3)
      {
        leftMostLeafAXElement = [contextElement2 rightMostLeafAXElement];
        goto LABEL_22;
      }
    }

    else
    {
      if (!direction)
      {
        leftMostLeafAXElement = [contextElement2 topMostLeafAXElement];
        goto LABEL_22;
      }

      if (direction == 1)
      {
        leftMostLeafAXElement = [contextElement2 bottomMostLeafAXElement];
LABEL_22:
        v11 = leftMostLeafAXElement;
      }
    }

    [v11 setNativeFocus];
    (*(v7 + 16))(v7);

    goto LABEL_24;
  }

  (*(v7 + 16))(v7);
LABEL_24:
}

@end