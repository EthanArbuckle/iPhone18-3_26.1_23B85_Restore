@interface MTStoreManifest
+ (BOOL)storePlatformDictionaryHasChildren:(id)a3;
+ (id)_episodeStorePlatformDictionaryFromSiriAssetInfo:(id)a3 episodeAdamId:(id)a4;
+ (id)episodeCacheForStoreMediaDictionaries:(id)a3;
+ (id)playerItemsFromPodcastStorePlatformDictionary:(id)a3 oldestEpisode:(BOOL)a4 restricted:(BOOL *)a5 initiatedByAnotherUser:(BOOL)a6;
+ (id)podcastStorePlatformDictionaryFromSiriAssetInfo:(id)a3 podcastAdamId:(id)a4;
+ (id)storeMediaDictionariesToPlayerItems:(id)a3 initiatedByAnotherUser:(BOOL)a4;
+ (void)createManifestForActivity:(id)a3 completion:(id)a4;
+ (void)fetchPlayerItemsForStoreTrackIDs:(id)a3 initiatedByAnotherUser:(BOOL)a4 completion:(id)a5;
- (MTStoreManifest)initWithEpisodeAdamId:(id)a3 siriAssetInfo:(id)a4 initialIndex:(unint64_t)a5 initiatedByAnotherUser:(BOOL)a6;
- (MTStoreManifest)initWithItems:(id)a3 initialIndex:(unint64_t)a4;
- (MTStoreManifest)initWithPodcastAdamId:(id)a3 siriAssetInfo:(id)a4 oldestEpisode:(BOOL)a5 initiatedByAnotherUser:(BOOL)a6;
- (MTStoreManifest)initWithStoreMediaDictionaries:(id)a3 initialIndex:(unint64_t)a4;
- (id)_initWithEpisodeAdamIds:(id)a3 playheadPosition:(double)a4 initialIndex:(unint64_t)a5;
- (id)_initWithPodcastStorePlatformDictionary:(id)a3 oldestEpisode:(BOOL)a4;
- (id)activity;
- (void)_loadItemsFromEpisodeAdamIdsWithCompletion:(id)a3;
- (void)_updateLoadStatus:(BOOL)a3;
- (void)load:(id)a3;
@end

@implementation MTStoreManifest

- (MTStoreManifest)initWithEpisodeAdamId:(id)a3 siriAssetInfo:(id)a4 initialIndex:(unint64_t)a5 initiatedByAnotherUser:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [objc_opt_class() _episodeStorePlatformDictionaryFromSiriAssetInfo:v10 episodeAdamId:v9];

  if (!v11)
  {
    goto LABEL_7;
  }

  v21 = 0;
  v12 = [MTStorePlatformUtil storeMediaDictionaryFromStorePlatformDictionary:v11 artworkSize:&v21 restricted:kMTPreferredArtworkSize];
  if (!v12)
  {
    if (v21)
    {
      v15 = &__NSArray0__struct;
      goto LABEL_6;
    }

LABEL_7:
    v22 = v9;
    v18 = [NSArray arrayWithObjects:&v22 count:1];
    v19 = [(MTStoreManifest *)self _initWithEpisodeAdamIds:v18 playheadPosition:a5 initialIndex:0.0];

    v17 = v19;
    goto LABEL_8;
  }

  v13 = objc_opt_class();
  v23 = v12;
  v14 = [NSArray arrayWithObjects:&v23 count:1];
  v15 = [v13 storeMediaDictionariesToPlayerItems:v14 initiatedByAnotherUser:{-[MTStoreManifest initiatedByAnotherUser](self, "initiatedByAnotherUser")}];

LABEL_6:
  v16 = [(MTStoreManifest *)self initWithItems:v15 initialIndex:a5];
  [(MTStoreManifest *)v16 _updateLoadStatus:v21];
  v17 = v16;

LABEL_8:
  return v17;
}

