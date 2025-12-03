@interface LibraryRecommendationBannerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)accessibilityUpdateBannerDisplay;
@end

@implementation LibraryRecommendationBannerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.LibraryRecommendationBannerViewController" hasInstanceMethod:@"accessibilityBannerView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.LibraryRecommendationBannerViewController" hasInstanceMethod:@"accessibilityHeadlineText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.LibraryRecommendationBannerViewController" hasInstanceMethod:@"accessibilityTitleText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.LibraryRecommendationBannerViewController" hasInstanceMethod:@"accessibilitySubtitleText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.LibraryRecommendationBannerViewController" hasInstanceMethod:@"accessibilityIsExplicit" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MusicApplication.LibraryRecommendationBannerViewController" hasInstanceMethod:@"accessibilityUpdateBannerDisplay" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v18.receiver = self;
  v18.super_class = LibraryRecommendationBannerViewControllerAccessibility;
  [(LibraryRecommendationBannerViewControllerAccessibility *)&v18 _accessibilityLoadAccessibilityInformation];
  v3 = [(LibraryRecommendationBannerViewControllerAccessibility *)selfCopy safeValueForKey:@"accessibilityBannerView"];
  [v3 _setAccessibilityIdentifierBlock:&__block_literal_global_5];
  v4 = [(LibraryRecommendationBannerViewControllerAccessibility *)selfCopy safeStringForKey:@"accessibilityHeadlineText"];
  v5 = [(LibraryRecommendationBannerViewControllerAccessibility *)selfCopy safeStringForKey:@"accessibilityTitleText"];
  v6 = [(LibraryRecommendationBannerViewControllerAccessibility *)selfCopy safeStringForKey:@"accessibilitySubtitleText"];
  LOBYTE(selfCopy) = [(LibraryRecommendationBannerViewControllerAccessibility *)selfCopy safeBoolForKey:@"accessibilityIsExplicit"];
  v7 = accessibilityMusicLocalizedString(@"apple.music");
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __100__LibraryRecommendationBannerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v12[3] = &unk_29F2DD928;
  v13 = v7;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = selfCopy;
  v8 = v6;
  v9 = v5;
  v10 = v4;
  v11 = v7;
  [v3 _setAccessibilityLabelBlock:v12];
  [v3 _setIsAccessibilityElementBlock:&__block_literal_global_323];
  [v3 _setAccessibilityTraitsBlock:&__block_literal_global_326];
}

id __100__LibraryRecommendationBannerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (*(a1 + 64))
  {
    v10 = accessibilityMusicLocalizedString(@"explicit");
    v5 = __UIAXStringForVariables();
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v7 = *(a1 + 40);
    v5 = __UIAXStringForVariables();
  }

  return v5;
}

- (void)accessibilityUpdateBannerDisplay
{
  v3.receiver = self;
  v3.super_class = LibraryRecommendationBannerViewControllerAccessibility;
  [(LibraryRecommendationBannerViewControllerAccessibility *)&v3 accessibilityUpdateBannerDisplay];
  [(LibraryRecommendationBannerViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end