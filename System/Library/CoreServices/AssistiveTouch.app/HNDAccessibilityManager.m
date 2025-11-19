@interface HNDAccessibilityManager
+ (id)sharedManager;
+ (void)_clearExistingSharedManager;
- (AXElementFetcher)elementFetcher;
- (BOOL)_elementFetchingRequired;
- (BOOL)_hasCurrentApplicationMatchingBlock:(id)a3;
- (BOOL)_isElementInIgnoredTouchRegions:(id)a3;
- (BOOL)_isGroupingEnabled;
- (BOOL)_isSpeechEnabled;
- (BOOL)applicationIsRTL;
- (BOOL)frontmostAppMayBeLoading;
- (BOOL)hasZeroElements;
- (BOOL)isFetchingElements;
- (BOOL)isSystemSleeping:(id)a3;
- (BOOL)willFetchElements;
- (id)_applicationMatchingBlock:(id)a3 inApplications:(id)a4;
- (id)_currentAppPids;
- (id)_currentApplicationMatchingBlock:(id)a3;
- (id)_itemForScanningFromItem:(id)a3 inDirection:(BOOL)a4 didWrap:(BOOL *)a5;
- (id)_itemForScanningWithElementCommunity:(id)a3 useFirst:(BOOL)a4;
- (id)_setupElementFetcher;
- (id)elementAtPoint:(CGPoint)a3 displayID:(unsigned int)a4;
- (id)elements;
- (id)elementsForMatchingBlock:(id)a3;
- (id)findGroupableMatchingGroupable:(id)a3;
- (id)firstElementInScene:(id)a3;
- (id)firstKeyboardItem;
- (id)firstResponder;
- (id)firstScannerElement;
- (id)firstScannerGroupable;
- (id)lastKeyboardElement;
- (id)lastScannerElement;
- (id)lastScannerGroupable;
- (id)nativeFocusElement;
- (id)orbPreviewWindow;
- (id)rootKeyboardGroup;
- (id)scannerElementMatchingElement:(id)a3;
- (id)scrollViewsForAction:(int)a3 elementsToScroll:(id *)a4;
- (int64_t)_hndAccessibilityEventForFetchEvent:(unint64_t)a3;
- (void)_addPostEventFilterToFetcher:(id)a3;
- (void)_enableApplicationAccessibility:(BOOL)a3;
- (void)_handleAnnouncementNotification:(id)a3;
- (void)_handleAppTransition;
- (void)_handleLayoutChanged:(id)a3;
- (void)_handlePauseForPid:(int)a3;
- (void)_handleResumeForPid:(int)a3;
- (void)_handleScreenChanged:(id)a3;
- (void)_handleSystemServerDied;
- (void)_initialize;
- (void)_initializeAccessibility;
- (void)_notifyObserversApplicationWasActivated:(id)a3;
- (void)_notifyObserversDidFetchElementsForEvent:(int64_t)a3 foundNewElements:(BOOL)a4;
- (void)_notifyObserversDidReceiveEvent:(int64_t)a3 data:(id)a4;
- (void)_notifyObserversDidScheduleFetchEvent:(int64_t)a3;
- (void)_notifyObserversMediaDidBegin:(__CFData *)a3;
- (void)_notifyObserversNativeFocusElementDidChange:(id)a3;
- (void)_notifyObserversScreenWillChange:(__CFData *)a3;
- (void)_notifyObserversUpdateElementVisuals:(id)a3;
- (void)_notifyObserversWillFetchElementsForEvent:(int64_t)a3;
- (void)_observeNotifications:(BOOL)a3;
- (void)_requestPauseScanning;
- (void)_requestResumeScanning;
- (void)_resetPostEventFilterOnFetcher:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)displaysDidChange:(id)a3;
- (void)fetcher:(id)a3 didFetchElementsForEvent:(unint64_t)a4 foundNewElements:(BOOL)a5;
- (void)fetcher:(id)a3 didScheduleFetchEvent:(unint64_t)a4;
- (void)fetcher:(id)a3 willFetchElementsForEvent:(unint64_t)a4 fromApplications:(id)a5;
- (void)groupingEnabledDidChange;
- (void)observeAXNotifications:(id)a3;
- (void)refreshElements;
- (void)removeNotificationObserverAndDealloc;
- (void)removeObserver:(id)a3;
- (void)resetElementFetcher;
- (void)setElementFetcher:(id)a3;
- (void)speechEnabledDidChange;
- (void)stopObservingAXNotifications:(id)a3;
- (void)updateCachedOrbPreviewWindow:(id)a3;
- (void)userDidPerformSwitchAction;
@end

@implementation HNDAccessibilityManager

- (AXElementFetcher)elementFetcher
{
  if ([(HNDAccessibilityManager *)self _elementFetchingRequired]&& !self->_elementFetcher)
  {
    v3 = [(HNDAccessibilityManager *)self _setupElementFetcher];
    elementFetcher = self->_elementFetcher;
    self->_elementFetcher = v3;

    v5 = SWCHLogElementNav();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->_elementFetcher;
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "New element fetcher created: %@", &v9, 0xCu);
    }
  }

  v7 = self->_elementFetcher;

  return v7;
}

- (void)setElementFetcher:(id)a3
{
  v5 = a3;
  elementFetcher = self->_elementFetcher;
  p_elementFetcher = &self->_elementFetcher;
  if (elementFetcher != v5)
  {
    v8 = v5;
    objc_storeStrong(p_elementFetcher, a3);
    v5 = v8;
  }
}