- (MTStoreManifest)initWithPodcastAdamId:(id)a3 siriAssetInfo:(id)a4 oldestEpisode:(BOOL)a5 initiatedByAnotherUser:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = [objc_opt_class() podcastStorePlatformDictionaryFromSiriAssetInfo:v11 podcastAdamId:v10];

  v13 = [objc_opt_class() storePlatformDictionaryHasChildren:v12];
  v14 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v22 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "assetInfo has children %d", buf, 8u);
  }

  v15 = (v12 == 0) | v13 ^ 1;
  if (v15)
  {
    v20.receiver = self;
    v20.super_class = MTStoreManifest;
    v16 = [(MTPlayerManifest *)&v20 init];
  }

  else
  {
    v16 = [(MTStoreManifest *)self _initWithPodcastStorePlatformDictionary:v12 oldestEpisode:v7];
  }

  v17 = v16;
  if (v16)
  {
    [(MTStoreManifest *)v16 setPlayerItemsNeedLoading:v15 & 1];
    if (v7)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    [(MTStoreManifest *)v17 setPlaybackOrder:v18];
    [(MTStoreManifest *)v17 setPodcastAdamId:v10];
    [(MTStoreManifest *)v17 setInitiatedByAnotherUser:v6];
  }

  return v17;
}

- (id)_initWithEpisodeAdamIds:(id)a3 playheadPosition:(double)a4 initialIndex:(unint64_t)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = MTStoreManifest;
  v9 = [(MTPlayerManifest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(MTStoreManifest *)v9 setPlayerItemsNeedLoading:1];
    [(MTStoreManifest *)v10 setInitialPlayheadPosition:a4];
    [(MTStoreManifest *)v10 setInitialIndex:a5];
    [(MTStoreManifest *)v10 setEpisodeAdamIds:v8];
  }

  return v10;
}

- (id)_initWithPodcastStorePlatformDictionary:(id)a3 oldestEpisode:(BOOL)a4
{
  v4 = a4;
  v11 = 0;
  v6 = a3;
  v7 = [objc_opt_class() playerItemsFromPodcastStorePlatformDictionary:v6 oldestEpisode:v4 restricted:&v11 initiatedByAnotherUser:{-[MTStoreManifest initiatedByAnotherUser](self, "initiatedByAnotherUser")}];

  v8 = [(MTStoreManifest *)self initWithItems:v7];
  v9 = v8;
  if (v8)
  {
    [(MTStoreManifest *)v8 _updateLoadStatus:v11];
  }

  return v9;
}

- (void)load:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([(MTStoreManifest *)v5 playerItemsNeedLoading])
  {
    [(MTStoreManifest *)v5 setPlayerItemsNeedLoading:0];
    v6 = [(MTStoreManifest *)v5 episodeAdamIds];
    v7 = [v6 count];

    if (v7)
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1000D57E8;
      v28[3] = &unk_1004DB838;
      v28[4] = v5;
      v29 = v4;
      [(MTStoreManifest *)v5 _loadItemsFromEpisodeAdamIdsWithCompletion:v28];
    }

    else
    {
      v8 = [(MTStoreManifest *)v5 podcastAdamId];
      v9 = [MTStoreIdentifier isNotEmptyNumber:v8];

      objc_initWeak(&location, v5);
      if (v9)
      {
        v10 = [IMContentLookupService alloc];
        v11 = [(MTStoreManifest *)v5 podcastAdamId];
        v12 = [v11 stringValue];
        v30 = v12;
        v13 = [NSArray arrayWithObjects:&v30 count:1];
        v14 = [v10 initWithIds:v13];

        v15 = +[NSDate date];
        [v14 setProfile:kMTStoreLookupPodcastProductProfile];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_1000D5958;
        v22[3] = &unk_1004DB860;
        v16 = v15;
        v23 = v16;
        objc_copyWeak(&v26, &location);
        v24 = v5;
        v25 = v4;
        [v14 request:v22];

        objc_destroyWeak(&v26);
        objc_destroyWeak(&location);
      }

      else
      {
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_1000D5C14;
        v19[3] = &unk_1004DB888;
        objc_copyWeak(&v21, &location);
        v20 = v4;
        v18.receiver = v5;
        v18.super_class = MTStoreManifest;
        [(MTStoreManifest *)&v18 load:v19];

        objc_destroyWeak(&v21);
        objc_destroyWeak(&location);
      }
    }
  }

  else
  {
    v17.receiver = v5;
    v17.super_class = MTStoreManifest;
    [(MTStoreManifest *)&v17 load:v4];
  }

  objc_sync_exit(v5);
}

