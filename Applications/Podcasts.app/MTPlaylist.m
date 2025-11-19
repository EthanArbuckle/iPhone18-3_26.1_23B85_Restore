@interface MTPlaylist
+ (id)artworkForStationUUID:(id)a3 podcastsUUIDs:(id)a4 size:(CGSize)a5;
+ (id)containerOrderOptionArray:(BOOL)a3;
+ (id)insertNewPlaylistInManagedObjectContext:(id)a3;
+ (id)insertNewPlaylistInManagedObjectContext:(id)a3 uuid:(id)a4 defaultSettings:(id)a5;
+ (id)predicateForFlag:(int)a3 isTrue:(BOOL)a4;
+ (id)predicateForMediaLibraryId:(int64_t)a3;
+ (id)stringForContainerOrder:(int)a3 short:(BOOL)a4;
+ (id)topLevelPlaylistsExcludingFoldersPredicate;
+ (int64_t)getITunesPlaylistsCount;
- (BOOL)isEditable;
- (BOOL)updateUnplayedCount;
- (MTEpisode)nextEpisode;
- (double)totalDuration;
- (id)artworkWithSize:(CGSize)a3;
- (id)metricsAdditionalData;
- (id)metricsContentIdentifier;
- (id)podcasts;
- (int64_t)getFolderSubPlaylistsCount;
- (void)recalculateEpisodeCounts;
- (void)removeEpisode:(id)a3 inBulkTransaction:(BOOL)a4;
- (void)removeEpisodes:(id)a3;
- (void)removePodcast:(id)a3;
- (void)removePodcastEpisodes:(id)a3 shouldSave:(BOOL)a4;
- (void)setEpisodes:(id)a3;
- (void)setHasBeenSynced:(BOOL)a3;
- (void)setIsBuiltIn:(BOOL)a3;
- (void)setIsFolder:(BOOL)a3;
- (void)setIsItunesSmartPlaylist:(BOOL)a3;
- (void)setPodcasts:(id)a3;
@end

@implementation MTPlaylist

+ (id)topLevelPlaylistsExcludingFoldersPredicate
{
  v3 = [a1 topLevelPlaylistsPredicate];
  v4 = [a1 predicateForFlag:0 isTrue:0];
  v5 = [v3 AND:v4];

  return v5;
}

- (id)artworkWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
  v6 = [(MTPlaylist *)self managedObjectContext];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C2478;
  v9[3] = &unk_1004D91F8;
  v9[4] = self;
  v9[5] = &v16;
  v9[6] = &v10;
  [v6 performBlockAndWait:v9];

  v7 = [objc_opt_class() artworkForStationUUID:v17[5] podcastsUUIDs:v11[5] size:{width, height}];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v7;
}

+ (id)artworkForStationUUID:(id)a3 podcastsUUIDs:(id)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = a3;
  v9 = a4;
  v10 = +[MTImageStore defaultStore];
  v11 = [v10 imageForKey:v8];
  if (!v11)
  {
    if ([v9 count] == 1)
    {
      v13 = [v9 firstObject];
      v14 = [v10 imageForKey:v13 size:{width, height}];
      v15 = [v14 scaleToSize:1 addBorder:{width, height}];

      if (v15)
      {
        v16 = v15;

        goto LABEL_30;
      }

      goto LABEL_27;
    }

    if ([v9 count] < 2)
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
    v18 = v9;
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

      v32 = [UIImage combineImages:v17 rowCount:2 size:1 border:width, height];
      if (v32)
      {
        v33 = v32;
        [v10 removeItemsWithPrefx:v8];
        [v10 addImage:v33 forKey:v8 persist:0];
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

+ (id)insertNewPlaylistInManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [MTPodcastPlaylistSettings insertNewSettingsInManagedObjectContext:v4];
  v6 = +[NSString UUID];
  v7 = [a1 insertNewPlaylistInManagedObjectContext:v4 uuid:v6 defaultSettings:v5];

  return v7;
}

+ (id)insertNewPlaylistInManagedObjectContext:(id)a3 uuid:(id)a4 defaultSettings:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [NSEntityDescription insertNewObjectForEntityForName:kMTPlaylistEntityName inManagedObjectContext:v8];
  if (!v10)
  {
    v10 = [MTPodcastPlaylistSettings insertNewSettingsInManagedObjectContext:v8];
  }

  [v11 setUuid:v9];
  [v11 setDefaultSettings:v10];
  [v11 setNeedsUpdate:1];
  [v11 setIsUngroupedList:1];
  v12 = kPlaylistSortOrder;
  v13 = +[NSPredicate truePredicate];
  v14 = [a1 aggregateOperation:@"max:" attribute:v12 predicate:v13 managedObjectContext:v8];

  [v11 setSortOrder:{objc_msgSend(v14, "integerValue") + 1}];
  [a1 prepareForPlatform:v11];

  return v11;
}

