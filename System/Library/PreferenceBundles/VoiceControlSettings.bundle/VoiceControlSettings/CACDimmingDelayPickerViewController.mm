@interface CACDimmingDelayPickerViewController
- (BOOL)numericalPreferenceEnabled;
- (double)numericalPreferenceValue;
- (void)setNumericalPreferenceValueFromUser:(double)user;
@end

@implementation CACDimmingDelayPickerViewController

- (double)numericalPreferenceValue
{
  v2 = +[CACPreferences sharedPreferences];
  [v2 overlayFadeDelay];
  v4 = v3;

  return v4;
}

- (void)setNumericalPreferenceValueFromUser:(double)user
{
  v4 = +[CACPreferences sharedPreferences];
  [v4 setOverlayFadeDelay:user];
}

- (BOOL)numericalPreferenceEnabled
{
  v2 = +[CACPreferences sharedPreferences];
  overlayFadingEnabled = [v2 overlayFadingEnabled];

  return overlayFadingEnabled;
}

@end