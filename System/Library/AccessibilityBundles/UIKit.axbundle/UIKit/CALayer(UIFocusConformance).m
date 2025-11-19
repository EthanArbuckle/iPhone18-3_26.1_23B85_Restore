@interface CALayer(UIFocusConformance)
- (id)_preferredFocusRegionCoordinateSpace;
- (id)focusGroupIdentifier;
- (id)focusItemsInRect:()UIFocusConformance;
- (uint64_t)_prefersFocusContainment;
- (uint64_t)canBecomeFocused;
- (uint64_t)conformsToProtocol:()UIFocusConformance;
- (uint64_t)shouldUpdateFocusInContext:()UIFocusConformance;
- (void)didUpdateFocusInContext:()UIFocusConformance withAnimationCoordinator:;
- (void)setNeedsFocusUpdate;
- (void)updateFocusIfNeeded;
@end

@implementation CALayer(UIFocusConformance)

- (id)focusGroupIdentifier
{
  v11 = a1;
  location[1] = a2;
  v9.receiver = a1;
  v9.super_class = CALayer_0;
  location[0] = objc_msgSendSuper2(&v9, sel_focusGroupIdentifier);
  v7 = 0;
  v5 = 0;
  v4 = 0;
  if (!location[0])
  {
    v8 = [v11 _accessibilityParentView];
    v7 = 1;
    v6 = [v8 safeValueForKey:@"_containingScrollView"];
    v5 = 1;
    v4 = v6 == 0;
  }

  if (v5)
  {
    MEMORY[0x29EDC9740](v6);
  }

  if (v7)
  {
    MEMORY[0x29EDC9740](v8);
  }

  if (v4)
  {
    v12 = [v11 _accessibilityDefaultFocusGroupIdentifier];
  }

  else
  {
    v12 = MEMORY[0x29EDC9748](location[0]);
  }

  objc_storeStrong(location, 0);
  v2 = v12;

  return v2;
}

- (void)setNeedsFocusUpdate
{
  v3 = a1;
  v2[1] = a2;
  v2[0] = [MEMORY[0x29EDC7AA0] focusSystemForEnvironment:a1];
  [v2[0] requestFocusUpdateToEnvironment:v3];
  [v3 _updateFocusLayerFrame];
  objc_storeStrong(v2, 0);
}

- (void)updateFocusIfNeeded
{
  v3 = a1;
  v2[1] = a2;
  v2[0] = [MEMORY[0x29EDC7AA0] focusSystemForEnvironment:a1];
  [v2[0] updateFocusIfNeeded];
  [v3 _updateFocusLayerFrame];
  objc_storeStrong(v2, 0);
}

- (uint64_t)shouldUpdateFocusInContext:()UIFocusConformance
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  objc_storeStrong(location, 0);
  return 1;
}

- (void)didUpdateFocusInContext:()UIFocusConformance withAnimationCoordinator:
{
  v15 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v5 = v13;
  v6 = MEMORY[0x29EDCA5F8];
  v7 = -1073741824;
  v8 = 0;
  v9 = __80__CALayer_UIFocusConformance__didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
  v10 = &unk_29F30C888;
  v11 = MEMORY[0x29EDC9748](location[0]);
  v12 = MEMORY[0x29EDC9748](v15);
  [v5 addCoordinatedAnimations:? completion:?];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (uint64_t)canBecomeFocused
{
  v2 = 0;
  if ([a1 isAccessibilityElement])
  {
    v2 = [a1 accessibilityRespondsToUserInteraction];
  }

  return v2 & 1;
}

- (id)_preferredFocusRegionCoordinateSpace
{
  v3 = [a1 _accessibilityParentView];
  v2 = [v3 _screen];
  v4 = [v2 coordinateSpace];
  MEMORY[0x29EDC9740](v2);
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)focusItemsInRect:()UIFocusConformance
{
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v26 = a1;
  v25[1] = a2;
  v25[0] = 0;
  v24 = [a1 accessibilityElements];
  if (v24)
  {
    v13 = v24;
    v12 = MEMORY[0x29EDBA0A8];
    v18 = MEMORY[0x29EDCA5F8];
    v19 = -1073741824;
    v20 = 0;
    v21 = __48__CALayer_UIFocusConformance__focusItemsInRect___block_invoke;
    v22 = &unk_29F30CE88;
    v23 = MEMORY[0x29EDC9748](v26);
    v14 = [v12 predicateWithBlock:&v18];
    v6 = [v13 filteredArrayUsingPredicate:?];
    v7 = v25[0];
    v25[0] = v6;
    MEMORY[0x29EDC9740](v7);
    MEMORY[0x29EDC9740](v14);
    objc_storeStrong(&v23, 0);
  }

  else if ([v26 accessibilityElementCount] != 0x7FFFFFFFFFFFFFFFLL)
  {
    obj = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{objc_msgSend(v26, "accessibilityElementCount")}];
    for (i = 0; ; ++i)
    {
      v11 = i;
      if (v11 >= [v26 accessibilityElementCount])
      {
        break;
      }

      v15 = [v26 accessibilityElementAtIndex:i];
      if ([v15 conformsToProtocol:&unk_2A2390730])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) == 0 || ([v26 _accessibilityFKAShouldIncludeViewsAsElements])
        {
          [obj axSafelyAddObject:v15];
        }
      }

      objc_storeStrong(&v15, 0);
    }

    objc_storeStrong(v25, obj);
    objc_storeStrong(&obj, 0);
  }

  if (v25[0])
  {
    v8 = MEMORY[0x29EDC9748](v25[0]);
  }

  else
  {
    v8 = MEMORY[0x29EDC9748](MEMORY[0x29EDB8E90]);
  }

  v10 = v8;
  objc_storeStrong(&v24, 0);
  objc_storeStrong(v25, 0);

  return v10;
}

- (uint64_t)_prefersFocusContainment
{
  v2 = 1;
  if (([a1 conformsToProtocol:&unk_2A23AAC78] & 1) == 0)
  {
    v2 = 1;
    if (([a1 _accessibilityIsTouchContainer] & 1) == 0)
    {
      v2 = [a1 shouldGroupAccessibilityChildren];
    }
  }

  return v2 & 1;
}

- (uint64_t)conformsToProtocol:()UIFocusConformance
{
  v7 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  if (location[0] == &unk_2A2390730 || location[0] == &unk_2A2390418 || location[0] == &unk_2A2390850 || location[0] == &unk_2A2390C78)
  {
    v8 = 1;
    v5 = 1;
  }

  else
  {
    v4.receiver = v7;
    v4.super_class = CALayer_0;
    v8 = objc_msgSendSuper2(&v4, sel_conformsToProtocol_, location[0]) & 1;
    v5 = 1;
  }

  objc_storeStrong(location, 0);
  return v8 & 1;
}

@end