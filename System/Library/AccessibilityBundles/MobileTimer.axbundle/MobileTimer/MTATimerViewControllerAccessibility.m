@interface MTATimerViewControllerAccessibility
- (MTATimerViewControllerAccessibility)init;
- (void)startUpdatingTimerUI;
- (void)stopUpdatingTimerUI;
@end

@implementation MTATimerViewControllerAccessibility

- (MTATimerViewControllerAccessibility)init
{
  v8.receiver = self;
  v8.super_class = MTATimerViewControllerAccessibility;
  v2 = [(MTATimerViewControllerAccessibility *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(MTATimerViewControllerAccessibility *)v2 safeValueForKey:@"navigationItem"];
    v5 = [v4 safeValueForKey:@"leftBarButtonItem"];

    v6 = accessibilityLocalizedString(@"timer.alert.tone.edit");
    [v5 setAccessibilityHint:v6];
  }

  return v3;
}

- (void)startUpdatingTimerUI
{
  v2.receiver = self;
  v2.super_class = MTATimerViewControllerAccessibility;
  [(MTATimerViewControllerAccessibility *)&v2 startUpdatingTimerUI];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)stopUpdatingTimerUI
{
  v2.receiver = self;
  v2.super_class = MTATimerViewControllerAccessibility;
  [(MTATimerViewControllerAccessibility *)&v2 stopUpdatingTimerUI];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end