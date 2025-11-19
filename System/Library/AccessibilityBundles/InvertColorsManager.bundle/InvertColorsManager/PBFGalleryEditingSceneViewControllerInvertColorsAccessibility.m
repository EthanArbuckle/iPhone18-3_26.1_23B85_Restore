@interface PBFGalleryEditingSceneViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
@end

@implementation PBFGalleryEditingSceneViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(PBFGalleryEditingSceneViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end