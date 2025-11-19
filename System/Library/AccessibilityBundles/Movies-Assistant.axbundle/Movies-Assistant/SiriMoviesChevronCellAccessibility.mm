@interface SiriMoviesChevronCellAccessibility
- (BOOL)chevronButtonIsDimmed;
- (BOOL)isAccessibilityElement;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation SiriMoviesChevronCellAccessibility

- (BOOL)chevronButtonIsDimmed
{
  v2 = [(SiriMoviesChevronCellAccessibility *)self safeValueForKey:@"chevronButton"];
  v3 = [v2 safeValueForKey:@"userInteractionEnabled"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isAccessibilityElement
{
  if (![(SiriMoviesChevronCellAccessibility *)self chevronButtonIsDimmed])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = SiriMoviesChevronCellAccessibility;
  return [(SiriMoviesChevronCellAccessibility *)&v4 isAccessibilityElement];
}

- (id)accessibilityLabel
{
  if ([(SiriMoviesChevronCellAccessibility *)self chevronButtonIsDimmed])
  {
    v6.receiver = self;
    v6.super_class = SiriMoviesChevronCellAccessibility;
    v3 = [(SiriMoviesChevronCellAccessibility *)&v6 accessibilityLabel];
  }

  else
  {
    v4 = [(SiriMoviesChevronCellAccessibility *)self safeValueForKey:@"chevronButton"];
    v3 = [v4 accessibilityLabel];
  }

  return v3;
}

- (id)accessibilityValue
{
  if ([(SiriMoviesChevronCellAccessibility *)self chevronButtonIsDimmed])
  {
    v6.receiver = self;
    v6.super_class = SiriMoviesChevronCellAccessibility;
    v3 = [(SiriMoviesChevronCellAccessibility *)&v6 accessibilityValue];
  }

  else
  {
    v4 = [(SiriMoviesChevronCellAccessibility *)self safeValueForKey:@"chevronButton"];
    v3 = [v4 accessibilityValue];
  }

  return v3;
}

- (id)accessibilityHint
{
  if ([(SiriMoviesChevronCellAccessibility *)self chevronButtonIsDimmed])
  {
    v5.receiver = self;
    v5.super_class = SiriMoviesChevronCellAccessibility;
    v3 = [(SiriMoviesChevronCellAccessibility *)&v5 accessibilityHint];
  }

  else
  {
    v3 = accessibilityLocalizedString(@"chevron.cell.hint");
  }

  return v3;
}

@end