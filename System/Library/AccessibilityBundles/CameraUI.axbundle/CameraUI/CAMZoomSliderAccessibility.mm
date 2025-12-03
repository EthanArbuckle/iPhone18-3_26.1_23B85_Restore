@interface CAMZoomSliderAccessibility
- (void)_hideZoomSlider:(id)slider;
@end

@implementation CAMZoomSliderAccessibility

- (void)_hideZoomSlider:(id)slider
{
  sliderCopy = slider;
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    v5.receiver = self;
    v5.super_class = CAMZoomSliderAccessibility;
    [(CAMZoomSliderAccessibility *)&v5 _hideZoomSlider:sliderCopy];
  }
}

@end