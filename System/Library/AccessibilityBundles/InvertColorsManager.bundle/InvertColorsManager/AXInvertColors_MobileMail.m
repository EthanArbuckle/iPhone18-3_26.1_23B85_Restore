@interface AXInvertColors_MobileMail
+ (void)installCategories:(id)a3;
@end

@implementation AXInvertColors_MobileMail

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"MFMessageContentViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"UIViewMobileMailInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end