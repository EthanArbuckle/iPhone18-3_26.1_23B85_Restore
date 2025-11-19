@interface SiriMoviesAttributionCellAccessibility
- (BOOL)isBuyTicketsCell;
- (id)accessibilityLabel;
@end

@implementation SiriMoviesAttributionCellAccessibility

- (BOOL)isBuyTicketsCell
{
  v2 = [(SiriMoviesAttributionCellAccessibility *)self safeValueForKey:@"_titleLabel"];
  v3 = [v2 accessibilityLabel];
  v4 = accessibilityLocalizedString(@"BUY_TICKETS_TITLE");
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)accessibilityLabel
{
  if ([(SiriMoviesAttributionCellAccessibility *)self isBuyTicketsCell])
  {
    v3 = accessibilityLocalizedString(@"buy.tickets.fandango");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SiriMoviesAttributionCellAccessibility;
    v3 = [(SiriMoviesAttributionCellAccessibility *)&v5 accessibilityLabel];
  }

  return v3;
}

@end