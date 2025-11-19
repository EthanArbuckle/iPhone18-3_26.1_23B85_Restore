@interface LegacyDownload
- (NSString)episodeGuid;
- (NSString)episodeUuid;
- (NSString)podcastUuid;
- (id)downloadDescription;
- (void)setEpisodeGuid:(id)a3;
- (void)setEpisodeUuid:(id)a3;
- (void)setPodcastUuid:(id)a3;
- (void)setStoreCollectionIdentifier:(id)a3;
- (void)setStoreItemId:(id)a3;
@end

@implementation LegacyDownload

- (NSString)episodeGuid
{
  if (*(self + 3))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setEpisodeGuid:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *(self + 2) = v4;
  *(self + 3) = v5;
}

- (void)setStoreCollectionIdentifier:(id)a3
{
  v4 = *(self + 4);
  *(self + 4) = a3;
  v3 = a3;
}

- (void)setStoreItemId:(id)a3
{
  v4 = *(self + 5);
  *(self + 5) = a3;
  v3 = a3;
}

- (NSString)podcastUuid
{
  if (*(self + 7))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setPodcastUuid:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *(self + 6) = v4;
  *(self + 7) = v5;
}

- (NSString)episodeUuid
{
  if (*(self + 9))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setEpisodeUuid:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *(self + 8) = v4;
  *(self + 9) = v5;
}

- (id)downloadDescription
{
  if (*(self + 16))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end