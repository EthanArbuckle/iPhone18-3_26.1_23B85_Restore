@interface FKAApplicationDelegate
- (AXElementActionManager)elementActionManager;
- (AXUIBannerPresenter)bannerPresenter;
- (BOOL)_areActionsValidForElement:(id)element;
- (BOOL)_canEnableFocusRingCheckingSystemSleepingState:(BOOL)state;
- (BOOL)_dismissActionsControllerByForce:(BOOL)force;
- (BOOL)_sceneVendedByOneness:(id)oneness;
- (BOOL)actionManagerCanAvoidRepostingTextInput:(id)input;
- (BOOL)canMoveApplicationFocusForActionManager:(id)manager;
- (BOOL)dismissHelpForActionManager:(id)manager;
- (BOOL)eventManager:(id)manager shouldRepostEvent:(id)event;
- (FKAActionManager)actionManager;
- (FKAApplicationDelegate)init;
- (FKARootViewController)nonInteractiveRootViewController;
- (FKARootViewController)rootViewController;
- (UIWindow)nonInteractiveWindow;
- (id)_fkaDelegateScenes;
- (id)_keyChordForExitingTextMode;
- (id)_sceneDelegateForFocusedElement;
- (id)_sceneDelegates;
- (id)gestureViewController;
- (void)_addTransientCommandsForGesturesMode;
- (void)_announceCommandList:(id)list;
- (void)_didUpdateAvailableCommandsWithUpdatedMap:(id)map;
- (void)_didUpdateFocusRingTimeout;
- (void)_didUpdateHardwareKeyboardAttachedStatus;
- (void)_disableFocusRing;
- (void)_disableFocusRingForTimeout;
- (void)_dismissTextEditingModeInstructionsIfNeeded;
- (void)_enableFocusRingWithTimeout;
- (void)_handleNativeFocusItemChange:(id)change;
- (void)_handleScreenChange;
- (void)_hideTypeaheadSynchronously;
- (void)_resetFocusRingTimeout;
- (void)_setupUI;
- (void)_showActionsForElement:(id)element;
- (void)_showDebugBannerText:(id)text;
- (void)_showTypeaheadNames;
- (void)_updateTypeaheadNamesViewControllerItems;
- (void)_updateTypeaheadNamesViewControllerItemsForQueryString:(id)string;
- (void)_wakeDeviceIfNeeded;
- (void)actionManager:(id)manager showActionsForElement:(id)element;
- (void)dealloc;
- (void)didFinishLaunching;
- (void)didMoveToInnerElementForActionManager:(id)manager;
- (void)didReleaseNativeFocus;
- (void)didSuppressCommandForActionManager:(id)manager;
- (void)didToggleNotificationCenterForActionManager:(id)manager;
- (void)enumerateSceneDelegatesWithBlock:(id)block;
- (void)eventManager:(id)manager repostEvent:(id)event;
- (void)eventTap:(id)tap handleKeyboardEvent:(id)event;
- (void)observer:(id)observer didObserveNotification:(int)notification notificationData:(void *)data;
- (void)setGesturesModeEnabled:(BOOL)enabled;
- (void)setPassthroughModeEnabled:(BOOL)enabled;
- (void)setShouldIgnoreNextScreenChange:(BOOL)change;
- (void)showDebugDisplay:(id)display;
- (void)showDebugDisplayWithKeyChord:(id)chord;
- (void)showHelpForActionManager:(id)manager;
- (void)toggleGesturesModeForActionManager:(id)manager;
- (void)togglePassthroughModeForActionManager:(id)manager;
- (void)toggleTypeaheadForActionManager:(id)manager;
- (void)typeaheadViewController:(id)controller didChangeQueryString:(id)string;
- (void)typeaheadViewControllerDidTypeReturn:(id)return;
- (void)typeaheadViewControllerWillAppear:(id)appear;
- (void)typeaheadViewControllerWillDismiss:(id)dismiss;
- (void)willAquireNativeFocus;
- (void)willDismissFloatingViewForPresenter:(id)presenter;
- (void)willTerminate;
@end

@implementation FKAApplicationDelegate

- (FKAApplicationDelegate)init
{
  v32.receiver = self;
  v32.super_class = FKAApplicationDelegate;
  v2 = [(FKAApplicationDelegate *)&v32 init];
  if (v2)
  {
    v3 = FKALogCommon();
    if (os_signpost_enabled(v3))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "FullKeyboardAccessStartProcess", &unk_1000231F3, buf, 2u);
    }

    [AXUIElement applyElementAttributeCacheScheme:5];
    v4 = objc_opt_new();
    [v4 setDelegate:v2];
    v5 = +[FKAAvailableCommands sharedInstance];
    commandMap = [v5 commandMap];

    v7 = [[AXSSEventManager alloc] initWithActionManager:v4 commandMap:commandMap];
    eventManager = v2->_eventManager;
    v2->_eventManager = v7;

    [(AXSSEventManager *)v2->_eventManager setFilterDelegate:v2];
    [(AXSSEventManager *)v2->_eventManager setShouldSuppressCommands:_AXSFullKeyboardAccessFocusRingEnabled() == 0];
    [(FKAApplicationDelegate *)v2 setNativeFocusElementDisplayID:0xFFFFFFFFLL];
    v9 = [AXNotificationObserver alloc];
    _notificationsToRegister = [(FKAApplicationDelegate *)v2 _notificationsToRegister];
    v11 = [v9 initWithNotifications:_notificationsToRegister];

    [v11 setDelegate:v2];
    [(FKAApplicationDelegate *)v2 setAxNotificationObserver:v11];
    objc_initWeak(buf, v2);
    v12 = +[FKAAvailableCommands sharedInstance];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10000F6C0;
    v29[3] = &unk_100028970;
    objc_copyWeak(&v30, buf);
    v13 = [v12 registerUpdateBlock:v29];
    availableCommandsUpdateToken = v2->_availableCommandsUpdateToken;
    v2->_availableCommandsUpdateToken = v13;

    v15 = +[AXSettings sharedInstance];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10000F734;
    v27[3] = &unk_100028998;
    objc_copyWeak(&v28, buf);
    [v15 registerUpdateBlock:v27 forRetrieveSelector:"fullKeyboardAccessFocusRingTimeoutEnabled" withListener:v2];

    objc_destroyWeak(&v28);
    v16 = +[AXSettings sharedInstance];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10000F774;
    v25[3] = &unk_100028998;
    objc_copyWeak(&v26, buf);
    [v16 registerUpdateBlock:v25 forRetrieveSelector:"fullKeyboardAccessFocusRingTimeout" withListener:v2];

    objc_destroyWeak(&v26);
    v17 = +[AXBackBoardServer server];
    [v17 registerFullKeyboardAccessDaemonPID:getpid()];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_10000F7B4, [NSString stringWithUTF8String:kGSEventHardwareKeyboardAvailabilityChangedNotification], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v19 = objc_opt_new();
    [(FKAApplicationDelegate *)v2 setEventTap:v19];

    eventTap = [(FKAApplicationDelegate *)v2 eventTap];
    [eventTap setDelegate:v2];

    v21 = FKALogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Enabling focus ring at launch.", v24, 2u);
    }

    [(FKAApplicationDelegate *)v2 _enableFocusRingIfNecessary];
    v22 = FKALogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Disabling passthrough mode at launch.", v24, 2u);
    }

    _AXSFullKeyboardAccessSetPassthroughModeEnabled();
    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[FKAAvailableCommands sharedInstance];
  [v3 unregisterUpdateBlockWithToken:self->_availableCommandsUpdateToken];

  v4.receiver = self;
  v4.super_class = FKAApplicationDelegate;
  [(FKAApplicationDelegate *)&v4 dealloc];
}

