@interface AXVOKeyboardTimeoutController
- (double)numericalPreferenceValue;
- (void)setNumericalPreferenceValueFromUser:(double)user;
@end

@implementation AXVOKeyboardTimeoutController

- (double)numericalPreferenceValue
{
  v2 = +[AXSettings sharedInstance];
  [v2 voiceOverContinuousPathKeyboardStartTimeout];
  v4 = v3;

  return v4;
}

- (void)setNumericalPreferenceValueFromUser:(double)user
{
  v4 = +[AXSettings sharedInstance];
  [v4 setVoiceOverContinuousPathKeyboardStartTimeout:user];
}

@end