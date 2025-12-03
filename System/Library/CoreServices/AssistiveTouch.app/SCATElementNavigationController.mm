@interface SCATElementNavigationController
- (BOOL)_didFocusLastOnKeyboardElement;
- (BOOL)_isKeyboardContainerElement:(id)element allowKeyboardContainerItself:(BOOL)itself;
- (BOOL)_isScanningKeyboardContainer:(id)container;
- (BOOL)_shouldTrackNativeFocusElement;
- (BOOL)isGroupingEnabled;
- (HNDAccessibilityManagerProtocol)axManager;
- (SCATElementNavigationController)init;
- (SCATElementNavigationControllerDelegate)delegate;
- (id)_firstKeyboardFocusContext;
- (id)_indexPathForKeyboardElement:(id)element;
- (id)_keyboardElementForIndexPath:(id)path;
- (id)_nativeFocusElementContext;
- (id)_replacementForLastFocusedKeyboardItem;
- (id)elementAfter:(id)after didWrap:(BOOL *)wrap options:(int *)options;
- (id)elementBefore:(id)before didWrap:(BOOL *)wrap options:(int *)options;
- (id)elementForIndexInCurrentScanCycle:(int64_t)cycle;
- (id)firstElementWithOptions:(int *)options;
- (id)focusContextAfterDrillOutOnGroup:(id)group;
- (id)lastElementWithOptions:(int *)options;
- (id)nextFocusContextAfterActivatingKeyboardElement:(id)element;
- (id)nextFocusContextAfterDismissingMenuForElement:(id)element;
- (id)numberOfItemsInCurrentScanCycle;
- (int64_t)indexOfElementInCurrentScanCycle:(id)cycle;
- (unint64_t)_depthForElement:(id)element;
- (void)_attemptToRestoreFocusContext:(id)context scannerManager:(id)manager foundNewElements:(BOOL)elements;
- (void)_giveUpWaitingForFetchAfterPause;
- (void)_menuOpeningElementActivated:(id)activated;
- (void)_pauseScanningForLikelyScreenChange;
- (void)_pauseScanningTemporarily;
- (void)_resetFetchFlags;
- (void)_trackLastFocusedKeyboardItem:(id)item;
- (void)_trackLastScannedElementCommunityFromFocusContext:(id)context;
- (void)_updateMenuOpeningElementEnabledWithFocusContext:(id)context;
- (void)_updateVisualScrollersWithFocusContext:(id)context oldContext:(id)oldContext;
- (void)alertDidAppear:(id)appear;
- (void)appTransitionDidOccur:(id)occur;
- (void)didFetchElements:(id)elements foundNewElements:(BOOL)newElements currentFocusContext:(id)context didChangeActiveElementManager:(BOOL)manager;
- (void)driver:(id)driver didFocusOnContext:(id)context oldContext:(id)oldContext;
- (void)driver:(id)driver willUnfocusFromContext:(id)context;
- (void)firstResponderDidChange:(id)change;
- (void)orientationDidChange:(id)change;
- (void)scannerManager:(id)manager didActivateElement:(id)element;
- (void)scannerWillMakeManagerInactive:(id)inactive activeElementManager:(id)manager;
- (void)screenChangingButtonWasPressed:(id)pressed;
- (void)screenDidChange:(id)change data:(id)data;
- (void)setGroupVisualScrollersEnabled:(BOOL)enabled;
- (void)setMenuOpeningElementEnabled:(BOOL)enabled;
- (void)setTopLevelVisualScrollersEnabled:(BOOL)enabled;
@end

@implementation SCATElementNavigationController

- (SCATElementNavigationController)init
{
  v5.receiver = self;
  v5.super_class = SCATElementNavigationController;
  v2 = [(SCATElementNavigationController *)&v5 init];
  if (v2)
  {
    v3 = +[HNDAccessibilityManager sharedManager];
    [(SCATElementNavigationController *)v2 setAxManager:v3];
  }

  return v2;
}

- (BOOL)isGroupingEnabled
{
  v2 = +[AXSettings sharedInstance];
  assistiveTouchGroupElementsEnabled = [v2 assistiveTouchGroupElementsEnabled];

  return assistiveTouchGroupElementsEnabled;
}

- (HNDAccessibilityManagerProtocol)axManager
{
  v2 = objc_opt_class();

  return [v2 sharedManager];
}

- (void)_menuOpeningElementActivated:(id)activated
{
  delegate = [(SCATElementNavigationController *)self delegate];
  [delegate presentPostScanningMenuForElementNavigationController:self];
}

- (void)setMenuOpeningElementEnabled:(BOOL)enabled
{
  if (self->_menuOpeningElementEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_menuOpeningElementEnabled = enabled;
    menuOpeningAuxElementManager = [(SCATElementNavigationController *)self menuOpeningAuxElementManager];

    if (!menuOpeningAuxElementManager)
    {
      v7 = objc_opt_new();
      [(SCATElementNavigationController *)self setMenuOpeningAuxElementManager:v7];
      [(SCATElementManager *)self appendAuxiliaryElementManager:v7 withRole:1];
      menuOpeningElement = [v7 menuOpeningElement];
      [menuOpeningElement addTarget:self action:"_menuOpeningElementActivated:" forControlEvents:64];
    }

    menuOpeningAuxElementManager2 = [(SCATElementNavigationController *)self menuOpeningAuxElementManager];
    [menuOpeningAuxElementManager2 setEnabled:enabledCopy];
  }
}

