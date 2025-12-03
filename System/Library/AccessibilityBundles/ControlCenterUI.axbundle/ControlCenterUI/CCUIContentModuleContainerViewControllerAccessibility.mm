@interface CCUIContentModuleContainerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityLoadAccessibilityInformationSupplementaryItems;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CCUIContentModuleContainerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CCUIContentModuleContainerViewController" hasInstanceMethod:@"contentViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CCUIContentModuleContainerViewController" hasInstanceMethod:@"contentModule" withFullSignature:{"@", 0}];
}

- (id)_accessibilityLoadAccessibilityInformationSupplementaryItems
{
  v2 = MEMORY[0x29EDB8D80];
  v3 = [(CCUIContentModuleContainerViewControllerAccessibility *)self safeValueForKey:@"contentViewController"];
  v4 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = CCUIContentModuleContainerViewControllerAccessibility;
  [(CCUIContentModuleContainerViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(CCUIContentModuleContainerViewControllerAccessibility *)self safeValueForKey:@"view"];
  [v3 setAccessibilityShouldGroupAccessibilityChildrenBlock:&__block_literal_global_1];

  v4 = [(CCUIContentModuleContainerViewControllerAccessibility *)self safeValueForKey:@"contentModule"];
  [v4 _accessibilityLoadAccessibilityInformation];
}

@end