@interface MTTermsVersionSyncStorage
- (NSString)podcastsDomainVersion;
- (void)setPodcastsDomainVersion:(id)a3;
@end

@implementation MTTermsVersionSyncStorage

- (NSString)podcastsDomainVersion
{
  v2 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  v3 = [v2 podcastsDomainVersion];

  return v3;
}

- (void)setPodcastsDomainVersion:(id)a3
{
  v3 = a3;
  v4 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v4 setPodcastsDomainVersion:v3];
}

@end