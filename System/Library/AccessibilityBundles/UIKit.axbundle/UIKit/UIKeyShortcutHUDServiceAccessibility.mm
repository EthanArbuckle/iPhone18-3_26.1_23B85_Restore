@interface UIKeyShortcutHUDServiceAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_requestHUDDismissal;
- (void)handleKeyboardEvent:(id)a3;
@end

@implementation UIKeyShortcutHUDServiceAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"UIKeyShortcutHUDService";
  v4 = "v";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"handleKeyboardEvent:" withFullSignature:{v4, "@", 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"cancelScheduledHUDPresentationIfNeeded" withFullSignature:{v4, 0}];
  [location[0] validateClass:@"UIPhysicalKeyboardEvent" hasInstanceMethod:@"modifierFlags" withFullSignature:{"q", 0}];
  objc_storeStrong(v6, obj);
}

- (void)_requestHUDDismissal
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIKeyShortcutHUDServiceAccessibility;
  [(UIKeyShortcutHUDServiceAccessibility *)&v2 _requestHUDDismissal];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)handleKeyboardEvent:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7.receiver = v9;
  v7.super_class = UIKeyShortcutHUDServiceAccessibility;
  [(UIKeyShortcutHUDServiceAccessibility *)&v7 handleKeyboardEvent:location[0]];
  v6 = [location[0] safeIntegerForKey:@"modifierFlags"];
  v3 = 1;
  if ((v6 & 0x40000) == 0)
  {
    v3 = (v6 & 0x80000) != 0;
  }

  v5 = v3;
  if (UIAccessibilityIsVoiceOverRunning() || (_UIAccessibilityFullKeyboardAccessEnabled()) && v5)
  {
    v4 = MEMORY[0x29EDC9748](v9);
    AXPerformSafeBlock();
    objc_storeStrong(&v4, 0);
  }

  objc_storeStrong(location, 0);
}

@end