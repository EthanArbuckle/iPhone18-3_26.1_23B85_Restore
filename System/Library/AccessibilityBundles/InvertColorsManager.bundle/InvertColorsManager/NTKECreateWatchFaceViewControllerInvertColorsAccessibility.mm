@interface NTKECreateWatchFaceViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewDidLoad;
@end

@implementation NTKECreateWatchFaceViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  view = [v2 view];
  layer = [view layer];
  [AXInvertColorsAppHelper toggleInvertColors:layer];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = NTKECreateWatchFaceViewControllerInvertColorsAccessibility;
  [(NTKECreateWatchFaceViewControllerInvertColorsAccessibility *)&v3 viewDidLoad];
  [(NTKECreateWatchFaceViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end