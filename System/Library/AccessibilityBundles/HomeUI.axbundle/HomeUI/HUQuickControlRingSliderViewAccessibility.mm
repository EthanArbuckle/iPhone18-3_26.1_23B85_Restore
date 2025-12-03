@interface HUQuickControlRingSliderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (double)_axAdjustmentDelta;
- (id)_axInteractionDelegate;
- (id)_axLocalizedStringForAXControlValueType:(unint64_t)type;
- (id)_axViewController;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAdjustValueOfUpperBound:(BOOL)bound increment:(BOOL)increment;
@end

@implementation HUQuickControlRingSliderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUQuickControlRingSliderView" hasInstanceVariable:@"_profile" withType:"HUQuickControlRingSliderViewProfile"];
  [validationsCopy validateClass:@"HUQuickControlRingSliderView" hasInstanceVariable:@"_primaryHandleView" withType:"HUQuickControlRingSliderHandleView"];
  [validationsCopy validateClass:@"HUQuickControlRingSliderView" hasInstanceVariable:@"_secondaryHandleView" withType:"HUQuickControlRingSliderHandleView"];
  [validationsCopy validateClass:@"HUQuickControlRingSliderView" hasInstanceMethod:@"supplementaryValueMarkingView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUQuickControlRingSliderView" hasInstanceMethod:@"primaryLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUQuickControlRingSliderView" hasInstanceMethod:@"supplementaryLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUQuickControlRingSliderView" hasInstanceMethod:@"showOffState" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"HUQuickControlRingSliderView" hasInstanceMethod:@"setUserInteractionActive:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"HUQuickControlRingSliderViewProfile" hasInstanceMethod:@"shouldShowSupplementaryValue" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"HUQuickControlRingSliderViewProfile" hasInstanceMethod:@"gradationMarkingValues" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUQuickControlRingSliderView" conformsToProtocol:@"HUQuickControlInteractiveView"];
  [validationsCopy validateProtocol:@"HUQuickControlInteractiveView" hasMethod:@"interactionDelegate" isInstanceMethod:1 isRequired:1];
  [validationsCopy validateProtocol:@"HUQuickControlInteractiveView" conformsToProtocol:@"HUQuickControlControllableView"];
  [validationsCopy validateProtocol:@"HUQuickControlControllableView" hasMethod:@"value" isInstanceMethod:1 isRequired:1];
  [validationsCopy validateProtocol:@"HUQuickControlControllableView" hasMethod:@"setValue:" isInstanceMethod:1 isRequired:1];
  [validationsCopy validateClass:@"HUQuickControlRingSliderHandleView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"HUQuickControlRingSliderInteractionCoordinator" conformsToProtocol:@"HUQuickControlViewInteractionDelegate"];
  [validationsCopy validateClass:@"HUQuickControlRingSliderInteractionCoordinator" hasInstanceMethod:@"value" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUQuickControlRingSliderInteractionCoordinator" hasInstanceMethod:@"setUserInteractionActive:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"HUQuickControlRingSliderInteractionCoordinator" hasInstanceMethod:@"setFirstTouchDown:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"HUQuickControlRingSliderInteractionCoordinator" hasInstanceVariable:@"_delegate" withType:"<HUQuickControlInteractionCoordinatorDelegate>"];
  [validationsCopy validateClass:@"HUQuickControlRingSliderInteractionCoordinator" isKindOfClass:@"HUQuickControlInteractionCoordinator"];
  [validationsCopy validateClass:@"HUQuickControlRingSliderRangeViewController" conformsToProtocol:@"HUQuickControlRingSliderInteractionCoordinatorDelegate"];
  [validationsCopy validateClass:@"HUQuickControlRingSliderRangeViewController" hasInstanceMethod:@"modelValueDidChange" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"HUQuickControlRingSliderRangeViewController" isKindOfClass:@"HUQuickControlSingleControlViewController"];
  [validationsCopy validateClass:@"HUQuickControlSingleControlViewController" hasInstanceMethod:@"modelValue" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUQuickControlSingleControlViewController" hasInstanceMethod:@"controlItem" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"HUQuickControlRingSliderInteractionCoordinatorDelegate" conformsToProtocol:@"HUQuickControlInteractionCoordinatorDelegate"];
  [validationsCopy validateProtocol:@"HUQuickControlInteractionCoordinatorDelegate" hasMethod:@"interactionCoordinator:viewValueDidChange:" isInstanceMethod:1 isRequired:1];
  [validationsCopy validateClass:@"HFNumberRange" hasInstanceMethod:@"setMaxValue:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"HFNumberRange" hasInstanceMethod:@"setMinValue:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"HFNumberRange" hasInstanceMethod:@"setMidValue:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v33.receiver = self;
  v33.super_class = HUQuickControlRingSliderViewAccessibility;
  [(HUQuickControlRingSliderViewAccessibility *)&v33 _accessibilityLoadAccessibilityInformation];
  v3 = *MEMORY[0x29EDC7510];
  v4 = [(HUQuickControlRingSliderViewAccessibility *)self safeValueForKey:@"_primaryHandleView"];
  objc_initWeak(&location, self);
  v30[0] = MEMORY[0x29EDCA5F8];
  v30[1] = 3221225472;
  v30[2] = __87__HUQuickControlRingSliderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v30[3] = &unk_29F2C6E38;
  objc_copyWeak(&v31, &location);
  [v4 _setIsAccessibilityElementBlock:v30];
  v28[0] = MEMORY[0x29EDCA5F8];
  v28[1] = 3221225472;
  v28[2] = __87__HUQuickControlRingSliderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v28[3] = &unk_29F2C6B48;
  objc_copyWeak(&v29, &location);
  [v4 _setAccessibilityLabelBlock:v28];
  v5 = *MEMORY[0x29EDC7FF0] | *MEMORY[0x29EDC7F60];
  [v4 setAccessibilityTraits:v5 | v3];
  v26[0] = MEMORY[0x29EDCA5F8];
  v26[1] = 3221225472;
  v26[2] = __87__HUQuickControlRingSliderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v26[3] = &unk_29F2C6B48;
  objc_copyWeak(&v27, &location);
  [v4 _setAccessibilityValueBlock:v26];
  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 3221225472;
  v24[2] = __87__HUQuickControlRingSliderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4;
  v24[3] = &unk_29F2C6E60;
  objc_copyWeak(&v25, &location);
  [v4 _setAccessibilityIncrementBlock:v24];
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 3221225472;
  v22[2] = __87__HUQuickControlRingSliderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5;
  v22[3] = &unk_29F2C6E60;
  objc_copyWeak(&v23, &location);
  [v4 _setAccessibilityDecrementBlock:v22];
  v6 = [(HUQuickControlRingSliderViewAccessibility *)self safeValueForKey:@"_secondaryHandleView"];
  v20[0] = MEMORY[0x29EDCA5F8];
  v20[1] = 3221225472;
  v20[2] = __87__HUQuickControlRingSliderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_6;
  v20[3] = &unk_29F2C6E38;
  objc_copyWeak(&v21, &location);
  [v6 _setIsAccessibilityElementBlock:v20];
  v7 = accessibilityHomeUILocalizedString(@"ring.slider.lower.limit");
  [v6 setAccessibilityLabel:v7];

  [v6 setAccessibilityTraits:v5 | v3];
  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 3221225472;
  v18[2] = __87__HUQuickControlRingSliderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_7;
  v18[3] = &unk_29F2C6B48;
  objc_copyWeak(&v19, &location);
  [v6 _setAccessibilityValueBlock:v18];
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 3221225472;
  v16[2] = __87__HUQuickControlRingSliderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_8;
  v16[3] = &unk_29F2C6E60;
  objc_copyWeak(&v17, &location);
  [v6 _setAccessibilityIncrementBlock:v16];
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __87__HUQuickControlRingSliderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_9;
  v14[3] = &unk_29F2C6E60;
  objc_copyWeak(&v15, &location);
  [v6 _setAccessibilityDecrementBlock:v14];
  v8 = [(HUQuickControlRingSliderViewAccessibility *)self safeValueForKey:@"supplementaryValueMarkingView"];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __87__HUQuickControlRingSliderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_10;
  v12[3] = &unk_29F2C6E38;
  objc_copyWeak(&v13, &location);
  [v8 _setIsAccessibilityElementBlock:v12];
  v9 = accessibilityHomeUILocalizedString(@"ring.slider.current.value.indicator");
  [v8 setAccessibilityLabel:v9];

  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __87__HUQuickControlRingSliderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_11;
  v10[3] = &unk_29F2C6B48;
  objc_copyWeak(&v11, &location);
  [v8 _setAccessibilityValueBlock:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

uint64_t __87__HUQuickControlRingSliderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeUIViewForKey:@"_primaryHandleView"];
  v3 = [v2 isHidden];

  return v3 ^ 1u;
}

id __87__HUQuickControlRingSliderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _axInteractionDelegate];
  v4 = [v3 safeValueForKey:@"value"];
  v5 = __UIAccessibilityCastAsClass();

  if ([v5 type] == 1)
  {
    v6 = @"ring.slider.upper.limit";
  }

  else
  {
    v6 = @"ring.slider.target.value";
  }

  v7 = accessibilityHomeUILocalizedString(v6);

  return v7;
}

id __87__HUQuickControlRingSliderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _axInteractionDelegate];
  v4 = [v3 safeValueForKey:@"value"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 type];
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = v7;
  if (v6 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 3;
  }

  v10 = [v7 _axLocalizedStringForAXControlValueType:v9];

  return v10;
}

