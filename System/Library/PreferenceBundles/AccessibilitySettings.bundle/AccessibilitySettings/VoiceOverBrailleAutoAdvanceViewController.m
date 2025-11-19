@interface VoiceOverBrailleAutoAdvanceViewController
- (double)numericalPreferenceValue;
- (id)activity;
- (void)setNumericalPreferenceValueFromUser:(double)a3;
@end

@implementation VoiceOverBrailleAutoAdvanceViewController

- (id)activity
{
  v2 = [(VoiceOverBrailleAutoAdvanceViewController *)self specifier];
  v3 = [v2 propertyForKey:@"activity"];

  return v3;
}

- (double)numericalPreferenceValue
{
  v3 = [(VoiceOverBrailleAutoAdvanceViewController *)self activity];
  v4 = [v3 brailleAutoAdvanceDuration];

  if (v4)
  {
    v5 = [(VoiceOverBrailleAutoAdvanceViewController *)self activity];
    v6 = [v5 brailleAutoAdvanceDuration];
    [v6 doubleValue];
    v8 = v7;
  }

  else
  {
    v5 = +[AXSettings sharedInstance];
    [v5 voiceOverBrailleAutoAdvanceDuration];
    v8 = v9;
  }

  return v8;
}

- (void)setNumericalPreferenceValueFromUser:(double)a3
{
  v5 = [(VoiceOverBrailleAutoAdvanceViewController *)self activity];

  if (v5)
  {
    v7 = [NSNumber numberWithDouble:a3];
    v6 = [(VoiceOverBrailleAutoAdvanceViewController *)self activity];
    [v6 setBrailleAutoAdvanceDuration:v7];
  }

  else
  {
    v7 = +[AXSettings sharedInstance];
    [v7 setVoiceOverBrailleAutoAdvanceDuration:a3];
  }
}

@end