@interface MediaControlsHeaderViewInvertColorsAccessibility
- (MediaControlsHeaderViewInvertColorsAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadInvertColors;
@end

@implementation MediaControlsHeaderViewInvertColorsAccessibility

- (MediaControlsHeaderViewInvertColorsAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = MediaControlsHeaderViewInvertColorsAccessibility;
  v3 = [(MediaControlsHeaderViewInvertColorsAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(MediaControlsHeaderViewInvertColorsAccessibility *)v3 _accessibilityLoadInvertColors];

  return v3;
}

- (void)_accessibilityLoadInvertColors
{
  v2 = [(MediaControlsHeaderViewInvertColorsAccessibility *)self safeUIViewForKey:@"_artworkView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end