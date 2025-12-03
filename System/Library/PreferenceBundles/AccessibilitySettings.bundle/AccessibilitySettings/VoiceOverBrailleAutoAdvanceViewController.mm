@interface VoiceOverBrailleAutoAdvanceViewController
- (double)numericalPreferenceValue;
- (id)activity;
- (void)setNumericalPreferenceValueFromUser:(double)user;
@end

@implementation VoiceOverBrailleAutoAdvanceViewController

- (id)activity
{
  specifier = [(VoiceOverBrailleAutoAdvanceViewController *)self specifier];
  v3 = [specifier propertyForKey:@"activity"];

  return v3;
}

- (double)numericalPreferenceValue
{
  activity = [(VoiceOverBrailleAutoAdvanceViewController *)self activity];
  brailleAutoAdvanceDuration = [activity brailleAutoAdvanceDuration];

  if (brailleAutoAdvanceDuration)
  {
    activity2 = [(VoiceOverBrailleAutoAdvanceViewController *)self activity];
    brailleAutoAdvanceDuration2 = [activity2 brailleAutoAdvanceDuration];
    [brailleAutoAdvanceDuration2 doubleValue];
    v8 = v7;
  }

  else
  {
    activity2 = +[AXSettings sharedInstance];
    [activity2 voiceOverBrailleAutoAdvanceDuration];
    v8 = v9;
  }

  return v8;
}

- (void)setNumericalPreferenceValueFromUser:(double)user
{
  activity = [(VoiceOverBrailleAutoAdvanceViewController *)self activity];

  if (activity)
  {
    v7 = [NSNumber numberWithDouble:user];
    activity2 = [(VoiceOverBrailleAutoAdvanceViewController *)self activity];
    [activity2 setBrailleAutoAdvanceDuration:v7];
  }

  else
  {
    v7 = +[AXSettings sharedInstance];
    [v7 setVoiceOverBrailleAutoAdvanceDuration:user];
  }
}

@end