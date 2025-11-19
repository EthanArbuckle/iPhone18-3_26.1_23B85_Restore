@interface BaseEpisodePropertySource
+ (id)defaultSortOrderSortDescriptorsForPodcastUuid:(id)a3;
- (id)__urlIfCanFindDatabaseEpisodeForUuid:(id)a3 urlBlock:(id)a4;
- (id)__urlIfCanFindDatabasePodcastForUuid:(id)a3 urlBlock:(id)a4;
- (id)_localizedDateStringForDate:(id)a3;
- (id)_localizedStringByCombiningWithString:(id)a3 firstComponent:(id)a4 secondComponent:(id)a5;
- (id)_localizedStringForDuration:(double)a3 podcastTitle:(id)a4;
- (id)_openEpisodeDetailInAppURLForEpisodeUuid:(id)a3 episodeStoreTrackId:(int64_t)a4 podcastStoreCollectionId:(int64_t)a5;
- (id)_openPodcastDetailInAppURLForPodcastUuid:(id)a3 podcastStoreCollectionId:(int64_t)a4;
- (id)valueForUndefinedKey:(id)a3;
- (void)_initiatePlaybackWithDefaultBehaviorForEpisodeUUid:(id)a3 episodeStoreTrackId:(int64_t)a4 podcastUuid:(id)a5 podcastStoreCollectionId:(int64_t)a6 completion:(id)a7;
@end

@implementation BaseEpisodePropertySource

+ (id)defaultSortOrderSortDescriptorsForPodcastUuid:(id)a3
{
  v3 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100002348;
  v20 = sub_100002358;
  v21 = 0;
  if (+[MTDB canExtensionOpenDatabase])
  {
    v4 = +[MTDB sharedInstance];
    v5 = [v4 mainOrPrivateContext];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100002360;
    v12[3] = &unk_10002C770;
    v6 = v5;
    v13 = v6;
    v14 = v3;
    v15 = &v16;
    [v6 performBlockAndWait:v12];
  }

  v7 = v17[5];
  if (!v7)
  {
    v8 = +[MTPodcast sortDescriptorsForNewestOnTop];
    v9 = v17[5];
    v17[5] = v8;

    v7 = v17[5];
  }

  v10 = v7;
  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  v5 = [(BaseEpisodePropertySource *)self sortPropertyValues];
  if (v5 && (v6 = v5, +[MTPodcast allPossibleEpisodeListSortOrderProperties](MTPodcast, "allPossibleEpisodeListSortOrderProperties"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 containsObject:v4], v7, v6, v8))
  {
    v9 = [(BaseEpisodePropertySource *)self sortPropertyValues];
    v10 = [v9 objectForKey:v4];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = BaseEpisodePropertySource;
    v10 = [(BaseEpisodePropertySource *)&v12 valueForUndefinedKey:v4];
  }

  return v10;
}

- (id)_localizedDateStringForDate:(id)a3
{
  if (a3)
  {
    v4 = [a3 friendlyDisplayString];
  }

  else
  {
    v4 = &stru_10002D1C8;
  }

  return v4;
}

- (id)_localizedStringByCombiningWithString:(id)a3 firstComponent:(id)a4 secondComponent:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 length] && objc_msgSend(v9, "length"))
  {
    v10 = [NSString stringWithFormat:@"%@%@%@", v8, v7, v9];
LABEL_8:
    v11 = v10;
    goto LABEL_9;
  }

  if ([v8 length])
  {
    v10 = v8;
    goto LABEL_8;
  }

  if ([v9 length])
  {
    v10 = v9;
    goto LABEL_8;
  }

  v11 = &stru_10002D1C8;
LABEL_9:

  return v11;
}

- (id)_localizedStringForDuration:(double)a3 podcastTitle:(id)a4
{
  v6 = a4;
  if (a3 <= 1.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [NSString prettyShortStringWithDuration:a3];
  }

  v8 = [objc_opt_class() defaultCombiningString];
  v9 = [(BaseEpisodePropertySource *)self _localizedStringByCombiningWithString:v8 firstComponent:v7 secondComponent:v6];

  return v9;
}

