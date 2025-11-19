@interface SBUIRemoteKeyboardWindowAccessibility
- (BOOL)_accessibilityWindowVisible;
@end

@implementation SBUIRemoteKeyboardWindowAccessibility

- (BOOL)_accessibilityWindowVisible
{
  v3 = AXUIKeyboardWindow();
  v8 = 0;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  if (v3 == v4 && (AXUIKeyboardIsOnScreen() & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBUIRemoteKeyboardWindowAccessibility;
    v5 = [(SBUIRemoteKeyboardWindowAccessibility *)&v7 _accessibilityWindowVisible];
  }

  return v5;
}

@end