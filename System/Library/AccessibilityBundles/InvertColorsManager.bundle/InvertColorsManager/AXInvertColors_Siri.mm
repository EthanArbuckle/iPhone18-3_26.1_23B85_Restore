@interface AXInvertColors_Siri
+ (void)installCategories:(id)a3;
@end

@implementation AXInvertColors_Siri

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"SRSecureWindowInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SiriSharedUICompactViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end