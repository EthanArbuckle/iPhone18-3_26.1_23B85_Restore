@interface LUIManagedDevicesViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation LUIManagedDevicesViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"LUIManagedDevicesViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"LUIManagedDevicesViewController" hasInstanceVariable:@"_managedDevicesView" withType:"LUIManagedDevicesView"];
  [v3 validateClass:@"LUIManagedDevicesView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"LUIManagedDevicesView" hasInstanceVariable:@"_textView" withType:"UITextView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v11.receiver = self;
  v11.super_class = LUIManagedDevicesViewControllerAccessibility;
  [(LUIManagedDevicesViewControllerAccessibility *)&v11 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [MEMORY[0x29EDB8DE8] array];
  v5 = [(LUIManagedDevicesViewControllerAccessibility *)self safeValueForKey:@"_managedDevicesView"];
  v6 = [v5 safeValueForKey:@"_titleLabel"];
  v7 = [v6 accessibilityTraits];
  [v6 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | v7];
  v8 = [v5 safeValueForKey:@"_textView"];
  v9 = [v8 accessibilityTraits];
  [v8 setAccessibilityTraits:v9 & ~*MEMORY[0x29EDBDC08]];
  [v4 axSafelyAddObject:v6];
  [v4 axSafelyAddObject:v8];
  v10 = [v3 view];
  [v10 setAccessibilityElements:v4];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = LUIManagedDevicesViewControllerAccessibility;
  [(LUIManagedDevicesViewControllerAccessibility *)&v3 viewDidLoad];
  [(LUIManagedDevicesViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end