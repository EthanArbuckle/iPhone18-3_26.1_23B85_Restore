@interface SASSpeechCorrectionStatistics
- (void)ad_setAFCorrectionContext:(id)context;
- (void)ad_setAFSpeechCorrectionInfo:(id)info;
@end

@implementation SASSpeechCorrectionStatistics

- (void)ad_setAFCorrectionContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [contextCopy objectForKey:AFCorrectionContextInteractionIdKey];
      [(SASSpeechCorrectionStatistics *)self setInteractionId:v4];

      v5 = [contextCopy objectForKey:AFCorrectionContextSessionIdKey];
      [(SASSpeechCorrectionStatistics *)self setSessionId:v5];
    }
  }
}

- (void)ad_setAFSpeechCorrectionInfo:(id)info
{
  if (info)
  {
    infoCopy = info;
    -[SASSpeechCorrectionStatistics setAlternativeSelectCount:](self, "setAlternativeSelectCount:", [infoCopy alternativeSelectionCount]);
    -[SASSpeechCorrectionStatistics setCharacterChangeCount:](self, "setCharacterChangeCount:", [infoCopy characterModificationCount]);
    correctedText = [infoCopy correctedText];

    [(SASSpeechCorrectionStatistics *)self setCorrectionText:correctedText];
    v6 = SASSpeechCorrectionStatisticsSourceDictationValue;

    [(SASSpeechCorrectionStatistics *)self setCorrectionSource:v6];
  }
}

@end