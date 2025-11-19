@interface PBUIPosterWallpaperRemoteViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
@end

@implementation PBUIPosterWallpaperRemoteViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(PBUIPosterWallpaperRemoteViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end