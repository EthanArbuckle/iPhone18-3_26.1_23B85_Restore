@interface ProductCapabilityCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation ProductCapabilityCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AppStore.ProductCapabilityCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AppStore.ProductCapabilityCell" hasInstanceMethod:@"accessibilityCaptionLabel" withFullSignature:{"@", 0}];
}

@end