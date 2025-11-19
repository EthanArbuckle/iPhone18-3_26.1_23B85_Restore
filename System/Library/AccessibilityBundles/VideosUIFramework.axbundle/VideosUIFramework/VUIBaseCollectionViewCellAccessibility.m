@interface VUIBaseCollectionViewCellAccessibility
- (id)_accessibilityStackingView;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation VUIBaseCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  MEMORY[0x29ED3FF70](@"VideosUI.FlowcaseViewCell", a2);
  if (objc_opt_isKindOfClass())
  {
    v3 = [(VUIBaseCollectionViewCellAccessibility *)self _accessibilityStackingView];
    v4 = [v3 accessibilityLabel];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = VUIBaseCollectionViewCellAccessibility;
    v4 = [(VUIBaseCollectionViewCellAccessibility *)&v6 accessibilityLabel];
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = VUIBaseCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(VUIBaseCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

- (id)_accessibilityStackingView
{
  v3 = MEMORY[0x29ED3FF70](@"VideosUI.VerticalStackView", a2);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __68__VUIBaseCollectionViewCellAccessibility__accessibilityStackingView__block_invoke;
  v6[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v6[4] = v3;
  v4 = [(VUIBaseCollectionViewCellAccessibility *)self _accessibilityFindSubviewDescendant:v6];

  return v4;
}

@end