@interface PXDisplayAssetImageContentViewInvertColorsAccessibility
- (BOOL)accessibilityIgnoresInvertColors;
@end

@implementation PXDisplayAssetImageContentViewInvertColorsAccessibility

- (BOOL)accessibilityIgnoresInvertColors
{
  if (([(PXDisplayAssetImageContentViewInvertColorsAccessibility *)self _accessibilityAncestorMatchesBlock:&stru_44A90]& 1) != 0)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = PXDisplayAssetImageContentViewInvertColorsAccessibility;
  return [(PXDisplayAssetImageContentViewInvertColorsAccessibility *)&v4 accessibilityIgnoresInvertColors];
}

@end