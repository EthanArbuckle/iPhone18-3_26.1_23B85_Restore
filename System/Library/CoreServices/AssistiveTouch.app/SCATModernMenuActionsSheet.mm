@interface SCATModernMenuActionsSheet
- (BOOL)_addTapReplacementGestureIfApplicableForElement:(id)element toMenuItems:(id)items;
- (BOOL)_itemBelongsOnShortFirstPage:(id)page shouldAddControlCenterActions:(BOOL)actions shouldIncludeSpotlight:(BOOL)spotlight;
- (id)_bestScrollMenuItemsForScrollableElement:(id)element;
- (id)_escapableElements;
- (id)makeMenuItemsIfNeeded;
- (unint64_t)numberOfItemsInFirstPage;
- (void)_addAdditionalShortcutsIfApplicableForElement:(id)element toMenuItems:(id)items;
- (void)_addScrollShortcutIfApplicableForElement:(id)element toMenuItems:(id)items;
- (void)_addTapIfApplicableForElement:(id)element toMenuItems:(id)items;
@end

@implementation SCATModernMenuActionsSheet

- (unint64_t)numberOfItemsInFirstPage
{
  menuItems = [(SCATModernMenuSheet *)self menuItems];

  if (!menuItems)
  {
    _AXAssert();
  }

  return [(SCATModernMenuActionsSheet *)self storedNumberOfItemsInFirstPage];
}

