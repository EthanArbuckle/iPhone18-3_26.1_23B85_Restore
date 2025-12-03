@interface SCATMenu
- (AXElement)keyboardApplication;
- (BOOL)_canPopSheet;
- (BOOL)_isCurrentSheetValidForElement:(id)element;
- (BOOL)_viewIsSuitableScannerElement:(id)element;
- (BOOL)allowsDwellSelection;
- (BOOL)canBeActiveElementManager;
- (BOOL)containsGestureSheet;
- (BOOL)containsSheet:(Class)sheet;
- (BOOL)isGroupingEnabled;
- (BOOL)isVisible;
- (BOOL)popSheet;
- (BOOL)shouldHideMenuCursor;
- (BOOL)shouldKeepScannerAwake;
- (SCATMenu)initWithDelegate:(id)delegate;
- (SCATMenuDelegate)delegate;
- (SCATModernMenuGesturesSheet)gestureSheet;
- (SCATModernMenuSheet)rootSheet;
- (id)_elementProviderForSheet:(id)sheet;
- (id)_elementWithRestorationInfo:(id)info options:(int *)options;
- (id)_restorationInfoForElement:(id)element;
- (id)_siblingOfElement:(id)element inDirection:(BOOL)direction didWrap:(BOOL *)wrap options:(int *)options;
- (id)arrayByShiftingItemsInArray:(id)array leftByNumberOfPositions:(unint64_t)positions;
- (id)elementForIndexInCurrentScanCycle:(int64_t)cycle;
- (id)exitActionElement;
- (id)firstElementWithOptions:(int *)options;
- (id)lastElementWithOptions:(int *)options;
- (id)numberOfItemsInCurrentScanCycle;
- (id)parentSheetOfSheet:(id)sheet;
- (id)updateAfterFetchWithCurrentlyScannedElement:(id)element options:(int *)options;
- (int64_t)indexOfElementInCurrentScanCycle:(id)cycle;
- (int64_t)tipObject;
- (int64_t)tipObjectForPresentingSheet:(id)sheet;
- (unsigned)currentDisplayID;
- (void)_cleanMenuStacks;
- (void)_handleAdjustValue:(BOOL)value;
- (void)_initializeMenuVisualProvider;
- (void)_notifyMenuObserversWithSelector:(SEL)selector;
- (void)_popToRootLevelSheet;
- (void)_prepareMenuForScanning;
- (void)_prepareMenuForScanningIfNeeded;
- (void)_presentWithElement:(id)element pointPicker:(id)picker useMenuTip:(BOOL)tip sheetToShow:(id)show;
- (void)_slideToPositionWithMode:(unint64_t)mode positionIndex:(int64_t)index;
- (void)_updateFallbackScrollAncestorsForElement:(id)element;
- (void)_updateForGeometryChange;
- (void)_updateOptionsIfNeeded:(int *)needed withResultElement:(id)element;
- (void)_updateWithElement:(id)element forceUpdate:(BOOL)update;
- (void)alertDidAppear:(id)appear;
- (void)appTransitionDidOccur:(id)occur;
- (void)didPressScreenChangingButton;
- (void)didTransitionToSheet:(id)sheet;
- (void)driver:(id)driver didFocusOnContext:(id)context oldContext:(id)oldContext;
- (void)driver:(id)driver willFocusOnContext:(id)context;
- (void)driver:(id)driver willUnfocusFromContext:(id)context;
- (void)hideWithCompletion:(id)completion;
- (void)orientationDidChange:(id)change;
- (void)presentAutoscrollMenu;
- (void)presentSiriShortcutsMenu;
- (void)presentWithPointPicker:(id)picker;
- (void)presentWithRootLevelSheet:(id)sheet useCurrentElementAndPoint:(BOOL)point;
- (void)pushSheet:(id)sheet;
- (void)registerMenuObserver:(id)observer;
- (void)reloadFromCurrentSheet;
- (void)setElement:(id)element;
- (void)transitionToMenuSheet:(id)sheet;
- (void)unregisterAllMenuObservers;
- (void)unregisterMenuObserver:(id)observer;
- (void)updateMenuVisualsForUpdatedElementVisuals;
- (void)willTransitionToSheet:(id)sheet;
@end

@implementation SCATMenu

