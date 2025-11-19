@interface SCATModernMenuScrollSheet
+ (BOOL)isValidForElement:(id)a3;
- (BOOL)_shouldIncludeFallbackScrollAncestorActionsInVerticalDirection:(BOOL)a3;
- (SCATModernMenuScrollSheet)initWithMenu:(id)a3;
- (id)_fallbackAncestorForScrollToTop;
- (id)makeMenuItemsIfNeeded;
- (void)_updateScrollableElement;
- (void)reload;
- (void)setScrollableElement:(id)a3;
@end

@implementation SCATModernMenuScrollSheet

+ (BOOL)isValidForElement:(id)a3
{
  v3 = a3;
  v4 = [v3 scatTraits];
  if ((kAXCausesPageTurnTrait & v4) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 scatCanScrollInAtLeastOneDirection];
  }

  return v5;
}

- (void)setScrollableElement:(id)a3
{
  v5 = a3;
  if (self->_scrollableElement != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_scrollableElement, a3);
    [(SCATModernMenuSheet *)self invalidateMenuItems];
    v5 = v6;
  }
}

- (void)_updateScrollableElement
{
  v3 = [(SCATModernMenuSheet *)self menu];
  v4 = [v3 delegate];
  v5 = [(SCATModernMenuSheet *)self menu];
  v6 = [v4 shouldShowAppWideScrollActionsInMenu:v5];

  if ((v6 & 1) == 0)
  {
    v9 = [(SCATModernMenuSheet *)self menu];
    v7 = [v9 element];
    v8 = [v7 scrollableElement];
    [(SCATModernMenuScrollSheet *)self setScrollableElement:v8];
  }
}

- (SCATModernMenuScrollSheet)initWithMenu:(id)a3
{
  v6.receiver = self;
  v6.super_class = SCATModernMenuScrollSheet;
  v3 = [(SCATModernMenuSheet *)&v6 initWithMenu:a3];
  v4 = v3;
  if (v3)
  {
    [(SCATModernMenuScrollSheet *)v3 _updateScrollableElement];
  }

  return v4;
}

