@interface SCATVisualScrollersAuxiliaryElementManager
- (BOOL)_isGroupingEnabled;
- (BOOL)_showScroller:(int64_t)a3 withElement:(id)a4;
- (BOOL)containsElement:(id)a3;
- (NSArray)scrollerElements;
- (NSArray)scrollerGroups;
- (SCATVisualScrollersAuxiliaryElementManager)initWithMode:(int64_t)a3;
- (id)_groupForElement:(id)a3;
- (id)elementAfter:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5;
- (id)elementBefore:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5;
- (id)firstElementWithOptions:(int *)a3;
- (id)lastElementWithOptions:(int *)a3;
- (id)scrollerElementsForContextElement;
- (id)scrollerGroupsForContextElement;
- (void)dealloc;
- (void)scrollContainer:(id)a3 scrollInDirection:(int64_t)a4;
- (void)setContextElement:(id)a3;
@end

@implementation SCATVisualScrollersAuxiliaryElementManager

- (SCATVisualScrollersAuxiliaryElementManager)initWithMode:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = SCATVisualScrollersAuxiliaryElementManager;
  v4 = [(SCATVisualScrollersAuxiliaryElementManager *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_mode = a3;
    v6 = objc_opt_new();
    [(SCATAuxiliaryElementManager *)v5 setViewController:v6];
    [v6 setScrollDelegate:v5];
    [v6 setPositionRelativeToContextElement:a3 == 1];
    v7 = [v6 horizontalScroller];
    [v7 setDelegate:v5];

    v8 = [v6 verticalScroller];
    [v8 setDelegate:v5];
  }

  return v5;
}

- (void)dealloc
{
  if ([(SCATAuxiliaryElementManager *)self isViewControllerLoaded])
  {
    v3 = [(SCATAuxiliaryElementManager *)self viewController];
    [v3 setScrollDelegate:0];
    v4 = [v3 verticalScroller];
    [v4 setDelegate:0];

    v5 = [v3 horizontalScroller];
    [v5 setDelegate:0];
  }

  v6.receiver = self;
  v6.super_class = SCATVisualScrollersAuxiliaryElementManager;
  [(SCATVisualScrollersAuxiliaryElementManager *)&v6 dealloc];
}

