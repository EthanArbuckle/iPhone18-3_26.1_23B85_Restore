@interface SCATMenu
- (AXElement)keyboardApplication;
- (BOOL)_canPopSheet;
- (BOOL)_isCurrentSheetValidForElement:(id)a3;
- (BOOL)_viewIsSuitableScannerElement:(id)a3;
- (BOOL)allowsDwellSelection;
- (BOOL)canBeActiveElementManager;
- (BOOL)containsGestureSheet;
- (BOOL)containsSheet:(Class)a3;
- (BOOL)isGroupingEnabled;
- (BOOL)isVisible;
- (BOOL)popSheet;
- (BOOL)shouldHideMenuCursor;
- (BOOL)shouldKeepScannerAwake;
- (SCATMenu)initWithDelegate:(id)a3;
- (SCATMenuDelegate)delegate;
- (SCATModernMenuGesturesSheet)gestureSheet;
- (SCATModernMenuSheet)rootSheet;
- (id)_elementProviderForSheet:(id)a3;
- (id)_elementWithRestorationInfo:(id)a3 options:(int *)a4;
- (id)_restorationInfoForElement:(id)a3;
- (id)_siblingOfElement:(id)a3 inDirection:(BOOL)a4 didWrap:(BOOL *)a5 options:(int *)a6;
- (id)arrayByShiftingItemsInArray:(id)a3 leftByNumberOfPositions:(unint64_t)a4;
- (id)elementForIndexInCurrentScanCycle:(int64_t)a3;
- (id)exitActionElement;
- (id)firstElementWithOptions:(int *)a3;
- (id)lastElementWithOptions:(int *)a3;
- (id)numberOfItemsInCurrentScanCycle;
- (id)parentSheetOfSheet:(id)a3;
- (id)updateAfterFetchWithCurrentlyScannedElement:(id)a3 options:(int *)a4;
- (int64_t)indexOfElementInCurrentScanCycle:(id)a3;
- (int64_t)tipObject;
- (int64_t)tipObjectForPresentingSheet:(id)a3;
- (unsigned)currentDisplayID;
- (void)_cleanMenuStacks;
- (void)_handleAdjustValue:(BOOL)a3;
- (void)_initializeMenuVisualProvider;
- (void)_notifyMenuObserversWithSelector:(SEL)a3;
- (void)_popToRootLevelSheet;
- (void)_prepareMenuForScanning;
- (void)_prepareMenuForScanningIfNeeded;
- (void)_presentWithElement:(id)a3 pointPicker:(id)a4 useMenuTip:(BOOL)a5 sheetToShow:(id)a6;
- (void)_slideToPositionWithMode:(unint64_t)a3 positionIndex:(int64_t)a4;
- (void)_updateFallbackScrollAncestorsForElement:(id)a3;
- (void)_updateForGeometryChange;
- (void)_updateOptionsIfNeeded:(int *)a3 withResultElement:(id)a4;
- (void)_updateWithElement:(id)a3 forceUpdate:(BOOL)a4;
- (void)alertDidAppear:(id)a3;
- (void)appTransitionDidOccur:(id)a3;
- (void)didPressScreenChangingButton;
- (void)didTransitionToSheet:(id)a3;
- (void)driver:(id)a3 didFocusOnContext:(id)a4 oldContext:(id)a5;
- (void)driver:(id)a3 willFocusOnContext:(id)a4;
- (void)driver:(id)a3 willUnfocusFromContext:(id)a4;
- (void)hideWithCompletion:(id)a3;
- (void)orientationDidChange:(id)a3;
- (void)presentAutoscrollMenu;
- (void)presentSiriShortcutsMenu;
- (void)presentWithPointPicker:(id)a3;
- (void)presentWithRootLevelSheet:(id)a3 useCurrentElementAndPoint:(BOOL)a4;
- (void)pushSheet:(id)a3;
- (void)registerMenuObserver:(id)a3;
- (void)reloadFromCurrentSheet;
- (void)setElement:(id)a3;
- (void)transitionToMenuSheet:(id)a3;
- (void)unregisterAllMenuObservers;
- (void)unregisterMenuObserver:(id)a3;
- (void)updateMenuVisualsForUpdatedElementVisuals;
- (void)willTransitionToSheet:(id)a3;
@end

@implementation SCATMenu

- (SCATMenu)initWithDelegate:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SCATMenu;
  v5 = [(SCATMenu *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(SCATMenu *)v5 setDelegate:v4];
    v7 = +[NSHashTable weakObjectsHashTable];
    [(SCATMenu *)v6 setMenuObservers:v7];

    v8 = +[NSMutableArray array];
    [(SCATMenu *)v6 setMenuSheetStack:v8];

    v9 = objc_alloc_init(_TtC15assistivetouchd26SwitchControlActionHandler);
    [(SCATMenu *)v6 setActionHandler:v9];

    [(SCATMenu *)v6 _initializeMenuVisualProvider];
    v10 = +[AXSiriShortcutsManager sharedManager];
  }

  return v6;
}

- (void)_initializeMenuVisualProvider
{
  v3 = [[SCATModernMenuViewController alloc] initWithMenu:self];
  [(SCATMenu *)self setMenuVisualProvider:v3];
}

