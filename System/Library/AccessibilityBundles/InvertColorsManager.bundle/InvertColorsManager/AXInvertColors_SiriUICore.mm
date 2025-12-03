@interface AXInvertColors_SiriUICore
+ (void)installCategories:(id)categories;
@end

@implementation AXInvertColors_SiriUICore

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"SUICStreamingTextViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SUICFlamesViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end