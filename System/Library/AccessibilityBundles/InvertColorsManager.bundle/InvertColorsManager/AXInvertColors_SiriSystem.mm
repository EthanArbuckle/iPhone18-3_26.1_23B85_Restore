@interface AXInvertColors_SiriSystem
+ (void)installCategories:(id)categories;
@end

@implementation AXInvertColors_SiriSystem

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"SRTapToEditViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SRGuideViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SRGuideDetailPhraseViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end