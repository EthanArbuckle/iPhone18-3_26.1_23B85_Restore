@interface FKAActionManager
+ (void)_accessibilityPerformValidations:(id)a3;
- (AXElement)currentApplication;
- (AXElement)currentElement;
- (BOOL)_element:(id)a3 handlesArrowKeyChord:(id)a4;
- (BOOL)_isInTextEditingModeForCurrentElement:(id)a3;
- (BOOL)_isTextEditingElement:(id)a3;
- (BOOL)handleEscapeKey;
- (BOOL)isInTextEditingMode;
- (BOOL)shouldRepostForKeyChord:(id)a3;
- (CGPoint)_pointForGestures;
- (CGPoint)_pointForGesturesForElement:(id)a3;
- (FKAActionManager)init;
- (FKAActionManagerDelegate)delegate;
- (id)gestureViewController;
- (void)activateAccessibilityShortcut;
- (void)activateSOS;
- (void)activateSiri;
- (void)activateTypeahead;
- (void)armApplePay;
- (void)begin3DTouch;
- (void)beginPinchIn;
- (void)beginPinchOut;
- (void)beginRotateLeft;
- (void)beginRotateRight;
- (void)beginSwipeDown;
- (void)beginSwipeLeft;
- (void)beginSwipeRight;
- (void)beginSwipeUp;
- (void)beginTwoFingerSwipeDown;
- (void)beginTwoFingerSwipeLeft;
- (void)beginTwoFingerSwipeRight;
- (void)beginTwoFingerSwipeUp;
- (void)didSuppressCommand:(id)a3;
- (void)end3DTouch;
- (void)endPinch;
- (void)endRotate;
- (void)endSwipe;
- (void)endTwoFingerSwipe;
- (void)focusOnSceneForTypeahead;
- (void)goHome;
- (void)goToFirstElement;
- (void)goToLastElement;
- (void)goToNextElementOfType:(unint64_t)a3;
- (void)goToPreviousElementOfType:(unint64_t)a3;
- (void)handleCommand:(id)a3;
- (void)lift;
- (void)lockScreen;
- (void)moveDown;
- (void)moveFocusWithHeading:(unint64_t)a3 queryString:(id)a4;
- (void)moveInsideNext;
- (void)moveInsidePrevious;
- (void)moveLeft;
- (void)moveRight;
- (void)moveUp;
- (void)openContextualMenu;
- (void)performDefaultAction;
- (void)performSysdiagnose;
- (void)press;
- (void)rebootDevice;
- (void)rotateDevice;
- (void)setShouldAvoidRepostingTextInput:(BOOL)a3;
- (void)showAccessibilityActions;
- (void)toggleAppLibrary;
- (void)toggleAppSwitcher;
- (void)toggleControlCenter;
- (void)toggleDock;
- (void)toggleGesturesMode;
- (void)toggleHelp;
- (void)toggleNotificationCenter;
- (void)togglePassthroughMode;
- (void)toggleQuickNote;
- (void)twoFingerPress;
- (void)willPerformStandardCommandWithIdentifier:(id)a3;
@end

@implementation FKAActionManager

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UIScreen" hasInstanceMethod:@"_enumerateScreensWithBlock:" withFullSignature:{"v", "@?", 0}];
  [v3 validateClass:@"UIWindowSceneAccessibility" hasInstanceMethod:@"_accessibilitySceneDidBecomeFocused" withFullSignature:{"B", 0}];
  [v3 validateClass:@"UIWindowSceneAccessibility" hasInstanceMethod:@"_accessibilitySetFocusEnabledInApplication:" withFullSignature:{"B", "B", 0}];
}

- (FKAActionManager)init
{
  v6.receiver = self;
  v6.super_class = FKAActionManager;
  v2 = [(FKAActionManager *)&v6 init];
  if (v2)
  {
    v3 = +[AXPISystemActionHelper sharedInstance];
    [v3 warm];

    v4 = objc_opt_new();
    [(FKAActionManager *)v2 setFocusManager:v4];
  }

  return v2;
}

