@interface MTUILabelAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation MTUILabelAccessibility

- (id)accessibilityLabel
{
  accessibilityIdentifier = [(MTUILabelAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"TimeRemaining"];

  if (v4)
  {
    v5 = @"time.remaining";
LABEL_5:
    accessibilityLabel = accessibilityLocalizedString(v5);
    goto LABEL_7;
  }

  accessibilityIdentifier2 = [(MTUILabelAccessibility *)self accessibilityIdentifier];
  v7 = [accessibilityIdentifier2 isEqualToString:@"TimeElapsed"];

  if (v7)
  {
    v5 = @"time.elapsed";
    goto LABEL_5;
  }

  v10.receiver = self;
  v10.super_class = MTUILabelAccessibility;
  accessibilityLabel = [(MTUILabelAccessibility *)&v10 accessibilityLabel];
LABEL_7:

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  accessibilityIdentifier = [(MTUILabelAccessibility *)self accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"TimeRemaining"])
  {

LABEL_4:
    selfCopy = self;
    v6 = &selRef_accessibilityLabel;
    v7 = &selfCopy;
    goto LABEL_6;
  }

  accessibilityIdentifier2 = [(MTUILabelAccessibility *)self accessibilityIdentifier];
  v5 = [accessibilityIdentifier2 isEqualToString:@"TimeElapsed"];

  if (v5)
  {
    goto LABEL_4;
  }

  selfCopy2 = self;
  v6 = &selRef_accessibilityValue;
  v7 = &selfCopy2;
LABEL_6:
  v7[1] = MTUILabelAccessibility;
  v8 = objc_msgSendSuper2(v7, *v6, selfCopy2);

  return v8;
}

@end