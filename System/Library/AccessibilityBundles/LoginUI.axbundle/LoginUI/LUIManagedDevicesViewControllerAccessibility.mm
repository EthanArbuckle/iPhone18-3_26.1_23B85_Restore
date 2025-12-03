@interface LUIManagedDevicesViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation LUIManagedDevicesViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"LUIManagedDevicesViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"LUIManagedDevicesViewController" hasInstanceVariable:@"_managedDevicesView" withType:"LUIManagedDevicesView"];
  [validationsCopy validateClass:@"LUIManagedDevicesView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"LUIManagedDevicesView" hasInstanceVariable:@"_textView" withType:"UITextView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v11.receiver = self;
  v11.super_class = LUIManagedDevicesViewControllerAccessibility;
  [(LUIManagedDevicesViewControllerAccessibility *)&v11 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  array = [MEMORY[0x29EDB8DE8] array];
  v5 = [(LUIManagedDevicesViewControllerAccessibility *)self safeValueForKey:@"_managedDevicesView"];
  v6 = [v5 safeValueForKey:@"_titleLabel"];
  accessibilityTraits = [v6 accessibilityTraits];
  [v6 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | accessibilityTraits];
  v8 = [v5 safeValueForKey:@"_textView"];
  accessibilityTraits2 = [v8 accessibilityTraits];
  [v8 setAccessibilityTraits:accessibilityTraits2 & ~*MEMORY[0x29EDBDC08]];
  [array axSafelyAddObject:v6];
  [array axSafelyAddObject:v8];
  view = [v3 view];
  [view setAccessibilityElements:array];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = LUIManagedDevicesViewControllerAccessibility;
  [(LUIManagedDevicesViewControllerAccessibility *)&v3 viewDidLoad];
  [(LUIManagedDevicesViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end