- (MTStoreManifest)initWithStoreMediaDictionaries:(id)a3 initialIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [objc_opt_class() storeMediaDictionariesToPlayerItems:v6];

  v8 = [(MTStoreManifest *)self initWithItems:v7 initialIndex:a4];
  return v8;
}

- (MTStoreManifest)initWithItems:(id)a3 initialIndex:(unint64_t)a4
{
  v6 = a3;
  v27.receiver = self;
  v27.super_class = MTStoreManifest;
  v7 = [(MTItemListManifest *)&v27 initWithItems:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [(MTItemListManifest *)v7 items];
    if ([v9 count] <= a4)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = a4;
    }

    [(MTStoreManifest *)v8 setCurrentIndex:v10];

    v11 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          if ([v17 episodeStoreId] >= 1)
          {
            v18 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v17 episodeStoreId]);
            [v11 addObject:v18];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v14);
    }

    v19 = [v11 copy];
    [(MTStoreManifest *)v8 setEpisodeAdamIds:v19];

    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"Directory" value:&stru_1004F3018 table:0];
    [(MTStoreManifest *)v8 setTitle:v21];
  }

  return v8;
}

- (void)_updateLoadStatus:(BOOL)a3
{
  v5 = [(MTStoreManifest *)self isLoaded];
  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  if (v5 && !a3)
  {
    v7 = [(MTItemListManifest *)self items];
    v8 = [v7 count];

    if (v8)
    {
      v6 = 1;
    }

    else
    {
      v6 = 3;
    }
  }

  [(MTStoreManifest *)self setLoadStatus:v6];
}

- (void)_loadItemsFromEpisodeAdamIdsWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  [(MTStoreManifest *)self initialPlayheadPosition];
  v15[3] = v5;
  v6 = [(MTStoreManifest *)self initialIndex];
  v7 = objc_opt_class();
  v8 = [(MTStoreManifest *)self episodeAdamIds];
  v9 = [(MTStoreManifest *)self initiatedByAnotherUser];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000D6120;
  v11[3] = &unk_1004DB8D8;
  objc_copyWeak(v14, &location);
  v14[1] = v6;
  v13 = v15;
  v10 = v4;
  v12 = v10;
  [v7 fetchPlayerItemsForStoreTrackIDs:v8 initiatedByAnotherUser:v9 completion:v11];

  objc_destroyWeak(v14);
  _Block_object_dispose(v15, 8);
  objc_destroyWeak(&location);
}

- (id)activity
{
  v7.receiver = self;
  v7.super_class = MTStoreManifest;
  v3 = [(MTPlayerManifest *)&v7 activity];
  v4 = [NSNumber numberWithUnsignedInteger:[(MTStoreManifest *)self currentIndex]];
  [v3 setValue:v4 forKey:@"MTStoreManifestCurrentIndex"];

  v5 = [(MTStoreManifest *)self episodeAdamIds];
  [v3 setValue:v5 forKey:@"MTStoreManifestAdamIdList"];

  return v3;
}

+ (void)createManifestForActivity:(id)a3 completion:(id)a4
{
  v15 = a3;
  v5 = a4;
  v6 = +[MTReachability sharedInstance];
  v7 = [v6 isReachable];

  if (v7)
  {
    v8 = [v15 userInfo];
    v9 = [v8 valueForKey:@"MTStoreManifestAdamIdList"];

    if ([v9 count])
    {
      v10 = [v15 userInfo];
      v11 = [v10 valueForKey:@"MTStoreManifestCurrentIndex"];

      v12 = [MTStoreManifest alloc];
      [v15 currentTime];
      v14 = -[MTStoreManifest _initWithEpisodeAdamIds:playheadPosition:initialIndex:](v12, "_initWithEpisodeAdamIds:playheadPosition:initialIndex:", v9, [v11 unsignedIntegerValue], v13);
      v5[2](v5, v14);
    }

    else
    {
      v5[2](v5, 0);
    }
  }

  else
  {
    v5[2](v5, 0);
  }
}

