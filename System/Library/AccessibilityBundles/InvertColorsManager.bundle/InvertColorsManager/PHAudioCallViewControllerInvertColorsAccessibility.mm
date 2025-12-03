@interface PHAudioCallViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)setBackgroundImage:(id)image;
@end

@implementation PHAudioCallViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(PHAudioCallViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"backgroundImageView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)setBackgroundImage:(id)image
{
  v4.receiver = self;
  v4.super_class = PHAudioCallViewControllerInvertColorsAccessibility;
  [(PHAudioCallViewControllerInvertColorsAccessibility *)&v4 setBackgroundImage:image];
  [(PHAudioCallViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end