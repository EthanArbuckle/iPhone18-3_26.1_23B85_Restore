@interface SBLockScreenManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_finishUIUnlockFromSource:(int)a3 withOptions:(id)a4;
- (BOOL)biometricAuthenticationCoordinator:(id)a3 requestsUnlockWithIntent:(int)a4;
- (BOOL)handleKeyHIDEvent:(__IOHIDEvent *)a3;
- (void)_handleAuthenticationFeedback:(id)a3;
- (void)_setUILocked:(BOOL)a3;
- (void)lockUIFromSource:(int)a3 withOptions:(id)a4 completion:(id)a5;
@end

@implementation SBLockScreenManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBLockScreenManager" hasInstanceMethod:@"lockUIFromSource: withOptions: completion:" withFullSignature:{"v", "i", "@", "@?", 0}];
  [v3 validateClass:@"SBLockScreenManager" hasInstanceMethod:@"_finishUIUnlockFromSource: withOptions:" withFullSignature:{"B", "i", "@", 0}];
  [v3 validateClass:@"SBLockScreenManager" hasInstanceMethod:@"biometricAuthenticationCoordinator: requestsUnlockWithIntent:" withFullSignature:{"B", "@", "i", 0}];
  [v3 validateClass:@"SBLockScreenManager" hasInstanceMethod:@"isUILocked" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBLockScreenManager" hasInstanceMethod:@"_handleAuthenticationFeedback:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBLockScreenManager" hasInstanceMethod:@"handleKeyHIDEvent:" withFullSignature:{"B", "^{__IOHIDEvent=}", 0}];
  [v3 validateClass:@"SBAuthenticationFeedback" hasInstanceMethod:@"jiggleLock" withFullSignature:{"B", 0}];
}

- (void)lockUIFromSource:(int)a3 withOptions:(id)a4 completion:(id)a5
{
  v6 = *&a3;
  v8 = a5;
  v9 = a4;
  [(SBLockScreenManagerAccessibility *)self _axSetLastLockSource:v6];
  v10.receiver = self;
  v10.super_class = SBLockScreenManagerAccessibility;
  [(SBLockScreenManagerAccessibility *)&v10 lockUIFromSource:v6 withOptions:v9 completion:v8];
}

- (BOOL)_finishUIUnlockFromSource:(int)a3 withOptions:(id)a4
{
  v6.receiver = self;
  v6.super_class = SBLockScreenManagerAccessibility;
  v4 = [(SBLockScreenManagerAccessibility *)&v6 _finishUIUnlockFromSource:*&a3 withOptions:a4];
  AXPerformBlockOnMainThreadAfterDelay();
  return v4;
}

- (void)_setUILocked:(BOOL)a3
{
  v3 = a3;
  if (([(SBLockScreenManagerAccessibility *)self safeBoolForKey:@"isUILocked"]& 1) == 0)
  {
    +[AXSpringBoardGlue toggleVoiceOverInfoPanel];
  }

  v5.receiver = self;
  v5.super_class = SBLockScreenManagerAccessibility;
  [(SBLockScreenManagerAccessibility *)&v5 _setUILocked:v3];
}

- (BOOL)biometricAuthenticationCoordinator:(id)a3 requestsUnlockWithIntent:(int)a4
{
  v7.receiver = self;
  v7.super_class = SBLockScreenManagerAccessibility;
  v5 = [(SBLockScreenManagerAccessibility *)&v7 biometricAuthenticationCoordinator:a3 requestsUnlockWithIntent:?];
  if (UIAccessibilityIsVoiceOverRunning() && a4 == 2 && v5)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDA98]);
  }

  return v5;
}

- (void)_handleAuthenticationFeedback:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBLockScreenManagerAccessibility;
  [(SBLockScreenManagerAccessibility *)&v9 _handleAuthenticationFeedback:v4];
  if (UIAccessibilityIsVoiceOverRunning() && [v4 safeBoolForKey:@"jiggleLock"])
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

- (BOOL)handleKeyHIDEvent:(__IOHIDEvent *)a3
{
  if (_AXSFullKeyboardAccessEnabled() || UIAccessibilityIsVoiceOverRunning())
  {
    v5 = [MEMORY[0x29EDBDF58] representationWithHIDEvent:a3 hidStreamIdentifier:@"AXFKA_SBLockScreenManager"];
    v6 = [v5 keyInfo];
    v7 = v6;
    if (v6)
    {
      [v6 translateKeycode];
      if ([v7 gsModifierState] || objc_msgSend(v7, "keyCode") == 79 || objc_msgSend(v7, "keyCode") == 80 || objc_msgSend(v7, "keyCode") == 82 || objc_msgSend(v7, "keyCode") == 81)
      {

        return 0;
      }
    }
  }

  v9.receiver = self;
  v9.super_class = SBLockScreenManagerAccessibility;
  return [(SBLockScreenManagerAccessibility *)&v9 handleKeyHIDEvent:a3];
}

@end