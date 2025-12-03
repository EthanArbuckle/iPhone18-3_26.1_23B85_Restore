@interface SenseRowAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SenseRowAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SequoiaTranslator.SenseRow" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SequoiaTranslator.SenseRow" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SequoiaTranslator.SenseRow" hasInstanceMethod:@"checkmark" withFullSignature:{"@", 0}];
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
    accessibilityTraits = *MEMORY[0x29EDC7FC0];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SenseRowAccessibility;
    accessibilityTraits = [(SenseRowAccessibility *)&v7 accessibilityTraits];
  }

  return accessibilityTraits;
}

@end