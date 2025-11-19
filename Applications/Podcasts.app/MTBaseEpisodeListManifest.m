@interface MTBaseEpisodeListManifest
+ (id)_mediaItemForEpisode:(id)a3;
+ (id)mediaItemForEpisodeWithManagedObjectID:(id)a3;
+ (id)mediaItemForEpisodeWithUUID:(id)a3;
+ (void)episodeUuidForActivity:(id)a3 completion:(id)a4;
- (MTBaseEpisodeListManifest)initWithInitialEpisodeUuid:(id)a3;
- (id)_predicateForFilteringExplicitEpisodes;
- (id)objectAtIndex:(unint64_t)a3;
- (unint64_t)count;
- (void)enumerateObjectsUsingBlock:(id)a3;
- (void)postManifestDidChangeNotification;
@end

@implementation MTBaseEpisodeListManifest

- (MTBaseEpisodeListManifest)initWithInitialEpisodeUuid:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MTBaseEpisodeListManifest;
  v5 = [(MTPlayerManifest *)&v8 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    [(MTBaseEpisodeListManifest *)v5 setUuidToPlayerItemMap:v6];

    [(MTBaseEpisodeListManifest *)v5 setInitialEpisodeUuid:v4];
    [(MTBaseEpisodeListManifest *)v5 setIsInitialPrepare:1];
  }

  return v5;
}

- (unint64_t)count
{
  v2 = [(MTBaseEpisodeListManifest *)self episodeUuids];
  v3 = [v2 count];

  return v3;
}

- (id)objectAtIndex:(unint64_t)a3
{
  if ([(MTBaseEpisodeListManifest *)self count]<= a3)
  {
    v10 = 0;
  }

  else
  {
    v5 = [(MTBaseEpisodeListManifest *)self episodeUuids];
    v6 = [v5 objectAtIndex:a3];

    v7 = [(MTBaseEpisodeListManifest *)self uuidToPlayerItemMap];
    objc_sync_enter(v7);
    v8 = [(MTBaseEpisodeListManifest *)self uuidToPlayerItemMap];
    v9 = [v8 objectForKey:v6];

    objc_sync_exit(v7);
    if (v9)
    {
      [v9 setManifestIndex:a3];
      v10 = v9;
    }

    else
    {
      v11 = [(MTBaseEpisodeListManifest *)self uuidToManagedObjectIDMap];
      objc_sync_enter(v11);
      v12 = [(MTBaseEpisodeListManifest *)self uuidToManagedObjectIDMap];
      v13 = [v12 objectForKey:v6];

      objc_sync_exit(v11);
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
      [v10 setManifestIndex:a3];
      [v10 setManifest:self];
      if (v10)
      {
        v15 = [(MTBaseEpisodeListManifest *)self uuidToPlayerItemMap];
        objc_sync_enter(v15);
        v16 = [(MTBaseEpisodeListManifest *)self uuidToPlayerItemMap];
        [v16 setObject:v10 forKey:v6];

        objc_sync_exit(v15);
      }
    }
  }

  return v10;
}

- (void)enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[MTDB sharedInstance];
    v6 = [v5 mainOrPrivateContext];

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100131A9C;
    v7[3] = &unk_1004D9158;
    v7[4] = self;
    v8 = v4;
    [v6 performBlockAndWait:v7];
  }
}

+ (void)episodeUuidForActivity:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 itemIdentifier];
  if ([v7 length])
  {
    v8 = [v5 containerIdentifier];
    if ([v8 length])
    {
      [MTEpisode predicateForEpisodeGuid:v7 onFeedURL:v8];
    }

    else
    {
      [MTEpisode predicateForEpisodeGuid:v7];
    }
    v9 = ;
    v10 = +[MTDB sharedInstance];
    v11 = [v10 playbackContext];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100131C58;
    v14[3] = &unk_1004DABC8;
    v15 = v11;
    v16 = v9;
    v17 = v6;
    v12 = v9;
    v13 = v11;
    [v13 performBlock:v14];
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

+ (id)mediaItemForEpisodeWithUUID:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100008BAC;
  v20 = sub_10003B5AC;
  v21 = 0;
  v5 = +[MTDB sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100131F18;
  v11[3] = &unk_1004DC790;
  v7 = v6;
  v12 = v7;
  v8 = v4;
  v13 = v8;
  v14 = &v16;
  v15 = a1;
  [v7 performBlockAndWait:v11];
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

+ (id)mediaItemForEpisodeWithManagedObjectID:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100008BAC;
  v20 = sub_10003B5AC;
  v21 = 0;
  v5 = +[MTDB sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001320FC;
  v11[3] = &unk_1004DC790;
  v7 = v6;
  v12 = v7;
  v8 = v4;
  v13 = v8;
  v14 = &v16;
  v15 = a1;
  [v7 performBlockAndWait:v11];
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

- (void)postManifestDidChangeNotification
{
  v3 = [(MTBaseEpisodeListManifest *)self currentItem];
  if (v3)
  {
    v4 = v3;
    episodeUuids = self->_episodeUuids;
    v6 = [(MTBaseEpisodeListManifest *)self currentItem];
    v7 = [v6 episodeUuid];
    LOBYTE(episodeUuids) = [(NSArray *)episodeUuids containsObject:v7];

    if ((episodeUuids & 1) == 0)
    {
      [(MTBaseEpisodeListManifest *)self setCurrentIndex:0x7FFFFFFFFFFFFFFFLL];
    }
  }

  if ([(MTBaseEpisodeListManifest *)self count])
  {
    v8 = [(MTBaseEpisodeListManifest *)self currentItem];
    if (v8)
    {
    }

    else if ([(MTBaseEpisodeListManifest *)self isInitialPrepare])
    {
      v9 = [(MTBaseEpisodeListManifest *)self initialEpisodeUuid];

      if (v9)
      {
        v10 = self->_episodeUuids;
        v11 = [(MTBaseEpisodeListManifest *)self initialEpisodeUuid];
        [(MTBaseEpisodeListManifest *)self setCurrentIndex:[(NSArray *)v10 indexOfObject:v11]];
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

+ (id)_mediaItemForEpisode:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [[MTPlayerItem alloc] initWithEpisode:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end