@interface SAStartRequest
- (id)ad_deferredMetricsContext;
@end

@implementation SAStartRequest

- (id)ad_deferredMetricsContext
{
  v9.receiver = self;
  v9.super_class = SAStartRequest;
  v3 = [(SAStartRequest *)&v9 ad_deferredMetricsContext];
  v4 = [(SAStartRequest *)self origin];

  if (v4)
  {
    v5 = [NSNumber numberWithBool:[(SAStartRequest *)self textToSpeechIsMuted]];
    [v3 setObject:v5 forKey:SAStartRequestTextToSpeechIsMutedPListKey];

    v6 = [(SAStartRequest *)self origin];
    if (v6)
    {
      [v3 setObject:v6 forKey:SAStartRequestOriginPListKey];
    }

    v7 = [(SAStartRequest *)self utterance];
    if (v7)
    {
      [v3 setObject:v7 forKey:SAStartRequestUtterancePListKey];
    }
  }

  return v3;
}

@end