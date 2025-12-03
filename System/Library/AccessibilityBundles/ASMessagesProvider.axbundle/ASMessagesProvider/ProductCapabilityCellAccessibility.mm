@interface ProductCapabilityCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation ProductCapabilityCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ASMessagesProvider.ProductCapabilityCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ASMessagesProvider.ProductCapabilityCell" hasInstanceMethod:@"accessibilityCaptionLabel" withFullSignature:{"@", 0}];
}

@end