- (void)setElement:(id)a3
{
  v5 = a3;
  if (self->_element != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_element, a3);
    if (([(SCATElement *)v11 scatIsKeyboardKey]& 1) != 0 || ([(SCATElement *)v11 keyboardContainer], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      v7 = +[HNDAccessibilityManager sharedManager];
      v8 = [v7 firstResponder];
    }

    else if ([(SCATElement *)v11 scatIsAXElement])
    {
      v8 = v11;
    }

    else
    {
      v8 = 0;
    }

    v9 = [(SCATElement *)v8 textOperations];
    v10 = [(SCATElement *)v8 traits];
    if ((kAXIsEditingTrait & v10) == 0 && ([v9 containsObject:kAXTextOperationActionCopy] & 1) == 0 && (objc_msgSend(v9, "containsObject:", kAXTextOperationActionPaste) & 1) == 0 && (objc_msgSend(v9, "containsObject:", kAXTextOperationActionCut) & 1) == 0 && (objc_msgSend(v9, "containsObject:", kAXTextOperationActionSelectAll) & 1) == 0)
    {

      v8 = 0;
    }

    [(SCATMenu *)self setTextElement:v8];

    v5 = v11;
  }
}

- (unsigned)currentDisplayID
{
  v3 = [(SCATMenu *)self element];

  if (!v3 || (-[SCATMenu element](self, "element"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 scatDisplayId], v4, !v5))
  {
    v6 = [(SCATMenu *)self pointPicker];
    v5 = [v6 currentDisplayID];
  }

  if (v5 <= 1)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (AXElement)keyboardApplication
{
  v2 = [(SCATMenu *)self textElement];
  if (!v2)
  {
    v3 = +[HNDAccessibilityManager sharedManager];
    v2 = [v3 lastKeyboardElement];
  }

  if ([v2 scatIsAXElement])
  {
    v4 = [v2 application];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isVisible
{
  v2 = [(SCATMenu *)self menuVisualProvider];
  v3 = [v2 isVisible];

  return v3;
}

- (BOOL)isGroupingEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchGroupElementsEnabled];

  return v3;
}

- (int64_t)tipObject
{
  v3 = [(SCATMenu *)self menuVisualProvider];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(SCATMenu *)self menuVisualProvider];
  v6 = [v5 tipObject];

  return v6;
}

- (BOOL)shouldHideMenuCursor
{
  v2 = [(SCATMenu *)self currentSheet];
  v3 = [v2 preferredTipObject] == 1 || objc_msgSend(v2, "presentationMode") == 1 && objc_msgSend(v2, "preferredTipObject") != 2;

  return v3;
}

- (int64_t)tipObjectForPresentingSheet:(id)a3
{
  v4 = a3;
  if (!-[SCATMenu wasPresentedWithTip](self, "wasPresentedWithTip") || [v4 presentationMode] || -[SCATMenu popoverPosition](self, "popoverPosition"))
  {
    v5 = 0;
  }

  else
  {
    v7 = [v4 preferredTipObject];
    if (!v7)
    {
      v8 = [(SCATMenu *)self rootSheet];
      v7 = [v8 preferredTipObject];
      if (!v7)
      {
        v12 = @"Menu was presented with a tip, but its root sheet had no tip.  This may be an error.  Root sheet: %@";
        v13 = v8;
        LOBYTE(v11) = 1;
        _AXLogWithFacility();
        v7 = 2;
      }
    }

    v9 = [(SCATMenu *)self element:v11];

    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7 == 2;
    }

    if (v10)
    {
      v5 = 1;
    }

    else
    {
      v5 = v7;
    }
  }

  return v5;
}

- (void)presentWithPointPicker:(id)a3
{
  v4 = a3;
  [v4 pickedPointInDeviceCoordinates];
  v6 = v5;
  v8 = v7;
  v9 = [v4 currentDisplayID];
  v10 = +[HNDAccessibilityManager sharedManager];
  v12 = [v10 elementAtPoint:v9 displayID:{v6, v8}];

  [(SCATMenu *)self setPointPicker:v4];
  v11 = [NSValue valueWithPoint:v6, v8];
  [(SCATMenu *)self setScreenPoint:v11];

  [(SCATMenu *)self _presentWithElement:v12 pointPicker:v4 useMenuTip:1 sheetToShow:0];
}

- (void)presentWithRootLevelSheet:(id)a3 useCurrentElementAndPoint:(BOOL)a4
{
  v9 = a3;
  if (a4)
  {
    v6 = [(SCATMenu *)self element];
    v7 = [(SCATMenu *)self pointPicker];
    [(SCATMenu *)self _presentWithElement:v6 pointPicker:v7 useMenuTip:0 sheetToShow:v9];

    v8 = v6;
  }

  else
  {
    [(SCATMenu *)self _presentWithElement:0 pointPicker:0 useMenuTip:0 sheetToShow:v9];
    v8 = v9;
  }
}

- (void)presentSiriShortcutsMenu
{
  if (sub_1000424F4())
  {
    v3 = +[AXSiriShortcutsManager sharedManager];
    v4 = [v3 shortcuts];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [(SCATModernMenuSheet *)[SCATMenuSiriShorcutsSheet alloc] initWithMenu:self];
      [(SCATMenu *)self presentWithRootLevelSheet:v6 useCurrentElementAndPoint:0];
    }
  }
}

- (void)presentAutoscrollMenu
{
  v3 = [(SCATModernMenuSheet *)[SCATModernMenuAutoscrollSheet alloc] initWithMenu:self];
  [(SCATMenu *)self presentWithRootLevelSheet:v3 useCurrentElementAndPoint:1];
}

