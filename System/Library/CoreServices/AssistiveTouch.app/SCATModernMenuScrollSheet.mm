@interface SCATModernMenuScrollSheet
+ (BOOL)isValidForElement:(id)element;
- (BOOL)_shouldIncludeFallbackScrollAncestorActionsInVerticalDirection:(BOOL)direction;
- (SCATModernMenuScrollSheet)initWithMenu:(id)menu;
- (id)_fallbackAncestorForScrollToTop;
- (id)makeMenuItemsIfNeeded;
- (void)_updateScrollableElement;
- (void)reload;
- (void)setScrollableElement:(id)element;
@end

@implementation SCATModernMenuScrollSheet

+ (BOOL)isValidForElement:(id)element
{
  elementCopy = element;
  scatTraits = [elementCopy scatTraits];
  if ((kAXCausesPageTurnTrait & scatTraits) != 0)
  {
    scatCanScrollInAtLeastOneDirection = 1;
  }

  else
  {
    scatCanScrollInAtLeastOneDirection = [elementCopy scatCanScrollInAtLeastOneDirection];
  }

  return scatCanScrollInAtLeastOneDirection;
}

- (void)setScrollableElement:(id)element
{
  elementCopy = element;
  if (self->_scrollableElement != elementCopy)
  {
    v6 = elementCopy;
    objc_storeStrong(&self->_scrollableElement, element);
    [(SCATModernMenuSheet *)self invalidateMenuItems];
    elementCopy = v6;
  }
}

- (void)_updateScrollableElement
{
  menu = [(SCATModernMenuSheet *)self menu];
  delegate = [menu delegate];
  menu2 = [(SCATModernMenuSheet *)self menu];
  v6 = [delegate shouldShowAppWideScrollActionsInMenu:menu2];

  if ((v6 & 1) == 0)
  {
    menu3 = [(SCATModernMenuSheet *)self menu];
    element = [menu3 element];
    scrollableElement = [element scrollableElement];
    [(SCATModernMenuScrollSheet *)self setScrollableElement:scrollableElement];
  }
}

- (SCATModernMenuScrollSheet)initWithMenu:(id)menu
{
  v6.receiver = self;
  v6.super_class = SCATModernMenuScrollSheet;
  v3 = [(SCATModernMenuSheet *)&v6 initWithMenu:menu];
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
  scrollableElement = [(SCATModernMenuScrollSheet *)self scrollableElement];

  if (!scrollableElement)
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
    applicationIsRTL = [v35 applicationIsRTL];

    if (applicationIsRTL)
    {
      v37 = 2009;
    }

    else
    {
      v37 = 2008;
    }

    if (applicationIsRTL)
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

  scrollableElement2 = [(SCATModernMenuScrollSheet *)self scrollableElement];
  if ([scrollableElement2 scatSupportsAction:2006])
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

  scrollableElement3 = [(SCATModernMenuScrollSheet *)self scrollableElement];
  if ([scrollableElement3 scatSupportsAction:2007])
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
  applicationIsRTL2 = [v10 applicationIsRTL];

  scrollableElement4 = [(SCATModernMenuScrollSheet *)self scrollableElement];
  scatTraits = [scrollableElement4 scatTraits];
  v14 = kAXCausesPageTurnTrait & scatTraits;

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

  scrollableElement5 = [(SCATModernMenuScrollSheet *)self scrollableElement];
  if ([scrollableElement5 scatSupportsAction:2009])
  {
    goto LABEL_14;
  }

  scrollableElement6 = [(SCATModernMenuScrollSheet *)self scrollableElement];
  if ([scrollableElement6 scatSupportsAction:2008])
  {

LABEL_14:
LABEL_15:
    if (applicationIsRTL2)
    {
      v16 = 2009;
    }

    else
    {
      v16 = 2008;
    }

    if (applicationIsRTL2)
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
  scrollableElement7 = [(SCATModernMenuScrollSheet *)self scrollableElement];
  if ([scrollableElement7 scatSupportsAction:2030])
  {

LABEL_25:
    v26 = [SCATModernMenuScrollFactory menuItemForScrollAction:2030 withDelegate:self];
    [v3 addObject:v26];

    goto LABEL_26;
  }

  _fallbackAncestorForScrollToTop = [(SCATModernMenuScrollSheet *)self _fallbackAncestorForScrollToTop];
  v25 = [_fallbackAncestorForScrollToTop scatSupportsAction:2030];

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
  menu = [(SCATModernMenuSheet *)self menu];
  fallbackScrollUpAncestor = [menu fallbackScrollUpAncestor];
  v5 = fallbackScrollUpAncestor;
  if (fallbackScrollUpAncestor)
  {
    fallbackScrollDownAncestor = fallbackScrollUpAncestor;
  }

  else
  {
    menu2 = [(SCATModernMenuSheet *)self menu];
    fallbackScrollDownAncestor = [menu2 fallbackScrollDownAncestor];
  }

  v8 = [AXElement elementWithUIElement:fallbackScrollDownAncestor];

  return v8;
}

- (void)reload
{
  [(SCATModernMenuScrollSheet *)self _updateScrollableElement];
  v3.receiver = self;
  v3.super_class = SCATModernMenuScrollSheet;
  [(SCATModernMenuSheet *)&v3 reload];
}

- (BOOL)_shouldIncludeFallbackScrollAncestorActionsInVerticalDirection:(BOOL)direction
{
  directionCopy = direction;
  menu = [(SCATModernMenuSheet *)self menu];
  v6 = menu;
  if (directionCopy)
  {
    fallbackScrollUpAncestor = [menu fallbackScrollUpAncestor];
    if (!fallbackScrollUpAncestor)
    {
      menu2 = [(SCATModernMenuSheet *)self menu];
      fallbackScrollDownAncestor = [menu2 fallbackScrollDownAncestor];
LABEL_7:
      v10 = fallbackScrollDownAncestor != 0;

      goto LABEL_8;
    }
  }

  else
  {
    fallbackScrollUpAncestor = [menu fallbackScrollLeftAncestor];
    if (!fallbackScrollUpAncestor)
    {
      menu2 = [(SCATModernMenuSheet *)self menu];
      fallbackScrollDownAncestor = [menu2 fallbackScrollRightAncestor];
      goto LABEL_7;
    }
  }

  v10 = 1;
LABEL_8:

  return v10;
}

@end