- (SCATMenu)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = SCATMenu;
  v5 = [(SCATMenu *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(SCATMenu *)v5 setDelegate:delegateCopy];
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

- (void)setElement:(id)element
{
  elementCopy = element;
  if (self->_element != elementCopy)
  {
    v11 = elementCopy;
    objc_storeStrong(&self->_element, element);
    if (([(SCATElement *)v11 scatIsKeyboardKey]& 1) != 0 || ([(SCATElement *)v11 keyboardContainer], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      v7 = +[HNDAccessibilityManager sharedManager];
      firstResponder = [v7 firstResponder];
    }

    else if ([(SCATElement *)v11 scatIsAXElement])
    {
      firstResponder = v11;
    }

    else
    {
      firstResponder = 0;
    }

    textOperations = [(SCATElement *)firstResponder textOperations];
    traits = [(SCATElement *)firstResponder traits];
    if ((kAXIsEditingTrait & traits) == 0 && ([textOperations containsObject:kAXTextOperationActionCopy] & 1) == 0 && (objc_msgSend(textOperations, "containsObject:", kAXTextOperationActionPaste) & 1) == 0 && (objc_msgSend(textOperations, "containsObject:", kAXTextOperationActionCut) & 1) == 0 && (objc_msgSend(textOperations, "containsObject:", kAXTextOperationActionSelectAll) & 1) == 0)
    {

      firstResponder = 0;
    }

    [(SCATMenu *)self setTextElement:firstResponder];

    elementCopy = v11;
  }
}

- (unsigned)currentDisplayID
{
  element = [(SCATMenu *)self element];

  if (!element || (-[SCATMenu element](self, "element"), v4 = objc_claimAutoreleasedReturnValue(), currentDisplayID = [v4 scatDisplayId], v4, !currentDisplayID))
  {
    pointPicker = [(SCATMenu *)self pointPicker];
    currentDisplayID = [pointPicker currentDisplayID];
  }

  if (currentDisplayID <= 1)
  {
    return 1;
  }

  else
  {
    return currentDisplayID;
  }
}

- (AXElement)keyboardApplication
{
  textElement = [(SCATMenu *)self textElement];
  if (!textElement)
  {
    v3 = +[HNDAccessibilityManager sharedManager];
    textElement = [v3 lastKeyboardElement];
  }

  if ([textElement scatIsAXElement])
  {
    application = [textElement application];
  }

  else
  {
    application = 0;
  }

  return application;
}

- (BOOL)isVisible
{
  menuVisualProvider = [(SCATMenu *)self menuVisualProvider];
  isVisible = [menuVisualProvider isVisible];

  return isVisible;
}

- (BOOL)isGroupingEnabled
{
  v2 = +[AXSettings sharedInstance];
  assistiveTouchGroupElementsEnabled = [v2 assistiveTouchGroupElementsEnabled];

  return assistiveTouchGroupElementsEnabled;
}

- (int64_t)tipObject
{
  menuVisualProvider = [(SCATMenu *)self menuVisualProvider];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  menuVisualProvider2 = [(SCATMenu *)self menuVisualProvider];
  tipObject = [menuVisualProvider2 tipObject];

  return tipObject;
}

- (BOOL)shouldHideMenuCursor
{
  currentSheet = [(SCATMenu *)self currentSheet];
  v3 = [currentSheet preferredTipObject] == 1 || objc_msgSend(currentSheet, "presentationMode") == 1 && objc_msgSend(currentSheet, "preferredTipObject") != 2;

  return v3;
}

- (int64_t)tipObjectForPresentingSheet:(id)sheet
{
  sheetCopy = sheet;
  if (!-[SCATMenu wasPresentedWithTip](self, "wasPresentedWithTip") || [sheetCopy presentationMode] || -[SCATMenu popoverPosition](self, "popoverPosition"))
  {
    v5 = 0;
  }

  else
  {
    preferredTipObject = [sheetCopy preferredTipObject];
    if (!preferredTipObject)
    {
      rootSheet = [(SCATMenu *)self rootSheet];
      preferredTipObject = [rootSheet preferredTipObject];
      if (!preferredTipObject)
      {
        v12 = @"Menu was presented with a tip, but its root sheet had no tip.  This may be an error.  Root sheet: %@";
        v13 = rootSheet;
        LOBYTE(v11) = 1;
        _AXLogWithFacility();
        preferredTipObject = 2;
      }
    }

    v9 = [(SCATMenu *)self element:v11];

    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = preferredTipObject == 2;
    }

    if (v10)
    {
      v5 = 1;
    }

    else
    {
      v5 = preferredTipObject;
    }
  }

  return v5;
}

- (void)presentWithPointPicker:(id)picker
{
  pickerCopy = picker;
  [pickerCopy pickedPointInDeviceCoordinates];
  v6 = v5;
  v8 = v7;
  currentDisplayID = [pickerCopy currentDisplayID];
  v10 = +[HNDAccessibilityManager sharedManager];
  v12 = [v10 elementAtPoint:currentDisplayID displayID:{v6, v8}];

  [(SCATMenu *)self setPointPicker:pickerCopy];
  v11 = [NSValue valueWithPoint:v6, v8];
  [(SCATMenu *)self setScreenPoint:v11];

  [(SCATMenu *)self _presentWithElement:v12 pointPicker:pickerCopy useMenuTip:1 sheetToShow:0];
}

- (void)presentWithRootLevelSheet:(id)sheet useCurrentElementAndPoint:(BOOL)point
{
  sheetCopy = sheet;
  if (point)
  {
    element = [(SCATMenu *)self element];
    pointPicker = [(SCATMenu *)self pointPicker];
    [(SCATMenu *)self _presentWithElement:element pointPicker:pointPicker useMenuTip:0 sheetToShow:sheetCopy];

    v8 = element;
  }

  else
  {
    [(SCATMenu *)self _presentWithElement:0 pointPicker:0 useMenuTip:0 sheetToShow:sheetCopy];
    v8 = sheetCopy;
  }
}

- (void)presentSiriShortcutsMenu
{
  if (sub_1000424F4())
  {
    v3 = +[AXSiriShortcutsManager sharedManager];
    shortcuts = [v3 shortcuts];
    v5 = [shortcuts count];

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

- (void)_presentWithElement:(id)element pointPicker:(id)picker useMenuTip:(BOOL)tip sheetToShow:(id)show
{
  tipCopy = tip;
  pickerCopy = picker;
  showCopy = show;
  elementCopy = element;
  [(SCATMenu *)self setElement:elementCopy];
  [(SCATMenu *)self setPointPicker:pickerCopy];
  [(SCATMenu *)self setWillScanFirstElementAfterPresentation:1];
  screenPoint = [(SCATMenu *)self screenPoint];
  if (!screenPoint)
  {
    element = [(SCATMenu *)self element];

    if (!element)
    {
      goto LABEL_5;
    }

    screenPoint = [(SCATMenu *)self element];
    [screenPoint scatScreenPointForOperations];
    v15 = [NSValue valueWithCGPoint:?];
    [(SCATMenu *)self setScreenPoint:v15];
  }

LABEL_5:
  [(SCATMenu *)self _notifyMenuObserversWithSelector:"menuWillAppear:"];
  [(SCATMenu *)self setDockPosition:0];
  [(SCATMenu *)self setPopoverPosition:0];
  if (tipCopy)
  {
    element2 = [(SCATMenu *)self element];
    if (element2)
    {
      [(SCATMenu *)self setWasPresentedWithTip:1];
    }

    else
    {
      screenPoint2 = [(SCATMenu *)self screenPoint];
      [(SCATMenu *)self setWasPresentedWithTip:screenPoint2 != 0];
    }

    if (!showCopy)
    {
      goto LABEL_12;
    }
  }

  else
  {
    [(SCATMenu *)self setWasPresentedWithTip:0];
    if (!showCopy)
    {
LABEL_12:
      showCopy = [(SCATModernMenuSheet *)[SCATModernMenuActionsSheet alloc] initWithMenu:self];
    }
  }

  [(SCATMenu *)self _updateFallbackScrollAncestorsForElement:elementCopy];
  [(SCATMenu *)self setCurrentSheet:0];
  v18 = [NSMutableArray arrayWithObject:showCopy];
  [(SCATMenu *)self setMenuSheetStack:v18];

  [(SCATMenu *)self transitionToMenuSheet:showCopy];
  menuVisualProvider = [(SCATMenu *)self menuVisualProvider];
  [menuVisualProvider willBePresentedWithElement:elementCopy pointPicker:pickerCopy sheetToShow:showCopy];

  AXPerformBlockAsynchronouslyOnMainThread();
  [(SCATMenu *)self setDidActivateElement:0];
}

- (void)hideWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(SCATMenu *)self isVisible])
  {
    [(SCATMenu *)self _notifyMenuObserversWithSelector:"menuWillDisappear:"];
    currentSheet = [(SCATMenu *)self currentSheet];
    [currentSheet menuWillDisappear];

    menuVisualProvider = [(SCATMenu *)self menuVisualProvider];
    [menuVisualProvider hide];

    [(SCATMenu *)self _flushScannableMenuElements];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }

    if (![(SCATMenu *)self shouldNotResetPointPickerRefinement])
    {
      pointPicker = [(SCATMenu *)self pointPicker];
      [pointPicker resetRefinedSelectedPoint];
    }

    [(SCATMenu *)self setShouldNotResetPointPickerRefinement:0];
    [(SCATMenu *)self setScreenPoint:0];
    [(SCATMenu *)self setPointPicker:0];
    menuVisualProvider2 = [(SCATMenu *)self menuVisualProvider];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      menuVisualProvider3 = [(SCATMenu *)self menuVisualProvider];
      [menuVisualProvider3 setTipObject:0];
    }

    [(SCATMenu *)self _cleanMenuStacks];
    [(SCATMenu *)self _notifyMenuObserversWithSelector:"menuDidDisappear:"];
  }
}

