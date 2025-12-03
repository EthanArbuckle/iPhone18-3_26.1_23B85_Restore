@interface SAStartRequest
- (id)ad_deferredMetricsContext;
@end

@implementation SAStartRequest

- (id)ad_deferredMetricsContext
{
  v9.receiver = self;
  v9.super_class = SAStartRequest;
  ad_deferredMetricsContext = [(SAStartRequest *)&v9 ad_deferredMetricsContext];
  origin = [(SAStartRequest *)self origin];

  if (origin)
  {
    v5 = [NSNumber numberWithBool:[(SAStartRequest *)self textToSpeechIsMuted]];
    [ad_deferredMetricsContext setObject:v5 forKey:SAStartRequestTextToSpeechIsMutedPListKey];

    origin2 = [(SAStartRequest *)self origin];
    if (origin2)
    {
      [ad_deferredMetricsContext setObject:origin2 forKey:SAStartRequestOriginPListKey];
    }

    utterance = [(SAStartRequest *)self utterance];
    if (utterance)
    {
      [ad_deferredMetricsContext setObject:utterance forKey:SAStartRequestUtterancePListKey];
    }
  }

  return ad_deferredMetricsContext;
}

@end