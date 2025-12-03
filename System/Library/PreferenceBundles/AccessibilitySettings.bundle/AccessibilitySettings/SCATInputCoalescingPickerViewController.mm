@interface SCATInputCoalescingPickerViewController
- (BOOL)numericalPreferenceEnabled;
- (double)maximumValue;
- (double)numericalPreferenceValue;
- (void)setNumericalPreferenceEnabledFromUser:(BOOL)user;
- (void)setNumericalPreferenceValueFromUser:(double)user;
@end

@implementation SCATInputCoalescingPickerViewController

- (double)maximumValue
{
  v2 = kAXSAssistiveTouchInputCoalescingDurationMax;
  v3 = +[AXSettings sharedInstance];
  [v3 switchControlAutoTapTimeout];
  v5 = v4 - AXNumericalPreferenceDefaultStepAmount;

  if (v2 >= v5)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

- (double)numericalPreferenceValue
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchInputCoalescingDuration];
  v4 = v3;

  return v4;
}

- (void)setNumericalPreferenceValueFromUser:(double)user
{
  v4 = +[AXSettings sharedInstance];
  [v4 setAssistiveTouchInputCoalescingDuration:user];
}

- (BOOL)numericalPreferenceEnabled
{
  v2 = +[AXSettings sharedInstance];
  assistiveTouchInputCoalescingEnabled = [v2 assistiveTouchInputCoalescingEnabled];

  return assistiveTouchInputCoalescingEnabled;
}

- (void)setNumericalPreferenceEnabledFromUser:(BOOL)user
{
  userCopy = user;
  v4 = +[AXSettings sharedInstance];
  [v4 setAssistiveTouchInputCoalescingEnabled:userCopy];
}

@end