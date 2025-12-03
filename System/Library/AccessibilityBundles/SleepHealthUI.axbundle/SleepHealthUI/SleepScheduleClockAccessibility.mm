@interface SleepScheduleClockAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axClockComponentsHeader;
- (id)_axClockTimeLabelText;
- (void)_axSpeakMessageIfNeeded:(id)needed;
- (void)gestureRecognizerDidEnd:(id)end;
- (void)gestureRecognizerDidMove:(id)move;
- (void)gestureRecognizerDidStart:(id)start;
@end

@implementation SleepScheduleClockAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SleepHealthUI.SleepScheduleClock" hasInstanceMethod:@"accessibilityBedtimeHand" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SleepHealthUI.SleepScheduleComponentsEditView" hasInstanceMethod:@"accessibilityComponentsHeader" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SleepHealthUI.SleepScheduleComponentsHeader" hasInstanceMethod:@"accessibilityBedtimeTimeLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SleepHealthUI.SleepScheduleComponentsHeader" hasInstanceMethod:@"accessibilityWakeUpTimeLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SleepHealthUI.SleepScheduleClock" hasInstanceMethod:@"gestureRecognizerDidStart:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SleepHealthUI.SleepScheduleClock" hasInstanceMethod:@"gestureRecognizerDidMove:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SleepHealthUI.SleepScheduleComponentsEditView" hasInstanceMethod:@"accessibilityClockCaption" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SleepHealthUI.SleepScheduleClockCaption" hasInstanceMethod:@"accessibilityClockCaptionMessage" withFullSignature:{"@", 0}];
}

- (void)gestureRecognizerDidStart:(id)start
{
  startCopy = start;
  v11.receiver = self;
  v11.super_class = SleepScheduleClockAccessibility;
  [(SleepScheduleClockAccessibility *)&v11 gestureRecognizerDidStart:startCopy];
  v5 = [(SleepScheduleClockAccessibility *)self safeUIViewForKey:@"accessibilityBedtimeHand"];
  objc_opt_class();
  v6 = __UIAccessibilityCastAsClass();
  [startCopy locationInView:v6];
  v8 = v7;
  v10 = v9;
  [v5 bounds];
  [v6 convertRect:v5 fromView:?];
  v12.x = v8;
  v12.y = v10;
  [(SleepScheduleClockAccessibility *)self setAccessibilityDraggingBedtimeHand:CGRectContainsPoint(v13, v12)];
}

- (void)gestureRecognizerDidMove:(id)move
{
  v7.receiver = self;
  v7.super_class = SleepScheduleClockAccessibility;
  [(SleepScheduleClockAccessibility *)&v7 gestureRecognizerDidMove:move];
  Current = CFAbsoluteTimeGetCurrent();
  [(SleepScheduleClockAccessibility *)self _axLastOutputTimeInterval];
  if (Current - v5 > 1.0)
  {
    _axClockTimeLabelText = [(SleepScheduleClockAccessibility *)self _axClockTimeLabelText];
    [(SleepScheduleClockAccessibility *)self _axSpeakMessageIfNeeded:_axClockTimeLabelText];

    [(SleepScheduleClockAccessibility *)self _axSetLastOutputTimeInterval:Current];
  }
}

- (void)gestureRecognizerDidEnd:(id)end
{
  v9.receiver = self;
  v9.super_class = SleepScheduleClockAccessibility;
  [(SleepScheduleClockAccessibility *)&v9 gestureRecognizerDidEnd:end];
  accessibilityContainer = [(SleepScheduleClockAccessibility *)self accessibilityContainer];
  v5 = [accessibilityContainer safeValueForKey:@"accessibilityClockCaption"];
  v6 = [v5 safeStringForKey:@"accessibilityClockCaptionMessage"];

  LODWORD(accessibilityContainer) = *MEMORY[0x29EDC7EA8];
  _axClockTimeLabelText = [(SleepScheduleClockAccessibility *)self _axClockTimeLabelText];
  v8 = __UIAXStringForVariables();
  UIAccessibilityPostNotification(accessibilityContainer, v8);
}

- (void)_axSpeakMessageIfNeeded:(id)needed
{
  neededCopy = needed;
  _axLastSpokenMessage = [(SleepScheduleClockAccessibility *)self _axLastSpokenMessage];
  v5 = [neededCopy isEqualToString:_axLastSpokenMessage];

  if ((v5 & 1) == 0)
  {
    UIAccessibilitySpeakOrQueueIfNeeded();
    [(SleepScheduleClockAccessibility *)self _axSetLastSpokenMessage:neededCopy];
  }
}

- (id)_axClockComponentsHeader
{
  accessibilityContainer = [(SleepScheduleClockAccessibility *)self accessibilityContainer];
  v3 = [accessibilityContainer safeValueForKey:@"accessibilityComponentsHeader"];

  return v3;
}

- (id)_axClockTimeLabelText
{
  objc_opt_class();
  _axClockComponentsHeader = [(SleepScheduleClockAccessibility *)self _axClockComponentsHeader];
  if ([(SleepScheduleClockAccessibility *)self accessibilityDraggingBedtimeHand])
  {
    v4 = @"accessibilityBedtimeTimeLabel";
  }

  else
  {
    v4 = @"accessibilityWakeUpTimeLabel";
  }

  v5 = [_axClockComponentsHeader safeValueForKey:v4];
  v6 = __UIAccessibilityCastAsClass();

  text = [v6 text];

  return text;
}

@end