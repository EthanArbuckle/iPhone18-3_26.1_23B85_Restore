@interface AXUIVoiceOverBrailleAlertIntervalController
- (BOOL)infiniteTimeEnabled;
- (BOOL)numericalPreferenceEnabled;
- (double)numericalPreferenceValue;
- (void)setInfiniteTimeEnabled:(BOOL)a3;
- (void)setNumericalPreferenceEnabledFromUser:(BOOL)a3;
- (void)setNumericalPreferenceValueFromUser:(double)a3;
@end

@implementation AXUIVoiceOverBrailleAlertIntervalController

- (BOOL)numericalPreferenceEnabled
{
  v2 = [MEMORY[0x1E6989890] sharedInstance];
  v3 = [v2 voiceOverBrailleAlertsEnabled];

  return v3;
}

- (void)setNumericalPreferenceEnabledFromUser:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E6989890] sharedInstance];
  [v4 setVoiceOverBrailleAlertsEnabled:v3];
}

- (double)numericalPreferenceValue
{
  v2 = [MEMORY[0x1E6989890] sharedInstance];
  [v2 voiceOverBrailleAlertDisplayDuration];
  v4 = v3;

  return v4;
}

- (void)setNumericalPreferenceValueFromUser:(double)a3
{
  v4 = [MEMORY[0x1E6989890] sharedInstance];
  [v4 setVoiceOverBrailleAlertDisplayDuration:a3];
}

- (BOOL)infiniteTimeEnabled
{
  v2 = [MEMORY[0x1E6989890] sharedInstance];
  v3 = [v2 voiceOverBrailleAlertShowUntilDismissed];

  return v3;
}

- (void)setInfiniteTimeEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E6989890] sharedInstance];
  [v4 setVoiceOverBrailleAlertShowUntilDismissed:v3];
}

@end