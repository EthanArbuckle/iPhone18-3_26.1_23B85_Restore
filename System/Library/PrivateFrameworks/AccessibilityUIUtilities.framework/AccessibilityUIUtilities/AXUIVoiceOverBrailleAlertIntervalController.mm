@interface AXUIVoiceOverBrailleAlertIntervalController
- (BOOL)infiniteTimeEnabled;
- (BOOL)numericalPreferenceEnabled;
- (double)numericalPreferenceValue;
- (void)setInfiniteTimeEnabled:(BOOL)enabled;
- (void)setNumericalPreferenceEnabledFromUser:(BOOL)user;
- (void)setNumericalPreferenceValueFromUser:(double)user;
@end

@implementation AXUIVoiceOverBrailleAlertIntervalController

- (BOOL)numericalPreferenceEnabled
{
  mEMORY[0x1E6989890] = [MEMORY[0x1E6989890] sharedInstance];
  voiceOverBrailleAlertsEnabled = [mEMORY[0x1E6989890] voiceOverBrailleAlertsEnabled];

  return voiceOverBrailleAlertsEnabled;
}

- (void)setNumericalPreferenceEnabledFromUser:(BOOL)user
{
  userCopy = user;
  mEMORY[0x1E6989890] = [MEMORY[0x1E6989890] sharedInstance];
  [mEMORY[0x1E6989890] setVoiceOverBrailleAlertsEnabled:userCopy];
}

- (double)numericalPreferenceValue
{
  mEMORY[0x1E6989890] = [MEMORY[0x1E6989890] sharedInstance];
  [mEMORY[0x1E6989890] voiceOverBrailleAlertDisplayDuration];
  v4 = v3;

  return v4;
}

- (void)setNumericalPreferenceValueFromUser:(double)user
{
  mEMORY[0x1E6989890] = [MEMORY[0x1E6989890] sharedInstance];
  [mEMORY[0x1E6989890] setVoiceOverBrailleAlertDisplayDuration:user];
}

- (BOOL)infiniteTimeEnabled
{
  mEMORY[0x1E6989890] = [MEMORY[0x1E6989890] sharedInstance];
  voiceOverBrailleAlertShowUntilDismissed = [mEMORY[0x1E6989890] voiceOverBrailleAlertShowUntilDismissed];

  return voiceOverBrailleAlertShowUntilDismissed;
}

- (void)setInfiniteTimeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  mEMORY[0x1E6989890] = [MEMORY[0x1E6989890] sharedInstance];
  [mEMORY[0x1E6989890] setVoiceOverBrailleAlertShowUntilDismissed:enabledCopy];
}

@end