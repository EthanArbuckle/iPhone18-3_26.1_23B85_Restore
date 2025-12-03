@interface UIColorPickerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewWillLayoutSubviews;
@end

@implementation UIColorPickerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"UITransitionView";
  [location[0] validateClass:?];
  [location[0] validateClass:@"UITransitionView" isKindOfClass:@"UIView"];
  v4 = @"UIColorPickerViewController";
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:@"UIColorPickerViewController" hasInstanceMethod:@"viewWillLayoutSubviews" withFullSignature:{"v", 0}];
  objc_storeStrong(v6, obj);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = UIColorPickerViewControllerAccessibility;
  [(UIColorPickerViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v5 = NSClassFromString(&cfstr_Uitransitionvi.isa);
  v3 = [(UIColorPickerViewControllerAccessibility *)selfCopy safeUIViewForKey:@"view"];
  v4 = [v3 _accessibilityAncestorIsKindOf:v5];
  *&v2 = MEMORY[0x29EDC9740](v3).n128_u64[0];
  [v4 setAccessibilityIdentifier:{@"UIColorPickerView", v2}];
  objc_storeStrong(&v4, 0);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIColorPickerViewControllerAccessibility;
  [(UIColorPickerViewControllerAccessibility *)&v2 viewWillLayoutSubviews];
  [(UIColorPickerViewControllerAccessibility *)selfCopy _accessibilityLoadAccessibilityInformation];
}

@end