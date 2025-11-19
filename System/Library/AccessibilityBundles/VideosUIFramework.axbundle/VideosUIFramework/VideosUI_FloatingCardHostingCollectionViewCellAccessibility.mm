@interface VideosUI_FloatingCardHostingCollectionViewCellAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation VideosUI_FloatingCardHostingCollectionViewCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3 = MEMORY[0x29ED3FF70](@"VideosUI.TimedMetadataViewController", a2);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __82__VideosUI_FloatingCardHostingCollectionViewCellAccessibility_accessibilityTraits__block_invoke;
  v9[3] = &__block_descriptor_40_e12_B24__0_8_B16lu32l8;
  v9[4] = v3;
  v4 = [(VideosUI_FloatingCardHostingCollectionViewCellAccessibility *)self _accessibilityFindViewAncestor:v9 startWithSelf:0];

  v5 = [(VideosUI_FloatingCardHostingCollectionViewCellAccessibility *)self _axNode];
  v6 = [v5 accessibilityTraits];
  if (v4)
  {
    v7 = *MEMORY[0x29EDC7F70];
  }

  else
  {
    v7 = 0;
  }

  return v7 | v6;
}

- (id)accessibilityLabel
{
  v2 = [(VideosUI_FloatingCardHostingCollectionViewCellAccessibility *)self _axNode];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end