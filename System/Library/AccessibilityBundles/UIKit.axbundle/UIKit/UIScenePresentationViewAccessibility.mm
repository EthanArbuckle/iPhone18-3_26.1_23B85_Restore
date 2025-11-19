@interface UIScenePresentationViewAccessibility
@end

@implementation UIScenePresentationViewAccessibility

double __78___UIScenePresentationViewAccessibility__accessibilityResetRemoteElementArray__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(_UIScenePresentationViewAccessibility *)WeakRetained _accessibilitySetRemoteElementIfNecessary];
  *&result = MEMORY[0x29EDC9740](WeakRetained).n128_u64[0];
  return result;
}

@end