@interface MTBookmarksSyncStorage
+ (BOOL)hasBookmarksSync;
+ (double)lastBookmarksSyncTimestampForSyncType:(int64_t)type;
+ (id)bookmarksKeyForSyncType:(int64_t)type;
+ (id)bookmarksLastSyncKeyForSyncType:(int64_t)type;
+ (id)bookmarksSyncVersionForSyncType:(int64_t)type;
+ (void)resetBookmarksSync;
+ (void)setBookmarksSyncVersion:(id)version syncType:(int64_t)type;
+ (void)setLastBookmarksSyncTimestamp:(double)timestamp syncType:(int64_t)type;
- (BOOL)syncDirtyFlag;
- (MTBookmarksSyncStorage)initWithSyncType:(int64_t)type;
- (NSString)logPrefix;
- (NSString)podcastsDomainVersion;
- (NSString)syncVersion;
- (double)lastSyncTimestamp;
- (id)importContext;
- (void)setLastSyncTimestamp:(double)timestamp;
- (void)setPodcastsDomainVersion:(id)version;
- (void)setSyncDirtyFlag:(BOOL)flag;
- (void)setSyncVersion:(id)version;
- (void)unsafeBookmarkEpisode:(id)episode onTimestamp:(double)timestamp;
- (void)unsafeRemoveFromBookmarksEpisodes:(id)episodes context:(id)context;
@end

@implementation MTBookmarksSyncStorage

+ (BOOL)hasBookmarksSync
{
  v3 = 0;
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    if (v4)
    {
      v4 = 1;
    }

    else
    {
      v7 = [self bookmarksSyncVersionForSyncType:v3];
      if (v7)
      {
        v4 = 1;
      }

      else
      {
        [self lastBookmarksSyncTimestampForSyncType:v3];
        v4 = v8 != 0.0;
      }
    }

    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
  return v4;
}

- (MTBookmarksSyncStorage)initWithSyncType:(int64_t)type
{
  v7.receiver = self;
  v7.super_class = MTBookmarksSyncStorage;
  v4 = [(MTBookmarksSyncStorage *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(MTBookmarksSyncStorage *)v4 setSyncType:type];
  }

  return v5;
}

- (NSString)syncVersion
{
  syncType = [(MTBookmarksSyncStorage *)self syncType];

  return [MTBookmarksSyncStorage bookmarksSyncVersionForSyncType:syncType];
}

- (void)setSyncVersion:(id)version
{
  versionCopy = version;
  [MTBookmarksSyncStorage setBookmarksSyncVersion:versionCopy syncType:[(MTBookmarksSyncStorage *)self syncType]];
}

- (double)lastSyncTimestamp
{
  syncType = [(MTBookmarksSyncStorage *)self syncType];

  [MTBookmarksSyncStorage lastBookmarksSyncTimestampForSyncType:syncType];
  return result;
}

- (void)setLastSyncTimestamp:(double)timestamp
{
  syncType = [(MTBookmarksSyncStorage *)self syncType];

  [MTBookmarksSyncStorage setLastBookmarksSyncTimestamp:syncType syncType:timestamp];
}

+ (id)bookmarksKeyForSyncType:(int64_t)type
{
  v3 = &kMTBookmarksDRMKey;
  if (type != 1)
  {
    v3 = &kMTBookmarksKey;
  }

  return *v3;
}

+ (id)bookmarksLastSyncKeyForSyncType:(int64_t)type
{
  if (type == 1)
  {
    return @"bookmarks-drm-last-sync";
  }

  else
  {
    return @"bookmarks-last-sync";
  }
}

+ (id)bookmarksSyncVersionForSyncType:(int64_t)type
{
  v3 = [self bookmarksKeyForSyncType:type];
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 stringForKey:v3];

  return v5;
}

+ (void)setBookmarksSyncVersion:(id)version syncType:(int64_t)type
{
  versionCopy = version;
  v6 = [self bookmarksKeyForSyncType:type];
  v7 = [versionCopy length];
  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = v8;
  if (v7)
  {
    [v8 setObject:versionCopy forKey:v6];
  }

  else
  {
    [v8 removeObjectForKey:v6];
  }
}

+ (double)lastBookmarksSyncTimestampForSyncType:(int64_t)type
{
  v3 = [self bookmarksLastSyncKeyForSyncType:type];
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 doubleForKey:v3];
  v6 = v5;

  return v6;
}

+ (void)setLastBookmarksSyncTimestamp:(double)timestamp syncType:(int64_t)type
{
  v7 = [self bookmarksLastSyncKeyForSyncType:type];
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = v5;
  if (timestamp <= 0.0)
  {
    [v5 removeObjectForKey:v7];
  }

  else
  {
    [v5 setDouble:v7 forKey:timestamp];
  }
}

+ (void)resetBookmarksSync
{
  [self setBookmarksSyncVersion:0 syncType:0];
  [self setLastBookmarksSyncTimestamp:0 syncType:0.0];
  v3 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v3 markBookmarksSyncDirty:1 for:0];

  [self setBookmarksSyncVersion:0 syncType:1];
  [self setLastBookmarksSyncTimestamp:1 syncType:0.0];
  v4 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v4 markBookmarksSyncDirty:1 for:1];
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

- (void)setSyncDirtyFlag:(BOOL)flag
{
  flagCopy = flag;
  v5 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v5 markBookmarksSyncDirty:flagCopy for:self->syncType];
}

- (BOOL)syncDirtyFlag
{
  v3 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  LOBYTE(self) = [v3 isBookmarksSyncDirtyFor:{-[MTBookmarksSyncStorage syncType](self, "syncType")}];

  return self;
}

- (id)importContext
{
  v2 = +[MTDB sharedInstance];
  importContext = [v2 importContext];

  return importContext;
}

- (void)unsafeBookmarkEpisode:(id)episode onTimestamp:(double)timestamp
{
  episodeCopy = episode;
  v6 = +[_TtC8Podcasts24PodcastsStateCoordinator shared];
  [v6 unsafeBookmarkEpisode:episodeCopy onTimestamp:0 shouldDownloadEpisode:1 from:timestamp];
}

- (void)unsafeRemoveFromBookmarksEpisodes:(id)episodes context:(id)context
{
  episodesCopy = episodes;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [episodesCopy countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(episodesCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = _MTLogCategoryCloudSync();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          logPrefix = [(MTBookmarksSyncStorage *)self logPrefix];
          storeTrackId = [v10 storeTrackId];
          *buf = 138412546;
          v20 = logPrefix;
          v21 = 2048;
          v22 = storeTrackId;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ Step 2: missing bookmark adam id from cloud: %lld", buf, 0x16u);
        }

        v14 = +[_TtC8Podcasts24PodcastsStateCoordinator shared];
        [v14 unsafeRemoveEpisodeFromBookmarks:v10 from:1];
      }

      v7 = [episodesCopy countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v7);
  }
}

- (NSString)logPrefix
{
  if (self->syncType == 1)
  {
    return @"[Bookmarks DRM Sync]";
  }

  else
  {
    return @"[Bookmarks Sync]";
  }
}

@end