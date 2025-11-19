@interface VoiceOverDoubleTapIntervalController
- (double)numericalPreferenceValue;
- (void)setNumericalPreferenceValueFromUser:(double)a3;
@end

@implementation VoiceOverDoubleTapIntervalController

- (double)numericalPreferenceValue
{
  v2 = +[AXSettings sharedInstance];
  [v2 voiceOverDoubleTapInterval];
  v4 = v3;

  return v4;
}

- (void)setNumericalPreferenceValueFromUser:(double)a3
{
  v4 = +[AXSettings sharedInstance];
  [v4 setVoiceOverDoubleTapInterval:a3];
}

@end