void __87__HUQuickControlRingSliderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _axAdjustValueOfUpperBound:1 increment:1];
}

void __87__HUQuickControlRingSliderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _axAdjustValueOfUpperBound:1 increment:0];
}

uint64_t __87__HUQuickControlRingSliderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeUIViewForKey:@"_secondaryHandleView"];
  v3 = [v2 isHidden];

  return v3 ^ 1u;
}

id __87__HUQuickControlRingSliderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _axLocalizedStringForAXControlValueType:2];

  return v2;
}

void __87__HUQuickControlRingSliderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _axAdjustValueOfUpperBound:0 increment:1];
}

void __87__HUQuickControlRingSliderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _axAdjustValueOfUpperBound:0 increment:0];
}

uint64_t __87__HUQuickControlRingSliderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeValueForKey:@"_profile"];
  if ([v3 safeBoolForKey:@"shouldShowSupplementaryValue"])
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 safeBoolForKey:@"showOffState"] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __87__HUQuickControlRingSliderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _axLocalizedStringForAXControlValueType:0];

  return v2;
}

- (id)accessibilityElements
{
  [(HUQuickControlRingSliderViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
  v3 = MEMORY[0x29EDB8D80];
  v4 = [(HUQuickControlRingSliderViewAccessibility *)self safeValueForKeyPath:@"supplementaryLabel"];
  v5 = [(HUQuickControlRingSliderViewAccessibility *)self safeValueForKeyPath:@"primaryLabel"];
  v6 = [(HUQuickControlRingSliderViewAccessibility *)self safeValueForKey:@"_primaryHandleView"];
  v7 = [(HUQuickControlRingSliderViewAccessibility *)self safeValueForKey:@"_secondaryHandleView"];
  v8 = [(HUQuickControlRingSliderViewAccessibility *)self safeValueForKey:@"supplementaryValueMarkingView"];
  v9 = [v3 axArrayByIgnoringNilElementsWithCount:{5, v4, v5, v6, v7, v8}];

  return v9;
}

- (id)_axLocalizedStringForAXControlValueType:(unint64_t)type
{
  _axViewController = [(HUQuickControlRingSliderViewAccessibility *)self _axViewController];
  if (type)
  {
    objc_opt_class();
    v5 = [_axViewController safeValueForKey:@"modelValue"];
    v6 = __UIAccessibilityCastAsClass();

    switch(type)
    {
      case 3uLL:
        targetValue = [v6 targetValue];
        break;
      case 2uLL:
        targetValue = [v6 minimumValue];
        break;
      case 1uLL:
        targetValue = [v6 maximumValue];
        break;
      default:
        v11 = 0;
        goto LABEL_12;
    }
  }

  else
  {
    objc_opt_class();
    v8 = [_axViewController safeValueForKey:@"controlItem"];
    v9 = __UIAccessibilityCastAsClass();

    latestResults = [v9 latestResults];
    v6 = [latestResults objectForKey:*MEMORY[0x29EDC52F0]];

    targetValue = [v6 objectForKey:*MEMORY[0x29EDBB0A8]];
  }

  v11 = targetValue;
  if (targetValue)
  {
    mEMORY[0x29EDC5380] = [MEMORY[0x29EDC5380] sharedInstance];
    temperatureFormatter = [mEMORY[0x29EDC5380] temperatureFormatter];

    v14 = [temperatureFormatter stringForObjectValue:v11];

    goto LABEL_13;
  }

LABEL_12:
  v14 = 0;
LABEL_13:

  return v14;
}

- (void)_axAdjustValueOfUpperBound:(BOOL)bound increment:(BOOL)increment
{
  incrementCopy = increment;
  boundCopy = bound;
  [(HUQuickControlRingSliderViewAccessibility *)self _axAdjustmentDelta];
  if (incrementCopy)
  {
    v8 = v7;
  }

  else
  {
    v8 = -v7;
  }

  _axInteractionDelegate = [(HUQuickControlRingSliderViewAccessibility *)self _axInteractionDelegate];
  v43 = MEMORY[0x29EDCA5F8];
  v44 = 3221225472;
  v45 = __82__HUQuickControlRingSliderViewAccessibility__axAdjustValueOfUpperBound_increment___block_invoke;
  v46 = &unk_29F2C6E88;
  selfCopy = self;
  v10 = _axInteractionDelegate;
  v48 = v10;
  AXPerformSafeBlock();
  v11 = [v10 safeValueForKey:@"value"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v42 = 0;
    objc_opt_class();
    v13 = [v10 safeValueForKey:@"value"];
    v14 = __UIAccessibilityCastAsClass();

    if ([v14 type] == 1)
    {
      if (boundCopy)
      {
        maxValue = [v14 maxValue];
        [maxValue doubleValue];
        v17 = v8 + v16;

        v18 = fmax(fmin(v17, 1.0), 0.0);
        v19 = v41;
        v41[0] = MEMORY[0x29EDCA5F8];
        v41[1] = 3221225472;
        v20 = __82__HUQuickControlRingSliderViewAccessibility__axAdjustValueOfUpperBound_increment___block_invoke_2;
      }

      else
      {
        minValue = [v14 minValue];
        [minValue doubleValue];
        v34 = v8 + v33;

        v18 = fmax(fmin(v34, 1.0), 0.0);
        v19 = v40;
        v40[0] = MEMORY[0x29EDCA5F8];
        v40[1] = 3221225472;
        v20 = __82__HUQuickControlRingSliderViewAccessibility__axAdjustValueOfUpperBound_increment___block_invoke_3;
      }
    }

    else
    {
      midValue = [v14 midValue];
      [midValue doubleValue];
      v31 = v8 + v30;

      v18 = fmax(fmin(v31, 1.0), 0.0);
      v19 = v39;
      v39[0] = MEMORY[0x29EDCA5F8];
      v39[1] = 3221225472;
      v20 = __82__HUQuickControlRingSliderViewAccessibility__axAdjustValueOfUpperBound_increment___block_invoke_4;
    }

    *(v19 + 2) = v20;
    *(v19 + 3) = &unk_29F2C6EB0;
    v26 = v14;
    *(v19 + 4) = v26;
    v19[5] = v18;
    AXPerformSafeBlock();

    v27 = v38;
    v38[0] = MEMORY[0x29EDCA5F8];
    v38[1] = 3221225472;
    v28 = __82__HUQuickControlRingSliderViewAccessibility__axAdjustValueOfUpperBound_increment___block_invoke_5;
    goto LABEL_13;
  }

  v21 = [v10 safeValueForKey:@"value"];
  objc_opt_class();
  v22 = objc_opt_isKindOfClass();

  if (v22)
  {
    v42 = 0;
    objc_opt_class();
    v23 = [v10 safeValueForKey:@"value"];
    v24 = __UIAccessibilityCastAsClass();

    [v24 doubleValue];
    v26 = [MEMORY[0x29EDBA070] numberWithDouble:{fmax(fmin(v8 + v25, 1.0), 0.0)}];

    v27 = v37;
    v37[0] = MEMORY[0x29EDCA5F8];
    v37[1] = 3221225472;
    v28 = __82__HUQuickControlRingSliderViewAccessibility__axAdjustValueOfUpperBound_increment___block_invoke_6;
LABEL_13:
    v27[2] = v28;
    v27[3] = &unk_29F2C6ED8;
    v27[4] = v10;
    v27[5] = v26;
    v27[6] = self;
    v35 = v26;
    AXPerformSafeBlock();
  }

  v36 = v10;
  AXPerformSafeBlock();
}

uint64_t __82__HUQuickControlRingSliderViewAccessibility__axAdjustValueOfUpperBound_increment___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setUserInteractionActive:1];
  [*(a1 + 40) setUserInteractionActive:1];
  v2 = *(a1 + 40);

  return [v2 setFirstTouchDown:1];
}