- (void)updateCachedOrbPreviewWindow:(id)a3
{
  if ([a3 isEqualToNumber:&__kCFBooleanTrue])
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (id)orbPreviewWindow
{
  v3 = [(HNDAccessibilityManager *)self axOrbPreviewWindow];

  if (!v3)
  {
    v4 = +[AXElement primaryApp];
    v5 = [v4 elementForAttribute:5044];
    [(HNDAccessibilityManager *)self setAxOrbPreviewWindow:v5];
  }

  return [(HNDAccessibilityManager *)self axOrbPreviewWindow];
}

- (BOOL)_isGroupingEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchGroupElementsEnabled];

  return v3;
}

- (BOOL)_isSpeechEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchScannerSpeechEnabled];

  return v3;
}

- (BOOL)_elementFetchingRequired
{
  if (_AXSAssistiveTouchScannerEnabled())
  {
    return 1;
  }

  v3 = +[AXSettings sharedInstance];
  v4 = [v3 assistiveTouchInternalOnlyHiddenNubbitModeEnabled];

  return v4;
}

- (id)_applicationMatchingBlock:(id)a3 inApplications:(id)a4
{
  v5 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (v5[2](v5, v10))
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)_currentApplicationMatchingBlock:(id)a3
{
  v4 = a3;
  v5 = [(HNDAccessibilityManager *)self currentApplications];
  v6 = [(HNDAccessibilityManager *)self _applicationMatchingBlock:v4 inApplications:v5];

  return v6;
}

- (BOOL)_hasCurrentApplicationMatchingBlock:(id)a3
{
  v3 = [(HNDAccessibilityManager *)self _currentApplicationMatchingBlock:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)resetElementFetcher
{
  v3 = [(HNDAccessibilityManager *)self _setupElementFetcher];
  [(HNDAccessibilityManager *)self setElementFetcher:v3];

  v4 = SWCHLogElementNav();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(HNDAccessibilityManager *)self elementFetcher];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Resetting element fetcher. New element fetcher: %@", &v6, 0xCu);
  }
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kAXSAssistiveTouchScannerEnabledNotification, 0);
  v4 = [(HNDAccessibilityManager *)self elementFetcher];
  [v4 disableEventManagement];

  v5 = [(HNDAccessibilityManager *)self elementFetcher];
  [v5 unregisterFetchObserver:self];

  [(HNDAccessibilityManager *)self _observeNotifications:0];
  v6.receiver = self;
  v6.super_class = HNDAccessibilityManager;
  [(HNDAccessibilityManager *)&v6 dealloc];
}

- (void)_initialize
{
  if (![(HNDAccessibilityManager *)self initialized])
  {
    [(HNDAccessibilityManager *)self setInitialized:1];
    v3 = objc_opt_new();
    currentDisplays = self->_currentDisplays;
    self->_currentDisplays = v3;

    [(HNDAccessibilityManager *)self _initializeAccessibility];
    v5 = +[NSMutableArray array];
    [(HNDAccessibilityManager *)self setCurrentlyObservingNotifications:v5];

    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v7 = dispatch_queue_create("HNDAccessibilityManager-NotificationObserver", v6);
    [(HNDAccessibilityManager *)self setNotificationObserverQueue:v7];

    [(HNDAccessibilityManager *)self _observeNotifications:1];
    v8 = +[NSMutableArray array];
    [(HNDAccessibilityManager *)self setAccessibilityObservers:v8];

    v9 = dispatch_queue_create("fetch-axelements", 0);
    v10 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:v9];
    [(HNDAccessibilityManager *)self setElementFetchQueueTimer:v10];
    v11 = +[AXSettings sharedInstance];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10006B448;
    v17[3] = &unk_1001D3488;
    v17[4] = self;
    [v11 registerUpdateBlock:v17 forRetrieveSelector:"assistiveTouchInternalOnlyHiddenNubbitModeEnabled" withListener:self];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_10006B4A8, kAXSAssistiveTouchScannerEnabledNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v13 = +[SCATSwitchControlServerInstance serverInstance];
    v14 = +[NSDate date];
    [(HNDAccessibilityManager *)self setLastAppTransitionTime:v14];

    v15 = +[NSDate date];
    [(HNDAccessibilityManager *)self setLastLayoutChangeTime:v15];

    v16 = +[NSDate date];
    [(HNDAccessibilityManager *)self setLastScreenChangeTime:v16];
  }
}

