@interface SBDynamicFlashlightActivityElementViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityContainerView;
- (id)accessibilityCustomActions;
- (id)accessibilityPath;
- (void)_transitionToCollapsedState;
- (void)_transitionToExpandedStateWithIntensity:(double)intensity width:(double)width;
@end

@implementation SBDynamicFlashlightActivityElementViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  objc_opt_class();
  [validationsCopy validateClass:@"SBDynamicFlashlightActivityElementViewController" hasInstanceVariable:@"_torchState" withType:__ax_verbose_encode_with_type_encoding_group_class()];
  [validationsCopy validateClass:@"SBDynamicFlashlightActivityElementViewController" hasInstanceMethod:@"currentIntensity" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"SBDynamicFlashlightActivityElementViewController" hasInstanceMethod:@"currentWidth" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"SBDynamicFlashlightActivityElementViewController" hasInstanceMethod:@"_accessibilitySetTorchState:" withFullSignature:{"v", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"SBDynamicFlashlightActivityElementView" hasInstanceMethod:@"_transitionToExpandedStateWithIntensity:width:" withFullSignature:{"v", "d", "d", 0}];
  [validationsCopy validateClass:@"SBDynamicFlashlightActivityElementView" hasInstanceMethod:@"_transitionToCollapsedState" withFullSignature:{"v", 0}];
}

- (id)accessibilityCustomActions
{
  v34[4] = *MEMORY[0x29EDCA608];
  _accessibilityViewController = [(SBDynamicFlashlightActivityElementViewAccessibility *)self _accessibilityViewController];
  [_accessibilityViewController safeCGPointForKey:@"_torchState"];
  v4 = v3;
  v6 = v5;
  [_accessibilityViewController safeCGFloatForKey:@"currentIntensity"];
  v8 = v7;
  [_accessibilityViewController safeCGFloatForKey:@"currentWidth"];
  v10 = v9;
  objc_initWeak(&location, _accessibilityViewController);
  v11 = objc_alloc(MEMORY[0x29EDC78E0]);
  v12 = accessibilityLocalizedString(@"increase.flashlight.intensity");
  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 3221225472;
  v31[2] = __81__SBDynamicFlashlightActivityElementViewAccessibility_accessibilityCustomActions__block_invoke;
  v31[3] = &unk_29F2FB8F8;
  v32[1] = v8;
  objc_copyWeak(v32, &location);
  v32[2] = v4;
  v32[3] = v6;
  v13 = [v11 initWithName:v12 actionHandler:v31];

  v14 = objc_alloc(MEMORY[0x29EDC78E0]);
  v15 = accessibilityLocalizedString(@"decrease.flashlight.intensity");
  v29[0] = MEMORY[0x29EDCA5F8];
  v29[1] = 3221225472;
  v29[2] = __81__SBDynamicFlashlightActivityElementViewAccessibility_accessibilityCustomActions__block_invoke_3;
  v29[3] = &unk_29F2FB8F8;
  v30[1] = v8;
  objc_copyWeak(v30, &location);
  v30[2] = v4;
  v30[3] = v6;
  v16 = [v14 initWithName:v15 actionHandler:v29];

  v17 = objc_alloc(MEMORY[0x29EDC78E0]);
  v18 = accessibilityLocalizedString(@"increase.flashlight.beamwidth");
  v27[0] = MEMORY[0x29EDCA5F8];
  v27[1] = 3221225472;
  v27[2] = __81__SBDynamicFlashlightActivityElementViewAccessibility_accessibilityCustomActions__block_invoke_5;
  v27[3] = &unk_29F2FB8F8;
  v28[1] = v10;
  objc_copyWeak(v28, &location);
  v28[2] = v4;
  v28[3] = v6;
  v19 = [v17 initWithName:v18 actionHandler:v27];

  v20 = objc_alloc(MEMORY[0x29EDC78E0]);
  v21 = accessibilityLocalizedString(@"decrease.flashlight.beamwidth");
  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 3221225472;
  v25[2] = __81__SBDynamicFlashlightActivityElementViewAccessibility_accessibilityCustomActions__block_invoke_7;
  v25[3] = &unk_29F2FB8F8;
  v26[1] = v10;
  objc_copyWeak(v26, &location);
  v26[2] = v4;
  v26[3] = v6;
  v22 = [v20 initWithName:v21 actionHandler:v25];

  v34[0] = v13;
  v34[1] = v16;
  v34[2] = v19;
  v34[3] = v22;
  v23 = [MEMORY[0x29EDB8D80] arrayWithObjects:v34 count:4];

  objc_destroyWeak(v26);
  objc_destroyWeak(v28);

  objc_destroyWeak(v30);
  objc_destroyWeak(v32);
  objc_destroyWeak(&location);

  return v23;
}

