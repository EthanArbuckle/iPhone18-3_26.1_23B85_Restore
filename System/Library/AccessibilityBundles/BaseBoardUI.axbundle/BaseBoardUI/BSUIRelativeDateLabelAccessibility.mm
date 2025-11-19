@interface BSUIRelativeDateLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation BSUIRelativeDateLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BSUIRelativeDateLabel" hasInstanceVariable:@"_value" withType:"NSUInteger"];
  [v3 validateClass:@"BSUIRelativeDateLabel" hasInstanceVariable:@"_resolution" withType:"Q"];
  [v3 validateClass:@"BSUIRelativeDateLabel" hasInstanceVariable:@"_comparedToNow" withType:"q"];
}

- (id)accessibilityLabel
{
  v3 = [(BSUIRelativeDateLabelAccessibility *)self safeIntegerForKey:@"_value"];
  v4 = [(BSUIRelativeDateLabelAccessibility *)self safeUnsignedIntegerForKey:@"_resolution"];
  v5 = [(BSUIRelativeDateLabelAccessibility *)self safeIntegerForKey:@"_comparedToNow"];
  if (v4 <= 1)
  {
    if (!v4)
    {
      if (v5 == 1)
      {
        v8 = MEMORY[0x29EDBA0F8];
        v9 = accessibilityLocalizedString(@"minutes.ahead");
        v10 = [v8 stringWithFormat:v9, 1];

        goto LABEL_21;
      }

      v14.receiver = self;
      v14.super_class = BSUIRelativeDateLabelAccessibility;
      [(BSUIRelativeDateLabelAccessibility *)&v14 accessibilityLabel];
      goto LABEL_18;
    }

    if (v4 == 1)
    {
      v6 = MEMORY[0x29EDBA0F8];
      if (v5 == 1)
      {
        v7 = @"minutes.ahead";
      }

      else
      {
        v7 = @"minutes.ago";
      }

      goto LABEL_20;
    }

    goto LABEL_10;
  }

  if (v4 == 2)
  {
    v6 = MEMORY[0x29EDBA0F8];
    if (v5 == 1)
    {
      v7 = @"hours.ahead";
    }

    else
    {
      v7 = @"hours.ago";
    }

    goto LABEL_20;
  }

  if (v4 != 3)
  {
LABEL_10:
    v13.receiver = self;
    v13.super_class = BSUIRelativeDateLabelAccessibility;
    [(BSUIRelativeDateLabelAccessibility *)&v13 accessibilityLabel];
    goto LABEL_18;
  }

  if (v5 == 1)
  {
    v15.receiver = self;
    v15.super_class = BSUIRelativeDateLabelAccessibility;
    [(BSUIRelativeDateLabelAccessibility *)&v15 accessibilityLabel];
    v10 = LABEL_18:;
    goto LABEL_21;
  }

  v6 = MEMORY[0x29EDBA0F8];
  v7 = @"days.ago";
LABEL_20:
  v11 = accessibilityLocalizedString(v7);
  v10 = [v6 localizedStringWithFormat:v11, v3];

LABEL_21:

  return v10;
}

@end