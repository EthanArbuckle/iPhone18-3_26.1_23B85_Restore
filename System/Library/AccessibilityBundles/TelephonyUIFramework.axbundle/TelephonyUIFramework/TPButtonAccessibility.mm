@interface TPButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation TPButtonAccessibility

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(TPButtonAccessibility *)self accessibilityUserDefinedLabel];
  v4 = accessibilityUserDefinedLabel;
  if (accessibilityUserDefinedLabel)
  {
    v5 = accessibilityUserDefinedLabel;
    goto LABEL_13;
  }

  accessibilityIdentification = [(TPButtonAccessibility *)self accessibilityIdentification];
  v7 = accessibilityIdentification;
  if (accessibilityIdentification)
  {
    if ([accessibilityIdentification isEqualToString:@"emergencyCallButton"])
    {
      v8 = @"emergencyCallButton.title";
LABEL_8:
      accessibilityLabel = accessibilityLocalizedString(v8);
LABEL_11:
      v5 = accessibilityLabel;
      goto LABEL_12;
    }

    if ([v7 isEqualToString:@"emergencyCancelButton"])
    {
      v8 = @"emergencyCancelButton.title";
      goto LABEL_8;
    }
  }

  v5 = [(TPButtonAccessibility *)self safeValueForKey:@"title"];
  if (!v5)
  {
    v11.receiver = self;
    v11.super_class = TPButtonAccessibility;
    accessibilityLabel = [(TPButtonAccessibility *)&v11 accessibilityLabel];
    goto LABEL_11;
  }

LABEL_12:

LABEL_13:

  return v5;
}

@end