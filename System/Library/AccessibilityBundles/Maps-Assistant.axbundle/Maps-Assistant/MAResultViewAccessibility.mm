@interface MAResultViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation MAResultViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MAResultView" hasInstanceVariable:@"_nameLabel" withType:"_MKUILabel"];
  [validationsCopy validateClass:@"MAResultView" hasInstanceVariable:@"_detailLine1aLabel" withType:"_MKUILabel"];
  [validationsCopy validateClass:@"MAResultView" hasInstanceVariable:@"_detailLine1bLabel" withType:"_MKUILabel"];
  [validationsCopy validateClass:@"MAResultView" hasInstanceVariable:@"_detailLine2Label" withType:"MKTransitInfoLabelView"];
  [validationsCopy validateClass:@"MAResultView" hasInstanceVariable:@"_placeDataMapItem" withType:"MKMapItem"];
}

- (id)accessibilityLabel
{
  v3 = [(MAResultViewAccessibility *)self safeValueForKey:@"_nameLabel"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(MAResultViewAccessibility *)self safeValueForKey:@"_detailLine1aLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v7 = [(MAResultViewAccessibility *)self safeValueForKey:@"_detailLine1bLabel"];
  accessibilityLabel3 = [v7 accessibilityLabel];
  v9 = [(MAResultViewAccessibility *)self safeValueForKey:@"_detailLine2Label"];
  accessibilityLabel4 = [v9 accessibilityLabel];
  v10 = __UIAXStringForVariables();

  return v10;
}

@end