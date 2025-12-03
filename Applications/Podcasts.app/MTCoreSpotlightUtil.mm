@interface MTCoreSpotlightUtil
+ (id)_uniqueIdentifierForPodcast:(id)podcast;
+ (id)artworkBridge;
+ (id)fetchRequestForIndexType:(unint64_t)type;
+ (id)fetchRequestForIndexType:(unint64_t)type additionalPredicate:(id)predicate;
+ (id)indexPathForObjectType:(unint64_t)type batch:(unint64_t)batch indexInBatch:(unint64_t)inBatch;
+ (id)uniqueIdentifierForEpisodeInPlayerItem:(id)item;
+ (id)uniqueIdentifierForObject:(id)object;
+ (id)uniqueIdentifierForPodcastInPlayerItem:(id)item;
+ (void)configureArtworkForSearchableItemAttributeSet:(id)set withPodcast:(id)podcast completion:(id)completion;
+ (void)prepareSearchableItemForEpisode:(id)episode annotator:(id)annotator completion:(id)completion;
+ (void)prepareSearchableItemForObject:(id)object annotator:(id)annotator completion:(id)completion;
+ (void)prepareSearchableItemForPlayerItem:(id)item annotator:(id)annotator completion:(id)completion;
+ (void)prepareSearchableItemForPodcast:(id)podcast annotator:(id)annotator completion:(id)completion;
+ (void)prepareSearchableItemForStation:(id)station annotator:(id)annotator completion:(id)completion;
+ (void)prepareSearchableItemsForObjectInArray:(id)array annotator:(id)annotator completion:(id)completion;
@end

@implementation MTCoreSpotlightUtil

+ (void)prepareSearchableItemForObject:(id)object annotator:(id)annotator completion:(id)completion
{
  objectCopy = object;
  annotatorCopy = annotator;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [self prepareSearchableItemForPodcast:objectCopy annotator:annotatorCopy completion:completionCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [self prepareSearchableItemForEpisode:objectCopy annotator:annotatorCopy completion:completionCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [self prepareSearchableItemForStation:objectCopy annotator:annotatorCopy completion:completionCopy];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [self prepareSearchableItemForPlayerItem:objectCopy annotator:annotatorCopy completion:completionCopy];
        }

        else
        {
          v11 = _MTLogCategorySpotlight();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = 138412290;
            v13 = objectCopy;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Invalid object, can not index %@", &v12, 0xCu);
          }

          completionCopy[2](completionCopy, 0);
        }
      }
    }
  }
}

+ (void)prepareSearchableItemsForObjectInArray:(id)array annotator:(id)annotator completion:(id)completion
{
  annotatorCopy = annotator;
  completionCopy = completion;
  if (completionCopy)
  {
    arrayCopy = array;
    v10 = +[NSMutableArray array];
    v11 = dispatch_group_create();
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000D8A74;
    v26[3] = &unk_1004DBA08;
    v27 = dispatch_queue_create(0, 0);
    v12 = v10;
    v28 = v12;
    v13 = v27;
    v14 = objc_retainBlock(v26);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000D8B34;
    v22[3] = &unk_1004DBA58;
    v23 = v11;
    v24 = annotatorCopy;
    v25 = v14;
    v15 = v14;
    v16 = v11;
    [arrayCopy enumerateObjectsUsingBlock:v22];

    v17 = dispatch_get_global_queue(-32768, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D8C5C;
    block[3] = &unk_1004D9158;
    v20 = v12;
    v21 = completionCopy;
    v18 = v12;
    dispatch_group_notify(v16, v17, block);
  }
}

+ (id)uniqueIdentifierForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [self _uniqueIdentifierForPodcast:objectCopy];
LABEL_3:
    v6 = &stru_1004F3018;
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    guid = [objectCopy guid];
    v8 = guid;
    if (guid)
    {
      v6 = guid;
    }

    else
    {
      v6 = &stru_1004F3018;
    }

    v12 = @"e";
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = objectCopy;
        v5 = [self uniqueIdentifierForPodcastInPlayerItem:v10];
        if (![v5 length])
        {
          v11 = [self uniqueIdentifierForEpisodeInPlayerItem:v10];

          v5 = v11;
        }
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_3;
    }

    uuid = [objectCopy uuid];
    v8 = uuid;
    if (uuid)
    {
      v6 = uuid;
    }

    else
    {
      v6 = &stru_1004F3018;
    }

    v12 = @"s";
  }

  v5 = [(__CFString *)v12 stringByAppendingString:v6];

