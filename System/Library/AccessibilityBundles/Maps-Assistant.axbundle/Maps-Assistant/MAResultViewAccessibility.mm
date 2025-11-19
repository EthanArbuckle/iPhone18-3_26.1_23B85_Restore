@interface MAResultViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation MAResultViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MAResultView" hasInstanceVariable:@"_nameLabel" withType:"_MKUILabel"];
  [v3 validateClass:@"MAResultView" hasInstanceVariable:@"_detailLine1aLabel" withType:"_MKUILabel"];
  [v3 validateClass:@"MAResultView" hasInstanceVariable:@"_detailLine1bLabel" withType:"_MKUILabel"];
  [v3 validateClass:@"MAResultView" hasInstanceVariable:@"_detailLine2Label" withType:"MKTransitInfoLabelView"];
  [v3 validateClass:@"MAResultView" hasInstanceVariable:@"_placeDataMapItem" withType:"MKMapItem"];
}

- (id)accessibilityLabel
{
  v3 = [(MAResultViewAccessibility *)self safeValueForKey:@"_nameLabel"];
  v4 = [v3 accessibilityLabel];
  v5 = [(MAResultViewAccessibility *)self safeValueForKey:@"_detailLine1aLabel"];
  v6 = [v5 accessibilityLabel];
  v7 = [(MAResultViewAccessibility *)self safeValueForKey:@"_detailLine1bLabel"];
  v8 = [v7 accessibilityLabel];
  v9 = [(MAResultViewAccessibility *)self safeValueForKey:@"_detailLine2Label"];
  v12 = [v9 accessibilityLabel];
  v10 = __UIAXStringForVariables();

  return v10;
}

@end