- (id)_setupElementFetcher
{
  if ([(HNDAccessibilityManager *)self _elementFetchingRequired])
  {
    if ([(HNDAccessibilityManager *)self _isGroupingEnabled])
    {
      v3 = [(HNDAccessibilityManager *)self _isScannerEnabled];
    }

    else
    {
      v3 = 0;
    }

    v5 = [(HNDAccessibilityManager *)self _isSpeechEnabled];
    v6 = [AXElementFetcher alloc];
    v4 = [v6 initWithDelegate:self fetchEvents:AXFetchEventAllEvents enableEventManagement:0 enableGrouping:v3 shouldIncludeNonScannerElements:v5 beginEnabled:{-[HNDAccessibilityManager _elementFetchingRequired](self, "_elementFetchingRequired")}];
    [v4 registerFetchObserver:self targetQueue:&_dispatch_main_q];
    LODWORD(v7) = 1050253722;
    [v4 setFetchEventDefaultDelay:v7];
    LODWORD(v8) = 1050253722;
    [v4 setFetchEventUserRequestedDelay:v8];
    LODWORD(v9) = 1050253722;
    [v4 setFetchEventScrolledByPageDelay:v9];
    LODWORD(v10) = 1050253722;
    [v4 setFetchEventLayoutChangeDelay:v10];
    LODWORD(v11) = 1050253722;
    [v4 setFetchEventAlertAppearedDelay:v11];
    LODWORD(v12) = 1050253722;
    [v4 setFetchEventOrientationChangeDelay:v12];
    LODWORD(v13) = 1050253722;
    [v4 setFetchEventScreenChangeDelay:v13];
    LODWORD(v14) = 1050253722;
    [v4 setFetchEventAppTransitionDelay:v14];
    v15 = dispatch_queue_create("ignored-touch-regions", 0);
    ignoredTouchRegionsQueue = self->_ignoredTouchRegionsQueue;
    self->_ignoredTouchRegionsQueue = v15;

    [v4 setElementGroupingHeuristics:sub_100042D94() ^ 1];
    [v4 enableEventManagement];
    [(HNDAccessibilityManager *)self _resetPostEventFilterOnFetcher:v4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_resetPostEventFilterOnFetcher:(id)a3
{
  v4 = a3;
  [(HNDAccessibilityManager *)self _removePostEventFilterFromFetcher:v4];
  [(HNDAccessibilityManager *)self _addPostEventFilterToFetcher:v4];
}

- (void)_addPostEventFilterToFetcher:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006B7D0;
  v5[3] = &unk_1001D5818;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [v4 addPostFetchFilter:v5 withIdentifier:@"Scanner-Elements"];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

+ (id)sharedManager
{
  if (qword_100218AD8 != -1)
  {
    sub_100129B90();
  }

  [qword_100218AD0 _initialize];
  v2 = qword_100218AD0;

  return v2;
}

- (void)addObserver:(id)a3
{
  v5 = a3;
  v4 = [(HNDAccessibilityManager *)self accessibilityObservers];
  if (([v4 containsObject:v5] & 1) == 0)
  {
    [v4 addObject:v5];
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(HNDAccessibilityManager *)self accessibilityObservers];
  [v5 removeObject:v4];
}

- (void)_notifyObserversDidReceiveEvent:(int64_t)a3 data:(id)a4
{
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(HNDAccessibilityManager *)self accessibilityObservers];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 accessibilityManager:self didReceiveEvent:a3 data:v6];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_notifyObserversDidScheduleFetchEvent:(int64_t)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(HNDAccessibilityManager *)self accessibilityObservers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 accessibilityManager:self didScheduleFetchEvent:a3];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyObserversWillFetchElementsForEvent:(int64_t)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(HNDAccessibilityManager *)self accessibilityObservers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 accessibilityManager:self willFetchElementsForEvent:a3];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyObserversDidFetchElementsForEvent:(int64_t)a3 foundNewElements:(BOOL)a4
{
  v4 = a4;
  v7 = AXLogManager();
  if (os_signpost_enabled(v7))
  {
    *buf = 67109120;
    v20 = a3;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Did Fetch Elements for HNDAccessibilityEvent", "event=%d", buf, 8u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(HNDAccessibilityManager *)self accessibilityObservers];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 accessibilityManager:self didFetchElementsForEvent:a3 foundNewElements:v4];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)_notifyObserversNativeFocusElementDidChange:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(HNDAccessibilityManager *)self accessibilityObservers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 accessibilityManager:self nativeFocusElementDidChange:v4];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyObserversUpdateElementVisuals:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(HNDAccessibilityManager *)self accessibilityObservers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 accessibilityManager:self updateElementVisuals:v4];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyObserversApplicationWasActivated:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(HNDAccessibilityManager *)self accessibilityObservers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 accessibilityManager:self applicationWasActivated:v4];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyObserversScreenWillChange:(__CFData *)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(HNDAccessibilityManager *)self accessibilityObservers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 accessibilityManager:self screenWillChange:a3];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyObserversMediaDidBegin:(__CFData *)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(HNDAccessibilityManager *)self accessibilityObservers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 accessibilityManager:self mediaDidBegin:a3];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_enableApplicationAccessibility:(BOOL)a3
{
  v3 = a3;
  v4 = _AXSApplicationAccessibilityEnabled();
  if (v3 && !v4 || !v3 && v4 && _AXSCanDisableApplicationAccessibility())
  {

    _AXSApplicationAccessibilitySetEnabled();
  }
}

- (void)_initializeAccessibility
{
  [(HNDAccessibilityManager *)self _enableApplicationAccessibility:1];
  AXUIElementRegisterSystemWideServerDeathCallback();
  v3 = +[AXElement systemApplication];
  v4 = [v3 uiElement];
  v5 = [v4 axElement];

  if (v5)
  {
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_10006CA20;
    v25 = &unk_1001D3488;
    v26 = self;
    AXUIElementRegisterForApplicationDeath();
  }

  v6 = [(HNDAccessibilityManager *)self _setupElementFetcher];
  [(HNDAccessibilityManager *)self setElementFetcher:v6];

  v7 = +[AXElement systemWideElement];
  v8 = [v7 uiElement];
  v9 = [v8 axElement];

  pid = 0;
  AXUIElementGetPid(v9, &pid);
  v19 = pid;
  LOBYTE(v16) = 1;
  _AXLogWithFacility();
  observer = [(HNDAccessibilityManager *)self observer:v16];
  if (!observer)
  {
    if (AXObserverCreate(pid, sub_10006CA64, &observer))
    {
      LOBYTE(v17) = 1;
      v18 = @"Failed to create an accessibility event observer: %ld";
      goto LABEL_11;
    }

    [(HNDAccessibilityManager *)self setObserver:observer];
  }

  if ([(HNDAccessibilityManager *)self _elementFetchingRequired])
  {
    v10 = [(HNDAccessibilityManager *)self elementFetcher];
    [v10 enableEventManagement];

    v11 = [(HNDAccessibilityManager *)self elementFetcher];
    [v11 refresh];
  }

  RunLoopSource = AXObserverGetRunLoopSource(observer);
  if (RunLoopSource)
  {
    v13 = RunLoopSource;
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, v13, kCFRunLoopDefaultMode);
    return;
  }

  v18 = @"Failed to get the observer run loop source";
  LOBYTE(v17) = 1;
LABEL_11:
  _AXLogWithFacility();
  v15 = objc_autoreleasePoolPush();
  [(HNDAccessibilityManager *)self _handleSystemServerDied:v17];
  objc_autoreleasePoolPop(v15);
}

- (BOOL)_isElementInIgnoredTouchRegions:(id)a3
{
  v4 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  ignoredTouchRegionsQueue = self->_ignoredTouchRegionsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006CCF4;
  block[3] = &unk_1001D3550;
  block[4] = self;
  block[5] = &v21;
  dispatch_sync(ignoredTouchRegionsQueue, block);
  if (*(v22 + 24) == 1)
  {
    [v4 visiblePoint];
    v8 = v7;
    v9 = v6;
    if (v7 == -1.0 && v6 == -1.0)
    {
      [v4 centerPoint];
      v8 = v10;
      v9 = v11;
    }

    v12 = [v4 windowContextId];
    if (v12)
    {
      v13 = +[AXElement systemWideElement];
      [v13 convertPoint:v12 fromContextId:{v8, v9}];
      v8 = v14;
      v9 = v15;
    }

    v16 = self->_ignoredTouchRegionsQueue;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10006CD58;
    v19[3] = &unk_1001D34D8;
    *&v19[6] = v8;
    *&v19[7] = v9;
    v19[4] = self;
    v19[5] = &v25;
    dispatch_sync(v16, v19);
  }

  v17 = *(v26 + 24);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  return v17;
}

- (void)observeAXNotifications:(id)a3
{
  v4 = a3;
  v5 = [(HNDAccessibilityManager *)self notificationObserverQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006CF24;
  v7[3] = &unk_1001D36E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)stopObservingAXNotifications:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = [(HNDAccessibilityManager *)self observer];
  v5 = v13[3];
  if (v5)
  {
    CFRetain(v5);
  }

  v6 = [(HNDAccessibilityManager *)self notificationObserverQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006D24C;
  block[3] = &unk_1001D5860;
  v9 = v4;
  v10 = self;
  v11 = &v12;
  v7 = v4;
  dispatch_async(v6, block);

  _Block_object_dispose(&v12, 8);
}

- (void)removeNotificationObserverAndDealloc
{
  v3 = +[AXElement systemWideElement];
  [v3 setPassivelyListeningForEvents:0];

  v4 = [(HNDAccessibilityManager *)self observer];
  v5 = [(HNDAccessibilityManager *)self currentlyObservingNotifications];
  [(HNDAccessibilityManager *)self stopObservingAXNotifications:v5];

  if (v4)
  {
    CFRelease(v4);
  }

  [(HNDAccessibilityManager *)self setObserver:0];
  v6 = +[NSMutableArray array];
  [(HNDAccessibilityManager *)self setCurrentlyObservingNotifications:v6];
}

- (void)_observeNotifications:(BOOL)a3
{
  v3 = a3;
  objc_initWeak(&location, self);
  v5 = objc_loadWeakRetained(&location);
  v6 = v5;
  if (v3)
  {
    [v5 observeAXNotifications:&off_1001E4F20];

    if (+[AXSpringBoardServer isAvailable])
    {
      v7 = +[AXSpringBoardServer server];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10006D690;
      v10[3] = &unk_1001D48F0;
      v10[4] = self;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10006D720;
      v9[3] = &unk_1001D3AB0;
      v9[4] = self;
      [v7 registerSpringBoardActionHandler:v10 withIdentifierCallback:v9];
LABEL_6:
    }
  }

  else
  {
    [v5 removeNotificationObserverAndDealloc];

    if (+[AXSpringBoardServer isAvailable])
    {
      v7 = +[AXSpringBoardServer server];
      v8 = [(HNDAccessibilityManager *)self springboardActionIdentifier];
      [v7 removeActionHandler:v8];

      goto LABEL_6;
    }
  }

  objc_destroyWeak(&location);
}

- (void)_handleSystemServerDied
{
  if ([(HNDAccessibilityManager *)self observer])
  {
    [(HNDAccessibilityManager *)self _observeNotifications:0];
  }

  v3 = [(HNDAccessibilityManager *)self elementFetcher];
  [v3 disableEventManagement];

  AXPerformBlockOnMainThreadAfterDelay();
}

- (BOOL)frontmostAppMayBeLoading
{
  v3 = [(HNDAccessibilityManager *)self lastAppTransitionTime];

  if (v3)
  {
    v4 = [(HNDAccessibilityManager *)self lastAppTransitionTime];
    [v4 timeIntervalSinceNow];
    v6 = fabs(v5);

    if (v6 < 4.0)
    {
      return 1;
    }
  }

  else if (AXInPreboardScenario())
  {
    return 1;
  }

  v8 = [(HNDAccessibilityManager *)self lastScreenChangeTime];
  [v8 timeIntervalSinceNow];
  v10 = fabs(v9);

  v11 = [(HNDAccessibilityManager *)self lastLayoutChangeTime];
  [v11 timeIntervalSinceNow];
  v13 = fabs(v12);

  return fmin(v13, v10) < 1.0;
}

- (BOOL)applicationIsRTL
{
  v2 = [(HNDAccessibilityManager *)self currentApplications];
  v3 = [v2 firstObject];

  v4 = [v3 uiElement];
  v5 = [v4 BOOLWithAXAttribute:3026];

  return v5;
}

- (BOOL)hasZeroElements
{
  if ([(HNDAccessibilityManager *)self _isGroupingEnabled])
  {
    v3 = [(HNDAccessibilityManager *)self rootScannerGroup];
    v4 = [v3 firstDescendantPassingTest:&stru_1001D5880];
    v5 = v4 == 0;
  }

  else
  {
    v3 = [(HNDAccessibilityManager *)self elements];
    v5 = [v3 count] == 0;
  }

  return v5;
}

- (void)refreshElements
{
  v2 = [(HNDAccessibilityManager *)self elementFetcher];
  [v2 refresh];
}

- (BOOL)isFetchingElements
{
  v2 = [(HNDAccessibilityManager *)self elementFetcher];
  v3 = [v2 isFetchingElements];

  return v3;
}

- (BOOL)willFetchElements
{
  v2 = [(HNDAccessibilityManager *)self elementFetcher];
  v3 = [v2 willFetchElements];

  return v3;
}

- (void)_handleAppTransition
{
  v3 = AXLogManager();
  if (os_signpost_enabled(v3))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Handle", "App Transition", v8, 2u);
  }

  v4 = [(HNDAccessibilityManager *)self elementFetcher];
  [v4 fetchEventOccurred:2];

  v5 = +[NSDate date];
  [(HNDAccessibilityManager *)self setLastAppTransitionTime:v5];

  v6 = +[NSDate date];
  [(HNDAccessibilityManager *)self setLastLayoutChangeTime:v6];

  v7 = +[NSDate date];
  [(HNDAccessibilityManager *)self setLastScreenChangeTime:v7];

  [(HNDAccessibilityManager *)self _handleRefreshEvent:4 data:0];
}

- (void)_handleLayoutChanged:(id)a3
{
  v5 = a3;
  v4 = +[NSDate date];
  [(HNDAccessibilityManager *)self setLastLayoutChangeTime:v4];

  [(HNDAccessibilityManager *)self _handleRefreshEvent:3 data:v5];
}

- (void)_handleAnnouncementNotification:(id)a3
{
  v11 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v11 objectForKeyedSubscript:kAXPidKey], (v4 = objc_claimAutoreleasedReturnValue()) != 0) && (v5 = v4, objc_msgSend(v11, "objectForKeyedSubscript:", kAXNotificationDataKey), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = [v11 objectForKeyedSubscript:kAXNotificationDataKey];
    v8 = +[NSNull null];
    v9 = [v7 isEqual:v8];

    if ((v9 & 1) == 0)
    {
      if ([v7 isEqualToString:kAXAnnouncementTypeStopSpeech])
      {
        v10 = 11;
      }

      else
      {
        v10 = 10;
      }

      [(HNDAccessibilityManager *)self _handleRefreshEvent:v10 data:v7];
    }
  }

  else
  {
    _AXAssert();
  }
}

