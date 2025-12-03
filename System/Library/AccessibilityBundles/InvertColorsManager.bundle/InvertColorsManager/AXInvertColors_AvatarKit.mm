@interface AXInvertColors_AvatarKit
+ (void)installCategories:(id)categories;
@end

@implementation AXInvertColors_AvatarKit

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"AVTRecordViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"AVTViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end