- (void)_presentWithElement:(id)a3 pointPicker:(id)a4 useMenuTip:(BOOL)a5 sheetToShow:(id)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a6;
  v12 = a3;
  [(SCATMenu *)self setElement:v12];
  [(SCATMenu *)self setPointPicker:v10];
  [(SCATMenu *)self setWillScanFirstElementAfterPresentation:1];
  v13 = [(SCATMenu *)self screenPoint];
  if (!v13)
  {
    v14 = [(SCATMenu *)self element];

    if (!v14)
    {
      goto LABEL_5;
    }

    v13 = [(SCATMenu *)self element];
    [v13 scatScreenPointForOperations];
    v15 = [NSValue valueWithCGPoint:?];
    [(SCATMenu *)self setScreenPoint:v15];
  }

LABEL_5:
  [(SCATMenu *)self _notifyMenuObserversWithSelector:"menuWillAppear:"];
  [(SCATMenu *)self setDockPosition:0];
  [(SCATMenu *)self setPopoverPosition:0];
  if (v7)
  {
    v16 = [(SCATMenu *)self element];
    if (v16)
    {
      [(SCATMenu *)self setWasPresentedWithTip:1];
    }

    else
    {
      v17 = [(SCATMenu *)self screenPoint];
      [(SCATMenu *)self setWasPresentedWithTip:v17 != 0];
    }

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
    [(SCATMenu *)self setWasPresentedWithTip:0];
    if (!v11)
    {
LABEL_12:
      v11 = [(SCATModernMenuSheet *)[SCATModernMenuActionsSheet alloc] initWithMenu:self];
    }
  }

  [(SCATMenu *)self _updateFallbackScrollAncestorsForElement:v12];
  [(SCATMenu *)self setCurrentSheet:0];
  v18 = [NSMutableArray arrayWithObject:v11];
  [(SCATMenu *)self setMenuSheetStack:v18];

  [(SCATMenu *)self transitionToMenuSheet:v11];
  v19 = [(SCATMenu *)self menuVisualProvider];
  [v19 willBePresentedWithElement:v12 pointPicker:v10 sheetToShow:v11];

  AXPerformBlockAsynchronouslyOnMainThread();
  [(SCATMenu *)self setDidActivateElement:0];
}

- (void)hideWithCompletion:(id)a3
{
  v10 = a3;
  if ([(SCATMenu *)self isVisible])
  {
    [(SCATMenu *)self _notifyMenuObserversWithSelector:"menuWillDisappear:"];
    v4 = [(SCATMenu *)self currentSheet];
    [v4 menuWillDisappear];

    v5 = [(SCATMenu *)self menuVisualProvider];
    [v5 hide];

    [(SCATMenu *)self _flushScannableMenuElements];
    if (v10)
    {
      v10[2](v10);
    }

    if (![(SCATMenu *)self shouldNotResetPointPickerRefinement])
    {
      v6 = [(SCATMenu *)self pointPicker];
      [v6 resetRefinedSelectedPoint];
    }

    [(SCATMenu *)self setShouldNotResetPointPickerRefinement:0];
    [(SCATMenu *)self setScreenPoint:0];
    [(SCATMenu *)self setPointPicker:0];
    v7 = [(SCATMenu *)self menuVisualProvider];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(SCATMenu *)self menuVisualProvider];
      [v9 setTipObject:0];
    }

    [(SCATMenu *)self _cleanMenuStacks];
    [(SCATMenu *)self _notifyMenuObserversWithSelector:"menuDidDisappear:"];
  }
}

- (BOOL)_isCurrentSheetValidForElement:(id)a3
{
  v4 = a3;
  v5 = [(SCATMenu *)self currentSheet];
  v6 = [objc_opt_class() isValidForElement:v4];

  return v6;
}

