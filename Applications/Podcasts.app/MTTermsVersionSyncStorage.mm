@interface MTTermsVersionSyncStorage
- (NSString)podcastsDomainVersion;
- (void)setPodcastsDomainVersion:(id)version;
@end

@implementation MTTermsVersionSyncStorage

- (NSString)podcastsDomainVersion
{
  v2 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  podcastsDomainVersion = [v2 podcastsDomainVersion];

  return podcastsDomainVersion;
}

- (void)setPodcastsDomainVersion:(id)version
{
  versionCopy = version;
  v4 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v4 setPodcastsDomainVersion:versionCopy];
}

@end