@interface AXCallAudioRoutingDelayController
- (BOOL)numericalPreferenceEnabled;
- (double)numericalPreferenceValue;
- (void)_showSiriSettings:(id)settings;
- (void)setNumericalPreferenceEnabledFromUser:(BOOL)user;
- (void)setNumericalPreferenceValueFromUser:(double)user;
@end

@implementation AXCallAudioRoutingDelayController

- (double)numericalPreferenceValue
{
  v2 = +[AXSettings sharedInstance];
  [v2 callAudioRoutingAutoAnswerDelay];
  v4 = v3;

  return v4;
}

- (void)setNumericalPreferenceValueFromUser:(double)user
{
  v4 = +[AXSettings sharedInstance];
  [v4 setCallAudioRoutingAutoAnswerDelay:user];
}

- (BOOL)numericalPreferenceEnabled
{
  v2 = +[AXSettings sharedInstance];
  callAudioRoutingAutoAnswerEnabled = [v2 callAudioRoutingAutoAnswerEnabled];

  return callAudioRoutingAutoAnswerEnabled;
}

- (void)setNumericalPreferenceEnabledFromUser:(BOOL)user
{
  userCopy = user;
  v4 = +[AXSettings sharedInstance];
  [v4 setCallAudioRoutingAutoAnswerEnabled:userCopy];
}

- (void)_showSiriSettings:(id)settings
{
  v4 = [NSURL URLWithString:@"prefs:root=ACCESSIBILITY&path=SIRI_SETTINGS_TITLE#SIRI_SETTINGS_VOICE_ACTIVATION_ALWAYS_ALLOW"];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];
}

@end