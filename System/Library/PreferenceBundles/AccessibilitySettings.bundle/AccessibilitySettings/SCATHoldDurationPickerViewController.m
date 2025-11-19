@interface SCATHoldDurationPickerViewController
- (BOOL)numericalPreferenceEnabled;
- (double)maximumValue;
- (double)numericalPreferenceValue;
- (void)setNumericalPreferenceEnabledFromUser:(BOOL)a3;
- (void)setNumericalPreferenceValueFromUser:(double)a3;
@end

@implementation SCATHoldDurationPickerViewController

- (double)maximumValue
{
  v2 = kAXSAssistiveTouchInputHoldDurationMax;
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 switchControlTapBehavior];

  if (v4 == &dword_0 + 1)
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

- (void)setNumericalPreferenceValueFromUser:(double)a3
{
  v4 = +[AXSettings sharedInstance];
  [v4 setAssistiveTouchInputHoldDuration:a3];
}

- (BOOL)numericalPreferenceEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchInputHoldEnabled];

  return v3;
}

- (void)setNumericalPreferenceEnabledFromUser:(BOOL)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setAssistiveTouchInputHoldEnabled:v3];
}

@end