- (id)makeMenuItemsIfNeeded
{
  v3 = +[NSMutableArray array];
  v4 = [(SCATModernMenuScrollSheet *)self scrollableElement];

  if (!v4)
  {
    v17 = +[HNDAccessibilityManager sharedManager];
    v18 = [v17 scrollViewsForAction:2007];
    if ([v18 count])
    {
    }

    else
    {
      v28 = [v17 scrollViewsForAction:2006];
      v29 = [v28 count];

      if (!v29)
      {
        goto LABEL_32;
      }
    }

    v30 = [SCATModernMenuScrollFactory menuItemForScrollAction:2006 withDelegate:self];
    [v3 addObject:v30];

    v31 = [SCATModernMenuScrollFactory menuItemForScrollAction:2007 withDelegate:self];
    [v3 addObject:v31];

LABEL_32:
    v32 = [v17 scrollViewsForAction:2008];
    if ([v32 count])
    {
    }

    else
    {
      v33 = [v17 scrollViewsForAction:2009];
      v34 = [v33 count];

      if (!v34)
      {
        goto LABEL_42;
      }
    }

    v35 = +[HNDAccessibilityManager sharedManager];
    v36 = [v35 applicationIsRTL];

    if (v36)
    {
      v37 = 2009;
    }

    else
    {
      v37 = 2008;
    }

    if (v36)
    {
      v38 = 2008;
    }

    else
    {
      v38 = 2009;
    }

    v39 = [SCATModernMenuScrollFactory menuItemForScrollAction:v37 withDelegate:self];
    [v3 addObject:v39];

    v40 = [SCATModernMenuScrollFactory menuItemForScrollAction:v38 withDelegate:self];
    [v3 addObject:v40];

    goto LABEL_42;
  }

  v5 = [(SCATModernMenuScrollSheet *)self scrollableElement];
  if ([v5 scatSupportsAction:2006])
  {
LABEL_5:

LABEL_6:
    v7 = [SCATModernMenuScrollFactory menuItemForScrollAction:2006 withDelegate:self];
    [v3 addObject:v7];

    v8 = [SCATModernMenuScrollFactory menuItemForScrollAction:2007 withDelegate:self];
    [v3 addObject:v8];

    v9 = 1;
    goto LABEL_7;
  }

  v6 = [(SCATModernMenuScrollSheet *)self scrollableElement];
  if ([v6 scatSupportsAction:2007])
  {

    goto LABEL_5;
  }

  v27 = [(SCATModernMenuScrollSheet *)self _shouldIncludeFallbackScrollAncestorActionsInVerticalDirection:1];

  if (v27)
  {
    goto LABEL_6;
  }

  v9 = 0;
LABEL_7:
  v10 = +[HNDAccessibilityManager sharedManager];
  v11 = [v10 applicationIsRTL];

  v12 = [(SCATModernMenuScrollSheet *)self scrollableElement];
  v13 = [v12 scatTraits];
  v14 = kAXCausesPageTurnTrait & v13;

  if (v14)
  {
    v15 = 2019;
    v16 = 2020;
LABEL_21:
    v21 = [SCATModernMenuScrollFactory menuItemForScrollAction:v16 withDelegate:self];
    [v3 addObject:v21];

    v22 = [SCATModernMenuScrollFactory menuItemForScrollAction:v15 withDelegate:self];
    [v3 addObject:v22];

    goto LABEL_22;
  }

  v19 = [(SCATModernMenuScrollSheet *)self scrollableElement];
  if ([v19 scatSupportsAction:2009])
  {
    goto LABEL_14;
  }

  v20 = [(SCATModernMenuScrollSheet *)self scrollableElement];
  if ([v20 scatSupportsAction:2008])
  {

LABEL_14:
LABEL_15:
    if (v11)
    {
      v16 = 2009;
    }

    else
    {
      v16 = 2008;
    }

    if (v11)
    {
      v15 = 2008;
    }

    else
    {
      v15 = 2009;
    }

    goto LABEL_21;
  }

  v42 = [(SCATModernMenuScrollSheet *)self _shouldIncludeFallbackScrollAncestorActionsInVerticalDirection:0];

  if (v42)
  {
    goto LABEL_15;
  }

LABEL_22:
  v23 = [(SCATModernMenuScrollSheet *)self scrollableElement];
  if ([v23 scatSupportsAction:2030])
  {

LABEL_25:
    v26 = [SCATModernMenuScrollFactory menuItemForScrollAction:2030 withDelegate:self];
    [v3 addObject:v26];

    goto LABEL_26;
  }

  v24 = [(SCATModernMenuScrollSheet *)self _fallbackAncestorForScrollToTop];
  v25 = [v24 scatSupportsAction:2030];

  if (v25)
  {
    goto LABEL_25;
  }

LABEL_26:
  if (!v9)
  {
    goto LABEL_43;
  }

  v17 = [SCATModernMenuScrollFactory menuItemForScrollAction:2031 withDelegate:self];
  [v3 addObject:v17];
LABEL_42:

LABEL_43:

  return v3;
}

- (id)_fallbackAncestorForScrollToTop
{
  v3 = [(SCATModernMenuSheet *)self menu];
  v4 = [v3 fallbackScrollUpAncestor];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(SCATModernMenuSheet *)self menu];
    v6 = [v7 fallbackScrollDownAncestor];
  }

  v8 = [AXElement elementWithUIElement:v6];

  return v8;
}

- (void)reload
{
  [(SCATModernMenuScrollSheet *)self _updateScrollableElement];
  v3.receiver = self;
  v3.super_class = SCATModernMenuScrollSheet;
  [(SCATModernMenuSheet *)&v3 reload];
}

- (BOOL)_shouldIncludeFallbackScrollAncestorActionsInVerticalDirection:(BOOL)a3
{
  v3 = a3;
  v5 = [(SCATModernMenuSheet *)self menu];
  v6 = v5;
  if (v3)
  {
    v7 = [v5 fallbackScrollUpAncestor];
    if (!v7)
    {
      v8 = [(SCATModernMenuSheet *)self menu];
      v9 = [v8 fallbackScrollDownAncestor];
LABEL_7:
      v10 = v9 != 0;

      goto LABEL_8;
    }
  }

  else
  {
    v7 = [v5 fallbackScrollLeftAncestor];
    if (!v7)
    {
      v8 = [(SCATModernMenuSheet *)self menu];
      v9 = [v8 fallbackScrollRightAncestor];
      goto LABEL_7;
    }
  }

  v10 = 1;
LABEL_8:

  return v10;
}

@end