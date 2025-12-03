@interface VUIFocusableTextViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsMoreLabelVisible;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityHint;
@end

@implementation VUIFocusableTextViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VUIFocusableTextView" isKindOfClass:@"TVFocusableTextView"];
  [validationsCopy validateClass:@"TVFocusableTextView" hasProperty:@"moreLabel" withType:"@"];
}

- (CGPoint)accessibilityActivationPoint
{
  if ([(VUIFocusableTextViewAccessibility *)self _accessibilityIsMoreLabelVisible])
  {
    v3 = [(VUIFocusableTextViewAccessibility *)self safeValueForKey:@"moreLabel"];
    [v3 accessibilityActivationPoint];
    v5 = v4;
    v7 = v6;

    v8 = v5;
    v9 = v7;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = VUIFocusableTextViewAccessibility;
    [(VUIFocusableTextViewAccessibility *)&v10 accessibilityActivationPoint];
  }

  result.y = v9;
  result.x = v8;
  return result;
}

- (id)accessibilityHint
{
  if ([(VUIFocusableTextViewAccessibility *)self _accessibilityIsMoreLabelVisible])
  {
    accessibilityHint = accessibilityLocalizedString(@"more.label.details.hint");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = VUIFocusableTextViewAccessibility;
    accessibilityHint = [(VUIFocusableTextViewAccessibility *)&v5 accessibilityHint];
  }

  return accessibilityHint;
}

- (BOOL)_accessibilityIsMoreLabelVisible
{
  objc_opt_class();
  v3 = [(VUIFocusableTextViewAccessibility *)self safeValueForKey:@"moreLabel"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4)
  {
    v5 = [v4 isHidden] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

@end