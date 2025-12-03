@interface PKEnhancedMerchantCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation PKEnhancedMerchantCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKEnhancedMerchantCollectionViewCell" hasInstanceMethod:@"enhancedMerchant" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKAccountEnhancedMerchant" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(PKEnhancedMerchantCollectionViewCellAccessibility *)self safeValueForKey:@"enhancedMerchant"];
  v3 = [v2 safeStringForKey:@"name"];

  return v3;
}

@end