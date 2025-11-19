@interface SenseRowAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SenseRowAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SequoiaTranslator.SenseRow" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SequoiaTranslator.SenseRow" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SequoiaTranslator.SenseRow" hasInstanceMethod:@"checkmark" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(SenseRowAccessibility *)self safeUIViewForKey:@"titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [(SenseRowAccessibility *)self safeUIViewForKey:@"subtitleLabel"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v4 safeStringForKey:@"text"];
  v10 = [v6 safeStringForKey:@"text"];
  v8 = __UIAXStringForVariables();

  return v8;
}

- (unint64_t)accessibilityTraits
{
  v8 = 0;
  objc_opt_class();
  v3 = [(SenseRowAccessibility *)self safeUIViewForKey:@"checkmark"];
  v4 = __UIAccessibilityCastAsClass();

  if ([v4 _accessibilityViewIsVisible])
  {
    v5 = *MEMORY[0x29EDC7FC0];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SenseRowAccessibility;
    v5 = [(SenseRowAccessibility *)&v7 accessibilityTraits];
  }

  return v5;
}

@end