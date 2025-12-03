@interface WorldClockCityAccessibility
- (id)accessibilityLabel;
@end

@implementation WorldClockCityAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  alCityId = [v2 alCityId];
  stringValue = [alCityId stringValue];

  if ([stringValue length])
  {
    name = accessibilityLocalizedString(stringValue);
    if (![stringValue isEqualToString:name])
    {
      goto LABEL_5;
    }
  }

  name = [v2 name];
LABEL_5:

  return name;
}

@end