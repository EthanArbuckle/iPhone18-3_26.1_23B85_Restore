@interface SCATElementNavigationController
- (BOOL)_didFocusLastOnKeyboardElement;
- (BOOL)_isKeyboardContainerElement:(id)a3 allowKeyboardContainerItself:(BOOL)a4;
- (BOOL)_isScanningKeyboardContainer:(id)a3;
- (BOOL)_shouldTrackNativeFocusElement;
- (BOOL)isGroupingEnabled;
- (HNDAccessibilityManagerProtocol)axManager;
- (SCATElementNavigationController)init;
- (SCATElementNavigationControllerDelegate)delegate;
- (id)_firstKeyboardFocusContext;
- (id)_indexPathForKeyboardElement:(id)a3;
- (id)_keyboardElementForIndexPath:(id)a3;
- (id)_nativeFocusElementContext;
- (id)_replacementForLastFocusedKeyboardItem;
- (id)elementAfter:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5;
- (id)elementBefore:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5;
- (id)elementForIndexInCurrentScanCycle:(int64_t)a3;
- (id)firstElementWithOptions:(int *)a3;
- (id)focusContextAfterDrillOutOnGroup:(id)a3;
- (id)lastElementWithOptions:(int *)a3;
- (id)nextFocusContextAfterActivatingKeyboardElement:(id)a3;
- (id)nextFocusContextAfterDismissingMenuForElement:(id)a3;
- (id)numberOfItemsInCurrentScanCycle;
- (int64_t)indexOfElementInCurrentScanCycle:(id)a3;
- (unint64_t)_depthForElement:(id)a3;
- (void)_attemptToRestoreFocusContext:(id)a3 scannerManager:(id)a4 foundNewElements:(BOOL)a5;
- (void)_giveUpWaitingForFetchAfterPause;
- (void)_menuOpeningElementActivated:(id)a3;
- (void)_pauseScanningForLikelyScreenChange;
- (void)_pauseScanningTemporarily;
- (void)_resetFetchFlags;
- (void)_trackLastFocusedKeyboardItem:(id)a3;
- (void)_trackLastScannedElementCommunityFromFocusContext:(id)a3;
- (void)_updateMenuOpeningElementEnabledWithFocusContext:(id)a3;
- (void)_updateVisualScrollersWithFocusContext:(id)a3 oldContext:(id)a4;
- (void)alertDidAppear:(id)a3;
- (void)appTransitionDidOccur:(id)a3;
- (void)didFetchElements:(id)a3 foundNewElements:(BOOL)a4 currentFocusContext:(id)a5 didChangeActiveElementManager:(BOOL)a6;
- (void)driver:(id)a3 didFocusOnContext:(id)a4 oldContext:(id)a5;
- (void)driver:(id)a3 willUnfocusFromContext:(id)a4;
- (void)firstResponderDidChange:(id)a3;
- (void)orientationDidChange:(id)a3;
- (void)scannerManager:(id)a3 didActivateElement:(id)a4;
- (void)scannerWillMakeManagerInactive:(id)a3 activeElementManager:(id)a4;
- (void)screenChangingButtonWasPressed:(id)a3;
- (void)screenDidChange:(id)a3 data:(id)a4;
- (void)setGroupVisualScrollersEnabled:(BOOL)a3;
- (void)setMenuOpeningElementEnabled:(BOOL)a3;
- (void)setTopLevelVisualScrollersEnabled:(BOOL)a3;
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
  v3 = [v2 assistiveTouchGroupElementsEnabled];

  return v3;
}

- (HNDAccessibilityManagerProtocol)axManager
{
  v2 = objc_opt_class();

  return [v2 sharedManager];
}

- (void)_menuOpeningElementActivated:(id)a3
{
  v4 = [(SCATElementNavigationController *)self delegate];
  [v4 presentPostScanningMenuForElementNavigationController:self];
}

- (void)setMenuOpeningElementEnabled:(BOOL)a3
{
  if (self->_menuOpeningElementEnabled != a3)
  {
    v4 = a3;
    self->_menuOpeningElementEnabled = a3;
    v6 = [(SCATElementNavigationController *)self menuOpeningAuxElementManager];

    if (!v6)
    {
      v7 = objc_opt_new();
      [(SCATElementNavigationController *)self setMenuOpeningAuxElementManager:v7];
      [(SCATElementManager *)self appendAuxiliaryElementManager:v7 withRole:1];
      v8 = [v7 menuOpeningElement];
      [v8 addTarget:self action:"_menuOpeningElementActivated:" forControlEvents:64];
    }

    v9 = [(SCATElementNavigationController *)self menuOpeningAuxElementManager];
    [v9 setEnabled:v4];
  }
}