- (BOOL)_isCurrentSheetValidForElement:(id)element
{
  elementCopy = element;
  currentSheet = [(SCATMenu *)self currentSheet];
  v6 = [objc_opt_class() isValidForElement:elementCopy];

  return v6;
}

- (id)updateAfterFetchWithCurrentlyScannedElement:(id)element options:(int *)options
{
  elementCopy = element;
  element = [(SCATMenu *)self element];

  if (!element)
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
  firstObject = [v9 firstObject];

  if (!firstObject)
  {
    if ([(SCATMenu *)self isGroupingEnabled])
    {
      firstScannerGroupable = [v8 firstScannerGroupable];
      if ([firstScannerGroupable isGroup])
      {
        firstLeafDescendant = [firstScannerGroupable firstLeafDescendant];
      }

      else
      {
        firstLeafDescendant = firstScannerGroupable;
      }

      firstObject = firstLeafDescendant;

      if (!elementCopy)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }

    firstObject = [v8 firstScannerElement];
  }

  if (!elementCopy)
  {
LABEL_13:
    [(SCATMenu *)self _updateWithElement:firstObject forceUpdate:0];
    goto LABEL_14;
  }

LABEL_9:
  v14 = [(SCATMenu *)self _restorationInfoForElement:elementCopy];
  [(SCATMenu *)self _updateWithElement:firstObject forceUpdate:0];
  if (!v14)
  {
LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v13 = [(SCATMenu *)self _elementWithRestorationInfo:v14 options:options];

LABEL_15:
LABEL_16:

  return v13;
}

- (void)_updateWithElement:(id)element forceUpdate:(BOOL)update
{
  elementCopy = element;
  element = [(SCATMenu *)self element];
  v8 = [element isEqual:elementCopy];

  if (update || !v8)
  {
    [(SCATMenu *)self setElement:elementCopy];
    if ((v8 & 1) == 0)
    {
      if ([(SCATMenu *)self _isCurrentSheetValidForElement:elementCopy])
      {
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        menuSheetStack = [(SCATMenu *)self menuSheetStack];
        v10 = [menuSheetStack countByEnumeratingWithState:&v14 objects:v18 count:16];
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
                objc_enumerationMutation(menuSheetStack);
              }

              [*(*(&v14 + 1) + 8 * v13) reload];
              v13 = v13 + 1;
            }

            while (v11 != v13);
            v11 = [menuSheetStack countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)_updateFallbackScrollAncestorsForElement:(id)element
{
  elementCopy = element;
  delegate = [(SCATMenu *)self delegate];
  v5 = [delegate shouldShowAppWideScrollActionsInMenu:self];

  if ((v5 & 1) == 0)
  {
    scrollableElement = [elementCopy scrollableElement];
    v7 = +[AXUIElement uiElementWithAXElement:cache:](AXUIElement, "uiElementWithAXElement:cache:", [scrollableElement scrollAncestorForScrollAction:2006], 0);
    [(SCATMenu *)self setFallbackScrollDownAncestor:v7];

    v8 = +[AXUIElement uiElementWithAXElement:cache:](AXUIElement, "uiElementWithAXElement:cache:", [scrollableElement scrollAncestorForScrollAction:2007], 0);
    [(SCATMenu *)self setFallbackScrollUpAncestor:v8];

    v9 = +[AXUIElement uiElementWithAXElement:cache:](AXUIElement, "uiElementWithAXElement:cache:", [scrollableElement scrollAncestorForScrollAction:2008], 0);
    [(SCATMenu *)self setFallbackScrollLeftAncestor:v9];

    v10 = +[AXUIElement uiElementWithAXElement:cache:](AXUIElement, "uiElementWithAXElement:cache:", [scrollableElement scrollAncestorForScrollAction:2009], 0);
    [(SCATMenu *)self setFallbackScrollRightAncestor:v10];
  }
}

- (id)_restorationInfoForElement:(id)element
{
  elementCopy = element;
  v5 = +[NSMutableDictionary dictionary];
  element = [(SCATMenu *)self element];

  if (element == elementCopy)
  {
    [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:@"IsMenuElement"];
    goto LABEL_13;
  }

  if ([elementCopy isGroup])
  {
    elementProvider = [(SCATMenu *)self elementProvider];
    elementProviders = [elementProvider elementProviders];
    firstObject = [elementProviders firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      elementProvider2 = [(SCATMenu *)self elementProvider];
      elementProviders2 = [elementProvider2 elementProviders];
      firstObject2 = [elementProviders2 firstObject];

      v14 = [firstObject2 indexOfObject:elementCopy];
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        identifier = [NSNumber numberWithUnsignedInteger:v14];
        v16 = @"MenuRowIndex";
LABEL_9:
        [v5 setObject:identifier forKeyedSubscript:v16];

LABEL_12:
        goto LABEL_13;
      }
    }

    else
    {
      firstObject2 = 0;
    }

    _AXAssert();
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject2 = [elementCopy menuItem];
    identifier = [firstObject2 identifier];
    v16 = @"MenuItemIdentifier";
    goto LABEL_9;
  }

  menuVisualProvider = [(SCATMenu *)self menuVisualProvider];
  v19 = [menuVisualProvider isElementTopLevelInMenu:elementCopy];

  if ((v19 & 1) == 0)
  {
    _AXAssert();
  }

LABEL_13:

  return v5;
}

- (id)_elementWithRestorationInfo:(id)info options:(int *)options
{
  infoCopy = info;
  [(SCATMenu *)self _prepareMenuForScanningIfNeeded];
  v7 = [infoCopy objectForKeyedSubscript:@"IsMenuElement"];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    element = [(SCATMenu *)self element];
  }

  else
  {
    v10 = [infoCopy objectForKeyedSubscript:@"MenuRowIndex"];

    if (v10)
    {
      elementProvider = [(SCATMenu *)self elementProvider];
      elementProviders = [elementProvider elementProviders];
      firstObject = [elementProviders firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        elementProvider2 = [(SCATMenu *)self elementProvider];
        elementProviders2 = [elementProvider2 elementProviders];
        firstObject2 = [elementProviders2 firstObject];
      }

      else
      {
        firstObject2 = 0;
      }

      v28 = [firstObject2 count];
      v29 = [infoCopy objectForKeyedSubscript:@"MenuRowIndex"];
      unsignedIntegerValue = [v29 unsignedIntegerValue];

      if (unsignedIntegerValue >= v28)
      {
        v34 = unsignedIntegerValue;
        v35 = firstObject2;
        v33 = @"We tried to restore a row %lu that was not in our list of menu rows: %@";
        LOBYTE(v32) = 1;
        _AXLogWithFacility();
        element = 0;
      }

      else
      {
        element = [firstObject2 objectAtIndexedSubscript:unsignedIntegerValue];
      }
    }

    else
    {
      v18 = [infoCopy objectForKeyedSubscript:@"MenuItemIdentifier"];

      if (v18)
      {
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        currentSheet = [(SCATMenu *)self currentSheet];
        menuItems = [currentSheet menuItems];

        v21 = [menuItems countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v21)
        {
          selfCopy = self;
          optionsCopy = options;
          v22 = *v39;
          while (2)
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v39 != v22)
              {
                objc_enumerationMutation(menuItems);
              }

              v24 = *(*(&v38 + 1) + 8 * i);
              identifier = [v24 identifier];
              v26 = [infoCopy objectForKeyedSubscript:@"MenuItemIdentifier"];
              v27 = [identifier isEqualToString:v26];

              if (v27)
              {
                v21 = v24;
                goto LABEL_22;
              }
            }

            v21 = [menuItems countByEnumeratingWithState:&v38 objects:v42 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }

LABEL_22:
          self = selfCopy;
          options = optionsCopy;
        }

        element = [v21 scatElement];
      }

      else
      {
        element = 0;
      }
    }
  }

  [(SCATMenu *)self _updateOptionsIfNeeded:options withResultElement:element, v32, v33, v34, v35];

  return element;
}

