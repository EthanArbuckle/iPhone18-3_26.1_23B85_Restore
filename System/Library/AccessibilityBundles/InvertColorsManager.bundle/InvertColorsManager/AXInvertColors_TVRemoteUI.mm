@interface AXInvertColors_TVRemoteUI
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_TVRemoteUI

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TVRUIRemoteViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"MTMaterialView" hasInstanceMethod:@"_materialLayer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVRUIButtonPanelView" hasInstanceMethod:@"initWithPrimaryButtonType:secondaryLeftButtons:secondaryRightButtons:styleProvider:" withFullSignature:{"@", "q", "@", "@", "@", 0}];
  [validationsCopy validateClass:@"TVRUIButtonPanelView" hasInstanceMethod:@"leftButtons" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVRUIButtonPanelView" hasInstanceMethod:@"rightButtons" withFullSignature:{"@", 0}];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"TVRUIControlPanelViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"TVRUIButtonPanelViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"TVRUIRemoteViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end