- (void)_handleScreenChanged:(id)a3
{
  v4 = a3;
  v5 = AXLogManager();
  if (os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Handle", "Screen Change", v7, 2u);
  }

  v6 = +[NSDate date];
  [(HNDAccessibilityManager *)self setLastScreenChangeTime:v6];

  [(HNDAccessibilityManager *)self _handleRefreshEvent:1 data:v4];
}

- (void)_requestPauseScanning
{
  [(HNDAccessibilityManager *)self setIsPausingScanning:1];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(HNDAccessibilityManager *)self accessibilityObservers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 accessibilityManagerShouldPauseScanning:self];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_requestResumeScanning
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(HNDAccessibilityManager *)self accessibilityObservers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 accessibilityManagerShouldResumeScanning:self];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(HNDAccessibilityManager *)self setIsPausingScanning:0];
}

- (id)_currentAppPids
{
  v3 = [(HNDAccessibilityManager *)self currentApplications];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(HNDAccessibilityManager *)self currentApplications];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) uiElement];
        v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v10 pid]);
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_handlePauseForPid:(int)a3
{
  v3 = *&a3;
  pauseCountsByPid = self->_pauseCountsByPid;
  if (!pauseCountsByPid)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = self->_pauseCountsByPid;
    self->_pauseCountsByPid = v6;

    pauseCountsByPid = self->_pauseCountsByPid;
  }

  v8 = [NSNumber numberWithInt:v3];
  v9 = [(NSMutableDictionary *)pauseCountsByPid objectForKeyedSubscript:v8];
  v10 = [v9 unsignedIntegerValue];

  v11 = SWCHLogPauseResume();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v12)
    {
      LOWORD(v22) = 0;
      v13 = "Pause count was already high, so not adding a reason again.";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v13, &v22, 2u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (v12)
  {
    LODWORD(v22) = 67109120;
    HIDWORD(v22) = v3;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Pause count was 0 for pid %i before handling notification.", &v22, 8u);
  }

  v14 = [(HNDAccessibilityManager *)self _currentAppPids];
  v15 = [NSNumber numberWithInt:v3];
  v16 = [v14 containsObject:v15];
  v17 = kAXUIServerFakePid;

  v11 = SWCHLogPauseResume();
  v18 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if ((v16 & 1) == 0 && v17 != v3)
  {
    if (v18)
    {
      LOWORD(v22) = 0;
      v13 = "Did not match current app or AXUIServer, so not asking scanner to disable.  That's a bit odd...";
      goto LABEL_12;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (v18)
  {
    LOWORD(v22) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Found matching pid, going to pause", &v22, 2u);
  }

  [(HNDAccessibilityManager *)self _requestPauseScanning];
LABEL_14:
  v19 = [NSNumber numberWithUnsignedInteger:v10 + 1, v22];
  v20 = self->_pauseCountsByPid;
  v21 = [NSNumber numberWithInt:v3];
  [(NSMutableDictionary *)v20 setObject:v19 forKeyedSubscript:v21];
}

- (void)_handleResumeForPid:(int)a3
{
  v3 = *&a3;
  pauseCountsByPid = self->_pauseCountsByPid;
  v6 = [NSNumber numberWithInt:?];
  v7 = [(NSMutableDictionary *)pauseCountsByPid objectForKeyedSubscript:v6];
  v8 = [v7 unsignedIntegerValue];

  if (v8)
  {
    v9 = v8 - 1;
    v10 = [NSNumber numberWithUnsignedInteger:v9];
    v11 = self->_pauseCountsByPid;
    v12 = [NSNumber numberWithInt:v3];
    [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:v12];

    v13 = SWCHLogPauseResume();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v20 = v3;
      v21 = 2048;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Decremented pause count for pid %i to %lu", buf, 0x12u);
    }

    if (!v9)
    {
      v14 = [(HNDAccessibilityManager *)self _currentAppPids];
      v15 = [NSNumber numberWithInt:v3];
      v16 = [v14 containsObject:v15];
      v17 = kAXUIServerFakePid;

      if ((v16 & 1) != 0 || v17 == v3)
      {
        v18 = SWCHLogPauseResume();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Can resume scanning if necessary, because our pid matched the current app or the AXUIServer", buf, 2u);
        }

        [(HNDAccessibilityManager *)self _requestResumeScanning];
      }
    }
  }

  else
  {
    _AXLogWithFacility();
  }
}

