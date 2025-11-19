@interface UISizeTrackingViewAccessibility
@end

@implementation UISizeTrackingViewAccessibility

double __68___UISizeTrackingViewAccessibility__accessibilitySetFocusOnElement___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:?];
  [v2 _setWantsKeyboardEnvironmentEventDeferring:0];
  v4 = [*(a1 + 32) safeValueForKey:{@"_rvcImpl", MEMORY[0x29EDC9740](v2).n128_f64[0]}];
  [v4 _setWantsKeyboardEnvironmentEventDeferring:1];
  *&result = MEMORY[0x29EDC9740](v4).n128_u64[0];
  return result;
}

double __68___UISizeTrackingViewAccessibility__accessibilitySetFocusOnElement___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"_rvcImpl"];
  [v2 _setWantsKeyboardEnvironmentEventDeferring:0];
  *&result = MEMORY[0x29EDC9740](v2).n128_u64[0];
  return result;
}

@end