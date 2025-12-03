@interface FKAActionManager
+ (void)_accessibilityPerformValidations:(id)validations;
- (AXElement)currentApplication;
- (AXElement)currentElement;
- (BOOL)_element:(id)_element handlesArrowKeyChord:(id)chord;
- (BOOL)_isInTextEditingModeForCurrentElement:(id)element;
- (BOOL)_isTextEditingElement:(id)element;
- (BOOL)handleEscapeKey;
- (BOOL)isInTextEditingMode;
- (BOOL)shouldRepostForKeyChord:(id)chord;
- (CGPoint)_pointForGestures;
- (CGPoint)_pointForGesturesForElement:(id)element;
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
- (void)didSuppressCommand:(id)command;
- (void)end3DTouch;
- (void)endPinch;
- (void)endRotate;
- (void)endSwipe;
- (void)endTwoFingerSwipe;
- (void)focusOnSceneForTypeahead;
- (void)goHome;
- (void)goToFirstElement;
- (void)goToLastElement;
- (void)goToNextElementOfType:(unint64_t)type;
- (void)goToPreviousElementOfType:(unint64_t)type;
- (void)handleCommand:(id)command;
- (void)lift;
- (void)lockScreen;
- (void)moveDown;
- (void)moveFocusWithHeading:(unint64_t)heading queryString:(id)string;
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
- (void)setShouldAvoidRepostingTextInput:(BOOL)input;
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
- (void)willPerformStandardCommandWithIdentifier:(id)identifier;
@end

@implementation FKAActionManager

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UIScreen" hasInstanceMethod:@"_enumerateScreensWithBlock:" withFullSignature:{"v", "@?", 0}];
  [validationsCopy validateClass:@"UIWindowSceneAccessibility" hasInstanceMethod:@"_accessibilitySceneDidBecomeFocused" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"UIWindowSceneAccessibility" hasInstanceMethod:@"_accessibilitySetFocusEnabledInApplication:" withFullSignature:{"B", "B", 0}];
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

- (void)setShouldAvoidRepostingTextInput:(BOOL)input
{
  if (self->_shouldAvoidRepostingTextInput != input)
  {
    if (input && (-[FKAActionManager delegate](self, "delegate"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 actionManagerCanAvoidRepostingTextInput:self], v4, v5))
    {
      delegate = [(FKAActionManager *)self delegate];
      [delegate didExitTextEditingModeForActionManager:self];

      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

    self->_shouldAvoidRepostingTextInput = v7;
  }
}

- (void)handleCommand:(id)command
{
  commandCopy = command;
  type = [commandCopy type];
  v4 = [type isEqualToString:FKAKeyboardCommandTypeSiriShortcut];

  if (v4)
  {
    [commandCopy perform];
  }
}

- (void)willPerformStandardCommandWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(FKAActionManager *)self delegate];
  [delegate showDebugDisplay:identifierCopy];

  if (([identifierCopy isEqualToString:AXSSKeyboardCommandIdentifierLockScreen] & 1) == 0)
  {
    delegate2 = [(FKAActionManager *)self delegate];
    [delegate2 wakeDeviceIfNeededForActionManager:self];
  }

  v7.receiver = self;
  v7.super_class = FKAActionManager;
  [(FKAActionManager *)&v7 willPerformStandardCommandWithIdentifier:identifierCopy];
}

- (void)didSuppressCommand:(id)command
{
  commandCopy = command;
  v5 = FKALogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = commandCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Did suppress command: %@", &v7, 0xCu);
  }

  delegate = [(FKAActionManager *)self delegate];
  [delegate didSuppressCommandForActionManager:self];
}

- (void)goToNextElementOfType:(unint64_t)type
{
  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
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
        currentApplication = [(FKAActionManager *)self currentApplication];
        bundleId = [currentApplication bundleId];
        *v9 = 138412290;
        *&v9[4] = bundleId;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Command: Move to next element in %@", v9, 0xCu);
      }

      [(FKAActionManager *)self _moveFocusWithHeading:16 byGroup:1];
    }
  }

  else
  {
    switch(type)
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

- (void)goToPreviousElementOfType:(unint64_t)type
{
  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
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
        currentApplication = [(FKAActionManager *)self currentApplication];
        bundleId = [currentApplication bundleId];
        *v9 = 138412290;
        *&v9[4] = bundleId;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Command: Move to previous element in %@", v9, 0xCu);
      }

      [(FKAActionManager *)self _moveFocusWithHeading:32 byGroup:1];
    }
  }

  else
  {
    switch(type)
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

  delegate = [(FKAActionManager *)self delegate];
  [delegate toggleTypeaheadForActionManager:self];
}