- (NSArray)scrollerElements
{
  if (!self->_scrollerElements)
  {
    v3 = [(SCATAuxiliaryElementManager *)self viewController];

    if (v3)
    {
      v4 = [(SCATAuxiliaryElementManager *)self viewController];
      v21 = [v4 verticalScroller];
      v5 = [v21 scrollUpView];
      v27[0] = v5;
      v6 = [v4 verticalScroller];
      v7 = [v6 scrollDownView];
      v27[1] = v7;
      v8 = [v4 horizontalScroller];
      v9 = [v8 scrollLeftView];
      v27[2] = v9;
      v10 = [v4 horizontalScroller];
      v11 = [v10 scrollRightView];
      v27[3] = v11;
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
    v3 = [(SCATAuxiliaryElementManager *)self viewController];

    if (v3)
    {
      v4 = [(SCATAuxiliaryElementManager *)self viewController];
      v5 = [AXElementGroup alloc];
      v6 = [v4 verticalScroller];
      v7 = [v6 scrollUpView];
      v47[0] = v7;
      v8 = [v4 verticalScroller];
      v9 = [v8 scrollDownView];
      v47[1] = v9;
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
      v19 = [v4 horizontalScroller];
      v20 = [v19 scrollLeftView];
      v45[0] = v20;
      v21 = [v4 horizontalScroller];
      v22 = [v21 scrollRightView];
      v45[1] = v22;
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
  v3 = [v2 assistiveTouchGroupElementsEnabled];

  return v3;
}

- (BOOL)_showScroller:(int64_t)a3 withElement:(id)a4
{
  v6 = a4;
  v7 = [(SCATVisualScrollersAuxiliaryElementManager *)self _isGroupingEnabled];
  v8 = [(SCATVisualScrollersAuxiliaryElementManager *)self mode];
  v9 = v8;
  if (v7)
  {
    v10 = [v6 scatScanningBehaviorTraits];
    if (v9)
    {
      if (a3)
      {
        LOBYTE(v11) = v10;
      }

      else
      {
        LOBYTE(v11) = (v10 & 2) != 0;
      }
    }

    else if (a3)
    {
      if ((v10 & 1) != 0 && ([v6 isGroup] & 1) == 0)
      {
        v13 = [v6 parentGroup];
        v14 = [v13 parentGroup];
        LOBYTE(v11) = v14 == 0;
      }

      else
      {
        v11 = ([v6 scatScanningBehaviorTraits] >> 2) & 1;
      }
    }

    else
    {
      v11 = (v10 >> 3) & 1;
    }
  }

  else if (v8)
  {
    v12 = [v6 scatScanningBehaviorTraits];
    if (a3)
    {
      LOBYTE(v11) = (v12 & 5) != 0;
    }

    else
    {
      LOBYTE(v11) = (v12 & 0xA) != 0;
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
  v3 = [(SCATAuxiliaryElementManager *)self contextElement];
  v25 = [(SCATVisualScrollersAuxiliaryElementManager *)self _showScroller:1 withElement:v3];

  v4 = [(SCATAuxiliaryElementManager *)self contextElement];
  v5 = [(SCATVisualScrollersAuxiliaryElementManager *)self _showScroller:0 withElement:v4];

  v6 = [(SCATAuxiliaryElementManager *)self viewController];
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

        v12 = [v6 horizontalScroller];
        v13 = [v12 scrollLeftView];
        v14 = v13;
        if (v11 == v13)
        {
        }

        else
        {
          v15 = [v6 horizontalScroller];
          v16 = [v15 scrollRightView];

          if (v11 != v16)
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
        v17 = [v6 verticalScroller];
        v18 = [v17 scrollUpView];
        v19 = v18;
        if (v11 == v18)
        {
        }

        else
        {
          v20 = [v6 verticalScroller];
          v21 = [v20 scrollDownView];

          if (v11 != v21)
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
  v3 = [(SCATAuxiliaryElementManager *)self contextElement];
  v4 = [(SCATVisualScrollersAuxiliaryElementManager *)self _showScroller:1 withElement:v3];

  v5 = [(SCATAuxiliaryElementManager *)self contextElement];
  v6 = [(SCATVisualScrollersAuxiliaryElementManager *)self _showScroller:0 withElement:v5];

  v7 = [(SCATAuxiliaryElementManager *)self viewController];
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
          v13 = [v7 horizontalScroller];
          v14 = [v13 scrollLeftView];
          v15 = [v12 containsObject:v14];

          if (v15)
          {
            [v20 addObject:v12];
          }
        }

        if (v6)
        {
          v16 = [v7 verticalScroller];
          v17 = [v16 scrollUpView];
          v18 = [v12 containsObject:v17];

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

- (id)_groupForElement:(id)a3
{
  v4 = a3;
  v5 = [(SCATVisualScrollersAuxiliaryElementManager *)self scrollerGroupsForContextElement];
  if ([v5 containsObject:v4])
  {
    v6 = v5;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v5;
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
          if ([v12 isGroup] && (objc_msgSend(v12, "containsObject:", v4) & 1) != 0)
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

- (void)setContextElement:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SCATVisualScrollersAuxiliaryElementManager;
  [(SCATAuxiliaryElementManager *)&v15 setContextElement:v4];
  [(SCATVisualScrollersAuxiliaryElementManager *)self setHasActivatedScrollSinceContextUpdate:0];
  if ([(SCATVisualScrollersAuxiliaryElementManager *)self mode]== 1)
  {
    v5 = [v4 isGroup];
    if (!v4 || v5)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = [(SCATVisualScrollersAuxiliaryElementManager *)self scrollerGroups];
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
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
              objc_enumerationMutation(v6);
            }

            [*(*(&v11 + 1) + 8 * v10) setParentGroup:v4];
            v10 = v10 + 1;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
        }

        while (v8);
      }
    }
  }
}

- (id)firstElementWithOptions:(int *)a3
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
  v5 = [v4 firstObject];

  return v5;
}

- (id)lastElementWithOptions:(int *)a3
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
  v5 = [v4 lastObject];

  return v5;
}

- (id)elementBefore:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5
{
  v7 = a3;
  if ([(SCATVisualScrollersAuxiliaryElementManager *)self _isGroupingEnabled])
  {
    [(SCATVisualScrollersAuxiliaryElementManager *)self _groupForElement:v7];
  }

  else
  {
    [(SCATVisualScrollersAuxiliaryElementManager *)self scrollerElementsForContextElement];
  }
  v8 = ;
  v9 = v8;
  if (v8 && (v10 = [v8 indexOfObject:v7], v10 != 0x7FFFFFFFFFFFFFFFLL))
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
    if (!a4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    if (!a4)
    {
      goto LABEL_8;
    }
  }

  *a4 = v12;
LABEL_8:

  return v11;
}

- (id)elementAfter:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5
{
  v7 = a3;
  if ([(SCATVisualScrollersAuxiliaryElementManager *)self _isGroupingEnabled])
  {
    [(SCATVisualScrollersAuxiliaryElementManager *)self _groupForElement:v7];
  }

  else
  {
    [(SCATVisualScrollersAuxiliaryElementManager *)self scrollerElementsForContextElement];
  }
  v8 = ;
  v9 = [v8 indexOfObject:v7];

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
    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v10 = 0;
  v11 = 0;
  if (a4)
  {
LABEL_11:
    *a4 = v11;
  }

LABEL_12:

  return v10;
}

- (BOOL)containsElement:(id)a3
{
  v4 = a3;
  if ([(SCATVisualScrollersAuxiliaryElementManager *)self _isGroupingEnabled])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(SCATVisualScrollersAuxiliaryElementManager *)self scrollerGroups];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v13 + 1) + 8 * i) containsObject:v4])
          {

            v10 = 1;
            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
    v11 = [(SCATVisualScrollersAuxiliaryElementManager *)self scrollerElements];
    v10 = [v11 containsObject:v4];
  }

