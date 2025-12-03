@interface PREditorRootViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetAccessibilityElements;
- (void)_axSetDepthEffectButton;
- (void)_axSetPageControlValue;
- (void)_updateMenuElements;
- (void)currentLookDidChange;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation PREditorRootViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PREditorRootViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"PRComplicationSceneHostViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"PREditorRootViewController" hasProperty:@"pageControl" withType:"@"];
  [validationsCopy validateClass:@"PREditorRootViewController" hasInstanceMethod:@"currentLookDidChange" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PREditorRootViewController" hasInstanceMethod:@"currentLook" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PREditingLook" hasProperty:@"displayName" withType:"@"];
  [validationsCopy validateClass:@"PREditorRootViewController" hasInstanceMethod:@"inlineComplicationReticleView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PREditorRootViewController" hasInstanceMethod:@"titleReticleView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PREditorRootViewController" hasInstanceMethod:@"complicationRowReticleView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PREditorRootViewController" hasInstanceMethod:@"complicationSidebarReticleView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PREditorRootViewController" hasInstanceMethod:@"reticleVibrancyView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PREditorRootViewController" hasInstanceMethod:@"cancelButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PREditorRootViewController" hasInstanceMethod:@"editor" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PREditor" hasInstanceMethod:@"posterRole" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PREditorRootViewController" hasInstanceMethod:@"isDepthEffectDisabled" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PREditorRootViewController" hasInstanceMethod:@"leadingMenuElementViews" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PREditorRootViewController" hasInstanceMethod:@"_updateMenuElements" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PREditorRootViewController" hasInstanceMethod:@"quickActionsHostViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PRQuickActionsSceneHostViewController" isKindOfClass:@"UIViewController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = PREditorRootViewControllerAccessibility;
  [(PREditorRootViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(PREditorRootViewControllerAccessibility *)self _axSetPageControlValue];
  [(PREditorRootViewControllerAccessibility *)self _axSetAccessibilityElements];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PREditorRootViewControllerAccessibility;
  [(PREditorRootViewControllerAccessibility *)&v6 viewDidAppear:appear];
  [(PREditorRootViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
  v4 = *MEMORY[0x29EDC7ED8];
  v5 = [(PREditorRootViewControllerAccessibility *)self safeValueForKey:@"cancelButton"];
  UIAccessibilityPostNotification(v4, v5);
}

- (void)currentLookDidChange
{
  v3.receiver = self;
  v3.super_class = PREditorRootViewControllerAccessibility;
  [(PREditorRootViewControllerAccessibility *)&v3 currentLookDidChange];
  [(PREditorRootViewControllerAccessibility *)self _axSetPageControlValue];
}

- (void)_updateMenuElements
{
  v3.receiver = self;
  v3.super_class = PREditorRootViewControllerAccessibility;
  [(PREditorRootViewControllerAccessibility *)&v3 _updateMenuElements];
  [(PREditorRootViewControllerAccessibility *)self _axSetDepthEffectButton];
}

- (void)_axSetPageControlValue
{
  objc_opt_class();
  v3 = [(PREditorRootViewControllerAccessibility *)self safeValueForKey:@"pageControl"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [(PREditorRootViewControllerAccessibility *)self safeValueForKeyPath:@"currentLook.displayName"];
  v6 = __UIAccessibilityCastAsClass();

  [v4 currentPage];
  [v4 numberOfPages];
  v7 = accessibilityLocalizedString(@"page.control.format.text");
  v8 = AXCFormattedString();

  v9 = __UIAXStringForVariables();
  [v4 setAccessibilityValue:{v9, v8, @"__AXStringForVariablesSentinel"}];
}

- (void)_axSetAccessibilityElements
{
  objc_opt_class();
  v21 = __UIAccessibilityCastAsClass();
  v3 = [(PREditorRootViewControllerAccessibility *)self safeValueForKey:@"inlineComplicationReticleView"];
  v4 = [(PREditorRootViewControllerAccessibility *)self safeValueForKey:@"titleReticleView"];
  v5 = [(PREditorRootViewControllerAccessibility *)self valueForKey:@"editor"];
  v6 = [v5 safeStringForKey:@"posterRole"];

  objc_opt_class();
  v7 = [(PREditorRootViewControllerAccessibility *)self safeValueForKey:@"complicationRowReticleView"];
  v8 = __UIAccessibilityCastAsSafeCategory();

  LOBYTE(location) = 0;
  objc_opt_class();
  v9 = [(PREditorRootViewControllerAccessibility *)self safeValueForKey:@"complicationSidebarReticleView"];
  v10 = __UIAccessibilityCastAsSafeCategory();

  [v3 setAccessibilityIdentifier:@"inline-widget-reticle-view"];
  if ([v6 isEqualToString:@"PRPosterRoleLockScreen"])
  {
    v11 = AXClockReticleViewID;
LABEL_5:
    [v4 setAccessibilityIdentifier:{*v11, v21}];
    goto LABEL_6;
  }

  if ([v6 isEqualToString:@"PRPosterRoleIncomingCall"])
  {
    v11 = AXContactReticleViewID;
    goto LABEL_5;
  }

LABEL_6:
  [v8 setAccessibilityIdentifier:{@"grouped-widgets-reticle-view", v21}];
  [v10 setAccessibilityIdentifier:@"grouped-widgets-reticle-sidebar-view"];
  [v8 _axSetPosterEditorViewController:v22];
  [v10 _axSetPosterEditorViewController:v22];
  v12 = [(PREditorRootViewControllerAccessibility *)self safeValueForKey:@"reticleVibrancyView"];
  v28[0] = MEMORY[0x29EDCA5F8];
  v28[1] = 3221225472;
  v28[2] = __70__PREditorRootViewControllerAccessibility__axSetAccessibilityElements__block_invoke;
  v28[3] = &unk_29F2EBF20;
  v13 = v3;
  v29 = v13;
  v14 = v4;
  v30 = v14;
  v15 = v8;
  v31 = v15;
  [v12 setAccessibilityFrameBlock:v28];

  [(PREditorRootViewControllerAccessibility *)self _axSetDepthEffectButton];
  view = [v22 view];
  objc_initWeak(&location, view);
  objc_initWeak(&from, self);
  v23[0] = MEMORY[0x29EDCA5F8];
  v23[1] = 3221225472;
  v23[2] = __70__PREditorRootViewControllerAccessibility__axSetAccessibilityElements__block_invoke_2;
  v23[3] = &unk_29F2EBF48;
  objc_copyWeak(&v24, &location);
  objc_copyWeak(&v25, &from);
  [view setAccessibilityElementsBlock:v23];
  v17 = v6;
  objc_opt_class();
  v18 = [(PREditorRootViewControllerAccessibility *)self safeValueForKey:@"quickActionsHostViewController"];
  v19 = __UIAccessibilityCastAsClass();

  view2 = [v19 view];

  [view2 _accessibilitySetSortPriority:-100];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

double __70__PREditorRootViewControllerAccessibility__axSetAccessibilityElements__block_invoke(id *a1)
{
  [a1[4] accessibilityFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [a1[5] accessibilityFrame];
  v34.origin.x = v10;
  v34.origin.y = v11;
  v34.size.width = v12;
  v34.size.height = v13;
  v32.origin.x = v3;
  v32.origin.y = v5;
  v32.size.width = v7;
  v32.size.height = v9;
  v33 = CGRectUnion(v32, v34);
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  [a1[6] accessibilityFrame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = x;
  v27 = y;
  v28 = width;
  v29 = height;

  *&result = CGRectUnion(*&v26, *&v19);
  return result;
}

id __70__PREditorRootViewControllerAccessibility__axSetAccessibilityElements__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _accessibilitySubviews];
  v4 = [v3 mutableCopy];

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 safeValueForKey:@"scrollView"];
  [v4 removeObject:v6];

  v7 = objc_loadWeakRetained((a1 + 40));
  v8 = [v7 safeValueForKey:@"reticleVibrancyView"];

  if (v8 && ([v4 containsObject:v8] & 1) == 0)
  {
    [v4 axSafelyAddObject:v8];
  }

  v9 = [v4 sortedArrayUsingSelector:sel_accessibilityCompareGeometry_];

  return v9;
}

- (void)_axSetDepthEffectButton
{
  v18 = *MEMORY[0x29EDCA608];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(PREditorRootViewControllerAccessibility *)self safeArrayForKey:@"leadingMenuElementViews"];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        accessibilityLabel = [v7 accessibilityLabel];
        if (([accessibilityLabel isEqualToString:@"square.2.stack.3d"] & 1) != 0 || (objc_msgSend(accessibilityLabel, "isEqualToString:", @"square.2.layers.3d") & 1) != 0 || objc_msgSend(accessibilityLabel, "isEqualToString:", @"square.2.layers.3d.fill"))
        {
          v9 = accessibilityLocalizedString(@"primary.action.button.depth.effect.label");
          [v7 setAccessibilityLabel:v9];

          objc_initWeak(&location, self);
          v10[0] = MEMORY[0x29EDCA5F8];
          v10[1] = 3221225472;
          v10[2] = __66__PREditorRootViewControllerAccessibility__axSetDepthEffectButton__block_invoke;
          v10[3] = &unk_29F2EBD40;
          objc_copyWeak(&v11, &location);
          [v7 setAccessibilityValueBlock:v10];
          objc_destroyWeak(&v11);
          objc_destroyWeak(&location);
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

id __66__PREditorRootViewControllerAccessibility__axSetDepthEffectButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeBoolForKey:@"isDepthEffectDisabled"];

  if (v2)
  {
    v3 = @"depth.effect.disabled";
  }

  else
  {
    v3 = @"depth.effect.enabled";
  }

  v4 = accessibilityLocalizedString(v3);

  return v4;
}

@end