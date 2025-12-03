@interface AXInvertColors_MessageUI
+ (void)installCategories:(id)categories;
@end

@implementation AXInvertColors_MessageUI

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"MFPhotoPickerCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"MFComposeWebViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end