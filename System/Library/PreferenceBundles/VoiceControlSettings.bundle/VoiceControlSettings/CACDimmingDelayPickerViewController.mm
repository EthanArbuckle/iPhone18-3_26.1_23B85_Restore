@interface CACDimmingDelayPickerViewController
- (BOOL)numericalPreferenceEnabled;
- (double)numericalPreferenceValue;
- (void)setNumericalPreferenceValueFromUser:(double)a3;
@end

@implementation CACDimmingDelayPickerViewController

- (double)numericalPreferenceValue
{
  v2 = +[CACPreferences sharedPreferences];
  [v2 overlayFadeDelay];
  v4 = v3;

  return v4;
}

- (void)setNumericalPreferenceValueFromUser:(double)a3
{
  v4 = +[CACPreferences sharedPreferences];
  [v4 setOverlayFadeDelay:a3];
}

- (BOOL)numericalPreferenceEnabled
{
  v2 = +[CACPreferences sharedPreferences];
  v3 = [v2 overlayFadingEnabled];

  return v3;
}

@end