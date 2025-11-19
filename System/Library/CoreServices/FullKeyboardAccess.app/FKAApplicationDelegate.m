@interface FKAApplicationDelegate
- (AXElementActionManager)elementActionManager;
- (AXUIBannerPresenter)bannerPresenter;
- (BOOL)_areActionsValidForElement:(id)a3;
- (BOOL)_canEnableFocusRingCheckingSystemSleepingState:(BOOL)a3;
- (BOOL)_dismissActionsControllerByForce:(BOOL)a3;
- (BOOL)_sceneVendedByOneness:(id)a3;
- (BOOL)actionManagerCanAvoidRepostingTextInput:(id)a3;
- (BOOL)canMoveApplicationFocusForActionManager:(id)a3;
- (BOOL)dismissHelpForActionManager:(id)a3;
- (BOOL)eventManager:(id)a3 shouldRepostEvent:(id)a4;
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
- (void)_announceCommandList:(id)a3;
- (void)_didUpdateAvailableCommandsWithUpdatedMap:(id)a3;
- (void)_didUpdateFocusRingTimeout;
- (void)_didUpdateHardwareKeyboardAttachedStatus;
- (void)_disableFocusRing;
- (void)_disableFocusRingForTimeout;
- (void)_dismissTextEditingModeInstructionsIfNeeded;
- (void)_enableFocusRingWithTimeout;
- (void)_handleNativeFocusItemChange:(id)a3;
- (void)_handleScreenChange;
- (void)_hideTypeaheadSynchronously;
- (void)_resetFocusRingTimeout;
- (void)_setupUI;
- (void)_showActionsForElement:(id)a3;
- (void)_showDebugBannerText:(id)a3;
- (void)_showTypeaheadNames;
- (void)_updateTypeaheadNamesViewControllerItems;
- (void)_updateTypeaheadNamesViewControllerItemsForQueryString:(id)a3;
- (void)_wakeDeviceIfNeeded;
- (void)actionManager:(id)a3 showActionsForElement:(id)a4;
- (void)dealloc;
- (void)didFinishLaunching;
- (void)didMoveToInnerElementForActionManager:(id)a3;
- (void)didReleaseNativeFocus;
- (void)didSuppressCommandForActionManager:(id)a3;
- (void)didToggleNotificationCenterForActionManager:(id)a3;
- (void)enumerateSceneDelegatesWithBlock:(id)a3;
- (void)eventManager:(id)a3 repostEvent:(id)a4;
- (void)eventTap:(id)a3 handleKeyboardEvent:(id)a4;
- (void)observer:(id)a3 didObserveNotification:(int)a4 notificationData:(void *)a5;
- (void)setGesturesModeEnabled:(BOOL)a3;
- (void)setPassthroughModeEnabled:(BOOL)a3;
- (void)setShouldIgnoreNextScreenChange:(BOOL)a3;
- (void)showDebugDisplay:(id)a3;
- (void)showDebugDisplayWithKeyChord:(id)a3;
- (void)showHelpForActionManager:(id)a3;
- (void)toggleGesturesModeForActionManager:(id)a3;
- (void)togglePassthroughModeForActionManager:(id)a3;
- (void)toggleTypeaheadForActionManager:(id)a3;
- (void)typeaheadViewController:(id)a3 didChangeQueryString:(id)a4;
- (void)typeaheadViewControllerDidTypeReturn:(id)a3;
- (void)typeaheadViewControllerWillAppear:(id)a3;
- (void)typeaheadViewControllerWillDismiss:(id)a3;
- (void)willAquireNativeFocus;
- (void)willDismissFloatingViewForPresenter:(id)a3;
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
    v6 = [v5 commandMap];

    v7 = [[AXSSEventManager alloc] initWithActionManager:v4 commandMap:v6];
    eventManager = v2->_eventManager;
    v2->_eventManager = v7;

    [(AXSSEventManager *)v2->_eventManager setFilterDelegate:v2];
    [(AXSSEventManager *)v2->_eventManager setShouldSuppressCommands:_AXSFullKeyboardAccessFocusRingEnabled() == 0];
    [(FKAApplicationDelegate *)v2 setNativeFocusElementDisplayID:0xFFFFFFFFLL];
    v9 = [AXNotificationObserver alloc];
    v10 = [(FKAApplicationDelegate *)v2 _notificationsToRegister];
    v11 = [v9 initWithNotifications:v10];

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

    v20 = [(FKAApplicationDelegate *)v2 eventTap];
    [v20 setDelegate:v2];

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
  v2 = [(FKAApplicationDelegate *)self eventManager];
  v3 = [v2 actionManager];

  return v3;
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
  v3 = [(FKAApplicationDelegate *)self rootViewController];
  v4 = [v3 bannerPresenter];

  if (!v4)
  {
    v5 = [FKABannerPresenter alloc];
    v6 = [(FKAApplicationDelegate *)self nonInteractiveWindow];
    v7 = [(FKABannerPresenter *)v5 initWithContainingView:v6];
    v8 = [(FKAApplicationDelegate *)self rootViewController];
    [v8 setBannerPresenter:v7];

    v9 = [(FKAApplicationDelegate *)self rootViewController];
    v10 = [v9 bannerPresenter];
    [v10 setDelegate:self];
  }

  v11 = [(FKAApplicationDelegate *)self rootViewController];
  v12 = [v11 bannerPresenter];

  return v12;
}

