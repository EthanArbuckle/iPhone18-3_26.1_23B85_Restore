@interface AXInvertColors_Maps
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_Maps

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NavShareETACell" hasInstanceVariable:@"_badgeImageView" withType:"UIImageView"];
  [v3 validateClass:@"_SearchResultTableViewCell" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SearchResultTableViewCell" hasInstanceVariable:@"_containerStackView" withType:"NUIContainerStackView"];
  [v3 validateClass:@"SearchHomeBrowseCategoryCollectionViewCell" hasInstanceVariable:@"_browseImageView" withType:"UIImageView"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"SearchResultTableViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"NavShareETACellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SearchHomeBrowseCategoryCollectionViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end