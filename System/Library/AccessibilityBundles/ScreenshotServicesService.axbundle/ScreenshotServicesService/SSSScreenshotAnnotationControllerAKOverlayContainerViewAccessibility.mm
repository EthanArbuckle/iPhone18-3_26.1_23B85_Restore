@interface SSSScreenshotAnnotationControllerAKOverlayContainerViewAccessibility
@end

@implementation SSSScreenshotAnnotationControllerAKOverlayContainerViewAccessibility

id __95___SSSScreenshotAnnotationControllerAKOverlayContainerViewAccessibility__axMarkupAKOverlayView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityLabelForOverlayView];

  return v2;
}

@end