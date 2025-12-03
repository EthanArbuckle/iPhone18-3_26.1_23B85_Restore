@interface TimerApertureElementControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)playPausedAction;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation TimerApertureElementControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ClockAngel.TimerApertureElementController" hasInstanceMethod:@"playPausedAction" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"ClockAngel.TimerApertureElementController" hasInstanceMethod:@"viewWillTransitionToSize:withTransitionCoordinator:" withFullSignature:{"v", "{CGSize=dd}", "@", 0}];
  [validationsCopy validateClass:@"ClockAngel.TimerApertureElementController" isKindOfClass:@"SecureViewController"];
  [validationsCopy validateClass:@"SecureViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"ClockAngel.TimerApertureElementController" hasSwiftField:@"playPauseButton" withSwiftType:"Optional<UIButton>"];
  [validationsCopy validateClass:@"ClockAngel.TimerApertureElementController" hasSwiftField:@"stopButton" withSwiftType:"Optional<UIButton>"];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  v8.receiver = self;
  v8.super_class = TimerApertureElementControllerAccessibility;
  [(TimerApertureElementControllerAccessibility *)&v8 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width];
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
  accessibilityLabel = [v3 accessibilityLabel];
  if (!accessibilityLabel)
  {
    goto LABEL_4;
  }

  v5 = accessibilityLabel;
  accessibilityLabel2 = [v3 accessibilityLabel];
  v7 = accessibilityLocalizedString(@"pause.button");
  v8 = [accessibilityLabel2 isEqualToString:v7];

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