- (void)togglePassthroughMode
{
  v3 = FKALogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Command: togglePassthroughMode", v5, 2u);
  }

  delegate = [(FKAActionManager *)self delegate];
  [delegate togglePassthroughModeForActionManager:self];
}

- (void)toggleGesturesMode
{
  v3 = FKALogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Command: toggleGesturesMode", v5, 2u);
  }

  delegate = [(FKAActionManager *)self delegate];
  [delegate toggleGesturesModeForActionManager:self];
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

  delegate = [(FKAActionManager *)self delegate];
  [delegate didToggleNotificationCenterForActionManager:self];
}

- (void)showAccessibilityActions
{
  delegate = [(FKAActionManager *)self delegate];
  [delegate hideTypeaheadSynchronouslyForActionManager:self];

  delegate2 = [(FKAActionManager *)self delegate];
  currentElement = [(FKAActionManager *)self currentElement];
  [delegate2 actionManager:self showActionsForElement:currentElement];
}

- (void)goHome
{
  v2 = +[AXSpringBoardServer server];
  dismissBuddyIfNecessary = [v2 dismissBuddyIfNecessary];

  if ((dismissBuddyIfNecessary & 1) == 0)
  {
    v4 = +[AXPISystemActionHelper sharedInstance];
    [v4 activateHomeButton];
  }
}

- (BOOL)handleEscapeKey
{
  delegate = [(FKAActionManager *)self delegate];
  v4 = [delegate dismissHelpForActionManager:self];

  if (v4)
  {
    return 1;
  }

  currentElement = [(FKAActionManager *)self currentElement];
  v7 = [currentElement performAction:2013];

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

  accelerometer = [(FKAActionManager *)self accelerometer];

  if (!accelerometer)
  {
    v5 = objc_opt_new();
    [(FKAActionManager *)self setAccelerometer:v5];
  }

  accelerometer2 = [(FKAActionManager *)self accelerometer];
  currentDeviceOrientation = [accelerometer2 currentDeviceOrientation];

  if (currentDeviceOrientation > 6 || ((1 << currentDeviceOrientation) & 0x61) == 0)
  {
    v11 = FKALogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 67109120;
      v14 = currentDeviceOrientation;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Device orientation: %i", &v13, 8u);
    }

    activeApplicationOrientation = currentDeviceOrientation;
    goto LABEL_16;
  }

  v8 = +[AXSpringBoardServer server];
  activeApplicationOrientation = [v8 activeApplicationOrientation];

  v10 = FKALogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 67109376;
    v14 = currentDeviceOrientation;
    v15 = 1024;
    v16 = activeApplicationOrientation;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Device orientation: %i, application orientation: %i", &v13, 0xEu);
  }

  if (activeApplicationOrientation <= 6 && ((1 << activeApplicationOrientation) & 0x61) != 0)
  {
    v11 = FKALogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1000142A8(activeApplicationOrientation, v11);
    }

LABEL_16:
  }

  if (activeApplicationOrientation > 2)
  {
    if (activeApplicationOrientation == 3)
    {
      v12 = +[AXPISystemActionHelper sharedInstance];
      [v12 rotateUpsideDown];
      goto LABEL_28;
    }

    if (activeApplicationOrientation == 4)
    {
      v12 = +[AXPISystemActionHelper sharedInstance];
      [v12 rotatePortrait];
      goto LABEL_28;
    }
  }

  else
  {
    if (activeApplicationOrientation == 1)
    {
      v12 = +[AXPISystemActionHelper sharedInstance];
      [v12 rotateLeft];
      goto LABEL_28;
    }

    if (activeApplicationOrientation == 2)
    {
      v12 = +[AXPISystemActionHelper sharedInstance];
      [v12 rotateRight];
      goto LABEL_28;
    }
  }

  v12 = FKALogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_100014320(activeApplicationOrientation, v12);
  }

LABEL_28:
}

- (void)performDefaultAction
{
  currentElement = [(FKAActionManager *)self currentElement];
  [currentElement press];
  [(FKAActionManager *)self setShouldAvoidRepostingTextInput:0];
}

- (void)toggleHelp
{
  delegate = [(FKAActionManager *)self delegate];
  v4 = [delegate dismissHelpForActionManager:self];

  if ((v4 & 1) == 0)
  {
    delegate2 = [(FKAActionManager *)self delegate];
    [delegate2 showHelpForActionManager:self];
  }
}

- (void)openContextualMenu
{
  currentElement = [(FKAActionManager *)self currentElement];
  [currentElement showContextMenu];
}

- (void)press
{
  gestureViewController = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [gestureViewController pressAtPoint:1 numberOfFingers:?];
}

- (void)lift
{
  gestureViewController = [(FKAActionManager *)self gestureViewController];
  isPerformingGesture = [gestureViewController isPerformingGesture];

  if (isPerformingGesture)
  {
    gestureViewController2 = [(FKAActionManager *)self gestureViewController];
    [gestureViewController2 lift];
  }
}

