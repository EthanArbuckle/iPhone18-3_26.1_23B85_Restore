@interface AXVOKeyboardTimeoutController
- (double)numericalPreferenceValue;
- (void)setNumericalPreferenceValueFromUser:(double)a3;
@end

@implementation AXVOKeyboardTimeoutController

- (double)numericalPreferenceValue
{
  v2 = +[AXSettings sharedInstance];
  [v2 voiceOverContinuousPathKeyboardStartTimeout];
  v4 = v3;

  return v4;
}

- (void)setNumericalPreferenceValueFromUser:(double)a3
{
  v4 = +[AXSettings sharedInstance];
  [v4 setVoiceOverContinuousPathKeyboardStartTimeout:a3];
}

@end