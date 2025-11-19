@interface AXInvertColors_MessageUI
+ (void)installCategories:(id)a3;
@end

@implementation AXInvertColors_MessageUI

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"MFPhotoPickerCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MFComposeWebViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end