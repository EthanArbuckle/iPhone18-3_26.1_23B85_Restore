@interface VideosUI_CanonicalBannerViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
- (id)accessibilityHeaderElements;
@end

@implementation VideosUI_CanonicalBannerViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosUI.CanonicalBannerViewCell" hasSwiftField:@"titleImageView" withSwiftType:"Optional<UIImageView>"];
  [validationsCopy validateClass:@"VideosUI.CanonicalBannerViewCell" hasSwiftField:@"contentTitleView" withSwiftType:"Optional<UIView>"];
  [validationsCopy validateClass:@"VideosUI.CanonicalBannerViewCell" hasSwiftField:@"contentSubtitleView" withSwiftType:"Optional<UIView>"];
  [validationsCopy validateClass:@"VideosUI.CanonicalBannerViewCell" hasSwiftField:@"buttonViews" withSwiftType:"Optional<Array<UIView>>"];
  [validationsCopy validateClass:@"VideosUI.CanonicalBannerViewCell" hasSwiftField:@"episodeInfoTextView" withSwiftType:"Optional<UIView>"];
  [validationsCopy validateClass:@"VideosUI.CanonicalBannerViewCell" hasSwiftField:@"descriptionTextView" withSwiftType:"Optional<UIView>"];
  [validationsCopy validateClass:@"VideosUI.CanonicalBannerViewCell" hasSwiftField:@"promoTextView" withSwiftType:"Optional<UIView>"];
  [validationsCopy validateClass:@"VideosUI.CanonicalBannerViewCell" hasSwiftField:@"tagsView" withSwiftType:"Optional<UIView>"];
  [validationsCopy validateClass:@"VideosUI.CanonicalBannerViewCell" hasSwiftField:@"rolesSummaryView" withSwiftType:"Optional<UIView>"];
  [validationsCopy validateClass:@"VideosUI.CanonicalBannerViewCell" hasSwiftField:@"availabilityTextView" withSwiftType:"Optional<UIView>"];
  [validationsCopy validateClass:@"VideosUI.CanonicalBannerViewCell" hasSwiftField:@"availabilityImageView" withSwiftType:"Optional<UIImageView>"];
  [validationsCopy validateClass:@"VideosUI.CanonicalBannerViewCell" hasSwiftField:@"disclaimerTextView" withSwiftType:"Optional<UIView>"];
}

- (id)accessibilityElements
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(VideosUI_CanonicalBannerViewCellAccessibility *)self safeSwiftValueForKey:@"titleImageView"];
  [array axSafelyAddObject:v4];

  v5 = [(VideosUI_CanonicalBannerViewCellAccessibility *)self safeSwiftValueForKey:@"contentTitleView"];
  [array axSafelyAddObject:v5];

  v6 = [(VideosUI_CanonicalBannerViewCellAccessibility *)self safeSwiftValueForKey:@"contentSubtitleView"];
  [array axSafelyAddObject:v6];

  v7 = [(VideosUI_CanonicalBannerViewCellAccessibility *)self safeSwiftArrayForKey:@"buttonViews"];
  [array axSafelyAddObject:v7];

  v8 = [(VideosUI_CanonicalBannerViewCellAccessibility *)self safeSwiftValueForKey:@"episodeInfoTextView"];
  [array axSafelyAddObject:v8];

  v9 = [(VideosUI_CanonicalBannerViewCellAccessibility *)self safeSwiftValueForKey:@"descriptionTextView"];
  [array axSafelyAddObject:v9];

  v10 = [(VideosUI_CanonicalBannerViewCellAccessibility *)self safeSwiftValueForKey:@"promoTextView"];
  [array axSafelyAddObject:v10];

  v11 = [(VideosUI_CanonicalBannerViewCellAccessibility *)self safeSwiftValueForKey:@"tagsView"];
  [array axSafelyAddObject:v11];

  v12 = [(VideosUI_CanonicalBannerViewCellAccessibility *)self safeSwiftValueForKey:@"rolesSummaryView"];
  [array axSafelyAddObject:v12];

  v13 = [(VideosUI_CanonicalBannerViewCellAccessibility *)self safeSwiftValueForKey:@"availabilityTextView"];
  [array axSafelyAddObject:v13];

  v14 = [(VideosUI_CanonicalBannerViewCellAccessibility *)self safeSwiftValueForKey:@"availabilityImageView"];
  [array axSafelyAddObject:v14];

  v15 = [(VideosUI_CanonicalBannerViewCellAccessibility *)self safeSwiftValueForKey:@"disclaimerTextView"];
  [array axSafelyAddObject:v15];

  return array;
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