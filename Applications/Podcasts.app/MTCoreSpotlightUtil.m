@interface MTCoreSpotlightUtil
+ (id)_uniqueIdentifierForPodcast:(id)a3;
+ (id)artworkBridge;
+ (id)fetchRequestForIndexType:(unint64_t)a3;
+ (id)fetchRequestForIndexType:(unint64_t)a3 additionalPredicate:(id)a4;
+ (id)indexPathForObjectType:(unint64_t)a3 batch:(unint64_t)a4 indexInBatch:(unint64_t)a5;
+ (id)uniqueIdentifierForEpisodeInPlayerItem:(id)a3;
+ (id)uniqueIdentifierForObject:(id)a3;
+ (id)uniqueIdentifierForPodcastInPlayerItem:(id)a3;
+ (void)configureArtworkForSearchableItemAttributeSet:(id)a3 withPodcast:(id)a4 completion:(id)a5;
+ (void)prepareSearchableItemForEpisode:(id)a3 annotator:(id)a4 completion:(id)a5;
+ (void)prepareSearchableItemForObject:(id)a3 annotator:(id)a4 completion:(id)a5;
+ (void)prepareSearchableItemForPlayerItem:(id)a3 annotator:(id)a4 completion:(id)a5;
+ (void)prepareSearchableItemForPodcast:(id)a3 annotator:(id)a4 completion:(id)a5;
+ (void)prepareSearchableItemForStation:(id)a3 annotator:(id)a4 completion:(id)a5;
+ (void)prepareSearchableItemsForObjectInArray:(id)a3 annotator:(id)a4 completion:(id)a5;
@end

@implementation MTCoreSpotlightUtil

+ (void)prepareSearchableItemForObject:(id)a3 annotator:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 prepareSearchableItemForPodcast:v8 annotator:v9 completion:v10];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a1 prepareSearchableItemForEpisode:v8 annotator:v9 completion:v10];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a1 prepareSearchableItemForStation:v8 annotator:v9 completion:v10];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [a1 prepareSearchableItemForPlayerItem:v8 annotator:v9 completion:v10];
        }

        else
        {
          v11 = _MTLogCategorySpotlight();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = 138412290;
            v13 = v8;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Invalid object, can not index %@", &v12, 0xCu);
          }

          v10[2](v10, 0);
        }
      }
    }
  }
}

+ (void)prepareSearchableItemsForObjectInArray:(id)a3 annotator:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v8)
  {
    v9 = a3;
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
    v24 = v7;
    v25 = v14;
    v15 = v14;
    v16 = v11;
    [v9 enumerateObjectsUsingBlock:v22];

    v17 = dispatch_get_global_queue(-32768, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D8C5C;
    block[3] = &unk_1004D9158;
    v20 = v12;
    v21 = v8;
    v18 = v12;
    dispatch_group_notify(v16, v17, block);
  }
}

+ (id)uniqueIdentifierForObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a1 _uniqueIdentifierForPodcast:v4];
LABEL_3:
    v6 = &stru_1004F3018;
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v4 guid];
    v8 = v7;
    if (v7)
    {
      v6 = v7;
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
        v10 = v4;
        v5 = [a1 uniqueIdentifierForPodcastInPlayerItem:v10];
        if (![v5 length])
        {
          v11 = [a1 uniqueIdentifierForEpisodeInPlayerItem:v10];

          v5 = v11;
        }
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_3;
    }

    v9 = [v4 uuid];
    v8 = v9;
    if (v9)
    {
      v6 = v9;
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

+ (id)uniqueIdentifierForEpisodeInPlayerItem:(id)a3
{
  v4 = a3;
  v5 = [v4 episode];

  if (v5)
  {
    v6 = [v4 episode];
    v7 = [a1 uniqueIdentifierForObject:v6];
LABEL_3:
    v8 = v7;
LABEL_6:

    goto LABEL_7;
  }

  if ([v4 episodeStoreId])
  {
    v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v4 episodeStoreId]);
    v9 = [v6 stringValue];
    v8 = [@"es" stringByAppendingString:v9];

    goto LABEL_6;
  }

  v11 = [v4 episodeGuid];

  if (v11)
  {
    v6 = [v4 episodeGuid];
    v7 = [@"e" stringByAppendingString:v6];
    goto LABEL_3;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

+ (id)uniqueIdentifierForPodcastInPlayerItem:(id)a3
{
  v4 = a3;
  v5 = [v4 episode];
  v6 = [v5 podcast];

  if (v6)
  {
    v7 = [v4 episode];
    v8 = [v7 podcast];
    v9 = [a1 uniqueIdentifierForObject:v8];
LABEL_5:
    v10 = v9;

LABEL_6:
    goto LABEL_7;
  }

  if ([v4 podcastStoreId])
  {
    v7 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v4 podcastStoreId]);
    v8 = [v7 stringValue];
    v9 = [@"ps" stringByAppendingString:v8];
    goto LABEL_5;
  }

  v12 = [v4 podcastFeedUrl];

  if (v12)
  {
    v7 = [v4 podcastFeedUrl];
    v10 = [@"p" stringByAppendingString:v7];
    goto LABEL_6;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

+ (id)fetchRequestForIndexType:(unint64_t)a3
{
  v5 = [NSPredicate predicateWithValue:1];
  v6 = [a1 fetchRequestForIndexType:a3 additionalPredicate:v5];

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

+ (void)configureArtworkForSearchableItemAttributeSet:(id)a3 withPodcast:(id)a4 completion:(id)a5
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D9214;
  v7[3] = &unk_1004DBAA0;
  v8 = a5;
  v5 = v8;
  v6 = objc_retainBlock(v7);
  (v6[2])(v6, 0);
}

+ (id)_uniqueIdentifierForPodcast:(id)a3
{
  v3 = a3;
  v4 = [v3 currentFeedURL];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 absoluteString];
  }

  else
  {
    v7 = [v3 uuid];
    v8 = v7;
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v6 = &stru_1004F3018;
    }
  }

  v9 = [@"p" stringByAppendingString:v6];

  return v9;
}

