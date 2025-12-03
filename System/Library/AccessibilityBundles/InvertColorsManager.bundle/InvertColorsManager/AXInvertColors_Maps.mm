@interface AXInvertColors_Maps
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_Maps

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NavShareETACell" hasInstanceVariable:@"_badgeImageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"_SearchResultTableViewCell" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SearchResultTableViewCell" hasInstanceVariable:@"_containerStackView" withType:"NUIContainerStackView"];
  [validationsCopy validateClass:@"SearchHomeBrowseCategoryCollectionViewCell" hasInstanceVariable:@"_browseImageView" withType:"UIImageView"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"SearchResultTableViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"NavShareETACellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SearchHomeBrowseCategoryCollectionViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end