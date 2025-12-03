@interface VUITVEpisodeInformationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation VUITVEpisodeInformationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VUITVEpisodeInformationView" hasInstanceMethod:@"episodeLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUITVEpisodeInformationView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUITVEpisodeInformationView" hasInstanceMethod:@"descriptionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUITVEpisodeInformationView" hasInstanceMethod:@"metadataView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(VUITVEpisodeInformationViewAccessibility *)self safeValueForKey:@"episodeLabel"];
  v4 = [(VUITVEpisodeInformationViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v5 = [(VUITVEpisodeInformationViewAccessibility *)self safeValueForKey:@"descriptionLabel"];
  v6 = [(VUITVEpisodeInformationViewAccessibility *)self safeValueForKey:@"metadataView"];
  accessibilityLabel = [v3 accessibilityLabel];
  accessibilityLabel2 = [v4 accessibilityLabel];
  accessibilityLabel3 = [v5 accessibilityLabel];
  accessibilityLabel4 = [v6 accessibilityLabel];
  v10 = __UIAXStringForVariables();

  return v10;
}

@end