- (void)setTopLevelVisualScrollersEnabled:(BOOL)enabled
{
  if (self->_topLevelVisualScrollersEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_topLevelVisualScrollersEnabled = enabled;
    topLevelVisualScrollersAuxElementManager = [(SCATElementNavigationController *)self topLevelVisualScrollersAuxElementManager];

    if (!topLevelVisualScrollersAuxElementManager)
    {
      v7 = [[SCATVisualScrollersAuxiliaryElementManager alloc] initWithMode:0];
      [(SCATElementNavigationController *)self setTopLevelVisualScrollersAuxElementManager:v7];
      [(SCATElementManager *)self appendAuxiliaryElementManager:v7 withRole:1];
    }

    topLevelVisualScrollersAuxElementManager2 = [(SCATElementNavigationController *)self topLevelVisualScrollersAuxElementManager];
    [topLevelVisualScrollersAuxElementManager2 setEnabled:enabledCopy];
  }
}

- (void)setGroupVisualScrollersEnabled:(BOOL)enabled
{
  if (self->_groupVisualScrollersEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_groupVisualScrollersEnabled = enabled;
    groupVisualScrollersAuxElementManager = [(SCATElementNavigationController *)self groupVisualScrollersAuxElementManager];

    if (!groupVisualScrollersAuxElementManager)
    {
      v7 = [[SCATVisualScrollersAuxiliaryElementManager alloc] initWithMode:1];
      [(SCATElementNavigationController *)self setGroupVisualScrollersAuxElementManager:v7];
      [(SCATElementManager *)self appendAuxiliaryElementManager:v7 withRole:2];
    }

    groupVisualScrollersAuxElementManager2 = [(SCATElementNavigationController *)self groupVisualScrollersAuxElementManager];
    [groupVisualScrollersAuxElementManager2 setEnabled:enabledCopy];
  }
}