- (FKAActionManager)actionManager
{
  eventManager = [(FKAApplicationDelegate *)self eventManager];
  actionManager = [eventManager actionManager];

  return actionManager;
}

- (AXElementActionManager)elementActionManager
{
  elementActionManager = self->_elementActionManager;
  if (!elementActionManager)
  {
    v4 = [AXElementActionManager alloc];
    v5 = [v4 initWithDragServiceName:AXDragServiceNameFullKeyboardAccess];
    v6 = self->_elementActionManager;
    self->_elementActionManager = v5;

    [(AXElementActionManager *)self->_elementActionManager setShouldIncludeMedusaActions:1];
    elementActionManager = self->_elementActionManager;
  }

  return elementActionManager;
}

- (AXUIBannerPresenter)bannerPresenter
{
  rootViewController = [(FKAApplicationDelegate *)self rootViewController];
  bannerPresenter = [rootViewController bannerPresenter];

  if (!bannerPresenter)
  {
    v5 = [FKABannerPresenter alloc];
    nonInteractiveWindow = [(FKAApplicationDelegate *)self nonInteractiveWindow];
    v7 = [(FKABannerPresenter *)v5 initWithContainingView:nonInteractiveWindow];
    rootViewController2 = [(FKAApplicationDelegate *)self rootViewController];
    [rootViewController2 setBannerPresenter:v7];

    rootViewController3 = [(FKAApplicationDelegate *)self rootViewController];
    bannerPresenter2 = [rootViewController3 bannerPresenter];
    [bannerPresenter2 setDelegate:self];
  }

  rootViewController4 = [(FKAApplicationDelegate *)self rootViewController];
  bannerPresenter3 = [rootViewController4 bannerPresenter];

  return bannerPresenter3;
}

- (void)setShouldIgnoreNextScreenChange:(BOOL)change
{
  if (self->_shouldIgnoreNextScreenChange != change)
  {
    v12 = v3;
    v13 = v4;
    changeCopy = change;
    self->_shouldIgnoreNextScreenChange = change;
    v6 = FKALogCommon();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (changeCopy)
    {
      if (v7)
      {
        v11 = 0;
        v8 = "Ignoring next screen change.";
        v9 = &v11;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v8, v9, 2u);
      }
    }

    else if (v7)
    {
      v10 = 0;
      v8 = "Stopped ignoring screen changes.";
      v9 = &v10;
      goto LABEL_7;
    }
  }
}

- (void)didFinishLaunching
{
  v3 = FKALogCommon();
  if (os_signpost_enabled(v3))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "FullKeyboardAccessStartProcess", &unk_1000231F3, v5, 2u);
  }

  v4 = +[AXValidationManager sharedInstance];
  [FKAActionManager _accessibilityPerformValidations:v4];

  if ((+[FKAApplication usesScenes]& 1) == 0)
  {
    [(FKAApplicationDelegate *)self _setupUI];
  }
}

- (void)_setupUI
{
  v3 = objc_opt_new();
  [(FKAApplicationDelegate *)self setWindow:v3];

  v4 = [[FKARootViewController alloc] initWithDelegate:self displayUUID:0];
  window = [(FKAApplicationDelegate *)self window];
  [window setRootViewController:v4];

  window2 = [(FKAApplicationDelegate *)self window];
  [window2 makeKeyAndVisible];

  v7 = objc_opt_new();
  nonInteractiveWindow = self->_nonInteractiveWindow;
  self->_nonInteractiveWindow = v7;

  v9 = [(FKARootViewController *)[FKARootNonInteractiveViewController alloc] initWithDelegate:self displayUUID:0];
  nonInteractiveWindow = [(FKAApplicationDelegate *)self nonInteractiveWindow];
  [nonInteractiveWindow setRootViewController:v9];

  nonInteractiveWindow2 = [(FKAApplicationDelegate *)self nonInteractiveWindow];
  [nonInteractiveWindow2 setWindowLevel:UIWindowLevelNormal + 1.0];

  nonInteractiveWindow3 = [(FKAApplicationDelegate *)self nonInteractiveWindow];
  [nonInteractiveWindow3 setHidden:0];
}

- (void)willTerminate
{
  v3 = FKALogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Disabling focus ring on termination.", v4, 2u);
  }

  [(FKAApplicationDelegate *)self _disableFocusRing];
}

- (void)eventTap:(id)tap handleKeyboardEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isDownEvent] && !-[FKAApplicationDelegate isShowingTextEditingModeInstructions](self, "isShowingTextEditingModeInstructions"))
  {
    bannerPresenter = [(FKAApplicationDelegate *)self bannerPresenter];
    [bannerPresenter dismissFloatingView];
  }

  eventManager = [(FKAApplicationDelegate *)self eventManager];
  v7 = [eventManager processKeyboardEvent:eventCopy];

  if (v7)
  {
    if (_AXSFullKeyboardAccessFocusRingEnabled())
    {
      if ([eventCopy isDownEvent])
      {
        [(FKAApplicationDelegate *)self _cancelFocusRingTimeout];
      }

      else
      {
        [(FKAApplicationDelegate *)self _resetFocusRingTimeout];
      }
    }
  }

  else
  {
    if ([eventCopy isDownEvent])
    {
      eventTap = [(FKAApplicationDelegate *)self eventTap];
      [eventTap repostDownAndUpForKeyboardEvent:eventCopy];
    }

    if ([eventCopy isDownEvent])
    {
      unicodeCharacter = [eventCopy unicodeCharacter];
      if ([unicodeCharacter length])
      {
        v10 = [eventCopy modifierMask] & 0xFFFFFFFFFFFFFFF7;

        if (!v10)
        {
          actionManager = [(FKAApplicationDelegate *)self actionManager];
          [actionManager didPerformTextInput];
        }
      }

      else
      {
      }
    }
  }

  _objc_release_x1();
}

- (id)gestureViewController
{
  rootViewController = [(FKAApplicationDelegate *)self rootViewController];
  gestureViewController = [rootViewController gestureViewController];

  return gestureViewController;
}

- (void)actionManager:(id)manager showActionsForElement:(id)element
{
  elementCopy = element;
  if ([(FKAApplicationDelegate *)self _dismissActionsControllerByForce:1])
  {
    v6 = FKALogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      v7 = "Asked to show actions, but they were already showing. Dismissing instead.";
      v8 = v6;
      v9 = 2;
LABEL_4:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v14, v9);
    }
  }

  else
  {
    elementActionManager = [(FKAApplicationDelegate *)self elementActionManager];
    v11 = [elementActionManager canShowActionsForElement:elementCopy];

    if (!v11)
    {
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"NO_ACTIONS" value:&stru_100028C78 table:0];
      [(FKAApplicationDelegate *)self _showBannerWithText:v13];

      goto LABEL_10;
    }

    if ([(FKAApplicationDelegate *)self _areActionsValidForElement:elementCopy])
    {
      [(FKAApplicationDelegate *)self _showActionsForElement:elementCopy];
      goto LABEL_10;
    }

    v6 = FKALogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = elementCopy;
      v7 = "Tried to show actions for element that was not focusable: %@";
      v8 = v6;
      v9 = 12;
      goto LABEL_4;
    }
  }

