@interface SAUIElementViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityPerformEscape;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityContainerView;
- (id)_containerViewForLegacyFocusRing;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (id)automationElements;
- (int64_t)_accessibilitySortPriority;
- (void)_accessibilityPrefetchPropertiesIfNecessary;
@end

@implementation SAUIElementViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SAUIElementView" hasInstanceMethod:@"elementViewProvider" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SAUIElementView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"_containerViewForLegacyFocusRing" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SAUILayoutSpecifyingElementViewController" hasInstanceMethod:@"_expandToCustomLayoutModeFromUserActionIfPossible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SAUILayoutSpecifyingElementViewController" hasInstanceMethod:@"_axCollapseIfExpandedByUserInteraction" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SAUILayoutSpecifyingElementViewController" hasInstanceMethod:@"_containerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SAUILayoutSpecifyingElementViewController" hasInstanceMethod:@"layoutMode" withFullSignature:{"q", 0}];
}

- (BOOL)isAccessibilityElement
{
  v2 = [(SAUIElementViewAccessibility *)self safeUIViewForKey:@"superview"];
  v3 = [v2 _accessibilityViewController];

  v4 = [v3 safeIntForKey:@"layoutMode"] == 1 || objc_msgSend(v3, "safeIntForKey:", @"layoutMode") == 2;
  return v4;
}

uint64_t __69__SAUIElementViewAccessibility__accessibilityRemoteElementDescendant__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 onClientSide];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_accessibilityPrefetchPropertiesIfNecessary
{
  v3 = [(SAUIElementViewAccessibility *)self _accessibilityRemoteElementDescendant];
  if (v3 && ![(SAUIElementViewAccessibility *)self _axRemoteContentIsGettingElements])
  {
    [(SAUIElementViewAccessibility *)self _axSetRemoteContentIsGettingElements:1];
    _AXShouldDispatchNonMainThreadCallbacksOnMainThreadPushReason();
    v4 = dispatch_get_global_queue(21, 0);
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = __75__SAUIElementViewAccessibility__accessibilityPrefetchPropertiesIfNecessary__block_invoke;
    v5[3] = &unk_29F3064D8;
    v6 = v3;
    v7 = self;
    dispatch_async(v4, v5);
  }
}

uint64_t __75__SAUIElementViewAccessibility__accessibilityPrefetchPropertiesIfNecessary__block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __75__SAUIElementViewAccessibility__accessibilityPrefetchPropertiesIfNecessary__block_invoke_2;
  v3[3] = &unk_29F306500;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 getLeafElementsFromRemoteSide:v3];
}

void __75__SAUIElementViewAccessibility__accessibilityPrefetchPropertiesIfNecessary__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _AXShouldDispatchNonMainThreadCallbacksOnMainThreadPopReason();
  v4 = [v3 ax_flatMappedArrayUsingBlock:&__block_literal_global_323];

  v5 = [MEMORY[0x29EDB8E30] orderedSetWithArray:v4];
  v6 = [v5 array];

  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __75__SAUIElementViewAccessibility__accessibilityPrefetchPropertiesIfNecessary__block_invoke_4;
  v8[3] = &unk_29F3064D8;
  v8[4] = *(a1 + 32);
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x29EDCA578], v8);
}

uint64_t __75__SAUIElementViewAccessibility__accessibilityPrefetchPropertiesIfNecessary__block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x29ED3AA10](*(a1 + 40));
  [v2 _axSetRemoteContentLabel:v3];

  v4 = *(a1 + 32);

  return [v4 _axSetRemoteContentIsGettingElements:0];
}