- (void)setShouldIgnoreNextScreenChange:(BOOL)a3
{
  if (self->_shouldIgnoreNextScreenChange != a3)
  {
    v12 = v3;
    v13 = v4;
    v5 = a3;
    self->_shouldIgnoreNextScreenChange = a3;
    v6 = FKALogCommon();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v5)
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
  v5 = [(FKAApplicationDelegate *)self window];
  [v5 setRootViewController:v4];

  v6 = [(FKAApplicationDelegate *)self window];
  [v6 makeKeyAndVisible];

  v7 = objc_opt_new();
  nonInteractiveWindow = self->_nonInteractiveWindow;
  self->_nonInteractiveWindow = v7;

  v9 = [(FKARootViewController *)[FKARootNonInteractiveViewController alloc] initWithDelegate:self displayUUID:0];
  v10 = [(FKAApplicationDelegate *)self nonInteractiveWindow];
  [v10 setRootViewController:v9];

  v11 = [(FKAApplicationDelegate *)self nonInteractiveWindow];
  [v11 setWindowLevel:UIWindowLevelNormal + 1.0];

  v12 = [(FKAApplicationDelegate *)self nonInteractiveWindow];
  [v12 setHidden:0];
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

- (void)eventTap:(id)a3 handleKeyboardEvent:(id)a4
{
  v12 = a4;
  if ([v12 isDownEvent] && !-[FKAApplicationDelegate isShowingTextEditingModeInstructions](self, "isShowingTextEditingModeInstructions"))
  {
    v5 = [(FKAApplicationDelegate *)self bannerPresenter];
    [v5 dismissFloatingView];
  }

  v6 = [(FKAApplicationDelegate *)self eventManager];
  v7 = [v6 processKeyboardEvent:v12];

  if (v7)
  {
    if (_AXSFullKeyboardAccessFocusRingEnabled())
    {
      if ([v12 isDownEvent])
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
    if ([v12 isDownEvent])
    {
      v8 = [(FKAApplicationDelegate *)self eventTap];
      [v8 repostDownAndUpForKeyboardEvent:v12];
    }

    if ([v12 isDownEvent])
    {
      v9 = [v12 unicodeCharacter];
      if ([v9 length])
      {
        v10 = [v12 modifierMask] & 0xFFFFFFFFFFFFFFF7;

        if (!v10)
        {
          v11 = [(FKAApplicationDelegate *)self actionManager];
          [v11 didPerformTextInput];
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
  v2 = [(FKAApplicationDelegate *)self rootViewController];
  v3 = [v2 gestureViewController];

  return v3;
}

- (void)actionManager:(id)a3 showActionsForElement:(id)a4
{
  v5 = a4;
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
    v10 = [(FKAApplicationDelegate *)self elementActionManager];
    v11 = [v10 canShowActionsForElement:v5];

    if (!v11)
    {
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"NO_ACTIONS" value:&stru_100028C78 table:0];
      [(FKAApplicationDelegate *)self _showBannerWithText:v13];

      goto LABEL_10;
    }

    if ([(FKAApplicationDelegate *)self _areActionsValidForElement:v5])
    {
      [(FKAApplicationDelegate *)self _showActionsForElement:v5];
      goto LABEL_10;
    }

    v6 = FKALogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v5;
      v7 = "Tried to show actions for element that was not focusable: %@";
      v8 = v6;
      v9 = 12;
      goto LABEL_4;
    }
  }

LABEL_10:
}

- (void)toggleTypeaheadForActionManager:(id)a3
{
  v4 = [(FKAApplicationDelegate *)self typeaheadController];

  if (!v4)
  {
    v5 = objc_opt_new();
    [(FKAApplicationDelegate *)self setTypeaheadController:v5];

    v6 = [(FKAApplicationDelegate *)self typeaheadController];
    [v6 setDelegate:self];

    v7 = [(FKAApplicationDelegate *)self rootViewController];
    v8 = [(FKAApplicationDelegate *)self typeaheadController];
    [v7 showChildViewController:v8 animated:0];
  }

  v9 = [(FKAApplicationDelegate *)self typeaheadController];
  if ([v9 state])
  {
  }

  else
  {
    v10 = [(FKAApplicationDelegate *)self rootViewController];
    v11 = [v10 presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(FKAApplicationDelegate *)self setShouldIgnoreNextScreenChange:1];
      [(FKAApplicationDelegate *)self _dismissActionsControllerByForce:1];
    }
  }

  v13 = [(FKAApplicationDelegate *)self typeaheadController];
  [v13 toggleTypeaheadState];
}

- (void)_hideTypeaheadSynchronously
{
  v3 = [(FKAApplicationDelegate *)self typeaheadController];
  v4 = [v3 state];

  if (v4)
  {
    v5 = [(FKAApplicationDelegate *)self typeaheadController];
    [v5 setState:0];

    for (i = 0.0; ; i = i + 0.05)
    {
      v7 = [(FKAApplicationDelegate *)self actionManager];
      v8 = [v7 currentApplication];
      v9 = [v8 bundleId];
      v10 = +[NSBundle mainBundle];
      v11 = [v10 bundleIdentifier];
      v12 = [v9 isEqualToString:v11];

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

- (void)toggleGesturesModeForActionManager:(id)a3
{
  v4 = [(FKAApplicationDelegate *)self isGesturesModeEnabled]^ 1;

  [(FKAApplicationDelegate *)self setGesturesModeEnabled:v4];
}

- (void)togglePassthroughModeForActionManager:(id)a3
{
  v4 = [(FKAApplicationDelegate *)self isPassthroughModeEnabled]^ 1;

  [(FKAApplicationDelegate *)self setPassthroughModeEnabled:v4];
}

- (void)showHelpForActionManager:(id)a3
{
  v8 = objc_opt_new();
  v4 = [(FKAApplicationDelegate *)self actionManager];
  v5 = [v4 isInTextEditingMode];

  if (v5)
  {
    v6 = [(FKAApplicationDelegate *)self _keyChordForExitingTextMode];
    [v8 setTextEditingModeExitKeyChord:v6];
  }

  [v8 setModalPresentationStyle:5];
  [(FKAApplicationDelegate *)self setShouldIgnoreNextScreenChange:1];
  v7 = [(FKAApplicationDelegate *)self rootViewController];
  [v7 presentViewController:v8 withTransition:6 completion:0];

  [(FKAApplicationDelegate *)self setCommandsViewController:v8];
}

- (void)showDebugDisplay:(id)a3
{
  v4 = a3;
  v5 = [(FKAApplicationDelegate *)self eventManager];
  v8 = [v5 commandMap];

  v6 = [AXSSKeyboardCommand commandWithStandardCommandIdentifier:v4];

  v7 = [v8 keyChordForCommand:v6];
  [(FKAApplicationDelegate *)self showDebugDisplayWithKeyChord:v7];
}

- (void)showDebugDisplayWithKeyChord:(id)a3
{
  v7 = a3;
  if (AXIsInternalInstall())
  {
    v4 = +[AXSettings sharedInstance];
    v5 = [v4 fullKeyboardAccessShouldShowDebugKeyCommandsView];

    if (v5)
    {
      v6 = [v7 fkaSpeakableDisplayValue];
      [(FKAApplicationDelegate *)self _showDebugBannerText:v6];
    }
  }
}

- (BOOL)dismissHelpForActionManager:(id)a3
{
  v4 = [(FKAApplicationDelegate *)self commandsViewController];

  if (v4)
  {
    [(FKAApplicationDelegate *)self setShouldIgnoreNextScreenChange:1];
    v5 = [(FKAApplicationDelegate *)self rootViewController];
    [v5 dismissViewControllerWithTransition:6 completion:0];

    [(FKAApplicationDelegate *)self setCommandsViewController:0];
  }

  return v4 != 0;
}

- (void)_wakeDeviceIfNeeded
{
  v9 = +[NSDate date];
  v3 = [(FKAApplicationDelegate *)self lastWakeDeviceDate];
  if (!v3 || (v4 = v3, -[FKAApplicationDelegate lastWakeDeviceDate](self, "lastWakeDeviceDate"), v5 = objc_claimAutoreleasedReturnValue(), [v9 timeIntervalSinceDate:v5], v7 = v6, v5, v4, v7 > 0.3))
  {
    v8 = +[AXSystemAppServer server];
    [v8 wakeUpDeviceIfNecessary];

    [(FKAApplicationDelegate *)self setLastWakeDeviceDate:v9];
  }
}

- (BOOL)actionManagerCanAvoidRepostingTextInput:(id)a3
{
  v3 = [(FKAApplicationDelegate *)self typeaheadController];
  v4 = [v3 state] == 0;

  return v4;
}

- (void)didSuppressCommandForActionManager:(id)a3
{
  [(FKAApplicationDelegate *)self _wakeDeviceIfNeeded];

  [(FKAApplicationDelegate *)self _enableFocusRingIfNecessaryCheckingSystemSleepingState:0];
}

- (BOOL)canMoveApplicationFocusForActionManager:(id)a3
{
  v3 = [(FKAApplicationDelegate *)self rootViewController];
  v4 = [v3 isOverridingNativeFocus];

  return v4 ^ 1;
}

- (void)didToggleNotificationCenterForActionManager:(id)a3
{
  v4 = FKALogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Notification center toggled. Hiding UI as needed.", v5, 2u);
  }

  [(FKAApplicationDelegate *)self _handleUpdatedElementsForScreenChange:1];
}

- (void)didMoveToInnerElementForActionManager:(id)a3
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

- (void)typeaheadViewController:(id)a3 didChangeQueryString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FKAApplicationDelegate *)self typeaheadStartTimer];

  if (v8)
  {
    v9 = [(FKAApplicationDelegate *)self typeaheadStartTimer];
    [v9 invalidate];

    [(FKAApplicationDelegate *)self setTypeaheadStartTimer:0];
  }

  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100010A98;
  v12[3] = &unk_1000289C0;
  objc_copyWeak(&v14, &location);
  v10 = v7;
  v13 = v10;
  v11 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v12 block:0.15];
  [(FKAApplicationDelegate *)self setTypeaheadStartTimer:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)typeaheadViewControllerWillAppear:(id)a3
{
  [(FKAApplicationDelegate *)self _showTypeaheadNames];
  v4 = [(FKAApplicationDelegate *)self rootViewController];
  [v4 updateRequiresNativeFocus];
}

- (void)typeaheadViewControllerWillDismiss:(id)a3
{
  [(FKAApplicationDelegate *)self _hideTypeaheadNames];
  v4 = [(FKAApplicationDelegate *)self actionManager];
  [v4 focusOnSceneForTypeahead];

  v5 = [(FKAApplicationDelegate *)self rootViewController];
  [v5 updateRequiresNativeFocus];
}

- (void)typeaheadViewControllerDidTypeReturn:(id)a3
{
  [(FKAApplicationDelegate *)self _hideTypeaheadSynchronously];
  v4 = [(FKAApplicationDelegate *)self actionManager];
  [v4 performDefaultAction];
}

- (void)_showTypeaheadNames
{
  [(FKAApplicationDelegate *)self enumerateSceneDelegatesWithBlock:&stru_100028A00];

  [(FKAApplicationDelegate *)self _updateTypeaheadNamesViewControllerItems];
}

- (void)_updateTypeaheadNamesViewControllerItems
{
  v4 = [(FKAApplicationDelegate *)self typeaheadController];
  v3 = [v4 queryString];
  [(FKAApplicationDelegate *)self _updateTypeaheadNamesViewControllerItemsForQueryString:v3];
}

- (void)_updateTypeaheadNamesViewControllerItemsForQueryString:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100010EAC;
  v5[3] = &unk_100028A48;
  v6 = a3;
  v4 = v6;
  [(FKAApplicationDelegate *)self enumerateSceneDelegatesWithBlock:v5];
}

