@interface AXInvertColors_AssistantUI
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_AssistantUI

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AFUISiriView" hasInstanceMethod:@"setBackdropVisible:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"AFUISiriView" hasInstanceVariable:@"_backdropView" withType:"_UIBackdropView"];
  [v3 validateClass:@"AFUISiriCompactView" hasInstanceVariable:@"_orbViewContainer" withType:"UIView"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"AFUISiriViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"AFUISiriCompactViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end