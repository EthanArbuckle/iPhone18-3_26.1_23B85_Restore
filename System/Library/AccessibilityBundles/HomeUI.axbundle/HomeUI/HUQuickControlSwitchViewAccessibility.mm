@interface HUQuickControlSwitchViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
- (CGRect)accessibilityFrame;
- (id)_accessibilityControlItem;
- (id)_accessibilityControlName;
- (id)_accessibilitySingleControlHostViewController;
- (id)_accessibilityStateForPrimaryCharacteristic;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation HUQuickControlSwitchViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUQuickControlSwitchView" hasInstanceMethod:@"wellView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlSwitchView" hasInstanceVariable:@"_switchValue" withType:"CGFloat"];
  [v3 validateClass:@"HUQuickControlSwitchView" hasInstanceMethod:@"setSwitchValue:" withFullSignature:{"v", "d", 0}];
  [v3 validateClass:@"_HUQuickControlSingleControlHostView"];
  [v3 validateClass:@"HUQuickControlSingleControlViewController" hasInstanceMethod:@"controlItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HFPrimaryStateControlItem" hasInstanceMethod:@"primaryStateCharacteristicType" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HFItem" hasInstanceMethod:@"latestResults" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlElasticSliderInteractionCoordinator" hasInstanceMethod:@"_updateModelValue:roundValue:notifyDelegate:" withFullSignature:{"v", "{?=dd}", "B", "B", 0}];
  [v3 validateClass:@"HUQuickControlElasticSliderInteractionCoordinator" hasInstanceMethod:@"setActiveGestureValueType:" withFullSignature:{"v", "Q", 0}];
}

- (CGRect)accessibilityFrame
{
  v2 = [(HUQuickControlSwitchViewAccessibility *)self safeValueForKey:@"wellView"];
  [v2 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)accessibilityIncrement
{
  [(HUQuickControlSwitchViewAccessibility *)self _accessibilitySwitchValue];
  if (v3 != 1.0)
  {

    [(HUQuickControlSwitchViewAccessibility *)self _accessibilitySetSwitchValue:1.0];
  }
}

- (void)accessibilityDecrement
{
  [(HUQuickControlSwitchViewAccessibility *)self _accessibilitySwitchValue];
  if (v3 != 0.0)
  {

    [(HUQuickControlSwitchViewAccessibility *)self _accessibilitySetSwitchValue:0.0];
  }
}

- (BOOL)accessibilityActivate
{
  [(HUQuickControlSwitchViewAccessibility *)self _accessibilitySwitchValue];
  v4 = v3 == 1.0;
  v5 = 0.0;
  if (!v4)
  {
    v5 = 1.0;
  }

  [(HUQuickControlSwitchViewAccessibility *)self _accessibilitySetSwitchValue:v5];
  return 1;
}

void __70__HUQuickControlSwitchViewAccessibility__accessibilitySetSwitchValue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSwitchValue:*(a1 + 40)];
  v2 = [*(a1 + 32) _accessibilityValueForKey:AXControlUpdateDelegateKey];
  [v2 setActiveGestureValueType:0];
  [v2 _updateModelValue:1 roundValue:1 notifyDelegate:{0.0, *(a1 + 40)}];
}

- (id)_accessibilitySingleControlHostViewController
{
  v2 = [(HUQuickControlSwitchViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_11 startWithSelf:0];
  v3 = [v2 _accessibilityViewController];

  return v3;
}

uint64_t __86__HUQuickControlSwitchViewAccessibility__accessibilitySingleControlHostViewController__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2DA460](@"_HUQuickControlSingleControlHostView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_accessibilityControlItem
{
  v2 = [(HUQuickControlSwitchViewAccessibility *)self _accessibilitySingleControlHostViewController];
  v3 = [v2 safeValueForKey:@"controlItem"];

  return v3;
}

- (id)_accessibilityControlName
{
  objc_opt_class();
  v3 = [(HUQuickControlSwitchViewAccessibility *)self _accessibilityControlItem];
  v4 = [v3 safeValueForKey:@"latestResults"];
  v5 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v6 = [v5 objectForKeyedSubscript:@"title"];
  v7 = __UIAccessibilityCastAsClass();

  return v7;
}

- (id)_accessibilityStateForPrimaryCharacteristic
{
  v3 = [(HUQuickControlSwitchViewAccessibility *)self _accessibilityControlItem];
  v4 = [v3 safeValueForKey:@"primaryStateCharacteristicType"];

  if (([v4 isEqualToString:*MEMORY[0x29EDBB0A0]] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x29EDBB0B8]))
  {
    [(HUQuickControlSwitchViewAccessibility *)self _accessibilitySwitchValue];
    v6 = vabdd_f64(1.0, v5);
    v7 = @"state.lock.locked";
    v8 = @"state.lock.unlocked";
  }

  else if (([v4 isEqualToString:*MEMORY[0x29EDBB098]] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x29EDBB0B0]))
  {
    [(HUQuickControlSwitchViewAccessibility *)self _accessibilitySwitchValue];
    v6 = vabdd_f64(1.0, v12);
    v7 = @"state.door.closed";
    v8 = @"state.door.open";
  }

  else
  {
    [(HUQuickControlSwitchViewAccessibility *)self _accessibilitySwitchValue];
    v6 = vabdd_f64(1.0, v13);
    v7 = @"state.switch.off";
    v8 = @"state.switch.on";
  }

  if (v6 >= 0.01)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = accessibilityHomeUILocalizedString(v9);

  return v10;
}

@end