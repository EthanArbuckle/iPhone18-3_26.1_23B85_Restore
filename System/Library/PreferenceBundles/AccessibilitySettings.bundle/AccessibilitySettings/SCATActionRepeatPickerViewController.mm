@interface SCATActionRepeatPickerViewController
- (BOOL)numericalPreferenceEnabled;
- (double)numericalPreferenceValue;
- (void)setNumericalPreferenceEnabledFromUser:(BOOL)a3;
- (void)setNumericalPreferenceValueFromUser:(double)a3;
@end

@implementation SCATActionRepeatPickerViewController

- (double)numericalPreferenceValue
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchActionRepeatInterval];
  v4 = v3;

  return v4;
}

- (void)setNumericalPreferenceValueFromUser:(double)a3
{
  v4 = +[AXSettings sharedInstance];
  [v4 setAssistiveTouchActionRepeatInterval:a3];
}

- (BOOL)numericalPreferenceEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchActionRepeatEnabled];

  return v3;
}

- (void)setNumericalPreferenceEnabledFromUser:(BOOL)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setAssistiveTouchActionRepeatEnabled:v3];
}

@end