@interface VideosUI_EpicInlineViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation VideosUI_EpicInlineViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VideosUI.EpicInlineView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"VideosUI.VerticalStackView"];
  [v3 validateClass:@"VUILabel"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v17 = *MEMORY[0x29EDCA608];
  v15.receiver = self;
  v15.super_class = VideosUI_EpicInlineViewAccessibility;
  [(VideosUI_EpicInlineViewAccessibility *)&v15 _accessibilityLoadAccessibilityInformation];
  v3 = [(VideosUI_EpicInlineViewAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_9];
  v4 = [v3 _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_299];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    v8 = *MEMORY[0x29EDC7F80];
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * v9) setAccessibilityTraits:{v8 | objc_msgSend(*(*(&v11 + 1) + 8 * v9), "accessibilityTraits")}];
        ++v9;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x29EDCA608];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VideosUI_EpicInlineViewAccessibility;
  [(VideosUI_EpicInlineViewAccessibility *)&v3 layoutSubviews];
  [(VideosUI_EpicInlineViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end