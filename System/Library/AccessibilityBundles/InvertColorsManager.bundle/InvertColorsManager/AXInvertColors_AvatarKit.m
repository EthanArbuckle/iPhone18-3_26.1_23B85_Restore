@interface AXInvertColors_AvatarKit
+ (void)installCategories:(id)a3;
@end

@implementation AXInvertColors_AvatarKit

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"AVTRecordViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"AVTViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end