- (void)twoFingerPress
{
  gestureViewController = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [gestureViewController pressAtPoint:2 numberOfFingers:?];
}

- (void)beginSwipeLeft
{
  gestureViewController = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [gestureViewController beginSwipeFromPoint:0 inDirection:1 numberOfFingers:?];
}

- (void)beginSwipeRight
{
  gestureViewController = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [gestureViewController beginSwipeFromPoint:1 inDirection:1 numberOfFingers:?];
}

- (void)beginSwipeUp
{
  gestureViewController = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [gestureViewController beginSwipeFromPoint:2 inDirection:1 numberOfFingers:?];
}

- (void)beginSwipeDown
{
  gestureViewController = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [gestureViewController beginSwipeFromPoint:3 inDirection:1 numberOfFingers:?];
}

- (void)endSwipe
{
  gestureViewController = [(FKAActionManager *)self gestureViewController];
  [gestureViewController endIncrementalGesture];
}

- (void)beginTwoFingerSwipeLeft
{
  gestureViewController = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [gestureViewController beginSwipeFromPoint:0 inDirection:2 numberOfFingers:?];
}

- (void)beginTwoFingerSwipeRight
{
  gestureViewController = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [gestureViewController beginSwipeFromPoint:1 inDirection:2 numberOfFingers:?];
}

- (void)beginTwoFingerSwipeUp
{
  gestureViewController = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [gestureViewController beginSwipeFromPoint:2 inDirection:2 numberOfFingers:?];
}

- (void)beginTwoFingerSwipeDown
{
  gestureViewController = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [gestureViewController beginSwipeFromPoint:3 inDirection:2 numberOfFingers:?];
}

- (void)endTwoFingerSwipe
{
  gestureViewController = [(FKAActionManager *)self gestureViewController];
  [gestureViewController endIncrementalGesture];
}

- (void)beginPinchOut
{
  gestureViewController = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [gestureViewController beginPinchOutFromPoint:?];
}

- (void)beginPinchIn
{
  gestureViewController = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [gestureViewController beginPinchInFromPoint:?];
}

- (void)endPinch
{
  gestureViewController = [(FKAActionManager *)self gestureViewController];
  [gestureViewController endIncrementalGesture];
}

- (void)beginRotateLeft
{
  gestureViewController = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [gestureViewController beginRotateLeftFromPoint:?];
}

- (void)beginRotateRight
{
  gestureViewController = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [gestureViewController beginRotateRightFromPoint:?];
}

- (void)endRotate
{
  gestureViewController = [(FKAActionManager *)self gestureViewController];
  [gestureViewController endIncrementalGesture];
}

- (void)begin3DTouch
{
  gestureViewController = [(FKAActionManager *)self gestureViewController];
  [(FKAActionManager *)self _pointForGestures];
  [gestureViewController begin3DTouchAtPoint:?];
}

- (void)end3DTouch
{
  gestureViewController = [(FKAActionManager *)self gestureViewController];
  [gestureViewController endIncrementalGesture];
}

- (id)gestureViewController
{
  delegate = [(FKAActionManager *)self delegate];
  gestureViewController = [delegate gestureViewController];

  return gestureViewController;
}

- (AXElement)currentApplication
{
  focusManager = [(FKAActionManager *)self focusManager];
  currentApplication = [focusManager currentApplication];

  return currentApplication;
}

- (AXElement)currentElement
{
  currentApplication = [(FKAActionManager *)self currentApplication];
  currentFocusElement = [currentApplication currentFocusElement];

  if ([currentFocusElement hasRemoteFocusSystem])
  {
    do
    {
      elementForRemoteFocusSystem = [currentFocusElement elementForRemoteFocusSystem];
      currentFocusElement2 = [elementForRemoteFocusSystem currentFocusElement];

      currentFocusElement = currentFocusElement2;
    }

    while (([currentFocusElement2 hasRemoteFocusSystem] & 1) != 0);
  }

  else
  {
    currentFocusElement2 = currentFocusElement;
  }

  return currentFocusElement2;
}

- (void)moveFocusWithHeading:(unint64_t)heading queryString:(id)string
{
  stringCopy = string;
  focusManager = [(FKAActionManager *)self focusManager];
  [focusManager moveFocusWithHeading:heading queryString:stringCopy];

  [(FKAActionManager *)self setShouldAvoidRepostingTextInput:1];
}

- (void)focusOnSceneForTypeahead
{
  focusManager = [(FKAActionManager *)self focusManager];
  [focusManager focusOnSceneForTypeahead];
}