- (void)setShouldAvoidRepostingTextInput:(BOOL)a3
{
  if (self->_shouldAvoidRepostingTextInput != a3)
  {
    if (a3 && (-[FKAActionManager delegate](self, "delegate"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 actionManagerCanAvoidRepostingTextInput:self], v4, v5))
    {
      v6 = [(FKAActionManager *)self delegate];
      [v6 didExitTextEditingModeForActionManager:self];

      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

    self->_shouldAvoidRepostingTextInput = v7;
  }
}

- (void)handleCommand:(id)a3
{
  v5 = a3;
  v3 = [v5 type];
  v4 = [v3 isEqualToString:FKAKeyboardCommandTypeSiriShortcut];

  if (v4)
  {
    [v5 perform];
  }
}

- (void)willPerformStandardCommandWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(FKAActionManager *)self delegate];
  [v5 showDebugDisplay:v4];

  if (([v4 isEqualToString:AXSSKeyboardCommandIdentifierLockScreen] & 1) == 0)
  {
    v6 = [(FKAActionManager *)self delegate];
    [v6 wakeDeviceIfNeededForActionManager:self];
  }

  v7.receiver = self;
  v7.super_class = FKAActionManager;
  [(FKAActionManager *)&v7 willPerformStandardCommandWithIdentifier:v4];
}

- (void)didSuppressCommand:(id)a3
{
  v4 = a3;
  v5 = FKALogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Did suppress command: %@", &v7, 0xCu);
  }

  v6 = [(FKAActionManager *)self delegate];
  [v6 didSuppressCommandForActionManager:self];
}

- (void)goToNextElementOfType:(unint64_t)a3
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v4 = FKALogCommon();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *v9 = 0;
          v5 = "Command: Move to next interactive element";
          goto LABEL_15;
        }

LABEL_16:
      }
    }

    else
    {
      v6 = FKALogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(FKAActionManager *)self currentApplication];
        v8 = [v7 bundleId];
        *v9 = 138412290;
        *&v9[4] = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Command: Move to next element in %@", v9, 0xCu);
      }

      [(FKAActionManager *)self _moveFocusWithHeading:16 byGroup:1];
    }
  }

  else
  {
    switch(a3)
    {
      case 2uLL:
        v4 = FKALogCommon();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *v9 = 0;
          v5 = "Command: Move to next keyboard focusable element";
          goto LABEL_15;
        }

        goto LABEL_16;
      case 3uLL:
        v4 = FKALogCommon();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *v9 = 0;
          v5 = "Command: Move to next section";
          goto LABEL_15;
        }

        goto LABEL_16;
      case 4uLL:
        v4 = FKALogCommon();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *v9 = 0;
          v5 = "Command: Move to next container";
LABEL_15:
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v5, v9, 2u);
          goto LABEL_16;
        }

        goto LABEL_16;
    }
  }

  [(FKAActionManager *)self setShouldAvoidRepostingTextInput:1, *v9];
}

- (void)goToPreviousElementOfType:(unint64_t)a3
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v4 = FKALogCommon();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *v9 = 0;
          v5 = "Command: Move to previous interactive element";
          goto LABEL_15;
        }

LABEL_16:
      }
    }

    else
    {
      v6 = FKALogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(FKAActionManager *)self currentApplication];
        v8 = [v7 bundleId];
        *v9 = 138412290;
        *&v9[4] = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Command: Move to previous element in %@", v9, 0xCu);
      }

      [(FKAActionManager *)self _moveFocusWithHeading:32 byGroup:1];
    }
  }

  else
  {
    switch(a3)
    {
      case 2uLL:
        v4 = FKALogCommon();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *v9 = 0;
          v5 = "Command: Move to previous keyboard focusable element";
          goto LABEL_15;
        }

        goto LABEL_16;
      case 3uLL:
        v4 = FKALogCommon();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *v9 = 0;
          v5 = "Command: Move to previous section";
          goto LABEL_15;
        }

        goto LABEL_16;
      case 4uLL:
        v4 = FKALogCommon();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *v9 = 0;
          v5 = "Command: Move to previous container";
LABEL_15:
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v5, v9, 2u);
          goto LABEL_16;
        }

        goto LABEL_16;
    }
  }

  [(FKAActionManager *)self setShouldAvoidRepostingTextInput:1, *v9];
}