- (id)updateAfterFetchWithCurrentlyScannedElement:(id)a3 options:(int *)a4
{
  v6 = a3;
  v7 = [(SCATMenu *)self element];

  if (!v7)
  {
    v13 = 0;
    goto LABEL_16;
  }

  v8 = +[HNDAccessibilityManager sharedManager];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10009CFA4;
  v16[3] = &unk_1001D61D8;
  v16[4] = self;
  v9 = [v8 elementsForMatchingBlock:v16];
  v10 = [v9 firstObject];

  if (!v10)
  {
    if ([(SCATMenu *)self isGroupingEnabled])
    {
      v11 = [v8 firstScannerGroupable];
      if ([v11 isGroup])
      {
        v12 = [v11 firstLeafDescendant];
      }

      else
      {
        v12 = v11;
      }

      v10 = v12;

      if (!v6)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }

    v10 = [v8 firstScannerElement];
  }

  if (!v6)
  {
LABEL_13:
    [(SCATMenu *)self _updateWithElement:v10 forceUpdate:0];
    goto LABEL_14;
  }

LABEL_9:
  v14 = [(SCATMenu *)self _restorationInfoForElement:v6];
  [(SCATMenu *)self _updateWithElement:v10 forceUpdate:0];
  if (!v14)
  {
LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v13 = [(SCATMenu *)self _elementWithRestorationInfo:v14 options:a4];

LABEL_15:
LABEL_16:

  return v13;
}

- (void)_updateWithElement:(id)a3 forceUpdate:(BOOL)a4
{
  v6 = a3;
  v7 = [(SCATMenu *)self element];
  v8 = [v7 isEqual:v6];

  if (a4 || !v8)
  {
    [(SCATMenu *)self setElement:v6];
    if ((v8 & 1) == 0)
    {
      if ([(SCATMenu *)self _isCurrentSheetValidForElement:v6])
      {
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v9 = [(SCATMenu *)self menuSheetStack];
        v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v15;
          do
          {
            v13 = 0;
            do
            {
              if (*v15 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [*(*(&v14 + 1) + 8 * v13) reload];
              v13 = v13 + 1;
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
          }

          while (v11);
        }
      }

      else
      {
        [(SCATMenu *)self _popToRootLevelSheet];
      }
    }

    [(SCATMenu *)self reloadFromCurrentSheet];
  }
}

- (void)_updateFallbackScrollAncestorsForElement:(id)a3
{
  v11 = a3;
  v4 = [(SCATMenu *)self delegate];
  v5 = [v4 shouldShowAppWideScrollActionsInMenu:self];

  if ((v5 & 1) == 0)
  {
    v6 = [v11 scrollableElement];
    v7 = +[AXUIElement uiElementWithAXElement:cache:](AXUIElement, "uiElementWithAXElement:cache:", [v6 scrollAncestorForScrollAction:2006], 0);
    [(SCATMenu *)self setFallbackScrollDownAncestor:v7];

    v8 = +[AXUIElement uiElementWithAXElement:cache:](AXUIElement, "uiElementWithAXElement:cache:", [v6 scrollAncestorForScrollAction:2007], 0);
    [(SCATMenu *)self setFallbackScrollUpAncestor:v8];

    v9 = +[AXUIElement uiElementWithAXElement:cache:](AXUIElement, "uiElementWithAXElement:cache:", [v6 scrollAncestorForScrollAction:2008], 0);
    [(SCATMenu *)self setFallbackScrollLeftAncestor:v9];

    v10 = +[AXUIElement uiElementWithAXElement:cache:](AXUIElement, "uiElementWithAXElement:cache:", [v6 scrollAncestorForScrollAction:2009], 0);
    [(SCATMenu *)self setFallbackScrollRightAncestor:v10];
  }
}

- (id)_restorationInfoForElement:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [(SCATMenu *)self element];

  if (v6 == v4)
  {
    [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:@"IsMenuElement"];
    goto LABEL_13;
  }

  if ([v4 isGroup])
  {
    v7 = [(SCATMenu *)self elementProvider];
    v8 = [v7 elementProviders];
    v9 = [v8 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = [(SCATMenu *)self elementProvider];
      v12 = [v11 elementProviders];
      v13 = [v12 firstObject];

      v14 = [v13 indexOfObject:v4];
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = [NSNumber numberWithUnsignedInteger:v14];
        v16 = @"MenuRowIndex";
LABEL_9:
        [v5 setObject:v15 forKeyedSubscript:v16];

LABEL_12:
        goto LABEL_13;
      }
    }

    else
    {
      v13 = 0;
    }

    _AXAssert();
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v4 menuItem];
    v15 = [v13 identifier];
    v16 = @"MenuItemIdentifier";
    goto LABEL_9;
  }

  v18 = [(SCATMenu *)self menuVisualProvider];
  v19 = [v18 isElementTopLevelInMenu:v4];

  if ((v19 & 1) == 0)
  {
    _AXAssert();
  }

LABEL_13:

  return v5;
}

- (id)_elementWithRestorationInfo:(id)a3 options:(int *)a4
{
  v6 = a3;
  [(SCATMenu *)self _prepareMenuForScanningIfNeeded];
  v7 = [v6 objectForKeyedSubscript:@"IsMenuElement"];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = [(SCATMenu *)self element];
  }

  else
  {
    v10 = [v6 objectForKeyedSubscript:@"MenuRowIndex"];

    if (v10)
    {
      v11 = [(SCATMenu *)self elementProvider];
      v12 = [v11 elementProviders];
      v13 = [v12 firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v15 = [(SCATMenu *)self elementProvider];
        v16 = [v15 elementProviders];
        v17 = [v16 firstObject];
      }

      else
      {
        v17 = 0;
      }

      v28 = [v17 count];
      v29 = [v6 objectForKeyedSubscript:@"MenuRowIndex"];
      v30 = [v29 unsignedIntegerValue];

      if (v30 >= v28)
      {
        v34 = v30;
        v35 = v17;
        v33 = @"We tried to restore a row %lu that was not in our list of menu rows: %@";
        LOBYTE(v32) = 1;
        _AXLogWithFacility();
        v9 = 0;
      }

      else
      {
        v9 = [v17 objectAtIndexedSubscript:v30];
      }
    }

    else
    {
      v18 = [v6 objectForKeyedSubscript:@"MenuItemIdentifier"];

      if (v18)
      {
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v19 = [(SCATMenu *)self currentSheet];
        v20 = [v19 menuItems];

        v21 = [v20 countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v21)
        {
          v36 = self;
          v37 = a4;
          v22 = *v39;
          while (2)
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v39 != v22)
              {
                objc_enumerationMutation(v20);
              }

              v24 = *(*(&v38 + 1) + 8 * i);
              v25 = [v24 identifier];
              v26 = [v6 objectForKeyedSubscript:@"MenuItemIdentifier"];
              v27 = [v25 isEqualToString:v26];

              if (v27)
              {
                v21 = v24;
                goto LABEL_22;
              }
            }

            v21 = [v20 countByEnumeratingWithState:&v38 objects:v42 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }

LABEL_22:
          self = v36;
          a4 = v37;
        }

        v9 = [v21 scatElement];
      }

      else
      {
        v9 = 0;
      }
    }
  }

  [(SCATMenu *)self _updateOptionsIfNeeded:a4 withResultElement:v9, v32, v33, v34, v35];

  return v9;
}

- (void)transitionToMenuSheet:(id)a3
{
  v4 = a3;
  v6 = [(SCATMenu *)self currentSheet];
  [(SCATMenu *)self setCurrentSheet:v4];
  v5 = [(SCATMenu *)self menuVisualProvider];
  [v5 transitionToMenuSheet:v4 fromSheet:v6];
}

