@interface SeymourUI_MarketingHeaderBannerCellAccessibility
- (id)accessibilityLabel;
- (void)accessibilityConfigureForPlayback:(BOOL)a3;
@end

@implementation SeymourUI_MarketingHeaderBannerCellAccessibility

- (id)accessibilityLabel
{
  v3 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, MEMORY[0x29ED34A70](@"SeymourUI.PlayButton", a2)}];
  v4 = [(SeymourUI_MarketingHeaderBannerCellAccessibility *)self _accessibilityTextForSubhierarchyIncludingHeaders:0 focusableItems:1 exclusions:0 classExclusions:v3];

  return v4;
}

- (void)accessibilityConfigureForPlayback:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = SeymourUI_MarketingHeaderBannerCellAccessibility;
  v5 = [(SeymourUI_MarketingHeaderBannerCellAccessibility *)&v7 accessibilityTraits];
  v6 = MEMORY[0x29EDC7FC8];
  if (!v3)
  {
    v6 = MEMORY[0x29EDC7F98];
  }

  [(SeymourUI_MarketingHeaderBannerCellAccessibility *)self setAccessibilityTraits:*v6 | *MEMORY[0x29EDC7F70] | v5];
}

@end