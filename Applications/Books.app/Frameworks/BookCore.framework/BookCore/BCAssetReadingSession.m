@interface BCAssetReadingSession
- (id)description;
@end

@implementation BCAssetReadingSession

- (id)description
{
  v3 = [(BCAssetReadingSession *)self assetID];
  v4 = [(BCAssetReadingSession *)self sessionID];
  v5 = [(BCAssetReadingSession *)self timeOpened];
  v6 = [(BCAssetReadingSession *)self timeClosed];
  v7 = [(BCAssetReadingSession *)self timeUpdated];
  v8 = [NSString stringWithFormat:@"<BCAssetReadingSession:  %p> assetID: %@, sessionID: %@, timeOpened: %@, timeClosed: %@, timeUpdated: %@", self, v3, v4, v5, v6, v7];

  return v8;
}

@end