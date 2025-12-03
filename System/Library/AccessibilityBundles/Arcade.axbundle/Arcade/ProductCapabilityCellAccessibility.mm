@interface ProductCapabilityCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation ProductCapabilityCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Arcade.ProductCapabilityCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Arcade.ProductCapabilityCell" hasInstanceMethod:@"accessibilityCaptionLabel" withFullSignature:{"@", 0}];
}

@end