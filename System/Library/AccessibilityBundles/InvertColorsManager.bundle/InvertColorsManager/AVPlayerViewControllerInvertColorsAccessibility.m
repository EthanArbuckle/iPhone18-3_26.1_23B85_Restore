@interface AVPlayerViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewDidLoad;
@end

@implementation AVPlayerViewControllerInvertColorsAccessibility

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AVPlayerViewControllerInvertColorsAccessibility;
  [(AVPlayerViewControllerInvertColorsAccessibility *)&v3 viewDidLoad];
  [(AVPlayerViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  v2 = [(AVPlayerViewControllerInvertColorsAccessibility *)self safeValueForKey:@"view"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end