- (SCATModernMenuSheet)rootSheet
{
  v2 = [(SCATMenu *)self menuSheetStack];
  v3 = [v2 firstObject];

  return v3;
}

- (void)pushSheet:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [(SCATMenu *)self currentSheet];

    v4 = v7;
    if (v5 != v7)
    {
      if ([v7 allowsBackAction])
      {
        [v7 setShouldIncludeBackItem:1];
      }

      [(SCATMenu *)self transitionToMenuSheet:v7];
      v6 = [(SCATMenu *)self menuSheetStack];
      [v6 addObject:v7];

      v4 = v7;
    }
  }
}

- (BOOL)popSheet
{
  v3 = [(SCATMenu *)self _canPopSheet];
  if (v3)
  {
    v4 = [(SCATMenu *)self currentSheet];
    v5 = [(SCATMenu *)self parentSheetOfSheet:v4];
    [(SCATMenu *)self transitionToMenuSheet:v5];
    [v4 setShouldIncludeBackItem:0];
    v6 = [(SCATMenu *)self menuSheetStack];
    [v6 removeObject:v4];
  }

  return v3;
}

- (void)_popToRootLevelSheet
{
  v6 = [(SCATMenu *)self menuSheetStack];
  if ([v6 count])
  {
    v3 = [(SCATMenu *)self currentSheet];
    v4 = [v6 objectAtIndex:0];
    if (([v4 isEqual:v3] & 1) == 0)
    {
      [(SCATMenu *)self setCurrentSheet:v4];
      [(SCATMenu *)self transitionToMenuSheet:v4];
      v5 = [NSMutableArray arrayWithObject:v4];
      [(SCATMenu *)self setMenuSheetStack:v5];
    }
  }
}

- (void)_cleanMenuStacks
{
  v3 = objc_opt_new();
  [(SCATMenu *)self setMenuSheetStack:v3];
}

- (id)parentSheetOfSheet:(id)a3
{
  v4 = a3;
  v5 = [(SCATMenu *)self menuSheetStack];
  v6 = [v5 indexOfObject:v4];

  v7 = 0;
  if (v6 && v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v5 objectAtIndex:v6 - 1];
  }

  return v7;
}

- (BOOL)containsGestureSheet
{
  v3 = objc_opt_class();

  return [(SCATMenu *)self containsSheet:v3];
}

- (BOOL)containsSheet:(Class)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(SCATMenu *)self menuSheetStack:0];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (objc_opt_isKindOfClass())
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (SCATModernMenuGesturesSheet)gestureSheet
{
  objc_opt_class();
  v3 = [(SCATMenu *)self menuSheetStack];
  v4 = [v3 ax_filteredArrayUsingBlock:&stru_1001D61F8];
  v5 = [v4 firstObject];
  v6 = __UIAccessibilityCastAsClass();

  return v6;
}

- (BOOL)_canPopSheet
{
  v2 = [(SCATMenu *)self menuSheetStack];
  v3 = [v2 count] > 1;

  return v3;
}

- (void)willTransitionToSheet:(id)a3
{
  [(SCATMenu *)self setTransitioning:1];
  [(SCATMenu *)self _flushScannableMenuElements];

  [(SCATMenu *)self _notifyMenuObserversWithSelector:"menuWillBeginTransition:"];
}

- (void)didTransitionToSheet:(id)a3
{
  [(SCATMenu *)self setTransitioning:0];

  [(SCATMenu *)self _notifyMenuObserversWithSelector:"menuDidFinishTransition:"];
}

- (void)reloadFromCurrentSheet
{
  [(SCATMenu *)self _flushScannableMenuElements];

  [(SCATMenu *)self _updateForGeometryChange];
}

- (void)_updateForGeometryChange
{
  v3 = [(SCATMenu *)self menuVisualProvider];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SCATMenu *)self menuVisualProvider];
    [v5 updateForGeometryChange];
  }
}

- (void)_slideToPositionWithMode:(unint64_t)a3 positionIndex:(int64_t)a4
{
  if (a3)
  {
    [(SCATMenu *)self setDockPosition:a4];
  }

  else
  {
    [(SCATMenu *)self setPopoverPosition:a4];
  }

  [(SCATMenu *)self _updateForGeometryChange];
}

- (id)exitActionElement
{
  v3 = [(SCATMenu *)self currentSheet];
  if ([v3 allowsExitAction])
  {
    v4 = [(SCATMenu *)self menuVisualProvider];
    v5 = [v4 exitActionElement];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [(SCATMenu *)self element];
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateMenuVisualsForUpdatedElementVisuals
{
  v3 = [(SCATMenu *)self element];
  [(SCATMenu *)self _updateWithElement:v3 forceUpdate:1];
}

- (void)_handleAdjustValue:(BOOL)a3
{
  v3 = a3;
  v5 = [(SCATMenu *)self element];
  if ([v5 scatIsAXElement])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v6 = [(SCATMenu *)self currentSheet];
    v7 = [v6 menuItems];

    v8 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v26 = self;
      v27 = v5;
      v10 = *v33;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v32 + 1) + 8 * v11);
        v13 = [v12 identifier];
        v14 = v13;
        v15 = v3 ? @"action_increment" : @"action_decrement";
        v16 = [v13 isEqual:v15];

        if (v16)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          v17 = v7;
          v5 = v27;
          goto LABEL_28;
        }
      }

      v17 = v12;

      v5 = v27;
      if (!v17)
      {
        goto LABEL_29;
      }

      [v17 setShouldSuppressAudioOutput:1];
      [v27 scatUpdateValue];
      v18 = [v27 scatValue];
      if (v3)
      {
        v19 = 2004;
      }

      else
      {
        v19 = 2005;
      }

      [v27 scatPerformAction:v19];
      Current = CFAbsoluteTimeGetCurrent();
      v21 = 0;
      while (CFAbsoluteTimeGetCurrent() - Current < 0.5)
      {
        [NSThread sleepForTimeInterval:0.05];
        [v27 scatUpdateValue];
        v22 = [v27 scatValue];

        v21 = v22;
        if (([v18 isEqualToString:v22] & 1) == 0)
        {
          v23 = [(SCATMenu *)v26 delegate];
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_10009E5A8;
          v30[3] = &unk_1001D3750;
          v31 = v17;
          [v23 menu:v26 speakAnnouncement:v22 completionBlock:v30];

          v21 = v22;
          goto LABEL_27;
        }
      }

      if (v21 && [v18 isEqualToString:v21])
      {
        v24 = [(SCATMenu *)v26 delegate];
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_10009E5B4;
        v28[3] = &unk_1001D3750;
        v29 = v17;
        [v24 menu:v26 speakAnnouncement:v21 completionBlock:v28];

        v25 = [(SCATMenu *)v26 delegate];
        [v25 menu:v26 playSoundEffect:1004];
      }

      [v17 setShouldSuppressAudioOutput:0];