LABEL_10:
}

- (void)toggleTypeaheadForActionManager:(id)manager
{
  typeaheadController = [(FKAApplicationDelegate *)self typeaheadController];

  if (!typeaheadController)
  {
    v5 = objc_opt_new();
    [(FKAApplicationDelegate *)self setTypeaheadController:v5];

    typeaheadController2 = [(FKAApplicationDelegate *)self typeaheadController];
    [typeaheadController2 setDelegate:self];

    rootViewController = [(FKAApplicationDelegate *)self rootViewController];
    typeaheadController3 = [(FKAApplicationDelegate *)self typeaheadController];
    [rootViewController showChildViewController:typeaheadController3 animated:0];
  }

  typeaheadController4 = [(FKAApplicationDelegate *)self typeaheadController];
  if ([typeaheadController4 state])
  {
  }

  else
  {
    rootViewController2 = [(FKAApplicationDelegate *)self rootViewController];
    presentedViewController = [rootViewController2 presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(FKAApplicationDelegate *)self setShouldIgnoreNextScreenChange:1];
      [(FKAApplicationDelegate *)self _dismissActionsControllerByForce:1];
    }
  }

  typeaheadController5 = [(FKAApplicationDelegate *)self typeaheadController];
  [typeaheadController5 toggleTypeaheadState];
}

- (void)_hideTypeaheadSynchronously
{
  typeaheadController = [(FKAApplicationDelegate *)self typeaheadController];
  state = [typeaheadController state];

  if (state)
  {
    typeaheadController2 = [(FKAApplicationDelegate *)self typeaheadController];
    [typeaheadController2 setState:0];

    for (i = 0.0; ; i = i + 0.05)
    {
      actionManager = [(FKAApplicationDelegate *)self actionManager];
      currentApplication = [actionManager currentApplication];
      bundleId = [currentApplication bundleId];
      v10 = +[NSBundle mainBundle];
      bundleIdentifier = [v10 bundleIdentifier];
      v12 = [bundleId isEqualToString:bundleIdentifier];

      if (!v12 || i >= 1.0)
      {
        break;
      }

      v14 = +[NSRunLoop currentRunLoop];
      v15 = [NSDate dateWithTimeIntervalSinceNow:0.05];
      [v14 runUntilDate:v15];
    }
  }
}

- (void)toggleGesturesModeForActionManager:(id)manager
{
  v4 = [(FKAApplicationDelegate *)self isGesturesModeEnabled]^ 1;

  [(FKAApplicationDelegate *)self setGesturesModeEnabled:v4];
}

- (void)togglePassthroughModeForActionManager:(id)manager
{
  v4 = [(FKAApplicationDelegate *)self isPassthroughModeEnabled]^ 1;

  [(FKAApplicationDelegate *)self setPassthroughModeEnabled:v4];
}

- (void)showHelpForActionManager:(id)manager
{
  v8 = objc_opt_new();
  actionManager = [(FKAApplicationDelegate *)self actionManager];
  isInTextEditingMode = [actionManager isInTextEditingMode];

  if (isInTextEditingMode)
  {
    _keyChordForExitingTextMode = [(FKAApplicationDelegate *)self _keyChordForExitingTextMode];
    [v8 setTextEditingModeExitKeyChord:_keyChordForExitingTextMode];
  }

  [v8 setModalPresentationStyle:5];
  [(FKAApplicationDelegate *)self setShouldIgnoreNextScreenChange:1];
  rootViewController = [(FKAApplicationDelegate *)self rootViewController];
  [rootViewController presentViewController:v8 withTransition:6 completion:0];

  [(FKAApplicationDelegate *)self setCommandsViewController:v8];
}

- (void)showDebugDisplay:(id)display
{
  displayCopy = display;
  eventManager = [(FKAApplicationDelegate *)self eventManager];
  commandMap = [eventManager commandMap];

  v6 = [AXSSKeyboardCommand commandWithStandardCommandIdentifier:displayCopy];

  v7 = [commandMap keyChordForCommand:v6];
  [(FKAApplicationDelegate *)self showDebugDisplayWithKeyChord:v7];
}

- (void)showDebugDisplayWithKeyChord:(id)chord
{
  chordCopy = chord;
  if (AXIsInternalInstall())
  {
    v4 = +[AXSettings sharedInstance];
    fullKeyboardAccessShouldShowDebugKeyCommandsView = [v4 fullKeyboardAccessShouldShowDebugKeyCommandsView];

    if (fullKeyboardAccessShouldShowDebugKeyCommandsView)
    {
      fkaSpeakableDisplayValue = [chordCopy fkaSpeakableDisplayValue];
      [(FKAApplicationDelegate *)self _showDebugBannerText:fkaSpeakableDisplayValue];
    }
  }
}

- (BOOL)dismissHelpForActionManager:(id)manager
{
  commandsViewController = [(FKAApplicationDelegate *)self commandsViewController];

  if (commandsViewController)
  {
    [(FKAApplicationDelegate *)self setShouldIgnoreNextScreenChange:1];
    rootViewController = [(FKAApplicationDelegate *)self rootViewController];
    [rootViewController dismissViewControllerWithTransition:6 completion:0];

    [(FKAApplicationDelegate *)self setCommandsViewController:0];
  }

  return commandsViewController != 0;
}

- (void)_wakeDeviceIfNeeded
{
  v9 = +[NSDate date];
  lastWakeDeviceDate = [(FKAApplicationDelegate *)self lastWakeDeviceDate];
  if (!lastWakeDeviceDate || (v4 = lastWakeDeviceDate, -[FKAApplicationDelegate lastWakeDeviceDate](self, "lastWakeDeviceDate"), v5 = objc_claimAutoreleasedReturnValue(), [v9 timeIntervalSinceDate:v5], v7 = v6, v5, v4, v7 > 0.3))
  {
    v8 = +[AXSystemAppServer server];
    [v8 wakeUpDeviceIfNecessary];

    [(FKAApplicationDelegate *)self setLastWakeDeviceDate:v9];
  }
}

- (BOOL)actionManagerCanAvoidRepostingTextInput:(id)input
{
  typeaheadController = [(FKAApplicationDelegate *)self typeaheadController];
  v4 = [typeaheadController state] == 0;

  return v4;
}

- (void)didSuppressCommandForActionManager:(id)manager
{
  [(FKAApplicationDelegate *)self _wakeDeviceIfNeeded];

  [(FKAApplicationDelegate *)self _enableFocusRingIfNecessaryCheckingSystemSleepingState:0];
}

- (BOOL)canMoveApplicationFocusForActionManager:(id)manager
{
  rootViewController = [(FKAApplicationDelegate *)self rootViewController];
  isOverridingNativeFocus = [rootViewController isOverridingNativeFocus];

  return isOverridingNativeFocus ^ 1;
}

