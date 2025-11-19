@interface VUIRoundButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation VUIRoundButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VUIRoundButton" hasInstanceMethod:@"textLabels" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VUIRoundButton" hasInstanceMethod:@"button" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = VUIRoundButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(VUIRoundButtonAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(VUIRoundButtonAccessibility *)self safeValueForKey:@"textLabels"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 axFilterObjectsUsingBlock:&__block_literal_global_25];

  v6 = AXLabelForElements();

  return v6;
}

BOOL __49__VUIRoundButtonAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 accessibilityLabel];
    v4 = [v3 length] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(VUIRoundButtonAccessibility *)self safeValueForKey:@"button"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

@end