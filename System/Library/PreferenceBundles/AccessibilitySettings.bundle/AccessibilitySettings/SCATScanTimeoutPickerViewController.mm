@interface SCATScanTimeoutPickerViewController
- (BOOL)numericalPreferenceEnabled;
- (double)numericalPreferenceValue;
- (void)setNumericalPreferenceEnabledFromUser:(BOOL)user;
- (void)setNumericalPreferenceValueFromUser:(double)user;
@end

@implementation SCATScanTimeoutPickerViewController

- (BOOL)numericalPreferenceEnabled
{
  v2 = +[AXSettings sharedInstance];
  assistiveTouchScanTimeoutEnabled = [v2 assistiveTouchScanTimeoutEnabled];

  return assistiveTouchScanTimeoutEnabled;
}

- (void)setNumericalPreferenceEnabledFromUser:(BOOL)user
{
  userCopy = user;
  v4 = +[AXSettings sharedInstance];
  [v4 setAssistiveTouchScanTimeoutEnabled:userCopy];
}

- (double)numericalPreferenceValue
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchScanTimeout];
  v4 = v3;

  return v4;
}

- (void)setNumericalPreferenceValueFromUser:(double)user
{
  v4 = +[AXSettings sharedInstance];
  [v4 setAssistiveTouchScanTimeout:user];
}

@end