- (void)goToFirstElement
{
  v3 = FKALogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Command: goToFirstElement", v4, 2u);
  }

  [(FKAActionManager *)self _moveFocusWithHeading:256];
}

- (void)goToLastElement
{
  v3 = FKALogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Command: goToLastElement", v4, 2u);
  }

  [(FKAActionManager *)self _moveFocusWithHeading:512];
}

- (void)moveLeft
{
  v3 = FKALogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Command: moveLeft", v4, 2u);
  }

  [(FKAActionManager *)self _moveFocusWithHeading:4];
}

- (void)moveRight
{
  v3 = FKALogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Command: moveRight", v4, 2u);
  }

  [(FKAActionManager *)self _moveFocusWithHeading:8];
}

- (void)moveUp
{
  v3 = FKALogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Command: moveUp", v4, 2u);
  }

  [(FKAActionManager *)self _moveFocusWithHeading:1];
}

- (void)moveDown
{
  v3 = FKALogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Command: moveDown", v4, 2u);
  }

  [(FKAActionManager *)self _moveFocusWithHeading:2];
}

- (void)moveInsideNext
{
  v3 = FKALogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Command: moveInsideNext", v4, 2u);
  }

  [(FKAActionManager *)self _moveFocusInsideForward:1];
}

- (void)moveInsidePrevious
{
  v3 = FKALogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Command: moveInsidePrevious", v4, 2u);
  }

  [(FKAActionManager *)self _moveFocusInsideForward:0];
}

- (void)activateSiri
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Command: activateSiri", v4, 2u);
  }

  v3 = +[AXPISystemActionHelper sharedInstance];
  [v3 activateSiri];
}

- (void)toggleAppSwitcher
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Command: toggleAppSwitcher", v4, 2u);
  }

  v3 = +[AXPISystemActionHelper sharedInstance];
  [v3 toggleAppSwitcher];
}

- (void)toggleAppLibrary
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Command: toggleAppLibrary", v4, 2u);
  }

  v3 = +[AXPISystemActionHelper sharedInstance];
  [v3 toggleAppLibrary];
}

- (void)toggleQuickNote
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Command: toggleQuickNote", v4, 2u);
  }

  v3 = +[AXPISystemActionHelper sharedInstance];
  [v3 toggleQuickNote];
}

- (void)lockScreen
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Command: lockScreen", v4, 2u);
  }

  v3 = +[AXPISystemActionHelper sharedInstance];
  [v3 activateLockButton];
}

- (void)activateAccessibilityShortcut
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Command: activateAccessibilityShortcut", v4, 2u);
  }

  v3 = +[AXPISystemActionHelper sharedInstance];
  [v3 activateTripleClick];
}

- (void)armApplePay
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Command: armApplePay", v4, 2u);
  }

  v3 = +[AXPISystemActionHelper sharedInstance];
  [v3 armApplePay];
}

- (void)rebootDevice
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Command: rebootDevice", v4, 2u);
  }

  v3 = +[AXPISystemActionHelper sharedInstance];
  [v3 rebootDevice];
}

- (void)activateSOS
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Command: activateSOS", v4, 2u);
  }

  v3 = +[AXPISystemActionHelper sharedInstance];
  [v3 activateSOSMode];
}

- (void)toggleControlCenter
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Command: toggleControlCenter", v4, 2u);
  }

  v3 = +[AXPISystemActionHelper sharedInstance];
  [v3 toggleControlCenter];
}

- (void)activateTypeahead
{
  v3 = FKALogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Command: activateTypeahead", v5, 2u);
  }

  v4 = [(FKAActionManager *)self delegate];
  [v4 toggleTypeaheadForActionManager:self];
}

- (void)togglePassthroughMode
{
  v3 = FKALogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Command: togglePassthroughMode", v5, 2u);
  }

  v4 = [(FKAActionManager *)self delegate];
  [v4 togglePassthroughModeForActionManager:self];
}

- (void)toggleGesturesMode
{
  v3 = FKALogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Command: toggleGesturesMode", v5, 2u);
  }

  v4 = [(FKAActionManager *)self delegate];
  [v4 toggleGesturesModeForActionManager:self];
}

