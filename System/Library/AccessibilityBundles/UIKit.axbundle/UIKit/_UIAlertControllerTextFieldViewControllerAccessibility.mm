@interface _UIAlertControllerTextFieldViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axModalizeViewControllerViews;
@end

@implementation _UIAlertControllerTextFieldViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UIAlertControllerTextFieldViewController" isKindOfClass:@"UICollectionViewController"];
  objc_storeStrong(location, 0);
}

- (void)_axModalizeViewControllerViews
{
  selfCopy = self;
  v6 = a2;
  v5 = 0;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  v3 = MEMORY[0x29EDC9748](v4);
  objc_storeStrong(&v4, 0);
  collectionView = [v3 collectionView];
  [collectionView setAccessibilityContainerType:0];
  MEMORY[0x29EDC9740](collectionView);
  MEMORY[0x29EDC9740](v3);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UIAlertControllerTextFieldViewControllerAccessibility;
  [(_UIAlertControllerTextFieldViewControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  [(_UIAlertControllerTextFieldViewControllerAccessibility *)selfCopy _axModalizeViewControllerViews];
}

@end