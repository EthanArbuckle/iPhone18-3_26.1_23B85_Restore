@interface BaseEpisodePropertySource
+ (id)defaultSortOrderSortDescriptorsForPodcastUuid:(id)uuid;
- (id)__urlIfCanFindDatabaseEpisodeForUuid:(id)uuid urlBlock:(id)block;
- (id)__urlIfCanFindDatabasePodcastForUuid:(id)uuid urlBlock:(id)block;
- (id)_localizedDateStringForDate:(id)date;
- (id)_localizedStringByCombiningWithString:(id)string firstComponent:(id)component secondComponent:(id)secondComponent;
- (id)_localizedStringForDuration:(double)duration podcastTitle:(id)title;
- (id)_openEpisodeDetailInAppURLForEpisodeUuid:(id)uuid episodeStoreTrackId:(int64_t)id podcastStoreCollectionId:(int64_t)collectionId;
- (id)_openPodcastDetailInAppURLForPodcastUuid:(id)uuid podcastStoreCollectionId:(int64_t)id;
- (id)valueForUndefinedKey:(id)key;
- (void)_initiatePlaybackWithDefaultBehaviorForEpisodeUUid:(id)uid episodeStoreTrackId:(int64_t)id podcastUuid:(id)uuid podcastStoreCollectionId:(int64_t)collectionId completion:(id)completion;
@end

@implementation BaseEpisodePropertySource

+ (id)defaultSortOrderSortDescriptorsForPodcastUuid:(id)uuid
{
  uuidCopy = uuid;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100002348;
  v20 = sub_100002358;
  v21 = 0;
  if (+[MTDB canExtensionOpenDatabase])
  {
    v4 = +[MTDB sharedInstance];
    mainOrPrivateContext = [v4 mainOrPrivateContext];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100002360;
    v12[3] = &unk_10002C770;
    v6 = mainOrPrivateContext;
    v13 = v6;
    v14 = uuidCopy;
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

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  sortPropertyValues = [(BaseEpisodePropertySource *)self sortPropertyValues];
  if (sortPropertyValues && (v6 = sortPropertyValues, +[MTPodcast allPossibleEpisodeListSortOrderProperties](MTPodcast, "allPossibleEpisodeListSortOrderProperties"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 containsObject:keyCopy], v7, v6, v8))
  {
    sortPropertyValues2 = [(BaseEpisodePropertySource *)self sortPropertyValues];
    v10 = [sortPropertyValues2 objectForKey:keyCopy];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = BaseEpisodePropertySource;
    v10 = [(BaseEpisodePropertySource *)&v12 valueForUndefinedKey:keyCopy];
  }

  return v10;
}

- (id)_localizedDateStringForDate:(id)date
{
  if (date)
  {
    friendlyDisplayString = [date friendlyDisplayString];
  }

  else
  {
    friendlyDisplayString = &stru_10002D1C8;
  }

  return friendlyDisplayString;
}

- (id)_localizedStringByCombiningWithString:(id)string firstComponent:(id)component secondComponent:(id)secondComponent
{
  stringCopy = string;
  componentCopy = component;
  secondComponentCopy = secondComponent;
  if ([componentCopy length] && objc_msgSend(secondComponentCopy, "length"))
  {
    secondComponentCopy = [NSString stringWithFormat:@"%@%@%@", componentCopy, stringCopy, secondComponentCopy];
LABEL_8:
    v11 = secondComponentCopy;
    goto LABEL_9;
  }

  if ([componentCopy length])
  {
    secondComponentCopy = componentCopy;
    goto LABEL_8;
  }

  if ([secondComponentCopy length])
  {
    secondComponentCopy = secondComponentCopy;
    goto LABEL_8;
  }

  v11 = &stru_10002D1C8;
LABEL_9:

  return v11;
}

- (id)_localizedStringForDuration:(double)duration podcastTitle:(id)title
{
  titleCopy = title;
  if (duration <= 1.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [NSString prettyShortStringWithDuration:duration];
  }

  defaultCombiningString = [objc_opt_class() defaultCombiningString];
  v9 = [(BaseEpisodePropertySource *)self _localizedStringByCombiningWithString:defaultCombiningString firstComponent:v7 secondComponent:titleCopy];

  return v9;
}

- (id)_openPodcastDetailInAppURLForPodcastUuid:(id)uuid podcastStoreCollectionId:(int64_t)id
{
  uuidCopy = uuid;
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

  v12 = [(BaseEpisodePropertySource *)self __urlIfCanFindDatabasePodcastForUuid:uuidCopy urlBlock:&stru_10002C7B0];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [NSURL mt_displayURLForPodcastStoreCollectionId:id];
  }

  v15 = v14;

  return v15;
}

- (id)_openEpisodeDetailInAppURLForEpisodeUuid:(id)uuid episodeStoreTrackId:(int64_t)id podcastStoreCollectionId:(int64_t)collectionId
{
  uuidCopy = uuid;
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

  v14 = [(BaseEpisodePropertySource *)self __urlIfCanFindDatabaseEpisodeForUuid:uuidCopy urlBlock:&stru_10002C7F0];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [NSURL mt_displayURLForEpisodeStoreTrackId:id inPodcastWithStoreCollectionId:collectionId];
  }

  v17 = v16;

  return v17;
}

- (void)_initiatePlaybackWithDefaultBehaviorForEpisodeUUid:(id)uid episodeStoreTrackId:(int64_t)id podcastUuid:(id)uuid podcastStoreCollectionId:(int64_t)collectionId completion:(id)completion
{
  completionCopy = completion;
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
  v25 = completionCopy;
  v15 = completionCopy;
  v16 = objc_retainBlock(v24);
  v17 = +[MTPlaybackIdentifierUtil sharedInstance];
  v18 = [v17 universalPlaybackQueueIdentifierForPodcastFeedUrl:0 podcastStoreId:collectionId episodeGuid:0 episodeStoreId:id sampPlaybackOrder:0];

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

- (id)__urlIfCanFindDatabaseEpisodeForUuid:(id)uuid urlBlock:(id)block
{
  uuidCopy = uuid;
  blockCopy = block;
  if (blockCopy)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_100002348;
    v21 = sub_100002358;
    v22 = 0;
    if ([uuidCopy length] && +[MTDB canExtensionOpenDatabase](MTDB, "canExtensionOpenDatabase"))
    {
      v7 = +[MTDB sharedInstance];
      mainOrPrivateContext = [v7 mainOrPrivateContext];

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100002E04;
      v12[3] = &unk_10002C840;
      v9 = mainOrPrivateContext;
      v13 = v9;
      v14 = uuidCopy;
      v16 = &v17;
      v15 = blockCopy;
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

- (id)__urlIfCanFindDatabasePodcastForUuid:(id)uuid urlBlock:(id)block
{
  uuidCopy = uuid;
  blockCopy = block;
  if (blockCopy)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_100002348;
    v21 = sub_100002358;
    v22 = 0;
    if ([uuidCopy length] && +[MTDB canExtensionOpenDatabase](MTDB, "canExtensionOpenDatabase"))
    {
      v7 = +[MTDB sharedInstance];
      mainOrPrivateContext = [v7 mainOrPrivateContext];

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10000305C;
      v12[3] = &unk_10002C840;
      v9 = mainOrPrivateContext;
      v13 = v9;
      v14 = uuidCopy;
      v16 = &v17;
      v15 = blockCopy;
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