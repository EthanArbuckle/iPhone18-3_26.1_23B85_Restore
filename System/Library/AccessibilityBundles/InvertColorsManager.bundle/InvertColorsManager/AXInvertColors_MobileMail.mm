@interface AXInvertColors_MobileMail
+ (void)installCategories:(id)categories;
@end

@implementation AXInvertColors_MobileMail

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"MFMessageContentViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"UIViewMobileMailInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end