- (id)firstElementWithOptions:(int *)options
{
  startingSceneIdentifier = [(SCATElementNavigationController *)self startingSceneIdentifier];
  v5 = [startingSceneIdentifier length];

  if (!v5 || (-[SCATElementNavigationController axManager](self, "axManager"), v6 = objc_claimAutoreleasedReturnValue(), -[SCATElementNavigationController startingSceneIdentifier](self, "startingSceneIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), [v6 firstElementInScene:v7], v8 = objc_claimAutoreleasedReturnValue(), v7, v6, -[SCATElementNavigationController setStartingSceneIdentifier:](self, "setStartingSceneIdentifier:", 0), !v8))
  {
    axManager = [(SCATElementNavigationController *)self axManager];
    lastScannedElementCommunity = [(SCATElementNavigationController *)self lastScannedElementCommunity];
    v8 = [axManager firstItemForScanningWithElementCommunity:lastScannedElementCommunity];
  }

  return v8;
}

- (id)lastElementWithOptions:(int *)options
{
  axManager = [(SCATElementNavigationController *)self axManager];
  lastScannedElementCommunity = [(SCATElementNavigationController *)self lastScannedElementCommunity];
  v6 = [axManager lastItemForScanningWithElementCommunity:lastScannedElementCommunity];

  return v6;
}

- (id)elementAfter:(id)after didWrap:(BOOL *)wrap options:(int *)options
{
  afterCopy = after;
  v22 = 0;
  scatIsAuxiliaryElement = [afterCopy scatIsAuxiliaryElement];
  if (scatIsAuxiliaryElement)
  {
    v9 = [(SCATElementManager *)self auxiliaryElementAfter:afterCopy];
    if (v9)
    {
      v10 = v9;
      goto LABEL_13;
    }

    scatAuxiliaryElementManager = [afterCopy scatAuxiliaryElementManager];
    contextElement = [scatAuxiliaryElementManager contextElement];

    if ([contextElement isGroup])
    {
      lastChild = [contextElement lastChild];
    }

    else
    {
      if (!contextElement)
      {
        axManager = [(SCATElementNavigationController *)self axManager];
        lastScannedElementCommunity = [(SCATElementNavigationController *)self lastScannedElementCommunity];
        v10 = [axManager firstItemForScanningWithElementCommunity:lastScannedElementCommunity];

        v22 = 1;
        if (v10)
        {
          goto LABEL_13;
        }

        goto LABEL_9;
      }

      lastChild = contextElement;
    }

    v14 = lastChild;

    afterCopy = v14;
  }

LABEL_9:
  axManager2 = [(SCATElementNavigationController *)self axManager];
  v10 = [axManager2 nextItemForScanningFromItem:afterCopy didWrap:&v22];

  if (!(scatIsAuxiliaryElement & 1 | !v22))
  {
    v16 = [(SCATElementManager *)self firstAuxiliaryElementWithRole:[(SCATElementManager *)self roleForElement:afterCopy]];
    v17 = v16;
    if (v16)
    {
      v18 = v16;

      v22 = 0;
      v10 = v18;
    }
  }

LABEL_13:
  if (wrap)
  {
    *wrap = v22;
  }

  return v10;
}

- (id)elementBefore:(id)before didWrap:(BOOL *)wrap options:(int *)options
{
  beforeCopy = before;
  v22 = 0;
  scatIsAuxiliaryElement = [beforeCopy scatIsAuxiliaryElement];
  if (scatIsAuxiliaryElement)
  {
    v9 = [(SCATElementManager *)self auxiliaryElementBefore:beforeCopy];
    if (v9)
    {
      v10 = v9;
      goto LABEL_13;
    }

    scatAuxiliaryElementManager = [beforeCopy scatAuxiliaryElementManager];
    contextElement = [scatAuxiliaryElementManager contextElement];

    if ([contextElement isGroup])
    {
      firstChild = [contextElement firstChild];
    }

    else
    {
      if (!contextElement)
      {
        axManager = [(SCATElementNavigationController *)self axManager];
        lastScannedElementCommunity = [(SCATElementNavigationController *)self lastScannedElementCommunity];
        v10 = [axManager lastItemForScanningWithElementCommunity:lastScannedElementCommunity];

        v22 = 1;
        if (v10)
        {
          goto LABEL_13;
        }

        goto LABEL_9;
      }

      firstChild = contextElement;
    }

    v14 = firstChild;

    beforeCopy = v14;
  }

LABEL_9:
  axManager2 = [(SCATElementNavigationController *)self axManager];
  v10 = [axManager2 previousItemForScanningFromItem:beforeCopy didWrap:&v22];

  if (!(scatIsAuxiliaryElement & 1 | !v22))
  {
    v16 = [(SCATElementManager *)self lastAuxiliaryElementWithRole:[(SCATElementManager *)self roleForElement:beforeCopy]];
    v17 = v16;
    if (v16)
    {
      v18 = v16;

      v22 = 0;
      v10 = v18;
    }
  }

LABEL_13:
  if (wrap)
  {
    *wrap = v22;
  }

  return v10;
}

- (id)_nativeFocusElementContext
{
  v3 = +[HNDAccessibilityManager sharedManager];
  nativeFocusElement = [v3 nativeFocusElement];

  if (nativeFocusElement)
  {
    v5 = [SCATFocusContext focusContextWithElement:nativeFocusElement elementManager:self selectBehavior:0 options:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)numberOfItemsInCurrentScanCycle
{
  if (![(SCATElementNavigationController *)self isGroupingEnabled])
  {
    axManager = [(SCATElementNavigationController *)self axManager];
    elements = [axManager elements];

    if (elements)
    {
      v9 = [elements count];
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  currentFocusContext = [(SCATElementNavigationController *)self currentFocusContext];
  element = [currentFocusContext element];
  scatIsAuxiliaryElement = [element scatIsAuxiliaryElement];

  if (scatIsAuxiliaryElement)
  {
    axManager2 = [(SCATElementNavigationController *)self axManager];
    elements = [axManager2 rootScannerGroup];
  }

  else
  {
    axManager2 = [(SCATElementNavigationController *)self currentFocusContext];
    selectBehavior = [axManager2 selectBehavior];
    currentFocusContext2 = [(SCATElementNavigationController *)self currentFocusContext];
    element2 = [currentFocusContext2 element];
    elements = element2;
    if (selectBehavior != 4)
    {
      parentGroup = [element2 parentGroup];

      elements = parentGroup;
    }
  }

  if (!elements)
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  v9 = [elements count];
  parentGroup2 = [elements parentGroup];

  if (parentGroup2)
  {
    ++v9;
  }

LABEL_14:

  if ([(SCATElementNavigationController *)self isMenuOpeningElementEnabled])
  {
    v9 = &v9[[(SCATElementManager *)self auxiliaryElementCountWithRole:1]];
  }

  return [NSNumber numberWithUnsignedInteger:v9];
}

- (int64_t)indexOfElementInCurrentScanCycle:(id)cycle
{
  cycleCopy = cycle;
  if (![(SCATElementNavigationController *)self isGroupingEnabled])
  {
    axManager = [(SCATElementNavigationController *)self axManager];
    elements = [axManager elements];
    goto LABEL_5;
  }

  currentFocusContext = [(SCATElementNavigationController *)self currentFocusContext];
  element = [currentFocusContext element];
  scatIsAuxiliaryElement = [element scatIsAuxiliaryElement];

  if (scatIsAuxiliaryElement)
  {
    axManager = [(SCATElementNavigationController *)self axManager];
    elements = [axManager rootScannerGroup];
LABEL_5:
    numberOfItemsInCurrentScanCycle = elements;
    goto LABEL_6;
  }

  currentFocusContext2 = [(SCATElementNavigationController *)self currentFocusContext];
  selectBehavior = [currentFocusContext2 selectBehavior];

  if (selectBehavior == 4)
  {
    numberOfItemsInCurrentScanCycle = [(SCATElementNavigationController *)self numberOfItemsInCurrentScanCycle];
    v11 = [numberOfItemsInCurrentScanCycle integerValue] - 1;
    goto LABEL_8;
  }

  axManager = [(SCATElementNavigationController *)self currentFocusContext];
  element2 = [axManager element];
  numberOfItemsInCurrentScanCycle = [element2 parentGroup];

LABEL_6:
  if (!numberOfItemsInCurrentScanCycle)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_10;
  }

  v11 = [numberOfItemsInCurrentScanCycle indexOfObject:cycleCopy];
LABEL_8:

LABEL_10:
  return v11;
}

- (id)elementForIndexInCurrentScanCycle:(int64_t)cycle
{
  if ([(SCATElementNavigationController *)self isGroupingEnabled])
  {
    currentFocusContext = [(SCATElementNavigationController *)self currentFocusContext];
    element = [currentFocusContext element];
    scatIsAuxiliaryElement = [element scatIsAuxiliaryElement];

    if (!scatIsAuxiliaryElement)
    {
      currentFocusContext2 = [(SCATElementNavigationController *)self currentFocusContext];
      element2 = [currentFocusContext2 element];
      parentGroup = [element2 parentGroup];

      goto LABEL_7;
    }

    currentFocusContext2 = [(SCATElementNavigationController *)self axManager];
    rootScannerGroup = [currentFocusContext2 rootScannerGroup];
  }

  else
  {
    currentFocusContext2 = [(SCATElementNavigationController *)self axManager];
    rootScannerGroup = [currentFocusContext2 elements];
  }

  parentGroup = rootScannerGroup;
LABEL_7:

  if (cycle < 0 || [parentGroup count] <= cycle)
  {
    v12 = 0;
  }

  else
  {
    v12 = [parentGroup objectAtIndexedSubscript:cycle];
  }

  return v12;
}

- (void)_giveUpWaitingForFetchAfterPause
{
  v3 = SWCHLogElementNav();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "*** gave up waiting for fetch after pause", buf, 2u);
  }

  v4 = +[SCATScannerManager sharedManager];
  if ([(SCATElementNavigationController *)self shouldRescanFromTopAfterFetch])
  {
    v5 = SWCHLogElementNav();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "will rescan from top", v8, 2u);
    }

    [v4 beginScanningWithFocusContext:0];
  }

  else if ([(SCATElementNavigationController *)self shouldRescanAfterFetch])
  {
    v6 = SWCHLogElementNav();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "will rescan", v7, 2u);
    }

    [v4 resumeScanning];
  }

  [(SCATElementNavigationController *)self _resetFetchFlags];
}

