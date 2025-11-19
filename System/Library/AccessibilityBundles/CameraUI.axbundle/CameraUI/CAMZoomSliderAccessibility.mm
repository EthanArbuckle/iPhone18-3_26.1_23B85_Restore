@interface CAMZoomSliderAccessibility
- (void)_hideZoomSlider:(id)a3;
@end

@implementation CAMZoomSliderAccessibility

- (void)_hideZoomSlider:(id)a3
{
  v4 = a3;
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    v5.receiver = self;
    v5.super_class = CAMZoomSliderAccessibility;
    [(CAMZoomSliderAccessibility *)&v5 _hideZoomSlider:v4];
  }
}

@end