- (void)transitionToMenuSheet:(id)sheet
{
  sheetCopy = sheet;
  currentSheet = [(SCATMenu *)self currentSheet];
  [(SCATMenu *)self setCurrentSheet:sheetCopy];
  menuVisualProvider = [(SCATMenu *)self menuVisualProvider];
  [menuVisualProvider transitionToMenuSheet:sheetCopy fromSheet:currentSheet];
}

- (SCATModernMenuSheet)rootSheet
{
  menuSheetStack = [(SCATMenu *)self menuSheetStack];
  firstObject = [menuSheetStack firstObject];

  return firstObject;
}

- (void)pushSheet:(id)sheet
{
  sheetCopy = sheet;
  if (sheetCopy)
  {
    v7 = sheetCopy;
    currentSheet = [(SCATMenu *)self currentSheet];

    sheetCopy = v7;
    if (currentSheet != v7)
    {
      if ([v7 allowsBackAction])
      {
        [v7 setShouldIncludeBackItem:1];
      }

      [(SCATMenu *)self transitionToMenuSheet:v7];
      menuSheetStack = [(SCATMenu *)self menuSheetStack];
      [menuSheetStack addObject:v7];

      sheetCopy = v7;
    }
  }
}

- (BOOL)popSheet
{
  _canPopSheet = [(SCATMenu *)self _canPopSheet];
  if (_canPopSheet)
  {
    currentSheet = [(SCATMenu *)self currentSheet];
    v5 = [(SCATMenu *)self parentSheetOfSheet:currentSheet];
    [(SCATMenu *)self transitionToMenuSheet:v5];
    [currentSheet setShouldIncludeBackItem:0];
    menuSheetStack = [(SCATMenu *)self menuSheetStack];
    [menuSheetStack removeObject:currentSheet];
  }

  return _canPopSheet;
}

