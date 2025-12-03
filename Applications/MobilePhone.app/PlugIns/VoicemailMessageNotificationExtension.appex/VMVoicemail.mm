@interface VMVoicemail
- (BOOL)hasAcceptableConfidenceForDisplay;
- (BOOL)hasReducedConfidence;
- (BOOL)shouldMarkAsReadForPlaybackCurrentTime:(float)time;
@end

@implementation VMVoicemail

- (BOOL)shouldMarkAsReadForPlaybackCurrentTime:(float)time
{
  if (([(VMVoicemail *)self isRead]& 1) != 0)
  {
    return 0;
  }

  if (time > 5.0)
  {
    return 1;
  }

  [(VMVoicemail *)self duration];
  return v6 / 3.0 < time;
}

- (BOOL)hasAcceptableConfidenceForDisplay
{
  transcript = [(VMVoicemail *)self transcript];
  confidenceRating = [transcript confidenceRating];

  transcript2 = [(VMVoicemail *)self transcript];
  v6 = transcript2;
  if (confidenceRating)
  {
    v7 = [transcript2 confidenceRating] > 1;
  }

  else
  {
    [transcript2 confidence];
    v7 = v8 >= PHVoicemailConfidenceThresholdForTranscript();
  }

  return v7;
}

- (BOOL)hasReducedConfidence
{
  transcript = [(VMVoicemail *)self transcript];
  confidenceRating = [transcript confidenceRating];

  transcript2 = [(VMVoicemail *)self transcript];
  v6 = transcript2;
  if (confidenceRating)
  {
    hasAcceptableConfidenceForDisplay = [transcript2 confidenceRating] == 2;
  }

  else
  {
    [transcript2 confidence];
    if (v8 <= PHVoicemailLowQualityConfidenceThresholdForTranscript())
    {
      hasAcceptableConfidenceForDisplay = [(VMVoicemail *)self hasAcceptableConfidenceForDisplay];
    }

    else
    {
      hasAcceptableConfidenceForDisplay = 0;
    }
  }

  return hasAcceptableConfidenceForDisplay;
}

@end