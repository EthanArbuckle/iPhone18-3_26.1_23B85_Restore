@interface VideosUI_OverlayViewAccessibility
- (id)accessibilityLabel;
@end

@implementation VideosUI_OverlayViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(VideosUI_OverlayViewAccessibility *)self safeUIViewForKey:@"accessibilityTitleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end