- (void)_popToRootLevelSheet
{
  menuSheetStack = [(SCATMenu *)self menuSheetStack];
  if ([menuSheetStack count])
  {
    currentSheet = [(SCATMenu *)self currentSheet];
    v4 = [menuSheetStack objectAtIndex:0];
    if (([v4 isEqual:currentSheet] & 1) == 0)
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

- (id)parentSheetOfSheet:(id)sheet
{
  sheetCopy = sheet;
  menuSheetStack = [(SCATMenu *)self menuSheetStack];
  v6 = [menuSheetStack indexOfObject:sheetCopy];

  v7 = 0;
  if (v6 && v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [menuSheetStack objectAtIndex:v6 - 1];
  }

  return v7;
}

- (BOOL)containsGestureSheet
{
  v3 = objc_opt_class();

  return [(SCATMenu *)self containsSheet:v3];
}

- (BOOL)containsSheet:(Class)sheet
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
  menuSheetStack = [(SCATMenu *)self menuSheetStack];
  v4 = [menuSheetStack ax_filteredArrayUsingBlock:&stru_1001D61F8];
  firstObject = [v4 firstObject];
  v6 = __UIAccessibilityCastAsClass();

  return v6;
}

- (BOOL)_canPopSheet
{
  menuSheetStack = [(SCATMenu *)self menuSheetStack];
  v3 = [menuSheetStack count] > 1;

  return v3;
}

- (void)willTransitionToSheet:(id)sheet
{
  [(SCATMenu *)self setTransitioning:1];
  [(SCATMenu *)self _flushScannableMenuElements];

  [(SCATMenu *)self _notifyMenuObserversWithSelector:"menuWillBeginTransition:"];
}

- (void)didTransitionToSheet:(id)sheet
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
  menuVisualProvider = [(SCATMenu *)self menuVisualProvider];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    menuVisualProvider2 = [(SCATMenu *)self menuVisualProvider];
    [menuVisualProvider2 updateForGeometryChange];
  }
}

- (void)_slideToPositionWithMode:(unint64_t)mode positionIndex:(int64_t)index
{
  if (mode)
  {
    [(SCATMenu *)self setDockPosition:index];
  }

  else
  {
    [(SCATMenu *)self setPopoverPosition:index];
  }

  [(SCATMenu *)self _updateForGeometryChange];
}

- (id)exitActionElement
{
  currentSheet = [(SCATMenu *)self currentSheet];
  if ([currentSheet allowsExitAction])
  {
    menuVisualProvider = [(SCATMenu *)self menuVisualProvider];
    exitActionElement = [menuVisualProvider exitActionElement];
    v6 = exitActionElement;
    if (exitActionElement)
    {
      element = exitActionElement;
    }

    else
    {
      element = [(SCATMenu *)self element];
    }

    v8 = element;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateMenuVisualsForUpdatedElementVisuals
{
  element = [(SCATMenu *)self element];
  [(SCATMenu *)self _updateWithElement:element forceUpdate:1];
}

- (void)_handleAdjustValue:(BOOL)value
{
  valueCopy = value;
  element = [(SCATMenu *)self element];
  if ([element scatIsAXElement])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    currentSheet = [(SCATMenu *)self currentSheet];
    menuItems = [currentSheet menuItems];

    v8 = [menuItems countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      selfCopy = self;
      v27 = element;
      v10 = *v33;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(menuItems);
        }

        v12 = *(*(&v32 + 1) + 8 * v11);
        identifier = [v12 identifier];
        v14 = identifier;
        v15 = valueCopy ? @"action_increment" : @"action_decrement";
        v16 = [identifier isEqual:v15];

        if (v16)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [menuItems countByEnumeratingWithState:&v32 objects:v36 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          v17 = menuItems;
          element = v27;
          goto LABEL_28;
        }
      }

      v17 = v12;

      element = v27;
      if (!v17)
      {
        goto LABEL_29;
      }

      [v17 setShouldSuppressAudioOutput:1];
      [v27 scatUpdateValue];
      scatValue = [v27 scatValue];
      if (valueCopy)
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
        scatValue2 = [v27 scatValue];

        v21 = scatValue2;
        if (([scatValue isEqualToString:scatValue2] & 1) == 0)
        {
          delegate = [(SCATMenu *)selfCopy delegate];
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_10009E5A8;
          v30[3] = &unk_1001D3750;
          v31 = v17;
          [delegate menu:selfCopy speakAnnouncement:scatValue2 completionBlock:v30];

          v21 = scatValue2;
          goto LABEL_27;
        }
      }

      if (v21 && [scatValue isEqualToString:v21])
      {
        delegate2 = [(SCATMenu *)selfCopy delegate];
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_10009E5B4;
        v28[3] = &unk_1001D3750;
        v29 = v17;
        [delegate2 menu:selfCopy speakAnnouncement:v21 completionBlock:v28];

        delegate3 = [(SCATMenu *)selfCopy delegate];
        [delegate3 menu:selfCopy playSoundEffect:1004];
      }

      [v17 setShouldSuppressAudioOutput:0];
LABEL_27:
    }

    else
    {
      v17 = menuItems;
    }