- (void)didToggleNotificationCenterForActionManager:(id)manager
{
  v4 = FKALogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Notification center toggled. Hiding UI as needed.", v5, 2u);
  }

  [(FKAApplicationDelegate *)self _handleUpdatedElementsForScreenChange:1];
}

- (void)didMoveToInnerElementForActionManager:(id)manager
{
  if ([(FKAApplicationDelegate *)self isShowingTextEditingModeInstructions])
  {
    v3 = FKALogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User no longer requires text editing mode instructions.", v5, 2u);
    }

    v4 = +[AXSettings sharedInstance];
    [v4 setFullKeyboardAccessShouldShowTextEditingModeInstructions:0];
  }
}

- (void)typeaheadViewController:(id)controller didChangeQueryString:(id)string
{
  controllerCopy = controller;
  stringCopy = string;
  typeaheadStartTimer = [(FKAApplicationDelegate *)self typeaheadStartTimer];

  if (typeaheadStartTimer)
  {
    typeaheadStartTimer2 = [(FKAApplicationDelegate *)self typeaheadStartTimer];
    [typeaheadStartTimer2 invalidate];

    [(FKAApplicationDelegate *)self setTypeaheadStartTimer:0];
  }

  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100010A98;
  v12[3] = &unk_1000289C0;
  objc_copyWeak(&v14, &location);
  v10 = stringCopy;
  v13 = v10;
  v11 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v12 block:0.15];
  [(FKAApplicationDelegate *)self setTypeaheadStartTimer:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)typeaheadViewControllerWillAppear:(id)appear
{
  [(FKAApplicationDelegate *)self _showTypeaheadNames];
  rootViewController = [(FKAApplicationDelegate *)self rootViewController];
  [rootViewController updateRequiresNativeFocus];
}

- (void)typeaheadViewControllerWillDismiss:(id)dismiss
{
  [(FKAApplicationDelegate *)self _hideTypeaheadNames];
  actionManager = [(FKAApplicationDelegate *)self actionManager];
  [actionManager focusOnSceneForTypeahead];

  rootViewController = [(FKAApplicationDelegate *)self rootViewController];
  [rootViewController updateRequiresNativeFocus];
}

- (void)typeaheadViewControllerDidTypeReturn:(id)return
{
  [(FKAApplicationDelegate *)self _hideTypeaheadSynchronously];
  actionManager = [(FKAApplicationDelegate *)self actionManager];
  [actionManager performDefaultAction];
}

- (void)_showTypeaheadNames
{
  [(FKAApplicationDelegate *)self enumerateSceneDelegatesWithBlock:&stru_100028A00];

  [(FKAApplicationDelegate *)self _updateTypeaheadNamesViewControllerItems];
}

- (void)_updateTypeaheadNamesViewControllerItems
{
  typeaheadController = [(FKAApplicationDelegate *)self typeaheadController];
  queryString = [typeaheadController queryString];
  [(FKAApplicationDelegate *)self _updateTypeaheadNamesViewControllerItemsForQueryString:queryString];
}

- (void)_updateTypeaheadNamesViewControllerItemsForQueryString:(id)string
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100010EAC;
  v5[3] = &unk_100028A48;
  stringCopy = string;
  v4 = stringCopy;
  [(FKAApplicationDelegate *)self enumerateSceneDelegatesWithBlock:v5];
}

- (void)willDismissFloatingViewForPresenter:(id)presenter
{
  presenterCopy = presenter;
  bannerPresenter = [(FKAApplicationDelegate *)self bannerPresenter];

  if (bannerPresenter == presenterCopy)
  {
    isShowingTextEditingModeInstructions = [(FKAApplicationDelegate *)self isShowingTextEditingModeInstructions];

    if (isShowingTextEditingModeInstructions)
    {
      v6 = FKALogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Another banner caused text editing mode instructions to dismiss.", buf, 2u);
      }

      [(FKAApplicationDelegate *)self setIsShowingTextEditingModeInstructions:0];
    }
  }

  else
  {
  }
}

- (BOOL)eventManager:(id)manager shouldRepostEvent:(id)event
{
  eventCopy = event;
  actionManager = [(FKAApplicationDelegate *)self actionManager];
  keyChord = [eventCopy keyChord];
  v8 = [actionManager shouldRepostForKeyChord:keyChord];

  if ([(FKAApplicationDelegate *)self isGesturesModeEnabled])
  {
    if (v8)
    {
      keyChord2 = [eventCopy keyChord];
      if (([keyChord2 isArrowKeyChord] & 1) == 0)
      {

        goto LABEL_9;
      }

      keyChord3 = [eventCopy keyChord];
      containsModifier = [keyChord3 containsModifier];

      if (containsModifier)
      {
LABEL_9:
        keyChord4 = [eventCopy keyChord];
        if ([keyChord4 isTextInputTabChord])
        {
          fkaSpeakableDisplayValue = +[AXSettings sharedInstance];
          if (([fkaSpeakableDisplayValue fullKeyboardAccessShouldShowTextEditingModeInstructions] & 1) == 0)
          {
LABEL_17:

            goto LABEL_18;
          }

          v18 = [(FKAApplicationDelegate *)self _canEnableFocusRingCheckingSystemSleepingState:1];

          if (!v18 || [(FKAApplicationDelegate *)self isShowingTextEditingModeInstructions])
          {
LABEL_19:
            keyChord5 = [eventCopy keyChord];
            if ([keyChord5 isArrowKeyChord])
            {
              keyChord6 = [eventCopy keyChord];
              containsModifier2 = [keyChord6 containsModifier];

              if (containsModifier2)
              {
LABEL_23:
                v15 = 1;
                goto LABEL_24;
              }

              keyChord5 = [eventCopy keyChord];
              [(FKAApplicationDelegate *)self showDebugDisplayWithKeyChord:keyChord5];
            }

            goto LABEL_23;
          }

          keyChord4 = [(FKAApplicationDelegate *)self _keyChordForExitingTextMode];
          if (keyChord4)
          {
            v19 = FKALogCommon();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Showing instructions for text editing mode.", buf, 2u);
            }

            fkaSpeakableDisplayValue = [keyChord4 fkaSpeakableDisplayValue];
            v20 = +[NSBundle mainBundle];
            v21 = [v20 localizedStringForKey:@"TEXT_EDITING_MODE_INSTRUCTIONS_MESSAGE" value:&stru_100028C78 table:0];
            v22 = [NSString localizedStringWithFormat:v21, fkaSpeakableDisplayValue];

            [(FKAApplicationDelegate *)self _showBannerWithText:v22 secondaryText:0 isSticky:1 fromUserAction:0];
            [(FKAApplicationDelegate *)self setIsShowingTextEditingModeInstructions:1];
            [(FKAApplicationDelegate *)self _enableFocusRingWithTimeout];

            goto LABEL_17;
          }
        }

LABEL_18:

        goto LABEL_19;
      }
    }
  }

  else if (v8)
  {
    goto LABEL_9;
  }

  unicodeCharacter = [eventCopy unicodeCharacter];
  unicodeCharacter2 = [eventCopy unicodeCharacter];
  v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [eventCopy modifierMask]);
  AXUIAutomationHandleKeyComplete();

  v15 = 0;
LABEL_24:

  return v15;
}

