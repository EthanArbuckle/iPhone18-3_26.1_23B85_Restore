@interface MUHoursSummaryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityHint;
- (id)accessibilityValue;
@end

@implementation MUHoursSummaryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MUHoursSummaryView" hasInstanceVariable:@"_expanded" withType:"BOOL"];
  [v3 validateClass:@"MUHoursSummaryView" hasInstanceVariable:@"_titleLabel" withType:"UIView<MULabelViewProtocol>"];
  [v3 validateClass:@"MUHoursSummaryView" hasInstanceVariable:@"_hoursLabel" withType:"UIView<MULabelViewProtocol>"];
  [v3 validateClass:@"MUHoursSummaryView" hasInstanceVariable:@"_openStateLabel" withType:"UIView<MULabelViewProtocol>"];
}

- (id)accessibilityHint
{
  if ([(MUHoursSummaryViewAccessibility *)self safeBoolForKey:@"_expanded"])
  {
    v2 = @"hours.view.collapse.hint";
  }

  else
  {
    v2 = @"hours.view.expand.hint";
  }

  return accessibilityLocalizedString(v2);
}

- (id)accessibilityValue
{
  if ([(MUHoursSummaryViewAccessibility *)self safeBoolForKey:@"_expanded"])
  {
    v2 = @"HOURS_EXPANDED";
  }

  else
  {
    v2 = @"HOURS_COLLAPSED";
  }

  return accessibilityLocalizedString(v2);
}

@end