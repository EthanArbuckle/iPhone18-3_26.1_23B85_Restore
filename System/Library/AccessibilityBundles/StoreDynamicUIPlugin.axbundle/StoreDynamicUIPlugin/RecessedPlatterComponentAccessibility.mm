@interface RecessedPlatterComponentAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation RecessedPlatterComponentAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"StoreDynamicUIPlugin.RecessedPlatterComponent" hasSwiftField:@"titleLabel" withSwiftType:"DynamicLabel"];
  [v3 validateClass:@"StoreDynamicUIPlugin.RecessedPlatterComponent" hasSwiftField:@"subtitleLabel" withSwiftType:"DynamicLabel"];
  [v3 validateClass:@"StoreDynamicUIPlugin.RecessedPlatterComponent" hasSwiftField:@"gridView" withSwiftType:"ServicesGridView"];
  [v3 validateClass:@"StoreDynamicUIPlugin.ServicesGridView" hasSwiftField:@"serviceViews" withSwiftType:"Array<ServiceDetailView>"];
}

- (id)accessibilityLabel
{
  v3 = [(RecessedPlatterComponentAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  v4 = [v3 accessibilityLabel];

  v5 = [(RecessedPlatterComponentAccessibility *)self safeSwiftValueForKey:@"subtitleLabel"];
  v6 = [v5 accessibilityLabel];

  v7 = [(RecessedPlatterComponentAccessibility *)self safeSwiftValueForKey:@"gridView"];
  v8 = [v7 safeSwiftArrayForKey:@"serviceViews"];
  v11 = AXLabelForElements();
  v9 = __AXStringForVariables();

  return v9;
}

@end