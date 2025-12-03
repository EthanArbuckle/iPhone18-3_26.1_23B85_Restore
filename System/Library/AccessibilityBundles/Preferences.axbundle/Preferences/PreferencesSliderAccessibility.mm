@interface PreferencesSliderAccessibility
- (id)accessibilityLabel;
@end

@implementation PreferencesSliderAccessibility

- (id)accessibilityLabel
{
  v3 = [(PreferencesSliderAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  if (!v3)
  {
    v4 = [(PreferencesSliderAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uitableviewcel.isa)];
    v3 = [v4 safeValueForKey:@"tableViewCell"];
  }

  accessibilityIdentification = [v3 accessibilityIdentification];
  lowercaseString = [accessibilityIdentification lowercaseString];

  if ([lowercaseString isEqualToString:@"sound-volume"])
  {
    v7 = @"sound.volume.control";
LABEL_9:
    accessibilityLabel = accessibilityLocalizedString(v7);
    goto LABEL_10;
  }

  if ([lowercaseString isEqualToString:@"brightness"])
  {
    v7 = @"brightness.control";
    goto LABEL_9;
  }

  if ([lowercaseString isEqualToString:@"speakingRate"])
  {
    v7 = @"speakingRate";
    goto LABEL_9;
  }

  v11.receiver = self;
  v11.super_class = PreferencesSliderAccessibility;
  accessibilityLabel = [(PreferencesSliderAccessibility *)&v11 accessibilityLabel];
LABEL_10:
  v9 = accessibilityLabel;

  return v9;
}

@end