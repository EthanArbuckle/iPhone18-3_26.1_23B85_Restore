@interface VideosUI_OverlayViewAccessibility
- (id)accessibilityLabel;
@end

@implementation VideosUI_OverlayViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(VideosUI_OverlayViewAccessibility *)self safeUIViewForKey:@"accessibilityTitleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end