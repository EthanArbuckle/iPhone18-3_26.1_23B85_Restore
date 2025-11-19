@interface AnalogClockFaceViewControllerColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewDidLoad;
@end

@implementation AnalogClockFaceViewControllerColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(AnalogClockFaceViewControllerColorsAccessibility *)self safeValueForKey:@"view"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AnalogClockFaceViewControllerColorsAccessibility;
  [(AnalogClockFaceViewControllerColorsAccessibility *)&v3 viewDidLoad];
  [(AnalogClockFaceViewControllerColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end