void __82__HUQuickControlRingSliderViewAccessibility__axAdjustValueOfUpperBound_increment___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x29EDBA070] numberWithDouble:*(a1 + 40)];
  [v1 setMaxValue:v2];
}

void __82__HUQuickControlRingSliderViewAccessibility__axAdjustValueOfUpperBound_increment___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x29EDBA070] numberWithDouble:*(a1 + 40)];
  [v1 setMinValue:v2];
}

void __82__HUQuickControlRingSliderViewAccessibility__axAdjustValueOfUpperBound_increment___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x29EDBA070] numberWithDouble:*(a1 + 40)];
  [v1 setMidValue:v2];
}

void __82__HUQuickControlRingSliderViewAccessibility__axAdjustValueOfUpperBound_increment___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setValue:*(a1 + 40)];
  v3 = [*(a1 + 48) _axViewController];
  v2 = [v3 safeValueForKey:@"modelValueDidChange"];
  [v3 interactionCoordinator:*(a1 + 32) viewValueDidChange:*(a1 + 40)];
}

void __82__HUQuickControlRingSliderViewAccessibility__axAdjustValueOfUpperBound_increment___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) setValue:*(a1 + 40)];
  v3 = [*(a1 + 48) _axViewController];
  v2 = [v3 safeValueForKey:@"modelValueDidChange"];
  [v3 interactionCoordinator:*(a1 + 32) viewValueDidChange:*(a1 + 40)];
}