LABEL_28:
  }

LABEL_29:
}

- (void)registerMenuObserver:(id)observer
{
  observerCopy = observer;
  menuObservers = [(SCATMenu *)self menuObservers];
  [menuObservers addObject:observerCopy];
}

- (void)unregisterMenuObserver:(id)observer
{
  observerCopy = observer;
  menuObservers = [(SCATMenu *)self menuObservers];
  [menuObservers removeObject:observerCopy];
}

- (void)unregisterAllMenuObservers
{
  menuObservers = [(SCATMenu *)self menuObservers];
  [menuObservers removeAllObjects];
}

- (void)_notifyMenuObserversWithSelector:(SEL)selector
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  menuObservers = [(SCATMenu *)self menuObservers];
  allObjects = [menuObservers allObjects];

  v7 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 performSelector:selector withObject:self];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_updateOptionsIfNeeded:(int *)needed withResultElement:(id)element
{
  elementCopy = element;
  if (needed)
  {
    element = [(SCATMenu *)self element];

    v7 = elementCopy;
    if (element == elementCopy)
    {
      *needed |= 5u;
    }
  }

  else
  {
    _AXAssert();
    v7 = elementCopy;
  }
}

- (id)firstElementWithOptions:(int *)options
{
  [(SCATMenu *)self _prepareMenuForScanningIfNeeded];
  elementProvider = [(SCATMenu *)self elementProvider];
  v6 = [elementProvider firstElementWithOptions:options];

  [(SCATMenu *)self _updateOptionsIfNeeded:options withResultElement:v6];

  return v6;
}

- (id)lastElementWithOptions:(int *)options
{
  [(SCATMenu *)self _prepareMenuForScanningIfNeeded];
  elementProvider = [(SCATMenu *)self elementProvider];
  v6 = [elementProvider lastElementWithOptions:options];

  [(SCATMenu *)self _updateOptionsIfNeeded:options withResultElement:v6];

  return v6;
}

- (id)_siblingOfElement:(id)element inDirection:(BOOL)direction didWrap:(BOOL *)wrap options:(int *)options
{
  directionCopy = direction;
  elementCopy = element;
  [(SCATMenu *)self _prepareMenuForScanningIfNeeded];
  if ([(SCATMenu *)self isTransitioning])
  {
    v11 = 0;
  }

  else
  {
    element = [(SCATMenu *)self element];

    if (element == elementCopy)
    {
      v20 = [(SCATMenu *)self firstElementWithOptions:options];
      v11 = v20;
      if (!directionCopy)
      {
        parentGroup = [v20 parentGroup];
        if (parentGroup && (v22 = parentGroup, v23 = [(SCATMenu *)self isGroupingEnabled], v22, v23))
        {
          parentGroup2 = [v11 parentGroup];
          v25 = [parentGroup2 previousSiblingOfChild:v11 didWrap:wrap];
        }

        else
        {
          parentGroup2 = [(SCATMenu *)self elementProvider];
          v25 = [parentGroup2 elementBefore:elementCopy didWrap:wrap options:options];
        }

        v26 = v25;

        v11 = v26;
      }

      *wrap = 1;
    }

    else
    {
      parentGroup3 = [elementCopy parentGroup];
      if (parentGroup3 && (v14 = parentGroup3, v15 = [(SCATMenu *)self isGroupingEnabled], v14, v15))
      {
        parentGroup4 = [elementCopy parentGroup];
        v17 = parentGroup4;
        if (directionCopy)
        {
          [parentGroup4 nextSiblingOfChild:elementCopy didWrap:wrap];
        }

        else
        {
          [parentGroup4 previousSiblingOfChild:elementCopy didWrap:wrap];
        }
      }

      else
      {
        elementProvider = [(SCATMenu *)self elementProvider];
        v17 = elementProvider;
        if (directionCopy)
        {
          [elementProvider elementAfter:elementCopy didWrap:wrap options:options];
        }

        else
        {
          [elementProvider elementBefore:elementCopy didWrap:wrap options:options];
        }
      }
      v18 = ;
      v11 = v18;
    }

    [(SCATMenu *)self _updateOptionsIfNeeded:options withResultElement:v11];
  }

  return v11;
}

