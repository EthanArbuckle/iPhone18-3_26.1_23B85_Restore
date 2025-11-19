@interface NSURL
+ (id)mt_displayURLForEpisodeStoreTrackId:(int64_t)a3 inPodcastWithStoreCollectionId:(int64_t)a4;
+ (id)mt_displayURLForPodcastStoreCollectionId:(int64_t)a3;
@end

@implementation NSURL

+ (id)mt_displayURLForPodcastStoreCollectionId:(int64_t)a3
{
  v3 = [NSString stringWithFormat:@"podcasts://show?podcastId=%lld", a3];
  v4 = [NSURL URLWithString:v3];

  return v4;
}

+ (id)mt_displayURLForEpisodeStoreTrackId:(int64_t)a3 inPodcastWithStoreCollectionId:(int64_t)a4
{
  v4 = [NSString stringWithFormat:@"podcasts://show?podcastId=%lld&episodeId=%lld", a4, a3];
  v5 = [NSURL URLWithString:v4];

  return v5;
}

@end