@interface ETColorPickerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (CGRect)accessibilityFrame;
- (ETColorPickerViewAccessibility)initWithFrame:(CGRect)a3 collapsedFrame:(CGRect)a4;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilitySetCenterCircleHint;
- (void)layoutPaletteCircles;
- (void)showColorWheel;
@end

@implementation ETColorPickerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ETColorPickerView"];
  [v3 validateClass:@"ETColorPickerView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"ETColorPickerView" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
  [v3 validateClass:@"ETColorPickerView" hasInstanceMethod:@"showColorWheel" withFullSignature:{"v", 0}];
  [v3 validateClass:@"ETColorPickerView" hasInstanceVariable:@"_paletteCircles" withType:"NSArray"];
  [v3 validateClass:@"ETColorPickerView" hasInstanceMethod:@"layoutPaletteCircles" withFullSignature:{"v", 0}];
  [v3 validateClass:@"ETColorPickerView" hasInstanceMethod:@"initWithFrame: collapsedFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"ETColorPickerView" hasInstanceMethod:@"_dismissAnimated: completion:" withFullSignature:{"v", "B", "@?", 0}];
  [v3 validateClass:@"ETColorPickerView" hasInstanceMethod:@"dismissAnimated: completion:" withFullSignature:{"v", "B", "@?", 0}];
  [v3 validateClass:@"ETColorPickerView" hasInstanceMethod:@"presentAnimated: completion:" withFullSignature:{"v", "B", "@?", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = ETColorPickerViewAccessibility;
  [(ETColorPickerViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(ETColorPickerViewAccessibility *)self _accessibilitySetCenterCircleHint];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(ETColorPickerViewAccessibility *)self safeValueForKey:@"_selectedCircle"];
  v4 = [v3 safeValueForKey:@"backgroundColor"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = accessibilityLocalizedString(@"people.color.picker");
  v9 = [v5 axColorStringForSpeaking];
  v7 = __UIAXStringForVariables();

  return v7;
}

- (BOOL)accessibilityPerformEscape
{
  v3 = [(ETColorPickerViewAccessibility *)self safeBoolForKey:@"isExpanded"];
  if (v3)
  {
    [(ETColorPickerViewAccessibility *)self dismissAnimated:1 completion:0];
  }

  return v3;
}

- (CGRect)accessibilityFrame
{
  if ([(ETColorPickerViewAccessibility *)self safeBoolForKey:@"isExpanded"])
  {
    v15.receiver = self;
    v15.super_class = ETColorPickerViewAccessibility;
    [(ETColorPickerViewAccessibility *)&v15 accessibilityFrame];
    v7 = v6;
  }

  else
  {
    objc_opt_class();
    v8 = [(ETColorPickerViewAccessibility *)self safeValueForKey:@"superview"];
    v9 = __UIAccessibilityCastAsClass();

    [v9 bounds];
    v7 = v10;

    objc_opt_class();
    v11 = __UIAccessibilityCastAsClass();
    [v11 bounds];
    v13 = v12;

    v3 = v7 * 0.5;
    v5 = v13 + v13;
    v4 = 0.0;
  }

  v14 = v7;
  result.size.height = v5;
  result.size.width = v14;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (ETColorPickerViewAccessibility)initWithFrame:(CGRect)a3 collapsedFrame:(CGRect)a4
{
  v6.receiver = self;
  v6.super_class = ETColorPickerViewAccessibility;
  v4 = [(ETColorPickerViewAccessibility *)&v6 initWithFrame:a3.origin.x collapsedFrame:a3.origin.y, a3.size.width, a3.size.height, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  [(ETColorPickerViewAccessibility *)v4 _accessibilityLoadAccessibilityInformation];
  return v4;
}

void __61__ETColorPickerViewAccessibility_presentAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  [*(a1 + 32) _accessibilityLoadAccessibilityInformation];
  v3 = *MEMORY[0x29EDC7ED8];

  UIAccessibilityPostNotification(v3, 0);
}

void __62__ETColorPickerViewAccessibility__dismissAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  [*(a1 + 32) _accessibilityLoadAccessibilityInformation];
  v3 = *MEMORY[0x29EDC7ED8];

  UIAccessibilityPostNotification(v3, 0);
}

- (void)showColorWheel
{
  v2.receiver = self;
  v2.super_class = ETColorPickerViewAccessibility;
  [(ETColorPickerViewAccessibility *)&v2 showColorWheel];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)layoutPaletteCircles
{
  v3.receiver = self;
  v3.super_class = ETColorPickerViewAccessibility;
  [(ETColorPickerViewAccessibility *)&v3 layoutPaletteCircles];
  [(ETColorPickerViewAccessibility *)self _accessibilitySetCenterCircleHint];
}

- (void)_accessibilitySetCenterCircleHint
{
  objc_opt_class();
  v3 = [(ETColorPickerViewAccessibility *)self safeValueForKey:@"_paletteCircles"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 lastObject];
  v6 = accessibilityLocalizedString(@"non.adjustable.color.circle.hint");
  [v5 setAccessibilityHint:v6];
}

@end