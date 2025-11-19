@interface UIRemoteKeyboardWindowHostedAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityWindowVisible;
@end

@implementation UIRemoteKeyboardWindowHostedAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (BOOL)_accessibilityWindowVisible
{
  v11 = self;
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
    v3 = 1;
  }

  else
  {
    v6.receiver = v11;
    v6.super_class = UIRemoteKeyboardWindowHostedAccessibility;
    v3 = [(UIRemoteKeyboardWindowHostedAccessibility *)&v6 _accessibilityWindowVisible];
  }

  MEMORY[0x29EDC9740](v4);
  MEMORY[0x29EDC9740](v5);
  return v3 != 0;
}

@end