- (void)_pauseScanningTemporarily
{
  v3 = SWCHLogElementNav();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Pause scanning temporarily", buf, 2u);
  }

  [(SCATElementNavigationController *)self _stopWaitingForFetchAfterTemporaryPause];
  v4 = +[SCATScannerManager sharedManager];
  if ([v4 isActive])
  {
    v5 = SWCHLogElementNav();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "scanner was active; will rescan after fetch", v6, 2u);
    }

    [(SCATElementNavigationController *)self setShouldRescanAfterFetch:1];
    [v4 pauseScanningWithScreenLockDisabled:1];
  }
}

- (void)_pauseScanningForLikelyScreenChange
{
  [(SCATElementNavigationController *)self _pauseScanningTemporarily];
  [(SCATElementNavigationController *)self setShouldRescanFromTopAfterFetch:1];
  v3 = SWCHLogElementNav();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "paused for likely screen change; will rescan from top after fetch", v4, 2u);
  }

  [(SCATElementNavigationController *)self _startWaitingForFetchAfterTemporaryPause];
}

- (void)_resetFetchFlags
{
  v3 = SWCHLogElementNav();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "reset fetch flags", v4, 2u);
  }

  [(SCATElementNavigationController *)self setShouldRescanAfterFetch:0];
  [(SCATElementNavigationController *)self setShouldRescanFromTopAfterFetch:0];
}

- (void)orientationDidChange:(id)change
{
  v4 = SWCHLogElementNav();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "*** Orientation change", v5, 2u);
  }

  [(SCATElementNavigationController *)self _pauseScanningTemporarily];
}

- (void)appTransitionDidOccur:(id)occur
{
  v4 = SWCHLogElementNav();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "*** App transition; should rescan from top after fetch", v5, 2u);
  }

  [(SCATElementNavigationController *)self _pauseScanningTemporarily];
  [(SCATElementNavigationController *)self setShouldRescanFromTopAfterFetch:1];
}

- (void)screenDidChange:(id)change data:(id)data
{
  changeCopy = change;
  v6 = SWCHLogElementNav();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "*** Screen change", buf, 2u);
  }

  if (![(SCATElementNavigationController *)self _didFocusLastOnKeyboardElement])
  {
    [(SCATElementNavigationController *)self _pauseScanningTemporarily];
    [(SCATElementNavigationController *)self setShouldRescanFromTopAfterFetch:1];
    v7 = SWCHLogElementNav();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "was not scanning the keyboard; will rescan from top after fetch", v8, 2u);
    }
  }

  [(SCATElementNavigationController *)self firstResponderDidChange:changeCopy];
}

- (void)alertDidAppear:(id)appear
{
  v4 = SWCHLogElementNav();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "*** Alert appeared; should rescan from top after fetch", v5, 2u);
  }

  [(SCATElementNavigationController *)self _pauseScanningTemporarily];
  [(SCATElementNavigationController *)self setShouldRescanFromTopAfterFetch:1];
}

- (void)screenChangingButtonWasPressed:(id)pressed
{
  v4 = SWCHLogElementNav();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "*** Screen changing button was pressed", v5, 2u);
  }

  [(SCATElementNavigationController *)self _pauseScanningForLikelyScreenChange];
}

- (void)_trackLastScannedElementCommunityFromFocusContext:(id)context
{
  contextCopy = context;
  selectBehavior = [contextCopy selectBehavior];
  element = [contextCopy element];
  v6 = element;
  if (selectBehavior != 4)
  {
    parentGroup = [element parentGroup];

    v6 = parentGroup;
  }

  if (v6)
  {
    while (1)
    {
      elementCommunity = [v6 elementCommunity];

      if (elementCommunity)
      {
        break;
      }

      parentGroup2 = [v6 parentGroup];

      v6 = parentGroup2;
      if (!parentGroup2)
      {
        goto LABEL_9;
      }
    }

    parentGroup2 = [v6 elementCommunity];
  }

  else
  {
    parentGroup2 = 0;
  }

LABEL_9:
  [(SCATElementNavigationController *)self setLastScannedElementCommunity:parentGroup2];
}

- (void)firstResponderDidChange:(id)change
{
  changeCopy = change;
  axManager = [(SCATElementNavigationController *)self axManager];
  firstResponder = [axManager firstResponder];

  v7 = SWCHLogElementNav();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    firstResponder2 = [(SCATElementNavigationController *)self firstResponder];
    elemLog = [firstResponder2 elemLog];
    elemLog2 = [firstResponder elemLog];
    v16 = 138543618;
    v17 = elemLog;
    v18 = 2114;
    v19 = elemLog2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "*** First responder change: %{public}@ -> %{public}@", &v16, 0x16u);
  }

  firstResponder3 = [(SCATElementNavigationController *)self firstResponder];
  if (firstResponder3 == firstResponder)
  {
    goto LABEL_14;
  }

  firstResponder4 = [(SCATElementNavigationController *)self firstResponder];
  v13 = [firstResponder4 isEqual:firstResponder];

  if ((v13 & 1) == 0)
  {
    [(SCATElementNavigationController *)self setShouldScanKeyboardOnAppearance:0];
    if (firstResponder)
    {
      if (![(SCATElementNavigationController *)self _didFocusLastOnKeyboardElement])
      {
        firstResponder3 = [(SCATElementNavigationController *)self _firstKeyboardFocusContext];
        v14 = SWCHLogElementNav();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
        if (firstResponder3)
        {
          if (v15)
          {
            LOWORD(v16) = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Was not scanning keyboard; will scan keyboard now", &v16, 2u);
          }

          [changeCopy beginScanningWithFocusContext:firstResponder3];
        }

        else
        {
          if (v15)
          {
            LOWORD(v16) = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Was not scanning keyboard; need to scan keyboard when it appears", &v16, 2u);
          }

          [(SCATElementNavigationController *)self setShouldScanKeyboardOnAppearance:1];
        }

LABEL_14:
      }
    }
  }

  [(SCATElementNavigationController *)self setFirstResponder:firstResponder];
}

