@interface FIUIPushyLabelViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation FIUIPushyLabelViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"FIUIPushyLabelView"];
  [validationsCopy validateClass:@"FIUIPushyLabelView" hasInstanceMethod:@"currentAttributedText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FIUIPushyLabelView" hasInstanceMethod:@"pushToAttributedText: direction: perCharacter:" withFullSignature:{"v", "@", "Q", "B", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(FIUIPushyLabelViewAccessibility *)self safeValueForKey:@"currentAttributedText"];
  if (v3)
  {
    accessibilityLabel = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      string = [accessibilityLabel string];

      accessibilityLabel = string;
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = FIUIPushyLabelViewAccessibility;
    accessibilityLabel = [(FIUIPushyLabelViewAccessibility *)&v7 accessibilityLabel];
  }

  return accessibilityLabel;
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

  isAccessibilityUserDefinedElement = [(FIUIPushyLabelViewAccessibility *)self isAccessibilityUserDefinedElement];

  if (isAccessibilityUserDefinedElement)
  {
    v8.receiver = self;
    v8.super_class = FIUIPushyLabelViewAccessibility;
    return [(FIUIPushyLabelViewAccessibility *)&v8 isAccessibilityElement]&& v5;
  }

  return v5;
}

@end