- (id)elements
{
  v2 = [(HNDAccessibilityManager *)self elementFetcher];
  v3 = [v2 availableElements];

  return v3;
}

- (id)nativeFocusElement
{
  v2 = [(HNDAccessibilityManager *)self elementFetcher];
  v3 = [v2 nativeFocusElement];

  return v3;
}

- (id)firstScannerElement
{
  v2 = [(HNDAccessibilityManager *)self elementFetcher];
  v3 = [v2 availableElements];
  v4 = [v3 firstObject];

  return v4;
}

- (id)lastScannerElement
{
  v2 = [(HNDAccessibilityManager *)self elementFetcher];
  v3 = [v2 availableElements];
  v4 = [v3 lastObject];

  return v4;
}

- (id)firstScannerGroupable
{
  v2 = [(HNDAccessibilityManager *)self rootScannerGroup];
  v3 = [v2 firstChild];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (v3)
      {
        _AXAssert();
      }
    }
  }

  return v3;
}

- (id)lastScannerGroupable
{
  v2 = [(HNDAccessibilityManager *)self rootScannerGroup];
  v3 = [v2 lastChild];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (v3)
      {
        _AXAssert();
      }
    }
  }

  return v3;
}

- (id)rootKeyboardGroup
{
  v2 = [(HNDAccessibilityManager *)self elementFetcher];
  v3 = [v2 keyboardGroup];

  return v3;
}

