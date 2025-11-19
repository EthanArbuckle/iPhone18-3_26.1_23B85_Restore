@interface SleepScheduleClockAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axClockComponentsHeader;
- (id)_axClockTimeLabelText;
- (void)_axSpeakMessageIfNeeded:(id)a3;
- (void)gestureRecognizerDidEnd:(id)a3;
- (void)gestureRecognizerDidMove:(id)a3;
- (void)gestureRecognizerDidStart:(id)a3;
@end

@implementation SleepScheduleClockAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SleepHealthUI.SleepScheduleClock" hasInstanceMethod:@"accessibilityBedtimeHand" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SleepHealthUI.SleepScheduleComponentsEditView" hasInstanceMethod:@"accessibilityComponentsHeader" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SleepHealthUI.SleepScheduleComponentsHeader" hasInstanceMethod:@"accessibilityBedtimeTimeLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SleepHealthUI.SleepScheduleComponentsHeader" hasInstanceMethod:@"accessibilityWakeUpTimeLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SleepHealthUI.SleepScheduleClock" hasInstanceMethod:@"gestureRecognizerDidStart:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SleepHealthUI.SleepScheduleClock" hasInstanceMethod:@"gestureRecognizerDidMove:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SleepHealthUI.SleepScheduleComponentsEditView" hasInstanceMethod:@"accessibilityClockCaption" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SleepHealthUI.SleepScheduleClockCaption" hasInstanceMethod:@"accessibilityClockCaptionMessage" withFullSignature:{"@", 0}];
}

- (void)gestureRecognizerDidStart:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SleepScheduleClockAccessibility;
  [(SleepScheduleClockAccessibility *)&v11 gestureRecognizerDidStart:v4];
  v5 = [(SleepScheduleClockAccessibility *)self safeUIViewForKey:@"accessibilityBedtimeHand"];
  objc_opt_class();
  v6 = __UIAccessibilityCastAsClass();
  [v4 locationInView:v6];
  v8 = v7;
  v10 = v9;
  [v5 bounds];
  [v6 convertRect:v5 fromView:?];
  v12.x = v8;
  v12.y = v10;
  [(SleepScheduleClockAccessibility *)self setAccessibilityDraggingBedtimeHand:CGRectContainsPoint(v13, v12)];
}

- (void)gestureRecognizerDidMove:(id)a3
{
  v7.receiver = self;
  v7.super_class = SleepScheduleClockAccessibility;
  [(SleepScheduleClockAccessibility *)&v7 gestureRecognizerDidMove:a3];
  Current = CFAbsoluteTimeGetCurrent();
  [(SleepScheduleClockAccessibility *)self _axLastOutputTimeInterval];
  if (Current - v5 > 1.0)
  {
    v6 = [(SleepScheduleClockAccessibility *)self _axClockTimeLabelText];
    [(SleepScheduleClockAccessibility *)self _axSpeakMessageIfNeeded:v6];

    [(SleepScheduleClockAccessibility *)self _axSetLastOutputTimeInterval:Current];
  }
}

- (void)gestureRecognizerDidEnd:(id)a3
{
  v9.receiver = self;
  v9.super_class = SleepScheduleClockAccessibility;
  [(SleepScheduleClockAccessibility *)&v9 gestureRecognizerDidEnd:a3];
  v4 = [(SleepScheduleClockAccessibility *)self accessibilityContainer];
  v5 = [v4 safeValueForKey:@"accessibilityClockCaption"];
  v6 = [v5 safeStringForKey:@"accessibilityClockCaptionMessage"];

  LODWORD(v4) = *MEMORY[0x29EDC7EA8];
  v7 = [(SleepScheduleClockAccessibility *)self _axClockTimeLabelText];
  v8 = __UIAXStringForVariables();
  UIAccessibilityPostNotification(v4, v8);
}

- (void)_axSpeakMessageIfNeeded:(id)a3
{
  v6 = a3;
  v4 = [(SleepScheduleClockAccessibility *)self _axLastSpokenMessage];
  v5 = [v6 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    UIAccessibilitySpeakOrQueueIfNeeded();
    [(SleepScheduleClockAccessibility *)self _axSetLastSpokenMessage:v6];
  }
}

- (id)_axClockComponentsHeader
{
  v2 = [(SleepScheduleClockAccessibility *)self accessibilityContainer];
  v3 = [v2 safeValueForKey:@"accessibilityComponentsHeader"];

  return v3;
}

- (id)_axClockTimeLabelText
{
  objc_opt_class();
  v3 = [(SleepScheduleClockAccessibility *)self _axClockComponentsHeader];
  if ([(SleepScheduleClockAccessibility *)self accessibilityDraggingBedtimeHand])
  {
    v4 = @"accessibilityBedtimeTimeLabel";
  }

  else
  {
    v4 = @"accessibilityWakeUpTimeLabel";
  }

  v5 = [v3 safeValueForKey:v4];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 text];

  return v7;
}

@end