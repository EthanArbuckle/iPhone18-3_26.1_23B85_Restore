@interface RecessedPlatterComponentAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation RecessedPlatterComponentAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"StoreDynamicUIPlugin.RecessedPlatterComponent" hasSwiftField:@"titleLabel" withSwiftType:"DynamicLabel"];
  [validationsCopy validateClass:@"StoreDynamicUIPlugin.RecessedPlatterComponent" hasSwiftField:@"subtitleLabel" withSwiftType:"DynamicLabel"];
  [validationsCopy validateClass:@"StoreDynamicUIPlugin.RecessedPlatterComponent" hasSwiftField:@"gridView" withSwiftType:"ServicesGridView"];
  [validationsCopy validateClass:@"StoreDynamicUIPlugin.ServicesGridView" hasSwiftField:@"serviceViews" withSwiftType:"Array<ServiceDetailView>"];
}

- (id)accessibilityLabel
{
  v3 = [(RecessedPlatterComponentAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(RecessedPlatterComponentAccessibility *)self safeSwiftValueForKey:@"subtitleLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];

  v7 = [(RecessedPlatterComponentAccessibility *)self safeSwiftValueForKey:@"gridView"];
  v8 = [v7 safeSwiftArrayForKey:@"serviceViews"];
  v11 = AXLabelForElements();
  v9 = __AXStringForVariables();

  return v9;
}

@end