- (id)accessibilityLabel
{
  v3 = [(SAUIElementViewAccessibility *)self safeValueForKey:@"elementViewProvider"];
  if ([v3 conformsToProtocol:&unk_2A23348F8])
  {
    v4 = [v3 leadingView];
    v5 = [v3 trailingView];
    v6 = [v3 minimalView];
    MEMORY[0x29ED3A9D0](@"SBFlashlightActivityElement");
    if (objc_opt_isKindOfClass() & 1) != 0 || (MEMORY[0x29ED3A9D0](@"SBDynamicFlashlightActivityElement"), (objc_opt_isKindOfClass()))
    {
      v7 = accessibilityLocalizedString(@"flashlight.on");
    }

    else
    {
      v9 = [(SAUIElementViewAccessibility *)self accessibilityIdentifier];
      v10 = [v9 isEqualToString:@"minimal.view"];

      if (v10)
      {
        v7 = [v6 accessibilityLabel];
      }

      else
      {
        v11 = [v5 accessibilityLabel];
        if (![v11 length])
        {
          v12 = UIAXStringForAllChildren();

          v11 = v12;
        }

        v14 = v11;
        v15 = @"__AXStringForVariablesSentinel";
        v7 = __UIAXStringForVariables();
      }

      if (![v7 length])
      {
        v13 = [(SAUIElementViewAccessibility *)self _axGetRemoteContentLabel];

        v7 = v13;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)accessibilityHint
{
  v3 = [(SAUIElementViewAccessibility *)self safeValueForKey:@"elementViewProvider"];
  MEMORY[0x29ED3A9D0](@"SBLockElementViewProvider");
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
    goto LABEL_11;
  }

  MEMORY[0x29ED3A9D0](@"SBFlashlightActivityElement");
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [v3 safeStringForKey:@"elementIdentifier"];
    if ([v6 isEqualToString:@"systemApertureElementIdentifierUnknown"])
    {
      v7 = [(SAUIElementViewAccessibility *)self accessibilityLabel];
      v8 = accessibilityLocalizedString(@"system.aperture.detection.label");
      v9 = [v7 isEqualToString:v8];

      if (v9)
      {
        v5 = @"system.aperture.detection.hint";
        goto LABEL_10;
      }
    }

    else
    {
    }

    v5 = @"system.aperture.actions.hint";
    goto LABEL_10;
  }

  v5 = @"system.aperture.flashlight.hint";
LABEL_10:
  v4 = accessibilityLocalizedString(v5);
LABEL_11:

  return v4;
}

- (id)accessibilityCustomActions
{
  v31[2] = *MEMORY[0x29EDCA608];
  v3 = [(SAUIElementViewAccessibility *)self safeValueForKey:@"elementViewProvider"];
  MEMORY[0x29ED3A9D0](@"SBLockElementViewProvider");
  if (objc_opt_isKindOfClass() & 1) != 0 || (MEMORY[0x29ED3A9D0](@"SBFlashlightActivityElement"), (objc_opt_isKindOfClass()))
  {
    v4 = 0;
    goto LABEL_9;
  }

  v5 = [(SAUIElementViewAccessibility *)self safeUIViewForKey:@"superview"];
  v6 = [v5 _accessibilityViewController];

  v7 = objc_alloc(MEMORY[0x29EDC78E0]);
  v8 = accessibilityLocalizedString(@"window.expand");
  v28[0] = MEMORY[0x29EDCA5F8];
  v28[1] = 3221225472;
  v28[2] = __58__SAUIElementViewAccessibility_accessibilityCustomActions__block_invoke;
  v28[3] = &unk_29F306550;
  v9 = v6;
  v29 = v9;
  v10 = [v7 initWithName:v8 actionHandler:v28];

  v11 = objc_alloc(MEMORY[0x29EDC78E0]);
  v12 = accessibilityLocalizedString(@"window.diminish");
  v26[0] = MEMORY[0x29EDCA5F8];
  v26[1] = 3221225472;
  v26[2] = __58__SAUIElementViewAccessibility_accessibilityCustomActions__block_invoke_3;
  v26[3] = &unk_29F306550;
  v13 = v9;
  v27 = v13;
  v14 = [v11 initWithName:v12 actionHandler:v26];

  v15 = objc_alloc(MEMORY[0x29EDC78E0]);
  v16 = accessibilityLocalizedString(@"window.dismiss");
  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 3221225472;
  v24[2] = __58__SAUIElementViewAccessibility_accessibilityCustomActions__block_invoke_6;
  v24[3] = &unk_29F306550;
  v17 = v13;
  v25 = v17;
  v18 = [v15 initWithName:v16 actionHandler:v24];

  if ([v17 safeIntForKey:@"layoutMode"] == 1 || objc_msgSend(v17, "safeIntForKey:", @"layoutMode") == 2)
  {
    v31[0] = v10;
    v31[1] = v18;
    v19 = MEMORY[0x29EDB8D80];
    v20 = v31;
    v21 = 2;
  }

  else
  {
    if ([v17 safeIntForKey:@"layoutMode"] != 3)
    {
      v4 = MEMORY[0x29EDB8E90];
      goto LABEL_8;
    }

    v30 = v14;
    v19 = MEMORY[0x29EDB8D80];
    v20 = &v30;
    v21 = 1;
  }

  v4 = [v19 arrayWithObjects:v20 count:v21];
LABEL_8:

LABEL_9:
  v22 = *MEMORY[0x29EDCA608];

  return v4;
}

uint64_t __58__SAUIElementViewAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6 = *(a1 + 32);
  AXPerformSafeBlock();
  v4 = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  }

  return v4;
}

