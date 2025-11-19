@interface PMPosterViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewDidLoad;
@end

@implementation PMPosterViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(PMPosterViewControllerInvertColorsAccessibility *)self safeValueForKey:@"view"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PMPosterViewControllerInvertColorsAccessibility;
  [(PMPosterViewControllerInvertColorsAccessibility *)&v3 viewDidLoad];
  [(PMPosterViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end