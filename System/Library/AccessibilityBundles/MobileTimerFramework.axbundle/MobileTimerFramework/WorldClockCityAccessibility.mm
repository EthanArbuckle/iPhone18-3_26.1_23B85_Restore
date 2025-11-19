@interface WorldClockCityAccessibility
- (id)accessibilityLabel;
@end

@implementation WorldClockCityAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 alCityId];
  v4 = [v3 stringValue];

  if ([v4 length])
  {
    v5 = accessibilityLocalizedString(v4);
    if (![v4 isEqualToString:v5])
    {
      goto LABEL_5;
    }
  }

  v5 = [v2 name];
LABEL_5:

  return v5;
}

@end