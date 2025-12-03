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
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
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
    accessibilityLabel = [(SiriMoviesChevronCellAccessibility *)&v6 accessibilityLabel];
  }

  else
  {
    v4 = [(SiriMoviesChevronCellAccessibility *)self safeValueForKey:@"chevronButton"];
    accessibilityLabel = [v4 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  if ([(SiriMoviesChevronCellAccessibility *)self chevronButtonIsDimmed])
  {
    v6.receiver = self;
    v6.super_class = SiriMoviesChevronCellAccessibility;
    accessibilityValue = [(SiriMoviesChevronCellAccessibility *)&v6 accessibilityValue];
  }

  else
  {
    v4 = [(SiriMoviesChevronCellAccessibility *)self safeValueForKey:@"chevronButton"];
    accessibilityValue = [v4 accessibilityValue];
  }

  return accessibilityValue;
}

- (id)accessibilityHint
{
  if ([(SiriMoviesChevronCellAccessibility *)self chevronButtonIsDimmed])
  {
    v5.receiver = self;
    v5.super_class = SiriMoviesChevronCellAccessibility;
    accessibilityHint = [(SiriMoviesChevronCellAccessibility *)&v5 accessibilityHint];
  }

  else
  {
    accessibilityHint = accessibilityLocalizedString(@"chevron.cell.hint");
  }

  return accessibilityHint;
}

@end