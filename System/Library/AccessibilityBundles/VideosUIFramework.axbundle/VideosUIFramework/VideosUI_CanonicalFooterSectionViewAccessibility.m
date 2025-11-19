@interface VideosUI_CanonicalFooterSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityHeaderElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation VideosUI_CanonicalFooterSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VUIImageView"];
  [v3 validateClass:@"VUIImageView" hasProperty:@"image" withType:"@"];
  [v3 validateClass:@"VideosUI.CanonicalFooterSectionView" hasSwiftField:@"headerView" withSwiftType:"Optional<UIView>"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v22 = *MEMORY[0x29EDCA608];
  v20.receiver = self;
  v20.super_class = VideosUI_CanonicalFooterSectionViewAccessibility;
  [(VideosUI_CanonicalFooterSectionViewAccessibility *)&v20 _accessibilityLoadAccessibilityInformation];
  v3 = [(VideosUI_CanonicalFooterSectionViewAccessibility *)self _axHeaderView];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  v5 = [v4 subviews];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        MEMORY[0x29ED3FF70](@"VUIImageView");
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 safeValueForKey:@"image"];
          v12 = [v11 accessibilityIdentifier];

          v13 = [MEMORY[0x29EDBDDF0] sharedInstance];
          v14 = [v13 accessibilityLabelForID:v12];
          [v10 setAccessibilityLabel:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x29EDCA608];
}

- (id)accessibilityHeaderElements
{
  v2 = MEMORY[0x29EDB8D80];
  v3 = [(VideosUI_CanonicalFooterSectionViewAccessibility *)self _axHeaderView];
  v4 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VideosUI_CanonicalFooterSectionViewAccessibility;
  [(VideosUI_CanonicalFooterSectionViewAccessibility *)&v3 layoutSubviews];
  [(VideosUI_CanonicalFooterSectionViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end