LABEL_27:
    }

    else
    {
      v17 = v7;
    }

LABEL_28:
  }

LABEL_29:
}

- (void)registerMenuObserver:(id)a3
{
  v4 = a3;
  v5 = [(SCATMenu *)self menuObservers];
  [v5 addObject:v4];
}

- (void)unregisterMenuObserver:(id)a3
{
  v4 = a3;
  v5 = [(SCATMenu *)self menuObservers];
  [v5 removeObject:v4];
}

- (void)unregisterAllMenuObservers
{
  v2 = [(SCATMenu *)self menuObservers];
  [v2 removeAllObjects];
}

- (void)_notifyMenuObserversWithSelector:(SEL)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(SCATMenu *)self menuObservers];
  v6 = [v5 allObjects];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 performSelector:a3 withObject:self];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_updateOptionsIfNeeded:(int *)a3 withResultElement:(id)a4
{
  v8 = a4;
  if (a3)
  {
    v6 = [(SCATMenu *)self element];

    v7 = v8;
    if (v6 == v8)
    {
      *a3 |= 5u;
    }
  }

  else
  {
    _AXAssert();
    v7 = v8;
  }
}

- (id)firstElementWithOptions:(int *)a3
{
  [(SCATMenu *)self _prepareMenuForScanningIfNeeded];
  v5 = [(SCATMenu *)self elementProvider];
  v6 = [v5 firstElementWithOptions:a3];

  [(SCATMenu *)self _updateOptionsIfNeeded:a3 withResultElement:v6];

  return v6;
}

- (id)lastElementWithOptions:(int *)a3
{
  [(SCATMenu *)self _prepareMenuForScanningIfNeeded];
  v5 = [(SCATMenu *)self elementProvider];
  v6 = [v5 lastElementWithOptions:a3];

  [(SCATMenu *)self _updateOptionsIfNeeded:a3 withResultElement:v6];

  return v6;
}

- (id)_siblingOfElement:(id)a3 inDirection:(BOOL)a4 didWrap:(BOOL *)a5 options:(int *)a6
{
  v8 = a4;
  v10 = a3;
  [(SCATMenu *)self _prepareMenuForScanningIfNeeded];
  if ([(SCATMenu *)self isTransitioning])
  {
    v11 = 0;
  }

  else
  {
    v12 = [(SCATMenu *)self element];

    if (v12 == v10)
    {
      v20 = [(SCATMenu *)self firstElementWithOptions:a6];
      v11 = v20;
      if (!v8)
      {
        v21 = [v20 parentGroup];
        if (v21 && (v22 = v21, v23 = [(SCATMenu *)self isGroupingEnabled], v22, v23))
        {
          v24 = [v11 parentGroup];
          v25 = [v24 previousSiblingOfChild:v11 didWrap:a5];
        }

        else
        {
          v24 = [(SCATMenu *)self elementProvider];
          v25 = [v24 elementBefore:v10 didWrap:a5 options:a6];
        }

        v26 = v25;

        v11 = v26;
      }

      *a5 = 1;
    }

    else
    {
      v13 = [v10 parentGroup];
      if (v13 && (v14 = v13, v15 = [(SCATMenu *)self isGroupingEnabled], v14, v15))
      {
        v16 = [v10 parentGroup];
        v17 = v16;
        if (v8)
        {
          [v16 nextSiblingOfChild:v10 didWrap:a5];
        }

        else
        {
          [v16 previousSiblingOfChild:v10 didWrap:a5];
        }
      }

      else
      {
        v19 = [(SCATMenu *)self elementProvider];
        v17 = v19;
        if (v8)
        {
          [v19 elementAfter:v10 didWrap:a5 options:a6];
        }

        else
        {
          [v19 elementBefore:v10 didWrap:a5 options:a6];
        }
      }
      v18 = ;
      v11 = v18;
    }

    [(SCATMenu *)self _updateOptionsIfNeeded:a6 withResultElement:v11];
  }

  return v11;
}