LABEL_13:

  return v10;
}

- (void)scrollContainer:(id)a3 scrollInDirection:(int64_t)a4
{
  v6 = [(SCATVisualScrollersAuxiliaryElementManager *)self hasActivatedScrollSinceContextUpdate];
  [(SCATVisualScrollersAuxiliaryElementManager *)self setHasActivatedScrollSinceContextUpdate:1];
  if (a4 > 3)
  {
    v7 = 0;
    if (v6)
    {
LABEL_10:
      v10 = *(v7 + 16);

      v10(v7);
      return;
    }
  }

  else
  {
    v7 = *(&off_1001D68C8 + a4);
    if (v6)
    {
      goto LABEL_10;
    }
  }

  if (![(SCATVisualScrollersAuxiliaryElementManager *)self mode])
  {
    goto LABEL_10;
  }

  v8 = [(SCATAuxiliaryElementManager *)self contextElement];
  v9 = [v8 isGroup];

  if ((v9 & 1) == 0)
  {
    _AXAssert();
    goto LABEL_10;
  }

  v13 = [(SCATAuxiliaryElementManager *)self contextElement];
  if (![v13 containsNativeFocusElement])
  {
    v11 = 0;
    if (a4 > 1)
    {
      if (a4 == 2)
      {
        v12 = [v13 leftMostLeafAXElement];
        goto LABEL_22;
      }

      if (a4 == 3)
      {
        v12 = [v13 rightMostLeafAXElement];
        goto LABEL_22;
      }
    }

    else
    {
      if (!a4)
      {
        v12 = [v13 topMostLeafAXElement];
        goto LABEL_22;
      }

      if (a4 == 1)
      {
        v12 = [v13 bottomMostLeafAXElement];
LABEL_22:
        v11 = v12;
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