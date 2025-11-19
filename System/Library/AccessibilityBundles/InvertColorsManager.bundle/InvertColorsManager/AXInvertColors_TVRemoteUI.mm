@interface AXInvertColors_TVRemoteUI
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_TVRemoteUI

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TVRUIRemoteViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"MTMaterialView" hasInstanceMethod:@"_materialLayer" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TVRUIButtonPanelView" hasInstanceMethod:@"initWithPrimaryButtonType:secondaryLeftButtons:secondaryRightButtons:styleProvider:" withFullSignature:{"@", "q", "@", "@", "@", 0}];
  [v3 validateClass:@"TVRUIButtonPanelView" hasInstanceMethod:@"leftButtons" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TVRUIButtonPanelView" hasInstanceMethod:@"rightButtons" withFullSignature:{"@", 0}];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"TVRUIControlPanelViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"TVRUIButtonPanelViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"TVRUIRemoteViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end