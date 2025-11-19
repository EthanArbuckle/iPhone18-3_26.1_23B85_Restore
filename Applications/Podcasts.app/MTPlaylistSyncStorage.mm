@interface MTPlaylistSyncStorage
- (BOOL)playlistSyncDirtyFlag;
- (NSString)playlistSyncVersion;
- (NSString)podcastsDomainVersion;
- (id)importContext;
- (void)setPlaylistSyncDirtyFlag:(BOOL)a3;
- (void)setPlaylistSyncVersion:(id)a3;
- (void)setPodcastsDomainVersion:(id)a3;
@end

@implementation MTPlaylistSyncStorage

- (NSString)playlistSyncVersion
{
  v2 = +[_TtC8Podcasts21SyncControllerFactory resolvedSyncController];
  v3 = [v2 playlistSyncVersion];

  return v3;
}

- (void)setPlaylistSyncVersion:(id)a3
{
  v3 = a3;
  v4 = +[_TtC8Podcasts21SyncControllerFactory resolvedSyncController];
  [v4 setPlaylistSyncVersion:v3];
}

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

- (BOOL)playlistSyncDirtyFlag
{
  v2 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  v3 = [v2 isPlaylistSyncDirty];

  return v3;
}

- (void)setPlaylistSyncDirtyFlag:(BOOL)a3
{
  v3 = a3;
  v4 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v4 setIsPlaylistSyncDirty:v3];
}

- (id)importContext
{
  v2 = +[MTDB sharedInstance];
  v3 = [v2 importContext];

  return v3;
}

@end