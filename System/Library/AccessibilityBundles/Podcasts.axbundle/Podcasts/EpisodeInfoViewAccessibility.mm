@interface EpisodeInfoViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityLabelForPlaybackState:(BOOL)a3;
- (id)accessibilityLabel;
@end

@implementation EpisodeInfoViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ShelfKitCollectionViews.EpisodeInfoView" hasInstanceMethod:@"accessibilityEyebrowLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.EpisodeInfoView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.EpisodeInfoView" hasInstanceMethod:@"accessibilityFooterLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.EpisodeInfoView" hasSwiftField:@"eyebrowBuilder" withSwiftType:"Optional<EyebrowBuilder>"];
  [v3 validateClass:@"PodcastsFoundation.EyebrowBuilder" hasSwiftField:@"episode" withSwiftType:"EyebrowBuilderSource"];
  [v3 validateClass:@"ShelfKit.LibraryEpisodeLockup" hasSwiftField:@"isExplicit" withSwiftType:"Bool"];
}

- (id)accessibilityLabel
{
  v3 = [(EpisodeInfoViewAccessibility *)self safeSwiftValueForKey:@"eyebrowBuilder"];
  v4 = [v3 safeSwiftValueForKey:@"episode"];
  v5 = [v4 safeSwiftBoolForKey:@"isExplicit"];

  if (v5)
  {
    v6 = accessibilityLocalizedString(@"explicit");
  }

  else
  {
    v6 = 0;
  }

  v7 = [(EpisodeInfoViewAccessibility *)self _accessibilityStringForLabelKeyValues:@"accessibilityEyebrowLabel"];
  v11 = [(EpisodeInfoViewAccessibility *)self _accessibilityStringForLabelKeyValues:@"accessibilityTitleLabel, accessibilityFooterLabel"];
  v8 = __UIAXStringForVariables();
  v9 = accessibilityStripUnfavorableCharacters(v8);

  return v9;
}

- (id)_accessibilityLabelForPlaybackState:(BOOL)a3
{
  if (a3)
  {
    v3 = @"now.playing";
  }

  else
  {
    v3 = @"paused";
  }

  v4 = accessibilityLocalizedString(v3);

  return v4;
}

@end