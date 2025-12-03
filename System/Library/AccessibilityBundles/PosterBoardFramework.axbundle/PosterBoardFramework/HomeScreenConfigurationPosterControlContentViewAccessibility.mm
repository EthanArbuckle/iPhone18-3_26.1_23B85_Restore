@interface HomeScreenConfigurationPosterControlContentViewAccessibility
- (id)accessibilityValue;
@end

@implementation HomeScreenConfigurationPosterControlContentViewAccessibility

- (id)accessibilityValue
{
  objc_opt_class();
  v3 = [(HomeScreenConfigurationPosterControlContentViewAccessibility *)self safeSwiftValueForKey:@"primaryImageView"];
  v4 = __UIAccessibilityCastAsClass();

  image = [v4 image];
  accessibilityIdentifier = [image accessibilityIdentifier];
  v7 = [accessibilityIdentifier isEqualToString:@"photo.on.rectangle"];

  if (v7)
  {
    v8 = @"home.configuration.select.photo.value";
  }

  else
  {
    v8 = @"home.configuration.lock.screen.poster.value";
  }

  v9 = accessibilityLocalizedString(v8);

  return v9;
}

@end