- (void)eventManager:(id)manager repostEvent:(id)event
{
  eventCopy = event;
  eventTap = [(FKAApplicationDelegate *)self eventTap];
  [eventTap repostDownAndUpForKeyboardEvent:eventCopy];
}

- (void)_didUpdateHardwareKeyboardAttachedStatus
{
  v3 = FKALogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Hardware availability changed.", v4, 2u);
  }

  [(FKAApplicationDelegate *)self _enableFocusRingIfNecessary];
}

- (UIWindow)nonInteractiveWindow
{
  if (+[FKAApplication usesScenes])
  {
    _sceneDelegateForFocusedElement = [(FKAApplicationDelegate *)self _sceneDelegateForFocusedElement];
    nonInteractiveWindow = [_sceneDelegateForFocusedElement nonInteractiveWindow];
  }

  else
  {
    nonInteractiveWindow = self->_nonInteractiveWindow;
  }

  return nonInteractiveWindow;
}

- (id)_fkaDelegateScenes
{
  v13 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = +[UIApplication sharedApplication];
  connectedScenes = [v3 connectedScenes];

  v5 = [connectedScenes countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(connectedScenes);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          delegate = [v9 delegate];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [(FKAApplicationDelegate *)self _sceneVendedByOneness:v9];

            if ((v11 & 1) == 0)
            {
              [v13 addObject:v9];
            }
          }

          else
          {
          }
        }
      }

      v6 = [connectedScenes countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v13;
}

- (id)_sceneDelegateForFocusedElement
{
  _fkaDelegateScenes = [(FKAApplicationDelegate *)self _fkaDelegateScenes];
  if ([_fkaDelegateScenes count] == 1)
  {
    firstObject = [_fkaDelegateScenes firstObject];
  }

  else
  {
    nativeFocusElementDisplayID = [(FKAApplicationDelegate *)self nativeFocusElementDisplayID];
    if (nativeFocusElementDisplayID == -1)
    {
      actionManager = [(FKAApplicationDelegate *)self actionManager];
      currentElement = [actionManager currentElement];
      nativeFocusElementDisplayID = [currentElement windowDisplayId];
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = _fkaDelegateScenes;
    v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v27 = _fkaDelegateScenes;
      v10 = *v31;
      v11 = UIWindowSceneSessionRoleApplication;
      while (2)
      {
        v12 = 0;
        v28 = v9;
        do
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v30 + 1) + 8 * v12);
          session = [v13 session];
          role = [session role];
          if ([role isEqualToString:v11])
          {
            [v13 screen];
            v16 = v11;
            v17 = v10;
            v19 = v18 = nativeFocusElementDisplayID;
            v20 = +[UIScreen mainScreen];
            v21 = [v19 isEqual:v20];

            nativeFocusElementDisplayID = v18;
            v10 = v17;
            v11 = v16;
            v9 = v28;

            if (v21)
            {
              goto LABEL_18;
            }
          }

          else
          {
          }

          screen = [v13 screen];
          displayIdentity = [screen displayIdentity];
          displayID = [displayIdentity displayID];

          if (displayID == nativeFocusElementDisplayID)
          {
LABEL_18:
            firstObject = v13;
            goto LABEL_19;
          }

          v12 = v12 + 1;
        }

        while (v9 != v12);
        v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      firstObject = 0;
LABEL_19:
      _fkaDelegateScenes = v27;
    }

    else
    {
      firstObject = 0;
    }
  }

  delegate = [firstObject delegate];

  return delegate;
}

- (id)_sceneDelegates
{
  v3 = +[UIApplication sharedApplication];
  connectedScenes = [v3 connectedScenes];
  allObjects = [connectedScenes allObjects];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100011954;
  v8[3] = &unk_100028A70;
  v8[4] = self;
  v6 = [allObjects ax_flatMappedArrayUsingBlock:v8];

  return v6;
}

- (void)enumerateSceneDelegatesWithBlock:(id)block
{
  blockCopy = block;
  _sceneDelegates = [(FKAApplicationDelegate *)self _sceneDelegates];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011AC4;
  v7[3] = &unk_100028A98;
  v8 = blockCopy;
  v6 = blockCopy;
  [_sceneDelegates enumerateObjectsUsingBlock:v7];
}

- (BOOL)_sceneVendedByOneness:(id)oneness
{
  screen = [oneness screen];
  displayIdentity = [screen displayIdentity];
  v5 = [displayIdentity type] == 8;

  return v5;
}

- (FKARootViewController)rootViewController
{
  if (+[FKAApplication usesScenes])
  {
    _sceneDelegateForFocusedElement = [(FKAApplicationDelegate *)self _sceneDelegateForFocusedElement];
    interactiveWindow = [_sceneDelegateForFocusedElement interactiveWindow];
    rootViewController = [interactiveWindow rootViewController];
  }

  else
  {
    _sceneDelegateForFocusedElement = [(FKAApplicationDelegate *)self window];
    rootViewController = [_sceneDelegateForFocusedElement rootViewController];
  }

  return rootViewController;
}

- (FKARootViewController)nonInteractiveRootViewController
{
  nonInteractiveWindow = [(FKAApplicationDelegate *)self nonInteractiveWindow];
  rootViewController = [nonInteractiveWindow rootViewController];

  return rootViewController;
}

- (void)_showDebugBannerText:(id)text
{
  textCopy = text;
  debugBannerPresenter = [(FKAApplicationDelegate *)self debugBannerPresenter];

  if (!debugBannerPresenter)
  {
    v6 = [AXUIBannerPresenter alloc];
    nonInteractiveWindow = [(FKAApplicationDelegate *)self nonInteractiveWindow];
    v8 = [v6 initWithContainingView:nonInteractiveWindow];
    [(FKAApplicationDelegate *)self setDebugBannerPresenter:v8];
  }

  debugBannerPresenter2 = [(FKAApplicationDelegate *)self debugBannerPresenter];
  [debugBannerPresenter2 presentBannerViewWithText:textCopy secondaryText:0 duration:1 fromUserAction:2.0];
}

