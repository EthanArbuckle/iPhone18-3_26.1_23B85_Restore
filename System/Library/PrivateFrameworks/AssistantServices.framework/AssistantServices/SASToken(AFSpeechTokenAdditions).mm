@interface SASToken(AFSpeechTokenAdditions)
- (AFSpeechToken)af_speechToken;
@end

@implementation SASToken(AFSpeechTokenAdditions)

- (AFSpeechToken)af_speechToken
{
  v2 = objc_alloc_init(AFSpeechToken);
  v3 = [a1 text];
  [(AFSpeechToken *)v2 setText:v3];

  v4 = [a1 phoneSequence];
  [(AFSpeechToken *)v2 setPhoneSequence:v4];

  v5 = [a1 confidenceScore];
  -[AFSpeechToken setConfidenceScore:](v2, "setConfidenceScore:", [v5 intValue]);

  v6 = [a1 startTime];
  -[AFSpeechToken setStartTime:](v2, "setStartTime:", [v6 intValue] * 0.001);

  v7 = [a1 silenceStartTime];
  -[AFSpeechToken setSilenceStartTime:](v2, "setSilenceStartTime:", [v7 intValue] * 0.001);

  v8 = [a1 endTime];
  -[AFSpeechToken setEndTime:](v2, "setEndTime:", [v8 intValue] * 0.001);

  -[AFSpeechToken setRemoveSpaceBefore:](v2, "setRemoveSpaceBefore:", [a1 removeSpaceBefore]);
  -[AFSpeechToken setRemoveSpaceAfter:](v2, "setRemoveSpaceAfter:", [a1 removeSpaceAfter]);
  [(AFSpeechToken *)v2 setGraphCost:0];
  [(AFSpeechToken *)v2 setAcousticCost:0];

  return v2;
}

@end