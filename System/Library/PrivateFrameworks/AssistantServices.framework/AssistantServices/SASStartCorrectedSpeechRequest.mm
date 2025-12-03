@interface SASStartCorrectedSpeechRequest
- (void)ad_setAFCorrectionContext:(id)context;
@end

@implementation SASStartCorrectedSpeechRequest

- (void)ad_setAFCorrectionContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [contextCopy objectForKey:AFCorrectionContextInteractionIdKey];
      [(SASStartCorrectedSpeechRequest *)self setInteractionId:v4];

      v5 = [contextCopy objectForKey:AFCorrectionContextSessionIdKey];
      [(SASStartCorrectedSpeechRequest *)self setSessionId:v5];
    }
  }
}

@end