- (void)setTopLevelVisualScrollersEnabled:(BOOL)a3
{
  if (self->_topLevelVisualScrollersEnabled != a3)
  {
    v4 = a3;
    self->_topLevelVisualScrollersEnabled = a3;
    v6 = [(SCATElementNavigationController *)self topLevelVisualScrollersAuxElementManager];

    if (!v6)
    {
      v7 = [[SCATVisualScrollersAuxiliaryElementManager alloc] initWithMode:0];
      [(SCATElementNavigationController *)self setTopLevelVisualScrollersAuxElementManager:v7];
      [(SCATElementManager *)self appendAuxiliaryElementManager:v7 withRole:1];
    }

    v8 = [(SCATElementNavigationController *)self topLevelVisualScrollersAuxElementManager];
    [v8 setEnabled:v4];
  }
}

- (void)setGroupVisualScrollersEnabled:(BOOL)a3
{
  if (self->_groupVisualScrollersEnabled != a3)
  {
    v4 = a3;
    self->_groupVisualScrollersEnabled = a3;
    v6 = [(SCATElementNavigationController *)self groupVisualScrollersAuxElementManager];

    if (!v6)
    {
      v7 = [[SCATVisualScrollersAuxiliaryElementManager alloc] initWithMode:1];
      [(SCATElementNavigationController *)self setGroupVisualScrollersAuxElementManager:v7];
      [(SCATElementManager *)self appendAuxiliaryElementManager:v7 withRole:2];
    }

    v8 = [(SCATElementNavigationController *)self groupVisualScrollersAuxElementManager];
    [v8 setEnabled:v4];
  }
}