- (void)toggleDock
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Command: toggleDock", v4, 2u);
  }

  v3 = +[AXPISystemActionHelper sharedInstance];
  [v3 toggleDock];
}

- (void)toggleNotificationCenter
{
  v3 = +[AXPISystemActionHelper sharedInstance];
  [v3 toggleNotificationCenter];

  v4 = [(FKAActionManager *)self delegate];
  [v4 didToggleNotificationCenterForActionManager:self];
}

- (void)showAccessibilityActions
{
  v3 = [(FKAActionManager *)self delegate];
  [v3 hideTypeaheadSynchronouslyForActionManager:self];

  v5 = [(FKAActionManager *)self delegate];
  v4 = [(FKAActionManager *)self currentElement];
  [v5 actionManager:self showActionsForElement:v4];
}

- (void)goHome
{
  v2 = +[AXSpringBoardServer server];
  v3 = [v2 dismissBuddyIfNecessary];

  if ((v3 & 1) == 0)
  {
    v4 = +[AXPISystemActionHelper sharedInstance];
    [v4 activateHomeButton];
  }
}

- (BOOL)handleEscapeKey
{
  v3 = [(FKAActionManager *)self delegate];
  v4 = [v3 dismissHelpForActionManager:self];

  if (v4)
  {
    return 1;
  }

  v6 = [(FKAActionManager *)self currentElement];
  v7 = [v6 performAction:2013];

  return v7;
}

- (void)performSysdiagnose
{
  v3 = +[AXPISystemActionHelper sharedInstance];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100007FBC;
  v4[3] = &unk_1000287D8;
  v4[4] = self;
  [v3 performSysdiagnoseWithStatusUpdateHandler:v4];
}

- (void)rotateDevice
{
  v3 = FKALogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Command: rotateDevice", &v13, 2u);
  }

  v4 = [(FKAActionManager *)self accelerometer];

  if (!v4)
  {
    v5 = objc_opt_new();
    [(FKAActionManager *)self setAccelerometer:v5];
  }

  v6 = [(FKAActionManager *)self accelerometer];
  v7 = [v6 currentDeviceOrientation];

  if (v7 > 6 || ((1 << v7) & 0x61) == 0)
  {
    v11 = FKALogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 67109120;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Device orientation: %i", &v13, 8u);
    }

    v9 = v7;
    goto LABEL_16;
  }

  v8 = +[AXSpringBoardServer server];
  v9 = [v8 activeApplicationOrientation];

  v10 = FKALogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 67109376;
    v14 = v7;
    v15 = 1024;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Device orientation: %i, application orientation: %i", &v13, 0xEu);
  }

  if (v9 <= 6 && ((1 << v9) & 0x61) != 0)
  {
    v11 = FKALogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1000142A8(v9, v11);
    }

LABEL_16:
  }

  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v12 = +[AXPISystemActionHelper sharedInstance];
      [v12 rotateUpsideDown];
      goto LABEL_28;
    }

    if (v9 == 4)
    {
      v12 = +[AXPISystemActionHelper sharedInstance];
      [v12 rotatePortrait];
      goto LABEL_28;
    }
  }

  else
  {
    if (v9 == 1)
    {
      v12 = +[AXPISystemActionHelper sharedInstance];
      [v12 rotateLeft];
      goto LABEL_28;
    }

    if (v9 == 2)
    {
      v12 = +[AXPISystemActionHelper sharedInstance];
      [v12 rotateRight];
      goto LABEL_28;
    }
  }

  v12 = FKALogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_100014320(v9, v12);
  }

LABEL_28:
}

- (void)performDefaultAction
{
  v3 = [(FKAActionManager *)self currentElement];
  [v3 press];
  [(FKAActionManager *)self setShouldAvoidRepostingTextInput:0];
}

- (void)toggleHelp
{
  v3 = [(FKAActionManager *)self delegate];
  v4 = [v3 dismissHelpForActionManager:self];

  if ((v4 & 1) == 0)
  {
    v5 = [(FKAActionManager *)self delegate];
    [v5 showHelpForActionManager:self];
  }
}

