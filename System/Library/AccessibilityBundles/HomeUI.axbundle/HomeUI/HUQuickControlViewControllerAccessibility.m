@interface HUQuickControlViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityControlsContainerView;
- (id)accessibilityControlServiceName;
- (void)_accessibilityMoveToActiveControl;
@end

@implementation HUQuickControlViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUQuickControlContainerView" hasInstanceMethod:@"activeControlView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HFItem" hasInstanceMethod:@"latestResults" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HFServiceNameComponents" hasInstanceMethod:@"serviceName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlStepperViewAccessibility" hasInstanceMethod:@"_accessibilityFirstQuickControlElementForFocus" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlColorViewAccessibility" hasInstanceMethod:@"_accessibilityFirstQuickControlElementForFocus" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlContainerViewController" hasInstanceMethod:@"controlContainerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlContainerView" hasInstanceMethod:@"activeControlView" withFullSignature:{"@", 0}];
}

- (id)_accessibilityControlsContainerView
{
  v2 = [(HUQuickControlViewControllerAccessibility *)self safeValueForKey:@"parentViewController"];
  MEMORY[0x29C2DA460](@"HUQuickControlContainerViewController");
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 safeValueForKey:@"controlContainerView"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_accessibilityMoveToActiveControl
{
  v2 = [(HUQuickControlViewControllerAccessibility *)self _accessibilityControlsContainerView];
  v3 = [v2 safeValueForKey:@"activeControlView"];

  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v4 = v3;
  AXPerformSafeBlock();
  v5 = v8[5];

  _Block_object_dispose(&v7, 8);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], v6);
}

uint64_t __78__HUQuickControlViewControllerAccessibility__accessibilityMoveToActiveControl__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessibilityFirstQuickControlElementForFocus];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (id)accessibilityControlServiceName
{
  v2 = [(HUQuickControlViewControllerAccessibility *)self safeValueForKey:@"parentViewController"];
  v3 = [v2 safeValueForKey:@"item"];

  objc_opt_class();
  v4 = [v3 safeValueForKey:@"latestResults"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x29EDC5310]];
  objc_opt_class();
  v7 = [v6 safeValueForKey:@"serviceName"];
  v8 = __UIAccessibilityCastAsClass();

  return v8;
}

@end