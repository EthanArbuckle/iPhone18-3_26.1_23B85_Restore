@interface SCATModernMenuActionsSheet
- (BOOL)_addTapReplacementGestureIfApplicableForElement:(id)a3 toMenuItems:(id)a4;
- (BOOL)_itemBelongsOnShortFirstPage:(id)a3 shouldAddControlCenterActions:(BOOL)a4 shouldIncludeSpotlight:(BOOL)a5;
- (id)_bestScrollMenuItemsForScrollableElement:(id)a3;
- (id)_escapableElements;
- (id)makeMenuItemsIfNeeded;
- (unint64_t)numberOfItemsInFirstPage;
- (void)_addAdditionalShortcutsIfApplicableForElement:(id)a3 toMenuItems:(id)a4;
- (void)_addScrollShortcutIfApplicableForElement:(id)a3 toMenuItems:(id)a4;
- (void)_addTapIfApplicableForElement:(id)a3 toMenuItems:(id)a4;
@end

@implementation SCATModernMenuActionsSheet

- (unint64_t)numberOfItemsInFirstPage
{
  v3 = [(SCATModernMenuSheet *)self menuItems];

  if (!v3)
  {
    _AXAssert();
  }

  return [(SCATModernMenuActionsSheet *)self storedNumberOfItemsInFirstPage];
}