LABEL_20:

  return v5;
}

+ (id)uniqueIdentifierForEpisodeInPlayerItem:(id)item
{
  itemCopy = item;
  episode = [itemCopy episode];

  if (episode)
  {
    episode2 = [itemCopy episode];
    v7 = [self uniqueIdentifierForObject:episode2];
LABEL_3:
    v8 = v7;
LABEL_6:

    goto LABEL_7;
  }

  if ([itemCopy episodeStoreId])
  {
    episode2 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [itemCopy episodeStoreId]);
    stringValue = [episode2 stringValue];
    v8 = [@"es" stringByAppendingString:stringValue];

    goto LABEL_6;
  }

  episodeGuid = [itemCopy episodeGuid];

  if (episodeGuid)
  {
    episode2 = [itemCopy episodeGuid];
    v7 = [@"e" stringByAppendingString:episode2];
    goto LABEL_3;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

+ (id)uniqueIdentifierForPodcastInPlayerItem:(id)item
{
  itemCopy = item;
  episode = [itemCopy episode];
  podcast = [episode podcast];

  if (podcast)
  {
    episode2 = [itemCopy episode];
    podcast2 = [episode2 podcast];
    v9 = [self uniqueIdentifierForObject:podcast2];
LABEL_5:
    v10 = v9;

LABEL_6:
    goto LABEL_7;
  }

  if ([itemCopy podcastStoreId])
  {
    episode2 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [itemCopy podcastStoreId]);
    podcast2 = [episode2 stringValue];
    v9 = [@"ps" stringByAppendingString:podcast2];
    goto LABEL_5;
  }

  podcastFeedUrl = [itemCopy podcastFeedUrl];

  if (podcastFeedUrl)
  {
    episode2 = [itemCopy podcastFeedUrl];
    v10 = [@"p" stringByAppendingString:episode2];
    goto LABEL_6;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

+ (id)fetchRequestForIndexType:(unint64_t)type
{
  v5 = [NSPredicate predicateWithValue:1];
  v6 = [self fetchRequestForIndexType:type additionalPredicate:v5];

  return v6;
}

+ (id)artworkBridge
{
  if (qword_100583C30 != -1)
  {
    sub_1003B2C74();
  }

  v3 = qword_100583C28;

  return v3;
}

+ (void)configureArtworkForSearchableItemAttributeSet:(id)set withPodcast:(id)podcast completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D9214;
  v7[3] = &unk_1004DBAA0;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = objc_retainBlock(v7);
  (v6[2])(v6, 0);
}

+ (id)_uniqueIdentifierForPodcast:(id)podcast
{
  podcastCopy = podcast;
  currentFeedURL = [podcastCopy currentFeedURL];
  v5 = currentFeedURL;
  if (currentFeedURL)
  {
    absoluteString = [currentFeedURL absoluteString];
  }

  else
  {
    uuid = [podcastCopy uuid];
    v8 = uuid;
    if (uuid)
    {
      absoluteString = uuid;
    }

    else
    {
      absoluteString = &stru_1004F3018;
    }
  }

  v9 = [@"p" stringByAppendingString:absoluteString];

  return v9;
}

+ (id)fetchRequestForIndexType:(unint64_t)type additionalPredicate:(id)predicate
{
  predicateCopy = predicate;
  switch(type)
  {
    case 2uLL:
      v17 = [NSFetchRequest alloc];
      v7 = [v17 initWithEntityName:kMTPlaylistEntityName];
      v18 = +[MTPlaylist topLevelPlaylistsPredicate];
      v19 = [v18 AND:predicateCopy];
      [v7 setPredicate:v19];

      v20 = [NSSortDescriptor alloc];
      v11 = [v20 initWithKey:kPlaylistTitle ascending:1];
      v23 = v11;
      v12 = &v23;
      goto LABEL_7;
    case 1uLL:
      v13 = [NSFetchRequest alloc];
      v7 = [v13 initWithEntityName:kMTEpisodeEntityName];
      v14 = +[MTEpisode predicateForPodcastIsNotHiddenNotImplicitlyFollowed];
      v15 = [v14 AND:predicateCopy];
      [v7 setPredicate:v15];

      v16 = [NSSortDescriptor alloc];
      v11 = [v16 initWithKey:kEpisodePubDate ascending:1];
      v24 = v11;
      v12 = &v24;
      goto LABEL_7;
    case 0uLL:
      v6 = [NSFetchRequest alloc];
      v7 = [v6 initWithEntityName:kMTPodcastEntityName];
      v8 = +[MTPodcast predicateForNotHiddenNotImplicitlyFollowedPodcasts];
      v9 = [v8 AND:predicateCopy];
      [v7 setPredicate:v9];

      v10 = [NSSortDescriptor alloc];
      v11 = [v10 initWithKey:kPodcastAddedDate ascending:1];
      v25 = v11;
      v12 = &v25;
LABEL_7:
      v21 = [NSArray arrayWithObjects:v12 count:1, v23, v24, v25];
      [v7 setSortDescriptors:v21];

      goto LABEL_9;
  }

  v7 = 0;
LABEL_9:
  [v7 setFetchLimit:5];

  return v7;
}

+ (void)prepareSearchableItemForPodcast:(id)podcast annotator:(id)annotator completion:(id)completion
{
  podcastCopy = podcast;
  completionCopy = completion;
  if (completionCopy)
  {
    annotatorCopy = annotator;
    uuid = [podcastCopy uuid];
    title = [podcastCopy title];
    v13 = [[CSSearchableItemAttributeSet alloc] initWithContentType:UTTypeAudiovisualContent];
    v14 = +[NSDate distantFuture];
    [v13 setExpirationDate:v14];

    [v13 setDisplayName:title];
    currentFeedURL = [podcastCopy currentFeedURL];
    [v13 setContentURL:currentFeedURL];

    bestDescription = [podcastCopy bestDescription];
    [v13 setContentDescription:bestDescription];

    [v13 setContentType:@"com.apple.podcasts.show"];
    bestDescription2 = [podcastCopy bestDescription];
    [v13 setInformation:bestDescription2];

    [podcastCopy downloadedDate];
    if (v18 != 0.0)
    {
      [podcastCopy downloadedDate];
      v19 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [v13 setDownloadedDate:v19];
    }

    [podcastCopy lastTouchDate];
    if (v20 != 0.0)
    {
      [podcastCopy lastTouchDate];
      v21 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [v13 setLastUsedDate:v21];
    }

    author = [podcastCopy author];

    if (author)
    {
      author2 = [podcastCopy author];
      v36 = author2;
      v24 = [NSArray arrayWithObjects:&v36 count:1];
      [v13 setAuthorNames:v24];
    }

    v25 = [self uniqueIdentifierForObject:podcastCopy];
    v26 = objc_alloc_init(CSSearchableItem);
    [v26 setUniqueIdentifier:v25];
    [v26 setAttributeSet:v13];
    v27 = [annotatorCopy annotateItem:v26 withManagedObject:podcastCopy];

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000D98A4;
    v31[3] = &unk_1004DBAC8;
    v32 = v27;
    v33 = uuid;
    v34 = title;
    v35 = completionCopy;
    v28 = title;
    v29 = uuid;
    v30 = v27;
    [self configureArtworkForSearchableItemAttributeSet:v13 withPodcast:podcastCopy completion:v31];
  }
}

+ (void)prepareSearchableItemForEpisode:(id)episode annotator:(id)annotator completion:(id)completion
{
  episodeCopy = episode;
  completionCopy = completion;
  if (completionCopy)
  {
    annotatorCopy = annotator;
    uuid = [episodeCopy uuid];
    title = [episodeCopy title];
    v12 = [[CSSearchableItemAttributeSet alloc] initWithContentType:UTTypeAudiovisualContent];
    v13 = +[NSDate distantFuture];
    [v12 setExpirationDate:v13];

    bestTitle = [episodeCopy bestTitle];
    [v12 setDisplayName:bestTitle];

    v15 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [episodeCopy playCount]);
    [v12 setPlayCount:v15];

    podcast = [episodeCopy podcast];
    title2 = [podcast title];
    [v12 setContainerTitle:title2];

    bestSummary = [episodeCopy bestSummary];
    [v12 setContentDescription:bestSummary];

    [v12 setContentType:@"com.apple.podcasts.episode"];
    bestSummary2 = [episodeCopy bestSummary];
    [v12 setInformation:bestSummary2];

    [episodeCopy duration];
    v20 = [NSNumber numberWithDouble:?];
    [v12 setDuration:v20];

    v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [episodeCopy isDownloaded]);
    [v12 setLocal:v21];

    v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [episodeCopy externalType]);
    [v12 setStreamable:v22];

    v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [episodeCopy isExplicit]);
    [v12 setContentRating:v23];

    [episodeCopy pubDate];
    if (v24 != 0.0)
    {
      [episodeCopy pubDate];
      v25 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [v12 setContentCreationDate:v25];
    }

    [episodeCopy downloadDate];
    if (v26 != 0.0)
    {
      [episodeCopy downloadDate];
      v27 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [v12 setDownloadedDate:v27];
    }

    [episodeCopy lastDatePlayed];
    if (v28 != 0.0)
    {
      [episodeCopy lastDatePlayed];
      v29 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [v12 setLastUsedDate:v29];
    }

    if (![episodeCopy playState])
    {
      [episodeCopy lastDatePlayed];
      if (v30 != 0.0)
      {
        [episodeCopy lastDatePlayed];
        v31 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
        [v12 setCompletionDate:v31];
      }
    }

    author = [episodeCopy author];

    if (author)
    {
      author2 = [episodeCopy author];
      v53 = author2;
      v34 = [NSArray arrayWithObjects:&v53 count:1];
      [v12 setAuthorNames:v34];
    }

    assetURL = [episodeCopy assetURL];

    if (assetURL)
    {
      assetURL2 = [episodeCopy assetURL];
      v37 = [NSURL URLWithString:assetURL2];
      [v12 setContentURL:v37];
    }

    v38 = [self uniqueIdentifierForObject:episodeCopy];
    podcast2 = [episodeCopy podcast];
    v40 = [MTCoreSpotlightUtil uniqueIdentifierForObject:podcast2];

    [v12 setRelatedUniqueIdentifier:v40];
    [v12 setDomainIdentifier:v40];
    v41 = objc_alloc_init(CSSearchableItem);
    [v41 setUniqueIdentifier:v38];
    [v41 setAttributeSet:v12];
    v42 = [annotatorCopy annotateItem:v41 withManagedObject:episodeCopy];

    podcast3 = [episodeCopy podcast];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1000D9ECC;
    v48[3] = &unk_1004DBAC8;
    v49 = v42;
    v50 = uuid;
    v51 = title;
    v52 = completionCopy;
    v44 = title;
    v45 = uuid;
    v46 = v42;
    [self configureArtworkForSearchableItemAttributeSet:v12 withPodcast:podcast3 completion:v48];
  }
}

