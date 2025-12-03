@interface WLKDeltaContinuationMetadata
- (id)tvun_defaultActionURL;
@end

@implementation WLKDeltaContinuationMetadata

- (id)tvun_defaultActionURL
{
  contentTVAppDeeplinkURL = [(WLKDeltaContinuationMetadata *)self contentTVAppDeeplinkURL];
  playbackURL = [(WLKDeltaContinuationMetadata *)self playbackURL];
  v5 = playbackURL;
  if (playbackURL)
  {
    v6 = playbackURL;

    contentTVAppDeeplinkURL = v6;
  }

  return contentTVAppDeeplinkURL;
}

@end