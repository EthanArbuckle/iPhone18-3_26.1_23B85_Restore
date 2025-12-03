@interface MTBaseEpisodeListManifest
+ (id)_mediaItemForEpisode:(id)episode;
+ (id)mediaItemForEpisodeWithManagedObjectID:(id)d;
+ (id)mediaItemForEpisodeWithUUID:(id)d;
+ (void)episodeUuidForActivity:(id)activity completion:(id)completion;
- (MTBaseEpisodeListManifest)initWithInitialEpisodeUuid:(id)uuid;
- (id)_predicateForFilteringExplicitEpisodes;
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)count;
- (void)enumerateObjectsUsingBlock:(id)block;
- (void)postManifestDidChangeNotification;
@end

@implementation MTBaseEpisodeListManifest

- (MTBaseEpisodeListManifest)initWithInitialEpisodeUuid:(id)uuid
{
  uuidCopy = uuid;
  v8.receiver = self;
  v8.super_class = MTBaseEpisodeListManifest;
  v5 = [(MTPlayerManifest *)&v8 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    [(MTBaseEpisodeListManifest *)v5 setUuidToPlayerItemMap:v6];

    [(MTBaseEpisodeListManifest *)v5 setInitialEpisodeUuid:uuidCopy];
    [(MTBaseEpisodeListManifest *)v5 setIsInitialPrepare:1];
  }

  return v5;
}

- (unint64_t)count
{
  episodeUuids = [(MTBaseEpisodeListManifest *)self episodeUuids];
  v3 = [episodeUuids count];

  return v3;
}

- (id)objectAtIndex:(unint64_t)index
{
  if ([(MTBaseEpisodeListManifest *)self count]<= index)
  {
    v10 = 0;
  }

  else
  {
    episodeUuids = [(MTBaseEpisodeListManifest *)self episodeUuids];
    v6 = [episodeUuids objectAtIndex:index];

    uuidToPlayerItemMap = [(MTBaseEpisodeListManifest *)self uuidToPlayerItemMap];
    objc_sync_enter(uuidToPlayerItemMap);
    uuidToPlayerItemMap2 = [(MTBaseEpisodeListManifest *)self uuidToPlayerItemMap];
    v9 = [uuidToPlayerItemMap2 objectForKey:v6];

    objc_sync_exit(uuidToPlayerItemMap);
    if (v9)
    {
      [v9 setManifestIndex:index];
      v10 = v9;
    }

    else
    {
      uuidToManagedObjectIDMap = [(MTBaseEpisodeListManifest *)self uuidToManagedObjectIDMap];
      objc_sync_enter(uuidToManagedObjectIDMap);
      uuidToManagedObjectIDMap2 = [(MTBaseEpisodeListManifest *)self uuidToManagedObjectIDMap];
      v13 = [uuidToManagedObjectIDMap2 objectForKey:v6];

      objc_sync_exit(uuidToManagedObjectIDMap);
      v14 = objc_opt_class();
      if (v13)
      {
        [v14 mediaItemForEpisodeWithManagedObjectID:v13];
      }

      else
      {
        [v14 mediaItemForEpisodeWithUUID:v6];
      }
      v10 = ;
      [v10 setManifestIndex:index];
      [v10 setManifest:self];
      if (v10)
      {
        uuidToPlayerItemMap3 = [(MTBaseEpisodeListManifest *)self uuidToPlayerItemMap];
        objc_sync_enter(uuidToPlayerItemMap3);
        uuidToPlayerItemMap4 = [(MTBaseEpisodeListManifest *)self uuidToPlayerItemMap];
        [uuidToPlayerItemMap4 setObject:v10 forKey:v6];

        objc_sync_exit(uuidToPlayerItemMap3);
      }
    }
  }

  return v10;
}

- (void)enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v5 = +[MTDB sharedInstance];
    mainOrPrivateContext = [v5 mainOrPrivateContext];

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100131A9C;
    v7[3] = &unk_1004D9158;
    v7[4] = self;
    v8 = blockCopy;
    [mainOrPrivateContext performBlockAndWait:v7];
  }
}