- (void)_updateVisualScrollersWithFocusContext:(id)context oldContext:(id)oldContext
{
  oldContextCopy = oldContext;
  [(SCATElementNavigationController *)self setTopLevelVisualScrollersEnabled:1];
  currentFocusContext = [(SCATElementNavigationController *)self currentFocusContext];
  element = [currentFocusContext element];

  if (([element scatIsAuxiliaryElement] & 1) == 0)
  {
    topLevelVisualScrollersAuxElementManager = [(SCATElementNavigationController *)self topLevelVisualScrollersAuxElementManager];
    [topLevelVisualScrollersAuxElementManager setContextElement:element];
  }

  if ([(SCATElementNavigationController *)self isGroupingEnabled])
  {
    if ([element scatIsAuxiliaryElement])
    {
      scatAuxiliaryElementManager = [element scatAuxiliaryElementManager];
      contextElement = [scatAuxiliaryElementManager contextElement];
    }

    else
    {
      element2 = [oldContextCopy element];
      if ([element2 isGroup])
      {
        element3 = [oldContextCopy element];
        firstChild = [element3 firstChild];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
      }

      else
      {
        isKindOfClass = 0;
      }

      if ([element isGroup] && ((objc_msgSend(element, "isRootGroup") | isKindOfClass) & 1) != 0)
      {
        parentGroup = element;
      }

      else
      {
        parentGroup = [element parentGroup];
      }

      contextElement = parentGroup;
      scatAuxiliaryElementManager = [(SCATElementNavigationController *)self groupVisualScrollersAuxElementManager];
      [scatAuxiliaryElementManager setContextElement:contextElement];
    }

    [(SCATElementNavigationController *)self setGroupVisualScrollersEnabled:contextElement != 0];
  }

  else
  {
    [(SCATElementNavigationController *)self setGroupVisualScrollersEnabled:0];
  }
}

- (void)_updateMenuOpeningElementEnabledWithFocusContext:(id)context
{
  contextCopy = context;
  v5 = +[AXSettings sharedInstance];
  switchControlTapBehavior = [v5 switchControlTapBehavior];

  if (switchControlTapBehavior == 2)
  {
    element = [contextCopy element];
    menuOpeningAuxElementManager = [(SCATElementNavigationController *)self menuOpeningAuxElementManager];
    v9 = [menuOpeningAuxElementManager containsElement:element];

    v10 = SWCHLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v19 = 67109379;
      v20 = v9;
      v21 = 2113;
      v22 = element;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Always tap menu: %d contains element: %{private}@", &v19, 0x12u);
    }

    if (v9)
    {
      v11 = 1;
    }

    else
    {
      v12 = element;
      if ([v12 scatIsAuxiliaryElement])
      {
        scatAuxiliaryElementManager = [v12 scatAuxiliaryElementManager];
        v14 = [scatAuxiliaryElementManager role] == 1;
      }

      else
      {
        v14 = 0;
      }

      parentGroup = [v12 parentGroup];
      axManager = [(SCATElementNavigationController *)self axManager];
      rootScannerGroup = [axManager rootScannerGroup];

      v11 = (parentGroup == rootScannerGroup || v14) && [contextCopy selectBehavior] != 4;
    }
  }

  else
  {
    v11 = 0;
  }

  v18 = SWCHLogCommon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = 67109120;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Always tap menu: %d", &v19, 8u);
  }

  [(SCATElementNavigationController *)self setMenuOpeningElementEnabled:v11];
}

- (void)driver:(id)driver didFocusOnContext:(id)context oldContext:(id)oldContext
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = SCATElementNavigationController;
  [(SCATElementManager *)&v11 driver:driver didFocusOnContext:contextCopy oldContext:oldContext];
  v9 = SWCHLogElementNav();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10012A218(contextCopy);
  }

  [(SCATElementNavigationController *)self setCurrentFocusContext:contextCopy];
  [(SCATElementNavigationController *)self _trackLastFocusedKeyboardItem:contextCopy];
  [(SCATElementNavigationController *)self _trackLastScannedElementCommunityFromFocusContext:contextCopy];
  [(SCATElementNavigationController *)self _updateMenuOpeningElementEnabledWithFocusContext:contextCopy];
  element = [contextCopy element];
  [element setScatAssistiveTechFocused:1];
}

- (void)driver:(id)driver willUnfocusFromContext:(id)context
{
  v7.receiver = self;
  v7.super_class = SCATElementNavigationController;
  contextCopy = context;
  [(SCATElementManager *)&v7 driver:driver willUnfocusFromContext:contextCopy];
  element = [contextCopy element];

  [element setScatAssistiveTechFocused:0];
}

- (void)scannerWillMakeManagerInactive:(id)inactive activeElementManager:(id)manager
{
  v5 = SWCHLogElementNav();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "*** Element nav controller will become inactive; clearing keyboard state", v6, 2u);
  }

  [(SCATElementNavigationController *)self setKeyboardIndexPath:0];
  [(SCATElementNavigationController *)self setKeyboardKeyCenterPoint:0];
  [(SCATElementNavigationController *)self setMenuOpeningElementEnabled:0];
}

