@interface HUColorSwatchViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (unint64_t)accessibilityTraits;
@end

@implementation HUColorSwatchViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUColorSwatchView" hasInstanceMethod:@"selectionState" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"HUColorSwatchView" hasInstanceMethod:@"color" withFullSignature:{"@", 0}];
}

- (id)accessibilityPath
{
  [(HUColorSwatchViewAccessibility *)self accessibilityFrame];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  v6 = MEMORY[0x29EDC7948];
  MidX = CGRectGetMidX(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  MidY = CGRectGetMidY(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v9 = CGRectGetWidth(v14) * 0.5;

  return [v6 bezierPathWithArcCenter:1 radius:MidX startAngle:MidY endAngle:v9 clockwise:{0.0, 6.28318531}];
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(HUColorSwatchViewAccessibility *)self safeUnsignedIntegerForKey:@"selectionState"];
  v4 = *MEMORY[0x29EDC7FC0];
  if (v3 != 2)
  {
    v4 = 0;
  }

  return v4 | v2;
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(HUColorSwatchViewAccessibility *)self safeValueForKey:@"color"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = AXColorStringForColor();

  return v5;
}

@end