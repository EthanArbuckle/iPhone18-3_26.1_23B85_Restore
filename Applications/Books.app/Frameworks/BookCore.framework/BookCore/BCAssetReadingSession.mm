@interface BCAssetReadingSession
- (id)description;
@end

@implementation BCAssetReadingSession

- (id)description
{
  assetID = [(BCAssetReadingSession *)self assetID];
  sessionID = [(BCAssetReadingSession *)self sessionID];
  timeOpened = [(BCAssetReadingSession *)self timeOpened];
  timeClosed = [(BCAssetReadingSession *)self timeClosed];
  timeUpdated = [(BCAssetReadingSession *)self timeUpdated];
  v8 = [NSString stringWithFormat:@"<BCAssetReadingSession:  %p> assetID: %@, sessionID: %@, timeOpened: %@, timeClosed: %@, timeUpdated: %@", self, assetID, sessionID, timeOpened, timeClosed, timeUpdated];

  return v8;
}

@end