- (void)setPodcasts:(id)a3
{
  v4 = a3;
  v5 = [(MTPlaylist *)self settings];
  v6 = [v5 valueForKey:kPlaylistSettingPodcast];

  if (([v6 isEqualToOrderedSet:v4] & 1) == 0)
  {
    v18 = [v4 mutableCopy];
    [v18 minusOrderedSet:v6];
    v19 = v6;
    v7 = [v6 mutableCopy];
    v20 = v4;
    [v7 minusOrderedSet:v4];
    v8 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = [(MTPlaylist *)self settings];
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v15 = [v14 podcast];
          v16 = [v7 containsObject:v15];

          if (v16)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
    v4 = v20;
  }
}

- (void)setEpisodes:(id)a3
{
  v7 = a3;
  v4 = [(MTPlaylist *)self episodes];
  v5 = [v7 isEqualToOrderedSet:v4];

  if ((v5 & 1) == 0)
  {
    v6 = kPlaylistEpisodes;
    [(MTPlaylist *)self willChangeValueForKey:kPlaylistEpisodes];
    [(MTPlaylist *)self setPrimitiveValue:v7 forKey:v6];
    [(MTPlaylist *)self didChangeValueForKey:v6];
  }
}

- (id)podcasts
{
  v2 = [(MTPlaylist *)self settings];
  v3 = [v2 valueForKey:kPlaylistSettingPodcast];

  return v3;
}

- (void)setIsFolder:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTPlaylist *)self flags];
  if ((v5 & 1) != v3)
  {

    [(MTPlaylist *)self setFlags:v5 & 0xFFFFFFFFFFFFFFFELL | v3];
  }
}

- (void)setIsBuiltIn:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTPlaylist *)self flags];
  if (((((v5 & 8) == 0) ^ v3) & 1) == 0)
  {
    v6 = 8;
    if (!v3)
    {
      v6 = 0;
    }

    [(MTPlaylist *)self setFlags:v5 & 0xFFFFFFFFFFFFFFF7 | v6];
  }
}

- (void)setIsItunesSmartPlaylist:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTPlaylist *)self flags];
  if (((((v5 & 0x80) == 0) ^ v3) & 1) == 0)
  {
    v6 = 128;
    if (!v3)
    {
      v6 = 0;
    }

    [(MTPlaylist *)self setFlags:v5 & 0xFFFFFFFFFFFFFF7FLL | v6];
  }
}

- (BOOL)isEditable
{
  v2 = [(MTPlaylist *)self uuid];
  v3 = [v2 isEqualToString:kPlaylistITunesPlaylistUuid];

  return v3 ^ 1;
}

- (BOOL)updateUnplayedCount
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(MTPlaylist *)self episodes];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v6 += [v10 isPlayed] ^ 1;
        if ([v10 persistentID])
        {
          ++v7;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v11 = [(MTPlaylist *)self unplayedCount];
  v12 = v11 != v6;
  if (v11 != v6)
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

- (void)setHasBeenSynced:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTPlaylist *)self flags];
  if (((((v5 & 0x40) == 0) ^ v3) & 1) == 0)
  {
    v6 = 64;
    if (!v3)
    {
      v6 = 0;
    }

    [(MTPlaylist *)self setFlags:v5 & 0xFFFFFFFFFFFFFFBFLL | v6];
  }
}

- (void)recalculateEpisodeCounts
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(MTPlaylist *)self episodes];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v9 + 1) + 8 * i) isPlayed] ^ 1;
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  [(MTPlaylist *)self setUnplayedCount:v6];
}

- (void)removePodcast:(id)a3
{
  v4 = a3;
  v5 = [(MTPlaylist *)self managedObjectContext];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100008ADC;
  v21 = sub_10003B544;
  v22 = 0;
  v6 = [(MTPlaylist *)self settings];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000F603C;
  v14 = &unk_1004D8238;
  v7 = v4;
  v15 = v7;
  v16 = &v17;
  [v6 enumerateObjectsUsingBlock:&v11];

  if (v18[5])
  {
    [v5 deleteObject:{v11, v12, v13, v14}];
  }

  v8 = [(MTPlaylist *)self mutableSetValueForKey:kPlaylistDeletedEpisodes, v11, v12, v13, v14];
  v9 = [v7 episodes];
  [v8 minusSet:v9];

  v10 = [(MTPlaylist *)self mutableOrderedSetValueForKey:kPlaylistPodcasts];
  [v10 removeObject:v7];

  [(MTPlaylist *)self setNeedsUpdate:1];
  _Block_object_dispose(&v17, 8);
}

