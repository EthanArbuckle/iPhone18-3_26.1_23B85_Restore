@interface VUITVEpisodeInformationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation VUITVEpisodeInformationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VUITVEpisodeInformationView" hasInstanceMethod:@"episodeLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VUITVEpisodeInformationView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VUITVEpisodeInformationView" hasInstanceMethod:@"descriptionLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VUITVEpisodeInformationView" hasInstanceMethod:@"metadataView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(VUITVEpisodeInformationViewAccessibility *)self safeValueForKey:@"episodeLabel"];
  v4 = [(VUITVEpisodeInformationViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v5 = [(VUITVEpisodeInformationViewAccessibility *)self safeValueForKey:@"descriptionLabel"];
  v6 = [(VUITVEpisodeInformationViewAccessibility *)self safeValueForKey:@"metadataView"];
  v7 = [v3 accessibilityLabel];
  v8 = [v4 accessibilityLabel];
  v9 = [v5 accessibilityLabel];
  v12 = [v6 accessibilityLabel];
  v10 = __UIAXStringForVariables();

  return v10;
}

@end