- (void)willDismissFloatingViewForPresenter:(id)a3
{
  v4 = a3;
  v7 = [(FKAApplicationDelegate *)self bannerPresenter];

  if (v7 == v4)
  {
    v5 = [(FKAApplicationDelegate *)self isShowingTextEditingModeInstructions];

    if (v5)
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

- (BOOL)eventManager:(id)a3 shouldRepostEvent:(id)a4
{
  v5 = a4;
  v6 = [(FKAApplicationDelegate *)self actionManager];
  v7 = [v5 keyChord];
  v8 = [v6 shouldRepostForKeyChord:v7];

  if ([(FKAApplicationDelegate *)self isGesturesModeEnabled])
  {
    if (v8)
    {
      v9 = [v5 keyChord];
      if (([v9 isArrowKeyChord] & 1) == 0)
      {

        goto LABEL_9;
      }

      v10 = [v5 keyChord];
      v11 = [v10 containsModifier];

      if (v11)
      {
LABEL_9:
        v16 = [v5 keyChord];
        if ([v16 isTextInputTabChord])
        {
          v17 = +[AXSettings sharedInstance];
          if (([v17 fullKeyboardAccessShouldShowTextEditingModeInstructions] & 1) == 0)
          {
LABEL_17:

            goto LABEL_18;
          }

          v18 = [(FKAApplicationDelegate *)self _canEnableFocusRingCheckingSystemSleepingState:1];

          if (!v18 || [(FKAApplicationDelegate *)self isShowingTextEditingModeInstructions])
          {
LABEL_19:
            v23 = [v5 keyChord];
            if ([v23 isArrowKeyChord])
            {
              v24 = [v5 keyChord];
              v25 = [v24 containsModifier];

              if (v25)
              {
LABEL_23:
                v15 = 1;
                goto LABEL_24;
              }

              v23 = [v5 keyChord];
              [(FKAApplicationDelegate *)self showDebugDisplayWithKeyChord:v23];
            }

            goto LABEL_23;
          }

          v16 = [(FKAApplicationDelegate *)self _keyChordForExitingTextMode];
          if (v16)
          {
            v19 = FKALogCommon();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Showing instructions for text editing mode.", buf, 2u);
            }

            v17 = [v16 fkaSpeakableDisplayValue];
            v20 = +[NSBundle mainBundle];
            v21 = [v20 localizedStringForKey:@"TEXT_EDITING_MODE_INSTRUCTIONS_MESSAGE" value:&stru_100028C78 table:0];
            v22 = [NSString localizedStringWithFormat:v21, v17];

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

  v12 = [v5 unicodeCharacter];
  v13 = [v5 unicodeCharacter];
  v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 modifierMask]);
  AXUIAutomationHandleKeyComplete();

  v15 = 0;
LABEL_24:

  return v15;
}

- (void)eventManager:(id)a3 repostEvent:(id)a4
{
  v5 = a4;
  v6 = [(FKAApplicationDelegate *)self eventTap];
  [v6 repostDownAndUpForKeyboardEvent:v5];
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
    v3 = [(FKAApplicationDelegate *)self _sceneDelegateForFocusedElement];
    v4 = [v3 nonInteractiveWindow];
  }

  else
  {
    v4 = self->_nonInteractiveWindow;
  }

  return v4;
}

- (id)_fkaDelegateScenes
{
  v13 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 connectedScenes];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 delegate];
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

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v13;
}

- (id)_sceneDelegateForFocusedElement
{
  v3 = [(FKAApplicationDelegate *)self _fkaDelegateScenes];
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
  }

  else
  {
    v5 = [(FKAApplicationDelegate *)self nativeFocusElementDisplayID];
    if (v5 == -1)
    {
      v6 = [(FKAApplicationDelegate *)self actionManager];
      v7 = [v6 currentElement];
      v5 = [v7 windowDisplayId];
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v3;
    v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v27 = v3;
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
          v14 = [v13 session];
          v15 = [v14 role];
          if ([v15 isEqualToString:v11])
          {
            [v13 screen];
            v16 = v11;
            v17 = v10;
            v19 = v18 = v5;
            v20 = +[UIScreen mainScreen];
            v21 = [v19 isEqual:v20];

            v5 = v18;
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

          v22 = [v13 screen];
          v23 = [v22 displayIdentity];
          v24 = [v23 displayID];

          if (v24 == v5)
          {
LABEL_18:
            v4 = v13;
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

      v4 = 0;
LABEL_19:
      v3 = v27;
    }

    else
    {
      v4 = 0;
    }
  }

  v25 = [v4 delegate];

  return v25;
}

- (id)_sceneDelegates
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 connectedScenes];
  v5 = [v4 allObjects];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100011954;
  v8[3] = &unk_100028A70;
  v8[4] = self;
  v6 = [v5 ax_flatMappedArrayUsingBlock:v8];

  return v6;
}

- (void)enumerateSceneDelegatesWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(FKAApplicationDelegate *)self _sceneDelegates];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011AC4;
  v7[3] = &unk_100028A98;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

- (BOOL)_sceneVendedByOneness:(id)a3
{
  v3 = [a3 screen];
  v4 = [v3 displayIdentity];
  v5 = [v4 type] == 8;

  return v5;
}

- (FKARootViewController)rootViewController
{
  if (+[FKAApplication usesScenes])
  {
    v3 = [(FKAApplicationDelegate *)self _sceneDelegateForFocusedElement];
    v4 = [v3 interactiveWindow];
    v5 = [v4 rootViewController];
  }

  else
  {
    v3 = [(FKAApplicationDelegate *)self window];
    v5 = [v3 rootViewController];
  }

  return v5;
}

- (FKARootViewController)nonInteractiveRootViewController
{
  v2 = [(FKAApplicationDelegate *)self nonInteractiveWindow];
  v3 = [v2 rootViewController];

  return v3;
}

- (void)_showDebugBannerText:(id)a3
{
  v4 = a3;
  v5 = [(FKAApplicationDelegate *)self debugBannerPresenter];

  if (!v5)
  {
    v6 = [AXUIBannerPresenter alloc];
    v7 = [(FKAApplicationDelegate *)self nonInteractiveWindow];
    v8 = [v6 initWithContainingView:v7];
    [(FKAApplicationDelegate *)self setDebugBannerPresenter:v8];
  }

  v9 = [(FKAApplicationDelegate *)self debugBannerPresenter];
  [v9 presentBannerViewWithText:v4 secondaryText:0 duration:1 fromUserAction:2.0];
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

  v15 = [(FKAApplicationDelegate *)self eventManager];
  v16 = [v15 commandMap];
  v17 = [v16 addCommandsForTransientKeyChords:v11];
  [(FKAApplicationDelegate *)self setGesturesModeKeyChordsIdentifier:v17];
}

