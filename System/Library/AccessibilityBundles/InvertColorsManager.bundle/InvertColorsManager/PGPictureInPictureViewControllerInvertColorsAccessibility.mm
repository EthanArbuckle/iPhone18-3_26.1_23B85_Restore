@interface PGPictureInPictureViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
@end

@implementation PGPictureInPictureViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v3 = [(PGPictureInPictureViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
  v2 = [v3 superview];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end