- (id)_openPodcastDetailInAppURLForPodcastUuid:(id)a3 podcastStoreCollectionId:(int64_t)a4
{
  v7 = a3;
  if (!+[NSThread isMainThread])
  {
    v8 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      v17 = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@ %@] must be used from main thread only", &v17, 0x16u);
    }
  }

  v12 = [(BaseEpisodePropertySource *)self __urlIfCanFindDatabasePodcastForUuid:v7 urlBlock:&stru_10002C7B0];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [NSURL mt_displayURLForPodcastStoreCollectionId:a4];
  }

  v15 = v14;

  return v15;
}

- (id)_openEpisodeDetailInAppURLForEpisodeUuid:(id)a3 episodeStoreTrackId:(int64_t)a4 podcastStoreCollectionId:(int64_t)a5
{
  v9 = a3;
  if (!+[NSThread isMainThread])
  {
    v10 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      v19 = 138412546;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%@ %@] must be used from main thread only", &v19, 0x16u);
    }
  }

  v14 = [(BaseEpisodePropertySource *)self __urlIfCanFindDatabaseEpisodeForUuid:v9 urlBlock:&stru_10002C7F0];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [NSURL mt_displayURLForEpisodeStoreTrackId:a4 inPodcastWithStoreCollectionId:a5];
  }

  v17 = v16;

  return v17;
}

- (void)_initiatePlaybackWithDefaultBehaviorForEpisodeUUid:(id)a3 episodeStoreTrackId:(int64_t)a4 podcastUuid:(id)a5 podcastStoreCollectionId:(int64_t)a6 completion:(id)a7
{
  v10 = a7;
  if (!+[NSThread isMainThread])
  {
    v11 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(a2);
      *buf = 138412546;
      v27 = v13;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%@ %@] must be used from main thread only", buf, 0x16u);
    }
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100002C2C;
  v24[3] = &unk_10002C818;
  v25 = v10;
  v15 = v10;
  v16 = objc_retainBlock(v24);
  v17 = +[MTPlaybackIdentifierUtil sharedInstance];
  v18 = [v17 universalPlaybackQueueIdentifierForPodcastFeedUrl:0 podcastStoreId:a6 episodeGuid:0 episodeStoreId:a4 sampPlaybackOrder:0];

  v19 = +[MTPlaybackIdentifierUtil sharedInstance];
  v20 = [v19 playbackRequestURLWithPlayReason:13 baseRequestURLString:v18];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100002C44;
  v22[3] = &unk_10002C818;
  v23 = v16;
  v21 = v16;
  [MTExtensionPlaybackController setQueueWithPlaybackRequestIdentifier:v20 completion:v22];
}

- (id)__urlIfCanFindDatabaseEpisodeForUuid:(id)a3 urlBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_100002348;
    v21 = sub_100002358;
    v22 = 0;
    if ([v5 length] && +[MTDB canExtensionOpenDatabase](MTDB, "canExtensionOpenDatabase"))
    {
      v7 = +[MTDB sharedInstance];
      v8 = [v7 mainOrPrivateContext];

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100002E04;
      v12[3] = &unk_10002C840;
      v9 = v8;
      v13 = v9;
      v14 = v5;
      v16 = &v17;
      v15 = v6;
      [v9 performBlockAndWait:v12];
    }

    v10 = v18[5];
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)__urlIfCanFindDatabasePodcastForUuid:(id)a3 urlBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_100002348;
    v21 = sub_100002358;
    v22 = 0;
    if ([v5 length] && +[MTDB canExtensionOpenDatabase](MTDB, "canExtensionOpenDatabase"))
    {
      v7 = +[MTDB sharedInstance];
      v8 = [v7 mainOrPrivateContext];

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10000305C;
      v12[3] = &unk_10002C840;
      v9 = v8;
      v13 = v9;
      v14 = v5;
      v16 = &v17;
      v15 = v6;
      [v9 performBlockAndWait:v12];
    }

    v10 = v18[5];
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end