- (unint64_t)_depthForElement:(id)element
{
  elementCopy = element;
  parentGroup = [elementCopy parentGroup];

  if (parentGroup)
  {
    parentGroup = 0;
    v5 = elementCopy;
    do
    {
      ++parentGroup;
      elementCopy = [v5 parentGroup];

      parentGroup2 = [elementCopy parentGroup];

      v5 = elementCopy;
    }

    while (parentGroup2);
  }

  return parentGroup;
}

- (void)_attemptToRestoreFocusContext:(id)context scannerManager:(id)manager foundNewElements:(BOOL)elements
{
  elementsCopy = elements;
  contextCopy = context;
  managerCopy = manager;
  element = [contextCopy element];
  axManager = [(SCATElementNavigationController *)self axManager];
  v12 = [axManager scannerElementMatchingElement:element];

  scatTraits = [v12 scatTraits];
  if ((kAXAutoCorrectCandidateTrait & scatTraits) != 0)
  {
    if ([element scatIsAXElement])
    {
      label = [element label];
    }

    else
    {
      label = 0;
    }

    if ([v12 scatIsAXElement])
    {
      label2 = [v12 label];
    }

    else
    {
      label2 = 0;
    }

    if (label != label2)
    {
      parentGroup = [v12 parentGroup];
      firstLeafDescendant = [parentGroup firstLeafDescendant];

      v12 = firstLeafDescendant;
    }
  }

  if (!v12)
  {
    if ([element scatIsAuxiliaryElement])
    {
      v12 = element;
      v18 = 0;
      goto LABEL_16;
    }

    v12 = 0;
  }

  v18 = 1;
LABEL_16:
  v19 = SWCHLogElementNav();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    sub_10012A2A4(element, v12);
  }

  if (!v12)
  {
    goto LABEL_25;
  }

  if ((v18 & [(SCATElementNavigationController *)self isGroupingEnabled]) != 1)
  {
    goto LABEL_23;
  }

  v20 = [(SCATElementNavigationController *)self _depthForElement:element];
  v21 = [(SCATElementNavigationController *)self _depthForElement:v12];
  v22 = SWCHLogElementNav();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    sub_10012A39C();
  }

  if (v21 == v20)
  {
LABEL_23:
    _replacementForLastFocusedKeyboardItem = +[SCATFocusContext focusContextWithElement:elementManager:selectBehavior:options:](SCATFocusContext, "focusContextWithElement:elementManager:selectBehavior:options:", v12, self, [contextCopy selectBehavior], 0);
    v24 = SWCHLogElementNav();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_10012A420(_replacementForLastFocusedKeyboardItem);
    }
  }

  else
  {
LABEL_25:
    if (![(SCATElementNavigationController *)self _didFocusLastOnKeyboardElement])
    {
      _replacementForLastFocusedKeyboardItem = 0;
      goto LABEL_30;
    }

    _replacementForLastFocusedKeyboardItem = [(SCATElementNavigationController *)self _replacementForLastFocusedKeyboardItem];
    v24 = SWCHLogElementNav();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_10012A4AC(_replacementForLastFocusedKeyboardItem);
    }
  }

LABEL_30:
  if (-[SCATElementNavigationController shouldRescanAfterFetch](self, "shouldRescanAfterFetch") || [managerCopy isActive] && !_replacementForLastFocusedKeyboardItem)
  {
    v25 = SWCHLogElementNav();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_10012A5B8();
    }

    [managerCopy beginScanningWithFocusContext:_replacementForLastFocusedKeyboardItem];
  }

  else
  {
    isActive = [managerCopy isActive];
    v27 = SWCHLogElementNav();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);
    if (isActive && _replacementForLastFocusedKeyboardItem)
    {
      if (v28)
      {
        sub_10012A578();
      }

      [managerCopy continueScanningWithFocusContext:_replacementForLastFocusedKeyboardItem foundNewElements:elementsCopy];
    }

    else
    {
      if (v28)
      {
        sub_10012A538();
      }

      [managerCopy useFocusContextOnResume:_replacementForLastFocusedKeyboardItem];
    }
  }
}

- (BOOL)_shouldTrackNativeFocusElement
{
  v2 = +[SCATScannerManager sharedManager];
  activeScannerDriver = [v2 activeScannerDriver];
  v4 = [activeScannerDriver driverType] == 1;

  return v4;
}

- (void)didFetchElements:(id)elements foundNewElements:(BOOL)newElements currentFocusContext:(id)context didChangeActiveElementManager:(BOOL)manager
{
  newElementsCopy = newElements;
  elementsCopy = elements;
  contextCopy = context;
  v11 = SWCHLogElementNav();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "*** Did fetch elements", buf, 2u);
  }

  [(SCATElementNavigationController *)self _stopWaitingForFetchAfterTemporaryPause];
  _firstKeyboardFocusContext = [(SCATElementNavigationController *)self _firstKeyboardFocusContext];
  if (_firstKeyboardFocusContext && [(SCATElementNavigationController *)self shouldScanKeyboardOnAppearance])
  {
    v13 = SWCHLogElementNav();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Found keyboard and needed to scan it", v20, 2u);
    }

    [elementsCopy beginScanningWithFocusContext:_firstKeyboardFocusContext];
    [(SCATElementNavigationController *)self setShouldScanKeyboardOnAppearance:0];
  }

  else
  {

    if ([(SCATElementNavigationController *)self shouldRescanFromTopAfterFetch])
    {
      v14 = SWCHLogElementNav();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Needed to scan from top after fetch", v19, 2u);
      }

      [elementsCopy beginScanningWithFocusContext:0];
    }

    else if (newElementsCopy || [(SCATElementNavigationController *)self isGroupingEnabled])
    {
      v15 = SWCHLogElementNav();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Will attempt to restore focus context", v18, 2u);
      }

      [(SCATElementNavigationController *)self _attemptToRestoreFocusContext:contextCopy scannerManager:elementsCopy foundNewElements:newElementsCopy];
    }

    else if ([(SCATElementNavigationController *)self shouldRescanAfterFetch])
    {
      v16 = SWCHLogElementNav();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Needed to rescan after fetch", v17, 2u);
      }

      [elementsCopy resumeScanning];
    }
  }

  [(SCATElementNavigationController *)self _resetFetchFlags];
}

