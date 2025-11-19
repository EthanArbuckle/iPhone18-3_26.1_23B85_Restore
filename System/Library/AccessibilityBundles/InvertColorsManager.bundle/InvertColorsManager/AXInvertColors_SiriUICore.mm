@interface AXInvertColors_SiriUICore
+ (void)installCategories:(id)a3;
@end

@implementation AXInvertColors_SiriUICore

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"SUICStreamingTextViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SUICFlamesViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end