- (void)setGesturesModeEnabled:(BOOL)a3
{
  if (self->_gesturesModeEnabled != a3)
  {
    self->_gesturesModeEnabled = a3;
    if (a3)
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

      v22 = [(FKAApplicationDelegate *)self gesturesModeKeyChordsIdentifier];

      if (v22)
      {
        v23 = [(FKAApplicationDelegate *)self eventManager];
        v24 = [v23 commandMap];
        v25 = [(FKAApplicationDelegate *)self gesturesModeKeyChordsIdentifier];
        [v24 removeTransientKeyChordsForIdentifier:v25];

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

- (void)setPassthroughModeEnabled:(BOOL)a3
{
  if (self->_passthroughModeEnabled != a3)
  {
    v21 = v3;
    v22 = v4;
    v5 = a3;
    self->_passthroughModeEnabled = a3;
    v7 = FKALogCommon();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Enabled passthrough mode", buf, 2u);
      }

      v9 = [(FKAApplicationDelegate *)self eventManager];
      [v9 setPassthroughModeEnabled:1];

      _AXSFullKeyboardAccessSetPassthroughModeEnabled();
      _AXSFullKeyboardAccessSetFocusRingEnabled();
      v10 = [(FKAApplicationDelegate *)self eventManager];
      v11 = [v10 commandMap];

      v12 = [AXSSKeyboardCommand commandWithStandardCommandIdentifier:AXSSKeyboardCommandIdentifierTogglePassthroughMode];
      v13 = [v11 keyChordForCommand:v12];
      v14 = [v13 fkaSpeakableDisplayValue];
      v15 = +[NSBundle mainBundle];
      v16 = [v15 localizedStringForKey:@"PASSTHROUGH_MODE" value:&stru_100028C78 table:0];
      v17 = [NSString localizedStringWithFormat:v16, v14];
      [(FKAApplicationDelegate *)self _showBannerWithText:v17];
    }

    else
    {
      if (v8)
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Disabled passthrough mode", v19, 2u);
      }

      v18 = [(FKAApplicationDelegate *)self eventManager];
      [v18 setPassthroughModeEnabled:0];

      _AXSFullKeyboardAccessSetPassthroughModeEnabled();
      [(FKAApplicationDelegate *)self _enableFocusRingWithTimeout];
      v11 = +[NSBundle mainBundle];
      v12 = [v11 localizedStringForKey:@"PASSTHROUGH_MODE_DISABLED" value:&stru_100028C78 table:0];
      [(FKAApplicationDelegate *)self _showBannerWithText:v12];
    }
  }
}

