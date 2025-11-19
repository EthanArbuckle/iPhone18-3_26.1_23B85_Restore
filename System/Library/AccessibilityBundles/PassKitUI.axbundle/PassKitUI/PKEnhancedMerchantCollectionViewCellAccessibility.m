@interface PKEnhancedMerchantCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation PKEnhancedMerchantCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKEnhancedMerchantCollectionViewCell" hasInstanceMethod:@"enhancedMerchant" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKAccountEnhancedMerchant" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(PKEnhancedMerchantCollectionViewCellAccessibility *)self safeValueForKey:@"enhancedMerchant"];
  v3 = [v2 safeStringForKey:@"name"];

  return v3;
}

@end