@interface PHAudioCallViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)setBackgroundImage:(id)a3;
@end

@implementation PHAudioCallViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(PHAudioCallViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"backgroundImageView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)setBackgroundImage:(id)a3
{
  v4.receiver = self;
  v4.super_class = PHAudioCallViewControllerInvertColorsAccessibility;
  [(PHAudioCallViewControllerInvertColorsAccessibility *)&v4 setBackgroundImage:a3];
  [(PHAudioCallViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end