- (void)openContextualMenu
{
  v2 = [(FKAActionManager *)self currentElement];
  [v2 showContextMenu];
}

- (void)press
{
  v3 = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [v3 pressAtPoint:1 numberOfFingers:?];
}

- (void)lift
{
  v3 = [(FKAActionManager *)self gestureViewController];
  v4 = [v3 isPerformingGesture];

  if (v4)
  {
    v5 = [(FKAActionManager *)self gestureViewController];
    [v5 lift];
  }
}

- (void)twoFingerPress
{
  v3 = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [v3 pressAtPoint:2 numberOfFingers:?];
}

- (void)beginSwipeLeft
{
  v3 = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [v3 beginSwipeFromPoint:0 inDirection:1 numberOfFingers:?];
}

- (void)beginSwipeRight
{
  v3 = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [v3 beginSwipeFromPoint:1 inDirection:1 numberOfFingers:?];
}

- (void)beginSwipeUp
{
  v3 = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [v3 beginSwipeFromPoint:2 inDirection:1 numberOfFingers:?];
}

- (void)beginSwipeDown
{
  v3 = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [v3 beginSwipeFromPoint:3 inDirection:1 numberOfFingers:?];
}

- (void)endSwipe
{
  v2 = [(FKAActionManager *)self gestureViewController];
  [v2 endIncrementalGesture];
}

- (void)beginTwoFingerSwipeLeft
{
  v3 = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [v3 beginSwipeFromPoint:0 inDirection:2 numberOfFingers:?];
}

- (void)beginTwoFingerSwipeRight
{
  v3 = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [v3 beginSwipeFromPoint:1 inDirection:2 numberOfFingers:?];
}

- (void)beginTwoFingerSwipeUp
{
  v3 = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [v3 beginSwipeFromPoint:2 inDirection:2 numberOfFingers:?];
}

- (void)beginTwoFingerSwipeDown
{
  v3 = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [v3 beginSwipeFromPoint:3 inDirection:2 numberOfFingers:?];
}

- (void)endTwoFingerSwipe
{
  v2 = [(FKAActionManager *)self gestureViewController];
  [v2 endIncrementalGesture];
}

- (void)beginPinchOut
{
  v3 = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [v3 beginPinchOutFromPoint:?];
}

- (void)beginPinchIn
{
  v3 = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [v3 beginPinchInFromPoint:?];
}

- (void)endPinch
{
  v2 = [(FKAActionManager *)self gestureViewController];
  [v2 endIncrementalGesture];
}

- (void)beginRotateLeft
{
  v3 = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [v3 beginRotateLeftFromPoint:?];
}

- (void)beginRotateRight
{
  v3 = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [v3 beginRotateRightFromPoint:?];
}

- (void)endRotate
{
  v2 = [(FKAActionManager *)self gestureViewController];
  [v2 endIncrementalGesture];
}

- (void)begin3DTouch
{
  v3 = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [v3 begin3DTouchAtPoint:?];
}

- (void)end3DTouch
{
  v2 = [(FKAActionManager *)self gestureViewController];
  [v2 endIncrementalGesture];
}

- (id)gestureViewController
{
  v2 = [(FKAActionManager *)self delegate];
  v3 = [v2 gestureViewController];

  return v3;
}

- (AXElement)currentApplication
{
  v2 = [(FKAActionManager *)self focusManager];
  v3 = [v2 currentApplication];

  return v3;
}

