@interface SASSpeechCorrectionStatistics
- (void)ad_setAFCorrectionContext:(id)a3;
- (void)ad_setAFSpeechCorrectionInfo:(id)a3;
@end

@implementation SASSpeechCorrectionStatistics

- (void)ad_setAFCorrectionContext:(id)a3
{
  v6 = a3;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v6 objectForKey:AFCorrectionContextInteractionIdKey];
      [(SASSpeechCorrectionStatistics *)self setInteractionId:v4];

      v5 = [v6 objectForKey:AFCorrectionContextSessionIdKey];
      [(SASSpeechCorrectionStatistics *)self setSessionId:v5];
    }
  }
}

- (void)ad_setAFSpeechCorrectionInfo:(id)a3
{
  if (a3)
  {
    v4 = a3;
    -[SASSpeechCorrectionStatistics setAlternativeSelectCount:](self, "setAlternativeSelectCount:", [v4 alternativeSelectionCount]);
    -[SASSpeechCorrectionStatistics setCharacterChangeCount:](self, "setCharacterChangeCount:", [v4 characterModificationCount]);
    v5 = [v4 correctedText];

    [(SASSpeechCorrectionStatistics *)self setCorrectionText:v5];
    v6 = SASSpeechCorrectionStatisticsSourceDictationValue;

    [(SASSpeechCorrectionStatistics *)self setCorrectionSource:v6];
  }
}

@end