+ (id)fetchRequestForIndexType:(unint64_t)a3 additionalPredicate:(id)a4
{
  v5 = a4;
  switch(a3)
  {
    case 2uLL:
      v17 = [NSFetchRequest alloc];
      v7 = [v17 initWithEntityName:kMTPlaylistEntityName];
      v18 = +[MTPlaylist topLevelPlaylistsPredicate];
      v19 = [v18 AND:v5];
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
      v15 = [v14 AND:v5];
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
      v9 = [v8 AND:v5];
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

+ (void)prepareSearchableItemForPodcast:(id)a3 annotator:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v10 = a4;
    v11 = [v8 uuid];
    v12 = [v8 title];
    v13 = [[CSSearchableItemAttributeSet alloc] initWithContentType:UTTypeAudiovisualContent];
    v14 = +[NSDate distantFuture];
    [v13 setExpirationDate:v14];

    [v13 setDisplayName:v12];
    v15 = [v8 currentFeedURL];
    [v13 setContentURL:v15];

    v16 = [v8 bestDescription];
    [v13 setContentDescription:v16];

    [v13 setContentType:@"com.apple.podcasts.show"];
    v17 = [v8 bestDescription];
    [v13 setInformation:v17];

    [v8 downloadedDate];
    if (v18 != 0.0)
    {
      [v8 downloadedDate];
      v19 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [v13 setDownloadedDate:v19];
    }

    [v8 lastTouchDate];
    if (v20 != 0.0)
    {
      [v8 lastTouchDate];
      v21 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [v13 setLastUsedDate:v21];
    }

    v22 = [v8 author];

    if (v22)
    {
      v23 = [v8 author];
      v36 = v23;
      v24 = [NSArray arrayWithObjects:&v36 count:1];
      [v13 setAuthorNames:v24];
    }

    v25 = [a1 uniqueIdentifierForObject:v8];
    v26 = objc_alloc_init(CSSearchableItem);
    [v26 setUniqueIdentifier:v25];
    [v26 setAttributeSet:v13];
    v27 = [v10 annotateItem:v26 withManagedObject:v8];

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000D98A4;
    v31[3] = &unk_1004DBAC8;
    v32 = v27;
    v33 = v11;
    v34 = v12;
    v35 = v9;
    v28 = v12;
    v29 = v11;
    v30 = v27;
    [a1 configureArtworkForSearchableItemAttributeSet:v13 withPodcast:v8 completion:v31];
  }
}

+ (void)prepareSearchableItemForEpisode:(id)a3 annotator:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v10 = a4;
    v47 = [v8 uuid];
    v11 = [v8 title];
    v12 = [[CSSearchableItemAttributeSet alloc] initWithContentType:UTTypeAudiovisualContent];
    v13 = +[NSDate distantFuture];
    [v12 setExpirationDate:v13];

    v14 = [v8 bestTitle];
    [v12 setDisplayName:v14];

    v15 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v8 playCount]);
    [v12 setPlayCount:v15];

    v16 = [v8 podcast];
    v17 = [v16 title];
    [v12 setContainerTitle:v17];

    v18 = [v8 bestSummary];
    [v12 setContentDescription:v18];

    [v12 setContentType:@"com.apple.podcasts.episode"];
    v19 = [v8 bestSummary];
    [v12 setInformation:v19];

    [v8 duration];
    v20 = [NSNumber numberWithDouble:?];
    [v12 setDuration:v20];

    v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 isDownloaded]);
    [v12 setLocal:v21];

    v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 externalType]);
    [v12 setStreamable:v22];

    v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 isExplicit]);
    [v12 setContentRating:v23];

    [v8 pubDate];
    if (v24 != 0.0)
    {
      [v8 pubDate];
      v25 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [v12 setContentCreationDate:v25];
    }

    [v8 downloadDate];
    if (v26 != 0.0)
    {
      [v8 downloadDate];
      v27 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [v12 setDownloadedDate:v27];
    }

    [v8 lastDatePlayed];
    if (v28 != 0.0)
    {
      [v8 lastDatePlayed];
      v29 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [v12 setLastUsedDate:v29];
    }

    if (![v8 playState])
    {
      [v8 lastDatePlayed];
      if (v30 != 0.0)
      {
        [v8 lastDatePlayed];
        v31 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
        [v12 setCompletionDate:v31];
      }
    }

    v32 = [v8 author];

    if (v32)
    {
      v33 = [v8 author];
      v53 = v33;
      v34 = [NSArray arrayWithObjects:&v53 count:1];
      [v12 setAuthorNames:v34];
    }

    v35 = [v8 assetURL];

    if (v35)
    {
      v36 = [v8 assetURL];
      v37 = [NSURL URLWithString:v36];
      [v12 setContentURL:v37];
    }

    v38 = [a1 uniqueIdentifierForObject:v8];
    v39 = [v8 podcast];
    v40 = [MTCoreSpotlightUtil uniqueIdentifierForObject:v39];

    [v12 setRelatedUniqueIdentifier:v40];
    [v12 setDomainIdentifier:v40];
    v41 = objc_alloc_init(CSSearchableItem);
    [v41 setUniqueIdentifier:v38];
    [v41 setAttributeSet:v12];
    v42 = [v10 annotateItem:v41 withManagedObject:v8];

    v43 = [v8 podcast];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1000D9ECC;
    v48[3] = &unk_1004DBAC8;
    v49 = v42;
    v50 = v47;
    v51 = v11;
    v52 = v9;
    v44 = v11;
    v45 = v47;
    v46 = v42;
    [a1 configureArtworkForSearchableItemAttributeSet:v12 withPodcast:v43 completion:v48];
  }
}

