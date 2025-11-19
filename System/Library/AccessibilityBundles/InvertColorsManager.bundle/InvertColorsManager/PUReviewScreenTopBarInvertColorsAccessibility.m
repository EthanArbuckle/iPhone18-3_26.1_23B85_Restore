@interface PUReviewScreenTopBarInvertColorsAccessibility
- (BOOL)accessibilityIgnoresInvertColors;
@end

@implementation PUReviewScreenTopBarInvertColorsAccessibility

- (BOOL)accessibilityIgnoresInvertColors
{
  v2 = [(PUReviewScreenTopBarInvertColorsAccessibility *)self backgroundColor];
  AXColorGetLuma();
  v4 = v3 < 0.5;

  return v4;
}

@end