uint64_t __58__SAUIElementViewAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _expandToCustomLayoutModeFromUserActionIfPossible];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __58__SAUIElementViewAccessibility_accessibilityCustomActions__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7 = *(a1 + 32);
  AXPerformSafeBlock();
  v4 = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  v6 = *(a1 + 32);
  AXPerformBlockOnMainThreadAfterDelay();

  return v4;
}

uint64_t __58__SAUIElementViewAccessibility_accessibilityCustomActions__block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) _axCollapseIfExpandedByUserInteraction];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __58__SAUIElementViewAccessibility_accessibilityCustomActions__block_invoke_5(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7ED8];
  v2 = [*(a1 + 32) safeValueForKey:@"_containerView"];
  UIAccessibilityPostNotification(v1, v2);
}

uint64_t __58__SAUIElementViewAccessibility_accessibilityCustomActions__block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 32);
  AXPerformSafeBlock();

  return 1;
}

void __58__SAUIElementViewAccessibility_accessibilityCustomActions__block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) _axRequestDiminishment];
  v2 = *(a1 + 32);
  AXPerformBlockOnMainThreadAfterDelay();
}

void __58__SAUIElementViewAccessibility_accessibilityCustomActions__block_invoke_8(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7ED8];
  v2 = [*(a1 + 32) safeValueForKey:@"_containerView"];
  UIAccessibilityPostNotification(v1, v2);
}

- (BOOL)accessibilityPerformEscape
{
  v3 = [(SAUIElementViewAccessibility *)self safeUIViewForKey:@"superview"];
  v4 = [v3 _accessibilityViewController];

  if ([v4 safeIntForKey:@"layoutMode"] == 3)
  {
    v5 = [(SAUIElementViewAccessibility *)self safeUIViewForKey:@"superview"];
    v6 = [v5 _accessibilityViewController];

    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v10 = v6;
    AXPerformSafeBlock();
    v7 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
    v8 = v10;
    AXPerformBlockOnMainThreadAfterDelay();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t __58__SAUIElementViewAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _axCollapseIfExpandedByUserInteraction];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __58__SAUIElementViewAccessibility_accessibilityPerformEscape__block_invoke_2(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7ED8];
  v2 = [*(a1 + 32) safeValueForKey:@"_containerView"];
  UIAccessibilityPostNotification(v1, v2);
}

- (id)accessibilityPath
{
  v3 = [(SAUIElementViewAccessibility *)self _accessibilityContainerView];
  v4 = v3;
  if (v3)
  {
    [v3 accessibilityFrame];
    x = v26.origin.x;
    y = v26.origin.y;
    width = v26.size.width;
    height = v26.size.height;
    v27 = CGRectInset(v26, -5.0, -5.0);
    v21 = v27.size.height;
    v9 = v27.origin.x;
    v23 = v27.origin.x;
    v10 = v27.origin.y;
    v11 = v27.size.width;
    v12 = CGRectGetWidth(v27);
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v22 = v12 / CGRectGetWidth(v28);
    v29.origin.x = v9;
    v29.origin.y = v10;
    v29.size.width = v11;
    v29.size.height = v21;
    v13 = CGRectGetHeight(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v14 = v13 / CGRectGetHeight(v30);
    v15 = [v4 layer];
    [v15 cornerRadius];
    v17 = fmax(v22, v14) * v16;

    v18 = [MEMORY[0x29EDC7948] _bezierPathWithArcRoundedRect:v23 cornerRadius:{v10, v11, v21, v17}];
  }

  else
  {
    v24.receiver = self;
    v24.super_class = SAUIElementViewAccessibility;
    v18 = [(SAUIElementViewAccessibility *)&v24 accessibilityPath];
  }

  v19 = v18;

  return v19;
}

- (id)_containerViewForLegacyFocusRing
{
  v2 = [(SAUIElementViewAccessibility *)self _accessibilityContainerView];
  v3 = [v2 superview];

  return v3;
}

- (id)_accessibilityContainerView
{
  v3 = MEMORY[0x29ED3A9D0](@"SBSystemApertureContainerView", a2);

  return [(SAUIElementViewAccessibility *)self _accessibilityViewAncestorIsKindOf:v3];
}

- (id)automationElements
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 subviews];

  return v3;
}

- (int64_t)_accessibilitySortPriority
{
  if (UIAccessibilityIsSwitchControlRunning())
  {
    return 1000;
  }

  v4.receiver = self;
  v4.super_class = SAUIElementViewAccessibility;
  return [(SAUIElementViewAccessibility *)&v4 _accessibilitySortPriority];
}

- (BOOL)accessibilityActivate
{
  v2 = [(SAUIElementViewAccessibility *)self safeValueForKey:@"elementViewProvider"];
  MEMORY[0x29ED3A9D0](@"SBFlashlightActivityElement");
  if (objc_opt_isKindOfClass())
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  }

  return 1;
}

@end