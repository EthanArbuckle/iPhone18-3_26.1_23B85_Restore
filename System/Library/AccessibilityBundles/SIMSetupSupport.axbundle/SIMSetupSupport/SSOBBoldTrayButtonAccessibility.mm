@interface SSOBBoldTrayButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SSOBBoldTrayButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SSOBBoldTrayButton" isKindOfClass:@"UIButton"];
  [validationsCopy validateClass:@"SSOBBoldTrayButton" hasInstanceMethod:@"normalStateTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SSOBBoldTrayButton" hasInstanceMethod:@"spinner" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SSSpinner" hasInstanceVariable:@"_label" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  if ([v3 isEnabled])
  {
    v4 = [(SSOBBoldTrayButtonAccessibility *)self safeStringForKey:@"normalStateTitle"];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      v5 = v6;
    }

    else
    {
      v6 = [v3 titleForState:0];
    }

    accessibilityLabel = v6;
  }

  else
  {
    v5 = [(SSOBBoldTrayButtonAccessibility *)self safeUIViewForKey:@"spinner"];
    objc_opt_class();
    v7 = [v5 safeUIViewForKey:@"_label"];
    v8 = __UIAccessibilityCastAsClass();

    accessibilityLabel = [v8 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v5.receiver = self;
  v5.super_class = SSOBBoldTrayButtonAccessibility;
  accessibilityTraits = [(SSOBBoldTrayButtonAccessibility *)&v5 accessibilityTraits];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  if (![v3 isEnabled])
  {
    accessibilityTraits = *MEMORY[0x29EDC7FA0];
  }

  return accessibilityTraits;
}

@end