- (id)numberOfItemsInCurrentScanCycle
{
  if ([(SCATMenu *)self isGroupingEnabled])
  {
    v3 = [(SCATMenu *)self currentFocusContext];
    v4 = [v3 element];
    if ([v4 scatIsMemberOfGroup])
    {
      v5 = 1;
    }

    else
    {
      v6 = [(SCATMenu *)self currentFocusContext];
      v5 = [v6 selectBehavior] == 4;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = [(SCATMenu *)self elementProvider];
  v8 = [v7 elementProviders];

  if (!v5)
  {
    goto LABEL_13;
  }

  v9 = [(SCATMenu *)self currentFocusContext];
  v10 = [v9 menuElement];
  v11 = [(SCATMenu *)self currentFocusContext];
  v12 = [v11 element];

  if (v10 == v12)
  {
    goto LABEL_13;
  }

  v13 = [(SCATMenu *)self currentFocusContext];
  v14 = [v13 selectBehavior];
  v15 = [(SCATMenu *)self currentFocusContext];
  v16 = [v15 element];
  v17 = v16;
  if (v14 != 4)
  {
    v18 = [v16 parentGroup];

    v17 = v18;
  }

  if (v17)
  {
    v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 count] + 1);
  }

  else
  {
LABEL_13:
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = v8;
    v21 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = 0;
      v24 = *v28;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v23 += [*(*(&v27 + 1) + 8 * i) count];
        }

        v22 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v22);
    }

    else
    {
      v23 = 0;
    }

    v19 = [NSNumber numberWithUnsignedInteger:v23];
  }

  return v19;
}

- (int64_t)indexOfElementInCurrentScanCycle:(id)a3
{
  v5 = a3;
  if (![(SCATMenu *)self isGroupingEnabled])
  {
    goto LABEL_8;
  }

  v6 = [(SCATMenu *)self currentFocusContext];
  v7 = [v6 element];
  if ([v7 scatIsMemberOfGroup])
  {

    goto LABEL_5;
  }

  v3 = [(SCATMenu *)self currentFocusContext];
  v8 = [v3 selectBehavior];

  if (v8 != 4)
  {
LABEL_8:
    v11 = [(SCATMenu *)self elementProvider];
    v12 = [v11 elementProviders];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v27;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v26 + 1) + 8 * i);
          if ([v19 indexOfObject:{v5, v26}] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v20 = [v19 indexOfObject:v5] + v16;

            goto LABEL_25;
          }

          v16 += [v19 count];
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_23;
  }

LABEL_5:
  v9 = [(SCATMenu *)self currentFocusContext];
  v10 = [v9 element];
  if (v10 == v5)
  {
    v3 = [(SCATMenu *)self currentFocusContext];
    if ([v3 selectBehavior] == 4)
    {

LABEL_24:
      v13 = [(SCATMenu *)self numberOfItemsInCurrentScanCycle];
      v20 = [v13 integerValue] - 1;
      goto LABEL_25;
    }
  }

  v21 = [(SCATMenu *)self currentFocusContext];
  v22 = [v21 menuElement];

  if (v10 == v5)
  {
  }

  if (v22 == v5)
  {
    goto LABEL_24;
  }

  v23 = [(SCATMenu *)self currentFocusContext];
  v24 = [v23 element];
  v13 = [v24 parentGroup];

  if (v13)
  {
    v20 = [v13 indexOfObject:v5];
LABEL_25:

    goto LABEL_26;
  }

LABEL_23:
  v20 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_26:

  return v20;
}

- (id)elementForIndexInCurrentScanCycle:(int64_t)a3
{
  if (![(SCATMenu *)self isGroupingEnabled])
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  v5 = [(SCATMenu *)self currentFocusContext];
  v6 = [v5 element];
  if (([v6 scatIsMemberOfGroup] & 1) == 0)
  {
    v15 = [(SCATMenu *)self currentFocusContext];
    v16 = [v15 selectBehavior];

    if ((a3 & 0x8000000000000000) == 0)
    {
      if (v16 == 4)
      {
        goto LABEL_17;
      }

LABEL_6:
      v7 = [(SCATMenu *)self elementProvider];
      v8 = [v7 elementProviders];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v22;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v21 + 1) + 8 * i);
            if (a3 < [v14 count])
            {
              v19 = [v14 objectAtIndexedSubscript:a3];

              goto LABEL_22;
            }

            a3 -= [v14 count];
          }

          v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_19;
    }

LABEL_20:
    v19 = 0;
    goto LABEL_23;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  v17 = [(SCATMenu *)self currentFocusContext];
  v18 = [v17 element];
  v9 = [v18 parentGroup];

  if ([v9 count] <= a3)
  {
LABEL_19:

    goto LABEL_20;
  }

  v19 = [v9 objectAtIndexedSubscript:a3];
LABEL_22:

LABEL_23:

  return v19;
}