- (AXElement)currentElement
{
  v2 = [(FKAActionManager *)self currentApplication];
  v3 = [v2 currentFocusElement];

  if ([v3 hasRemoteFocusSystem])
  {
    do
    {
      v4 = [v3 elementForRemoteFocusSystem];
      v5 = [v4 currentFocusElement];

      v3 = v5;
    }

    while (([v5 hasRemoteFocusSystem] & 1) != 0);
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

- (void)moveFocusWithHeading:(unint64_t)a3 queryString:(id)a4
{
  v6 = a4;
  v7 = [(FKAActionManager *)self focusManager];
  [v7 moveFocusWithHeading:a3 queryString:v6];

  [(FKAActionManager *)self setShouldAvoidRepostingTextInput:1];
}

- (void)focusOnSceneForTypeahead
{
  v2 = [(FKAActionManager *)self focusManager];
  [v2 focusOnSceneForTypeahead];
}

- (BOOL)_isInTextEditingModeForCurrentElement:(id)a3
{
  v4 = [(FKAActionManager *)self _isTextEditingElement:a3];
  if (v4)
  {
    LOBYTE(v4) = ![(FKAActionManager *)self shouldAvoidRepostingTextInput];
  }

  return v4;
}

- (BOOL)isInTextEditingMode
{
  v2 = self;
  v3 = [(FKAActionManager *)self currentElement];
  LOBYTE(v2) = [(FKAActionManager *)v2 _isInTextEditingModeForCurrentElement:v3];

  return v2;
}

- (BOOL)shouldRepostForKeyChord:(id)a3
{
  v4 = a3;
  if ([v4 isTextInputChord])
  {
    v5 = [(FKAActionManager *)self currentElement];
    if (-[FKAActionManager _isInTextEditingModeForCurrentElement:](self, "_isInTextEditingModeForCurrentElement:", v5) && (![v4 isTextInputTabChord] || (objc_msgSend(v5, "uiElement"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLWithAXAttribute:", 12007), v6, (v7 & 1) != 0)))
    {
      v8 = 1;
    }

    else if ([v4 isArrowKeyChord])
    {
      v8 = [(FKAActionManager *)self _element:v5 handlesArrowKeyChord:v4];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_element:(id)a3 handlesArrowKeyChord:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 pid];
  v9 = [(FKAActionManager *)self currentApplication];
  if (v8 != [v9 pid])
  {
    v11 = 0;
LABEL_6:

    goto LABEL_7;
  }

  v10 = [v7 containsModifier];

  if ((v10 & 1) == 0)
  {
    v12 = [v6 uiElement];
    v9 = [v12 arrayWithAXAttribute:12011];

    v13 = [NSSet setWithArray:v9];
    v14 = [v7 keys];
    v15 = [NSSet setWithArray:v14];
    v11 = [v13 intersectsSet:v15];

    goto LABEL_6;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (BOOL)_isTextEditingElement:(id)a3
{
  v3 = a3;
  v4 = [v3 traits];
  if (((kAXIsEditingTrait | kAXTextEntryTrait) & ~v4) != 0)
  {
    v5 = [v3 isComboBox];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (CGPoint)_pointForGestures
{
  v3 = [(FKAActionManager *)self currentElement];
  [(FKAActionManager *)self _pointForGesturesForElement:v3];
  v6 = v5;
  v7 = v4;
  y = CGPointZero.y;
  if (v5 == CGPointZero.x && v4 == y)
  {
    v10 = [v3 elementForAttribute:3049];
    if (v10)
    {
      v11 = FKALogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Trying to perform a gesture using a focus ring ancestor.", &v21, 2u);
      }

      [(FKAActionManager *)self _pointForGesturesForElement:v10];
      v6 = v12;
      v7 = v13;
    }
  }

  if (v6 == CGPointZero.x && v7 == y)
  {
    -[FKAActionManager _referenceBoundsForDisplayId:](self, "_referenceBoundsForDisplayId:", [v3 windowDisplayId]);
    AX_CGRectGetCenter();
    v6 = v15;
    v7 = v16;
    v17 = FKALogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v23.x = v6;
      v23.y = v7;
      v18 = NSStringFromCGPoint(v23);
      v21 = 138412290;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Falling back to gesture at center point of screen: %@", &v21, 0xCu);
    }
  }

  v19 = v6;
  v20 = v7;
  result.y = v20;
  result.x = v19;
  return result;
}

- (CGPoint)_pointForGesturesForElement:(id)a3
{
  v4 = a3;
  y = CGPointZero.y;
  [v4 visiblePoint];
  v7 = v6;
  v9 = v8;
  v10 = [v4 windowContextId];
  v11 = [v4 windowDisplayId];
  [(FKAActionManager *)self _referenceBoundsForDisplayId:v11];
  v57 = v13;
  v59 = v12;
  v55 = v15;
  v56 = v14;
  v16 = v7 == -1.0 && v9 == -1.0;
  v17 = y;
  x = CGPointZero.x;
  if (!v16)
  {
    v19 = v7 == CGPointZero.x && v9 == y;
    v17 = y;
    x = CGPointZero.x;
    if (!v19)
    {
      v20 = +[AXElement systemWideElement];
      [v20 convertPoint:v10 fromContextId:v11 displayId:{v7, v9}];
      v22 = v21;
      v24 = v23;

      v79.origin.y = v57;
      v79.origin.x = v59;
      v79.size.height = v55;
      v79.size.width = v56;
      v76.x = v22;
      v76.y = v24;
      v17 = y;
      x = CGPointZero.x;
      if (CGRectContainsPoint(v79, v76))
      {
        v25 = FKALogCommon();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v71.x = v22;
          v71.y = v24;
          v26 = NSStringFromCGPoint(v71);
          v72.x = v7;
          v72.y = v9;
          v27 = NSStringFromCGPoint(v72);
          *buf = 138413314;
          v62 = v26;
          v63 = 2112;
          v64 = v27;
          v65 = 1024;
          v66 = v10;
          v67 = 1024;
          v68 = v11;
          v69 = 2112;
          v70 = v4;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Gesture at visible point: %@, raw visible point: %@, context ID: %u, display ID: %u, element: %@", buf, 0x2Cu);
        }

        v17 = v24;
        x = v22;
      }
    }
  }

  if (x == CGPointZero.x && v17 == y)
  {
    [v4 centerPoint];
    v31 = v29;
    v32 = v30;
    if ((v29 != -1.0 || v30 != -1.0) && (v29 != CGPointZero.x || v30 != y))
    {
      v34 = +[AXElement systemWideElement];
      [v34 convertPoint:v10 fromContextId:v11 displayId:{v31, v32}];
      v36 = v35;
      v38 = v37;

      v80.origin.y = v57;
      v80.origin.x = v59;
      v80.size.height = v55;
      v80.size.width = v56;
      v77.x = v36;
      v77.y = v38;
      if (CGRectContainsPoint(v80, v77))
      {
        v39 = FKALogCommon();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v73.x = v36;
          v73.y = v38;
          v40 = NSStringFromCGPoint(v73);
          v74.x = v31;
          v74.y = v32;
          v41 = NSStringFromCGPoint(v74);
          *buf = 138413314;
          v62 = v40;
          v63 = 2112;
          v64 = v41;
          v65 = 1024;
          v66 = v10;
          v67 = 1024;
          v68 = v11;
          v69 = 2112;
          v70 = v4;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Gesture at center point: %@, raw center point: %@, context ID: %u, display ID: %u, element: %@", buf, 0x2Cu);
        }

        v17 = v38;
        x = v36;
      }
    }
  }

  if (x == CGPointZero.x && v17 == y)
  {
    [v4 frame];
    v43 = v81.origin.x;
    v44 = v81.origin.y;
    width = v81.size.width;
    height = v81.size.height;
    if (!CGRectIsEmpty(v81))
    {
      AX_CGRectGetCenter();
      v78.x = v47;
      v78.y = v48;
      v82.origin.y = v57;
      v82.origin.x = v59;
      v82.size.height = v55;
      v82.size.width = v56;
      v58 = v78.y;
      v60 = v78.x;
      if (CGRectContainsPoint(v82, v78))
      {
        v49 = FKALogCommon();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v83.origin.x = v43;
          v83.origin.y = v44;
          v83.size.width = width;
          v83.size.height = height;
          v50 = NSStringFromCGRect(v83);
          *buf = 138412546;
          v62 = v50;
          v63 = 2112;
          v64 = v4;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "Gesture at midpoint of frame: %@, element: %@", buf, 0x16u);
        }

        v17 = v58;
        x = v60;
      }
    }
  }

  if (x == CGPointZero.x && v17 == y)
  {
    v52 = FKALogCommon();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      sub_100014398(v4, v52);
    }
  }

  v53 = x;
  v54 = v17;
  result.y = v54;
  result.x = v53;
  return result;
}

- (FKAActionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end