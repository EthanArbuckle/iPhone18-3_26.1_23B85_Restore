@interface LegacyDownload
- (NSString)episodeGuid;
- (NSString)episodeUuid;
- (NSString)podcastUuid;
- (id)downloadDescription;
- (void)setEpisodeGuid:(id)guid;
- (void)setEpisodeUuid:(id)uuid;
- (void)setPodcastUuid:(id)uuid;
- (void)setStoreCollectionIdentifier:(id)identifier;
- (void)setStoreItemId:(id)id;
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

- (void)setEpisodeGuid:(id)guid
{
  if (guid)
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

- (void)setStoreCollectionIdentifier:(id)identifier
{
  v4 = *(self + 4);
  *(self + 4) = identifier;
  identifierCopy = identifier;
}

- (void)setStoreItemId:(id)id
{
  v4 = *(self + 5);
  *(self + 5) = id;
  idCopy = id;
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

- (void)setPodcastUuid:(id)uuid
{
  if (uuid)
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

- (void)setEpisodeUuid:(id)uuid
{
  if (uuid)
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