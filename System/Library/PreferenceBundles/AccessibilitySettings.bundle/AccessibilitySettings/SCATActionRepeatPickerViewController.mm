@interface SCATActionRepeatPickerViewController
- (BOOL)numericalPreferenceEnabled;
- (double)numericalPreferenceValue;
- (void)setNumericalPreferenceEnabledFromUser:(BOOL)user;
- (void)setNumericalPreferenceValueFromUser:(double)user;
@end

@implementation SCATActionRepeatPickerViewController

- (double)numericalPreferenceValue
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchActionRepeatInterval];
  v4 = v3;

  return v4;
}

- (void)setNumericalPreferenceValueFromUser:(double)user
{
  v4 = +[AXSettings sharedInstance];
  [v4 setAssistiveTouchActionRepeatInterval:user];
}

- (BOOL)numericalPreferenceEnabled
{
  v2 = +[AXSettings sharedInstance];
  assistiveTouchActionRepeatEnabled = [v2 assistiveTouchActionRepeatEnabled];

  return assistiveTouchActionRepeatEnabled;
}

- (void)setNumericalPreferenceEnabledFromUser:(BOOL)user
{
  userCopy = user;
  v4 = +[AXSettings sharedInstance];
  [v4 setAssistiveTouchActionRepeatEnabled:userCopy];
}

@end