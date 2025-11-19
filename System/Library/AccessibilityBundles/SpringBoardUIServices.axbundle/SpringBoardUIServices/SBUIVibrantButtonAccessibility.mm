@interface SBUIVibrantButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation SBUIVibrantButtonAccessibility

- (id)accessibilityLabel
{
  v3 = [(SBUIVibrantButtonAccessibility *)self accessibilityUserDefinedLabel];

  if (v3)
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