- (void)_showActionsForElement:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(FKAApplicationDelegate *)self elementActionManager];
  v7 = [v6 actionsForElement:v4];

  v8 = [FKAActionsController alertControllerWithTitle:0 message:0 preferredStyle:0];
  [v8 setElement:v4];
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
        v14 = [v13 name];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100012F20;
        v23[3] = &unk_100028AC0;
        v23[4] = v5;
        v23[5] = v13;
        v15 = [UIAlertAction actionWithTitle:v14 style:0 handler:v23];

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
  v22[4] = v5;
  v18 = [UIAlertAction actionWithTitle:v17 style:1 handler:v22];
  [v8 addAction:v18];

  [(FKAApplicationDelegate *)v5 setShouldIgnoreNextScreenChange:1];
  LODWORD(v16) = AXDeviceIsPad();
  v19 = [(FKAApplicationDelegate *)v5 rootViewController];
  v20 = v19;
  if (v16)
  {
    [v4 frame];
    [v20 presentViewController:v8 inPopoverFromRect:?];
  }

  else
  {
    [v19 presentViewController:v8 animated:1 completion:0];
  }
}

- (BOOL)_areActionsValidForElement:(id)a3
{
  v3 = [a3 uiElement];
  [v3 updateCache:2204];
  v4 = [v3 BOOLWithAXAttribute:2204];

  return v4;
}

