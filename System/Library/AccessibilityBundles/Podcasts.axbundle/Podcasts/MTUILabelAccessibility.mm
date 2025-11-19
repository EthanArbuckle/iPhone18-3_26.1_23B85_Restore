@interface MTUILabelAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation MTUILabelAccessibility

- (id)accessibilityLabel
{
  v3 = [(MTUILabelAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"TimeRemaining"];

  if (v4)
  {
    v5 = @"time.remaining";
LABEL_5:
    v8 = accessibilityLocalizedString(v5);
    goto LABEL_7;
  }

  v6 = [(MTUILabelAccessibility *)self accessibilityIdentifier];
  v7 = [v6 isEqualToString:@"TimeElapsed"];

  if (v7)
  {
    v5 = @"time.elapsed";
    goto LABEL_5;
  }

  v10.receiver = self;
  v10.super_class = MTUILabelAccessibility;
  v8 = [(MTUILabelAccessibility *)&v10 accessibilityLabel];
LABEL_7:

  return v8;
}

- (id)accessibilityValue
{
  v3 = [(MTUILabelAccessibility *)self accessibilityIdentifier];
  if ([v3 isEqualToString:@"TimeRemaining"])
  {

LABEL_4:
    v11 = self;
    v6 = &selRef_accessibilityLabel;
    v7 = &v11;
    goto LABEL_6;
  }

  v4 = [(MTUILabelAccessibility *)self accessibilityIdentifier];
  v5 = [v4 isEqualToString:@"TimeElapsed"];

  if (v5)
  {
    goto LABEL_4;
  }

  v10 = self;
  v6 = &selRef_accessibilityValue;
  v7 = &v10;
LABEL_6:
  v7[1] = MTUILabelAccessibility;
  v8 = objc_msgSendSuper2(v7, *v6, v10);

  return v8;
}

@end