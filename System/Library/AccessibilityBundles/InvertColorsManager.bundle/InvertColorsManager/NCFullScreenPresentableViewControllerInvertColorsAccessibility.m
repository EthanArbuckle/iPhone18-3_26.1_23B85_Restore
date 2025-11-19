@interface NCFullScreenPresentableViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewDidLoad;
@end

@implementation NCFullScreenPresentableViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(NCFullScreenPresentableViewControllerInvertColorsAccessibility *)self safeValueForKey:@"view"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = NCFullScreenPresentableViewControllerInvertColorsAccessibility;
  [(NCFullScreenPresentableViewControllerInvertColorsAccessibility *)&v3 viewDidLoad];
  [(NCFullScreenPresentableViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end