- (id)firstElementWithOptions:(int *)a3
{
  v4 = [(SCATElementNavigationController *)self startingSceneIdentifier];
  v5 = [v4 length];

  if (!v5 || (-[SCATElementNavigationController axManager](self, "axManager"), v6 = objc_claimAutoreleasedReturnValue(), -[SCATElementNavigationController startingSceneIdentifier](self, "startingSceneIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), [v6 firstElementInScene:v7], v8 = objc_claimAutoreleasedReturnValue(), v7, v6, -[SCATElementNavigationController setStartingSceneIdentifier:](self, "setStartingSceneIdentifier:", 0), !v8))
  {
    v9 = [(SCATElementNavigationController *)self axManager];
    v10 = [(SCATElementNavigationController *)self lastScannedElementCommunity];
    v8 = [v9 firstItemForScanningWithElementCommunity:v10];
  }

  return v8;
}

- (id)lastElementWithOptions:(int *)a3
{
  v4 = [(SCATElementNavigationController *)self axManager];
  v5 = [(SCATElementNavigationController *)self lastScannedElementCommunity];
  v6 = [v4 lastItemForScanningWithElementCommunity:v5];

  return v6;
}

- (id)elementAfter:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5
{
  v7 = a3;
  v22 = 0;
  v8 = [v7 scatIsAuxiliaryElement];
  if (v8)
  {
    v9 = [(SCATElementManager *)self auxiliaryElementAfter:v7];
    if (v9)
    {
      v10 = v9;
      goto LABEL_13;
    }

    v11 = [v7 scatAuxiliaryElementManager];
    v12 = [v11 contextElement];

    if ([v12 isGroup])
    {
      v13 = [v12 lastChild];
    }

    else
    {
      if (!v12)
      {
        v20 = [(SCATElementNavigationController *)self axManager];
        v21 = [(SCATElementNavigationController *)self lastScannedElementCommunity];
        v10 = [v20 firstItemForScanningWithElementCommunity:v21];

        v22 = 1;
        if (v10)
        {
          goto LABEL_13;
        }

        goto LABEL_9;
      }

      v13 = v12;
    }

    v14 = v13;

    v7 = v14;
  }

LABEL_9:
  v15 = [(SCATElementNavigationController *)self axManager];
  v10 = [v15 nextItemForScanningFromItem:v7 didWrap:&v22];

  if (!(v8 & 1 | !v22))
  {
    v16 = [(SCATElementManager *)self firstAuxiliaryElementWithRole:[(SCATElementManager *)self roleForElement:v7]];
    v17 = v16;
    if (v16)
    {
      v18 = v16;

      v22 = 0;
      v10 = v18;
    }
  }

LABEL_13:
  if (a4)
  {
    *a4 = v22;
  }

  return v10;
}

- (id)elementBefore:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5
{
  v7 = a3;
  v22 = 0;
  v8 = [v7 scatIsAuxiliaryElement];
  if (v8)
  {
    v9 = [(SCATElementManager *)self auxiliaryElementBefore:v7];
    if (v9)
    {
      v10 = v9;
      goto LABEL_13;
    }

    v11 = [v7 scatAuxiliaryElementManager];
    v12 = [v11 contextElement];

    if ([v12 isGroup])
    {
      v13 = [v12 firstChild];
    }

    else
    {
      if (!v12)
      {
        v20 = [(SCATElementNavigationController *)self axManager];
        v21 = [(SCATElementNavigationController *)self lastScannedElementCommunity];
        v10 = [v20 lastItemForScanningWithElementCommunity:v21];

        v22 = 1;
        if (v10)
        {
          goto LABEL_13;
        }

        goto LABEL_9;
      }

      v13 = v12;
    }

    v14 = v13;

    v7 = v14;
  }

LABEL_9:
  v15 = [(SCATElementNavigationController *)self axManager];
  v10 = [v15 previousItemForScanningFromItem:v7 didWrap:&v22];

  if (!(v8 & 1 | !v22))
  {
    v16 = [(SCATElementManager *)self lastAuxiliaryElementWithRole:[(SCATElementManager *)self roleForElement:v7]];
    v17 = v16;
    if (v16)
    {
      v18 = v16;

      v22 = 0;
      v10 = v18;
    }
  }

LABEL_13:
  if (a4)
  {
    *a4 = v22;
  }

  return v10;
}

- (id)_nativeFocusElementContext
{
  v3 = +[HNDAccessibilityManager sharedManager];
  v4 = [v3 nativeFocusElement];

  if (v4)
  {
    v5 = [SCATFocusContext focusContextWithElement:v4 elementManager:self selectBehavior:0 options:0];
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
    v8 = [(SCATElementNavigationController *)self axManager];
    v7 = [v8 elements];

    if (v7)
    {
      v9 = [v7 count];
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v3 = [(SCATElementNavigationController *)self currentFocusContext];
  v4 = [v3 element];
  v5 = [v4 scatIsAuxiliaryElement];

  if (v5)
  {
    v6 = [(SCATElementNavigationController *)self axManager];
    v7 = [v6 rootScannerGroup];
  }

  else
  {
    v6 = [(SCATElementNavigationController *)self currentFocusContext];
    v10 = [v6 selectBehavior];
    v11 = [(SCATElementNavigationController *)self currentFocusContext];
    v12 = [v11 element];
    v7 = v12;
    if (v10 != 4)
    {
      v13 = [v12 parentGroup];

      v7 = v13;
    }
  }

  if (!v7)
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  v9 = [v7 count];
  v14 = [v7 parentGroup];

  if (v14)
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

- (int64_t)indexOfElementInCurrentScanCycle:(id)a3
{
  v4 = a3;
  if (![(SCATElementNavigationController *)self isGroupingEnabled])
  {
    v8 = [(SCATElementNavigationController *)self axManager];
    v9 = [v8 elements];
    goto LABEL_5;
  }

  v5 = [(SCATElementNavigationController *)self currentFocusContext];
  v6 = [v5 element];
  v7 = [v6 scatIsAuxiliaryElement];

  if (v7)
  {
    v8 = [(SCATElementNavigationController *)self axManager];
    v9 = [v8 rootScannerGroup];
LABEL_5:
    v10 = v9;
    goto LABEL_6;
  }

  v13 = [(SCATElementNavigationController *)self currentFocusContext];
  v14 = [v13 selectBehavior];

  if (v14 == 4)
  {
    v10 = [(SCATElementNavigationController *)self numberOfItemsInCurrentScanCycle];
    v11 = [v10 integerValue] - 1;
    goto LABEL_8;
  }

  v8 = [(SCATElementNavigationController *)self currentFocusContext];
  v15 = [v8 element];
  v10 = [v15 parentGroup];

LABEL_6:
  if (!v10)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_10;
  }

  v11 = [v10 indexOfObject:v4];
LABEL_8:

LABEL_10:
  return v11;
}

- (id)elementForIndexInCurrentScanCycle:(int64_t)a3
{
  if ([(SCATElementNavigationController *)self isGroupingEnabled])
  {
    v5 = [(SCATElementNavigationController *)self currentFocusContext];
    v6 = [v5 element];
    v7 = [v6 scatIsAuxiliaryElement];

    if (!v7)
    {
      v8 = [(SCATElementNavigationController *)self currentFocusContext];
      v11 = [v8 element];
      v10 = [v11 parentGroup];

      goto LABEL_7;
    }

    v8 = [(SCATElementNavigationController *)self axManager];
    v9 = [v8 rootScannerGroup];
  }

  else
  {
    v8 = [(SCATElementNavigationController *)self axManager];
    v9 = [v8 elements];
  }

  v10 = v9;
LABEL_7:

  if (a3 < 0 || [v10 count] <= a3)
  {
    v12 = 0;
  }

  else
  {
    v12 = [v10 objectAtIndexedSubscript:a3];
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

- (void)orientationDidChange:(id)a3
{
  v4 = SWCHLogElementNav();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "*** Orientation change", v5, 2u);
  }

  [(SCATElementNavigationController *)self _pauseScanningTemporarily];
}

- (void)appTransitionDidOccur:(id)a3
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

- (void)screenDidChange:(id)a3 data:(id)a4
{
  v5 = a3;
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

  [(SCATElementNavigationController *)self firstResponderDidChange:v5];
}

- (void)alertDidAppear:(id)a3
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

- (void)screenChangingButtonWasPressed:(id)a3
{
  v4 = SWCHLogElementNav();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "*** Screen changing button was pressed", v5, 2u);
  }

  [(SCATElementNavigationController *)self _pauseScanningForLikelyScreenChange];
}

- (void)_trackLastScannedElementCommunityFromFocusContext:(id)a3
{
  v10 = a3;
  v4 = [v10 selectBehavior];
  v5 = [v10 element];
  v6 = v5;
  if (v4 != 4)
  {
    v7 = [v5 parentGroup];

    v6 = v7;
  }

  if (v6)
  {
    while (1)
    {
      v8 = [v6 elementCommunity];

      if (v8)
      {
        break;
      }

      v9 = [v6 parentGroup];

      v6 = v9;
      if (!v9)
      {
        goto LABEL_9;
      }
    }

    v9 = [v6 elementCommunity];
  }

  else
  {
    v9 = 0;
  }

LABEL_9:
  [(SCATElementNavigationController *)self setLastScannedElementCommunity:v9];
}

- (void)firstResponderDidChange:(id)a3
{
  v4 = a3;
  v5 = [(SCATElementNavigationController *)self axManager];
  v6 = [v5 firstResponder];

  v7 = SWCHLogElementNav();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(SCATElementNavigationController *)self firstResponder];
    v9 = [v8 elemLog];
    v10 = [v6 elemLog];
    v16 = 138543618;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "*** First responder change: %{public}@ -> %{public}@", &v16, 0x16u);
  }

  v11 = [(SCATElementNavigationController *)self firstResponder];
  if (v11 == v6)
  {
    goto LABEL_14;
  }

  v12 = [(SCATElementNavigationController *)self firstResponder];
  v13 = [v12 isEqual:v6];

  if ((v13 & 1) == 0)
  {
    [(SCATElementNavigationController *)self setShouldScanKeyboardOnAppearance:0];
    if (v6)
    {
      if (![(SCATElementNavigationController *)self _didFocusLastOnKeyboardElement])
      {
        v11 = [(SCATElementNavigationController *)self _firstKeyboardFocusContext];
        v14 = SWCHLogElementNav();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
        if (v11)
        {
          if (v15)
          {
            LOWORD(v16) = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Was not scanning keyboard; will scan keyboard now", &v16, 2u);
          }

          [v4 beginScanningWithFocusContext:v11];
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

  [(SCATElementNavigationController *)self setFirstResponder:v6];
}

- (void)_updateVisualScrollersWithFocusContext:(id)a3 oldContext:(id)a4
{
  v15 = a4;
  [(SCATElementNavigationController *)self setTopLevelVisualScrollersEnabled:1];
  v5 = [(SCATElementNavigationController *)self currentFocusContext];
  v6 = [v5 element];

  if (([v6 scatIsAuxiliaryElement] & 1) == 0)
  {
    v7 = [(SCATElementNavigationController *)self topLevelVisualScrollersAuxElementManager];
    [v7 setContextElement:v6];
  }

  if ([(SCATElementNavigationController *)self isGroupingEnabled])
  {
    if ([v6 scatIsAuxiliaryElement])
    {
      v8 = [v6 scatAuxiliaryElementManager];
      v9 = [v8 contextElement];
    }

    else
    {
      v10 = [v15 element];
      if ([v10 isGroup])
      {
        v11 = [v15 element];
        v12 = [v11 firstChild];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
      }

      else
      {
        isKindOfClass = 0;
      }

      if ([v6 isGroup] && ((objc_msgSend(v6, "isRootGroup") | isKindOfClass) & 1) != 0)
      {
        v14 = v6;
      }

      else
      {
        v14 = [v6 parentGroup];
      }

      v9 = v14;
      v8 = [(SCATElementNavigationController *)self groupVisualScrollersAuxElementManager];
      [v8 setContextElement:v9];
    }

    [(SCATElementNavigationController *)self setGroupVisualScrollersEnabled:v9 != 0];
  }

  else
  {
    [(SCATElementNavigationController *)self setGroupVisualScrollersEnabled:0];
  }
}

- (void)_updateMenuOpeningElementEnabledWithFocusContext:(id)a3
{
  v4 = a3;
  v5 = +[AXSettings sharedInstance];
  v6 = [v5 switchControlTapBehavior];

  if (v6 == 2)
  {
    v7 = [v4 element];
    v8 = [(SCATElementNavigationController *)self menuOpeningAuxElementManager];
    v9 = [v8 containsElement:v7];

    v10 = SWCHLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v19 = 67109379;
      v20 = v9;
      v21 = 2113;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Always tap menu: %d contains element: %{private}@", &v19, 0x12u);
    }

    if (v9)
    {
      v11 = 1;
    }

    else
    {
      v12 = v7;
      if ([v12 scatIsAuxiliaryElement])
      {
        v13 = [v12 scatAuxiliaryElementManager];
        v14 = [v13 role] == 1;
      }

      else
      {
        v14 = 0;
      }

      v15 = [v12 parentGroup];
      v16 = [(SCATElementNavigationController *)self axManager];
      v17 = [v16 rootScannerGroup];

      v11 = (v15 == v17 || v14) && [v4 selectBehavior] != 4;
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

- (void)driver:(id)a3 didFocusOnContext:(id)a4 oldContext:(id)a5
{
  v8 = a4;
  v11.receiver = self;
  v11.super_class = SCATElementNavigationController;
  [(SCATElementManager *)&v11 driver:a3 didFocusOnContext:v8 oldContext:a5];
  v9 = SWCHLogElementNav();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10012A218(v8);
  }

  [(SCATElementNavigationController *)self setCurrentFocusContext:v8];
  [(SCATElementNavigationController *)self _trackLastFocusedKeyboardItem:v8];
  [(SCATElementNavigationController *)self _trackLastScannedElementCommunityFromFocusContext:v8];
  [(SCATElementNavigationController *)self _updateMenuOpeningElementEnabledWithFocusContext:v8];
  v10 = [v8 element];
  [v10 setScatAssistiveTechFocused:1];
}

- (void)driver:(id)a3 willUnfocusFromContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = SCATElementNavigationController;
  v5 = a4;
  [(SCATElementManager *)&v7 driver:a3 willUnfocusFromContext:v5];
  v6 = [v5 element];

  [v6 setScatAssistiveTechFocused:0];
}

- (void)scannerWillMakeManagerInactive:(id)a3 activeElementManager:(id)a4
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

- (unint64_t)_depthForElement:(id)a3
{
  v3 = a3;
  v4 = [v3 parentGroup];

  if (v4)
  {
    v4 = 0;
    v5 = v3;
    do
    {
      ++v4;
      v3 = [v5 parentGroup];

      v6 = [v3 parentGroup];

      v5 = v3;
    }

    while (v6);
  }

  return v4;
}

- (void)_attemptToRestoreFocusContext:(id)a3 scannerManager:(id)a4 foundNewElements:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v8 element];
  v11 = [(SCATElementNavigationController *)self axManager];
  v12 = [v11 scannerElementMatchingElement:v10];

  v13 = [v12 scatTraits];
  if ((kAXAutoCorrectCandidateTrait & v13) != 0)
  {
    if ([v10 scatIsAXElement])
    {
      v14 = [v10 label];
    }

    else
    {
      v14 = 0;
    }

    if ([v12 scatIsAXElement])
    {
      v15 = [v12 label];
    }

    else
    {
      v15 = 0;
    }

    if (v14 != v15)
    {
      v16 = [v12 parentGroup];
      v17 = [v16 firstLeafDescendant];

      v12 = v17;
    }
  }

  if (!v12)
  {
    if ([v10 scatIsAuxiliaryElement])
    {
      v12 = v10;
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
    sub_10012A2A4(v10, v12);
  }

  if (!v12)
  {
    goto LABEL_25;
  }

  if ((v18 & [(SCATElementNavigationController *)self isGroupingEnabled]) != 1)
  {
    goto LABEL_23;
  }

  v20 = [(SCATElementNavigationController *)self _depthForElement:v10];
  v21 = [(SCATElementNavigationController *)self _depthForElement:v12];
  v22 = SWCHLogElementNav();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    sub_10012A39C();
  }

  if (v21 == v20)
  {
LABEL_23:
    v23 = +[SCATFocusContext focusContextWithElement:elementManager:selectBehavior:options:](SCATFocusContext, "focusContextWithElement:elementManager:selectBehavior:options:", v12, self, [v8 selectBehavior], 0);
    v24 = SWCHLogElementNav();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_10012A420(v23);
    }
  }

  else
  {
LABEL_25:
    if (![(SCATElementNavigationController *)self _didFocusLastOnKeyboardElement])
    {
      v23 = 0;
      goto LABEL_30;
    }

    v23 = [(SCATElementNavigationController *)self _replacementForLastFocusedKeyboardItem];
    v24 = SWCHLogElementNav();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_10012A4AC(v23);
    }
  }

LABEL_30:
  if (-[SCATElementNavigationController shouldRescanAfterFetch](self, "shouldRescanAfterFetch") || [v9 isActive] && !v23)
  {
    v25 = SWCHLogElementNav();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_10012A5B8();
    }

    [v9 beginScanningWithFocusContext:v23];
  }

  else
  {
    v26 = [v9 isActive];
    v27 = SWCHLogElementNav();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);
    if (v26 && v23)
    {
      if (v28)
      {
        sub_10012A578();
      }

      [v9 continueScanningWithFocusContext:v23 foundNewElements:v5];
    }

    else
    {
      if (v28)
      {
        sub_10012A538();
      }

      [v9 useFocusContextOnResume:v23];
    }
  }
}