- (BOOL)_isInTextEditingModeForCurrentElement:(id)element
{
  v4 = [(FKAActionManager *)self _isTextEditingElement:element];
  if (v4)
  {
    LOBYTE(v4) = ![(FKAActionManager *)self shouldAvoidRepostingTextInput];
  }

  return v4;
}

- (BOOL)isInTextEditingMode
{
  selfCopy = self;
  currentElement = [(FKAActionManager *)self currentElement];
  LOBYTE(selfCopy) = [(FKAActionManager *)selfCopy _isInTextEditingModeForCurrentElement:currentElement];

  return selfCopy;
}

- (BOOL)shouldRepostForKeyChord:(id)chord
{
  chordCopy = chord;
  if ([chordCopy isTextInputChord])
  {
    currentElement = [(FKAActionManager *)self currentElement];
    if (-[FKAActionManager _isInTextEditingModeForCurrentElement:](self, "_isInTextEditingModeForCurrentElement:", currentElement) && (![chordCopy isTextInputTabChord] || (objc_msgSend(currentElement, "uiElement"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLWithAXAttribute:", 12007), v6, (v7 & 1) != 0)))
    {
      v8 = 1;
    }

    else if ([chordCopy isArrowKeyChord])
    {
      v8 = [(FKAActionManager *)self _element:currentElement handlesArrowKeyChord:chordCopy];
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

- (BOOL)_element:(id)_element handlesArrowKeyChord:(id)chord
{
  _elementCopy = _element;
  chordCopy = chord;
  v8 = [_elementCopy pid];
  currentApplication = [(FKAActionManager *)self currentApplication];
  if (v8 != [currentApplication pid])
  {
    v11 = 0;
LABEL_6:

    goto LABEL_7;
  }

  containsModifier = [chordCopy containsModifier];

  if ((containsModifier & 1) == 0)
  {
    uiElement = [_elementCopy uiElement];
    currentApplication = [uiElement arrayWithAXAttribute:12011];

    v13 = [NSSet setWithArray:currentApplication];
    keys = [chordCopy keys];
    v15 = [NSSet setWithArray:keys];
    v11 = [v13 intersectsSet:v15];

    goto LABEL_6;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (BOOL)_isTextEditingElement:(id)element
{
  elementCopy = element;
  traits = [elementCopy traits];
  if (((kAXIsEditingTrait | kAXTextEntryTrait) & ~traits) != 0)
  {
    isComboBox = [elementCopy isComboBox];
  }

  else
  {
    isComboBox = 1;
  }

  return isComboBox;
}

- (CGPoint)_pointForGestures
{
  currentElement = [(FKAActionManager *)self currentElement];
  [(FKAActionManager *)self _pointForGesturesForElement:currentElement];
  v6 = v5;
  v7 = v4;
  y = CGPointZero.y;
  if (v5 == CGPointZero.x && v4 == y)
  {
    v10 = [currentElement elementForAttribute:3049];
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
    -[FKAActionManager _referenceBoundsForDisplayId:](self, "_referenceBoundsForDisplayId:", [currentElement windowDisplayId]);
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

- (CGPoint)_pointForGesturesForElement:(id)element
{
  elementCopy = element;
  y = CGPointZero.y;
  [elementCopy visiblePoint];
  v7 = v6;
  v9 = v8;
  windowContextId = [elementCopy windowContextId];
  windowDisplayId = [elementCopy windowDisplayId];
  [(FKAActionManager *)self _referenceBoundsForDisplayId:windowDisplayId];
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
      [v20 convertPoint:windowContextId fromContextId:windowDisplayId displayId:{v7, v9}];
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
          v66 = windowContextId;
          v67 = 1024;
          v68 = windowDisplayId;
          v69 = 2112;
          v70 = elementCopy;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Gesture at visible point: %@, raw visible point: %@, context ID: %u, display ID: %u, element: %@", buf, 0x2Cu);
        }

        v17 = v24;
        x = v22;
      }
    }
  }

  if (x == CGPointZero.x && v17 == y)
  {
    [elementCopy centerPoint];
    v31 = v29;
    v32 = v30;
    if ((v29 != -1.0 || v30 != -1.0) && (v29 != CGPointZero.x || v30 != y))
    {
      v34 = +[AXElement systemWideElement];
      [v34 convertPoint:windowContextId fromContextId:windowDisplayId displayId:{v31, v32}];
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
          v66 = windowContextId;
          v67 = 1024;
          v68 = windowDisplayId;
          v69 = 2112;
          v70 = elementCopy;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Gesture at center point: %@, raw center point: %@, context ID: %u, display ID: %u, element: %@", buf, 0x2Cu);
        }

        v17 = v38;
        x = v36;
      }
    }
  }

  if (x == CGPointZero.x && v17 == y)
  {
    [elementCopy frame];
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
          v64 = elementCopy;
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
      sub_100014398(elementCopy, v52);
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