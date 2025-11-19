@interface SCATScanTimeoutPickerViewController
- (BOOL)numericalPreferenceEnabled;
- (double)numericalPreferenceValue;
- (void)setNumericalPreferenceEnabledFromUser:(BOOL)a3;
- (void)setNumericalPreferenceValueFromUser:(double)a3;
@end

@implementation SCATScanTimeoutPickerViewController

- (BOOL)numericalPreferenceEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchScanTimeoutEnabled];

  return v3;
}

- (void)setNumericalPreferenceEnabledFromUser:(BOOL)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setAssistiveTouchScanTimeoutEnabled:v3];
}

- (double)numericalPreferenceValue
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchScanTimeout];
  v4 = v3;

  return v4;
}

- (void)setNumericalPreferenceValueFromUser:(double)a3
{
  v4 = +[AXSettings sharedInstance];
  [v4 setAssistiveTouchScanTimeout:a3];
}

@end