- (id)elementAtPoint:(CGPoint)a3 displayID:(unsigned int)a4
{
  v5 = [AXElement elementAtCoordinate:0 withVisualPadding:*&a4 displayID:a3.x, a3.y];
  v6 = [(HNDAccessibilityManager *)self _isGroupingEnabled];
  v7 = [(HNDAccessibilityManager *)self elementFetcher];
  v8 = v7;
  if (v6)
  {
    [v7 findGroupableMatchingGroupable:v5];
  }

  else
  {
    [v7 findElementMatchingElement:v5];
  }
  v9 = ;

  return v9;
}

- (id)findGroupableMatchingGroupable:(id)a3
{
  v4 = a3;
  v5 = [(HNDAccessibilityManager *)self elementFetcher];
  v6 = [v5 findGroupableMatchingGroupable:v4];

  return v6;
}

- (id)firstResponder
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(HNDAccessibilityManager *)self currentApplications];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) firstResponder];
        if (v7)
        {
          v8 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
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

- (id)elementsForMatchingBlock:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10006EEE4;
  v22[3] = &unk_1001D58A8;
  v6 = v4;
  v24 = v6;
  v7 = v5;
  v23 = v7;
  v8 = objc_retainBlock(v22);
  if ([(HNDAccessibilityManager *)self _isGroupingEnabled])
  {
    v9 = [(HNDAccessibilityManager *)self elementFetcher];
    v10 = [v9 rootGroup];
    [v10 enumerateLeafDescendantsUsingBlock:v8];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [(HNDAccessibilityManager *)self elementFetcher];
    v9 = [v11 availableElements];

    v12 = [v9 countByEnumeratingWithState:&v18 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v9);
          }

          (v8[2])(v8, *(*(&v18 + 1) + 8 * v15));
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v9 countByEnumeratingWithState:&v18 objects:v25 count:16];
      }

      while (v13);
    }
  }

  v16 = v7;
  return v7;
}

- (id)scrollViewsForAction:(int)a3 elementsToScroll:(id *)a4
{
  v7 = +[NSMutableOrderedSet orderedSet];
  v8 = +[NSMutableArray array];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10006F24C;
  v36[3] = &unk_1001D4070;
  v39 = a3;
  v9 = v7;
  v37 = v9;
  v10 = v8;
  v38 = v10;
  v11 = objc_retainBlock(v36);
  if ([(HNDAccessibilityManager *)self _isGroupingEnabled])
  {
    v12 = [(HNDAccessibilityManager *)self elementFetcher];
    v13 = [v12 rootGroup];
    [v13 enumerateLeafDescendantsUsingBlock:v11];
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = [(HNDAccessibilityManager *)self elementFetcher];
    v12 = [v14 availableElements];

    v15 = [v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v12);
          }

          (v11[2])(v11, *(*(&v32 + 1) + 8 * i));
        }

        v16 = [v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v16);
    }
  }

  v19 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = v9;
  v21 = [v20 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v29;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [AXElement elementWithAXUIElement:*(*(&v28 + 1) + 8 * j), v28];
        [v19 addObject:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v22);
  }

  if (a4)
  {
    v26 = v10;
    *a4 = v10;
  }

  return v19;
}