- (BOOL)_shouldTrackNativeFocusElement
{
  v2 = +[SCATScannerManager sharedManager];
  v3 = [v2 activeScannerDriver];
  v4 = [v3 driverType] == 1;

  return v4;
}

- (void)didFetchElements:(id)a3 foundNewElements:(BOOL)a4 currentFocusContext:(id)a5 didChangeActiveElementManager:(BOOL)a6
{
  v7 = a4;
  v9 = a3;
  v10 = a5;
  v11 = SWCHLogElementNav();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "*** Did fetch elements", buf, 2u);
  }

  [(SCATElementNavigationController *)self _stopWaitingForFetchAfterTemporaryPause];
  v12 = [(SCATElementNavigationController *)self _firstKeyboardFocusContext];
  if (v12 && [(SCATElementNavigationController *)self shouldScanKeyboardOnAppearance])
  {
    v13 = SWCHLogElementNav();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Found keyboard and needed to scan it", v20, 2u);
    }

    [v9 beginScanningWithFocusContext:v12];
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

      [v9 beginScanningWithFocusContext:0];
    }

    else if (v7 || [(SCATElementNavigationController *)self isGroupingEnabled])
    {
      v15 = SWCHLogElementNav();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Will attempt to restore focus context", v18, 2u);
      }

      [(SCATElementNavigationController *)self _attemptToRestoreFocusContext:v10 scannerManager:v9 foundNewElements:v7];
    }

    else if ([(SCATElementNavigationController *)self shouldRescanAfterFetch])
    {
      v16 = SWCHLogElementNav();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Needed to rescan after fetch", v17, 2u);
      }

      [v9 resumeScanning];
    }
  }

  [(SCATElementNavigationController *)self _resetFetchFlags];
}

