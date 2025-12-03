@interface HNDAccessibilityManager
+ (id)sharedManager;
+ (void)_clearExistingSharedManager;
- (AXElementFetcher)elementFetcher;
- (BOOL)_elementFetchingRequired;
- (BOOL)_hasCurrentApplicationMatchingBlock:(id)block;
- (BOOL)_isElementInIgnoredTouchRegions:(id)regions;
- (BOOL)_isGroupingEnabled;
- (BOOL)_isSpeechEnabled;
- (BOOL)applicationIsRTL;
- (BOOL)frontmostAppMayBeLoading;
- (BOOL)hasZeroElements;
- (BOOL)isFetchingElements;
- (BOOL)isSystemSleeping:(id)sleeping;
- (BOOL)willFetchElements;
- (id)_applicationMatchingBlock:(id)block inApplications:(id)applications;
- (id)_currentAppPids;
- (id)_currentApplicationMatchingBlock:(id)block;
- (id)_itemForScanningFromItem:(id)item inDirection:(BOOL)direction didWrap:(BOOL *)wrap;
- (id)_itemForScanningWithElementCommunity:(id)community useFirst:(BOOL)first;
- (id)_setupElementFetcher;
- (id)elementAtPoint:(CGPoint)point displayID:(unsigned int)d;
- (id)elements;
- (id)elementsForMatchingBlock:(id)block;
- (id)findGroupableMatchingGroupable:(id)groupable;
- (id)firstElementInScene:(id)scene;
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
- (id)scannerElementMatchingElement:(id)element;
- (id)scrollViewsForAction:(int)action elementsToScroll:(id *)scroll;
- (int64_t)_hndAccessibilityEventForFetchEvent:(unint64_t)event;
- (void)_addPostEventFilterToFetcher:(id)fetcher;
- (void)_enableApplicationAccessibility:(BOOL)accessibility;
- (void)_handleAnnouncementNotification:(id)notification;
- (void)_handleAppTransition;
- (void)_handleLayoutChanged:(id)changed;
- (void)_handlePauseForPid:(int)pid;
- (void)_handleResumeForPid:(int)pid;
- (void)_handleScreenChanged:(id)changed;
- (void)_handleSystemServerDied;
- (void)_initialize;
- (void)_initializeAccessibility;
- (void)_notifyObserversApplicationWasActivated:(id)activated;
- (void)_notifyObserversDidFetchElementsForEvent:(int64_t)event foundNewElements:(BOOL)elements;
- (void)_notifyObserversDidReceiveEvent:(int64_t)event data:(id)data;
- (void)_notifyObserversDidScheduleFetchEvent:(int64_t)event;
- (void)_notifyObserversMediaDidBegin:(__CFData *)begin;
- (void)_notifyObserversNativeFocusElementDidChange:(id)change;
- (void)_notifyObserversScreenWillChange:(__CFData *)change;
- (void)_notifyObserversUpdateElementVisuals:(id)visuals;
- (void)_notifyObserversWillFetchElementsForEvent:(int64_t)event;
- (void)_observeNotifications:(BOOL)notifications;
- (void)_requestPauseScanning;
- (void)_requestResumeScanning;
- (void)_resetPostEventFilterOnFetcher:(id)fetcher;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)displaysDidChange:(id)change;
- (void)fetcher:(id)fetcher didFetchElementsForEvent:(unint64_t)event foundNewElements:(BOOL)elements;
- (void)fetcher:(id)fetcher didScheduleFetchEvent:(unint64_t)event;
- (void)fetcher:(id)fetcher willFetchElementsForEvent:(unint64_t)event fromApplications:(id)applications;
- (void)groupingEnabledDidChange;
- (void)observeAXNotifications:(id)notifications;
- (void)refreshElements;
- (void)removeNotificationObserverAndDealloc;
- (void)removeObserver:(id)observer;
- (void)resetElementFetcher;
- (void)setElementFetcher:(id)fetcher;
- (void)speechEnabledDidChange;
- (void)stopObservingAXNotifications:(id)notifications;
- (void)updateCachedOrbPreviewWindow:(id)window;
- (void)userDidPerformSwitchAction;
@end

@implementation HNDAccessibilityManager