+ (BOOL)storePlatformDictionaryHasChildren:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"childrenIds"];
  objc_opt_class();
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && [v3 count] != 0;

  return v4;
}

+ (id)playerItemsFromPodcastStorePlatformDictionary:(id)a3 oldestEpisode:(BOOL)a4 restricted:(BOOL *)a5 initiatedByAnotherUser:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = [v10 objectForKeyedSubscript:@"childrenIds"];
  v12 = [v10 objectForKeyedSubscript:@"children"];
  if (a4)
  {
    [v11 lastObject];
  }

  else
  {
    [v11 firstObject];
  }
  v13 = ;
  v14 = [v13 stringValue];
  v15 = [v12 objectForKeyedSubscript:v14];

  if (v15)
  {
    v22 = 0;
    v16 = [v10 objectForKeyedSubscript:@"isNotSubscribeable"];
    v17 = [v16 BOOLValue];

    v18 = [MTStorePlatformUtil storeMediaDictionaryFromStorePlatformDictionary:v15 artworkSize:&v22 restricted:v17 isNotSubscribeable:kMTPreferredArtworkSize];
    if (+[MTStorePlatformUtil isExplicitForStorePlatformDictionary:](MTStorePlatformUtil, "isExplicitForStorePlatformDictionary:", v10) && (+[PFRestrictionsController isExplicitContentAllowed]& 1) == 0)
    {
      v22 = 1;
    }

    if (a5)
    {
      *a5 = v22;
    }

    if (v18)
    {
      v23 = v18;
      v19 = [NSArray arrayWithObjects:&v23 count:1];
      v20 = [a1 storeMediaDictionariesToPlayerItems:v19 initiatedByAnotherUser:v6];
    }

    else
    {
      v20 = &__NSArray0__struct;
    }
  }

  else
  {
    v20 = &__NSArray0__struct;
  }

  return v20;
}

