@interface SASStartCorrectedSpeechRequest
- (void)ad_setAFCorrectionContext:(id)a3;
@end

@implementation SASStartCorrectedSpeechRequest

- (void)ad_setAFCorrectionContext:(id)a3
{
  v6 = a3;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v6 objectForKey:AFCorrectionContextInteractionIdKey];
      [(SASStartCorrectedSpeechRequest *)self setInteractionId:v4];

      v5 = [v6 objectForKey:AFCorrectionContextSessionIdKey];
      [(SASStartCorrectedSpeechRequest *)self setSessionId:v5];
    }
  }
}

@end