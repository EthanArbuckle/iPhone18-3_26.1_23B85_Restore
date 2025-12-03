@interface SASToken(AFSpeechTokenAdditions)
- (AFSpeechToken)af_speechToken;
@end

@implementation SASToken(AFSpeechTokenAdditions)

- (AFSpeechToken)af_speechToken
{
  v2 = objc_alloc_init(AFSpeechToken);
  text = [self text];
  [(AFSpeechToken *)v2 setText:text];

  phoneSequence = [self phoneSequence];
  [(AFSpeechToken *)v2 setPhoneSequence:phoneSequence];

  confidenceScore = [self confidenceScore];
  -[AFSpeechToken setConfidenceScore:](v2, "setConfidenceScore:", [confidenceScore intValue]);

  startTime = [self startTime];
  -[AFSpeechToken setStartTime:](v2, "setStartTime:", [startTime intValue] * 0.001);

  silenceStartTime = [self silenceStartTime];
  -[AFSpeechToken setSilenceStartTime:](v2, "setSilenceStartTime:", [silenceStartTime intValue] * 0.001);

  endTime = [self endTime];
  -[AFSpeechToken setEndTime:](v2, "setEndTime:", [endTime intValue] * 0.001);

  -[AFSpeechToken setRemoveSpaceBefore:](v2, "setRemoveSpaceBefore:", [self removeSpaceBefore]);
  -[AFSpeechToken setRemoveSpaceAfter:](v2, "setRemoveSpaceAfter:", [self removeSpaceAfter]);
  [(AFSpeechToken *)v2 setGraphCost:0];
  [(AFSpeechToken *)v2 setAcousticCost:0];

  return v2;
}

@end