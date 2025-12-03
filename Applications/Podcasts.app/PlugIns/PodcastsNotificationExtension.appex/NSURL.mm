@interface NSURL
+ (id)mt_displayURLForEpisodeStoreTrackId:(int64_t)id inPodcastWithStoreCollectionId:(int64_t)collectionId;
+ (id)mt_displayURLForPodcastStoreCollectionId:(int64_t)id;
@end

@implementation NSURL

+ (id)mt_displayURLForPodcastStoreCollectionId:(int64_t)id
{
  v3 = [NSString stringWithFormat:@"podcasts://show?podcastId=%lld", id];
  v4 = [NSURL URLWithString:v3];

  return v4;
}

+ (id)mt_displayURLForEpisodeStoreTrackId:(int64_t)id inPodcastWithStoreCollectionId:(int64_t)collectionId
{
  v4 = [NSString stringWithFormat:@"podcasts://show?podcastId=%lld&episodeId=%lld", collectionId, id];
  v5 = [NSURL URLWithString:v4];

  return v5;
}

@end