+ (id)podcastStorePlatformDictionaryFromSiriAssetInfo:(id)a3 podcastAdamId:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = [a3 dataUsingEncoding:4];
    v18 = 0;
    v7 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:&v18];
    v8 = v7;
    v9 = 0;
    if (!v18)
    {
      v10 = [v7 objectForKey:@"results"];
      v11 = [v5 stringValue];
      v12 = [v10 objectForKey:v11];

      v13 = [v12 objectForKey:@"firstAndLastChildrenIds"];
      v14 = [v12 objectForKey:@"firstAndLastChildren"];
      v15 = sub_1000D69F0(v14, v12);
      if (v15 & 1) != 0 || (v16 = sub_1000D69F0(v15, v13), (v16) || (sub_1000D69F0(v16, v14))
      {
        v9 = 0;
      }

      else
      {
        v9 = [v12 mutableCopy];
        [v9 removeObjectForKey:@"firstAndLastChildrenIds"];
        [v9 removeObjectForKey:@"firstAndLastChildren"];
        [v9 setObject:v13 forKey:@"childrenIds"];
        [v9 setObject:v14 forKey:@"children"];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_episodeStorePlatformDictionaryFromSiriAssetInfo:(id)a3 episodeAdamId:(id)a4
{
  v5 = a4;
  v6 = v5;
  v7 = 0;
  if (a3 && v5)
  {
    v8 = [a3 dataUsingEncoding:4];
    v14 = 0;
    v9 = [NSJSONSerialization JSONObjectWithData:v8 options:0 error:&v14];
    v10 = v9;
    v7 = 0;
    if (!v14)
    {
      v11 = [v9 objectForKey:@"results"];
      v12 = [v6 stringValue];
      v7 = [v11 objectForKey:v12];
    }
  }

  return v7;
}

+ (id)episodeCacheForStoreMediaDictionaries:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v5 = kEpisodeEnclosureUrl;
  v6 = [v3 valueForKey:kEpisodeAssetURL];

  v7 = [NSPredicate predicateWithFormat:@"%K in %@", v5, v6];

  v8 = +[MTEpisode propertiesToFetchAssetURL];
  v24[0] = v5;
  v24[1] = kEpisodeUuid;
  v9 = [NSArray arrayWithObjects:v24 count:2];
  v10 = [v8 arrayByAddingObjectsFromArray:v9];

  v11 = +[MTDB sharedInstance];
  v12 = [v11 mainOrPrivateContext];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000D6D60;
  v19[3] = &unk_1004D8DA8;
  v20 = v12;
  v21 = v7;
  v22 = v10;
  v23 = v4;
  v13 = v4;
  v14 = v10;
  v15 = v7;
  v16 = v12;
  [v16 performBlockAndWait:v19];
  v17 = [v13 copy];

  return v17;
}

+ (id)storeMediaDictionariesToPlayerItems:(id)a3 initiatedByAnotherUser:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v61 = v4;
  if (v4)
  {
    v62 = 0;
  }

  else
  {
    v62 = [a1 episodeCacheForStoreMediaDictionaries:v6];
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v6;
  v64 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
  if (v64)
  {
    v63 = *v70;
    v8 = kEpisodeAssetURL;
    v58 = kEpisodeUuid;
    v55 = vcvtpd_s64_f64(kMTPreferredArtworkSize);
    v57 = kEpisodePubDate;
    v59 = kEpisodeAssetURL;
    v60 = v7;
    do
    {
      for (i = 0; i != v64; i = i + 1)
      {
        if (*v70 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v69 + 1) + 8 * i);
        v11 = [v10 objectForKey:v8];
        if ([v11 length])
        {
          v12 = [v62 objectForKey:v11];
        }

        else
        {
          v12 = 0;
        }

        v13 = [v12 objectForKey:v8];
        if ([v13 length])
        {
          v14 = v13;

          v11 = v14;
        }

        if ([v11 length])
        {
          v66 = v13;
          v15 = [MTPlayerItem alloc];
          v16 = [NSURL URLWithString:v11];
          v17 = [(MTPlayerItem *)v15 initWithUrl:v16];

          -[NSObject setManifestIndex:](v17, "setManifestIndex:", [v7 count]);
          v18 = [v12 objectForKey:v58];
          if ([v18 length])
          {
            [v17 setEpisodeUuid:v18];
          }

          v65 = v18;
          v19 = [v10 objectForKeyedSubscript:@"episodeId"];
          v20 = +[MTStoreIdentifier validatedIdNumberFromStoreId:](MTStoreIdentifier, "validatedIdNumberFromStoreId:", [v19 longLongValue]);
          -[NSObject setEpisodeStoreId:](v17, "setEpisodeStoreId:", [v20 longLongValue]);

          v21 = [v10 objectForKeyedSubscript:@"episodeGuid"];
          [v17 setEpisodeGuid:v21];

          [v17 setEnqueuedByAnotherUser:v61];
          v22 = [v10 objectForKeyedSubscript:@"feedURL"];
          [v17 setPodcastFeedUrl:v22];

          v23 = [v10 objectForKeyedSubscript:@"podcastId"];
          -[NSObject setPodcastStoreId:](v17, "setPodcastStoreId:", [v23 longLongValue]);

          v24 = [v10 objectForKeyedSubscript:@"isNotSubscribeable"];
          -[NSObject setIsNotSubscribeable:](v17, "setIsNotSubscribeable:", [v24 BOOLValue]);

          v25 = [v10 objectForKeyedSubscript:@"episodeTitle"];
          [v17 setTitle:v25];

          v26 = [v10 objectForKeyedSubscript:@"episodeDescription"];
          [v17 setItemDescription:v26];

          v27 = [v10 objectForKeyedSubscript:@"episodeShareUrl"];
          [v17 setEpisodeShareUrl:v27];

          v28 = [v10 objectForKeyedSubscript:@"podcastTitle"];
          [v17 setAuthor:v28];

          v29 = [MTStorePlatformUtil pubDateFromStoreMediaDictionary:v10];
          [v17 setPubDate:v29];

          v30 = [v10 objectForKeyedSubscript:v57];
          if (v30)
          {
            [v17 setAlbum:v30];
          }

          else
          {
            v31 = [v17 pubDate];
            v32 = [v31 verboseDisplayString];
            [v17 setAlbum:v32];
          }

          v33 = [v10 objectForKeyedSubscript:@"explicit"];
          -[NSObject setIsExplicit:](v17, "setIsExplicit:", [v33 BOOLValue]);

          v34 = [v10 objectForKeyedSubscript:@"duration"];
          if (objc_opt_respondsToSelector())
          {
            -[NSObject setDuration:](v17, "setDuration:", [v34 longLongValue]);
          }

          else
          {
            v35 = +[IMLogger sharedLogger];
            [v35 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Classes/Support/MTStoreManifest.m" lineNumber:480 format:{@"Store item %lld is missing a duration", -[NSObject episodeStoreId](v17, "episodeStoreId")}];
          }

          v67 = v12;
          v36 = [v10 objectForKeyedSubscript:@"reportParams"];
          if (v36)
          {
            [v17 setStoreReportingParams:v36];
          }

          v68 = v11;
          v37 = [v10 objectForKeyedSubscript:@"artworkURL"];
          if ([v37 count])
          {
            v38 = [v37 lastObject];
            v39 = [v38 objectForKeyedSubscript:@"url"];
            v40 = [NSURL URLWithString:v39];
            [v17 setArtworkUrl:v40];
          }

          v41 = [v17 artworkUrl];
          v42 = [v41 absoluteString];
          v43 = [v42 length];

          if (!v43)
          {
            v44 = [v10 objectForKeyedSubscript:@"artwork"];
            v45 = [v44 objectForKeyedSubscript:@"url"];
            if ([v45 length])
            {
              v46 = [NSString stringWithFormat:@"%lix%li", v55, v55];
              v47 = [v45 stringByReplacingOccurrencesOfString:@"{w}x{h}" withString:v46];
              v48 = [v47 stringByReplacingOccurrencesOfString:@".{f}" withString:@".jpg"];

              v49 = [NSURL URLWithString:v48];
              [v17 setArtworkUrl:v49];
            }
          }

          v11 = v68;
          v50 = [NSURL URLWithString:v68];
          v51 = [v50 pathExtension];
          v52 = [IMUTITypes UTIByExtension:v51];

          if (v52)
          {
            [v17 setIsVideo:[MTUTIUtil isVideo:v52]];
          }

          v7 = v60;
          [v60 addObject:v17];

          v8 = v59;
          v13 = v66;
          v12 = v67;
        }

        else
        {
          v17 = _MTLogCategoryPlayback();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v74 = v10;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Skipping player item creation for item %@ because we couldn't play locally or stream", buf, 0xCu);
          }
        }
      }

      v64 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
    }

    while (v64);
  }

  v53 = [v7 copy];

  return v53;
}

+ (void)fetchPlayerItemsForStoreTrackIDs:(id)a3 initiatedByAnotherUser:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 count])
  {
    v10 = [v8 mt_compactMap:&stru_1004DB8F8];
    v11 = [[IMContentLookupService alloc] initWithIds:v10];
    [v11 setProfile:kMTStoreLookupPodcastProductProfile];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000D7954;
    v14[3] = &unk_1004DB920;
    v15 = v10;
    v17 = a1;
    v18 = a4;
    v16 = v9;
    v12 = v10;
    [v11 request:v14];
  }

  else
  {
    v13 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = a1;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@ Found 0 store track IDs", buf, 0xCu);
    }

    if (v9)
    {
      (*(v9 + 2))(v9, 0, 0);
    }
  }
}

@end