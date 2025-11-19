@interface TransitDirectionsInstructionsStepViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
@end

@implementation TransitDirectionsInstructionsStepViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TransitDirectionsInstructionsStepView" hasInstanceMethod:@"_detailButtonTapped:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"TransitDirectionsInstructionsStepView" hasInstanceVariable:@"_primaryLabel" withType:"_MKUILabel"];
  [v3 validateClass:@"TransitDirectionsInstructionsStepView" hasInstanceVariable:@"_secondaryLabel" withType:"MKMultiPartLabel"];
  [v3 validateClass:@"TransitDirectionsInstructionsStepView" hasInstanceVariable:@"_primaryAccessoryLabel" withType:"_MKUILabel"];
  [v3 validateClass:@"TransitDirectionsInstructionsStepView" hasInstanceVariable:@"_secondaryAccessoryLabel" withType:"_MKUILabel"];
  [v3 validateClass:@"TransitDirectionsInstructionsStepView" hasInstanceVariable:@"_tertiaryLabel" withType:"MKMultiPartLabel"];
  [v3 validateClass:@"TransitDirectionsInstructionsStepView" hasInstanceVariable:@"_platformArtworkImageView" withType:"MKArtworkImageView"];
}

- (BOOL)isAccessibilityElement
{
  v2 = [(TransitDirectionsInstructionsStepViewAccessibility *)self accessibilityLabel];
  v3 = [v2 length] != 0;

  return v3;
}

@end