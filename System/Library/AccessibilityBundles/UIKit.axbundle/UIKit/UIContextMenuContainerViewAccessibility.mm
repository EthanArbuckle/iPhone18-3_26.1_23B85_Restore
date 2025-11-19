@interface UIContextMenuContainerViewAccessibility
@end

@implementation UIContextMenuContainerViewAccessibility

uint64_t __93___UIContextMenuContainerViewAccessibility__axApplyTranslation_forDetentIndex_panController___block_invoke(uint64_t a1)
{
  v8 = *(a1 + 32);
  CAPoint3DMakeWithCGPoint_0();
  v9 = v1;
  v10 = v2;
  v11 = v3;
  CAPoint3DMakeWithCGPoint_0();
  return [v8 _updateViewPositionsWithTranslation:1 location:0 ended:v9 withVelocity:{v10, v11, v4, v5, v6}];
}

void __93___UIContextMenuContainerViewAccessibility_didUpdateFocusInContext_withAnimationCoordinator___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) nextFocusedItem];
  [v3 accessibilityScrollToVisibleWithChild:?];
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(location, 0);
}

@end