@interface UIStatusBarBackgroundActivityItemAccessibility
@end

@implementation UIStatusBarBackgroundActivityItemAccessibility

id __76___UIStatusBarBackgroundActivityItemAccessibility__axApplyLabelToBackground__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = AXStatusBarPillTimeView(WeakRetained);
  v2 = [v3 accessibilityLabel];
  v5 = __UIAXStringForVariables();
  MEMORY[0x29EDC9740](v2);
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](WeakRetained);

  return v5;
}

id __76___UIStatusBarBackgroundActivityItemAccessibility__axApplyLabelToBackground__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = AXStatusBarPillTimeView(WeakRetained);
  v2 = [v3 accessibilityLabel];
  v5 = __UIAXStringForVariables();
  MEMORY[0x29EDC9740](v2);
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](WeakRetained);

  return v5;
}

double __93___UIStatusBarBackgroundActivityItemAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) safeValueForKey:@"setNeedsUpdate"];
  v6 = [*(a1 + 32) safeUIViewForKey:@"backgroundView"];
  v5 = [v6 _accessibilityAncestorIsKindOf:objc_opt_class()];
  [v5 forceUpdate:1];
  MEMORY[0x29EDC9740](v5);
  MEMORY[0x29EDC9740](v6);
  NSClassFromString(&cfstr_Uistatusbarpil_1.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 32) safeUIViewForKey:@"combinedView"];
    v3 = [v4 _accessibilityAncestorIsKindOf:objc_opt_class()];
    [v3 forceUpdate:1];
    MEMORY[0x29EDC9740](v3);
    *&result = MEMORY[0x29EDC9740](v4).n128_u64[0];
  }

  return result;
}

@end