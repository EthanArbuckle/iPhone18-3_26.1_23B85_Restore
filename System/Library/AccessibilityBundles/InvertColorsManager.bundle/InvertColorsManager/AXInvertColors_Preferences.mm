@interface AXInvertColors_Preferences
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_Preferences

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PSTableCell" hasInstanceMethod:@"setIcon:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SUIKSearchResultCollectionViewSectionHeader" hasInstanceMethod:@"_commonInit" withFullSignature:{"v", 0}];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"PSTableCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SUIKSearchResultCollectionViewSectionHeaderInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end