- (id)_bestScrollMenuItemsForScrollableElement:(id)element
{
  elementCopy = element;
  v5 = objc_alloc_init(NSMutableArray);
  uiElement = [elementCopy uiElement];
  v7 = [uiElement arrayWithAXAttribute:2089];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        intValue = [*(*(&v19 + 1) + 8 * i) intValue];
        if ([elementCopy scatSupportsAction:intValue])
        {
          v14 = [(SCATModernMenuActionsSheet *)self _menuItemForScrollAction:intValue];
          [v5 addObject:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  if (![v5 count])
  {
    v15 = 2006;
    if (([elementCopy scatSupportsAction:2006] & 1) == 0)
    {
      v15 = 2008;
      if (([elementCopy scatSupportsAction:2008] & 1) == 0)
      {
        v15 = 2009;
        if (([elementCopy scatSupportsAction:2009] & 1) == 0)
        {
          scatTraits = [elementCopy scatTraits];
          if ((kAXCausesPageTurnTrait & scatTraits) == 0)
          {
            goto LABEL_17;
          }

          v15 = 2019;
        }
      }
    }

    v17 = [(SCATModernMenuActionsSheet *)self _menuItemForScrollAction:v15, v19];
    [v5 addObject:v17];
  }

LABEL_17:

  return v5;
}

- (void)_addTapIfApplicableForElement:(id)element toMenuItems:(id)items
{
  elementCopy = element;
  itemsCopy = items;
  if (!elementCopy)
  {
    goto LABEL_11;
  }

  menu = [(SCATModernMenuSheet *)self menu];
  pointPicker = [menu pointPicker];
  if (pointPicker)
  {
    v9 = pointPicker;
    if (![elementCopy scatIsAXElement])
    {

LABEL_11:
      menu2 = [(SCATModernMenuSheet *)self menu];
      screenPoint = [menu2 screenPoint];

      if (!screenPoint)
      {
        goto LABEL_14;
      }

      v19 = AXSSwitchControlMenuItemGesturesTap;
      menu3 = [(SCATModernMenuSheet *)self menu];
      v16 = [SCATMenuItemFactory menuItemsForItem:v19 menu:menu3 delegate:self];
      firstObject = [v16 firstObject];
      [itemsCopy addObject:firstObject];

      goto LABEL_13;
    }

    uiElement = [elementCopy uiElement];
    v11 = [uiElement BOOLWithAXAttribute:2150];

    if ((v11 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  scatTraits = [elementCopy scatTraits];
  if ((kAXAdjustableTrait & scatTraits) == 0 || ([elementCopy uiElement], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "BOOLWithAXAttribute:", 2019), v13, v14))
  {
    menu3 = [(SCATModernMenuSheet *)self menu];
    v16 = [SCATModernMenuActionsFactory menuItemForTapWithMenu:menu3 delegate:self];
    [itemsCopy addObject:v16];
LABEL_13:
  }

LABEL_14:
}

- (void)_addScrollShortcutIfApplicableForElement:(id)element toMenuItems:(id)items
{
  itemsCopy = items;
  scrollableElement = [element scrollableElement];
  v8 = [(SCATModernMenuActionsSheet *)self _bestScrollMenuItemsForScrollableElement:scrollableElement];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if (([itemsCopy containsObject:v13] & 1) == 0)
        {
          [itemsCopy addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (BOOL)_addTapReplacementGestureIfApplicableForElement:(id)element toMenuItems:(id)items
{
  elementCopy = element;
  itemsCopy = items;
  if (elementCopy && [elementCopy scatIsAXElement])
  {
    uiElement = [elementCopy uiElement];
    v9 = [uiElement arrayWithAXAttribute:12016];

    v10 = [v9 count];
    v11 = v10 != 0;
    if (v10)
    {
      v22 = elementCopy;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = v9;
      v12 = v9;
      v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v24;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v24 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v23 + 1) + 8 * i);
            menu = [(SCATModernMenuSheet *)self menu];
            v19 = [SCATMenuItemFactory menuItemsForItem:v17 menu:menu delegate:self];
            [itemsCopy axSafelyAddObjectsFromArray:v19];
          }

          v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v14);
      }

      elementCopy = v22;
      v9 = v21;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_addAdditionalShortcutsIfApplicableForElement:(id)element toMenuItems:(id)items
{
  elementCopy = element;
  itemsCopy = items;
  if (elementCopy && [elementCopy scatIsAXElement])
  {
    uiElement = [elementCopy uiElement];
    v9 = [uiElement arrayWithAXAttribute:12015];

    if (v9)
    {
      v18 = v9;
      v19 = elementCopy;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v21;
        do
        {
          v14 = 0;
          do
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v20 + 1) + 8 * v14);
            v16 = [(SCATModernMenuSheet *)self menu:v18];
            v17 = [SCATMenuItemFactory menuItemsForItem:v15 menu:v16 delegate:self];
            [itemsCopy axSafelyAddObjectsFromArray:v17];

            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v12);
      }

      v9 = v18;
      elementCopy = v19;
    }
  }
}

- (id)makeMenuItemsIfNeeded
{
  v3 = AXAccessQueue_ptr;
  v4 = +[NSMutableArray array];
  menu = [(SCATModernMenuSheet *)self menu];
  element = [menu element];

  v7 = +[AXSettings sharedInstance];
  if (+[AXSpringBoardServer isAvailable])
  {
    v8 = +[AXSpringBoardServer server];
    isControlCenterVisible = [v8 isControlCenterVisible];

    v9 = +[AXSpringBoardServer server];
    isShowingLongLookNotification = [v9 isShowingLongLookNotification];

    v11 = +[AXSpringBoardServer server];
    if ([v11 isShowingHomescreen])
    {
      isLockScreenVisible = 1;
    }

    else
    {
      v14 = +[AXSpringBoardServer server];
      isLockScreenVisible = [v14 isLockScreenVisible];
    }

    v13 = isShowingLongLookNotification ^ 1;
  }

  else
  {
    isLockScreenVisible = 0;
    isControlCenterVisible = 0;
    v13 = 1;
  }

  obj = v13;
  v77 = v7;
  if ([v7 switchControlTapBehavior] == 1)
  {
    v15 = 1;
  }

  else if ([v7 switchControlTapBehavior] == 2)
  {
    v16 = +[SCATScannerManager sharedManager];
    if ([v16 isUsingPointMode])
    {
      v15 = 0;
    }

    else
    {
      menu2 = [(SCATModernMenuSheet *)self menu];
      delegate = [menu2 delegate];
      [(SCATModernMenuSheet *)self menu];
      v20 = v19 = v4;
      v15 = [delegate itemMenuStateForMenu:v20] != 2;

      v4 = v19;
      v7 = v77;
    }
  }

  else
  {
    v15 = 0;
  }

  v21 = +[SCATScannerManager sharedManager];
  isExternalDisplayConnected = [v21 isExternalDisplayConnected];

  if ([v7 switchControlTapBehavior] == 2)
  {
    v23 = v4;
    menu3 = [(SCATModernMenuSheet *)self menu];
    delegate2 = [menu3 delegate];
    menu4 = [(SCATModernMenuSheet *)self menu];
    if ([delegate2 itemMenuStateForMenu:menu4])
    {
      v27 = 0;
    }

    else
    {
      scatTraits = [element scatTraits];
      v27 = (kAXAdjustableTrait & ~scatTraits) == 0;
    }

    v4 = v23;
    v3 = AXAccessQueue_ptr;
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v27 = 0;
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  if (!v27)
  {
    v78 = 0;
    v29 = v77;
LABEL_26:
    array = v4;
    v32 = 1;
    goto LABEL_27;
  }

LABEL_24:
  v29 = v77;
  switchControlShouldUseShortFirstPage = [v77 switchControlShouldUseShortFirstPage];
  v78 = switchControlShouldUseShortFirstPage & isLockScreenVisible & (isControlCenterVisible ^ 1) & obj;
  if ((switchControlShouldUseShortFirstPage & 1) == 0)
  {
    goto LABEL_26;
  }

  array = [v3[402] array];
  v32 = 0;
LABEL_27:
  if (sub_100042534())
  {
    v33 = +[SCATScannerManager sharedManager];
    waitingForSecureIntent = [v33 waitingForSecureIntent];

    if (waitingForSecureIntent)
    {
      v35 = AXSSwitchControlMenuItemDeviceArmApplePay;
      [(SCATModernMenuSheet *)self menu];
      v37 = v36 = element;
      v38 = [SCATMenuItemFactory menuItemsForItem:v35 menu:v37 delegate:self];
      firstObject = [v38 firstObject];

      element = v36;
      v29 = v77;
      [array addObject:firstObject];
    }
  }

  if ((v32 & 1) == 0)
  {
    if ([(SCATModernMenuActionsSheet *)self _addTapReplacementGestureIfApplicableForElement:element toMenuItems:array])
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (!v15)
  {
LABEL_34:
    [(SCATModernMenuActionsSheet *)self _addTapIfApplicableForElement:element toMenuItems:array];
  }

LABEL_35:
  v75 = v32;
  v76 = element;
  v81 = v4;
  if (isExternalDisplayConnected)
  {
    v40 = AXSSwitchControlMenuItemSwitchDisplay;
    menu5 = [(SCATModernMenuSheet *)self menu];
    v42 = [SCATMenuItemFactory menuItemsForItem:v40 menu:menu5 delegate:self];
    firstObject2 = [v42 firstObject];
    [array addObject:firstObject2];
  }

  v79 = array;
  [v29 switchControlTopLevelMenuItems];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  obja = v87 = 0u;
  v44 = [obja countByEnumeratingWithState:&v84 objects:v88 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v85;
    v47 = AXSSwitchControlMenuItemTypeKey;
    v48 = AXSSwitchControlMenuItemEnabledKey;
    do
    {
      for (i = 0; i != v45; i = i + 1)
      {
        if (*v85 != v46)
        {
          objc_enumerationMutation(obja);
        }

        v50 = *(*(&v84 + 1) + 8 * i);
        v51 = [v50 objectForKeyedSubscript:v47];
        v52 = [v50 objectForKeyedSubscript:v48];
        bOOLValue = [v52 BOOLValue];

        if (bOOLValue)
        {
          v54 = [(SCATModernMenuActionsSheet *)self _itemBelongsOnShortFirstPage:v51 shouldAddControlCenterActions:isControlCenterVisible shouldIncludeSpotlight:v78];
          menu6 = [(SCATModernMenuSheet *)self menu];
          v56 = [SCATMenuItemFactory menuItemsForItem:v51 menu:menu6 delegate:self];
          if (v54)
          {
            v57 = v79;
          }

          else
          {
            v57 = v81;
          }

          [v57 axSafelyAddObjectsFromArray:v56];
        }
      }

      v45 = [obja countByEnumeratingWithState:&v84 objects:v88 count:16];
    }

    while (v45);
  }

  v58 = +[AXSettings sharedInstance];
  if ([v58 switchControlTapBehavior] == 2)
  {
    goto LABEL_52;
  }

  menu7 = [(SCATModernMenuSheet *)self menu];
  element2 = [menu7 element];
  if (([element2 scatSupportsAction:2013] | isControlCenterVisible))
  {

LABEL_52:
    v61 = v81;
LABEL_53:
    v62 = AXSSwitchControlMenuItemEscape;
    menu8 = [(SCATModernMenuSheet *)self menu];
    v64 = [SCATMenuItemFactory menuItemsForItem:v62 menu:menu8 delegate:self];
    [v61 axSafelyAddObjectsFromArray:v64];

    goto LABEL_54;
  }

  _escapableElements = [(SCATModernMenuActionsSheet *)self _escapableElements];
  v74 = [_escapableElements count];

  v61 = v81;
  if (v74)
  {
    goto LABEL_53;
  }

LABEL_54:
  if ((v75 & 1) == 0)
  {
    [(SCATModernMenuActionsSheet *)self _addAdditionalShortcutsIfApplicableForElement:v76 toMenuItems:v79];
  }

  menu9 = [(SCATModernMenuSheet *)self menu];
  delegate3 = [menu9 delegate];
  menu10 = [(SCATModernMenuSheet *)self menu];
  v68 = v75 | [delegate3 shouldShowAppWideScrollActionsInMenu:menu10];

  if ((v68 & 1) == 0)
  {
    [(SCATModernMenuActionsSheet *)self _addScrollShortcutIfApplicableForElement:v76 toMenuItems:v79];
  }

  v69 = v77;
  if ((v75 & 1) == 0 && [v79 count])
  {
    -[SCATModernMenuActionsSheet setStoredNumberOfItemsInFirstPage:](self, "setStoredNumberOfItemsInFirstPage:", [v79 count]);
    if (v61 == v79)
    {
      _AXAssert();
    }

    [v79 addObjectsFromArray:v61];
    v70 = v79;

    v61 = v70;
    v69 = v77;
  }

  v71 = v61;

  return v61;
}

- (BOOL)_itemBelongsOnShortFirstPage:(id)page shouldAddControlCenterActions:(BOOL)actions shouldIncludeSpotlight:(BOOL)spotlight
{
  pageCopy = page;
  if (qword_100218B88 != -1)
  {
    sub_10012AC88();
  }

  if ([pageCopy isEqualToString:AXSSwitchControlMenuItemEdit])
  {
    menu = [(SCATModernMenuSheet *)self menu];
    element = [menu element];
    if ([element scatIsKeyboardKey])
    {
      actions = 1;
    }

    else
    {
      menu2 = [(SCATModernMenuSheet *)self menu];
      element2 = [menu2 element];
      keyboardContainer = [element2 keyboardContainer];
      actions = keyboardContainer != 0;
    }
  }

  else if ([pageCopy isEqualToString:AXSSwitchControlMenuItemHome])
  {
    if (+[AXSpringBoardServer isAvailable])
    {
      v11 = +[AXSpringBoardServer server];
      v12 = [v11 isScreenLockedWithPasscode:0];
    }

    else
    {
      v12 = 0;
    }

    actions = v12 & !actions;
  }

  else if (([pageCopy isEqualToString:AXSSwitchControlMenuItemEscape] & 1) == 0)
  {
    if ([pageCopy isEqualToString:AXSSwitchControlMenuItemIncrementDecrement])
    {
      menu3 = [(SCATModernMenuSheet *)self menu];
      element3 = [menu3 element];
      scatTraits = [element3 scatTraits];
      actions = (kAXAdjustableTrait & ~scatTraits) == 0;
    }

    else
    {
      actions = spotlight;
      if (([pageCopy isEqualToString:AXSSwitchControlMenuItemDeviceSpotlightSearch] & 1) == 0)
      {
        actions = [qword_100218B80 containsObject:pageCopy];
      }
    }
  }

  return actions;
}

- (id)_escapableElements
{
  v2 = +[HNDAccessibilityManager sharedManager];
  v3 = [v2 elementsForMatchingBlock:&stru_1001D69B0];

  return v3;
}

@end