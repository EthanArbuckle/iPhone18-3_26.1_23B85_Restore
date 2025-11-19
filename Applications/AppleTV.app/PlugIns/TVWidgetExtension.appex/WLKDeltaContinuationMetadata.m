@interface WLKDeltaContinuationMetadata
- (id)tvun_defaultActionURL;
@end

@implementation WLKDeltaContinuationMetadata

- (id)tvun_defaultActionURL
{
  v3 = [(WLKDeltaContinuationMetadata *)self contentTVAppDeeplinkURL];
  v4 = [(WLKDeltaContinuationMetadata *)self playbackURL];
  v5 = v4;
  if (v4)
  {
    v6 = v4;

    v3 = v6;
  }

  return v3;
}

@end