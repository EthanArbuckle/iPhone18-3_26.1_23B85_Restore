@interface AXInvertColors_Preferences
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_Preferences

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PSTableCell" hasInstanceMethod:@"setIcon:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SUIKSearchResultCollectionViewSectionHeader" hasInstanceMethod:@"_commonInit" withFullSignature:{"v", 0}];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"PSTableCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SUIKSearchResultCollectionViewSectionHeaderInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end