@interface UITabBarControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySpeakThisViewController;
@end

@implementation UITabBarControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (id)_accessibilitySpeakThisViewController
{
  v9 = self;
  v8 = a2;
  v7 = 0;
  objc_opt_class();
  v4 = [(UITabBarControllerAccessibility *)v9 selectedViewController];
  v6 = __UIAccessibilityCastAsSafeCategory();
  MEMORY[0x29EDC9740](v4);
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  v3 = [v5 _accessibilitySpeakThisViewController];
  MEMORY[0x29EDC9740](v5);

  return v3;
}

@end