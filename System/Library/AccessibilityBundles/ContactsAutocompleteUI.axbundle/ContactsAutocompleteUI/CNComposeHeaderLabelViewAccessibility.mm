@interface CNComposeHeaderLabelViewAccessibility
- (BOOL)accessibilityRespondsToUserInteraction;
- (id)accessibilityHint;
@end

@implementation CNComposeHeaderLabelViewAccessibility

- (BOOL)accessibilityRespondsToUserInteraction
{
  v3 = [(CNComposeHeaderLabelViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Mfcomposemulti.isa)];

  if (v3)
  {
    return 1;
  }

  v5.receiver = self;
  v5.super_class = CNComposeHeaderLabelViewAccessibility;
  return [(CNComposeHeaderLabelViewAccessibility *)&v5 accessibilityRespondsToUserInteraction];
}

- (id)accessibilityHint
{
  v3 = [(CNComposeHeaderLabelViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Mfcomposemulti.isa)];

  if (v3)
  {
    accessibilityHint = accessibilityLocalizedString(@"combined.header.hint");
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CNComposeHeaderLabelViewAccessibility;
    accessibilityHint = [(CNComposeHeaderLabelViewAccessibility *)&v6 accessibilityHint];
  }

  return accessibilityHint;
}

@end