- (void)_addTransientCommandsForGesturesMode
{
  v37 = [AXSSKeyChord keyChordWithKeys:&off_100029618];
  v38[0] = v37;
  v36 = [AXSSKeyboardCommand commandWithStandardCommandIdentifier:AXSSKeyboardCommandIdentifierPressAndLift];
  v39[0] = v36;
  v35 = [AXSSKeyChord keyChordWithKeys:&off_100029630];
  v38[1] = v35;
  v34 = [AXSSKeyboardCommand commandWithStandardCommandIdentifier:AXSSKeyboardCommandIdentifierTwoFingerPressAndLift];
  v39[1] = v34;
  v33 = [AXSSKeyChord keyChordWithKeys:&off_100029648];
  v38[2] = v33;
  v31 = [AXSSKeyboardCommand commandWithStandardCommandIdentifier:AXSSKeyboardCommandIdentifierSwipeLeft];
  v39[2] = v31;
  v30 = [AXSSKeyChord keyChordWithKeys:&off_100029660];
  v38[3] = v30;
  v29 = [AXSSKeyboardCommand commandWithStandardCommandIdentifier:AXSSKeyboardCommandIdentifierSwipeRight];
  v39[3] = v29;
  v28 = [AXSSKeyChord keyChordWithKeys:&off_100029678];
  v38[4] = v28;
  v27 = [AXSSKeyboardCommand commandWithStandardCommandIdentifier:AXSSKeyboardCommandIdentifierSwipeUp];
  v39[4] = v27;
  v26 = [AXSSKeyChord keyChordWithKeys:&off_100029690];
  v38[5] = v26;
  v25 = [AXSSKeyboardCommand commandWithStandardCommandIdentifier:AXSSKeyboardCommandIdentifierSwipeDown];
  v39[5] = v25;
  v24 = [AXSSKeyChord keyChordWithKeys:&off_1000296A8];
  v38[6] = v24;
  v23 = [AXSSKeyboardCommand commandWithStandardCommandIdentifier:AXSSKeyboardCommandIdentifierTwoFingerSwipeLeft];
  v39[6] = v23;
  v22 = [AXSSKeyChord keyChordWithKeys:&off_1000296C0];
  v38[7] = v22;
  v21 = [AXSSKeyboardCommand commandWithStandardCommandIdentifier:AXSSKeyboardCommandIdentifierTwoFingerSwipeRight];
  v39[7] = v21;
  v20 = [AXSSKeyChord keyChordWithKeys:&off_1000296D8];
  v38[8] = v20;
  v19 = [AXSSKeyboardCommand commandWithStandardCommandIdentifier:AXSSKeyboardCommandIdentifierTwoFingerSwipeUp];
  v39[8] = v19;
  v18 = [AXSSKeyChord keyChordWithKeys:&off_1000296F0];
  v38[9] = v18;
  v2 = [AXSSKeyboardCommand commandWithStandardCommandIdentifier:AXSSKeyboardCommandIdentifierTwoFingerSwipeDown];
  v39[9] = v2;
  v3 = [AXSSKeyChord keyChordWithKeys:&off_100029708];
  v38[10] = v3;
  v4 = [AXSSKeyboardCommand commandWithStandardCommandIdentifier:AXSSKeyboardCommandIdentifierRotateLeft];
  v39[10] = v4;
  v5 = [AXSSKeyChord keyChordWithKeys:&off_100029720];
  v38[11] = v5;
  v6 = [AXSSKeyboardCommand commandWithStandardCommandIdentifier:AXSSKeyboardCommandIdentifierRotateRight];
  v39[11] = v6;
  v7 = [AXSSKeyChord keyChordWithKeys:&off_100029738];
  v38[12] = v7;
  v8 = [AXSSKeyboardCommand commandWithStandardCommandIdentifier:AXSSKeyboardCommandIdentifierPinchOut];
  v39[12] = v8;
  v9 = [AXSSKeyChord keyChordWithKeys:&off_100029750];
  v38[13] = v9;
  v10 = [AXSSKeyboardCommand commandWithStandardCommandIdentifier:AXSSKeyboardCommandIdentifierPinchIn];
  v39[13] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:14];

  if ([(FKAApplicationDelegate *)self _canPerform3DTouchCommand])
  {
    v12 = [v11 mutableCopy];
    v13 = [AXSSKeyboardCommand commandWithStandardCommandIdentifier:AXSSKeyboardCommandIdentifier3DTouch];
    v14 = [AXSSKeyChord keyChordWithKeys:&off_100029768];
    [v12 setObject:v13 forKeyedSubscript:v14];

    v11 = v12;
  }

  eventManager = [(FKAApplicationDelegate *)self eventManager];
  commandMap = [eventManager commandMap];
  v17 = [commandMap addCommandsForTransientKeyChords:v11];
  [(FKAApplicationDelegate *)self setGesturesModeKeyChordsIdentifier:v17];
}

- (void)setGesturesModeEnabled:(BOOL)enabled
{
  if (self->_gesturesModeEnabled != enabled)
  {
    self->_gesturesModeEnabled = enabled;
    if (enabled)
    {
      v46 = +[NSBundle mainBundle];
      v44 = [v46 localizedStringForKey:@"GESTURES_TAP" value:&stru_100028C78 table:0];
      v45 = +[NSBundle mainBundle];
      v43 = [v45 localizedStringForKey:@"GESTURES_TAP_COMMAND" value:&stru_100028C78 table:0];
      v42 = [FKACommandListItem itemWithName:v44 keyDescription:v43];
      v48[0] = v42;
      v41 = +[NSBundle mainBundle];
      v39 = [v41 localizedStringForKey:@"GESTURES_SWIPE" value:&stru_100028C78 table:0];
      v40 = +[NSBundle mainBundle];
      v38 = [v40 localizedStringForKey:@"GESTURES_SWIPE_COMMAND" value:&stru_100028C78 table:0];
      v36 = [FKACommandListItem itemWithName:v39 keyDescription:v38];
      v48[1] = v36;
      v35 = +[NSBundle mainBundle];
      v4 = [v35 localizedStringForKey:@"GESTURES_ZOOM" value:&stru_100028C78 table:0];
      v5 = +[NSBundle mainBundle];
      v6 = [v5 localizedStringForKey:@"GESTURES_ZOOM_COMMAND" value:&stru_100028C78 table:0];
      v7 = [FKACommandListItem itemWithName:v4 keyDescription:v6];
      v48[2] = v7;
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"GESTURES_ROTATE" value:&stru_100028C78 table:0];
      v10 = +[NSBundle mainBundle];
      v11 = [v10 localizedStringForKey:@"GESTURES_ROTATE_COMMAND" value:&stru_100028C78 table:0];
      v12 = [FKACommandListItem itemWithName:v9 keyDescription:v11];
      v48[3] = v12;
      v37 = [NSArray arrayWithObjects:v48 count:4];

      if ([(FKAApplicationDelegate *)self _canPerform3DTouchCommand])
      {
        v13 = +[NSBundle mainBundle];
        v14 = [v13 localizedStringForKey:@"GESTURES_3DTOUCH" value:&stru_100028C78 table:0];
        v15 = +[NSBundle mainBundle];
        v16 = [v15 localizedStringForKey:@"GESTURES_3DTOUCH_COMMAND" value:&stru_100028C78 table:0];
        v17 = [FKACommandListItem itemWithName:v14 keyDescription:v16];
        v18 = [v37 arrayByAddingObject:v17];

        v19 = v18;
      }

      else
      {
        v19 = v37;
      }

      v26 = +[NSBundle mainBundle];
      v27 = [v26 localizedStringForKey:@"GESTURES_HEADER" value:&stru_100028C78 table:0];
      v28 = +[NSBundle mainBundle];
      v29 = [v28 localizedStringForKey:@"GESTURES_TWO_FINGERS" value:&stru_100028C78 table:0];
      v30 = [FKACommandList listWithTitle:v27 items:v19 footerText:v29];

      v31 = [FKACommandsView alloc];
      v47 = v30;
      v32 = [NSArray arrayWithObjects:&v47 count:1];
      v33 = [(FKACommandsView *)v31 initWithCommandLists:v32];

      [(FKAApplicationDelegate *)self _announceCommandList:v30];
      [(FKAApplicationDelegate *)self _showBannerWithCustomView:v33 isSticky:1];

      [(FKAApplicationDelegate *)self _addTransientCommandsForGesturesMode];
    }

    else
    {
      v20 = +[NSBundle mainBundle];
      v21 = [v20 localizedStringForKey:@"GESTURES_DISABLED" value:&stru_100028C78 table:0];
      [(FKAApplicationDelegate *)self _showBannerWithText:v21];

      gesturesModeKeyChordsIdentifier = [(FKAApplicationDelegate *)self gesturesModeKeyChordsIdentifier];

      if (gesturesModeKeyChordsIdentifier)
      {
        eventManager = [(FKAApplicationDelegate *)self eventManager];
        commandMap = [eventManager commandMap];
        gesturesModeKeyChordsIdentifier2 = [(FKAApplicationDelegate *)self gesturesModeKeyChordsIdentifier];
        [commandMap removeTransientKeyChordsForIdentifier:gesturesModeKeyChordsIdentifier2];

        [(FKAApplicationDelegate *)self setGesturesModeKeyChordsIdentifier:0];
      }

      else
      {
        v34 = FKALogCommon();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          sub_1000144E0(v34);
        }
      }
    }
  }
}

