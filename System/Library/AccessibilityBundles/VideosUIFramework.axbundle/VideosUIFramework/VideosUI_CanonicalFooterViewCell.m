@interface VideosUI_CanonicalFooterViewCell
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation VideosUI_CanonicalFooterViewCell

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VideosUIFramework.CanonicalFooterViewCell" hasSwiftField:@"sectionViews" withSwiftType:"Optional<Array<CanonicalFooterSectionView>>"];
  [v3 validateClass:@"CanonicalFooterSectionView"];
  [v3 validateClass:@"VideosUIFramework.CanonicalFooterSectionView" hasSwiftField:@"headerView" withSwiftType:"Optional<VUILabel>"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v18 = *MEMORY[0x29EDCA608];
  v16.receiver = self;
  v16.super_class = VideosUI_CanonicalFooterViewCell;
  [(VideosUI_CanonicalFooterViewCell *)&v16 _accessibilityLoadAccessibilityInformation];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(VideosUI_CanonicalFooterViewCell *)self safeSwiftArrayForKey:@"sectionViews", 0];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = *MEMORY[0x29EDC7FD0];
    v8 = *MEMORY[0x29EDC7F80];
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) safeSwiftValueForKey:@"headerView"];
        [v10 setAccessibilityTraits:v8 | v7];

        ++v9;
      }

      while (v5 != v9);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x29EDCA608];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VideosUI_CanonicalFooterViewCell;
  [(VideosUI_CanonicalFooterViewCell *)&v3 layoutSubviews];
  [(VideosUI_CanonicalFooterViewCell *)self _accessibilityLoadAccessibilityInformation];
}

@end