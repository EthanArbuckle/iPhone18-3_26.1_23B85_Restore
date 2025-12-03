@interface ARUIRingGroupAccessibility
- (id)accessibilityLabel;
@end

@implementation ARUIRingGroupAccessibility

- (id)accessibilityLabel
{
  v29 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  rings = [v3 rings];
  v5 = [rings count];

  if (v5 == &dword_0 + 3)
  {
    v6 = +[NSMutableArray array];
    rings2 = [v3 rings];
    v8 = [rings2 objectAtIndexedSubscript:2];

    [v8 opacity];
    if (v9 != 0.0)
    {
      [v8 percentage];
      v10 = accessibilityLocalizedString(@"activity.moving.percentage");
      v11 = AXFormatFloatWithPercentage();
      v12 = [NSString localizedStringWithFormat:v10, v11];
      [v6 addObject:v12];
    }

    rings3 = [v3 rings];
    v14 = [rings3 objectAtIndexedSubscript:1];

    [v14 opacity];
    if (v15 != 0.0)
    {
      [v14 percentage];
      v16 = accessibilityLocalizedString(@"activity.exercising.percentage");
      v17 = AXFormatFloatWithPercentage();
      v18 = [NSString localizedStringWithFormat:v16, v17];
      [v6 addObject:v18];
    }

    rings4 = [v3 rings];
    v20 = [rings4 objectAtIndexedSubscript:0];

    [v20 opacity];
    if (v21 != 0.0)
    {
      [v20 percentage];
      if (_userIsWheelchairUserWithVoiceOverOn())
      {
        v22 = @"activity.wheelchair.percentage";
      }

      else
      {
        v22 = @"activity.standing.percentage";
      }

      v23 = accessibilityLocalizedString(v22);
      v24 = AXFormatFloatWithPercentage();
      v25 = [NSString localizedStringWithFormat:v23, v24];
      [v6 addObject:v25];
    }

    accessibilityLabel = UIAXLabelForElements();
  }

  else
  {
    v28.receiver = self;
    v28.super_class = ARUIRingGroupAccessibility;
    accessibilityLabel = [(ARUIRingGroupAccessibility *)&v28 accessibilityLabel];
  }

  return accessibilityLabel;
}

@end