- (id)_firstKeyboardFocusContext
{
  v3 = [(SCATElementNavigationController *)self axManager];
  v4 = [v3 firstKeyboardItem];

  if (v4)
  {
    v5 = [SCATFocusContext focusContextWithElement:v4 elementManager:self selectBehavior:0 options:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isKeyboardContainerElement:(id)a3 allowKeyboardContainerItself:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(SCATElementNavigationController *)self isGroupingEnabled])
  {
    v7 = [v6 keyboardContainer];
    v8 = v7 != 0;
  }

  else
  {
    v8 = [v6 scatIsKeyboardKey];
  }

  v9 = [v6 isGroup] ^ 1;
  LOBYTE(v10) = v9 & v8;
  if ((v9 & 1) == 0 && v8)
  {
    v10 = [v6 isKeyboardContainer] ^ 1 | v4;
  }

  return v10;
}

- (BOOL)_isScanningKeyboardContainer:(id)a3
{
  v4 = a3;
  v5 = [v4 element];
  v6 = [v4 selectBehavior];

  LOBYTE(self) = [(SCATElementNavigationController *)self _isKeyboardContainerElement:v5 allowKeyboardContainerItself:v6 == 4];
  return self;
}

- (BOOL)_didFocusLastOnKeyboardElement
{
  v3 = [(SCATElementNavigationController *)self isGroupingEnabled];
  if (v3)
  {
    v4 = [(SCATElementNavigationController *)self keyboardIndexPath];
    if (v4)
    {
      v5 = 1;
LABEL_10:

      return v5;
    }

    if ([(SCATElementNavigationController *)self isGroupingEnabled])
    {
      v4 = 0;
      v5 = 0;
      goto LABEL_10;
    }
  }

  else if ([(SCATElementNavigationController *)self isGroupingEnabled])
  {
    return 0;
  }

  v6 = [(SCATElementNavigationController *)self keyboardKeyCenterPoint];
  v5 = v6 != 0;

  if (v3)
  {
    v4 = 0;
    goto LABEL_10;
  }

  return v5;
}

