@interface BKUIPearlCoachingControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewDidLoad;
@end

@implementation BKUIPearlCoachingControllerInvertColorsAccessibility

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = BKUIPearlCoachingControllerInvertColorsAccessibility;
  [(BKUIPearlCoachingControllerInvertColorsAccessibility *)&v3 viewDidLoad];
  [(BKUIPearlCoachingControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  if (AXDeviceIsPad())
  {
    v3 = [(BKUIPearlCoachingControllerInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
    [v3 setAccessibilityIgnoresInvertColors:1];
  }
}

@end