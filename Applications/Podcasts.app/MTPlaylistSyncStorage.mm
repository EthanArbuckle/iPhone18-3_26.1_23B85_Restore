@interface MTPlaylistSyncStorage
- (BOOL)playlistSyncDirtyFlag;
- (NSString)playlistSyncVersion;
- (NSString)podcastsDomainVersion;
- (id)importContext;
- (void)setPlaylistSyncDirtyFlag:(BOOL)flag;
- (void)setPlaylistSyncVersion:(id)version;
- (void)setPodcastsDomainVersion:(id)version;
@end

@implementation MTPlaylistSyncStorage

- (NSString)playlistSyncVersion
{
  v2 = +[_TtC8Podcasts21SyncControllerFactory resolvedSyncController];
  playlistSyncVersion = [v2 playlistSyncVersion];

  return playlistSyncVersion;
}

- (void)setPlaylistSyncVersion:(id)version
{
  versionCopy = version;
  v4 = +[_TtC8Podcasts21SyncControllerFactory resolvedSyncController];
  [v4 setPlaylistSyncVersion:versionCopy];
}

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

- (BOOL)playlistSyncDirtyFlag
{
  v2 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  isPlaylistSyncDirty = [v2 isPlaylistSyncDirty];

  return isPlaylistSyncDirty;
}

- (void)setPlaylistSyncDirtyFlag:(BOOL)flag
{
  flagCopy = flag;
  v4 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v4 setIsPlaylistSyncDirty:flagCopy];
}

- (id)importContext
{
  v2 = +[MTDB sharedInstance];
  importContext = [v2 importContext];

  return importContext;
}

@end