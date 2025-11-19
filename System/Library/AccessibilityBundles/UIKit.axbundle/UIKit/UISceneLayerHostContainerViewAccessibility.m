@interface UISceneLayerHostContainerViewAccessibility
@end

@implementation UISceneLayerHostContainerViewAccessibility

double __81___UISceneLayerHostContainerViewAccessibility__rebuildLayersForReason_withFence___block_invoke(uint64_t a1)
{
  v6 = a1;
  v5 = a1;
  v4 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsSafeCategory();
  v2 = MEMORY[0x29EDC9748](v3);
  objc_storeStrong(&v3, 0);
  [(_UIScenePresentationViewAccessibility *)v2 _accessibilityResetRemoteElementArray];
  *&result = MEMORY[0x29EDC9740](v2).n128_u64[0];
  return result;
}

@end