@interface AXInvertColors_Spotlight
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_Spotlight

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SPUISearchHeader" isKindOfClass:@"UIView"];
  [v3 validateClass:@"SPUISearchHeader" hasProperty:@"cancelButton" withType:"@"];
  [v3 validateClass:@"SPUISecureWindow" isKindOfClass:@"UIWindow"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"SPUISecureWindowInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SPUIBoxViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end