- (id)_indexPathForKeyboardElement:(id)a3
{
  v4 = a3;
  if ([v4 isGroup] && objc_msgSend(v4, "isKeyboardContainer"))
  {
    v5 = [NSIndexPath indexPathWithIndex:0];
  }

  else
  {
    v6 = [v4 parentGroup];
    v7 = v6;
    if (v6 && (v8 = [v6 indexOfObject:v4], v8 != 0x7FFFFFFFFFFFFFFFLL))
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

- (id)_keyboardElementForIndexPath:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _AXAssert();
  }

  if ([v4 length] == 1)
  {
    v5 = [(SCATElementNavigationController *)self axManager];
    v6 = [v5 rootKeyboardGroup];
LABEL_5:

    goto LABEL_9;
  }

  v7 = [v4 indexPathByRemovingLastIndex];
  v6 = [(SCATElementNavigationController *)self _keyboardElementForIndexPath:v7];

  if ([v6 isGroup])
  {
    v5 = v6;
    v8 = [v4 indexAtPosition:{objc_msgSend(v4, "length") - 1}];
    if (v8 >= [v5 count])
    {
      v6 = v5;
    }

    else
    {
      v6 = [v5 objectAtIndex:v8];
    }

    goto LABEL_5;
  }

LABEL_9:

  return v6;
}

