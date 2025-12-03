@interface UIKeyShortcutHUDServiceAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_requestHUDDismissal;
- (void)handleKeyboardEvent:(id)event;
@end

@implementation UIKeyShortcutHUDServiceAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
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
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIKeyShortcutHUDServiceAccessibility;
  [(UIKeyShortcutHUDServiceAccessibility *)&v2 _requestHUDDismissal];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)handleKeyboardEvent:(id)event
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v7.receiver = selfCopy;
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
    v4 = MEMORY[0x29EDC9748](selfCopy);
    AXPerformSafeBlock();
    objc_storeStrong(&v4, 0);
  }

  objc_storeStrong(location, 0);
}

@end