uint64_t __81__SBDynamicFlashlightActivityElementViewAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fmin(*(a1 + 40) + 0.25, 1.0);
  objc_copyWeak(&v6, (a1 + 32));
  v7 = *(a1 + 48);
  v8 = v4;
  AXPerformSafeBlock();
  objc_destroyWeak(&v6);

  return 1;
}

void __81__SBDynamicFlashlightActivityElementViewAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessibilitySetTorchState:{*(a1 + 40), *(a1 + 56)}];
}

uint64_t __81__SBDynamicFlashlightActivityElementViewAccessibility_accessibilityCustomActions__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fmax(*(a1 + 40) + -0.25, 0.0);
  objc_copyWeak(&v6, (a1 + 32));
  v7 = *(a1 + 48);
  v8 = v4;
  AXPerformSafeBlock();
  objc_destroyWeak(&v6);

  return 1;
}

void __81__SBDynamicFlashlightActivityElementViewAccessibility_accessibilityCustomActions__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessibilitySetTorchState:{*(a1 + 40), *(a1 + 56)}];
}

uint64_t __81__SBDynamicFlashlightActivityElementViewAccessibility_accessibilityCustomActions__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fmin(*(a1 + 40) + 0.25, 1.0);
  objc_copyWeak(v6, (a1 + 32));
  v6[1] = *&v4;
  v7 = *(a1 + 48);
  AXPerformSafeBlock();
  objc_destroyWeak(v6);

  return 1;
}

void __81__SBDynamicFlashlightActivityElementViewAccessibility_accessibilityCustomActions__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessibilitySetTorchState:{*(a1 + 40), *(a1 + 56)}];
}

uint64_t __81__SBDynamicFlashlightActivityElementViewAccessibility_accessibilityCustomActions__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fmax(*(a1 + 40) + -0.25, 0.0);
  objc_copyWeak(v6, (a1 + 32));
  v6[1] = *&v4;
  v7 = *(a1 + 48);
  AXPerformSafeBlock();
  objc_destroyWeak(v6);

  return 1;
}

void __81__SBDynamicFlashlightActivityElementViewAccessibility_accessibilityCustomActions__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessibilitySetTorchState:{*(a1 + 40), *(a1 + 56)}];
}

- (id)accessibilityPath
{
  _accessibilityContainerView = [(SBDynamicFlashlightActivityElementViewAccessibility *)self _accessibilityContainerView];
  v4 = _accessibilityContainerView;
  if (_accessibilityContainerView)
  {
    [_accessibilityContainerView accessibilityFrame];
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
    layer = [v4 layer];
    [layer cornerRadius];
    v17 = fmax(v22, v14) * v16;

    accessibilityPath = [MEMORY[0x29EDC7948] _bezierPathWithArcRoundedRect:v23 cornerRadius:{v10, v11, v21, v17}];
  }

  else
  {
    v24.receiver = self;
    v24.super_class = SBDynamicFlashlightActivityElementViewAccessibility;
    accessibilityPath = [(SBDynamicFlashlightActivityElementViewAccessibility *)&v24 accessibilityPath];
  }

  v19 = accessibilityPath;

  return v19;
}

- (id)_accessibilityContainerView
{
  mEMORY[0x29EDC7938] = [MEMORY[0x29EDC7938] sharedApplication];
  v3 = [mEMORY[0x29EDC7938] safeValueForKey:@"systemApertureControllerForMainDisplay"];

  v4 = [v3 safeValueForKey:@"_systemApertureViewController"];
  v5 = [v4 safeArrayForKey:@"_orderedContainerViews"];
  if ([v5 count])
  {
    firstObject = [v5 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)_transitionToExpandedStateWithIntensity:(double)intensity width:(double)width
{
  v5.receiver = self;
  v5.super_class = SBDynamicFlashlightActivityElementViewAccessibility;
  [(SBDynamicFlashlightActivityElementViewAccessibility *)&v5 _transitionToExpandedStateWithIntensity:intensity width:width];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], self);
}

- (void)_transitionToCollapsedState
{
  v2.receiver = self;
  v2.super_class = SBDynamicFlashlightActivityElementViewAccessibility;
  [(SBDynamicFlashlightActivityElementViewAccessibility *)&v2 _transitionToCollapsedState];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end