+ (void)prepareSearchableItemForPlayerItem:(id)item annotator:(id)annotator completion:(id)completion
{
  itemCopy = item;
  annotatorCopy = annotator;
  completionCopy = completion;
  episode = [itemCopy episode];
  if (episode)
  {
    [self prepareSearchableItemForEpisode:episode annotator:annotatorCopy completion:completionCopy];
  }

  else
  {
    v12 = [[CSSearchableItemAttributeSet alloc] initWithContentType:UTTypeAudiovisualContent];
    v13 = +[NSDate distantFuture];
    [v12 setExpirationDate:v13];

    title = [itemCopy title];
    [v12 setDisplayName:title];

    album = [itemCopy album];
    [v12 setContainerTitle:album];

    itemDescription = [itemCopy itemDescription];
    [v12 setContentDescription:itemDescription];

    itemDescription2 = [itemCopy itemDescription];
    [v12 setInformation:itemDescription2];

    [itemCopy duration];
    v18 = [NSNumber numberWithDouble:?];
    [v12 setDuration:v18];

    v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [itemCopy isLocal]);
    [v12 setLocal:v19];

    v20 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [itemCopy isLocal] ^ 1);
    [v12 setStreamable:v20];

    pubDate = [itemCopy pubDate];
    [v12 setContentCreationDate:pubDate];

    author = [itemCopy author];

    if (author)
    {
      author2 = [itemCopy author];
      v36 = author2;
      v24 = [NSArray arrayWithObjects:&v36 count:1];
      [v12 setAuthors:v24];
    }

    v25 = [itemCopy url];

    if (v25)
    {
      v26 = [itemCopy url];
      [v12 setContentURL:v26];
    }

    v27 = [self uniqueIdentifierForEpisodeInPlayerItem:itemCopy];
    v28 = [self uniqueIdentifierForPodcastInPlayerItem:itemCopy];
    [v12 setRelatedUniqueIdentifier:v28];
    [v12 setDomainIdentifier:v28];
    v29 = objc_alloc_init(CSSearchableItem);
    [v29 setUniqueIdentifier:v27];
    [v29 setAttributeSet:v12];
    v30 = [annotatorCopy annotateItem:v29 withPlayerItem:itemCopy];

    podcast = [0 podcast];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000DA390;
    v33[3] = &unk_1004DBAF0;
    v34 = v30;
    v35 = completionCopy;
    v32 = v30;
    [self configureArtworkForSearchableItemAttributeSet:v12 withPodcast:podcast completion:v33];
  }
}

