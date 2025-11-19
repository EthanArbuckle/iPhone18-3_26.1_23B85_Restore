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

  v5 = [v3 accessibilityIdentification];
  v6 = [v5 lowercaseString];

  if ([v6 isEqualToString:@"sound-volume"])
  {
    v7 = @"sound.volume.control";
LABEL_9:
    v8 = accessibilityLocalizedString(v7);
    goto LABEL_10;
  }

  if ([v6 isEqualToString:@"brightness"])
  {
    v7 = @"brightness.control";
    goto LABEL_9;
  }

  if ([v6 isEqualToString:@"speakingRate"])
  {
    v7 = @"speakingRate";
    goto LABEL_9;
  }

  v11.receiver = self;
  v11.super_class = PreferencesSliderAccessibility;
  v8 = [(PreferencesSliderAccessibility *)&v11 accessibilityLabel];
LABEL_10:
  v9 = v8;

  return v9;
}

@end