- (BOOL)canBeActiveElementManager
{
  v3 = [(SCATMenu *)self currentSheet];
  if (([v3 delegatesScannerControl] & 1) != 0 || !-[SCATMenu isVisible](self, "isVisible"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![(SCATMenu *)self isTransitioning];
  }

  return v4;
}

- (BOOL)shouldKeepScannerAwake
{
  v2 = [(SCATMenu *)self currentSheet];
  v3 = [v2 shouldKeepScannerAwake];

  return v3;
}

- (BOOL)allowsDwellSelection
{
  v2 = [(SCATMenu *)self currentSheet];
  v3 = [v2 shouldAllowDwellSelection];

  return v3;
}

- (void)driver:(id)a3 willFocusOnContext:(id)a4
{
  v6 = a4;
  v8.receiver = self;
  v8.super_class = SCATMenu;
  [(SCATElementManager *)&v8 driver:a3 willFocusOnContext:v6];
  v7 = [(SCATMenu *)self currentSheet];
  [v7 willFocusOnContext:v6];

  if ([(SCATMenu *)self willScanFirstElementAfterPresentation])
  {
    [(SCATMenu *)self setWillScanFirstElementAfterPresentation:0];
    [v6 setShouldPlayMenuSoundOnFocus:1];
  }
}

- (void)driver:(id)a3 didFocusOnContext:(id)a4 oldContext:(id)a5
{
  v12.receiver = self;
  v12.super_class = SCATMenu;
  v8 = a5;
  v9 = a4;
  [(SCATElementManager *)&v12 driver:a3 didFocusOnContext:v9 oldContext:v8];
  v10 = [(SCATMenu *)self currentSheet:v12.receiver];
  [v10 didFocusOnContext:v9 oldContext:v8];

  v11 = [(SCATMenu *)self menuVisualProvider];
  [v11 didFocusOnContext:v9 oldContext:v8];

  [(SCATMenu *)self setCurrentFocusContext:v9];
}

- (void)driver:(id)a3 willUnfocusFromContext:(id)a4
{
  v9.receiver = self;
  v9.super_class = SCATMenu;
  v6 = a4;
  [(SCATElementManager *)&v9 driver:a3 willUnfocusFromContext:v6];
  v7 = [(SCATMenu *)self currentSheet:v9.receiver];
  [v7 willUnfocusFromContext:v6];

  v8 = [(SCATMenu *)self menuVisualProvider];
  [v8 willUnfocusFromContext:v6];
}

- (void)orientationDidChange:(id)a3
{
  v4 = [(SCATMenu *)self element];
  if (v4)
  {
    v5 = v4;
    v6 = +[HNDAccessibilityManager sharedManager];
    v7 = [v6 scannerElementMatchingElement:v5];

    if (v7)
    {
      [(SCATMenu *)self setElement:v7];
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v8 = [(SCATMenu *)self menuSheetStack];
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

            [*(*(&v14 + 1) + 8 * i) didChangeOrientation];
          }

          v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v10);
      }

      [(SCATMenu *)self _updateForGeometryChange];
    }

    else
    {

      [(SCATMenu *)self hideWithCompletion:0];
    }
  }

  else
  {
    v13 = [(SCATMenu *)self screenPoint];

    if (v13)
    {

      [(SCATMenu *)self _updateForGeometryChange];
    }
  }
}

- (void)appTransitionDidOccur:(id)a3
{
  v4.receiver = self;
  v4.super_class = SCATMenu;
  [(SCATElementManager *)&v4 appTransitionDidOccur:a3];
  [(SCATMenu *)self hideWithCompletion:0];
}

- (void)alertDidAppear:(id)a3
{
  v4.receiver = self;
  v4.super_class = SCATMenu;
  [(SCATElementManager *)&v4 alertDidAppear:a3];
  [(SCATMenu *)self hideWithCompletion:0];
}

- (id)arrayByShiftingItemsInArray:(id)a3 leftByNumberOfPositions:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 count];
  v7 = v6;
  if (v6 <= a4)
  {
    v14 = a4;
    v15 = v6;
    _AXAssert();
  }

  v8 = [NSMutableArray arrayWithCapacity:v7, v14, v15];
  if (v7 > a4)
  {
    v9 = a4;
    do
    {
      v10 = [v5 objectAtIndex:v9];
      [v8 addObject:v10];

      ++v9;
    }

    while (v7 != v9);
  }

  if (a4)
  {
    v11 = 0;
    do
    {
      v12 = [v5 objectAtIndex:v11];
      [v8 addObject:v12];

      ++v11;
    }

    while (a4 != v11);
  }

  return v8;
}

- (void)_prepareMenuForScanningIfNeeded
{
  v3 = [(SCATMenu *)self elementProvider];
  if (v3)
  {
  }

  else if (![(SCATMenu *)self isTransitioning])
  {

    [(SCATMenu *)self _prepareMenuForScanning];
  }
}

- (void)_prepareMenuForScanning
{
  v3 = objc_alloc_init(SCATAggregateElementProvider);
  v4 = [(SCATMenu *)self currentSheet];
  v5 = [(SCATMenu *)self _elementProviderForSheet:v4];
  if (v5)
  {
    [(SCATAggregateElementProvider *)v3 addProvider:v5];
  }

  v6 = [(SCATMenu *)self menuVisualProvider];
  v7 = [v6 extraProviderElements];

  if ([v7 count])
  {
    v8 = [(SCATAggregateElementProvider *)v3 addProviderWithElements:v7 passingTest:0];
  }

  v9 = [(SCATMenu *)self exitActionElement];
  if (v9)
  {
    v10 = [(SCATMenu *)self exitActionElement];
    v13 = v10;
    v11 = [NSArray arrayWithObjects:&v13 count:1];
    v12 = [(SCATAggregateElementProvider *)v3 addProviderWithElements:v11 passingTest:0];
  }

  [(SCATMenu *)self setElementProvider:v3];
}

- (id)_elementProviderForSheet:(id)a3
{
  v4 = a3;
  v5 = [(SCATMenu *)self menuVisualProvider];
  v6 = [v5 elementProviderForSheet:v4];

  return v6;
}

- (BOOL)_viewIsSuitableScannerElement:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 isHidden] & 1) == 0 && (objc_msgSend(v4, "alpha"), v5 >= 0.05))
  {
    [v4 frame];
    v6 = !CGRectIsEmpty(v8);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)didPressScreenChangingButton
{
  [(SCATMenu *)self hideWithCompletion:0];
  v3 = [(SCATMenu *)self delegate];
  [v3 didPressScreenChangingButtonInMenu:self];
}

- (SCATMenuDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end