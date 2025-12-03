@interface PKEnhancedMerchantCollectionViewListCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation PKEnhancedMerchantCollectionViewListCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKEnhancedMerchantCollectionViewListCell" hasInstanceMethod:@"detailedDescriptionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKEnhancedMerchantCollectionViewListCell" hasInstanceVariable:@"_listContentView" withType:"UIListContentView"];
  [validationsCopy validateClass:@"PKEnhancedMerchantCollectionViewListCell" hasInstanceMethod:@"_visibleButtons" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIButton" hasInstanceVariable:@"_targetActions" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"UIControlTargetAction" hasInstanceVariable:@"_actionHandler" withType:"UIAction"];
  [validationsCopy validateClass:@"UIAction" hasInstanceVariable:@"_handler" withType:"@?"];
}

- (id)accessibilityLabel
{
  v3 = [(PKEnhancedMerchantCollectionViewListCellAccessibility *)self safeValueForKey:@"_listContentView"];
  v4 = UIAXStringForAllChildren();
  v7 = [(PKEnhancedMerchantCollectionViewListCellAccessibility *)self safeValueForKey:@"detailedDescriptionLabel"];
  v5 = __UIAXStringForVariables();

  return v5;
}

@end