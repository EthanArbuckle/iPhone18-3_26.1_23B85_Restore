@interface AXCallAudioRoutingDelayController
- (BOOL)numericalPreferenceEnabled;
- (double)numericalPreferenceValue;
- (void)_showSiriSettings:(id)a3;
- (void)setNumericalPreferenceEnabledFromUser:(BOOL)a3;
- (void)setNumericalPreferenceValueFromUser:(double)a3;
@end

@implementation AXCallAudioRoutingDelayController

- (double)numericalPreferenceValue
{
  v2 = +[AXSettings sharedInstance];
  [v2 callAudioRoutingAutoAnswerDelay];
  v4 = v3;

  return v4;
}

- (void)setNumericalPreferenceValueFromUser:(double)a3
{
  v4 = +[AXSettings sharedInstance];
  [v4 setCallAudioRoutingAutoAnswerDelay:a3];
}

- (BOOL)numericalPreferenceEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 callAudioRoutingAutoAnswerEnabled];

  return v3;
}

- (void)setNumericalPreferenceEnabledFromUser:(BOOL)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setCallAudioRoutingAutoAnswerEnabled:v3];
}

- (void)_showSiriSettings:(id)a3
{
  v4 = [NSURL URLWithString:@"prefs:root=ACCESSIBILITY&path=SIRI_SETTINGS_TITLE#SIRI_SETTINGS_VOICE_ACTIVATION_ALWAYS_ALLOW"];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];
}

@end