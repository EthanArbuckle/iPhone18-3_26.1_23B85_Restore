@interface HomeScreenConfigurationBlurControlContentViewAccessibility
- (id)accessibilityHint;
@end

@implementation HomeScreenConfigurationBlurControlContentViewAccessibility

- (id)accessibilityHint
{
  if (([(HomeScreenConfigurationBlurControlContentViewAccessibility *)self safeSwiftBoolForKey:@"isSelected"]& 1) != 0)
  {
    v5.receiver = self;
    v5.super_class = HomeScreenConfigurationBlurControlContentViewAccessibility;
    accessibilityHint = [(HomeScreenConfigurationBlurControlContentViewAccessibility *)&v5 accessibilityHint];
  }

  else
  {
    accessibilityHint = accessibilityLocalizedString(@"home.configuration.blur.hint");
  }

  return accessibilityHint;
}

@end