- (id)numberOfItemsInCurrentScanCycle
{
  if ([(SCATMenu *)self isGroupingEnabled])
  {
    currentFocusContext = [(SCATMenu *)self currentFocusContext];
    element = [currentFocusContext element];
    if ([element scatIsMemberOfGroup])
    {
      v5 = 1;
    }

    else
    {
      currentFocusContext2 = [(SCATMenu *)self currentFocusContext];
      v5 = [currentFocusContext2 selectBehavior] == 4;
    }
  }

  else
  {
    v5 = 0;
  }

  elementProvider = [(SCATMenu *)self elementProvider];
  elementProviders = [elementProvider elementProviders];

  if (!v5)
  {
    goto LABEL_13;
  }

  currentFocusContext3 = [(SCATMenu *)self currentFocusContext];
  menuElement = [currentFocusContext3 menuElement];
  currentFocusContext4 = [(SCATMenu *)self currentFocusContext];
  element2 = [currentFocusContext4 element];

  if (menuElement == element2)
  {
    goto LABEL_13;
  }

  currentFocusContext5 = [(SCATMenu *)self currentFocusContext];
  selectBehavior = [currentFocusContext5 selectBehavior];
  currentFocusContext6 = [(SCATMenu *)self currentFocusContext];
  element3 = [currentFocusContext6 element];
  v17 = element3;
  if (selectBehavior != 4)
  {
    parentGroup = [element3 parentGroup];

    v17 = parentGroup;
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
    v20 = elementProviders;
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

- (int64_t)indexOfElementInCurrentScanCycle:(id)cycle
{
  cycleCopy = cycle;
  if (![(SCATMenu *)self isGroupingEnabled])
  {
    goto LABEL_8;
  }

  currentFocusContext = [(SCATMenu *)self currentFocusContext];
  element = [currentFocusContext element];
  if ([element scatIsMemberOfGroup])
  {

    goto LABEL_5;
  }

  currentFocusContext2 = [(SCATMenu *)self currentFocusContext];
  selectBehavior = [currentFocusContext2 selectBehavior];

  if (selectBehavior != 4)
  {
LABEL_8:
    elementProvider = [(SCATMenu *)self elementProvider];
    elementProviders = [elementProvider elementProviders];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    numberOfItemsInCurrentScanCycle = elementProviders;
    v14 = [numberOfItemsInCurrentScanCycle countByEnumeratingWithState:&v26 objects:v30 count:16];
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
            objc_enumerationMutation(numberOfItemsInCurrentScanCycle);
          }

          v19 = *(*(&v26 + 1) + 8 * i);
          if ([v19 indexOfObject:{cycleCopy, v26}] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v20 = [v19 indexOfObject:cycleCopy] + v16;

            goto LABEL_25;
          }

          v16 += [v19 count];
        }

        v15 = [numberOfItemsInCurrentScanCycle countByEnumeratingWithState:&v26 objects:v30 count:16];
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
  currentFocusContext3 = [(SCATMenu *)self currentFocusContext];
  element2 = [currentFocusContext3 element];
  if (element2 == cycleCopy)
  {
    currentFocusContext2 = [(SCATMenu *)self currentFocusContext];
    if ([currentFocusContext2 selectBehavior] == 4)
    {

LABEL_24:
      numberOfItemsInCurrentScanCycle = [(SCATMenu *)self numberOfItemsInCurrentScanCycle];
      v20 = [numberOfItemsInCurrentScanCycle integerValue] - 1;
      goto LABEL_25;
    }
  }

  currentFocusContext4 = [(SCATMenu *)self currentFocusContext];
  menuElement = [currentFocusContext4 menuElement];

  if (element2 == cycleCopy)
  {
  }

  if (menuElement == cycleCopy)
  {
    goto LABEL_24;
  }

  currentFocusContext5 = [(SCATMenu *)self currentFocusContext];
  element3 = [currentFocusContext5 element];
  numberOfItemsInCurrentScanCycle = [element3 parentGroup];

  if (numberOfItemsInCurrentScanCycle)
  {
    v20 = [numberOfItemsInCurrentScanCycle indexOfObject:cycleCopy];
LABEL_25:

    goto LABEL_26;
  }

LABEL_23:
  v20 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_26:

  return v20;
}

- (id)elementForIndexInCurrentScanCycle:(int64_t)cycle
{
  if (![(SCATMenu *)self isGroupingEnabled])
  {
    if ((cycle & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  currentFocusContext = [(SCATMenu *)self currentFocusContext];
  element = [currentFocusContext element];
  if (([element scatIsMemberOfGroup] & 1) == 0)
  {
    currentFocusContext2 = [(SCATMenu *)self currentFocusContext];
    selectBehavior = [currentFocusContext2 selectBehavior];

    if ((cycle & 0x8000000000000000) == 0)
    {
      if (selectBehavior == 4)
      {
        goto LABEL_17;
      }

LABEL_6:
      elementProvider = [(SCATMenu *)self elementProvider];
      elementProviders = [elementProvider elementProviders];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      parentGroup = elementProviders;
      v10 = [parentGroup countByEnumeratingWithState:&v21 objects:v25 count:16];
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
              objc_enumerationMutation(parentGroup);
            }

            v14 = *(*(&v21 + 1) + 8 * i);
            if (cycle < [v14 count])
            {
              v19 = [v14 objectAtIndexedSubscript:cycle];

              goto LABEL_22;
            }

            cycle -= [v14 count];
          }

          v11 = [parentGroup countByEnumeratingWithState:&v21 objects:v25 count:16];
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

  if (cycle < 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  currentFocusContext3 = [(SCATMenu *)self currentFocusContext];
  element2 = [currentFocusContext3 element];
  parentGroup = [element2 parentGroup];

  if ([parentGroup count] <= cycle)
  {
LABEL_19:

    goto LABEL_20;
  }

  v19 = [parentGroup objectAtIndexedSubscript:cycle];
LABEL_22:

LABEL_23:

  return v19;
}

- (BOOL)canBeActiveElementManager
{
  currentSheet = [(SCATMenu *)self currentSheet];
  if (([currentSheet delegatesScannerControl] & 1) != 0 || !-[SCATMenu isVisible](self, "isVisible"))
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
  currentSheet = [(SCATMenu *)self currentSheet];
  shouldKeepScannerAwake = [currentSheet shouldKeepScannerAwake];

  return shouldKeepScannerAwake;
}

- (BOOL)allowsDwellSelection
{
  currentSheet = [(SCATMenu *)self currentSheet];
  shouldAllowDwellSelection = [currentSheet shouldAllowDwellSelection];

  return shouldAllowDwellSelection;
}

- (void)driver:(id)driver willFocusOnContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = SCATMenu;
  [(SCATElementManager *)&v8 driver:driver willFocusOnContext:contextCopy];
  currentSheet = [(SCATMenu *)self currentSheet];
  [currentSheet willFocusOnContext:contextCopy];

  if ([(SCATMenu *)self willScanFirstElementAfterPresentation])
  {
    [(SCATMenu *)self setWillScanFirstElementAfterPresentation:0];
    [contextCopy setShouldPlayMenuSoundOnFocus:1];
  }
}

- (void)driver:(id)driver didFocusOnContext:(id)context oldContext:(id)oldContext
{
  v12.receiver = self;
  v12.super_class = SCATMenu;
  oldContextCopy = oldContext;
  contextCopy = context;
  [(SCATElementManager *)&v12 driver:driver didFocusOnContext:contextCopy oldContext:oldContextCopy];
  v10 = [(SCATMenu *)self currentSheet:v12.receiver];
  [v10 didFocusOnContext:contextCopy oldContext:oldContextCopy];

  menuVisualProvider = [(SCATMenu *)self menuVisualProvider];
  [menuVisualProvider didFocusOnContext:contextCopy oldContext:oldContextCopy];

  [(SCATMenu *)self setCurrentFocusContext:contextCopy];
}

- (void)driver:(id)driver willUnfocusFromContext:(id)context
{
  v9.receiver = self;
  v9.super_class = SCATMenu;
  contextCopy = context;
  [(SCATElementManager *)&v9 driver:driver willUnfocusFromContext:contextCopy];
  v7 = [(SCATMenu *)self currentSheet:v9.receiver];
  [v7 willUnfocusFromContext:contextCopy];

  menuVisualProvider = [(SCATMenu *)self menuVisualProvider];
  [menuVisualProvider willUnfocusFromContext:contextCopy];
}

- (void)orientationDidChange:(id)change
{
  element = [(SCATMenu *)self element];
  if (element)
  {
    v5 = element;
    v6 = +[HNDAccessibilityManager sharedManager];
    v7 = [v6 scannerElementMatchingElement:v5];

    if (v7)
    {
      [(SCATMenu *)self setElement:v7];
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      menuSheetStack = [(SCATMenu *)self menuSheetStack];
      v9 = [menuSheetStack countByEnumeratingWithState:&v14 objects:v18 count:16];
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
              objc_enumerationMutation(menuSheetStack);
            }

            [*(*(&v14 + 1) + 8 * i) didChangeOrientation];
          }

          v10 = [menuSheetStack countByEnumeratingWithState:&v14 objects:v18 count:16];
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
    screenPoint = [(SCATMenu *)self screenPoint];

    if (screenPoint)
    {

      [(SCATMenu *)self _updateForGeometryChange];
    }
  }
}

- (void)appTransitionDidOccur:(id)occur
{
  v4.receiver = self;
  v4.super_class = SCATMenu;
  [(SCATElementManager *)&v4 appTransitionDidOccur:occur];
  [(SCATMenu *)self hideWithCompletion:0];
}

- (void)alertDidAppear:(id)appear
{
  v4.receiver = self;
  v4.super_class = SCATMenu;
  [(SCATElementManager *)&v4 alertDidAppear:appear];
  [(SCATMenu *)self hideWithCompletion:0];
}

- (id)arrayByShiftingItemsInArray:(id)array leftByNumberOfPositions:(unint64_t)positions
{
  arrayCopy = array;
  v6 = [arrayCopy count];
  v7 = v6;
  if (v6 <= positions)
  {
    positionsCopy = positions;
    v15 = v6;
    _AXAssert();
  }

  v8 = [NSMutableArray arrayWithCapacity:v7, positionsCopy, v15];
  if (v7 > positions)
  {
    positionsCopy2 = positions;
    do
    {
      v10 = [arrayCopy objectAtIndex:positionsCopy2];
      [v8 addObject:v10];

      ++positionsCopy2;
    }

    while (v7 != positionsCopy2);
  }

  if (positions)
  {
    v11 = 0;
    do
    {
      v12 = [arrayCopy objectAtIndex:v11];
      [v8 addObject:v12];

      ++v11;
    }

    while (positions != v11);
  }

  return v8;
}

- (void)_prepareMenuForScanningIfNeeded
{
  elementProvider = [(SCATMenu *)self elementProvider];
  if (elementProvider)
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
  currentSheet = [(SCATMenu *)self currentSheet];
  v5 = [(SCATMenu *)self _elementProviderForSheet:currentSheet];
  if (v5)
  {
    [(SCATAggregateElementProvider *)v3 addProvider:v5];
  }

  menuVisualProvider = [(SCATMenu *)self menuVisualProvider];
  extraProviderElements = [menuVisualProvider extraProviderElements];

  if ([extraProviderElements count])
  {
    v8 = [(SCATAggregateElementProvider *)v3 addProviderWithElements:extraProviderElements passingTest:0];
  }

  exitActionElement = [(SCATMenu *)self exitActionElement];
  if (exitActionElement)
  {
    exitActionElement2 = [(SCATMenu *)self exitActionElement];
    v13 = exitActionElement2;
    v11 = [NSArray arrayWithObjects:&v13 count:1];
    v12 = [(SCATAggregateElementProvider *)v3 addProviderWithElements:v11 passingTest:0];
  }

  [(SCATMenu *)self setElementProvider:v3];
}

- (id)_elementProviderForSheet:(id)sheet
{
  sheetCopy = sheet;
  menuVisualProvider = [(SCATMenu *)self menuVisualProvider];
  v6 = [menuVisualProvider elementProviderForSheet:sheetCopy];

  return v6;
}

- (BOOL)_viewIsSuitableScannerElement:(id)element
{
  elementCopy = element;
  v4 = elementCopy;
  if (elementCopy && ([elementCopy isHidden] & 1) == 0 && (objc_msgSend(v4, "alpha"), v5 >= 0.05))
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
  delegate = [(SCATMenu *)self delegate];
  [delegate didPressScreenChangingButtonInMenu:self];
}

- (SCATMenuDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end