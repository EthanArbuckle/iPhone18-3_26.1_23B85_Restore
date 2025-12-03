@interface SiriMoviesAttributionCellAccessibility
- (BOOL)isBuyTicketsCell;
- (id)accessibilityLabel;
@end

@implementation SiriMoviesAttributionCellAccessibility

- (BOOL)isBuyTicketsCell
{
  v2 = [(SiriMoviesAttributionCellAccessibility *)self safeValueForKey:@"_titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];
  v4 = accessibilityLocalizedString(@"BUY_TICKETS_TITLE");
  v5 = [accessibilityLabel isEqualToString:v4];

  return v5;
}

- (id)accessibilityLabel
{
  if ([(SiriMoviesAttributionCellAccessibility *)self isBuyTicketsCell])
  {
    accessibilityLabel = accessibilityLocalizedString(@"buy.tickets.fandango");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SiriMoviesAttributionCellAccessibility;
    accessibilityLabel = [(SiriMoviesAttributionCellAccessibility *)&v5 accessibilityLabel];
  }

  return accessibilityLabel;
}

@end