- (id)_bestScrollMenuItemsForScrollableElement:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [v4 uiElement];
  v7 = [v6 arrayWithAXAttribute:2089];

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

        v13 = [*(*(&v19 + 1) + 8 * i) intValue];
        if ([v4 scatSupportsAction:v13])
        {
          v14 = [(SCATModernMenuActionsSheet *)self _menuItemForScrollAction:v13];
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
    if (([v4 scatSupportsAction:2006] & 1) == 0)
    {
      v15 = 2008;
      if (([v4 scatSupportsAction:2008] & 1) == 0)
      {
        v15 = 2009;
        if (([v4 scatSupportsAction:2009] & 1) == 0)
        {
          v16 = [v4 scatTraits];
          if ((kAXCausesPageTurnTrait & v16) == 0)
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

- (void)_addTapIfApplicableForElement:(id)a3 toMenuItems:(id)a4
{
  v21 = a3;
  v6 = a4;
  if (!v21)
  {
    goto LABEL_11;
  }

  v7 = [(SCATModernMenuSheet *)self menu];
  v8 = [v7 pointPicker];
  if (v8)
  {
    v9 = v8;
    if (![v21 scatIsAXElement])
    {

LABEL_11:
      v17 = [(SCATModernMenuSheet *)self menu];
      v18 = [v17 screenPoint];

      if (!v18)
      {
        goto LABEL_14;
      }

      v19 = AXSSwitchControlMenuItemGesturesTap;
      v15 = [(SCATModernMenuSheet *)self menu];
      v16 = [SCATMenuItemFactory menuItemsForItem:v19 menu:v15 delegate:self];
      v20 = [v16 firstObject];
      [v6 addObject:v20];

      goto LABEL_13;
    }

    v10 = [v21 uiElement];
    v11 = [v10 BOOLWithAXAttribute:2150];

    if ((v11 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v12 = [v21 scatTraits];
  if ((kAXAdjustableTrait & v12) == 0 || ([v21 uiElement], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "BOOLWithAXAttribute:", 2019), v13, v14))
  {
    v15 = [(SCATModernMenuSheet *)self menu];
    v16 = [SCATModernMenuActionsFactory menuItemForTapWithMenu:v15 delegate:self];
    [v6 addObject:v16];
LABEL_13:
  }

LABEL_14:
}

- (void)_addScrollShortcutIfApplicableForElement:(id)a3 toMenuItems:(id)a4
{
  v6 = a4;
  v7 = [a3 scrollableElement];
  v8 = [(SCATModernMenuActionsSheet *)self _bestScrollMenuItemsForScrollableElement:v7];
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
        if (([v6 containsObject:v13] & 1) == 0)
        {
          [v6 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (BOOL)_addTapReplacementGestureIfApplicableForElement:(id)a3 toMenuItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 scatIsAXElement])
  {
    v8 = [v6 uiElement];
    v9 = [v8 arrayWithAXAttribute:12016];

    v10 = [v9 count];
    v11 = v10 != 0;
    if (v10)
    {
      v22 = v6;
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
            v18 = [(SCATModernMenuSheet *)self menu];
            v19 = [SCATMenuItemFactory menuItemsForItem:v17 menu:v18 delegate:self];
            [v7 axSafelyAddObjectsFromArray:v19];
          }

          v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v14);
      }

      v6 = v22;
      v9 = v21;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_addAdditionalShortcutsIfApplicableForElement:(id)a3 toMenuItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 scatIsAXElement])
  {
    v8 = [v6 uiElement];
    v9 = [v8 arrayWithAXAttribute:12015];

    if (v9)
    {
      v18 = v9;
      v19 = v6;
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
            [v7 axSafelyAddObjectsFromArray:v17];

            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v12);
      }

      v9 = v18;
      v6 = v19;
    }
  }
}

- (id)makeMenuItemsIfNeeded
{
  v3 = AXAccessQueue_ptr;
  v4 = +[NSMutableArray array];
  v5 = [(SCATModernMenuSheet *)self menu];
  v6 = [v5 element];

  v7 = +[AXSettings sharedInstance];
  if (+[AXSpringBoardServer isAvailable])
  {
    v8 = +[AXSpringBoardServer server];
    v80 = [v8 isControlCenterVisible];

    v9 = +[AXSpringBoardServer server];
    v10 = [v9 isShowingLongLookNotification];

    v11 = +[AXSpringBoardServer server];
    if ([v11 isShowingHomescreen])
    {
      v12 = 1;
    }

    else
    {
      v14 = +[AXSpringBoardServer server];
      v12 = [v14 isLockScreenVisible];
    }

    v13 = v10 ^ 1;
  }

  else
  {
    v12 = 0;
    v80 = 0;
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
      v17 = [(SCATModernMenuSheet *)self menu];
      v18 = [v17 delegate];
      [(SCATModernMenuSheet *)self menu];
      v20 = v19 = v4;
      v15 = [v18 itemMenuStateForMenu:v20] != 2;

      v4 = v19;
      v7 = v77;
    }
  }

  else
  {
    v15 = 0;
  }

  v21 = +[SCATScannerManager sharedManager];
  v22 = [v21 isExternalDisplayConnected];

  if ([v7 switchControlTapBehavior] == 2)
  {
    v23 = v4;
    v24 = [(SCATModernMenuSheet *)self menu];
    v25 = [v24 delegate];
    v26 = [(SCATModernMenuSheet *)self menu];
    if ([v25 itemMenuStateForMenu:v26])
    {
      v27 = 0;
    }

    else
    {
      v28 = [v6 scatTraits];
      v27 = (kAXAdjustableTrait & ~v28) == 0;
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
    v31 = v4;
    v32 = 1;
    goto LABEL_27;
  }

LABEL_24:
  v29 = v77;
  v30 = [v77 switchControlShouldUseShortFirstPage];
  v78 = v30 & v12 & (v80 ^ 1) & obj;
  if ((v30 & 1) == 0)
  {
    goto LABEL_26;
  }

  v31 = [v3[402] array];
  v32 = 0;
LABEL_27:
  if (sub_100042534())
  {
    v33 = +[SCATScannerManager sharedManager];
    v34 = [v33 waitingForSecureIntent];

    if (v34)
    {
      v35 = AXSSwitchControlMenuItemDeviceArmApplePay;
      [(SCATModernMenuSheet *)self menu];
      v37 = v36 = v6;
      v38 = [SCATMenuItemFactory menuItemsForItem:v35 menu:v37 delegate:self];
      v39 = [v38 firstObject];

      v6 = v36;
      v29 = v77;
      [v31 addObject:v39];
    }
  }

  if ((v32 & 1) == 0)
  {
    if ([(SCATModernMenuActionsSheet *)self _addTapReplacementGestureIfApplicableForElement:v6 toMenuItems:v31])
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (!v15)
  {
LABEL_34:
    [(SCATModernMenuActionsSheet *)self _addTapIfApplicableForElement:v6 toMenuItems:v31];
  }

LABEL_35:
  v75 = v32;
  v76 = v6;
  v81 = v4;
  if (v22)
  {
    v40 = AXSSwitchControlMenuItemSwitchDisplay;
    v41 = [(SCATModernMenuSheet *)self menu];
    v42 = [SCATMenuItemFactory menuItemsForItem:v40 menu:v41 delegate:self];
    v43 = [v42 firstObject];
    [v31 addObject:v43];
  }

  v79 = v31;
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
        v53 = [v52 BOOLValue];

        if (v53)
        {
          v54 = [(SCATModernMenuActionsSheet *)self _itemBelongsOnShortFirstPage:v51 shouldAddControlCenterActions:v80 shouldIncludeSpotlight:v78];
          v55 = [(SCATModernMenuSheet *)self menu];
          v56 = [SCATMenuItemFactory menuItemsForItem:v51 menu:v55 delegate:self];
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

  v59 = [(SCATModernMenuSheet *)self menu];
  v60 = [v59 element];
  if (([v60 scatSupportsAction:2013] | v80))
  {

LABEL_52:
    v61 = v81;
LABEL_53:
    v62 = AXSSwitchControlMenuItemEscape;
    v63 = [(SCATModernMenuSheet *)self menu];
    v64 = [SCATMenuItemFactory menuItemsForItem:v62 menu:v63 delegate:self];
    [v61 axSafelyAddObjectsFromArray:v64];

    goto LABEL_54;
  }

  v73 = [(SCATModernMenuActionsSheet *)self _escapableElements];
  v74 = [v73 count];

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

  v65 = [(SCATModernMenuSheet *)self menu];
  v66 = [v65 delegate];
  v67 = [(SCATModernMenuSheet *)self menu];
  v68 = v75 | [v66 shouldShowAppWideScrollActionsInMenu:v67];

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

- (BOOL)_itemBelongsOnShortFirstPage:(id)a3 shouldAddControlCenterActions:(BOOL)a4 shouldIncludeSpotlight:(BOOL)a5
{
  v8 = a3;
  if (qword_100218B88 != -1)
  {
    sub_10012AC88();
  }

  if ([v8 isEqualToString:AXSSwitchControlMenuItemEdit])
  {
    v9 = [(SCATModernMenuSheet *)self menu];
    v10 = [v9 element];
    if ([v10 scatIsKeyboardKey])
    {
      a4 = 1;
    }

    else
    {
      v13 = [(SCATModernMenuSheet *)self menu];
      v14 = [v13 element];
      v15 = [v14 keyboardContainer];
      a4 = v15 != 0;
    }
  }

  else if ([v8 isEqualToString:AXSSwitchControlMenuItemHome])
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

    a4 = v12 & !a4;
  }

  else if (([v8 isEqualToString:AXSSwitchControlMenuItemEscape] & 1) == 0)
  {
    if ([v8 isEqualToString:AXSSwitchControlMenuItemIncrementDecrement])
    {
      v16 = [(SCATModernMenuSheet *)self menu];
      v17 = [v16 element];
      v18 = [v17 scatTraits];
      a4 = (kAXAdjustableTrait & ~v18) == 0;
    }

    else
    {
      a4 = a5;
      if (([v8 isEqualToString:AXSSwitchControlMenuItemDeviceSpotlightSearch] & 1) == 0)
      {
        a4 = [qword_100218B80 containsObject:v8];
      }
    }
  }

  return a4;
}

- (id)_escapableElements
{
  v2 = +[HNDAccessibilityManager sharedManager];
  v3 = [v2 elementsForMatchingBlock:&stru_1001D69B0];

  return v3;
}

@end