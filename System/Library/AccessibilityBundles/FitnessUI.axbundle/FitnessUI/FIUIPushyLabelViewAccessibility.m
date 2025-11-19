@interface FIUIPushyLabelViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation FIUIPushyLabelViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"FIUIPushyLabelView"];
  [v3 validateClass:@"FIUIPushyLabelView" hasInstanceMethod:@"currentAttributedText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FIUIPushyLabelView" hasInstanceMethod:@"pushToAttributedText: direction: perCharacter:" withFullSignature:{"v", "@", "Q", "B", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(FIUIPushyLabelViewAccessibility *)self safeValueForKey:@"currentAttributedText"];
  if (v3)
  {
    v4 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 string];

      v4 = v5;
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = FIUIPushyLabelViewAccessibility;
    v4 = [(FIUIPushyLabelViewAccessibility *)&v7 accessibilityLabel];
  }

  return v4;
}

- (BOOL)isAccessibilityElement
{
  v9 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  if ([v3 _accessibilityViewIsVisible])
  {
    v4 = [(FIUIPushyLabelViewAccessibility *)self safeValueForKey:@"currentAttributedText"];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(FIUIPushyLabelViewAccessibility *)self isAccessibilityUserDefinedElement];

  if (v6)
  {
    v8.receiver = self;
    v8.super_class = FIUIPushyLabelViewAccessibility;
    return [(FIUIPushyLabelViewAccessibility *)&v8 isAccessibilityElement]&& v5;
  }

  return v5;
}

@end