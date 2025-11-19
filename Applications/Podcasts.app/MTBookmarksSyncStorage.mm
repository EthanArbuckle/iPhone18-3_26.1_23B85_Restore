@interface MTBookmarksSyncStorage
+ (BOOL)hasBookmarksSync;
+ (double)lastBookmarksSyncTimestampForSyncType:(int64_t)a3;
+ (id)bookmarksKeyForSyncType:(int64_t)a3;
+ (id)bookmarksLastSyncKeyForSyncType:(int64_t)a3;
+ (id)bookmarksSyncVersionForSyncType:(int64_t)a3;
+ (void)resetBookmarksSync;
+ (void)setBookmarksSyncVersion:(id)a3 syncType:(int64_t)a4;
+ (void)setLastBookmarksSyncTimestamp:(double)a3 syncType:(int64_t)a4;
- (BOOL)syncDirtyFlag;
- (MTBookmarksSyncStorage)initWithSyncType:(int64_t)a3;
- (NSString)logPrefix;
- (NSString)podcastsDomainVersion;
- (NSString)syncVersion;
- (double)lastSyncTimestamp;
- (id)importContext;
- (void)setLastSyncTimestamp:(double)a3;
- (void)setPodcastsDomainVersion:(id)a3;
- (void)setSyncDirtyFlag:(BOOL)a3;
- (void)setSyncVersion:(id)a3;
- (void)unsafeBookmarkEpisode:(id)a3 onTimestamp:(double)a4;
- (void)unsafeRemoveFromBookmarksEpisodes:(id)a3 context:(id)a4;
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
      v7 = [a1 bookmarksSyncVersionForSyncType:v3];
      if (v7)
      {
        v4 = 1;
      }

      else
      {
        [a1 lastBookmarksSyncTimestampForSyncType:v3];
        v4 = v8 != 0.0;
      }
    }

    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
  return v4;
}

- (MTBookmarksSyncStorage)initWithSyncType:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = MTBookmarksSyncStorage;
  v4 = [(MTBookmarksSyncStorage *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(MTBookmarksSyncStorage *)v4 setSyncType:a3];
  }

  return v5;
}

- (NSString)syncVersion
{
  v2 = [(MTBookmarksSyncStorage *)self syncType];

  return [MTBookmarksSyncStorage bookmarksSyncVersionForSyncType:v2];
}

- (void)setSyncVersion:(id)a3
{
  v4 = a3;
  [MTBookmarksSyncStorage setBookmarksSyncVersion:v4 syncType:[(MTBookmarksSyncStorage *)self syncType]];
}

- (double)lastSyncTimestamp
{
  v2 = [(MTBookmarksSyncStorage *)self syncType];

  [MTBookmarksSyncStorage lastBookmarksSyncTimestampForSyncType:v2];
  return result;
}

- (void)setLastSyncTimestamp:(double)a3
{
  v4 = [(MTBookmarksSyncStorage *)self syncType];

  [MTBookmarksSyncStorage setLastBookmarksSyncTimestamp:v4 syncType:a3];
}

+ (id)bookmarksKeyForSyncType:(int64_t)a3
{
  v3 = &kMTBookmarksDRMKey;
  if (a3 != 1)
  {
    v3 = &kMTBookmarksKey;
  }

  return *v3;
}

+ (id)bookmarksLastSyncKeyForSyncType:(int64_t)a3
{
  if (a3 == 1)
  {
    return @"bookmarks-drm-last-sync";
  }

  else
  {
    return @"bookmarks-last-sync";
  }
}

+ (id)bookmarksSyncVersionForSyncType:(int64_t)a3
{
  v3 = [a1 bookmarksKeyForSyncType:a3];
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 stringForKey:v3];

  return v5;
}

+ (void)setBookmarksSyncVersion:(id)a3 syncType:(int64_t)a4
{
  v10 = a3;
  v6 = [a1 bookmarksKeyForSyncType:a4];
  v7 = [v10 length];
  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = v8;
  if (v7)
  {
    [v8 setObject:v10 forKey:v6];
  }

  else
  {
    [v8 removeObjectForKey:v6];
  }
}

+ (double)lastBookmarksSyncTimestampForSyncType:(int64_t)a3
{
  v3 = [a1 bookmarksLastSyncKeyForSyncType:a3];
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 doubleForKey:v3];
  v6 = v5;

  return v6;
}

+ (void)setLastBookmarksSyncTimestamp:(double)a3 syncType:(int64_t)a4
{
  v7 = [a1 bookmarksLastSyncKeyForSyncType:a4];
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = v5;
  if (a3 <= 0.0)
  {
    [v5 removeObjectForKey:v7];
  }

  else
  {
    [v5 setDouble:v7 forKey:a3];
  }
}

+ (void)resetBookmarksSync
{
  [a1 setBookmarksSyncVersion:0 syncType:0];
  [a1 setLastBookmarksSyncTimestamp:0 syncType:0.0];
  v3 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v3 markBookmarksSyncDirty:1 for:0];

  [a1 setBookmarksSyncVersion:0 syncType:1];
  [a1 setLastBookmarksSyncTimestamp:1 syncType:0.0];
  v4 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v4 markBookmarksSyncDirty:1 for:1];
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

- (void)setSyncDirtyFlag:(BOOL)a3
{
  v3 = a3;
  v5 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v5 markBookmarksSyncDirty:v3 for:self->syncType];
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
  v3 = [v2 importContext];

  return v3;
}

- (void)unsafeBookmarkEpisode:(id)a3 onTimestamp:(double)a4
{
  v5 = a3;
  v6 = +[_TtC8Podcasts24PodcastsStateCoordinator shared];
  [v6 unsafeBookmarkEpisode:v5 onTimestamp:0 shouldDownloadEpisode:1 from:a4];
}

- (void)unsafeRemoveFromBookmarksEpisodes:(id)a3 context:(id)a4
{
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = _MTLogCategoryCloudSync();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [(MTBookmarksSyncStorage *)self logPrefix];
          v13 = [v10 storeTrackId];
          *buf = 138412546;
          v20 = v12;
          v21 = 2048;
          v22 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ Step 2: missing bookmark adam id from cloud: %lld", buf, 0x16u);
        }

        v14 = +[_TtC8Podcasts24PodcastsStateCoordinator shared];
        [v14 unsafeRemoveEpisodeFromBookmarks:v10 from:1];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
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