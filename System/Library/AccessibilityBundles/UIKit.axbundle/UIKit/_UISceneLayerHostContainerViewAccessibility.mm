@interface _UISceneLayerHostContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_rebuildLayersForReason:(id)reason withFence:(id)fence;
@end

@implementation _UISceneLayerHostContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UISceneLayerHostContainerView" hasInstanceMethod:@"_rebuildLayersForReason:withFence:" withFullSignature:{"v", "@", "@", 0}];
  objc_storeStrong(v4, obj);
}

- (void)_rebuildLayersForReason:(id)reason withFence:(id)fence
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reason);
  v13 = 0;
  objc_storeStrong(&v13, fence);
  v12.receiver = selfCopy;
  v12.super_class = _UISceneLayerHostContainerViewAccessibility;
  [(_UISceneLayerHostContainerViewAccessibility *)&v12 _rebuildLayersForReason:location[0] withFence:v13];
  v11 = [(_UISceneLayerHostContainerViewAccessibility *)selfCopy _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uiscenepresent_0.isa)];
  v5 = MEMORY[0x29EDCA5F8];
  v6 = -1073741824;
  v7 = 0;
  v8 = __81___UISceneLayerHostContainerViewAccessibility__rebuildLayersForReason_withFence___block_invoke;
  v9 = &unk_29F30C7C8;
  v10 = MEMORY[0x29EDC9748](v11);
  AXPerformSafeBlock();
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

@end