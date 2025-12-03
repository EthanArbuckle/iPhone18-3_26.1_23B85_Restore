@interface MTPlaylist
+ (id)artworkForStationUUID:(id)d podcastsUUIDs:(id)ds size:(CGSize)size;
+ (id)containerOrderOptionArray:(BOOL)array;
+ (id)insertNewPlaylistInManagedObjectContext:(id)context;
+ (id)insertNewPlaylistInManagedObjectContext:(id)context uuid:(id)uuid defaultSettings:(id)settings;
+ (id)predicateForFlag:(int)flag isTrue:(BOOL)true;
+ (id)predicateForMediaLibraryId:(int64_t)id;
+ (id)stringForContainerOrder:(int)order short:(BOOL)short;
+ (id)topLevelPlaylistsExcludingFoldersPredicate;
+ (int64_t)getITunesPlaylistsCount;
- (BOOL)isEditable;
- (BOOL)updateUnplayedCount;
- (MTEpisode)nextEpisode;
- (double)totalDuration;
- (id)artworkWithSize:(CGSize)size;
- (id)metricsAdditionalData;
- (id)metricsContentIdentifier;
- (id)podcasts;
- (int64_t)getFolderSubPlaylistsCount;
- (void)recalculateEpisodeCounts;
- (void)removeEpisode:(id)episode inBulkTransaction:(BOOL)transaction;
- (void)removeEpisodes:(id)episodes;
- (void)removePodcast:(id)podcast;
- (void)removePodcastEpisodes:(id)episodes shouldSave:(BOOL)save;
- (void)setEpisodes:(id)episodes;
- (void)setHasBeenSynced:(BOOL)synced;
- (void)setIsBuiltIn:(BOOL)in;
- (void)setIsFolder:(BOOL)folder;
- (void)setIsItunesSmartPlaylist:(BOOL)playlist;
- (void)setPodcasts:(id)podcasts;
@end

@implementation MTPlaylist

+ (id)topLevelPlaylistsExcludingFoldersPredicate
{
  topLevelPlaylistsPredicate = [self topLevelPlaylistsPredicate];
  v4 = [self predicateForFlag:0 isTrue:0];
  v5 = [topLevelPlaylistsPredicate AND:v4];

  return v5;
}

- (id)artworkWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100008A3C;
  v20 = sub_10003B4F4;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100008A3C;
  v14 = sub_10003B4F4;
  v15 = 0;
  managedObjectContext = [(MTPlaylist *)self managedObjectContext];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C2478;
  v9[3] = &unk_1004D91F8;
  v9[4] = self;
  v9[5] = &v16;
  v9[6] = &v10;
  [managedObjectContext performBlockAndWait:v9];

  v7 = [objc_opt_class() artworkForStationUUID:v17[5] podcastsUUIDs:v11[5] size:{width, height}];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v7;
}

