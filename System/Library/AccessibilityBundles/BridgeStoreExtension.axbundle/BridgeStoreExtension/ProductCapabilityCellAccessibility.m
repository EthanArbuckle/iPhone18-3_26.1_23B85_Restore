@interface ProductCapabilityCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation ProductCapabilityCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BridgeStoreExtension.ProductCapabilityCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BridgeStoreExtension.ProductCapabilityCell" hasInstanceMethod:@"accessibilityCaptionLabel" withFullSignature:{"@", 0}];
}

@end