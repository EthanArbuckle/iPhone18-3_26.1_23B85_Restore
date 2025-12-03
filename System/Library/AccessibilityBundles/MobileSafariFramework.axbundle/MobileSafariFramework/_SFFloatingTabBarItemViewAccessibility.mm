@interface _SFFloatingTabBarItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation _SFFloatingTabBarItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_SFFloatingTabBarItemView" hasSwiftField:@"titleTextField" withSwiftType:"UITextField"];
  [validationsCopy validateClass:@"_SFFloatingTabBarItemView" hasSwiftField:@"configuration" withSwiftType:"Configuration"];
  [validationsCopy validateSwiftStruct:@"MobileSafari.FloatingTabBar[class].ItemView[class].Configuration"];
  [validationsCopy validateSwiftStruct:@"MobileSafari.FloatingTabBar[class].ItemView[class].Configuration" hasSwiftField:@"isSelected" withSwiftType:"Bool"];
  [validationsCopy validateSwiftStruct:@"MobileSafari.FloatingTabBar[class].ItemView[class].Configuration" hasSwiftField:@"isRetitling" withSwiftType:"Bool"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = _SFFloatingTabBarItemViewAccessibility;
  [(_SFFloatingTabBarItemViewAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3 = [(_SFFloatingTabBarItemViewAccessibility *)self safeSwiftValueForKey:@"titleTextField"];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __84___SFFloatingTabBarItemViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v4[3] = &unk_29F2D67E0;
  objc_copyWeak(&v5, &location);
  [v3 _setAccessibilityTraitsBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

@end