+ (id)artworkForStationUUID:(id)d podcastsUUIDs:(id)ds size:(CGSize)size
{
  height = size.height;
  width = size.width;
  dCopy = d;
  dsCopy = ds;
  v10 = +[MTImageStore defaultStore];
  v11 = [v10 imageForKey:dCopy];
  if (!v11)
  {
    if ([dsCopy count] == 1)
    {
      firstObject = [dsCopy firstObject];
      v14 = [v10 imageForKey:firstObject size:{width, height}];
      v15 = [v14 scaleToSize:1 addBorder:{width, height}];

      if (v15)
      {
        v16 = v15;

        goto LABEL_30;
      }

      goto LABEL_27;
    }

    if ([dsCopy count] < 2)
    {
LABEL_27:
      v17 = [v10 imageForKey:kMTLibraryDefaultImageKey size:{width, height}];
      v33 = [v17 scaleToSize:1 addBorder:{width, height}];
      goto LABEL_28;
    }

    v17 = [NSMutableArray arrayWithCapacity:4];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v18 = dsCopy;
    v19 = [v18 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v36;
LABEL_9:
      v22 = 0;
      while (1)
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [v10 imageForKey:*(*(&v35 + 1) + 8 * v22) size:{width, height}];
        if (v23)
        {
          [v17 addObject:v23];
        }

        v24 = [v17 count];

        if (v24 == 4)
        {
          break;
        }

        if (v20 == ++v22)
        {
          v20 = [v18 countByEnumeratingWithState:&v35 objects:v39 count:16];
          if (v20)
          {
            goto LABEL_9;
          }

          break;
        }
      }
    }

    if ([v17 count] == 2)
    {
      v25 = [v17 objectAtIndexedSubscript:1];
      [v17 addObject:v25];
    }

    else if ([v17 count] != 3)
    {
LABEL_22:
      if ([v17 count] == 4)
      {
        v27 = [v17 objectAtIndexedSubscript:2];
        v28 = [v17 objectAtIndexedSubscript:3];
        v29 = [v17 objectAtIndexedSubscript:0];
        v30 = [v17 objectAtIndexedSubscript:1];
        v31 = [NSMutableArray arrayWithObjects:v27, v28, v29, v30, 0, v35];

        v17 = v31;
      }

      height = [UIImage combineImages:v17 rowCount:2 size:1 border:width, height];
      if (height)
      {
        v33 = height;
        [v10 removeItemsWithPrefx:dCopy];
        [v10 addImage:v33 forKey:dCopy persist:0];
LABEL_28:

        v12 = v33;
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    v26 = [v17 objectAtIndexedSubscript:0];
    [v17 addObject:v26];

    goto LABEL_22;
  }

  v12 = v11;
LABEL_29:
  v16 = v12;
LABEL_30:

  return v16;
}

+ (id)insertNewPlaylistInManagedObjectContext:(id)context
{
  contextCopy = context;
  v5 = [MTPodcastPlaylistSettings insertNewSettingsInManagedObjectContext:contextCopy];
  v6 = +[NSString UUID];
  v7 = [self insertNewPlaylistInManagedObjectContext:contextCopy uuid:v6 defaultSettings:v5];

  return v7;
}

+ (id)insertNewPlaylistInManagedObjectContext:(id)context uuid:(id)uuid defaultSettings:(id)settings
{
  contextCopy = context;
  uuidCopy = uuid;
  settingsCopy = settings;
  v11 = [NSEntityDescription insertNewObjectForEntityForName:kMTPlaylistEntityName inManagedObjectContext:contextCopy];
  if (!settingsCopy)
  {
    settingsCopy = [MTPodcastPlaylistSettings insertNewSettingsInManagedObjectContext:contextCopy];
  }

  [v11 setUuid:uuidCopy];
  [v11 setDefaultSettings:settingsCopy];
  [v11 setNeedsUpdate:1];
  [v11 setIsUngroupedList:1];
  v12 = kPlaylistSortOrder;
  v13 = +[NSPredicate truePredicate];
  v14 = [self aggregateOperation:@"max:" attribute:v12 predicate:v13 managedObjectContext:contextCopy];

  [v11 setSortOrder:{objc_msgSend(v14, "integerValue") + 1}];
  [self prepareForPlatform:v11];

  return v11;
}

- (void)setPodcasts:(id)podcasts
{
  podcastsCopy = podcasts;
  settings = [(MTPlaylist *)self settings];
  v6 = [settings valueForKey:kPlaylistSettingPodcast];

  if (([v6 isEqualToOrderedSet:podcastsCopy] & 1) == 0)
  {
    v18 = [podcastsCopy mutableCopy];
    [v18 minusOrderedSet:v6];
    v19 = v6;
    v7 = [v6 mutableCopy];
    v20 = podcastsCopy;
    [v7 minusOrderedSet:podcastsCopy];
    v8 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    settings2 = [(MTPlaylist *)self settings];
    v10 = [settings2 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(settings2);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          podcast = [v14 podcast];
          v16 = [v7 containsObject:podcast];

          if (v16)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [settings2 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000F573C;
    v23[3] = &unk_1004DC2F0;
    v23[4] = self;
    [v8 enumerateObjectsUsingBlock:v23];
    [(MTPlaylist *)self defaultSettings];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000F579C;
    v21[3] = &unk_1004DC318;
    v22 = v21[4] = self;
    v17 = v22;
    [v18 enumerateObjectsUsingBlock:v21];

    v6 = v19;
    podcastsCopy = v20;
  }
}

- (void)setEpisodes:(id)episodes
{
  episodesCopy = episodes;
  episodes = [(MTPlaylist *)self episodes];
  v5 = [episodesCopy isEqualToOrderedSet:episodes];

  if ((v5 & 1) == 0)
  {
    v6 = kPlaylistEpisodes;
    [(MTPlaylist *)self willChangeValueForKey:kPlaylistEpisodes];
    [(MTPlaylist *)self setPrimitiveValue:episodesCopy forKey:v6];
    [(MTPlaylist *)self didChangeValueForKey:v6];
  }
}

- (id)podcasts
{
  settings = [(MTPlaylist *)self settings];
  v3 = [settings valueForKey:kPlaylistSettingPodcast];

  return v3;
}

- (void)setIsFolder:(BOOL)folder
{
  folderCopy = folder;
  flags = [(MTPlaylist *)self flags];
  if ((flags & 1) != folderCopy)
  {

    [(MTPlaylist *)self setFlags:flags & 0xFFFFFFFFFFFFFFFELL | folderCopy];
  }
}

- (void)setIsBuiltIn:(BOOL)in
{
  inCopy = in;
  flags = [(MTPlaylist *)self flags];
  if (((((flags & 8) == 0) ^ inCopy) & 1) == 0)
  {
    v6 = 8;
    if (!inCopy)
    {
      v6 = 0;
    }

    [(MTPlaylist *)self setFlags:flags & 0xFFFFFFFFFFFFFFF7 | v6];
  }
}

- (void)setIsItunesSmartPlaylist:(BOOL)playlist
{
  playlistCopy = playlist;
  flags = [(MTPlaylist *)self flags];
  if (((((flags & 0x80) == 0) ^ playlistCopy) & 1) == 0)
  {
    v6 = 128;
    if (!playlistCopy)
    {
      v6 = 0;
    }

    [(MTPlaylist *)self setFlags:flags & 0xFFFFFFFFFFFFFF7FLL | v6];
  }
}

- (BOOL)isEditable
{
  uuid = [(MTPlaylist *)self uuid];
  v3 = [uuid isEqualToString:kPlaylistITunesPlaylistUuid];

  return v3 ^ 1;
}

- (BOOL)updateUnplayedCount
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  episodes = [(MTPlaylist *)self episodes];
  v4 = [episodes countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(episodes);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v6 += [v10 isPlayed] ^ 1;
        if ([v10 persistentID])
        {
          ++v7;
        }
      }

      v5 = [episodes countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  unplayedCount = [(MTPlaylist *)self unplayedCount];
  v12 = unplayedCount != v6;
  if (unplayedCount != v6)
  {
    [(MTPlaylist *)self setUnplayedCount:v6];
  }

  if ([(MTPlaylist *)self downloadedCount]!= v7)
  {
    [(MTPlaylist *)self setDownloadedCount:v7];
    return 1;
  }

  return v12;
}

- (void)setHasBeenSynced:(BOOL)synced
{
  syncedCopy = synced;
  flags = [(MTPlaylist *)self flags];
  if (((((flags & 0x40) == 0) ^ syncedCopy) & 1) == 0)
  {
    v6 = 64;
    if (!syncedCopy)
    {
      v6 = 0;
    }

    [(MTPlaylist *)self setFlags:flags & 0xFFFFFFFFFFFFFFBFLL | v6];
  }
}

- (void)recalculateEpisodeCounts
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  episodes = [(MTPlaylist *)self episodes];
  v4 = [episodes countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(episodes);
        }

        v6 += [*(*(&v9 + 1) + 8 * i) isPlayed] ^ 1;
      }

      v5 = [episodes countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  [(MTPlaylist *)self setUnplayedCount:v6];
}

- (void)removePodcast:(id)podcast
{
  podcastCopy = podcast;
  managedObjectContext = [(MTPlaylist *)self managedObjectContext];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100008ADC;
  v21 = sub_10003B544;
  v22 = 0;
  settings = [(MTPlaylist *)self settings];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000F603C;
  v14 = &unk_1004D8238;
  v7 = podcastCopy;
  v15 = v7;
  v16 = &v17;
  [settings enumerateObjectsUsingBlock:&v11];

  if (v18[5])
  {
    [managedObjectContext deleteObject:{v11, v12, v13, v14}];
  }

  v8 = [(MTPlaylist *)self mutableSetValueForKey:kPlaylistDeletedEpisodes, v11, v12, v13, v14];
  episodes = [v7 episodes];
  [v8 minusSet:episodes];

  v10 = [(MTPlaylist *)self mutableOrderedSetValueForKey:kPlaylistPodcasts];
  [v10 removeObject:v7];

  [(MTPlaylist *)self setNeedsUpdate:1];
  _Block_object_dispose(&v17, 8);
}

- (void)removePodcastEpisodes:(id)episodes shouldSave:(BOOL)save
{
  episodesCopy = episodes;
  [(MTPlaylist *)self managedObjectContext];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000F61C0;
  v13 = &unk_1004D9668;
  selfCopy = self;
  v15 = episodesCopy;
  v16 = v17 = save;
  v7 = v16;
  v8 = episodesCopy;
  [v7 performBlockAndWait:&v10];
  v9 = [_TtC18PodcastsFoundation18SyncKeysRepository shared:v10];
  [v9 setIsPlaylistSyncDirty:1];
}

- (void)removeEpisodes:(id)episodes
{
  episodesCopy = episodes;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [episodesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(episodesCopy);
        }

        [(MTPlaylist *)self removeEpisode:*(*(&v13 + 1) + 8 * v8) inBulkTransaction:1];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [episodesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [(MTPlaylist *)self managedObjectContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F6578;
  v12 = v11[3] = &unk_1004D8358;
  v9 = v12;
  [v9 performBlockAndWait:v11];
  v10 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v10 setIsPlaylistSyncDirty:1];
}

- (void)removeEpisode:(id)episode inBulkTransaction:(BOOL)transaction
{
  episodeCopy = episode;
  managedObjectContext = [(MTPlaylist *)self managedObjectContext];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000F667C;
  v14 = &unk_1004D9668;
  selfCopy = self;
  v8 = episodeCopy;
  v16 = v8;
  transactionCopy = transaction;
  v9 = managedObjectContext;
  v17 = v9;
  [v9 performBlockAndWait:&v11];
  if (!transaction)
  {
    v10 = [_TtC18PodcastsFoundation18SyncKeysRepository shared:v11];
    [v10 setIsPlaylistSyncDirty:1];
  }
}

- (double)totalDuration
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  episodes = [(MTPlaylist *)self episodes];
  v3 = [episodes countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(episodes);
        }

        [*(*(&v10 + 1) + 8 * i) duration];
        v6 = v6 + v8;
      }

      v4 = [episodes countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (MTEpisode)nextEpisode
{
  if ([(MTPlaylist *)self isFolder])
  {
    firstObject = 0;
  }

  else
  {
    episodes = [(MTPlaylist *)self episodes];
    firstObject = [episodes firstObject];
  }

  return firstObject;
}

- (int64_t)getFolderSubPlaylistsCount
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v3 mainOrPrivateContext];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F6984;
  v8[3] = &unk_1004D87E8;
  v8[4] = self;
  v5 = mainOrPrivateContext;
  v9 = v5;
  v10 = &v11;
  [v5 performBlockAndWait:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

+ (int64_t)getITunesPlaylistsCount
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v2 mainOrPrivateContext];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F6B6C;
  v7[3] = &unk_1004D8CC8;
  v4 = mainOrPrivateContext;
  v8 = v4;
  v9 = &v10;
  [v4 performBlockAndWait:v7];
  v5 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v5;
}

+ (id)stringForContainerOrder:(int)order short:(BOOL)short
{
  v4 = 0;
  if (order <= 2)
  {
    if (order)
    {
      if (order == 1)
      {
        v5 = [NSBundle mainBundle:*&order];
        v6 = v5;
        v7 = @"Newest To Oldest";
      }

      else
      {
        if (order != 2)
        {
          goto LABEL_15;
        }

        v5 = [NSBundle mainBundle:*&order];
        v6 = v5;
        v7 = @"Manual";
      }
    }

    else
    {
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      if (short)
      {
        v7 = @"MY_PODCASTS_ORDER_SHORT";
      }

      else
      {
        v7 = @"My Podcasts Order";
      }
    }

    goto LABEL_14;
  }

  if (order == 3)
  {
    v5 = [NSBundle mainBundle:*&order];
    v6 = v5;
    v7 = @"Oldest To Newest";
    goto LABEL_14;
  }

  if (order == 4 || order == 5)
  {
    v5 = +[NSBundle mainBundle];
    v6 = v5;
    v7 = @"STATION_SORT_BY_SHOW_TITLE";
LABEL_14:
    v4 = [v5 localizedStringForKey:v7 value:&stru_1004F3018 table:0];
  }

LABEL_15:

  return v4;
}

+ (id)containerOrderOptionArray:(BOOL)array
{
  arrayCopy = array;
  v5 = [self stringForContainerOrder:0 short:array];
  v6 = [self stringForContainerOrder:1 short:{arrayCopy, v5}];
  v12[1] = v6;
  v7 = [self stringForContainerOrder:3 short:arrayCopy];
  v12[2] = v7;
  v8 = [self stringForContainerOrder:2 short:arrayCopy];
  v12[3] = v8;
  v9 = [self stringForContainerOrder:4 short:arrayCopy];
  v12[4] = v9;
  v10 = [NSArray arrayWithObjects:v12 count:5];

  return v10;
}

+ (id)predicateForFlag:(int)flag isTrue:(BOOL)true
{
  v4 = (1 << flag);
  if (true)
  {
    v5 = @"%K != NULL && (%K & %d) != 0";
  }

  else
  {
    v5 = @"%K == NULL || (%K & %d) == 0";
  }

  v6 = [NSPredicate predicateWithFormat:v5, kPlaylistFlags, kPlaylistFlags, v4];

  return v6;
}

+ (id)predicateForMediaLibraryId:(int64_t)id
{
  v3 = kPlaylistMediaLibraryId;
  v4 = [NSNumber numberWithLongLong:id];
  v5 = [NSPredicate predicateWithFormat:@"%K = %@", v3, v4];

  return v5;
}

- (id)metricsContentIdentifier
{
  if ([(MTPlaylist *)self isBuiltIn])
  {
    [(MTPlaylist *)self uuid];
  }

  else
  {
    [(MTPlaylist *)self title];
  }
  v3 = ;

  return v3;
}

- (id)metricsAdditionalData
{
  v22[0] = kPlaylistMediaLibraryId;
  v22[1] = kPlaylistIsFolder;
  v22[2] = kPlaylistUngroupedList;
  v22[3] = kPlaylistIncludesAllPodcasts;
  v22[4] = kPlaylistContainerOrder;
  v17 = [NSArray arrayWithObjects:v22 count:5];
  v3 = [(MTPlaylist *)self dictionaryWithValuesForKeys:v17];
  v4 = [v3 mutableCopy];

  defaultSettings = [(MTPlaylist *)self defaultSettings];
  metricsKeys = [defaultSettings metricsKeys];
  v16 = [defaultSettings dictionaryWithValuesForKeys:metricsKeys];

  [v4 addEntriesFromDictionary:v16];
  v20[0] = @"settings";
  v20[1] = @"counts";
  v21[0] = v4;
  v18[0] = @"episodes";
  episodes = [(MTPlaylist *)self episodes];
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [episodes count]);
  v19[0] = v8;
  v18[1] = @"podcasts";
  podcasts = [(MTPlaylist *)self podcasts];
  v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [podcasts count]);
  v19[1] = v10;
  v18[2] = @"deletedEpisodes";
  deletedEpisodes = [(MTPlaylist *)self deletedEpisodes];
  v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [deletedEpisodes count]);
  v19[2] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
  v21[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];

  return v14;
}

@end