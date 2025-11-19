@interface SBTopAffordanceViewAccessibility
@end

@implementation SBTopAffordanceViewAccessibility

uint64_t __70___SBTopAffordanceViewAccessibility__axCreateRemoteElementIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __70___SBTopAffordanceViewAccessibility__axCreateRemoteElementIfNecessary__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilitySceneApplicationPid];

  return v2;
}

id __70___SBTopAffordanceViewAccessibility__axCreateRemoteElementIfNecessary__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained accessibilityLabel];

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 _axContainerApplicationLabel];

  if (v5)
  {
    v6 = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:@"%@, %@", v3, v5];
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v7;
}

uint64_t __75___SBTopAffordanceViewAccessibility__accessibilityContextMenuContainerView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Uicontextmenuc.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id __57___SBTopAffordanceViewAccessibility__axMoveWindowElement__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _axContainerApplicationLabel];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = accessibilityLocalizedString(@"app.window.label");
  }

  v4 = v3;

  v5 = MEMORY[0x29EDBA0F8];
  v6 = accessibilityLocalizedString(@"app.move.window.label");
  v7 = [v5 localizedStringWithFormat:v6, v4];

  return v7;
}

double __57___SBTopAffordanceViewAccessibility__axMoveWindowElement__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [*(a1 + 32) _accessibilityWindowControlsView];
  [v4 frame];

  [v3 bounds];
  UIAccessibilityFrameForBounds();
  v6 = v5;

  return v6;
}

id __57___SBTopAffordanceViewAccessibility__axMoveWindowElement__block_invoke_3(uint64_t a1)
{
  v12[2] = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDB8058];
  v3 = accessibilityLocalizedString(@"window.area.description");
  v4 = [AXSBPositionUtilities areaSizeDescriptionForContainer:*(a1 + 32)];
  v5 = [v2 customContentWithLabel:v3 value:v4];

  v6 = MEMORY[0x29EDB8058];
  v7 = accessibilityLocalizedString(@"window.position.description");
  [*(a1 + 32) frame];
  v8 = [AXSBPositionUtilities positionDescriptionFromTopLeftCornerWithOrigin:?];
  v9 = [v6 customContentWithLabel:v7 value:v8];

  v12[0] = v5;
  v12[1] = v9;
  v10 = [MEMORY[0x29EDB8D80] arrayWithObjects:v12 count:2];

  return v10;
}

@end