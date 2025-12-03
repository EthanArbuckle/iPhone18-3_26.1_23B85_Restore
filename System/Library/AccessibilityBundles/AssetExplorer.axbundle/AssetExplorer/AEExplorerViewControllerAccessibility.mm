@interface AEExplorerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation AEExplorerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AEExplorerViewController" hasInstanceMethod:@"_scrollViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXScrollViewController"];
  [validationsCopy validateClass:@"PXScrollViewController" hasInstanceMethod:@"scrollView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AEExplorerViewController" hasInstanceMethod:@"_handleAttemptedSelectionToggleOfAssetReference: cancelIfAlreadySelected: suppressLivePhotoContent:" withFullSignature:{"v", "@", "B", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = AEExplorerViewControllerAccessibility;
  [(AEExplorerViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(AEExplorerViewControllerAccessibility *)self safeValueForKey:@"_scrollViewController"];
  MEMORY[0x29C2C98D0](@"PXScrollViewController");
  if (objc_opt_isKindOfClass())
  {
    [v3 accessibilitySetIdentification:@"AXExplorerViewControllerScrollViewController"];
    v4 = [v3 safeValueForKey:@"scrollView"];
    [v4 setAccessibilityIdentifier:@"AXExplorerViewControllerScrollView"];
  }
}

@end