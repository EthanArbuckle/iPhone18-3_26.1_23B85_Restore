@interface tvOS_AVInfoMenuControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityHeaderElements;
@end

@implementation tvOS_AVInfoMenuControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVInfoMenuController" hasInstanceMethod:@"viewControllers" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVInfoPanelMetadataViewController" isKindOfClass:@"UIViewController"];
}

- (id)accessibilityHeaderElements
{
  objc_opt_class();
  v3 = [(tvOS_AVInfoMenuControllerAccessibility *)self safeValueForKey:@"viewControllers"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 axFilterObjectsUsingBlock:&__block_literal_global_0];
  firstObject = [v5 firstObject];

  accessibilityHeaderElements = [firstObject accessibilityHeaderElements];

  return accessibilityHeaderElements;
}

@end