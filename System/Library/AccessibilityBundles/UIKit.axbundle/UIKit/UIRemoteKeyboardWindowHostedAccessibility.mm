@interface UIRemoteKeyboardWindowHostedAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityWindowVisible;
@end

@implementation UIRemoteKeyboardWindowHostedAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  objc_storeStrong(location, 0);
}

- (BOOL)_accessibilityWindowVisible
{
  selfCopy = self;
  v10 = a2;
  v5 = AXUIKeyboardWindow();
  v9 = 0;
  objc_opt_class();
  v8 = __UIAccessibilityCastAsClass();
  v7 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  v4 = v7;
  if (v5 == v7 && (AXUIKeyboardIsOnScreen() & 1) != 0)
  {
    _accessibilityWindowVisible = 1;
  }

  else
  {
    v6.receiver = selfCopy;
    v6.super_class = UIRemoteKeyboardWindowHostedAccessibility;
    _accessibilityWindowVisible = [(UIRemoteKeyboardWindowHostedAccessibility *)&v6 _accessibilityWindowVisible];
  }

  MEMORY[0x29EDC9740](v4);
  MEMORY[0x29EDC9740](v5);
  return _accessibilityWindowVisible != 0;
}

@end