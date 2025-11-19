@interface PlayClockFaceViewControllerAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewDidLoad;
@end

@implementation PlayClockFaceViewControllerAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(PlayClockFaceViewControllerAccessibility *)self safeValueForKey:@"view"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PlayClockFaceViewControllerAccessibility;
  [(PlayClockFaceViewControllerAccessibility *)&v3 viewDidLoad];
  [(PlayClockFaceViewControllerAccessibility *)self _accessibilityLoadInvertColors];
}

@end