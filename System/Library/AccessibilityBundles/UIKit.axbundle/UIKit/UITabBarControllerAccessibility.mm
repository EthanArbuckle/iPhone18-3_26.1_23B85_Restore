@interface UITabBarControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySpeakThisViewController;
@end

@implementation UITabBarControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  objc_storeStrong(location, 0);
}

- (id)_accessibilitySpeakThisViewController
{
  selfCopy = self;
  v8 = a2;
  v7 = 0;
  objc_opt_class();
  selectedViewController = [(UITabBarControllerAccessibility *)selfCopy selectedViewController];
  v6 = __UIAccessibilityCastAsSafeCategory();
  MEMORY[0x29EDC9740](selectedViewController);
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  _accessibilitySpeakThisViewController = [v5 _accessibilitySpeakThisViewController];
  MEMORY[0x29EDC9740](v5);

  return _accessibilitySpeakThisViewController;
}

@end