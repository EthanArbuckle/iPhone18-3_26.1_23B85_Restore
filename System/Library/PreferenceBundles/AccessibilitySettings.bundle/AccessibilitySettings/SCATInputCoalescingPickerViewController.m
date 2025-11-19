@interface SCATInputCoalescingPickerViewController
- (BOOL)numericalPreferenceEnabled;
- (double)maximumValue;
- (double)numericalPreferenceValue;
- (void)setNumericalPreferenceEnabledFromUser:(BOOL)a3;
- (void)setNumericalPreferenceValueFromUser:(double)a3;
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

- (void)setNumericalPreferenceValueFromUser:(double)a3
{
  v4 = +[AXSettings sharedInstance];
  [v4 setAssistiveTouchInputCoalescingDuration:a3];
}

- (BOOL)numericalPreferenceEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchInputCoalescingEnabled];

  return v3;
}

- (void)setNumericalPreferenceEnabledFromUser:(BOOL)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setAssistiveTouchInputCoalescingEnabled:v3];
}

@end