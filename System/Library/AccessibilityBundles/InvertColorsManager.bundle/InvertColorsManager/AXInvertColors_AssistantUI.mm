@interface AXInvertColors_AssistantUI
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_AssistantUI

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AFUISiriView" hasInstanceMethod:@"setBackdropVisible:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"AFUISiriView" hasInstanceVariable:@"_backdropView" withType:"_UIBackdropView"];
  [validationsCopy validateClass:@"AFUISiriCompactView" hasInstanceVariable:@"_orbViewContainer" withType:"UIView"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"AFUISiriViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"AFUISiriCompactViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end