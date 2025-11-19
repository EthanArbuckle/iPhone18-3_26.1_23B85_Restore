@interface MTAWorldClockPadViewControllerAccessibility
- (void)loadView;
- (void)updateClocksForOrientation:(int64_t)a3;
@end

@implementation MTAWorldClockPadViewControllerAccessibility

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = MTAWorldClockPadViewControllerAccessibility;
  [(MTAWorldClockPadViewControllerAccessibility *)&v6 loadView];
  v3 = [(MTAWorldClockPadViewControllerAccessibility *)self safeValueForKey:@"navigationItem"];
  v4 = [v3 safeValueForKey:@"leftBarButtonItem"];

  v5 = accessibilityLocalizedString(@"clock.edit");
  [v4 setAccessibilityHint:v5];
}

- (void)updateClocksForOrientation:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = MTAWorldClockPadViewControllerAccessibility;
  [(MTAWorldClockPadViewControllerAccessibility *)&v5 updateClocksForOrientation:a3];
  v4 = [(MTAWorldClockPadViewControllerAccessibility *)self safeValueForKey:@"mapView"];
  [v4 _accessibilityRemoveSolarTerminatorPath];
}

@end