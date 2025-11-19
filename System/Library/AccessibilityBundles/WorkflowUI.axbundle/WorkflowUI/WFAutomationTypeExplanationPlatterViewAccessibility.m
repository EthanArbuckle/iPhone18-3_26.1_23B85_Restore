@interface WFAutomationTypeExplanationPlatterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
@end

@implementation WFAutomationTypeExplanationPlatterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WFAutomationTypeExplanationPlatterView" hasInstanceMethod:@"button" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WFAutomationTypeExplanationPlatterView" hasInstanceVariable:@"_explanationTextLabel" withType:"UILabel"];
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(WFAutomationTypeExplanationPlatterViewAccessibility *)self safeValueForKey:@"button"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (id)accessibilityLabel
{
  v3 = [(WFAutomationTypeExplanationPlatterViewAccessibility *)self safeValueForKeyPath:@"button.configuration.title"];
  v6 = [(WFAutomationTypeExplanationPlatterViewAccessibility *)self safeValueForKeyPath:@"_explanationTextLabel.text"];
  v4 = __AXStringForVariables();

  return v4;
}

@end