uint64_t __82__HUQuickControlRingSliderViewAccessibility__axAdjustValueOfUpperBound_increment___block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) setUserInteractionActive:0];
  [*(a1 + 40) setUserInteractionActive:0];
  v2 = *(a1 + 40);

  return [v2 setFirstTouchDown:0];
}

- (double)_axAdjustmentDelta
{
  v2 = [(HUQuickControlRingSliderViewAccessibility *)self safeValueForKey:@"_profile"];
  v3 = [v2 safeArrayForKey:@"gradationMarkingValues"];

  if ([v3 count])
  {
    v4 = 1.0 / [v3 count];
  }

  else
  {
    v4 = 0.0189999994;
  }

  return v4;
}

- (id)_axInteractionDelegate
{
  v2 = [(HUQuickControlRingSliderViewAccessibility *)self safeValueForKey:@"interactionDelegate"];
  MEMORY[0x29C2DA460](@"HUQuickControlRingSliderInteractionCoordinator");
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_axViewController
{
  _axInteractionDelegate = [(HUQuickControlRingSliderViewAccessibility *)self _axInteractionDelegate];
  v3 = [_axInteractionDelegate safeValueForKey:@"_delegate"];

  v4 = NSProtocolFromString(&cfstr_Huquickcontrol_39.isa);
  v5 = [v3 conformsToProtocol:v4];

  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end