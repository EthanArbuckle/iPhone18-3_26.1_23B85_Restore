@interface AXInvertColors_Siri
+ (void)installCategories:(id)categories;
@end

@implementation AXInvertColors_Siri

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"SRSecureWindowInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SiriSharedUICompactViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end