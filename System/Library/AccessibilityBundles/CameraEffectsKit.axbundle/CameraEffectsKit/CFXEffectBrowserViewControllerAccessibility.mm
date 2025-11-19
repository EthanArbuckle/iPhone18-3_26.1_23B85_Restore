@interface CFXEffectBrowserViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)didSelectAppWithBundleIdentifier:(id)a3;
@end

@implementation CFXEffectBrowserViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CFXEffectBrowserViewController" hasInstanceMethod:@"didSelectAppWithBundleIdentifier:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CFXEffectBrowserViewController" hasInstanceMethod:@"selectedAppIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CFXCameraViewController" hasInstanceMethod:@"cameraControlsViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CFXPreviewViewController" hasInstanceMethod:@"bottomControlsDrawer" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = CFXEffectBrowserViewControllerAccessibility;
  [(CFXEffectBrowserViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(CFXEffectBrowserViewControllerAccessibility *)self safeValueForKey:@"selectedAppIdentifier"];
  v4 = v3 != 0;

  [(CFXEffectBrowserViewControllerAccessibility *)self _axHideAppropriateElements:v4];
}

- (void)didSelectAppWithBundleIdentifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = CFXEffectBrowserViewControllerAccessibility;
  [(CFXEffectBrowserViewControllerAccessibility *)&v5 didSelectAppWithBundleIdentifier:?];
  [(CFXEffectBrowserViewControllerAccessibility *)self _axHideAppropriateElements:a3 != 0];
}

uint64_t __74__CFXEffectBrowserViewControllerAccessibility__axHideAppropriateElements___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeBoolForKey:@"isExpanded"];

  return v2 ^ 1u;
}

uint64_t __74__CFXEffectBrowserViewControllerAccessibility__axHideAppropriateElements___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 _accessibilityViewController];
  MEMORY[0x29C2CEA90](@"CFXCameraViewController");
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    v5 = [v2 _accessibilityViewController];
    MEMORY[0x29C2CEA90](@"CFXPreviewViewController");
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

uint64_t __74__CFXEffectBrowserViewControllerAccessibility__axHideAppropriateElements___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2CEA90](@"CKBrowserSwitcherFooterView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end