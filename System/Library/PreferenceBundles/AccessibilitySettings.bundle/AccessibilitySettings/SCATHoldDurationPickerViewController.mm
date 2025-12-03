@interface SCATHoldDurationPickerViewController
- (BOOL)numericalPreferenceEnabled;
- (double)maximumValue;
- (double)numericalPreferenceValue;
- (void)setNumericalPreferenceEnabledFromUser:(BOOL)user;
- (void)setNumericalPreferenceValueFromUser:(double)user;
@end

@implementation SCATHoldDurationPickerViewController

- (double)maximumValue
{
  v2 = kAXSAssistiveTouchInputHoldDurationMax;
  v3 = +[AXSettings sharedInstance];
  switchControlTapBehavior = [v3 switchControlTapBehavior];

  if (switchControlTapBehavior == &dword_0 + 1)
  {
    v5 = +[AXSettings sharedInstance];
    [v5 switchControlAutoTapTimeout];
    v7 = v6 - AXNumericalPreferenceDefaultStepAmount;

    if (v2 >= v7)
    {
      return v7;
    }
  }

  return v2;
}

- (double)numericalPreferenceValue
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchInputHoldDuration];
  v4 = v3;

  return v4;
}

- (void)setNumericalPreferenceValueFromUser:(double)user
{
  v4 = +[AXSettings sharedInstance];
  [v4 setAssistiveTouchInputHoldDuration:user];
}

- (BOOL)numericalPreferenceEnabled
{
  v2 = +[AXSettings sharedInstance];
  assistiveTouchInputHoldEnabled = [v2 assistiveTouchInputHoldEnabled];

  return assistiveTouchInputHoldEnabled;
}

- (void)setNumericalPreferenceEnabledFromUser:(BOOL)user
{
  userCopy = user;
  v4 = +[AXSettings sharedInstance];
  [v4 setAssistiveTouchInputHoldEnabled:userCopy];
}

@end