- (void)_trackLastFocusedKeyboardItem:(id)a3
{
  v4 = a3;
  v5 = [v4 element];
  if ([(SCATElementNavigationController *)self _isScanningKeyboardContainer:v4])
  {
    if ([(SCATElementNavigationController *)self isGroupingEnabled])
    {
      v6 = [(SCATElementNavigationController *)self _indexPathForKeyboardElement:v5];
      v7 = SWCHLogElementNav();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_10012A668();
      }

      v8 = 0;
    }

    else
    {
      if (([v5 scatIsAXElement] & 1) == 0)
      {
        v9 = v5;
        _AXAssert();
      }

      [v5 centerPoint];
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
  -[SCATElementNavigationController setKeyboardSelectBehavior:](self, "setKeyboardSelectBehavior:", [v4 selectBehavior]);
}

- (id)_replacementForLastFocusedKeyboardItem
{
  if ([(SCATElementNavigationController *)self isGroupingEnabled])
  {
    v3 = [(SCATElementNavigationController *)self keyboardIndexPath];
    v4 = [(SCATElementNavigationController *)self _keyboardElementForIndexPath:v3];
  }

  else
  {
    v5 = [(SCATElementNavigationController *)self axManager];
    v6 = [(SCATElementNavigationController *)self keyboardKeyCenterPoint];
    [v6 CGPointValue];
    v4 = [v5 elementAtPoint:?];

    if (([v4 scatIsKeyboardKey] & 1) == 0)
    {

      goto LABEL_11;
    }
  }

  if (!v4)
  {
LABEL_11:
    v7 = [(SCATElementNavigationController *)self _firstKeyboardFocusContext];
    goto LABEL_12;
  }

  if (([v4 isGroup] & 1) == 0 && (-[SCATElementNavigationController keyboardSelectBehavior](self, "keyboardSelectBehavior") == 3 || -[SCATElementNavigationController keyboardSelectBehavior](self, "keyboardSelectBehavior") == 4))
  {
    [(SCATElementNavigationController *)self setKeyboardSelectBehavior:0];
  }

  v7 = [SCATFocusContext focusContextWithElement:v4 elementManager:self selectBehavior:[(SCATElementNavigationController *)self keyboardSelectBehavior] options:0];

LABEL_12:

  return v7;
}

- (void)scannerManager:(id)a3 didActivateElement:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SCATElementNavigationController *)self _isKeyboardContainerElement:v7 allowKeyboardContainerItself:0])
  {
    v8 = [(SCATElementNavigationController *)self nextFocusContextAfterActivatingKeyboardElement:v7];
    [v6 beginScanningWithFocusContext:v8];
LABEL_12:

    goto LABEL_13;
  }

  v9 = [v7 scatActivateBehavior];
  v8 = SWCHLogElementNav();
  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v10)
    {
      if (objc_opt_respondsToSelector())
      {
        [v7 elemLog];
      }

      else
      {
        [v7 description];
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
      [v7 elemLog];
    }

    else
    {
      [v7 description];
    }
    v12 = ;
    v13 = 138543362;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "After activating %{public}@, starting from the beginning again", &v13, 0xCu);
  }

  [v6 beginScanningWithFocusContext:0];
