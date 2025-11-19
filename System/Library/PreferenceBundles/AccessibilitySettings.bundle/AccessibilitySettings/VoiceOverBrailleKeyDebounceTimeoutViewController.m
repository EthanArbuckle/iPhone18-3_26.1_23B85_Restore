@interface VoiceOverBrailleKeyDebounceTimeoutViewController
- (double)numericalPreferenceValue;
- (void)setNumericalPreferenceValueFromUser:(double)a3;
@end

@implementation VoiceOverBrailleKeyDebounceTimeoutViewController

- (double)numericalPreferenceValue
{
  v2 = +[AXSettings sharedInstance];
  [v2 voiceOverBrailleKeyDebounceTimeout];
  v4 = v3;

  return v4;
}

- (void)setNumericalPreferenceValueFromUser:(double)a3
{
  v4 = +[AXSettings sharedInstance];
  [v4 setVoiceOverBrailleKeyDebounceTimeout:a3];
}

@end