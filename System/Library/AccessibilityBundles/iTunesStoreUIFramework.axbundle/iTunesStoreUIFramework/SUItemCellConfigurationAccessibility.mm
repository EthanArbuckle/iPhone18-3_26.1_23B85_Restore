@interface SUItemCellConfigurationAccessibility
- (id)_accessibilityVideoIconString;
@end

@implementation SUItemCellConfigurationAccessibility

- (id)_accessibilityVideoIconString
{
  v2 = [(SUItemCellConfigurationAccessibility *)self safeValueForKey:@"mediaIconType"];
  v3 = [v2 intValue];

  if (v3 == 2)
  {
    v4 = @"video";
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = @"ringtone";
LABEL_5:
    v5 = accessibilityLocalizedString(v4);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end