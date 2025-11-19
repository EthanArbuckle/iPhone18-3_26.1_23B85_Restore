@interface PKEnhancedMerchantCollectionViewListCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation PKEnhancedMerchantCollectionViewListCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKEnhancedMerchantCollectionViewListCell" hasInstanceMethod:@"detailedDescriptionLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKEnhancedMerchantCollectionViewListCell" hasInstanceVariable:@"_listContentView" withType:"UIListContentView"];
  [v3 validateClass:@"PKEnhancedMerchantCollectionViewListCell" hasInstanceMethod:@"_visibleButtons" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIButton" hasInstanceVariable:@"_targetActions" withType:"NSMutableArray"];
  [v3 validateClass:@"UIControlTargetAction" hasInstanceVariable:@"_actionHandler" withType:"UIAction"];
  [v3 validateClass:@"UIAction" hasInstanceVariable:@"_handler" withType:"@?"];
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