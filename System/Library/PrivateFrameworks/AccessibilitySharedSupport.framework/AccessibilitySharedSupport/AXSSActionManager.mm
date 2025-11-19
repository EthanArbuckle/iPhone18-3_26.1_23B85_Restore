@interface AXSSActionManager
- (BOOL)handleEscapeKey;
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
- (void)end3DTouch;
- (void)endPinch;
- (void)endRotate;
- (void)endSwipe;
- (void)endTwoFingerSwipe;
- (void)enterContainer;
- (void)exitContainer;
- (void)goHome;
- (void)goToFirstElement;
- (void)goToLastElement;
- (void)goToNextElementOfType:(unint64_t)a3;
- (void)goToNextSection;
- (void)goToPreviousElementOfType:(unint64_t)a3;
- (void)goToPreviousSection;
- (void)lift;
- (void)lockScreen;
- (void)moveDown;
- (void)moveInsideNext;
- (void)moveInsidePrevious;
- (void)moveLeft;
- (void)movePointerToFocus;
- (void)moveRight;
- (void)moveUp;
- (void)nextButton;
- (void)nextCheckbox;
- (void)nextHeading;
- (void)nextImage;
- (void)nextLink;
- (void)nextTable;
- (void)nextTextField;
- (void)openContextualMenu;
- (void)performDefaultAction;
- (void)performEscape;
- (void)performSysdiagnose;
- (void)press;
- (void)previousButton;
- (void)previousCheckbox;
- (void)previousHeading;
- (void)previousImage;
- (void)previousLink;
- (void)previousTable;
- (void)previousTextField;
- (void)rebootDevice;
- (void)rotateDevice;
- (void)showAccessibilityActions;
- (void)toggleAppLibrary;
- (void)toggleAppSwitcher;
- (void)toggleApplicationList;
- (void)toggleControlCenter;
- (void)toggleDock;
- (void)toggleGesturesMode;
- (void)toggleHelp;
- (void)toggleMenuBar;
- (void)toggleNotificationCenter;
- (void)togglePassthroughMode;
- (void)toggleQuickNote;
- (void)toggleWindowList;
- (void)twoFingerLift;
- (void)twoFingerPress;
@end

@implementation AXSSActionManager

- (void)goToNextElementOfType:(unint64_t)a3
{
  v4 = FKALogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(AXSSActionManager *)a3 goToNextElementOfType:v4];
  }
}

- (void)goToPreviousElementOfType:(unint64_t)a3
{
  v4 = FKALogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(AXSSActionManager *)a3 goToPreviousElementOfType:v4];
  }
}

- (void)goToFirstElement
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager goToFirstElement];
  }
}

- (void)goToLastElement
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager goToLastElement];
  }
}

- (void)goToNextSection
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager goToNextSection];
  }
}

- (void)goToPreviousSection
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager goToPreviousSection];
  }
}

- (void)enterContainer
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager enterContainer];
  }
}

- (void)exitContainer
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager exitContainer];
  }
}

- (void)moveLeft
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager moveLeft];
  }
}

- (void)moveRight
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager moveRight];
  }
}

- (void)moveUp
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager moveUp];
  }
}

- (void)moveDown
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager moveDown];
  }
}

- (void)moveInsideNext
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager moveDown];
  }
}

- (void)moveInsidePrevious
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager moveDown];
  }
}

- (void)performDefaultAction
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager performDefaultAction];
  }
}

- (void)toggleHelp
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager toggleHelp];
  }
}

- (void)openContextualMenu
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager openContextualMenu];
  }
}

- (void)activateSiri
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager activateSiri];
  }
}

- (void)goHome
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager goHome];
  }
}

- (void)toggleAppSwitcher
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager toggleAppSwitcher];
  }
}

- (void)toggleAppLibrary
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager toggleAppLibrary];
  }
}

- (void)toggleQuickNote
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager toggleQuickNote];
  }
}

- (void)lockScreen
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager lockScreen];
  }
}

- (void)activateAccessibilityShortcut
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager activateAccessibilityShortcut];
  }
}

- (void)armApplePay
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager armApplePay];
  }
}

