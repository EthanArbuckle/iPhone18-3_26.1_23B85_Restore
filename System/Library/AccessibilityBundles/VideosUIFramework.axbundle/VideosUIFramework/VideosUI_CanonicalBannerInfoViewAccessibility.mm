@interface VideosUI_CanonicalBannerInfoViewAccessibility
+ (id)_axHeaderElementSwiftKeys;
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation VideosUI_CanonicalBannerInfoViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VideosUI.CanonicalBannerInfoView" hasSwiftField:@"titleImageView" withSwiftType:"Optional<VUIImageView>"];
  [v3 validateClass:@"VideosUI.CanonicalBannerInfoView" hasSwiftField:@"badgeView" withSwiftType:"Optional<UIView>"];
  [v3 validateClass:@"VideosUI.CanonicalBannerInfoView" hasSwiftField:@"contentTitleView" withSwiftType:"Optional<VUILabel>"];
  [v3 validateClass:@"VideosUI.CanonicalBannerInfoView" hasSwiftField:@"contentSubtitleView" withSwiftType:"Optional<UIView & VUILabelBaselineProtocol>"];
  [v3 validateClass:@"VideosUI.CanonicalBannerInfoView" hasSwiftField:@"episodeInfoTextView" withSwiftType:"Optional<VUILabel>"];
  [v3 validateClass:@"VideosUI.CanonicalBannerInfoView" hasSwiftField:@"promoTextView" withSwiftType:"Optional<VUILabel>"];
  [v3 validateClass:@"VideosUI.CanonicalBannerInfoView" hasSwiftField:@"askToBuyPromptView" withSwiftType:"Optional<VUILabel>"];
  [v3 validateClass:@"VideosUI.CanonicalBannerInfoView" hasSwiftField:@"descriptionTextView" withSwiftType:"Optional<UIView>"];
  [v3 validateClass:@"VideosUI.CanonicalBannerInfoView" hasSwiftField:@"genresAndProviderTagsView" withSwiftType:"Optional<VUIMediaTagsView>"];
  [v3 validateClass:@"VideosUI.CanonicalBannerInfoView" hasSwiftField:@"metadataAndBadgesTagsView" withSwiftType:"Optional<VUIMediaTagsView>"];
  [v3 validateClass:@"VideosUI.CanonicalBannerInfoView" hasSwiftField:@"disclaimerTextView" withSwiftType:"Optional<UIView>"];
  [v3 validateClass:@"VideosUI.CanonicalBannerInfoView" hasSwiftField:@"availabilityTextView" withSwiftType:"Optional<UIView>"];
  [v3 validateClass:@"VideosUI.CanonicalBannerInfoView" hasSwiftField:@"buttonViews" withSwiftType:"Optional<Array<UIView>>"];
}

+ (id)_axHeaderElementSwiftKeys
{
  if (_axHeaderElementSwiftKeys_onceToken_keys != -1)
  {
    +[VideosUI_CanonicalBannerInfoViewAccessibility _axHeaderElementSwiftKeys];
  }

  v3 = _axHeaderElementSwiftKeys_keys;

  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v36 = *MEMORY[0x29EDCA608];
  v33.receiver = self;
  v33.super_class = VideosUI_CanonicalBannerInfoViewAccessibility;
  [(VideosUI_CanonicalBannerInfoViewAccessibility *)&v33 _accessibilityLoadAccessibilityInformation];
  v18 = [objc_opt_class() _axHeaderElementSwiftKeys];
  objc_initWeak(&location, self);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(VideosUI_CanonicalBannerInfoViewAccessibility *)self safeSwiftArrayForKey:@"buttonViews"];
  v17 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v17)
  {
    v16 = *v29;
    v3 = *MEMORY[0x29EDC7F80];
LABEL_3:
    v4 = 0;
    while (1)
    {
      if (*v29 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v28 + 1) + 8 * v4);
      v27 = 0;
      objc_opt_class();
      v6 = __UIAccessibilityCastAsClass();
      if (v27 == 1)
      {
LABEL_23:
        abort();
      }

      if (!v6)
      {
        break;
      }

      v19 = v6;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v7 = v18;
      v8 = [v7 countByEnumeratingWithState:&v23 objects:v34 count:16];
      if (v8)
      {
        v9 = *v24;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v24 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v23 + 1) + 8 * i);
            v27 = 0;
            objc_opt_class();
            v12 = [(VideosUI_CanonicalBannerInfoViewAccessibility *)self safeSwiftValueForKey:v11];
            v13 = __UIAccessibilityCastAsClass();

            if (v27 == 1)
            {
              goto LABEL_23;
            }

            if (v13 && ([v13 isAccessibilityElement] & 1) != 0)
            {
              [v13 setAccessibilityTraits:{v3 | objc_msgSend(v13, "accessibilityTraits")}];
            }

            else
            {

              v13 = 0;
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v23 objects:v34 count:16];
        }

        while (v8);
      }

      v20[0] = MEMORY[0x29EDCA5F8];
      v20[1] = 3221225472;
      v20[2] = __91__VideosUI_CanonicalBannerInfoViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
      v20[3] = &unk_29F31C270;
      objc_copyWeak(&v22, &location);
      v21 = v7;
      [v19 _setAccessibilityHeaderElementsBlock:v20];

      objc_destroyWeak(&v22);
      if (++v4 == v17)
      {
        v17 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
        if (v17)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_destroyWeak(&location);
  v14 = *MEMORY[0x29EDCA608];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VideosUI_CanonicalBannerInfoViewAccessibility;
  [(VideosUI_CanonicalBannerInfoViewAccessibility *)&v3 layoutSubviews];
  [(VideosUI_CanonicalBannerInfoViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end