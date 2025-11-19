@interface NavigationBarContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation NavigationBarContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIKit.NavigationBarContentView" hasSwiftField:@"_overflowItem" withSwiftType:"Optional<UIBarButtonItem>"];
  objc_storeStrong(location, 0);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = NavigationBarContentViewAccessibility;
  [(NavigationBarContentViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v4 = [(NavigationBarContentViewAccessibility *)v7 safeSwiftValueForKey:@"_overflowItem"];
  v2 = v4;
  v3 = accessibilityUIKitLocalizedString();
  [v2 setAccessibilityLabel:?];
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(&v4, 0);
}

@end