- (id)_firstKeyboardFocusContext
{
  axManager = [(SCATElementNavigationController *)self axManager];
  firstKeyboardItem = [axManager firstKeyboardItem];

  if (firstKeyboardItem)
  {
    v5 = [SCATFocusContext focusContextWithElement:firstKeyboardItem elementManager:self selectBehavior:0 options:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isKeyboardContainerElement:(id)element allowKeyboardContainerItself:(BOOL)itself
{
  itselfCopy = itself;
  elementCopy = element;
  if ([(SCATElementNavigationController *)self isGroupingEnabled])
  {
    keyboardContainer = [elementCopy keyboardContainer];
    scatIsKeyboardKey = keyboardContainer != 0;
  }

  else
  {
    scatIsKeyboardKey = [elementCopy scatIsKeyboardKey];
  }

  v9 = [elementCopy isGroup] ^ 1;
  LOBYTE(v10) = v9 & scatIsKeyboardKey;
  if ((v9 & 1) == 0 && scatIsKeyboardKey)
  {
    v10 = [elementCopy isKeyboardContainer] ^ 1 | itselfCopy;
  }

  return v10;
}

- (BOOL)_isScanningKeyboardContainer:(id)container
{
  containerCopy = container;
  element = [containerCopy element];
  selectBehavior = [containerCopy selectBehavior];

  LOBYTE(self) = [(SCATElementNavigationController *)self _isKeyboardContainerElement:element allowKeyboardContainerItself:selectBehavior == 4];
  return self;
}

- (BOOL)_didFocusLastOnKeyboardElement
{
  isGroupingEnabled = [(SCATElementNavigationController *)self isGroupingEnabled];
  if (isGroupingEnabled)
  {
    keyboardIndexPath = [(SCATElementNavigationController *)self keyboardIndexPath];
    if (keyboardIndexPath)
    {
      v5 = 1;
LABEL_10:

      return v5;
    }

    if ([(SCATElementNavigationController *)self isGroupingEnabled])
    {
      keyboardIndexPath = 0;
      v5 = 0;
      goto LABEL_10;
    }
  }

  else if ([(SCATElementNavigationController *)self isGroupingEnabled])
  {
    return 0;
  }

  keyboardKeyCenterPoint = [(SCATElementNavigationController *)self keyboardKeyCenterPoint];
  v5 = keyboardKeyCenterPoint != 0;

  if (isGroupingEnabled)
  {
    keyboardIndexPath = 0;
    goto LABEL_10;
  }

  return v5;
}

- (id)_indexPathForKeyboardElement:(id)element
{
  elementCopy = element;
  if ([elementCopy isGroup] && objc_msgSend(elementCopy, "isKeyboardContainer"))
  {
    v5 = [NSIndexPath indexPathWithIndex:0];
  }

  else
  {
    parentGroup = [elementCopy parentGroup];
    v7 = parentGroup;
    if (parentGroup && (v8 = [parentGroup indexOfObject:elementCopy], v8 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v9 = v8;
      v10 = [(SCATElementNavigationController *)self _indexPathForKeyboardElement:v7];
      v5 = [v10 indexPathByAddingIndex:v9];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_keyboardElementForIndexPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    _AXAssert();
  }

  if ([pathCopy length] == 1)
  {
    axManager = [(SCATElementNavigationController *)self axManager];
    rootKeyboardGroup = [axManager rootKeyboardGroup];
LABEL_5:

    goto LABEL_9;
  }

  indexPathByRemovingLastIndex = [pathCopy indexPathByRemovingLastIndex];
  rootKeyboardGroup = [(SCATElementNavigationController *)self _keyboardElementForIndexPath:indexPathByRemovingLastIndex];

  if ([rootKeyboardGroup isGroup])
  {
    axManager = rootKeyboardGroup;
    v8 = [pathCopy indexAtPosition:{objc_msgSend(pathCopy, "length") - 1}];
    if (v8 >= [axManager count])
    {
      rootKeyboardGroup = axManager;
    }

    else
    {
      rootKeyboardGroup = [axManager objectAtIndex:v8];
    }

    goto LABEL_5;
  }

LABEL_9:

  return rootKeyboardGroup;
}

- (void)_trackLastFocusedKeyboardItem:(id)item
{
  itemCopy = item;
  element = [itemCopy element];
  if ([(SCATElementNavigationController *)self _isScanningKeyboardContainer:itemCopy])
  {
    if ([(SCATElementNavigationController *)self isGroupingEnabled])
    {
      v6 = [(SCATElementNavigationController *)self _indexPathForKeyboardElement:element];
      v7 = SWCHLogElementNav();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_10012A668();
      }

      v8 = 0;
    }

    else
    {
      if (([element scatIsAXElement] & 1) == 0)
      {
        v9 = element;
        _AXAssert();
      }

      [element centerPoint];
      v8 = [NSValue valueWithCGPoint:?];
      v7 = SWCHLogElementNav();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_10012A5F8();
      }

      v6 = 0;
    }
  }

  else
  {
    v8 = 0;
    v6 = 0;
  }

  [(SCATElementNavigationController *)self setKeyboardIndexPath:v6];
  [(SCATElementNavigationController *)self setKeyboardKeyCenterPoint:v8];
  -[SCATElementNavigationController setKeyboardSelectBehavior:](self, "setKeyboardSelectBehavior:", [itemCopy selectBehavior]);
}

- (id)_replacementForLastFocusedKeyboardItem
{
  if ([(SCATElementNavigationController *)self isGroupingEnabled])
  {
    keyboardIndexPath = [(SCATElementNavigationController *)self keyboardIndexPath];
    v4 = [(SCATElementNavigationController *)self _keyboardElementForIndexPath:keyboardIndexPath];
  }

  else
  {
    axManager = [(SCATElementNavigationController *)self axManager];
    keyboardKeyCenterPoint = [(SCATElementNavigationController *)self keyboardKeyCenterPoint];
    [keyboardKeyCenterPoint CGPointValue];
    v4 = [axManager elementAtPoint:?];

    if (([v4 scatIsKeyboardKey] & 1) == 0)
    {

      goto LABEL_11;
    }
  }

  if (!v4)
  {
LABEL_11:
    _firstKeyboardFocusContext = [(SCATElementNavigationController *)self _firstKeyboardFocusContext];
    goto LABEL_12;
  }

  if (([v4 isGroup] & 1) == 0 && (-[SCATElementNavigationController keyboardSelectBehavior](self, "keyboardSelectBehavior") == 3 || -[SCATElementNavigationController keyboardSelectBehavior](self, "keyboardSelectBehavior") == 4))
  {
    [(SCATElementNavigationController *)self setKeyboardSelectBehavior:0];
  }

  _firstKeyboardFocusContext = [SCATFocusContext focusContextWithElement:v4 elementManager:self selectBehavior:[(SCATElementNavigationController *)self keyboardSelectBehavior] options:0];

LABEL_12:

  return _firstKeyboardFocusContext;
}

- (void)scannerManager:(id)manager didActivateElement:(id)element
{
  managerCopy = manager;
  elementCopy = element;
  if ([(SCATElementNavigationController *)self _isKeyboardContainerElement:elementCopy allowKeyboardContainerItself:0])
  {
    v8 = [(SCATElementNavigationController *)self nextFocusContextAfterActivatingKeyboardElement:elementCopy];
    [managerCopy beginScanningWithFocusContext:v8];
LABEL_12:

    goto LABEL_13;
  }

  scatActivateBehavior = [elementCopy scatActivateBehavior];
  v8 = SWCHLogElementNav();
  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (scatActivateBehavior)
  {
    if (v10)
    {
      if (objc_opt_respondsToSelector())
      {
        [elementCopy elemLog];
      }

      else
      {
        [elementCopy description];
      }
      v11 = ;
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "After activating %{public}@, repeating scan", &v13, 0xCu);
    }

    goto LABEL_12;
  }

  if (v10)
  {
    if (objc_opt_respondsToSelector())
    {
      [elementCopy elemLog];
    }

    else
    {
      [elementCopy description];
    }
    v12 = ;
    v13 = 138543362;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "After activating %{public}@, starting from the beginning again", &v13, 0xCu);
  }

  [managerCopy beginScanningWithFocusContext:0];
LABEL_13:
}

- (id)nextFocusContextAfterDismissingMenuForElement:(id)element
{
  elementCopy = element;
  axManager = [(SCATElementNavigationController *)self axManager];
  v6 = [axManager scannerElementMatchingElement:elementCopy];

  if (v6)
  {
    v7 = v6;

    elementCopy = v7;
  }

  if ([(SCATElementNavigationController *)self _isKeyboardContainerElement:elementCopy allowKeyboardContainerItself:0])
  {
    v8 = [(SCATElementNavigationController *)self nextFocusContextAfterActivatingKeyboardElement:elementCopy];
  }

  else
  {
    v9 = +[SCATScannerManager sharedManager];
    menu = [v9 menu];
    didActivateElement = [menu didActivateElement];

    if (didActivateElement)
    {
      if ([elementCopy scatActivateBehavior] == 1)
      {
        v8 = [SCATFocusContext focusContextWithElement:elementCopy elementManager:self selectBehavior:0 options:0];
      }

      else
      {
        v8 = 0;
      }

      v12 = SWCHLogElementNav();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_10012A6D8(elementCopy);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)nextFocusContextAfterActivatingKeyboardElement:(id)element
{
  elementCopy = element;
  v5 = +[AXSettings sharedInstance];
  switchControlRestartScanningAtCurrentKey = [v5 switchControlRestartScanningAtCurrentKey];

  if (switchControlRestartScanningAtCurrentKey)
  {
    _firstKeyboardFocusContext = [SCATFocusContext focusContextWithElement:elementCopy elementManager:self selectBehavior:0 options:0];
  }

  else
  {
    _firstKeyboardFocusContext = [(SCATElementNavigationController *)self _firstKeyboardFocusContext];
    v8 = SWCHLogElementNav();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10012A7B4(elementCopy, _firstKeyboardFocusContext);
    }
  }

  return _firstKeyboardFocusContext;
}

- (id)focusContextAfterDrillOutOnGroup:(id)group
{
  groupCopy = group;
  if ([groupCopy isKeyboardContainer] && (objc_msgSend(groupCopy, "elementCommunity"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(SCATElementNavigationController *)self firstElementWithOptions:0];
    v7 = [SCATFocusContext focusContextWithElement:v6 elementManager:self selectBehavior:0 options:0];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SCATElementNavigationController;
    v7 = [(SCATElementManager *)&v9 focusContextAfterDrillOutOnGroup:groupCopy];
  }

  return v7;
}

- (SCATElementNavigationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end