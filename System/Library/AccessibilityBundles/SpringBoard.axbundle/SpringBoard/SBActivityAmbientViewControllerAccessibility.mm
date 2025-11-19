@interface SBActivityAmbientViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SBActivityAmbientViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = SBActivityAmbientViewControllerAccessibility;
  [(SBActivityAmbientViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBActivityAmbientViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __90__SBActivityAmbientViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v4[3] = &unk_29F2FC170;
  v4[4] = self;
  [v3 setAccessibilityViewIsModalBlock:v4];
}

BOOL __90__SBActivityAmbientViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) safeValueForKey:@"fullOverlayViewController"];
  v2 = v1 != 0;

  return v2;
}

@end