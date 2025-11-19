@interface SSOBBoldTrayButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SSOBBoldTrayButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SSOBBoldTrayButton" isKindOfClass:@"UIButton"];
  [v3 validateClass:@"SSOBBoldTrayButton" hasInstanceMethod:@"normalStateTitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SSOBBoldTrayButton" hasInstanceMethod:@"spinner" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SSSpinner" hasInstanceVariable:@"_label" withType:"UILabel"];
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

    v9 = v6;
  }

  else
  {
    v5 = [(SSOBBoldTrayButtonAccessibility *)self safeUIViewForKey:@"spinner"];
    objc_opt_class();
    v7 = [v5 safeUIViewForKey:@"_label"];
    v8 = __UIAccessibilityCastAsClass();

    v9 = [v8 accessibilityLabel];
  }

  return v9;
}

- (unint64_t)accessibilityTraits
{
  v5.receiver = self;
  v5.super_class = SSOBBoldTrayButtonAccessibility;
  v2 = [(SSOBBoldTrayButtonAccessibility *)&v5 accessibilityTraits];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  if (![v3 isEnabled])
  {
    v2 = *MEMORY[0x29EDC7FA0];
  }

  return v2;
}

@end