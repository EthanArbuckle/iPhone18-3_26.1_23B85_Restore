@interface NowPlayingEpisodeUpsellBannerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
@end

@implementation NowPlayingEpisodeUpsellBannerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NowPlayingUI.NowPlayingEpisodeUpsellBannerView" isKindOfClass:@"PodcastsUI.EpisodeUpsellBannerView"];
  [validationsCopy validateClass:@"PodcastsUI.EpisodeUpsellBannerView" hasSwiftField:@"titleLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"PodcastsUI.EpisodeUpsellBannerView" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PodcastsUI.EpisodeUpsellBannerView" hasInstanceMethod:@"closeButtonTapped" withFullSignature:{"v", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(NowPlayingEpisodeUpsellBannerViewAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  v6 = [(NowPlayingEpisodeUpsellBannerViewAccessibility *)self safeValueForKey:@"accessibilitySubtitleLabel"];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (id)accessibilityCustomActions
{
  v10[1] = *MEMORY[0x29EDCA608];
  v3 = objc_alloc(MEMORY[0x29EDC78E0]);
  v4 = accessibilityLocalizedString(@"dismiss.button");
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __76__NowPlayingEpisodeUpsellBannerViewAccessibility_accessibilityCustomActions__block_invoke;
  v9[3] = &unk_29F2EA170;
  v9[4] = self;
  v5 = [v3 initWithName:v4 actionHandler:v9];
  v10[0] = v5;
  v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:1];

  v7 = *MEMORY[0x29EDCA608];

  return v6;
}

uint64_t __76__NowPlayingEpisodeUpsellBannerViewAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  AXPerformSafeBlock();
  return 1;
}

@end