@interface SBLockScreenManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_finishUIUnlockFromSource:(int)source withOptions:(id)options;
- (BOOL)biometricAuthenticationCoordinator:(id)coordinator requestsUnlockWithIntent:(int)intent;
- (BOOL)handleKeyHIDEvent:(__IOHIDEvent *)event;
- (void)_handleAuthenticationFeedback:(id)feedback;
- (void)_setUILocked:(BOOL)locked;
- (void)lockUIFromSource:(int)source withOptions:(id)options completion:(id)completion;
@end

@implementation SBLockScreenManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBLockScreenManager" hasInstanceMethod:@"lockUIFromSource: withOptions: completion:" withFullSignature:{"v", "i", "@", "@?", 0}];
  [validationsCopy validateClass:@"SBLockScreenManager" hasInstanceMethod:@"_finishUIUnlockFromSource: withOptions:" withFullSignature:{"B", "i", "@", 0}];
  [validationsCopy validateClass:@"SBLockScreenManager" hasInstanceMethod:@"biometricAuthenticationCoordinator: requestsUnlockWithIntent:" withFullSignature:{"B", "@", "i", 0}];
  [validationsCopy validateClass:@"SBLockScreenManager" hasInstanceMethod:@"isUILocked" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBLockScreenManager" hasInstanceMethod:@"_handleAuthenticationFeedback:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SBLockScreenManager" hasInstanceMethod:@"handleKeyHIDEvent:" withFullSignature:{"B", "^{__IOHIDEvent=}", 0}];
  [validationsCopy validateClass:@"SBAuthenticationFeedback" hasInstanceMethod:@"jiggleLock" withFullSignature:{"B", 0}];
}

- (void)lockUIFromSource:(int)source withOptions:(id)options completion:(id)completion
{
  v6 = *&source;
  completionCopy = completion;
  optionsCopy = options;
  [(SBLockScreenManagerAccessibility *)self _axSetLastLockSource:v6];
  v10.receiver = self;
  v10.super_class = SBLockScreenManagerAccessibility;
  [(SBLockScreenManagerAccessibility *)&v10 lockUIFromSource:v6 withOptions:optionsCopy completion:completionCopy];
}

- (BOOL)_finishUIUnlockFromSource:(int)source withOptions:(id)options
{
  v6.receiver = self;
  v6.super_class = SBLockScreenManagerAccessibility;
  v4 = [(SBLockScreenManagerAccessibility *)&v6 _finishUIUnlockFromSource:*&source withOptions:options];
  AXPerformBlockOnMainThreadAfterDelay();
  return v4;
}

- (void)_setUILocked:(BOOL)locked
{
  lockedCopy = locked;
  if (([(SBLockScreenManagerAccessibility *)self safeBoolForKey:@"isUILocked"]& 1) == 0)
  {
    +[AXSpringBoardGlue toggleVoiceOverInfoPanel];
  }

  v5.receiver = self;
  v5.super_class = SBLockScreenManagerAccessibility;
  [(SBLockScreenManagerAccessibility *)&v5 _setUILocked:lockedCopy];
}

- (BOOL)biometricAuthenticationCoordinator:(id)coordinator requestsUnlockWithIntent:(int)intent
{
  v7.receiver = self;
  v7.super_class = SBLockScreenManagerAccessibility;
  v5 = [(SBLockScreenManagerAccessibility *)&v7 biometricAuthenticationCoordinator:coordinator requestsUnlockWithIntent:?];
  if (UIAccessibilityIsVoiceOverRunning() && intent == 2 && v5)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDA98]);
  }

  return v5;
}

- (void)_handleAuthenticationFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v9.receiver = self;
  v9.super_class = SBLockScreenManagerAccessibility;
  [(SBLockScreenManagerAccessibility *)&v9 _handleAuthenticationFeedback:feedbackCopy];
  if (UIAccessibilityIsVoiceOverRunning() && [feedbackCopy safeBoolForKey:@"jiggleLock"])
  {
    v5 = *MEMORY[0x29EDC7EA8];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDA90]);
    v6 = MEMORY[0x29EDBD7E8];
    v7 = accessibilityLocalizedString(@"touch.id.try.again");
    v8 = [v6 axAttributedStringWithString:v7];

    [v8 setAttribute:&unk_2A230C928 forKey:*MEMORY[0x29EDBD860]];
    UIAccessibilityPostNotification(v5, v8);
  }
}

- (BOOL)handleKeyHIDEvent:(__IOHIDEvent *)event
{
  if (_AXSFullKeyboardAccessEnabled() || UIAccessibilityIsVoiceOverRunning())
  {
    v5 = [MEMORY[0x29EDBDF58] representationWithHIDEvent:event hidStreamIdentifier:@"AXFKA_SBLockScreenManager"];
    keyInfo = [v5 keyInfo];
    v7 = keyInfo;
    if (keyInfo)
    {
      [keyInfo translateKeycode];
      if ([v7 gsModifierState] || objc_msgSend(v7, "keyCode") == 79 || objc_msgSend(v7, "keyCode") == 80 || objc_msgSend(v7, "keyCode") == 82 || objc_msgSend(v7, "keyCode") == 81)
      {

        return 0;
      }
    }
  }

  v9.receiver = self;
  v9.super_class = SBLockScreenManagerAccessibility;
  return [(SBLockScreenManagerAccessibility *)&v9 handleKeyHIDEvent:event];
}

@end