- (void)setPassthroughModeEnabled:(BOOL)enabled
{
  if (self->_passthroughModeEnabled != enabled)
  {
    v21 = v3;
    v22 = v4;
    enabledCopy = enabled;
    self->_passthroughModeEnabled = enabled;
    v7 = FKALogCommon();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (enabledCopy)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Enabled passthrough mode", buf, 2u);
      }

      eventManager = [(FKAApplicationDelegate *)self eventManager];
      [eventManager setPassthroughModeEnabled:1];

      _AXSFullKeyboardAccessSetPassthroughModeEnabled();
      _AXSFullKeyboardAccessSetFocusRingEnabled();
      eventManager2 = [(FKAApplicationDelegate *)self eventManager];
      commandMap = [eventManager2 commandMap];

      v12 = [AXSSKeyboardCommand commandWithStandardCommandIdentifier:AXSSKeyboardCommandIdentifierTogglePassthroughMode];
      v13 = [commandMap keyChordForCommand:v12];
      fkaSpeakableDisplayValue = [v13 fkaSpeakableDisplayValue];
      v15 = +[NSBundle mainBundle];
      v16 = [v15 localizedStringForKey:@"PASSTHROUGH_MODE" value:&stru_100028C78 table:0];
      v17 = [NSString localizedStringWithFormat:v16, fkaSpeakableDisplayValue];
      [(FKAApplicationDelegate *)self _showBannerWithText:v17];
    }

    else
    {
      if (v8)
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Disabled passthrough mode", v19, 2u);
      }

      eventManager3 = [(FKAApplicationDelegate *)self eventManager];
      [eventManager3 setPassthroughModeEnabled:0];

      _AXSFullKeyboardAccessSetPassthroughModeEnabled();
      [(FKAApplicationDelegate *)self _enableFocusRingWithTimeout];
      commandMap = +[NSBundle mainBundle];
      v12 = [commandMap localizedStringForKey:@"PASSTHROUGH_MODE_DISABLED" value:&stru_100028C78 table:0];
      [(FKAApplicationDelegate *)self _showBannerWithText:v12];
    }
  }
}

- (void)_showActionsForElement:(id)element
{
  elementCopy = element;
  selfCopy = self;
  elementActionManager = [(FKAApplicationDelegate *)self elementActionManager];
  v7 = [elementActionManager actionsForElement:elementCopy];

  v8 = [FKAActionsController alertControllerWithTitle:0 message:0 preferredStyle:0];
  [v8 setElement:elementCopy];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        name = [v13 name];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100012F20;
        v23[3] = &unk_100028AC0;
        v23[4] = selfCopy;
        v23[5] = v13;
        v15 = [UIAlertAction actionWithTitle:name style:0 handler:v23];

        [v8 addAction:v15];
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"CANCEL" value:&stru_100028C78 table:0];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100013014;
  v22[3] = &unk_100028AE8;
  v22[4] = selfCopy;
  v18 = [UIAlertAction actionWithTitle:v17 style:1 handler:v22];
  [v8 addAction:v18];

  [(FKAApplicationDelegate *)selfCopy setShouldIgnoreNextScreenChange:1];
  LODWORD(v16) = AXDeviceIsPad();
  rootViewController = [(FKAApplicationDelegate *)selfCopy rootViewController];
  v20 = rootViewController;
  if (v16)
  {
    [elementCopy frame];
    [v20 presentViewController:v8 inPopoverFromRect:?];
  }

  else
  {
    [rootViewController presentViewController:v8 animated:1 completion:0];
  }
}

- (BOOL)_areActionsValidForElement:(id)element
{
  uiElement = [element uiElement];
  [uiElement updateCache:2204];
  v4 = [uiElement BOOLWithAXAttribute:2204];

  return v4;
}

- (BOOL)_dismissActionsControllerByForce:(BOOL)force
{
  rootViewController = [(FKAApplicationDelegate *)self rootViewController];
  presentedViewController = [rootViewController presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  rootViewController2 = [(FKAApplicationDelegate *)self rootViewController];
  presentedViewController2 = [rootViewController2 presentedViewController];

  if (force || ([presentedViewController2 element], v10 = objc_claimAutoreleasedReturnValue(), v11 = -[FKAApplicationDelegate _areActionsValidForElement:](self, "_areActionsValidForElement:", v10), v10, (v11 & 1) == 0))
  {
    v12 = 1;
    [(FKAApplicationDelegate *)self setShouldIgnoreNextScreenChange:1];
    rootViewController3 = [(FKAApplicationDelegate *)self rootViewController];
    [rootViewController3 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_handleScreenChange
{
  if ([(FKAApplicationDelegate *)self shouldIgnoreNextScreenChange])
  {

    [(FKAApplicationDelegate *)self setShouldIgnoreNextScreenChange:0];
  }

  else
  {

    [(FKAApplicationDelegate *)self _handleUpdatedElementsForScreenChange:1];
  }
}

- (void)_handleNativeFocusItemChange:(id)change
{
  changeCopy = change;
  if (changeCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [changeCopy objectForKey:@"element"];
      if (v5)
      {
        v6 = v5;
        _fkaDelegateScenes = [(FKAApplicationDelegate *)self _fkaDelegateScenes];
        if ([_fkaDelegateScenes count] >= 2)
        {
          v8 = [AXElement elementWithAXUIElement:v6];
          -[FKAApplicationDelegate setNativeFocusElementDisplayID:](self, "setNativeFocusElementDisplayID:", [v8 windowDisplayId]);
          v9 = FKALogCommon();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v10 = [NSNumber numberWithInt:[(FKAApplicationDelegate *)self nativeFocusElementDisplayID]];
            v11 = 138412290;
            v12 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Caching display id for native element: %@", &v11, 0xCu);
          }
        }
      }
    }
  }
}

- (void)observer:(id)observer didObserveNotification:(int)notification notificationData:(void *)data
{
  observerCopy = observer;
  if (notification > 1017)
  {
    if (notification <= 1052)
    {
      if (notification != 1018)
      {
        if (notification == 1039)
        {
          v9 = +[AXSettings sharedInstance];
          fullKeyboardAccessFocusRingTimeoutEnabled = [v9 fullKeyboardAccessFocusRingTimeoutEnabled];

          if (fullKeyboardAccessFocusRingTimeoutEnabled)
          {
            goto LABEL_22;
          }

LABEL_15:
          [(FKAApplicationDelegate *)self _enableFocusRingIfNecessary];
          goto LABEL_22;
        }

        goto LABEL_18;
      }

LABEL_16:
      [(FKAApplicationDelegate *)self _handleUpdatedElementsForScreenChange:0];
      goto LABEL_22;
    }

    if (notification == 1053)
    {
      [(FKAApplicationDelegate *)self _handleNativeFocusItemChange:data];
      goto LABEL_22;
    }

    if (notification == 1067)
    {
      goto LABEL_15;
    }

LABEL_18:
    v12 = FKALogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_100014524(data, notification, v12);
    }

    goto LABEL_22;
  }

  if (notification == 1000)
  {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_handleScreenChange" object:0];
    [(FKAApplicationDelegate *)self performSelector:"_handleScreenChange" withObject:0 afterDelay:0.3];
    goto LABEL_22;
  }

  if (notification == 1001)
  {
    goto LABEL_16;
  }

  if (notification != 1004)
  {
    goto LABEL_18;
  }

  [(FKAApplicationDelegate *)self _handleUpdatedElementsForScreenChange:1];
  v11 = FKALogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Disabling focus ring on screen lock.", v13, 2u);
  }

  [(FKAApplicationDelegate *)self _disableFocusRing];
LABEL_22:
}

