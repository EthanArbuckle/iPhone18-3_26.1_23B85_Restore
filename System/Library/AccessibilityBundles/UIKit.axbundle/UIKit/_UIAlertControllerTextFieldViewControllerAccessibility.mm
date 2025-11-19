@interface _UIAlertControllerTextFieldViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axModalizeViewControllerViews;
@end

@implementation _UIAlertControllerTextFieldViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIAlertControllerTextFieldViewController" isKindOfClass:@"UICollectionViewController"];
  objc_storeStrong(location, 0);
}

- (void)_axModalizeViewControllerViews
{
  v7 = self;
  v6 = a2;
  v5 = 0;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  v3 = MEMORY[0x29EDC9748](v4);
  objc_storeStrong(&v4, 0);
  v2 = [v3 collectionView];
  [v2 setAccessibilityContainerType:0];
  MEMORY[0x29EDC9740](v2);
  MEMORY[0x29EDC9740](v3);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UIAlertControllerTextFieldViewControllerAccessibility;
  [(_UIAlertControllerTextFieldViewControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  [(_UIAlertControllerTextFieldViewControllerAccessibility *)v4 _axModalizeViewControllerViews];
}

@end