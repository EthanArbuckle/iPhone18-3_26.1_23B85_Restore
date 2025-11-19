@interface tvOS_AVInfoMenuControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityHeaderElements;
@end

@implementation tvOS_AVInfoMenuControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVInfoMenuController" hasInstanceMethod:@"viewControllers" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVInfoPanelMetadataViewController" isKindOfClass:@"UIViewController"];
}

- (id)accessibilityHeaderElements
{
  objc_opt_class();
  v3 = [(tvOS_AVInfoMenuControllerAccessibility *)self safeValueForKey:@"viewControllers"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 axFilterObjectsUsingBlock:&__block_literal_global_0];
  v6 = [v5 firstObject];

  v7 = [v6 accessibilityHeaderElements];

  return v7;
}

@end