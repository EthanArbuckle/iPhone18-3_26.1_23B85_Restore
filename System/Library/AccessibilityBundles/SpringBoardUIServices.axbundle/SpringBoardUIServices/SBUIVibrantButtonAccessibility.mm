@interface SBUIVibrantButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation SBUIVibrantButtonAccessibility

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(SBUIVibrantButtonAccessibility *)self accessibilityUserDefinedLabel];

  if (accessibilityUserDefinedLabel)
  {
    [(SBUIVibrantButtonAccessibility *)self accessibilityUserDefinedLabel];
  }

  else
  {
    [(SBUIVibrantButtonAccessibility *)self safeValueForKey:@"title"];
  }
  v4 = ;

  return v4;
}

@end