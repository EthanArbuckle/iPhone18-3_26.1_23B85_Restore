@interface TimerApertureElementControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)playPausedAction;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation TimerApertureElementControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ClockAngel.TimerApertureElementController" hasInstanceMethod:@"playPausedAction" withFullSignature:{"v", 0}];
  [v3 validateClass:@"ClockAngel.TimerApertureElementController" hasInstanceMethod:@"viewWillTransitionToSize:withTransitionCoordinator:" withFullSignature:{"v", "{CGSize=dd}", "@", 0}];
  [v3 validateClass:@"ClockAngel.TimerApertureElementController" isKindOfClass:@"SecureViewController"];
  [v3 validateClass:@"SecureViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"ClockAngel.TimerApertureElementController" hasSwiftField:@"playPauseButton" withSwiftType:"Optional<UIButton>"];
  [v3 validateClass:@"ClockAngel.TimerApertureElementController" hasSwiftField:@"stopButton" withSwiftType:"Optional<UIButton>"];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  v8.receiver = self;
  v8.super_class = TimerApertureElementControllerAccessibility;
  [(TimerApertureElementControllerAccessibility *)&v8 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width];
  v6 = [(TimerApertureElementControllerAccessibility *)self safeUIViewForKey:@"view"];
  [v6 frame];
  if (v7 < height)
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

void __98__TimerApertureElementControllerAccessibility_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  argument = [*(a1 + 32) safeSwiftValueForKey:@"playPauseButton"];
  v2 = accessibilityLocalizedString(@"pause.button");
  [argument setAccessibilityLabel:v2];

  v3 = [*(a1 + 32) safeSwiftValueForKey:@"stopButton"];
  v4 = accessibilityLocalizedString(@"stop.button");
  [v3 setAccessibilityLabel:v4];

  if (argument)
  {
    UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, argument);
  }
}

- (void)playPausedAction
{
  v3 = [(TimerApertureElementControllerAccessibility *)self safeSwiftValueForKey:@"playPauseButton"];
  v4 = [v3 accessibilityLabel];
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  v6 = [v3 accessibilityLabel];
  v7 = accessibilityLocalizedString(@"pause.button");
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = @"start.button";
  }

  else
  {
LABEL_4:
    v9 = @"pause.button";
  }

  v10 = accessibilityLocalizedString(v9);
  [v3 setAccessibilityLabel:v10];

  v11.receiver = self;
  v11.super_class = TimerApertureElementControllerAccessibility;
  [(TimerApertureElementControllerAccessibility *)&v11 playPausedAction];
}

@end