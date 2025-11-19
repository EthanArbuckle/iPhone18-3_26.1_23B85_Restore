@interface PUReviewScreenControlBarInvertColorsAccessibility
- (BOOL)accessibilityIgnoresInvertColors;
@end

@implementation PUReviewScreenControlBarInvertColorsAccessibility

- (BOOL)accessibilityIgnoresInvertColors
{
  v2 = [(PUReviewScreenControlBarInvertColorsAccessibility *)self backgroundColor];
  AXColorGetLuma();
  v4 = v3 < 0.5;

  return v4;
}

@end