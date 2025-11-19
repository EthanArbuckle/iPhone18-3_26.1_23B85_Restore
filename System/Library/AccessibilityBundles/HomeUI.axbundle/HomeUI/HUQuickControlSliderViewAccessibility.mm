@interface HUQuickControlSliderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axHasSecondarySlider;
- (CGRect)accessibilityFrame;
- (double)_axCurrentAdjustableValue;
- (id)_accessibilityControlItem;
- (id)_accessibilityControlName;
- (id)_accessibilitySingleControlHostViewController;
- (id)accessibilityCustomActions;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_axUpdateControlValue:(double)a3 incrementing:(BOOL)a4;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation HUQuickControlSliderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUQuickControlSliderView" hasInstanceMethod:@"sliderValue" withFullSignature:{"d", 0}];
  [v3 validateClass:@"HUQuickControlSliderView" hasInstanceMethod:@"setSliderValue:" withFullSignature:{"v", "d", 0}];
  [v3 validateClass:@"HUQuickControlSliderView" hasInstanceMethod:@"secondarySliderValue" withFullSignature:{"d", 0}];
  [v3 validateClass:@"HUQuickControlSliderView" hasInstanceMethod:@"setSecondarySliderValue:" withFullSignature:{"v", "d", 0}];
  [v3 validateClass:@"HUQuickControlViewControllerAccessibility" hasInstanceMethod:@"accessibilityControlServiceName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlSliderView" hasInstanceMethod:@"backgroundView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"_continuousCornerRadius" withFullSignature:{"d", 0}];
  [v3 validateClass:@"HUQuickControlSliderView" hasInstanceMethod:@"profile" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlSliderViewProfile" hasInstanceMethod:@"hasSecondaryValue" withFullSignature:{"B", 0}];
  [v3 validateClass:@"HUQuickControlElasticSliderInteractionCoordinator" hasInstanceMethod:@"setActiveGestureValueType:" withFullSignature:{"v", "Q", 0}];
  [v3 validateClass:@"HUQuickControlSliderView" hasInstanceMethod:@"showOffState" withFullSignature:{"B", 0}];
  [v3 validateClass:@"HUQuickControlElasticSliderInteractionCoordinator" hasInstanceMethod:@"gestureTransformer" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlElasticSliderInteractionCoordinator" hasInstanceMethod:@"gestureTransformer:sliderValueDidChange:" withFullSignature:{"v", "@", "d", 0}];
  [v3 validateClass:@"HUQuickControlSliderView" hasInstanceMethod:@"_permittedValueRange" withFullSignature:{"{?=dd}", 0}];
  [v3 validateClass:@"_HUQuickControlSingleControlHostView"];
  [v3 validateClass:@"HUQuickControlSingleControlViewController" hasInstanceMethod:@"controlItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HFControlItem" hasInstanceMethod:@"valueSource" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HFSimpleAggregatedCharacteristicValueSource" hasInstanceMethod:@"allServices" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HMService" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
}

- (id)accessibilityCustomActions
{
  v13[2] = *MEMORY[0x29EDCA608];
  if ([(HUQuickControlSliderViewAccessibility *)self _axHasSecondarySlider])
  {
    v3 = objc_alloc(MEMORY[0x29EDC78E0]);
    v4 = accessibilityHomeUILocalizedString(@"controls.adjust.max");
    v5 = [v3 initWithName:v4 target:self selector:sel__axSetAdjustsMax];

    v6 = objc_alloc(MEMORY[0x29EDC78E0]);
    v7 = accessibilityHomeUILocalizedString(@"controls.adjust.min");
    v8 = [v6 initWithName:v7 target:self selector:sel__axSetAdjustsMin];

    v13[0] = v8;
    v13[1] = v5;
    v9 = [MEMORY[0x29EDB8D80] arrayWithObjects:v13 count:2];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HUQuickControlSliderViewAccessibility;
    v9 = [(HUQuickControlSliderViewAccessibility *)&v12 accessibilityCustomActions];
  }

  v10 = *MEMORY[0x29EDCA608];

  return v9;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = HUQuickControlSliderViewAccessibility;
  return *MEMORY[0x29EDC7F60] | [(HUQuickControlSliderViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7FF0];
}

- (id)accessibilityValue
{
  if ([(HUQuickControlSliderViewAccessibility *)self safeBoolForKey:@"showOffState"])
  {
    accessibilityHomeUILocalizedString(@"service.cell.state.off");
  }

  else
  {
    [(HUQuickControlSliderViewAccessibility *)self _axCurrentPrimary];
    AXFormatFloatWithPercentage();
  }
  v3 = ;

  return v3;
}

- (void)accessibilityIncrement
{
  [(HUQuickControlSliderViewAccessibility *)self _axCurrentAdjustableValue];
  v4 = v3 + 0.0500000007;
  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  [(HUQuickControlSliderViewAccessibility *)self _axUpdateControlValue:1 incrementing:v4];
}

- (void)accessibilityDecrement
{
  [(HUQuickControlSliderViewAccessibility *)self _axCurrentAdjustableValue];
  v4 = v3 + -0.0500000007;
  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  [(HUQuickControlSliderViewAccessibility *)self _axUpdateControlValue:0 incrementing:v4];
}

- (double)_axCurrentAdjustableValue
{
  if ([(HUQuickControlSliderViewAccessibility *)self _axHasSecondarySlider]&& [(HUQuickControlSliderViewAccessibility *)self _axShouldAdjustSecondary])
  {

    [(HUQuickControlSliderViewAccessibility *)self _axCurrentSecondary];
  }

  else
  {

    [(HUQuickControlSliderViewAccessibility *)self _axCurrentPrimary];
  }

  return result;
}

- (void)_axUpdateControlValue:(double)a3 incrementing:(BOOL)a4
{
  v4 = [(HUQuickControlSliderViewAccessibility *)self safeValueForKey:@"_permittedValueRange"];
  v5[0] = 0;
  v5[1] = 0;
  [v4 getValue:v5 size:16];
  AXPerformSafeBlock();
}

void __76__HUQuickControlSliderViewAccessibility__axUpdateControlValue_incrementing___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _axHasSecondarySlider])
  {
    v2 = [*(a1 + 32) _axShouldAdjustSecondary];
  }

  else
  {
    v2 = 0;
  }

  v3 = [*(a1 + 32) _accessibilityValueForKey:AXControlUpdateDelegateKey];
  v8 = v3;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [v3 setActiveGestureValueType:v4];
  v5 = [v8 safeValueForKey:@"gestureTransformer"];
  [v8 gestureTransformer:v5 sliderValueDidChange:*(a1 + 40)];

  [v8 setActiveGestureValueType:0];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v2)
  {
    [v6 setSecondarySliderValue:v7];
  }

  else
  {
    [v6 setSliderValue:v7];
  }
}