+ (void)prepareSearchableItemForPlayerItem:(id)a3 annotator:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 episode];
  if (v11)
  {
    [a1 prepareSearchableItemForEpisode:v11 annotator:v9 completion:v10];
  }

  else
  {
    v12 = [[CSSearchableItemAttributeSet alloc] initWithContentType:UTTypeAudiovisualContent];
    v13 = +[NSDate distantFuture];
    [v12 setExpirationDate:v13];

    v14 = [v8 title];
    [v12 setDisplayName:v14];

    v15 = [v8 album];
    [v12 setContainerTitle:v15];

    v16 = [v8 itemDescription];
    [v12 setContentDescription:v16];

    v17 = [v8 itemDescription];
    [v12 setInformation:v17];

    [v8 duration];
    v18 = [NSNumber numberWithDouble:?];
    [v12 setDuration:v18];

    v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 isLocal]);
    [v12 setLocal:v19];

    v20 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v8 isLocal] ^ 1);
    [v12 setStreamable:v20];

    v21 = [v8 pubDate];
    [v12 setContentCreationDate:v21];

    v22 = [v8 author];

    if (v22)
    {
      v23 = [v8 author];
      v36 = v23;
      v24 = [NSArray arrayWithObjects:&v36 count:1];
      [v12 setAuthors:v24];
    }

    v25 = [v8 url];

    if (v25)
    {
      v26 = [v8 url];
      [v12 setContentURL:v26];
    }

    v27 = [a1 uniqueIdentifierForEpisodeInPlayerItem:v8];
    v28 = [a1 uniqueIdentifierForPodcastInPlayerItem:v8];
    [v12 setRelatedUniqueIdentifier:v28];
    [v12 setDomainIdentifier:v28];
    v29 = objc_alloc_init(CSSearchableItem);
    [v29 setUniqueIdentifier:v27];
    [v29 setAttributeSet:v12];
    v30 = [v9 annotateItem:v29 withPlayerItem:v8];

    v31 = [0 podcast];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000DA390;
    v33[3] = &unk_1004DBAF0;
    v34 = v30;
    v35 = v10;
    v32 = v30;
    [a1 configureArtworkForSearchableItemAttributeSet:v12 withPodcast:v31 completion:v33];
  }
}

+ (void)prepareSearchableItemForStation:(id)a3 annotator:(id)a4 completion:(id)a5
{
  v18 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [[CSSearchableItemAttributeSet alloc] initWithContentType:UTTypeAudiovisualContent];
  v11 = +[NSDate distantFuture];
  [v10 setExpirationDate:v11];

  v12 = [v18 title];
  [v10 setDisplayName:v12];

  [v10 setContentType:@"com.apple.podcasts.station"];
  [v18 generatedDate];
  if (v13 != 0.0)
  {
    [v18 generatedDate];
    v14 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [v10 setContentCreationDate:v14];
  }

  v15 = objc_alloc_init(CSSearchableItem);
  v16 = [a1 uniqueIdentifierForObject:v18];
  [v15 setUniqueIdentifier:v16];

  [v15 setAttributeSet:v10];
  v17 = [v9 annotateItem:v15 withManagedObject:v18];

  v8[2](v8, v17);
}

+ (id)indexPathForObjectType:(unint64_t)a3 batch:(unint64_t)a4 indexInBatch:(unint64_t)a5
{
  v7[0] = a3;
  v7[1] = a4;
  v7[2] = a5;
  v5 = [[NSIndexPath alloc] initWithIndexes:v7 length:3];

  return v5;
}

@end