- (AXElementFetcher)elementFetcher
{
  if ([(HNDAccessibilityManager *)self _elementFetchingRequired]&& !self->_elementFetcher)
  {
    _setupElementFetcher = [(HNDAccessibilityManager *)self _setupElementFetcher];
    elementFetcher = self->_elementFetcher;
    self->_elementFetcher = _setupElementFetcher;

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

- (void)setElementFetcher:(id)fetcher
{
  fetcherCopy = fetcher;
  elementFetcher = self->_elementFetcher;
  p_elementFetcher = &self->_elementFetcher;
  if (elementFetcher != fetcherCopy)
  {
    v8 = fetcherCopy;
    objc_storeStrong(p_elementFetcher, fetcher);
    fetcherCopy = v8;
  }
}

- (void)updateCachedOrbPreviewWindow:(id)window
{
  if ([window isEqualToNumber:&__kCFBooleanTrue])
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (id)orbPreviewWindow
{
  axOrbPreviewWindow = [(HNDAccessibilityManager *)self axOrbPreviewWindow];

  if (!axOrbPreviewWindow)
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
  assistiveTouchGroupElementsEnabled = [v2 assistiveTouchGroupElementsEnabled];

  return assistiveTouchGroupElementsEnabled;
}

- (BOOL)_isSpeechEnabled
{
  v2 = +[AXSettings sharedInstance];
  assistiveTouchScannerSpeechEnabled = [v2 assistiveTouchScannerSpeechEnabled];

  return assistiveTouchScannerSpeechEnabled;
}

- (BOOL)_elementFetchingRequired
{
  if (_AXSAssistiveTouchScannerEnabled())
  {
    return 1;
  }

  v3 = +[AXSettings sharedInstance];
  assistiveTouchInternalOnlyHiddenNubbitModeEnabled = [v3 assistiveTouchInternalOnlyHiddenNubbitModeEnabled];

  return assistiveTouchInternalOnlyHiddenNubbitModeEnabled;
}

- (id)_applicationMatchingBlock:(id)block inApplications:(id)applications
{
  blockCopy = block;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  applicationsCopy = applications;
  v7 = [applicationsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(applicationsCopy);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (blockCopy[2](blockCopy, v10))
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [applicationsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)_currentApplicationMatchingBlock:(id)block
{
  blockCopy = block;
  currentApplications = [(HNDAccessibilityManager *)self currentApplications];
  v6 = [(HNDAccessibilityManager *)self _applicationMatchingBlock:blockCopy inApplications:currentApplications];

  return v6;
}

- (BOOL)_hasCurrentApplicationMatchingBlock:(id)block
{
  v3 = [(HNDAccessibilityManager *)self _currentApplicationMatchingBlock:block];
  v4 = v3 != 0;

  return v4;
}

- (void)resetElementFetcher
{
  _setupElementFetcher = [(HNDAccessibilityManager *)self _setupElementFetcher];
  [(HNDAccessibilityManager *)self setElementFetcher:_setupElementFetcher];

  v4 = SWCHLogElementNav();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    elementFetcher = [(HNDAccessibilityManager *)self elementFetcher];
    v6 = 138412290;
    v7 = elementFetcher;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Resetting element fetcher. New element fetcher: %@", &v6, 0xCu);
  }
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kAXSAssistiveTouchScannerEnabledNotification, 0);
  elementFetcher = [(HNDAccessibilityManager *)self elementFetcher];
  [elementFetcher disableEventManagement];

  elementFetcher2 = [(HNDAccessibilityManager *)self elementFetcher];
  [elementFetcher2 unregisterFetchObserver:self];

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
      _isScannerEnabled = [(HNDAccessibilityManager *)self _isScannerEnabled];
    }

    else
    {
      _isScannerEnabled = 0;
    }

    _isSpeechEnabled = [(HNDAccessibilityManager *)self _isSpeechEnabled];
    v6 = [AXElementFetcher alloc];
    v4 = [v6 initWithDelegate:self fetchEvents:AXFetchEventAllEvents enableEventManagement:0 enableGrouping:_isScannerEnabled shouldIncludeNonScannerElements:_isSpeechEnabled beginEnabled:{-[HNDAccessibilityManager _elementFetchingRequired](self, "_elementFetchingRequired")}];
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

- (void)_resetPostEventFilterOnFetcher:(id)fetcher
{
  fetcherCopy = fetcher;
  [(HNDAccessibilityManager *)self _removePostEventFilterFromFetcher:fetcherCopy];
  [(HNDAccessibilityManager *)self _addPostEventFilterToFetcher:fetcherCopy];
}

- (void)_addPostEventFilterToFetcher:(id)fetcher
{
  fetcherCopy = fetcher;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006B7D0;
  v5[3] = &unk_1001D5818;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [fetcherCopy addPostFetchFilter:v5 withIdentifier:@"Scanner-Elements"];
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

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  accessibilityObservers = [(HNDAccessibilityManager *)self accessibilityObservers];
  if (([accessibilityObservers containsObject:observerCopy] & 1) == 0)
  {
    [accessibilityObservers addObject:observerCopy];
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  accessibilityObservers = [(HNDAccessibilityManager *)self accessibilityObservers];
  [accessibilityObservers removeObject:observerCopy];
}

- (void)_notifyObserversDidReceiveEvent:(int64_t)event data:(id)data
{
  dataCopy = data;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  accessibilityObservers = [(HNDAccessibilityManager *)self accessibilityObservers];
  v8 = [accessibilityObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(accessibilityObservers);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 accessibilityManager:self didReceiveEvent:event data:dataCopy];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [accessibilityObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_notifyObserversDidScheduleFetchEvent:(int64_t)event
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  accessibilityObservers = [(HNDAccessibilityManager *)self accessibilityObservers];
  v6 = [accessibilityObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(accessibilityObservers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 accessibilityManager:self didScheduleFetchEvent:event];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [accessibilityObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyObserversWillFetchElementsForEvent:(int64_t)event
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  accessibilityObservers = [(HNDAccessibilityManager *)self accessibilityObservers];
  v6 = [accessibilityObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(accessibilityObservers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 accessibilityManager:self willFetchElementsForEvent:event];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [accessibilityObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyObserversDidFetchElementsForEvent:(int64_t)event foundNewElements:(BOOL)elements
{
  elementsCopy = elements;
  v7 = AXLogManager();
  if (os_signpost_enabled(v7))
  {
    *buf = 67109120;
    eventCopy = event;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Did Fetch Elements for HNDAccessibilityEvent", "event=%d", buf, 8u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  accessibilityObservers = [(HNDAccessibilityManager *)self accessibilityObservers];
  v9 = [accessibilityObservers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(accessibilityObservers);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 accessibilityManager:self didFetchElementsForEvent:event foundNewElements:elementsCopy];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [accessibilityObservers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)_notifyObserversNativeFocusElementDidChange:(id)change
{
  changeCopy = change;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  accessibilityObservers = [(HNDAccessibilityManager *)self accessibilityObservers];
  v6 = [accessibilityObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(accessibilityObservers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 accessibilityManager:self nativeFocusElementDidChange:changeCopy];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [accessibilityObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyObserversUpdateElementVisuals:(id)visuals
{
  visualsCopy = visuals;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  accessibilityObservers = [(HNDAccessibilityManager *)self accessibilityObservers];
  v6 = [accessibilityObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(accessibilityObservers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 accessibilityManager:self updateElementVisuals:visualsCopy];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [accessibilityObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyObserversApplicationWasActivated:(id)activated
{
  activatedCopy = activated;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  accessibilityObservers = [(HNDAccessibilityManager *)self accessibilityObservers];
  v6 = [accessibilityObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(accessibilityObservers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 accessibilityManager:self applicationWasActivated:activatedCopy];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [accessibilityObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyObserversScreenWillChange:(__CFData *)change
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  accessibilityObservers = [(HNDAccessibilityManager *)self accessibilityObservers];
  v6 = [accessibilityObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(accessibilityObservers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 accessibilityManager:self screenWillChange:change];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [accessibilityObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyObserversMediaDidBegin:(__CFData *)begin
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  accessibilityObservers = [(HNDAccessibilityManager *)self accessibilityObservers];
  v6 = [accessibilityObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(accessibilityObservers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 accessibilityManager:self mediaDidBegin:begin];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [accessibilityObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_enableApplicationAccessibility:(BOOL)accessibility
{
  accessibilityCopy = accessibility;
  v4 = _AXSApplicationAccessibilityEnabled();
  if (accessibilityCopy && !v4 || !accessibilityCopy && v4 && _AXSCanDisableApplicationAccessibility())
  {

    _AXSApplicationAccessibilitySetEnabled();
  }
}

- (void)_initializeAccessibility
{
  [(HNDAccessibilityManager *)self _enableApplicationAccessibility:1];
  AXUIElementRegisterSystemWideServerDeathCallback();
  v3 = +[AXElement systemApplication];
  uiElement = [v3 uiElement];
  axElement = [uiElement axElement];

  if (axElement)
  {
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_10006CA20;
    v25 = &unk_1001D3488;
    selfCopy = self;
    AXUIElementRegisterForApplicationDeath();
  }

  _setupElementFetcher = [(HNDAccessibilityManager *)self _setupElementFetcher];
  [(HNDAccessibilityManager *)self setElementFetcher:_setupElementFetcher];

  v7 = +[AXElement systemWideElement];
  uiElement2 = [v7 uiElement];
  axElement2 = [uiElement2 axElement];

  pid = 0;
  AXUIElementGetPid(axElement2, &pid);
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
    elementFetcher = [(HNDAccessibilityManager *)self elementFetcher];
    [elementFetcher enableEventManagement];

    elementFetcher2 = [(HNDAccessibilityManager *)self elementFetcher];
    [elementFetcher2 refresh];
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

- (BOOL)_isElementInIgnoredTouchRegions:(id)regions
{
  regionsCopy = regions;
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
    [regionsCopy visiblePoint];
    v8 = v7;
    v9 = v6;
    if (v7 == -1.0 && v6 == -1.0)
    {
      [regionsCopy centerPoint];
      v8 = v10;
      v9 = v11;
    }

    windowContextId = [regionsCopy windowContextId];
    if (windowContextId)
    {
      v13 = +[AXElement systemWideElement];
      [v13 convertPoint:windowContextId fromContextId:{v8, v9}];
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

- (void)observeAXNotifications:(id)notifications
{
  notificationsCopy = notifications;
  notificationObserverQueue = [(HNDAccessibilityManager *)self notificationObserverQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006CF24;
  v7[3] = &unk_1001D36E8;
  v7[4] = self;
  v8 = notificationsCopy;
  v6 = notificationsCopy;
  dispatch_async(notificationObserverQueue, v7);
}

- (void)stopObservingAXNotifications:(id)notifications
{
  notificationsCopy = notifications;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  observer = [(HNDAccessibilityManager *)self observer];
  v5 = v13[3];
  if (v5)
  {
    CFRetain(v5);
  }

  notificationObserverQueue = [(HNDAccessibilityManager *)self notificationObserverQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006D24C;
  block[3] = &unk_1001D5860;
  v9 = notificationsCopy;
  selfCopy = self;
  v11 = &v12;
  v7 = notificationsCopy;
  dispatch_async(notificationObserverQueue, block);

  _Block_object_dispose(&v12, 8);
}

- (void)removeNotificationObserverAndDealloc
{
  v3 = +[AXElement systemWideElement];
  [v3 setPassivelyListeningForEvents:0];

  observer = [(HNDAccessibilityManager *)self observer];
  currentlyObservingNotifications = [(HNDAccessibilityManager *)self currentlyObservingNotifications];
  [(HNDAccessibilityManager *)self stopObservingAXNotifications:currentlyObservingNotifications];

  if (observer)
  {
    CFRelease(observer);
  }

  [(HNDAccessibilityManager *)self setObserver:0];
  v6 = +[NSMutableArray array];
  [(HNDAccessibilityManager *)self setCurrentlyObservingNotifications:v6];
}

- (void)_observeNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  objc_initWeak(&location, self);
  v5 = objc_loadWeakRetained(&location);
  v6 = v5;
  if (notificationsCopy)
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
      springboardActionIdentifier = [(HNDAccessibilityManager *)self springboardActionIdentifier];
      [v7 removeActionHandler:springboardActionIdentifier];

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

  elementFetcher = [(HNDAccessibilityManager *)self elementFetcher];
  [elementFetcher disableEventManagement];

  AXPerformBlockOnMainThreadAfterDelay();
}

- (BOOL)frontmostAppMayBeLoading
{
  lastAppTransitionTime = [(HNDAccessibilityManager *)self lastAppTransitionTime];

  if (lastAppTransitionTime)
  {
    lastAppTransitionTime2 = [(HNDAccessibilityManager *)self lastAppTransitionTime];
    [lastAppTransitionTime2 timeIntervalSinceNow];
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

  lastScreenChangeTime = [(HNDAccessibilityManager *)self lastScreenChangeTime];
  [lastScreenChangeTime timeIntervalSinceNow];
  v10 = fabs(v9);

  lastLayoutChangeTime = [(HNDAccessibilityManager *)self lastLayoutChangeTime];
  [lastLayoutChangeTime timeIntervalSinceNow];
  v13 = fabs(v12);

  return fmin(v13, v10) < 1.0;
}

- (BOOL)applicationIsRTL
{
  currentApplications = [(HNDAccessibilityManager *)self currentApplications];
  firstObject = [currentApplications firstObject];

  uiElement = [firstObject uiElement];
  v5 = [uiElement BOOLWithAXAttribute:3026];

  return v5;
}

- (BOOL)hasZeroElements
{
  if ([(HNDAccessibilityManager *)self _isGroupingEnabled])
  {
    rootScannerGroup = [(HNDAccessibilityManager *)self rootScannerGroup];
    v4 = [rootScannerGroup firstDescendantPassingTest:&stru_1001D5880];
    v5 = v4 == 0;
  }

  else
  {
    rootScannerGroup = [(HNDAccessibilityManager *)self elements];
    v5 = [rootScannerGroup count] == 0;
  }

  return v5;
}

- (void)refreshElements
{
  elementFetcher = [(HNDAccessibilityManager *)self elementFetcher];
  [elementFetcher refresh];
}

- (BOOL)isFetchingElements
{
  elementFetcher = [(HNDAccessibilityManager *)self elementFetcher];
  isFetchingElements = [elementFetcher isFetchingElements];

  return isFetchingElements;
}

- (BOOL)willFetchElements
{
  elementFetcher = [(HNDAccessibilityManager *)self elementFetcher];
  willFetchElements = [elementFetcher willFetchElements];

  return willFetchElements;
}

- (void)_handleAppTransition
{
  v3 = AXLogManager();
  if (os_signpost_enabled(v3))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Handle", "App Transition", v8, 2u);
  }

  elementFetcher = [(HNDAccessibilityManager *)self elementFetcher];
  [elementFetcher fetchEventOccurred:2];

  v5 = +[NSDate date];
  [(HNDAccessibilityManager *)self setLastAppTransitionTime:v5];

  v6 = +[NSDate date];
  [(HNDAccessibilityManager *)self setLastLayoutChangeTime:v6];

  v7 = +[NSDate date];
  [(HNDAccessibilityManager *)self setLastScreenChangeTime:v7];

  [(HNDAccessibilityManager *)self _handleRefreshEvent:4 data:0];
}

- (void)_handleLayoutChanged:(id)changed
{
  changedCopy = changed;
  v4 = +[NSDate date];
  [(HNDAccessibilityManager *)self setLastLayoutChangeTime:v4];

  [(HNDAccessibilityManager *)self _handleRefreshEvent:3 data:changedCopy];
}

- (void)_handleAnnouncementNotification:(id)notification
{
  notificationCopy = notification;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([notificationCopy objectForKeyedSubscript:kAXPidKey], (v4 = objc_claimAutoreleasedReturnValue()) != 0) && (v5 = v4, objc_msgSend(notificationCopy, "objectForKeyedSubscript:", kAXNotificationDataKey), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = [notificationCopy objectForKeyedSubscript:kAXNotificationDataKey];
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

- (void)_handleScreenChanged:(id)changed
{
  changedCopy = changed;
  v5 = AXLogManager();
  if (os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Handle", "Screen Change", v7, 2u);
  }

  v6 = +[NSDate date];
  [(HNDAccessibilityManager *)self setLastScreenChangeTime:v6];

  [(HNDAccessibilityManager *)self _handleRefreshEvent:1 data:changedCopy];
}

- (void)_requestPauseScanning
{
  [(HNDAccessibilityManager *)self setIsPausingScanning:1];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  accessibilityObservers = [(HNDAccessibilityManager *)self accessibilityObservers];
  v4 = [accessibilityObservers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(accessibilityObservers);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 accessibilityManagerShouldPauseScanning:self];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [accessibilityObservers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  accessibilityObservers = [(HNDAccessibilityManager *)self accessibilityObservers];
  v4 = [accessibilityObservers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(accessibilityObservers);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 accessibilityManagerShouldResumeScanning:self];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [accessibilityObservers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(HNDAccessibilityManager *)self setIsPausingScanning:0];
}

- (id)_currentAppPids
{
  currentApplications = [(HNDAccessibilityManager *)self currentApplications];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [currentApplications count]);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  currentApplications2 = [(HNDAccessibilityManager *)self currentApplications];
  v6 = [currentApplications2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(currentApplications2);
        }

        uiElement = [*(*(&v13 + 1) + 8 * i) uiElement];
        v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [uiElement pid]);
        [v4 addObject:v11];
      }

      v7 = [currentApplications2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_handlePauseForPid:(int)pid
{
  v3 = *&pid;
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
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  v11 = SWCHLogPauseResume();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (unsignedIntegerValue)
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

  _currentAppPids = [(HNDAccessibilityManager *)self _currentAppPids];
  v15 = [NSNumber numberWithInt:v3];
  v16 = [_currentAppPids containsObject:v15];
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
  v19 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue + 1, v22];
  v20 = self->_pauseCountsByPid;
  v21 = [NSNumber numberWithInt:v3];
  [(NSMutableDictionary *)v20 setObject:v19 forKeyedSubscript:v21];
}

- (void)_handleResumeForPid:(int)pid
{
  v3 = *&pid;
  pauseCountsByPid = self->_pauseCountsByPid;
  v6 = [NSNumber numberWithInt:?];
  v7 = [(NSMutableDictionary *)pauseCountsByPid objectForKeyedSubscript:v6];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    v9 = unsignedIntegerValue - 1;
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
      _currentAppPids = [(HNDAccessibilityManager *)self _currentAppPids];
      v15 = [NSNumber numberWithInt:v3];
      v16 = [_currentAppPids containsObject:v15];
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
  elementFetcher = [(HNDAccessibilityManager *)self elementFetcher];
  availableElements = [elementFetcher availableElements];

  return availableElements;
}

- (id)nativeFocusElement
{
  elementFetcher = [(HNDAccessibilityManager *)self elementFetcher];
  nativeFocusElement = [elementFetcher nativeFocusElement];

  return nativeFocusElement;
}

- (id)firstScannerElement
{
  elementFetcher = [(HNDAccessibilityManager *)self elementFetcher];
  availableElements = [elementFetcher availableElements];
  firstObject = [availableElements firstObject];

  return firstObject;
}

- (id)lastScannerElement
{
  elementFetcher = [(HNDAccessibilityManager *)self elementFetcher];
  availableElements = [elementFetcher availableElements];
  lastObject = [availableElements lastObject];

  return lastObject;
}

- (id)firstScannerGroupable
{
  rootScannerGroup = [(HNDAccessibilityManager *)self rootScannerGroup];
  firstChild = [rootScannerGroup firstChild];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (firstChild)
      {
        _AXAssert();
      }
    }
  }

  return firstChild;
}

- (id)lastScannerGroupable
{
  rootScannerGroup = [(HNDAccessibilityManager *)self rootScannerGroup];
  lastChild = [rootScannerGroup lastChild];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (lastChild)
      {
        _AXAssert();
      }
    }
  }

  return lastChild;
}

- (id)rootKeyboardGroup
{
  elementFetcher = [(HNDAccessibilityManager *)self elementFetcher];
  keyboardGroup = [elementFetcher keyboardGroup];

  return keyboardGroup;
}

- (id)elementAtPoint:(CGPoint)point displayID:(unsigned int)d
{
  v5 = [AXElement elementAtCoordinate:0 withVisualPadding:*&d displayID:point.x, point.y];
  _isGroupingEnabled = [(HNDAccessibilityManager *)self _isGroupingEnabled];
  elementFetcher = [(HNDAccessibilityManager *)self elementFetcher];
  v8 = elementFetcher;
  if (_isGroupingEnabled)
  {
    [elementFetcher findGroupableMatchingGroupable:v5];
  }

  else
  {
    [elementFetcher findElementMatchingElement:v5];
  }
  v9 = ;

  return v9;
}

- (id)findGroupableMatchingGroupable:(id)groupable
{
  groupableCopy = groupable;
  elementFetcher = [(HNDAccessibilityManager *)self elementFetcher];
  v6 = [elementFetcher findGroupableMatchingGroupable:groupableCopy];

  return v6;
}

- (id)firstResponder
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  currentApplications = [(HNDAccessibilityManager *)self currentApplications];
  v3 = [currentApplications countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(currentApplications);
        }

        firstResponder = [*(*(&v10 + 1) + 8 * i) firstResponder];
        if (firstResponder)
        {
          v8 = firstResponder;
          goto LABEL_11;
        }
      }

      v4 = [currentApplications countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (id)elementsForMatchingBlock:(id)block
{
  blockCopy = block;
  v5 = +[NSMutableArray array];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10006EEE4;
  v22[3] = &unk_1001D58A8;
  v6 = blockCopy;
  v24 = v6;
  v7 = v5;
  v23 = v7;
  v8 = objc_retainBlock(v22);
  if ([(HNDAccessibilityManager *)self _isGroupingEnabled])
  {
    elementFetcher = [(HNDAccessibilityManager *)self elementFetcher];
    rootGroup = [elementFetcher rootGroup];
    [rootGroup enumerateLeafDescendantsUsingBlock:v8];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    elementFetcher2 = [(HNDAccessibilityManager *)self elementFetcher];
    elementFetcher = [elementFetcher2 availableElements];

    v12 = [elementFetcher countByEnumeratingWithState:&v18 objects:v25 count:16];
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
            objc_enumerationMutation(elementFetcher);
          }

          (v8[2])(v8, *(*(&v18 + 1) + 8 * v15));
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [elementFetcher countByEnumeratingWithState:&v18 objects:v25 count:16];
      }

      while (v13);
    }
  }

  v16 = v7;
  return v7;
}

- (id)scrollViewsForAction:(int)action elementsToScroll:(id *)scroll
{
  v7 = +[NSMutableOrderedSet orderedSet];
  v8 = +[NSMutableArray array];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10006F24C;
  v36[3] = &unk_1001D4070;
  actionCopy = action;
  v9 = v7;
  v37 = v9;
  v10 = v8;
  v38 = v10;
  v11 = objc_retainBlock(v36);
  if ([(HNDAccessibilityManager *)self _isGroupingEnabled])
  {
    elementFetcher = [(HNDAccessibilityManager *)self elementFetcher];
    rootGroup = [elementFetcher rootGroup];
    [rootGroup enumerateLeafDescendantsUsingBlock:v11];
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    elementFetcher2 = [(HNDAccessibilityManager *)self elementFetcher];
    elementFetcher = [elementFetcher2 availableElements];

    v15 = [elementFetcher countByEnumeratingWithState:&v32 objects:v41 count:16];
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
            objc_enumerationMutation(elementFetcher);
          }

          (v11[2])(v11, *(*(&v32 + 1) + 8 * i));
        }

        v16 = [elementFetcher countByEnumeratingWithState:&v32 objects:v41 count:16];
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

  if (scroll)
  {
    v26 = v10;
    *scroll = v10;
  }

  return v19;
}

- (id)_itemForScanningWithElementCommunity:(id)community useFirst:(BOOL)first
{
  communityCopy = community;
  if ([(HNDAccessibilityManager *)self _isGroupingEnabled])
  {
    if (communityCopy)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      rootScannerGroup = [(HNDAccessibilityManager *)self rootScannerGroup];
      v8 = [rootScannerGroup countByEnumeratingWithState:&v19 objects:v23 count:16];
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
              objc_enumerationMutation(rootScannerGroup);
            }

            v12 = *(*(&v19 + 1) + 8 * i);
            if ([v12 isGroup])
            {
              v13 = v12;
              elementCommunity = [v13 elementCommunity];
              v15 = [elementCommunity isEqual:communityCopy];

              if (v15)
              {
                if (first)
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

          v9 = [rootScannerGroup countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }

    if (first)
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
    if (first)
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

- (id)_itemForScanningFromItem:(id)item inDirection:(BOOL)direction didWrap:(BOOL *)wrap
{
  directionCopy = direction;
  itemCopy = item;
  _isGroupingEnabled = [(HNDAccessibilityManager *)self _isGroupingEnabled];
  elementFetcher = [(HNDAccessibilityManager *)self elementFetcher];
  v11 = elementFetcher;
  if (_isGroupingEnabled)
  {
    if (directionCopy)
    {
      [elementFetcher nextSiblingOfGroupable:itemCopy didWrap:wrap];
    }

    else
    {
      [elementFetcher previousSiblingOfGroupable:itemCopy didWrap:wrap];
    }
    v12 = ;

    if (v12)
    {
      goto LABEL_21;
    }

    if ([itemCopy scatIsKeyboardKey])
    {
      elementFetcher2 = [(HNDAccessibilityManager *)self elementFetcher];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10006F6AC;
      v18[3] = &unk_1001D3FE0;
      v19 = itemCopy;
      v14 = [elementFetcher2 findGroupableMatchingBlock:v18];

      if ([v14 isKeyboardKey])
      {
        v12 = [(HNDAccessibilityManager *)self _itemForScanningFromItem:v14 inDirection:directionCopy didWrap:wrap];
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
    if (directionCopy)
    {
      [elementFetcher nextSiblingOfElement:itemCopy didWrap:wrap];
    }

    else
    {
      [elementFetcher previousSiblingOfElement:itemCopy didWrap:wrap];
    }
    v12 = ;

    if (v12)
    {
      goto LABEL_21;
    }

    if ([itemCopy scatIsKeyboardKey])
    {
      elementFetcher3 = [(HNDAccessibilityManager *)self elementFetcher];
      v16 = [elementFetcher3 closestElementToElement:itemCopy];

      if ([v16 isKeyboardKey])
      {
        v12 = [(HNDAccessibilityManager *)self _itemForScanningFromItem:v16 inDirection:directionCopy didWrap:wrap];
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
  _isGroupingEnabled = [(HNDAccessibilityManager *)self _isGroupingEnabled];
  elementFetcher = [(HNDAccessibilityManager *)self elementFetcher];
  v5 = elementFetcher;
  if (_isGroupingEnabled)
  {
    keyboardGroup = [elementFetcher keyboardGroup];
    firstChild = [keyboardGroup firstChild];
  }

  else
  {
    firstChild = [elementFetcher findElementMatchingBlock:&stru_1001D58C8];
  }

  return firstChild;
}

- (id)lastKeyboardElement
{
  _isGroupingEnabled = [(HNDAccessibilityManager *)self _isGroupingEnabled];
  elementFetcher = [(HNDAccessibilityManager *)self elementFetcher];
  lastChild = elementFetcher;
  if (_isGroupingEnabled)
  {
    keyboardGroup = [elementFetcher keyboardGroup];

    if (!keyboardGroup)
    {
      elementFetcher2 = [(HNDAccessibilityManager *)self elementFetcher];
      rootGroup = [elementFetcher2 rootGroup];
      keyboardGroup = [rootGroup lastChild];
    }

    if ([keyboardGroup isGroup])
    {
      do
      {
        lastChild = [keyboardGroup lastChild];

        keyboardGroup = lastChild;
      }

      while (([lastChild isGroup] & 1) != 0);
    }

    else
    {
      lastChild = keyboardGroup;
    }

    if ([lastChild conformsToProtocol:&OBJC_PROTOCOL___SCATElement])
    {
      lastChild = lastChild;
      lastElement2 = lastChild;
    }

    else
    {
      lastElement2 = 0;
    }
  }

  else
  {
    lastElement = [elementFetcher lastElement];
    if ([lastElement isKeyboardKey])
    {
      elementFetcher3 = [(HNDAccessibilityManager *)self elementFetcher];
      lastElement2 = [elementFetcher3 lastElement];
    }

    else
    {
      lastElement2 = 0;
    }
  }

  return lastElement2;
}

- (id)firstElementInScene:(id)scene
{
  sceneCopy = scene;
  if ([sceneCopy length])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    elementCommunityGroup = [(HNDAccessibilityManager *)self elementCommunityGroup];
    v6 = [elementCommunityGroup countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      selfCopy = self;
      v7 = *v21;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(elementCommunityGroup);
          }

          if ([*(*(&v20 + 1) + 8 * i) isGroup])
          {
            objc_opt_class();
            v9 = __UIAccessibilityCastAsClass();
            firstLeafDescendant = [v9 firstLeafDescendant];
            uiElement = [firstLeafDescendant uiElement];
            v12 = [uiElement stringWithAXAttribute:3056];
            v13 = [v12 isEqualToString:sceneCopy];

            if (v13)
            {
              self = selfCopy;
              elementFetcher = [(HNDAccessibilityManager *)selfCopy elementFetcher];
              isGroupingEnabled = [elementFetcher isGroupingEnabled];

              if (isGroupingEnabled)
              {
                firstChild = [v9 firstChild];
              }

              else
              {
                firstChild = firstLeafDescendant;
              }

              v6 = firstChild;

              goto LABEL_18;
            }
          }
        }

        v6 = [elementCommunityGroup countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }

      self = selfCopy;
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

- (id)scannerElementMatchingElement:(id)element
{
  elementCopy = element;
  elementFetcher = [(HNDAccessibilityManager *)self elementFetcher];
  isGroupingEnabled = [elementFetcher isGroupingEnabled];

  elementFetcher2 = [(HNDAccessibilityManager *)self elementFetcher];
  v8 = elementFetcher2;
  if (isGroupingEnabled)
  {
    rootGroup = [elementFetcher2 rootGroup];
    v10 = [rootGroup firstDescendantMatchingItem:elementCopy];

    elementCopy = rootGroup;
  }

  else
  {
    v10 = [elementFetcher2 findElementMatchingElement:elementCopy];
  }

  return v10;
}

- (int64_t)_hndAccessibilityEventForFetchEvent:(unint64_t)event
{
  if (event <= 15)
  {
    if (event == 2)
    {
      return 4;
    }

    if (event != 4)
    {
      return event == 8;
    }

    return 3;
  }

  else if (event > 63)
  {
    if (event != 64)
    {
      if (event == 128)
      {
        return 8;
      }

      return 0;
    }

    return 2;
  }

  else
  {
    if (event != 16)
    {
      if (event == 32)
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
  _isGroupingEnabled = [(HNDAccessibilityManager *)self _isGroupingEnabled];
  elementFetcher = [(HNDAccessibilityManager *)self elementFetcher];
  [elementFetcher setGroupingEnabled:_isGroupingEnabled];

  [(HNDAccessibilityManager *)self refreshElements];
}

- (void)speechEnabledDidChange
{
  _isSpeechEnabled = [(HNDAccessibilityManager *)self _isSpeechEnabled];
  elementFetcher = [(HNDAccessibilityManager *)self elementFetcher];
  [elementFetcher setShouldIncludeNonScannerElements:_isSpeechEnabled];

  [(HNDAccessibilityManager *)self refreshElements];
}

- (void)displaysDidChange:(id)change
{
  changeCopy = change;
  [(NSMutableDictionary *)self->_currentDisplays removeAllObjects];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = changeCopy;
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

  elementFetcher = [(HNDAccessibilityManager *)self elementFetcher];
  [(HNDAccessibilityManager *)self _resetPostEventFilterOnFetcher:elementFetcher];
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

- (BOOL)isSystemSleeping:(id)sleeping
{
  v4 = +[AXSystemAppServer server];
  self->_isSystemSleeping = [v4 isSystemSleeping];

  return self->_isSystemSleeping;
}

- (void)fetcher:(id)fetcher didScheduleFetchEvent:(unint64_t)event
{
  v5 = [(HNDAccessibilityManager *)self _hndAccessibilityEventForFetchEvent:event];

  [(HNDAccessibilityManager *)self _notifyObserversDidScheduleFetchEvent:v5];
}

- (void)fetcher:(id)fetcher willFetchElementsForEvent:(unint64_t)event fromApplications:(id)applications
{
  [(HNDAccessibilityManager *)self setCurrentApplications:applications];
  v7 = +[AXBackBoardServer server];
  guidedAccessIgnoredRegions = [v7 guidedAccessIgnoredRegions];

  ignoredTouchRegionsQueue = self->_ignoredTouchRegionsQueue;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000700D0;
  v14 = &unk_1001D36E8;
  selfCopy = self;
  v16 = guidedAccessIgnoredRegions;
  v10 = guidedAccessIgnoredRegions;
  dispatch_sync(ignoredTouchRegionsQueue, &v11);
  [(HNDAccessibilityManager *)self _notifyObserversWillFetchElementsForEvent:[(HNDAccessibilityManager *)self _hndAccessibilityEventForFetchEvent:event, v11, v12, v13, v14, selfCopy]];
}

- (void)fetcher:(id)fetcher didFetchElementsForEvent:(unint64_t)event foundNewElements:(BOOL)elements
{
  elementsCopy = elements;
  fetcherCopy = fetcher;
  if ([(HNDAccessibilityManager *)self isPausingScanning])
  {
    eventCopy = event;
    v33 = fetcherCopy;
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
          uiElement = [v13 uiElement];
          v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [uiElement pid]);
          v17 = [(NSMutableDictionary *)pauseCountsByPid objectForKeyedSubscript:v16];
          unsignedIntegerValue = [v17 unsignedIntegerValue];

          if (unsignedIntegerValue)
          {
            v25 = SWCHLogPauseResume();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              v40 = v13;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Should remain paused because of app: %{public}@", buf, 0xCu);
            }

            fetcherCopy = v33;
            elementsCopy = elementsCopy;
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
    unsignedIntegerValue2 = [v21 unsignedIntegerValue];

    v23 = SWCHLogPauseResume();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
    if (unsignedIntegerValue2)
    {
      fetcherCopy = v33;
      elementsCopy = elementsCopy;
      if (v24)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "No apps were pausing, but the AXUIServer was.", buf, 2u);
      }
    }

    else
    {
      fetcherCopy = v33;
      elementsCopy = elementsCopy;
      if (v24)
      {
        currentApplications = [(HNDAccessibilityManager *)self currentApplications];
        *buf = 138543362;
        v40 = currentApplications;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "App changed (new apps are %{public}@), and we no longer need to be paused.", buf, 0xCu);
      }

      [(HNDAccessibilityManager *)self _requestResumeScanning];
    }

LABEL_17:
    event = eventCopy;
  }

  rootScannerGroup = [(HNDAccessibilityManager *)self rootScannerGroup];
  if ([fetcherCopy isGroupingEnabled])
  {
    rootGroup = [fetcherCopy rootGroup];
    [(HNDAccessibilityManager *)self setRootScannerGroup:rootGroup];
  }

  else
  {
    [(HNDAccessibilityManager *)self setRootScannerGroup:0];
  }

  elementCommunityGroup = [fetcherCopy elementCommunityGroup];
  [(HNDAccessibilityManager *)self setElementCommunityGroup:elementCommunityGroup];

  [(HNDAccessibilityManager *)self _notifyObserversDidFetchElementsForEvent:[(HNDAccessibilityManager *)self _hndAccessibilityEventForFetchEvent:event] foundNewElements:elementsCopy];
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