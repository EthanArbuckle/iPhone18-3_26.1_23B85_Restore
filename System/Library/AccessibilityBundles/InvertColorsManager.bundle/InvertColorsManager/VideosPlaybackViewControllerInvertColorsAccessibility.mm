@interface VideosPlaybackViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
@end

@implementation VideosPlaybackViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(VideosPlaybackViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end