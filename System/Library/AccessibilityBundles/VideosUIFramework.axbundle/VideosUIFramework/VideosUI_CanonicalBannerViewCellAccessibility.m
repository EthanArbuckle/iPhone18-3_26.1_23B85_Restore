@interface VideosUI_CanonicalBannerViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
- (id)accessibilityHeaderElements;
@end

@implementation VideosUI_CanonicalBannerViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VideosUI.CanonicalBannerViewCell" hasSwiftField:@"titleImageView" withSwiftType:"Optional<UIImageView>"];
  [v3 validateClass:@"VideosUI.CanonicalBannerViewCell" hasSwiftField:@"contentTitleView" withSwiftType:"Optional<UIView>"];
  [v3 validateClass:@"VideosUI.CanonicalBannerViewCell" hasSwiftField:@"contentSubtitleView" withSwiftType:"Optional<UIView>"];
  [v3 validateClass:@"VideosUI.CanonicalBannerViewCell" hasSwiftField:@"buttonViews" withSwiftType:"Optional<Array<UIView>>"];
  [v3 validateClass:@"VideosUI.CanonicalBannerViewCell" hasSwiftField:@"episodeInfoTextView" withSwiftType:"Optional<UIView>"];
  [v3 validateClass:@"VideosUI.CanonicalBannerViewCell" hasSwiftField:@"descriptionTextView" withSwiftType:"Optional<UIView>"];
  [v3 validateClass:@"VideosUI.CanonicalBannerViewCell" hasSwiftField:@"promoTextView" withSwiftType:"Optional<UIView>"];
  [v3 validateClass:@"VideosUI.CanonicalBannerViewCell" hasSwiftField:@"tagsView" withSwiftType:"Optional<UIView>"];
  [v3 validateClass:@"VideosUI.CanonicalBannerViewCell" hasSwiftField:@"rolesSummaryView" withSwiftType:"Optional<UIView>"];
  [v3 validateClass:@"VideosUI.CanonicalBannerViewCell" hasSwiftField:@"availabilityTextView" withSwiftType:"Optional<UIView>"];
  [v3 validateClass:@"VideosUI.CanonicalBannerViewCell" hasSwiftField:@"availabilityImageView" withSwiftType:"Optional<UIImageView>"];
  [v3 validateClass:@"VideosUI.CanonicalBannerViewCell" hasSwiftField:@"disclaimerTextView" withSwiftType:"Optional<UIView>"];
}

- (id)accessibilityElements
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(VideosUI_CanonicalBannerViewCellAccessibility *)self safeSwiftValueForKey:@"titleImageView"];
  [v3 axSafelyAddObject:v4];

  v5 = [(VideosUI_CanonicalBannerViewCellAccessibility *)self safeSwiftValueForKey:@"contentTitleView"];
  [v3 axSafelyAddObject:v5];

  v6 = [(VideosUI_CanonicalBannerViewCellAccessibility *)self safeSwiftValueForKey:@"contentSubtitleView"];
  [v3 axSafelyAddObject:v6];

  v7 = [(VideosUI_CanonicalBannerViewCellAccessibility *)self safeSwiftArrayForKey:@"buttonViews"];
  [v3 axSafelyAddObject:v7];

  v8 = [(VideosUI_CanonicalBannerViewCellAccessibility *)self safeSwiftValueForKey:@"episodeInfoTextView"];
  [v3 axSafelyAddObject:v8];

  v9 = [(VideosUI_CanonicalBannerViewCellAccessibility *)self safeSwiftValueForKey:@"descriptionTextView"];
  [v3 axSafelyAddObject:v9];

  v10 = [(VideosUI_CanonicalBannerViewCellAccessibility *)self safeSwiftValueForKey:@"promoTextView"];
  [v3 axSafelyAddObject:v10];

  v11 = [(VideosUI_CanonicalBannerViewCellAccessibility *)self safeSwiftValueForKey:@"tagsView"];
  [v3 axSafelyAddObject:v11];

  v12 = [(VideosUI_CanonicalBannerViewCellAccessibility *)self safeSwiftValueForKey:@"rolesSummaryView"];
  [v3 axSafelyAddObject:v12];

  v13 = [(VideosUI_CanonicalBannerViewCellAccessibility *)self safeSwiftValueForKey:@"availabilityTextView"];
  [v3 axSafelyAddObject:v13];

  v14 = [(VideosUI_CanonicalBannerViewCellAccessibility *)self safeSwiftValueForKey:@"availabilityImageView"];
  [v3 axSafelyAddObject:v14];

  v15 = [(VideosUI_CanonicalBannerViewCellAccessibility *)self safeSwiftValueForKey:@"disclaimerTextView"];
  [v3 axSafelyAddObject:v15];

  return v3;
}

- (id)accessibilityHeaderElements
{
  v3 = MEMORY[0x29EDB8D80];
  v4 = [(VideosUI_CanonicalBannerViewCellAccessibility *)self safeSwiftValueForKey:@"titleImageView"];
  v5 = [(VideosUI_CanonicalBannerViewCellAccessibility *)self safeSwiftValueForKey:@"contentTitleView"];
  v6 = [(VideosUI_CanonicalBannerViewCellAccessibility *)self safeSwiftValueForKey:@"contentSubtitleView"];
  v7 = [v3 axArrayByIgnoringNilElementsWithCount:{3, v4, v5, v6}];

  return v7;
}

@end