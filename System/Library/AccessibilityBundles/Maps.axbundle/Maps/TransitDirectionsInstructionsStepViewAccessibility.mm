@interface TransitDirectionsInstructionsStepViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
@end

@implementation TransitDirectionsInstructionsStepViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TransitDirectionsInstructionsStepView" hasInstanceMethod:@"_detailButtonTapped:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"TransitDirectionsInstructionsStepView" hasInstanceVariable:@"_primaryLabel" withType:"_MKUILabel"];
  [validationsCopy validateClass:@"TransitDirectionsInstructionsStepView" hasInstanceVariable:@"_secondaryLabel" withType:"MKMultiPartLabel"];
  [validationsCopy validateClass:@"TransitDirectionsInstructionsStepView" hasInstanceVariable:@"_primaryAccessoryLabel" withType:"_MKUILabel"];
  [validationsCopy validateClass:@"TransitDirectionsInstructionsStepView" hasInstanceVariable:@"_secondaryAccessoryLabel" withType:"_MKUILabel"];
  [validationsCopy validateClass:@"TransitDirectionsInstructionsStepView" hasInstanceVariable:@"_tertiaryLabel" withType:"MKMultiPartLabel"];
  [validationsCopy validateClass:@"TransitDirectionsInstructionsStepView" hasInstanceVariable:@"_platformArtworkImageView" withType:"MKArtworkImageView"];
}

- (BOOL)isAccessibilityElement
{
  accessibilityLabel = [(TransitDirectionsInstructionsStepViewAccessibility *)self accessibilityLabel];
  v3 = [accessibilityLabel length] != 0;

  return v3;
}

@end