+ (void)episodeUuidForActivity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  itemIdentifier = [activityCopy itemIdentifier];
  if ([itemIdentifier length])
  {
    containerIdentifier = [activityCopy containerIdentifier];
    if ([containerIdentifier length])
    {
      [MTEpisode predicateForEpisodeGuid:itemIdentifier onFeedURL:containerIdentifier];
    }

    else
    {
      [MTEpisode predicateForEpisodeGuid:itemIdentifier];
    }
    v9 = ;
    v10 = +[MTDB sharedInstance];
    playbackContext = [v10 playbackContext];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100131C58;
    v14[3] = &unk_1004DABC8;
    v15 = playbackContext;
    v16 = v9;
    v17 = completionCopy;
    v12 = v9;
    v13 = playbackContext;
    [v13 performBlock:v14];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

+ (id)mediaItemForEpisodeWithUUID:(id)d
{
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100008BAC;
  v20 = sub_10003B5AC;
  v21 = 0;
  v5 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v5 mainOrPrivateContext];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100131F18;
  v11[3] = &unk_1004DC790;
  v7 = mainOrPrivateContext;
  v12 = v7;
  v8 = dCopy;
  v13 = v8;
  v14 = &v16;
  selfCopy = self;
  [v7 performBlockAndWait:v11];
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

+ (id)mediaItemForEpisodeWithManagedObjectID:(id)d
{
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100008BAC;
  v20 = sub_10003B5AC;
  v21 = 0;
  v5 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v5 mainOrPrivateContext];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001320FC;
  v11[3] = &unk_1004DC790;
  v7 = mainOrPrivateContext;
  v12 = v7;
  v8 = dCopy;
  v13 = v8;
  v14 = &v16;
  selfCopy = self;
  [v7 performBlockAndWait:v11];
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

- (void)postManifestDidChangeNotification
{
  currentItem = [(MTBaseEpisodeListManifest *)self currentItem];
  if (currentItem)
  {
    v4 = currentItem;
    episodeUuids = self->_episodeUuids;
    currentItem2 = [(MTBaseEpisodeListManifest *)self currentItem];
    episodeUuid = [currentItem2 episodeUuid];
    LOBYTE(episodeUuids) = [(NSArray *)episodeUuids containsObject:episodeUuid];

    if ((episodeUuids & 1) == 0)
    {
      [(MTBaseEpisodeListManifest *)self setCurrentIndex:0x7FFFFFFFFFFFFFFFLL];
    }
  }

  if ([(MTBaseEpisodeListManifest *)self count])
  {
    currentItem3 = [(MTBaseEpisodeListManifest *)self currentItem];
    if (currentItem3)
    {
    }

    else if ([(MTBaseEpisodeListManifest *)self isInitialPrepare])
    {
      initialEpisodeUuid = [(MTBaseEpisodeListManifest *)self initialEpisodeUuid];

      if (initialEpisodeUuid)
      {
        v10 = self->_episodeUuids;
        initialEpisodeUuid2 = [(MTBaseEpisodeListManifest *)self initialEpisodeUuid];
        [(MTBaseEpisodeListManifest *)self setCurrentIndex:[(NSArray *)v10 indexOfObject:initialEpisodeUuid2]];
      }

      else if ([(MTBaseEpisodeListManifest *)self defaultToInitialIndexZero])
      {
        [(MTBaseEpisodeListManifest *)self setCurrentIndex:0];
      }

      [(MTBaseEpisodeListManifest *)self setIsInitialPrepare:0];
    }
  }

  v12.receiver = self;
  v12.super_class = MTBaseEpisodeListManifest;
  [(MTBaseEpisodeListManifest *)&v12 postManifestDidChangeNotification];
}

- (id)_predicateForFilteringExplicitEpisodes
{
  v2 = +[NSPredicate truePredicate];
  if ((+[PFRestrictionsController isExplicitContentAllowed]& 1) == 0)
  {
    v3 = [MTEpisode predicateForExplicit:0];

    v2 = v3;
  }

  return v2;
}

+ (id)_mediaItemForEpisode:(id)episode
{
  if (episode)
  {
    episodeCopy = episode;
    v4 = [[MTPlayerItem alloc] initWithEpisode:episodeCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end