@interface PGPictureInPictureViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
@end

@implementation PGPictureInPictureViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v3 = [(PGPictureInPictureViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
  superview = [v3 superview];
  [superview setAccessibilityIgnoresInvertColors:1];
}

@end