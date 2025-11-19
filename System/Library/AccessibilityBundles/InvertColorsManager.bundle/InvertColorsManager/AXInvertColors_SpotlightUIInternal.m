@interface AXInvertColors_SpotlightUIInternal
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_SpotlightUIInternal

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SPUISearchHeader" isKindOfClass:@"UIView"];
  [v3 validateClass:@"SPUISearchHeader" hasProperty:@"cancelButton" withType:"@"];
  [v3 validateClass:@"SPUITextField" hasInstanceMethod:@"blurView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SPUIPlatterContainerViewController"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"SPUISearchHeaderInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SPUITextFieldInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end