- (BOOL)_dismissActionsControllerByForce:(BOOL)a3
{
  v5 = [(FKAApplicationDelegate *)self rootViewController];
  v6 = [v5 presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v8 = [(FKAApplicationDelegate *)self rootViewController];
  v9 = [v8 presentedViewController];

  if (a3 || ([v9 element], v10 = objc_claimAutoreleasedReturnValue(), v11 = -[FKAApplicationDelegate _areActionsValidForElement:](self, "_areActionsValidForElement:", v10), v10, (v11 & 1) == 0))
  {
    v12 = 1;
    [(FKAApplicationDelegate *)self setShouldIgnoreNextScreenChange:1];
    v13 = [(FKAApplicationDelegate *)self rootViewController];
    [v13 dismissViewControllerAnimated:1 completion:0];
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

- (void)_handleNativeFocusItemChange:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 objectForKey:@"element"];
      if (v5)
      {
        v6 = v5;
        v7 = [(FKAApplicationDelegate *)self _fkaDelegateScenes];
        if ([v7 count] >= 2)
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

- (void)observer:(id)a3 didObserveNotification:(int)a4 notificationData:(void *)a5
{
  v8 = a3;
  if (a4 > 1017)
  {
    if (a4 <= 1052)
    {
      if (a4 != 1018)
      {
        if (a4 == 1039)
        {
          v9 = +[AXSettings sharedInstance];
          v10 = [v9 fullKeyboardAccessFocusRingTimeoutEnabled];

          if (v10)
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

    if (a4 == 1053)
    {
      [(FKAApplicationDelegate *)self _handleNativeFocusItemChange:a5];
      goto LABEL_22;
    }

    if (a4 == 1067)
    {
      goto LABEL_15;
    }

LABEL_18:
    v12 = FKALogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_100014524(a5, a4, v12);
    }

    goto LABEL_22;
  }

  if (a4 == 1000)
  {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_handleScreenChange" object:0];
    [(FKAApplicationDelegate *)self performSelector:"_handleScreenChange" withObject:0 afterDelay:0.3];
    goto LABEL_22;
  }

  if (a4 == 1001)
  {
    goto LABEL_16;
  }

  if (a4 != 1004)
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
    v3 = [(FKAApplicationDelegate *)self eventManager];
    [v3 setShouldSuppressCommands:0];
  }

  [(FKAApplicationDelegate *)self _resetFocusRingTimeout];
}

- (void)_disableFocusRing
{
  [(FKAApplicationDelegate *)self _cancelFocusRingTimeout];
  _AXSFullKeyboardAccessSetFocusRingEnabled();
  v3 = [(FKAApplicationDelegate *)self eventManager];
  [v3 setShouldSuppressCommands:1];
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

- (BOOL)_canEnableFocusRingCheckingSystemSleepingState:(BOOL)a3
{
  v3 = a3;
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

  if (v3)
  {
    v4 = +[AXSystemAppServer server];
    v5 = [v4 isSystemSleeping];

    v6 = FKALogCommon();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v5)
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

- (void)_didUpdateAvailableCommandsWithUpdatedMap:(id)a3
{
  v4 = a3;
  v5 = FKALogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Did update available commands.", v7, 2u);
  }

  v6 = [(FKAApplicationDelegate *)self eventManager];
  [v6 setCommandMap:v4];

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
  v2 = [(FKAApplicationDelegate *)self eventManager];
  v3 = [v2 commandMap];

  v4 = [AXSSKeyboardCommand commandWithStandardCommandIdentifier:AXSSKeyboardCommandIdentifierMoveInsideNext];
  v5 = [v3 keyChordForCommand:v4];
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
    v4 = [(FKAApplicationDelegate *)self bannerPresenter];
    [v4 dismissFloatingView];
  }
}

- (void)_announceCommandList:(id)a3
{
  v3 = a3;
  if (_AXFeatureSupportsNonSightedUsage())
  {
    v4 = [v3 title];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [v3 items];
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        v9 = 0;
        v10 = v4;
        do
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v18 + 1) + 8 * v9);
          v12 = [v11 name];
          v16 = [v11 keyDescription];
          v17 = @"__AXStringForVariablesSentinel";
          v14 = v12;
          v4 = __UIAXStringForVariables();

          v9 = v9 + 1;
          v10 = v4;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:{16, v12, v16, @"__AXStringForVariablesSentinel"}];
      }

      while (v7);
    }

    v15 = [v3 footerText];
    v13 = __UIAXStringForVariables();

    UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, v13);
  }
}

- (void)willAquireNativeFocus
{
  v3 = [(FKAApplicationDelegate *)self actionManager];
  v2 = [v3 currentElement];
  [v2 performAction:5501 withValue:0];
}

- (void)didReleaseNativeFocus
{
  v3 = [(FKAApplicationDelegate *)self actionManager];
  v2 = [v3 currentElement];
  [v2 performAction:5500 withValue:0];
}

@end