- (id)_itemForScanningWithElementCommunity:(id)a3 useFirst:(BOOL)a4
{
  v6 = a3;
  if ([(HNDAccessibilityManager *)self _isGroupingEnabled])
  {
    if (v6)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = [(HNDAccessibilityManager *)self rootScannerGroup];
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        while (2)
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * i);
            if ([v12 isGroup])
            {
              v13 = v12;
              v14 = [v13 elementCommunity];
              v15 = [v14 isEqual:v6];

              if (v15)
              {
                if (a4)
                {
                  [v13 firstChild];
                }

                else
                {
                  [v13 lastChild];
                }
                v17 = ;

                goto LABEL_25;
              }
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }

    if (a4)
    {
      [(HNDAccessibilityManager *)self firstScannerGroupable];
    }

    else
    {
      [(HNDAccessibilityManager *)self lastScannerGroupable];
    }
    v16 = ;
  }

  else
  {
    if (a4)
    {
      [(HNDAccessibilityManager *)self firstScannerElement];
    }

    else
    {
      [(HNDAccessibilityManager *)self lastScannerElement];
    }
    v16 = ;
  }

  v17 = v16;
LABEL_25:

  return v17;
}

- (id)_itemForScanningFromItem:(id)a3 inDirection:(BOOL)a4 didWrap:(BOOL *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [(HNDAccessibilityManager *)self _isGroupingEnabled];
  v10 = [(HNDAccessibilityManager *)self elementFetcher];
  v11 = v10;
  if (v9)
  {
    if (v6)
    {
      [v10 nextSiblingOfGroupable:v8 didWrap:a5];
    }

    else
    {
      [v10 previousSiblingOfGroupable:v8 didWrap:a5];
    }
    v12 = ;

    if (v12)
    {
      goto LABEL_21;
    }

    if ([v8 scatIsKeyboardKey])
    {
      v13 = [(HNDAccessibilityManager *)self elementFetcher];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10006F6AC;
      v18[3] = &unk_1001D3FE0;
      v19 = v8;
      v14 = [v13 findGroupableMatchingBlock:v18];

      if ([v14 isKeyboardKey])
      {
        v12 = [(HNDAccessibilityManager *)self _itemForScanningFromItem:v14 inDirection:v6 didWrap:a5];
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_21;
    }
  }

  else
  {
    if (v6)
    {
      [v10 nextSiblingOfElement:v8 didWrap:a5];
    }

    else
    {
      [v10 previousSiblingOfElement:v8 didWrap:a5];
    }
    v12 = ;

    if (v12)
    {
      goto LABEL_21;
    }

    if ([v8 scatIsKeyboardKey])
    {
      v15 = [(HNDAccessibilityManager *)self elementFetcher];
      v16 = [v15 closestElementToElement:v8];

      if ([v16 isKeyboardKey])
      {
        v12 = [(HNDAccessibilityManager *)self _itemForScanningFromItem:v16 inDirection:v6 didWrap:a5];
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_21;
    }
  }

  v12 = 0;
LABEL_21:

  return v12;
}

- (id)firstKeyboardItem
{
  v3 = [(HNDAccessibilityManager *)self _isGroupingEnabled];
  v4 = [(HNDAccessibilityManager *)self elementFetcher];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 keyboardGroup];
    v7 = [v6 firstChild];
  }

  else
  {
    v7 = [v4 findElementMatchingBlock:&stru_1001D58C8];
  }

  return v7;
}

- (id)lastKeyboardElement
{
  v3 = [(HNDAccessibilityManager *)self _isGroupingEnabled];
  v4 = [(HNDAccessibilityManager *)self elementFetcher];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 keyboardGroup];

    if (!v6)
    {
      v7 = [(HNDAccessibilityManager *)self elementFetcher];
      v8 = [v7 rootGroup];
      v6 = [v8 lastChild];
    }

    if ([v6 isGroup])
    {
      do
      {
        v5 = [v6 lastChild];

        v6 = v5;
      }

      while (([v5 isGroup] & 1) != 0);
    }

    else
    {
      v5 = v6;
    }

    if ([v5 conformsToProtocol:&OBJC_PROTOCOL___SCATElement])
    {
      v5 = v5;
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v9 = [v4 lastElement];
    if ([v9 isKeyboardKey])
    {
      v10 = [(HNDAccessibilityManager *)self elementFetcher];
      v11 = [v10 lastElement];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)firstElementInScene:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [(HNDAccessibilityManager *)self elementCommunityGroup];
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v19 = self;
      v7 = *v21;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v20 + 1) + 8 * i) isGroup])
          {
            objc_opt_class();
            v9 = __UIAccessibilityCastAsClass();
            v10 = [v9 firstLeafDescendant];
            v11 = [v10 uiElement];
            v12 = [v11 stringWithAXAttribute:3056];
            v13 = [v12 isEqualToString:v4];

            if (v13)
            {
              self = v19;
              v15 = [(HNDAccessibilityManager *)v19 elementFetcher];
              v16 = [v15 isGroupingEnabled];

              if (v16)
              {
                v17 = [v9 firstChild];
              }

              else
              {
                v17 = v10;
              }

              v6 = v17;

              goto LABEL_18;
            }
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }

      self = v19;
    }

LABEL_18:

    v14 = [(HNDAccessibilityManager *)self scannerElementMatchingElement:v6];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)scannerElementMatchingElement:(id)a3
{
  v4 = a3;
  v5 = [(HNDAccessibilityManager *)self elementFetcher];
  v6 = [v5 isGroupingEnabled];

  v7 = [(HNDAccessibilityManager *)self elementFetcher];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 rootGroup];
    v10 = [v9 firstDescendantMatchingItem:v4];

    v4 = v9;
  }

  else
  {
    v10 = [v7 findElementMatchingElement:v4];
  }

  return v10;
}

- (int64_t)_hndAccessibilityEventForFetchEvent:(unint64_t)a3
{
  if (a3 <= 15)
  {
    if (a3 == 2)
    {
      return 4;
    }

    if (a3 != 4)
    {
      return a3 == 8;
    }

    return 3;
  }

  else if (a3 > 63)
  {
    if (a3 != 64)
    {
      if (a3 == 128)
      {
        return 8;
      }

      return 0;
    }

    return 2;
  }

  else
  {
    if (a3 != 16)
    {
      if (a3 == 32)
      {
        return 7;
      }

      return 0;
    }

    return 6;
  }
}