- (void)_enableFocusRingWithTimeout
{
  if (!_AXSFullKeyboardAccessFocusRingEnabled())
  {
    _AXSFullKeyboardAccessSetFocusRingEnabled();
    eventManager = [(FKAApplicationDelegate *)self eventManager];
    [eventManager setShouldSuppressCommands:0];
  }

  [(FKAApplicationDelegate *)self _resetFocusRingTimeout];
}

- (void)_disableFocusRing
{
  [(FKAApplicationDelegate *)self _cancelFocusRingTimeout];
  _AXSFullKeyboardAccessSetFocusRingEnabled();
  eventManager = [(FKAApplicationDelegate *)self eventManager];
  [eventManager setShouldSuppressCommands:1];
}

- (void)_disableFocusRingForTimeout
{
  v3 = FKALogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Disabling focus ring for timeout.", v4, 2u);
  }

  [(FKAApplicationDelegate *)self _disableFocusRing];
}

- (void)_resetFocusRingTimeout
{
  [(FKAApplicationDelegate *)self _cancelFocusRingTimeout];
  v3 = +[AXSettings sharedInstance];
  if ([v3 fullKeyboardAccessFocusRingTimeoutEnabled] && !-[FKAApplicationDelegate isShowingTextEditingModeInstructions](self, "isShowingTextEditingModeInstructions"))
  {
    [v3 fullKeyboardAccessFocusRingTimeout];
    [(FKAApplicationDelegate *)self performSelector:"_disableFocusRingForTimeout" withObject:0 afterDelay:?];
  }
}

- (BOOL)_canEnableFocusRingCheckingSystemSleepingState:(BOOL)state
{
  stateCopy = state;
  if (!GSEventIsHardwareKeyboardAttached() && !_AXSFullKeyboardAccessUsesSimulatedKeyboardForAutomation())
  {
    v6 = FKALogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      v8 = "Cannot enable focus ring: hardware keyboard not attached, and not using simulated keyboard.";
      v9 = v17;
      goto LABEL_14;
    }

LABEL_15:
    v10 = 0;
    goto LABEL_17;
  }

  if (stateCopy)
  {
    v4 = +[AXSystemAppServer server];
    isSystemSleeping = [v4 isSystemSleeping];

    v6 = FKALogCommon();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (isSystemSleeping)
    {
      if (v7)
      {
        v15 = 0;
        v8 = "Cannot enable focus ring: system sleeping.";
        v9 = &v15;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v8, v9, 2u);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    if (!v7)
    {
      v10 = 1;
      goto LABEL_17;
    }

    *buf = 0;
    v11 = "Can enable focus ring.";
    v10 = 1;
    v12 = buf;
    goto LABEL_11;
  }

  v6 = FKALogCommon();
  v10 = 1;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v14 = 0;
    v11 = "Can enable focus ring. Ignored system sleeping state.";
    v12 = &v14;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v11, v12, 2u);
  }

LABEL_17:

  return v10;
}

- (void)_didUpdateAvailableCommandsWithUpdatedMap:(id)map
{
  mapCopy = map;
  v5 = FKALogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Did update available commands.", v7, 2u);
  }

  eventManager = [(FKAApplicationDelegate *)self eventManager];
  [eventManager setCommandMap:mapCopy];

  if ([(FKAApplicationDelegate *)self isGesturesModeEnabled])
  {
    [(FKAApplicationDelegate *)self _addTransientCommandsForGesturesMode];
  }
}

- (void)_didUpdateFocusRingTimeout
{
  v3 = FKALogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Did update focus ring timeout.", v4, 2u);
  }

  [(FKAApplicationDelegate *)self _enableFocusRingIfNecessary];
  [(FKAApplicationDelegate *)self _resetFocusRingTimeout];
}

- (id)_keyChordForExitingTextMode
{
  eventManager = [(FKAApplicationDelegate *)self eventManager];
  commandMap = [eventManager commandMap];

  v4 = [AXSSKeyboardCommand commandWithStandardCommandIdentifier:AXSSKeyboardCommandIdentifierMoveInsideNext];
  v5 = [commandMap keyChordForCommand:v4];
  v6 = v5;
  if (v5 && ([v5 isTextInputTabChord] & 1) == 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_dismissTextEditingModeInstructionsIfNeeded
{
  if ([(FKAApplicationDelegate *)self isShowingTextEditingModeInstructions])
  {
    v3 = FKALogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dismissing text editing mode instructions.", v5, 2u);
    }

    [(FKAApplicationDelegate *)self setIsShowingTextEditingModeInstructions:0];
    bannerPresenter = [(FKAApplicationDelegate *)self bannerPresenter];
    [bannerPresenter dismissFloatingView];
  }
}

- (void)_announceCommandList:(id)list
{
  listCopy = list;
  if (_AXFeatureSupportsNonSightedUsage())
  {
    title = [listCopy title];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    items = [listCopy items];
    v6 = [items countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        v9 = 0;
        v10 = title;
        do
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(items);
          }

          v11 = *(*(&v18 + 1) + 8 * v9);
          name = [v11 name];
          keyDescription = [v11 keyDescription];
          v17 = @"__AXStringForVariablesSentinel";
          v14 = name;
          title = __UIAXStringForVariables();

          v9 = v9 + 1;
          v10 = title;
        }

        while (v7 != v9);
        v7 = [items countByEnumeratingWithState:&v18 objects:v22 count:{16, name, keyDescription, @"__AXStringForVariablesSentinel"}];
      }

      while (v7);
    }

    footerText = [listCopy footerText];
    v13 = __UIAXStringForVariables();

    UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, v13);
  }
}

- (void)willAquireNativeFocus
{
  actionManager = [(FKAApplicationDelegate *)self actionManager];
  currentElement = [actionManager currentElement];
  [currentElement performAction:5501 withValue:0];
}

- (void)didReleaseNativeFocus
{
  actionManager = [(FKAApplicationDelegate *)self actionManager];
  currentElement = [actionManager currentElement];
  [currentElement performAction:5500 withValue:0];
}

@end