+ (void)prepareSearchableItemForStation:(id)station annotator:(id)annotator completion:(id)completion
{
  stationCopy = station;
  completionCopy = completion;
  annotatorCopy = annotator;
  v10 = [[CSSearchableItemAttributeSet alloc] initWithContentType:UTTypeAudiovisualContent];
  v11 = +[NSDate distantFuture];
  [v10 setExpirationDate:v11];

  title = [stationCopy title];
  [v10 setDisplayName:title];

  [v10 setContentType:@"com.apple.podcasts.station"];
  [stationCopy generatedDate];
  if (v13 != 0.0)
  {
    [stationCopy generatedDate];
    v14 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [v10 setContentCreationDate:v14];
  }

  v15 = objc_alloc_init(CSSearchableItem);
  v16 = [self uniqueIdentifierForObject:stationCopy];
  [v15 setUniqueIdentifier:v16];

  [v15 setAttributeSet:v10];
  v17 = [annotatorCopy annotateItem:v15 withManagedObject:stationCopy];

  completionCopy[2](completionCopy, v17);
}

+ (id)indexPathForObjectType:(unint64_t)type batch:(unint64_t)batch indexInBatch:(unint64_t)inBatch
{
  v7[0] = type;
  v7[1] = batch;
  v7[2] = inBatch;
  v5 = [[NSIndexPath alloc] initWithIndexes:v7 length:3];

  return v5;
}

@end