LABEL_13:
}

- (id)nextFocusContextAfterDismissingMenuForElement:(id)a3
{
  v4 = a3;
  v5 = [(SCATElementNavigationController *)self axManager];
  v6 = [v5 scannerElementMatchingElement:v4];

  if (v6)
  {
    v7 = v6;

    v4 = v7;
  }

  if ([(SCATElementNavigationController *)self _isKeyboardContainerElement:v4 allowKeyboardContainerItself:0])
  {
    v8 = [(SCATElementNavigationController *)self nextFocusContextAfterActivatingKeyboardElement:v4];
  }

  else
  {
    v9 = +[SCATScannerManager sharedManager];
    v10 = [v9 menu];
    v11 = [v10 didActivateElement];

    if (v11)
    {
      if ([v4 scatActivateBehavior] == 1)
      {
        v8 = [SCATFocusContext focusContextWithElement:v4 elementManager:self selectBehavior:0 options:0];
      }

      else
      {
        v8 = 0;
      }

      v12 = SWCHLogElementNav();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_10012A6D8(v4);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)nextFocusContextAfterActivatingKeyboardElement:(id)a3
{
  v4 = a3;
  v5 = +[AXSettings sharedInstance];
  v6 = [v5 switchControlRestartScanningAtCurrentKey];

  if (v6)
  {
    v7 = [SCATFocusContext focusContextWithElement:v4 elementManager:self selectBehavior:0 options:0];
  }

  else
  {
    v7 = [(SCATElementNavigationController *)self _firstKeyboardFocusContext];
    v8 = SWCHLogElementNav();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10012A7B4(v4, v7);
    }
  }

  return v7;
}

- (id)focusContextAfterDrillOutOnGroup:(id)a3
{
  v4 = a3;
  if ([v4 isKeyboardContainer] && (objc_msgSend(v4, "elementCommunity"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(SCATElementNavigationController *)self firstElementWithOptions:0];
    v7 = [SCATFocusContext focusContextWithElement:v6 elementManager:self selectBehavior:0 options:0];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SCATElementNavigationController;
    v7 = [(SCATElementManager *)&v9 focusContextAfterDrillOutOnGroup:v4];
  }

  return v7;
}

- (SCATElementNavigationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end