- (void)groupingEnabledDidChange
{
  v3 = [(HNDAccessibilityManager *)self _isGroupingEnabled];
  v4 = [(HNDAccessibilityManager *)self elementFetcher];
  [v4 setGroupingEnabled:v3];

  [(HNDAccessibilityManager *)self refreshElements];
}

- (void)speechEnabledDidChange
{
  v3 = [(HNDAccessibilityManager *)self _isSpeechEnabled];
  v4 = [(HNDAccessibilityManager *)self elementFetcher];
  [v4 setShouldIncludeNonScannerElements:v3];

  [(HNDAccessibilityManager *)self refreshElements];
}

- (void)displaysDidChange:(id)a3
{
  v4 = a3;
  [(NSMutableDictionary *)self->_currentDisplays removeAllObjects];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        currentDisplays = self->_currentDisplays;
        v12 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v10 displayID]);
        [(NSMutableDictionary *)currentDisplays setObject:v10 forKey:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = [(HNDAccessibilityManager *)self elementFetcher];
  [(HNDAccessibilityManager *)self _resetPostEventFilterOnFetcher:v13];
}

- (void)userDidPerformSwitchAction
{
  v3 = SWCHLogPauseResume();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "User performed switch action", v5, 2u);
  }

  v4 = SWCHLogPauseResume();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100129BA4(v4);
  }

  [(HNDAccessibilityManager *)self _requestResumeScanning];
}

- (BOOL)isSystemSleeping:(id)a3
{
  v4 = +[AXSystemAppServer server];
  self->_isSystemSleeping = [v4 isSystemSleeping];

  return self->_isSystemSleeping;
}

- (void)fetcher:(id)a3 didScheduleFetchEvent:(unint64_t)a4
{
  v5 = [(HNDAccessibilityManager *)self _hndAccessibilityEventForFetchEvent:a4];

  [(HNDAccessibilityManager *)self _notifyObserversDidScheduleFetchEvent:v5];
}

- (void)fetcher:(id)a3 willFetchElementsForEvent:(unint64_t)a4 fromApplications:(id)a5
{
  [(HNDAccessibilityManager *)self setCurrentApplications:a5];
  v7 = +[AXBackBoardServer server];
  v8 = [v7 guidedAccessIgnoredRegions];

  ignoredTouchRegionsQueue = self->_ignoredTouchRegionsQueue;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000700D0;
  v14 = &unk_1001D36E8;
  v15 = self;
  v16 = v8;
  v10 = v8;
  dispatch_sync(ignoredTouchRegionsQueue, &v11);
  [(HNDAccessibilityManager *)self _notifyObserversWillFetchElementsForEvent:[(HNDAccessibilityManager *)self _hndAccessibilityEventForFetchEvent:a4, v11, v12, v13, v14, v15]];
}

- (void)fetcher:(id)a3 didFetchElementsForEvent:(unint64_t)a4 foundNewElements:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if ([(HNDAccessibilityManager *)self isPausingScanning])
  {
    v32 = a4;
    v33 = v8;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [(HNDAccessibilityManager *)self currentApplications];
    v9 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v36;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v35 + 1) + 8 * i);
          pauseCountsByPid = self->_pauseCountsByPid;
          v15 = [v13 uiElement];
          v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v15 pid]);
          v17 = [(NSMutableDictionary *)pauseCountsByPid objectForKeyedSubscript:v16];
          v18 = [v17 unsignedIntegerValue];

          if (v18)
          {
            v25 = SWCHLogPauseResume();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              v40 = v13;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Should remain paused because of app: %{public}@", buf, 0xCu);
            }

            v8 = v33;
            v5 = v5;
            goto LABEL_17;
          }
        }

        v10 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v19 = self->_pauseCountsByPid;
    v20 = [NSNumber numberWithInt:kAXUIServerFakePid];
    v21 = [(NSMutableDictionary *)v19 objectForKeyedSubscript:v20];
    v22 = [v21 unsignedIntegerValue];

    v23 = SWCHLogPauseResume();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
    if (v22)
    {
      v8 = v33;
      v5 = v5;
      if (v24)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "No apps were pausing, but the AXUIServer was.", buf, 2u);
      }
    }

    else
    {
      v8 = v33;
      v5 = v5;
      if (v24)
      {
        v31 = [(HNDAccessibilityManager *)self currentApplications];
        *buf = 138543362;
        v40 = v31;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "App changed (new apps are %{public}@), and we no longer need to be paused.", buf, 0xCu);
      }

      [(HNDAccessibilityManager *)self _requestResumeScanning];
    }

LABEL_17:
    a4 = v32;
  }

  v26 = [(HNDAccessibilityManager *)self rootScannerGroup];
  if ([v8 isGroupingEnabled])
  {
    v27 = [v8 rootGroup];
    [(HNDAccessibilityManager *)self setRootScannerGroup:v27];
  }

  else
  {
    [(HNDAccessibilityManager *)self setRootScannerGroup:0];
  }

  v28 = [v8 elementCommunityGroup];
  [(HNDAccessibilityManager *)self setElementCommunityGroup:v28];

  [(HNDAccessibilityManager *)self _notifyObserversDidFetchElementsForEvent:[(HNDAccessibilityManager *)self _hndAccessibilityEventForFetchEvent:a4] foundNewElements:v5];
  v29 = AXLogManager();
  if (os_signpost_enabled(v29))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Handle", "Finished Fetching Elements", buf, 2u);
  }

  v30 = objc_opt_self();
}

+ (void)_clearExistingSharedManager
{
  v2 = qword_100218AD0;
  qword_100218AD0 = 0;
}

@end