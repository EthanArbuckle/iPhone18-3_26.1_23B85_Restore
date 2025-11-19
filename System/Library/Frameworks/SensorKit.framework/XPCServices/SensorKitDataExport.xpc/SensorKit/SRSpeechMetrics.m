@interface SRSpeechMetrics
- (id)sr_dictionaryRepresentation;
@end

@implementation SRSpeechMetrics

- (id)sr_dictionaryRepresentation
{
  v3 = [(SRAudioLevel *)[(SRSpeechMetrics *)self audioLevel] sr_dictionaryRepresentation];
  v4 = [(SFSpeechRecognitionResult *)[(SRSpeechMetrics *)self speechRecognition] sr_dictionaryRepresentation];
  v5 = [(SNClassificationResult *)[(SRSpeechMetrics *)self soundClassification] sr_dictionaryRepresentation];
  v6 = [(SRSpeechExpression *)[(SRSpeechMetrics *)self speechExpression] sr_dictionaryRepresentation];
  v16[0] = @"sessionIdentifier";
  v17[0] = [(SRSpeechMetrics *)self sessionIdentifier];
  v16[1] = @"sessionFlags";
  v17[1] = [NSNumber numberWithUnsignedInteger:[(SRSpeechMetrics *)self sessionFlags]];
  v16[2] = @"timestamp";
  [(NSDate *)[(SRSpeechMetrics *)self timestamp] timeIntervalSinceReferenceDate];
  if (fabs(v7) == INFINITY)
  {
    v8 = @"INF";
  }

  else
  {
    v8 = [NSString stringWithFormat:@"%f", *&v7];
  }

  v17[2] = v8;
  v16[3] = @"timeSinceAudioStart";
  [(SRSpeechMetrics *)self timeSinceAudioStart];
  if (fabs(v9) == INFINITY)
  {
    v10 = @"INF";
  }

  else
  {
    v10 = [NSString stringWithFormat:@"%f", *&v9];
  }

  if (v3)
  {
    v11 = v3;
  }

  else
  {
    v11 = &__NSDictionary0__struct;
  }

  v17[3] = v10;
  v17[4] = v11;
  v16[4] = @"audioLevel";
  v16[5] = @"speechRecognition";
  if (v4)
  {
    v12 = v4;
  }

  else
  {
    v12 = &__NSDictionary0__struct;
  }

  if (v5)
  {
    v13 = v5;
  }

  else
  {
    v13 = &__NSDictionary0__struct;
  }

  v17[5] = v12;
  v17[6] = v13;
  v16[6] = @"soundClassification";
  v16[7] = @"speechExpression";
  if (v6)
  {
    v14 = v6;
  }

  else
  {
    v14 = &__NSDictionary0__struct;
  }

  v17[7] = v14;
  return [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:8];
}

@end