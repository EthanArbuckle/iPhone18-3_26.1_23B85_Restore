@interface MRUSliderAccessibility
- (BOOL)isAccessibilityElement;
- (double)_accessibilityIncreaseAmount:(BOOL)amount;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation MRUSliderAccessibility

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(MRUSliderAccessibility *)self isAccessibilityUserDefinedElement];

  if (isAccessibilityUserDefinedElement)
  {
    isAccessibilityUserDefinedElement2 = [(MRUSliderAccessibility *)self isAccessibilityUserDefinedElement];
    bOOLValue = [isAccessibilityUserDefinedElement2 BOOLValue];
  }

  else
  {
    objc_opt_class();
    isAccessibilityUserDefinedElement2 = __UIAccessibilityCastAsClass();
    bOOLValue = [isAccessibilityUserDefinedElement2 _accessibilityViewIsVisible];
  }

  v6 = bOOLValue;

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = MRUSliderAccessibility;
  return *MEMORY[0x29EDC7F60] | [(MRUSliderAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityValue
{
  [(MRUSliderAccessibility *)self safeFloatForKey:@"minimumValue"];
  [(MRUSliderAccessibility *)self safeFloatForKey:@"maximumValue"];
  [(MRUSliderAccessibility *)self safeFloatForKey:@"value"];

  return AXFormatFloatWithPercentage();
}

void __50__MRUSliderAccessibility__accessibilityBumpValue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *&v2 = v2;
  [*(a1 + 32) setValue:1 animated:v2];
  objc_opt_class();
  v3 = *(a1 + 32);
  v4 = __UIAccessibilityCastAsClass();
  [v4 sendActionsForControlEvents:4096];
}

- (double)_accessibilityIncreaseAmount:(BOOL)amount
{
  amountCopy = amount;
  [(MRUSliderAccessibility *)self safeFloatForKey:@"minimumValue"];
  v6 = v5;
  [(MRUSliderAccessibility *)self safeFloatForKey:@"maximumValue"];
  v8 = v7;
  [(MRUSliderAccessibility *)self safeFloatForKey:@"value"];
  v10 = v9;
  v11 = (v8 - v6) / 10.0;
  if (!amountCopy)
  {
    v11 = -v11;
  }

  v12 = v11 + v10;
  if (v12 >= v6 && vabdd_f64(v12, v6) >= 0.001)
  {
    if (v12 > v8)
    {
      return v8;
    }

    v6 = v12;
    if (vabdd_f64(v12, v8) < 0.001)
    {
      return v8;
    }
  }

  return v6;
}

@end