- (void)removePodcastEpisodes:(id)a3 shouldSave:(BOOL)a4
{
  v6 = a3;
  [(MTPlaylist *)self managedObjectContext];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000F61C0;
  v13 = &unk_1004D9668;
  v14 = self;
  v15 = v6;
  v16 = v17 = a4;
  v7 = v16;
  v8 = v6;
  [v7 performBlockAndWait:&v10];
  v9 = [_TtC18PodcastsFoundation18SyncKeysRepository shared:v10];
  [v9 setIsPlaylistSyncDirty:1];
}

- (void)removeEpisodes:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(MTPlaylist *)self removeEpisode:*(*(&v13 + 1) + 8 * v8) inBulkTransaction:1];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)removeEpisode:(id)a3 inBulkTransaction:(BOOL)a4
{
  v6 = a3;
  v7 = [(MTPlaylist *)self managedObjectContext];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000F667C;
  v14 = &unk_1004D9668;
  v15 = self;
  v8 = v6;
  v16 = v8;
  v18 = a4;
  v9 = v7;
  v17 = v9;
  [v9 performBlockAndWait:&v11];
  if (!a4)
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
  v2 = [(MTPlaylist *)self episodes];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * i) duration];
        v6 = v6 + v8;
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
    v3 = 0;
  }

  else
  {
    v4 = [(MTPlaylist *)self episodes];
    v3 = [v4 firstObject];
  }

  return v3;
}

- (int64_t)getFolderSubPlaylistsCount
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = +[MTDB sharedInstance];
  v4 = [v3 mainOrPrivateContext];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F6984;
  v8[3] = &unk_1004D87E8;
  v8[4] = self;
  v5 = v4;
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
  v3 = [v2 mainOrPrivateContext];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F6B6C;
  v7[3] = &unk_1004D8CC8;
  v4 = v3;
  v8 = v4;
  v9 = &v10;
  [v4 performBlockAndWait:v7];
  v5 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v5;
}

+ (id)stringForContainerOrder:(int)a3 short:(BOOL)a4
{
  v4 = 0;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v5 = [NSBundle mainBundle:*&a3];
        v6 = v5;
        v7 = @"Newest To Oldest";
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_15;
        }

        v5 = [NSBundle mainBundle:*&a3];
        v6 = v5;
        v7 = @"Manual";
      }
    }

    else
    {
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      if (a4)
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

  if (a3 == 3)
  {
    v5 = [NSBundle mainBundle:*&a3];
    v6 = v5;
    v7 = @"Oldest To Newest";
    goto LABEL_14;
  }

  if (a3 == 4 || a3 == 5)
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

+ (id)containerOrderOptionArray:(BOOL)a3
{
  v3 = a3;
  v5 = [a1 stringForContainerOrder:0 short:a3];
  v6 = [a1 stringForContainerOrder:1 short:{v3, v5}];
  v12[1] = v6;
  v7 = [a1 stringForContainerOrder:3 short:v3];
  v12[2] = v7;
  v8 = [a1 stringForContainerOrder:2 short:v3];
  v12[3] = v8;
  v9 = [a1 stringForContainerOrder:4 short:v3];
  v12[4] = v9;
  v10 = [NSArray arrayWithObjects:v12 count:5];

  return v10;
}

+ (id)predicateForFlag:(int)a3 isTrue:(BOOL)a4
{
  v4 = (1 << a3);
  if (a4)
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

+ (id)predicateForMediaLibraryId:(int64_t)a3
{
  v3 = kPlaylistMediaLibraryId;
  v4 = [NSNumber numberWithLongLong:a3];
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

  v5 = [(MTPlaylist *)self defaultSettings];
  v6 = [v5 metricsKeys];
  v16 = [v5 dictionaryWithValuesForKeys:v6];

  [v4 addEntriesFromDictionary:v16];
  v20[0] = @"settings";
  v20[1] = @"counts";
  v21[0] = v4;
  v18[0] = @"episodes";
  v7 = [(MTPlaylist *)self episodes];
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 count]);
  v19[0] = v8;
  v18[1] = @"podcasts";
  v9 = [(MTPlaylist *)self podcasts];
  v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 count]);
  v19[1] = v10;
  v18[2] = @"deletedEpisodes";
  v11 = [(MTPlaylist *)self deletedEpisodes];
  v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v11 count]);
  v19[2] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
  v21[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];

  return v14;
}

@end