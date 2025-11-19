@interface CALayer
@end

@implementation CALayer

uint64_t __53__CALayer_UIFocusConformance__parentFocusEnvironment__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] conformsToProtocol:&unk_2A2390418];
  objc_storeStrong(location, 0);
  return v3;
}

uint64_t __80__CALayer_UIFocusConformance__didUpdateFocusInContext_withAnimationCoordinator___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) nextFocusedItem];
  v6 = 0;
  v5 = 0;
  if (v4 == *(a1 + 40))
  {
    v7 = [*(a1 + 40) _accessibilityParentView];
    v6 = 1;
    v5 = [v7 _accessibilityIsFKARunningForFocusItem];
  }

  if (v6)
  {
    MEMORY[0x29EDC9740](v7);
  }

  *&v1 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  if (v5)
  {
    return [MEMORY[0x29EDC7A98] moveRingToFocusItem:{*(a1 + 40), v1}];
  }

  else
  {
    return [MEMORY[0x29EDC7A98] removeRingFromFocusItem:{*(a1 + 40), v1}];
  }
}

uint64_t __48__CALayer_UIFocusConformance__focusItemsInRect___block_invoke(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7 = 0;
  if ([location[0] conformsToProtocol:&unk_2A2390730])
  {
    objc_opt_class();
    v4 = 1;
    if (objc_opt_isKindOfClass())
    {
      v4 = [a1[4] _accessibilityFKAShouldIncludeViewsAsElements];
    }

    v7 = v4;
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v7 & 1;
}

@end