- (void)rebootDevice
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager rebootDevice];
  }
}

- (void)activateSOS
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager activateSOS];
  }
}

- (void)toggleMenuBar
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager toggleMenuBar];
  }
}

- (void)toggleNotificationCenter
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager toggleNotificationCenter];
  }
}

- (void)toggleControlCenter
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager toggleControlCenter];
  }
}

- (void)toggleDock
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager toggleDock];
  }
}

- (void)rotateDevice
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager rotateDevice];
  }
}

- (void)showAccessibilityActions
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager showAccessibilityActions];
  }
}

- (void)performEscape
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager performEscape];
  }
}

- (BOOL)handleEscapeKey
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager handleEscapeKey];
  }

  return 0;
}

- (void)performSysdiagnose
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager performSysdiagnose];
  }
}

- (void)activateTypeahead
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager activateTypeahead];
  }
}

- (void)togglePassthroughMode
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager togglePassthroughMode];
  }
}

- (void)toggleWindowList
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager toggleWindowList];
  }
}

- (void)toggleApplicationList
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager toggleApplicationList];
  }
}

- (void)nextButton
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager nextButton];
  }
}

- (void)previousButton
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager previousButton];
  }
}

- (void)nextCheckbox
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager nextCheckbox];
  }
}

- (void)previousCheckbox
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager previousCheckbox];
  }
}

- (void)nextTable
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager nextTable];
  }
}

- (void)previousTable
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager previousTable];
  }
}

- (void)nextImage
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager nextImage];
  }
}

- (void)previousImage
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager previousImage];
  }
}

- (void)nextLink
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager nextLink];
  }
}

- (void)previousLink
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager previousLink];
  }
}

- (void)nextHeading
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager nextHeading];
  }
}

- (void)previousHeading
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager previousHeading];
  }
}

- (void)nextTextField
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager nextTextField];
  }
}

- (void)previousTextField
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager previousTextField];
  }
}

- (void)movePointerToFocus
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager movePointerToFocus];
  }
}

- (void)toggleGesturesMode
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager toggleGesturesMode];
  }
}

- (void)press
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager press];
  }
}

- (void)lift
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager lift];
  }
}

- (void)twoFingerPress
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager twoFingerPress];
  }
}

- (void)twoFingerLift
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager twoFingerLift];
  }
}

- (void)beginSwipeLeft
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager beginSwipeLeft];
  }
}

- (void)beginSwipeRight
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager beginSwipeRight];
  }
}

- (void)beginSwipeUp
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager beginSwipeUp];
  }
}

- (void)beginSwipeDown
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager beginSwipeDown];
  }
}

- (void)endSwipe
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager endSwipe];
  }
}

- (void)beginTwoFingerSwipeLeft
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager beginSwipeLeft];
  }
}

- (void)beginTwoFingerSwipeRight
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager beginSwipeRight];
  }
}

- (void)beginTwoFingerSwipeUp
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager beginSwipeUp];
  }
}

- (void)beginTwoFingerSwipeDown
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager beginSwipeDown];
  }
}

- (void)endTwoFingerSwipe
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager endSwipe];
  }
}

- (void)beginPinchIn
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager beginPinchIn];
  }
}

- (void)beginPinchOut
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager beginPinchOut];
  }
}

- (void)endPinch
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager endPinch];
  }
}

- (void)beginRotateRight
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager beginRotateRight];
  }
}

- (void)beginRotateLeft
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager beginRotateLeft];
  }
}

- (void)endRotate
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager endRotate];
  }
}

- (void)begin3DTouch
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager begin3DTouch];
  }
}

- (void)end3DTouch
{
  v2 = FKALogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [AXSSActionManager end3DTouch];
  }
}

- (void)goToNextElementOfType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_1C0E8A000, a2, OS_LOG_TYPE_DEBUG, "goToNextElementOfType %ld", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)goToPreviousElementOfType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_1C0E8A000, a2, OS_LOG_TYPE_DEBUG, "goToPreviousElementOfType %ld", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end