- (id)_accessibilitySingleControlHostViewController
{
  v2 = [(HUQuickControlSliderViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_8 startWithSelf:0];
  v3 = [v2 _accessibilityViewController];

  return v3;
}

uint64_t __86__HUQuickControlSliderViewAccessibility__accessibilitySingleControlHostViewController__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2DA460](@"_HUQuickControlSingleControlHostView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_accessibilityControlItem
{
  v2 = [(HUQuickControlSliderViewAccessibility *)self _accessibilitySingleControlHostViewController];
  v3 = [v2 safeValueForKey:@"controlItem"];

  return v3;
}

- (id)_accessibilityControlName
{
  v2 = [(HUQuickControlSliderViewAccessibility *)self _accessibilityControlItem];
  v3 = [v2 safeValueForKeyPath:@"valueSource.allServices"];

  objc_opt_class();
  v4 = [v3 anyObject];
  v5 = [v4 safeValueForKey:@"name"];
  v6 = __UIAccessibilityCastAsClass();

  return v6;
}

- (BOOL)_axHasSecondarySlider
{
  v2 = [(HUQuickControlSliderViewAccessibility *)self safeValueForKey:@"profile"];
  v3 = [v2 safeBoolForKey:@"hasSecondaryValue"];

  return v3;
}

- (CGRect)accessibilityFrame
{
  [(HUQuickControlSliderViewAccessibility *)self safeCGFloatForKey:@"_continuousCornerRadius"];
  v4 = v3;
  v5 = v3 * 0.5;
  v6 = [(HUQuickControlSliderViewAccessibility *)self safeValueForKey:@"backgroundView"];
  [v6 accessibilityFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8 - v5;
  v16 = v10 - v5;
  v17 = v4 + v12;
  v18 = v4 + v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

@end