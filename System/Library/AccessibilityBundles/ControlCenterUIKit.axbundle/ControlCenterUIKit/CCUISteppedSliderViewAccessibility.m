@interface CCUISteppedSliderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsButtonModuleWhenCollapsed;
- (BOOL)accessibilityActivate;
- (BOOL)isAccessibilityElement;
- (id)accessibilityCustomActions;
- (id)accessibilityValue;
- (void)_accessibilityAdjustSliderValueInForwardDirection:(BOOL)a3;
- (void)setNumberOfSteps:(unint64_t)a3;
@end

@implementation CCUISteppedSliderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CCUISteppedSliderView" isKindOfClass:@"UIControl"];
  [v3 validateClass:@"CCUISteppedSliderView" hasInstanceMethod:@"step" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"CCUISteppedSliderView" hasInstanceMethod:@"numberOfSteps" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"CCUISteppedSliderView" hasInstanceMethod:@"setNumberOfSteps:" withFullSignature:{"v", "Q", 0}];
  [v3 validateClass:@"CCUIBaseSliderView" hasInstanceVariable:@"_expanded" withType:"BOOL"];
  [v3 validateClass:@"CCUISteppedSliderView" isKindOfClass:@"CCUIBaseSliderView"];
  [v3 validateClass:@"CCUIButtonModuleViewController"];
  [v3 validateClass:@"CCUISliderModuleViewController"];
  [v3 validateClass:@"CCUISliderModuleViewController" isKindOfClass:@"CCUIButtonModuleViewController"];
}

- (BOOL)isAccessibilityElement
{
  if (([(CCUISteppedSliderViewAccessibility *)self safeBoolForKey:@"_expanded"]& 1) != 0)
  {
    return 1;
  }

  else
  {
    return ![(CCUISteppedSliderViewAccessibility *)self _axIsButtonModuleWhenCollapsed];
  }
}

- (id)accessibilityValue
{
  v3 = [(CCUISteppedSliderViewAccessibility *)self _accessibilityGetBlockForAttribute:3];
  v4 = v3;
  if (v3)
  {
    v5 = (*(v3 + 16))(v3);
  }

  else
  {
    [(CCUISteppedSliderViewAccessibility *)self safeUnsignedIntegerForKey:@"step"];
    [(CCUISteppedSliderViewAccessibility *)self safeUnsignedIntegerForKey:@"numberOfSteps"];
    v6 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityLocalizedString(@"control.center.step.slider.value");
    v8 = AXFormatInteger();
    v9 = AXFormatInteger();
    v5 = [v6 stringWithFormat:v7, v8, v9];
  }

  return v5;
}

- (BOOL)accessibilityActivate
{
  v2 = [(CCUISteppedSliderViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_0 startWithSelf:1];
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    AXPerformSafeBlock();
  }

  return v3 != 0;
}

uint64_t __59__CCUISteppedSliderViewAccessibility_accessibilityActivate__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2D2560](@"CCUIContentModuleContainerViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __59__CCUISteppedSliderViewAccessibility_accessibilityActivate__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _accessibilityViewController];
  [v1 expandModule];
}

- (void)_accessibilityAdjustSliderValueInForwardDirection:(BOOL)a3
{
  [(CCUISteppedSliderViewAccessibility *)self safeUnsignedIntegerForKey:@"step"];
  [(CCUISteppedSliderViewAccessibility *)self safeUnsignedIntegerForKey:@"numberOfSteps"];
  AXPerformSafeBlock();
}

uint64_t __88__CCUISteppedSliderViewAccessibility__accessibilityAdjustSliderValueInForwardDirection___block_invoke(uint64_t a1)
{
  [*(a1 + 32) sendActionsForControlEvents:1];
  [*(a1 + 32) setStep:*(a1 + 40)];
  [*(a1 + 32) sendActionsForControlEvents:4096];
  v2 = *(a1 + 32);

  return [v2 sendActionsForControlEvents:64];
}

- (id)accessibilityCustomActions
{
  v5.receiver = self;
  v5.super_class = CCUISteppedSliderViewAccessibility;
  v2 = [(CCUISteppedSliderViewAccessibility *)&v5 accessibilityCustomActions];
  v3 = AXGuaranteedMutableArray();

  UIAccessibilityControlCenterAttachOpenCloseCustomActionsIfNeeded();

  return v3;
}

- (void)setNumberOfSteps:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = CCUISteppedSliderViewAccessibility;
  [(CCUISteppedSliderViewAccessibility *)&v6 setNumberOfSteps:a3];
  if (UIAccessibilityControlCenterModuleIsExpanded())
  {
    if (CFAbsoluteTimeGetCurrent() - *&setNumberOfSteps__LastOutput > 1.0)
    {
      v4 = *MEMORY[0x29EDC7EA8];
      v5 = [(CCUISteppedSliderViewAccessibility *)self _accessibilityAXAttributedValue];
      UIAccessibilityPostNotification(v4, v5);

      setNumberOfSteps__LastOutput = CFAbsoluteTimeGetCurrent();
    }
  }
}

- (BOOL)_axIsButtonModuleWhenCollapsed
{
  v2 = [(CCUISteppedSliderViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_326 startWithSelf:1];
  v3 = v2 != 0;

  return v3;
}

uint64_t __68__CCUISteppedSliderViewAccessibility__axIsButtonModuleWhenCollapsed__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2D2560](@"CCUIButtonModuleViewController");
  if (objc_opt_isKindOfClass())
  {
    MEMORY[0x29C2D2560](@"CCUISliderModuleViewController");
    v3 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

@end