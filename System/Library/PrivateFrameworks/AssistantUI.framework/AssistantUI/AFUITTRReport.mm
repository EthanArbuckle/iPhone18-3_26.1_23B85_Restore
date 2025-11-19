@interface AFUITTRReport
- (AFUITTRReport)init;
- (id)analyzeASRIsCorrect;
- (id)analyzeASRIsWrong;
- (id)composeAdditionalDetails;
- (id)composeRadarOutput;
- (id)getTranscriptQuoted;
@end

@implementation AFUITTRReport

- (AFUITTRReport)init
{
  v11.receiver = self;
  v11.super_class = AFUITTRReport;
  v2 = [(AFUITTRReport *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_asrIsCorrect = 1;
    v2->_audioRecordingIsUnderstandable = 0;
    v2->_domainIsCorrect = 0;
    timestamp = v2->_timestamp;
    v2->_timestamp = &stru_285322A30;

    actualASRTranscript = v3->_actualASRTranscript;
    v3->_actualASRTranscript = &stru_285322A30;

    observedBehavior = v3->_observedBehavior;
    v3->_observedBehavior = &stru_285322A30;

    expectedBehavior = v3->_expectedBehavior;
    v3->_expectedBehavior = &stru_285322A30;

    userSuggestedASRTranscript = v3->_userSuggestedASRTranscript;
    v3->_userSuggestedASRTranscript = &stru_285322A30;

    userSuggestedDomain = v3->_userSuggestedDomain;
    v3->_userSuggestedDomain = &stru_285322A30;
  }

  return v3;
}

- (id)composeRadarOutput
{
  v3 = [@"Siri Tap-To-Radar" stringByAppendingFormat:@"\n\n"];
  v4 = [(AFUITTRReport *)self getTimestampFormatted];
  if (([v4 isEqualToString:&stru_285322A30] & 1) == 0)
  {
    v5 = [v3 stringByAppendingFormat:@"%@: %@\n", @"Timestamp", v4];

    v3 = v5;
  }

  if (![(NSString *)self->_actualASRTranscript isEqualToString:&stru_285322A30])
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", self->_actualASRTranscript];
    v7 = [v3 stringByAppendingFormat:@"%@ → %@\n", @"[Utterance]", v6];

    v3 = v7;
  }

  if (self->_asrIsCorrect)
  {
    [(AFUITTRReport *)self analyzeASRIsCorrect];
  }

  else
  {
    [(AFUITTRReport *)self analyzeASRIsWrong];
  }
  v8 = ;
  v9 = [v3 stringByAppendingString:v8];

  v10 = [(AFUITTRReport *)self composeAdditionalDetails];
  v11 = [v9 stringByAppendingString:v10];

  return v11;
}

- (id)analyzeASRIsCorrect
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ → %@\n", @"[ASR]", @"No issues reported"];
  v4 = v3;
  domainIsCorrect = self->_domainIsCorrect;
  if (domainIsCorrect == 1)
  {
    v6 = [v3 stringByAppendingFormat:@"%@ → %@\n", @"[Domain]", @"Reported as incorrect"];

    v4 = [v6 stringByAppendingFormat:@"\t- %@: %@\n", @"Siri predicted domain", self->_actualDomain];

    if ([(NSString *)self->_userSuggestedDomain isEqualToString:&stru_285322A30])
    {
      goto LABEL_7;
    }

    [v4 stringByAppendingFormat:@"\t- %@: %@\n", @"User suggested domain", self->_userSuggestedDomain];
  }

  else
  {
    if (domainIsCorrect != 2)
    {
      goto LABEL_7;
    }

    [v3 stringByAppendingFormat:@"%@ → %@\n", @"[Domain]", @"No issues reported"];
  }
  v7 = ;

  v4 = v7;
LABEL_7:

  return v4;
}

- (id)analyzeASRIsWrong
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ → %@\n", @"[ASR]", @"Reported as incorrect"];
  if (self->_userSuggestedASRTranscript)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", self->_userSuggestedASRTranscript];
    v5 = [v3 stringByAppendingFormat:@"%@ → %@\n", @"[User suggested ASR Transcript]", v4];

    v3 = v5;
  }

  audioRecordingIsUnderstandable = self->_audioRecordingIsUnderstandable;
  if (audioRecordingIsUnderstandable == 1)
  {
    v8 = [v3 stringByAppendingFormat:@"%@: %@\n", @"Audio Recording", @"Reported as incorrect"];
  }

  else
  {
    if (audioRecordingIsUnderstandable != 2)
    {
      goto LABEL_8;
    }

    v7 = [v3 stringByAppendingFormat:@"%@: %@\n", @"Audio Recording", @"No issues reported"];

    v8 = [v7 stringByAppendingFormat:@"%@: %@\n", @"Actual ASR Transcript", self->_actualASRTranscript];
    v3 = v7;
  }

  v3 = v8;
LABEL_8:

  return v3;
}

- (id)composeAdditionalDetails
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@\n", @"\nAdditional Details", &stru_285322A30];
  if (![(NSString *)self->_observedBehavior isEqualToString:&stru_285322A30])
  {
    v4 = [v3 stringByAppendingFormat:@"%@ → %@\n", @"[Observed Behavior]", self->_observedBehavior];

    v3 = v4;
  }

  if (![(NSString *)self->_expectedBehavior isEqualToString:&stru_285322A30])
  {
    v5 = [v3 stringByAppendingFormat:@"%@ → %@\n", @"[Expected Behavior]", self->_expectedBehavior];

    v3 = v5;
  }

  return v3;
}

- (id)getTranscriptQuoted
{
  actualASRTranscript = self->_actualASRTranscript;
  if (actualASRTranscript)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"“%@”", actualASRTranscript];
  }

  else
  {
    v4 = &stru_285322A30;
  }

  return v4;
}

@end