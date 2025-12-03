@interface BKSeriesManagerUpdater
+ (void)_populateItem:(id)item position:(unint64_t)position withAssetResource:(id)resource seriesResource:(id)seriesResource;
+ (void)_populateItem:(id)item withSeriesResource:(id)resource inMoc:(id)moc;
- (BKSeriesManager)manager;
- (BKSeriesManagerUpdater)initWithManager:(id)manager database:(id)database catalogService:(id)service onFinished:(id)finished;
- (id)_filteredAdamIDs:(id)ds withIntervalInDays:(double)days;
- (void)_intervalInDaysWithCompletion:(id)completion;
- (void)_seriesInfoRequestBatchSizeWithCompletion:(id)completion;
- (void)_updateAssetsFromCloudSyncWithAdamIDs:(id)ds withAssetResources:(id)resources;
- (void)_updateSeriesChildrenWithAdamIDs:(id)ds forSeries:(id)series;
- (void)_updateSeriesContainersWithSeriesIDs:(id)ds withResources:(id)resources;
- (void)_updateSeriesForAssetIDsWithTypes:(id)types forceCheck:(BOOL)check;
- (void)_updateSeriesForSeriesAdamIDsWithFilteredTypes:(id)types;
- (void)cancel;
- (void)finish;
- (void)recordAdamIDsAsChecked:(id)checked;
- (void)updateAssetsFromCloudSyncForAssetAdamIDsWithTypes:(id)types;
- (void)updateExpiredSeriesForAssetAdamIDsWithTypes:(id)types;
- (void)updateSeriesForSeriesAdamIDsWithTypes:(id)types forceCheck:(BOOL)check;
@end

@implementation BKSeriesManagerUpdater

- (BKSeriesManagerUpdater)initWithManager:(id)manager database:(id)database catalogService:(id)service onFinished:(id)finished
{
  managerCopy = manager;
  databaseCopy = database;
  serviceCopy = service;
  finishedCopy = finished;
  v23.receiver = self;
  v23.super_class = BKSeriesManagerUpdater;
  v14 = [(BKSeriesManagerUpdater *)&v23 init];
  if (v14)
  {
    v15 = dispatch_queue_create("com.apple.iBooks.BKSeriesManagerUpdater", 0);
    queue = v14->_queue;
    v14->_queue = v15;

    v17 = objc_retainBlock(finishedCopy);
    onFinished = v14->_onFinished;
    v14->_onFinished = v17;

    objc_storeStrong(&v14->_database, database);
    objc_storeWeak(&v14->_manager, managerCopy);
    objc_storeStrong(&v14->_catalogService, service);
    v19 = v14->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_92C78;
    block[3] = &unk_2C7D40;
    v22 = v14;
    dispatch_async(v19, block);
  }

  return v14;
}

- (void)recordAdamIDsAsChecked:(id)checked
{
  v4 = [checked copy];
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_92D88;
  v7[3] = &unk_2C7BE8;
  v8 = v4;
  selfCopy = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)cancel
{
  queue = [(BKSeriesManagerUpdater *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_92E68;
  block[3] = &unk_2C7D40;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)finish
{
  queue = [(BKSeriesManagerUpdater *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_92F34;
  block[3] = &unk_2C7D40;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)updateExpiredSeriesForAssetAdamIDsWithTypes:(id)types
{
  v4 = BKSeriesManagerAssetTypeAudiobooks[0];
  typesCopy = types;
  v6 = [typesCopy objectForKeyedSubscript:v4];
  v7 = [typesCopy objectForKeyedSubscript:BKSeriesManagerAssetTypeBooks[0]];

  if ([v6 count] || objc_msgSend(v7, "count"))
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_9358C;
    v8[3] = &unk_2C8E70;
    v8[4] = self;
    v9 = v7;
    v10 = v6;
    [(BKSeriesManagerUpdater *)self _intervalInDaysWithCompletion:v8];
  }
}

- (void)updateSeriesForSeriesAdamIDsWithTypes:(id)types forceCheck:(BOOL)check
{
  checkCopy = check;
  typesCopy = types;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_93BE8;
  v25 = sub_93BF8;
  v26 = [typesCopy objectForKeyedSubscript:BKSeriesManagerSeriesTypeBookSeries[0]];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_93BE8;
  v19 = sub_93BF8;
  v20 = [typesCopy objectForKeyedSubscript:BKSeriesManagerSeriesTypeAudiobookSeries];
  if ([v16[5] count] || objc_msgSend(v22[5], "count"))
  {
    v7 = BCSeriesManagerUpdaterLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (checkCopy)
      {
        v8 = @"Force";
      }

      else
      {
        v8 = &stru_2D2930;
      }

      bu_prettyDescription = [v22[5] bu_prettyDescription];
      bu_prettyDescription2 = [v16[5] bu_prettyDescription];
      *buf = 134218754;
      selfCopy = self;
      v31 = 2112;
      v32 = v8;
      v33 = 2112;
      v34 = bu_prettyDescription;
      v35 = 2112;
      v36 = bu_prettyDescription2;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "<BKSeriesManagerUpdater: %p> %@ Updating series with adamIDs: books=%@, audiobooks=%@", buf, 0x2Au);
    }

    if (checkCopy)
    {
      v11 = v22[5];
      if (!v11)
      {
        v11 = &__NSArray0__struct;
      }

      v27[0] = BKSeriesManagerSeriesTypeBookSeries[0];
      v27[1] = BKSeriesManagerSeriesTypeAudiobookSeries;
      v12 = v16[5];
      if (!v12)
      {
        v12 = &__NSArray0__struct;
      }

      v28[0] = v11;
      v28[1] = v12;
      v13 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
      [(BKSeriesManagerUpdater *)self _updateSeriesForSeriesAdamIDsWithFilteredTypes:v13];
    }

    else
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_93C00;
      v14[3] = &unk_2CBCD0;
      v14[4] = self;
      v14[5] = &v21;
      v14[6] = &v15;
      [(BKSeriesManagerUpdater *)self _intervalInDaysWithCompletion:v14];
    }
  }

  else
  {
    [(BKSeriesManagerUpdater *)self finish];
  }

  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
}

- (void)_seriesInfoRequestBatchSizeWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[BUBag defaultBag];
  seriesInfoRequestBatchSize = [v4 seriesInfoRequestBatchSize];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_93F40;
  v7[3] = &unk_2CBCF8;
  v8 = completionCopy;
  v6 = completionCopy;
  [seriesInfoRequestBatchSize valueWithCompletion:v7];
}

- (void)_updateSeriesForSeriesAdamIDsWithFilteredTypes:(id)types
{
  typesCopy = types;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_93BE8;
  v19 = sub_93BF8;
  v20 = [typesCopy objectForKeyedSubscript:BKSeriesManagerSeriesTypeBookSeries[0]];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_93BE8;
  v13 = sub_93BF8;
  v14 = [typesCopy objectForKeyedSubscript:BKSeriesManagerSeriesTypeAudiobookSeries];
  if ([v16[5] count] || objc_msgSend(v10[5], "count"))
  {
    v5 = BCSeriesManagerUpdaterLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = v16[5];
      v7 = v10[5];
      *buf = 134218498;
      selfCopy = self;
      v23 = 2112;
      v24 = v6;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "<BKSeriesManagerUpdater: %p> Fetching series with bookSeriesAdamIds: %@, audiobookSeriesAdamIDs: %@", buf, 0x20u);
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_94254;
    v8[3] = &unk_2CBD98;
    v8[4] = self;
    v8[5] = &v15;
    v8[6] = &v9;
    [(BKSeriesManagerUpdater *)self _seriesInfoRequestBatchSizeWithCompletion:v8];
  }

  else
  {
    [(BKSeriesManagerUpdater *)self finish];
  }

  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
}

- (void)_updateSeriesContainersWithSeriesIDs:(id)ds withResources:(id)resources
{
  dsCopy = ds;
  resourcesCopy = resources;
  [(BKSeriesManagerUpdater *)self recordAdamIDsAsChecked:dsCopy];
  managedObjectContext = [(BKSeriesManagerUpdater *)self managedObjectContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_948D4;
  v11[3] = &unk_2C89F8;
  v12 = dsCopy;
  selfCopy = self;
  v14 = resourcesCopy;
  v9 = resourcesCopy;
  v10 = dsCopy;
  [managedObjectContext performBlockAndWait:v11];
}

- (void)_updateSeriesChildrenWithAdamIDs:(id)ds forSeries:(id)series
{
  dsCopy = ds;
  seriesCopy = series;
  managedObjectContext = [(BKSeriesManagerUpdater *)self managedObjectContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_94D84;
  v11[3] = &unk_2C89F8;
  v11[4] = self;
  v12 = dsCopy;
  v13 = seriesCopy;
  v9 = seriesCopy;
  v10 = dsCopy;
  [managedObjectContext performBlockAndWait:v11];
}

- (void)_updateSeriesForAssetIDsWithTypes:(id)types forceCheck:(BOOL)check
{
  v6 = BKSeriesManagerAssetTypeAudiobooks[0];
  typesCopy = types;
  v8 = [typesCopy objectForKeyedSubscript:v6];
  v9 = [typesCopy objectForKeyedSubscript:BKSeriesManagerAssetTypeBooks[0]];

  if ([v9 count] || objc_msgSend(v8, "count"))
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_95654;
    v10[3] = &unk_2CBEB0;
    v10[4] = self;
    checkCopy = check;
    v11 = v9;
    v12 = v8;
    [(BKSeriesManagerUpdater *)self _seriesInfoRequestBatchSizeWithCompletion:v10];
  }

  else
  {
    [(BKSeriesManagerUpdater *)self finish];
  }
}

- (void)updateAssetsFromCloudSyncForAssetAdamIDsWithTypes:(id)types
{
  typesCopy = types;
  v4 = [typesCopy objectForKeyedSubscript:BKSeriesManagerAssetTypeUnknown[0]];
  v5 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = objc_opt_new();
        v13 = [v12 numberFromString:v11];

        if (!v13)
        {
          [v5 addObject:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v14 = BCSeriesManagerUpdaterLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1E84BC(v5, v14);
    }
  }

  queue = [(BKSeriesManagerUpdater *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_965A0;
  block[3] = &unk_2C7BE8;
  v19 = typesCopy;
  selfCopy = self;
  v16 = typesCopy;
  dispatch_async(queue, block);
}

- (void)_updateAssetsFromCloudSyncWithAdamIDs:(id)ds withAssetResources:(id)resources
{
  dsCopy = ds;
  resourcesCopy = resources;
  managedObjectContext = [(BKSeriesManagerUpdater *)self managedObjectContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_96DA8;
  v11[3] = &unk_2C89F8;
  v12 = dsCopy;
  selfCopy = self;
  v14 = resourcesCopy;
  v9 = resourcesCopy;
  v10 = dsCopy;
  [managedObjectContext performBlockAndWait:v11];
}

- (void)_intervalInDaysWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[BUBag defaultBag];
  seriesInfoUpdateIntervalInDays = [v4 seriesInfoUpdateIntervalInDays];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_97508;
  v7[3] = &unk_2CBCF8;
  v8 = completionCopy;
  v6 = completionCopy;
  [seriesInfoUpdateIntervalInDays valueWithCompletion:v7];
}

- (id)_filteredAdamIDs:(id)ds withIntervalInDays:(double)days
{
  dsCopy = ds;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [dsCopy count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = dsCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        managedObjectContext = [(BKSeriesManagerUpdater *)self managedObjectContext];
        v15 = [BKSeriesCheck shouldRecheckAdamID:v13 withIntervalInDays:managedObjectContext inManagedObjectContext:days];

        if (v15)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (void)_populateItem:(id)item withSeriesResource:(id)resource inMoc:(id)moc
{
  mocCopy = moc;
  resourceCopy = resource;
  itemCopy = item;
  [itemCopy setDifferentValue:&__kCFBooleanTrue forKey:@"isContainer" klass:objc_opt_class()];
  name = [resourceCopy name];
  [itemCopy setDifferentValue:name forKey:@"sortTitle" klass:objc_opt_class()];

  name2 = [resourceCopy name];
  [itemCopy setDifferentValue:name2 forKey:@"seriesTitle" klass:objc_opt_class()];

  name3 = [resourceCopy name];
  [itemCopy setDifferentValue:name3 forKey:@"title" klass:objc_opt_class()];

  v13 = [resourceCopy id];
  [itemCopy setDifferentValue:v13 forKey:@"seriesAdamId" klass:objc_opt_class()];

  v14 = [resourceCopy url];
  [itemCopy setDifferentValue:v14 forKey:@"url" klass:objc_opt_class()];

  v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [resourceCopy isExplicit]);
  [itemCopy setDifferentValue:v15 forKey:@"isExplicit" klass:objc_opt_class()];

  v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [resourceCopy isOrdered]);
  [itemCopy setDifferentValue:v16 forKey:@"seriesIsOrdered" klass:objc_opt_class()];

  genres = [resourceCopy genres];
  v21 = [genres valueForKey:@"name"];

  [itemCopy setDifferentValue:v21 forKey:@"genres" klass:objc_opt_class()];
  authorCount = [resourceCopy authorCount];
  [itemCopy setDifferentValue:authorCount forKey:@"authorCount" klass:objc_opt_class()];

  authorNames = [resourceCopy authorNames];
  [itemCopy setDifferentValue:authorNames forKey:@"authorNames" klass:objc_opt_class()];

  v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [resourceCopy hasUniqueAuthors]);
  [itemCopy setDifferentValue:v20 forKey:@"hasTooManyAuthors" klass:objc_opt_class()];

  [BKSeriesManagerUpdaterHelper updateSeries:itemCopy withResource:resourceCopy inMoc:mocCopy];
}

+ (void)_populateItem:(id)item position:(unint64_t)position withAssetResource:(id)resource seriesResource:(id)seriesResource
{
  itemCopy = item;
  resourceCopy = resource;
  seriesResourceCopy = seriesResource;
  v11 = [resourceCopy id];
  [itemCopy setDifferentValue:v11 forKey:@"adamId" klass:objc_opt_class()];

  artistName = [resourceCopy artistName];
  [itemCopy setDifferentValue:artistName forKey:@"author" klass:objc_opt_class()];

  width = [resourceCopy width];
  if (![width longValue])
  {
    v18 = 0;
    goto LABEL_5;
  }

  height = [resourceCopy height];
  longValue = [height longValue];

  if (longValue)
  {
    width = [resourceCopy width];
    longValue2 = [width longValue];
    height2 = [resourceCopy height];
    v18 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", longValue2 / [height2 longValue]);

LABEL_5:
    goto LABEL_7;
  }

  v18 = 0;
LABEL_7:
  [itemCopy setDifferentValue:v18 forKey:@"coverAspectRatio" klass:objc_opt_class()];
  genreName = [resourceCopy genreName];
  [itemCopy setDifferentValue:genreName forKey:@"genre" klass:objc_opt_class()];

  v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [resourceCopy isSG]);
  [itemCopy setDifferentValue:v20 forKey:@"hasRACSupport" klass:objc_opt_class()];

  v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [resourceCopy isAudiobook]);
  [itemCopy setDifferentValue:v21 forKey:@"isAudiobook" klass:objc_opt_class()];

  v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [resourceCopy isExplicit]);
  [itemCopy setDifferentValue:v22 forKey:@"isExplicit" klass:objc_opt_class()];

  if (position != 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = [NSNumber numberWithUnsignedInteger:position];
    [itemCopy setDifferentValue:v23 forKey:@"position" klass:objc_opt_class()];
  }

  releaseDate = [resourceCopy releaseDate];
  [itemCopy setDifferentValue:releaseDate forKey:@"releaseDate" klass:objc_opt_class()];

  name = [seriesResourceCopy name];

  [itemCopy setDifferentValue:name forKey:@"seriesTitle" klass:objc_opt_class()];
  sequenceDisplayLabel = [resourceCopy sequenceDisplayLabel];
  [itemCopy setDifferentValue:sequenceDisplayLabel forKey:@"sequenceDisplayName" klass:objc_opt_class()];

  sequenceNumber = [resourceCopy sequenceNumber];
  [itemCopy setDifferentValue:sequenceNumber forKey:@"sequenceNumber" klass:objc_opt_class()];

  artistName2 = [resourceCopy artistName];
  [itemCopy setDifferentValue:artistName2 forKey:@"sortAuthor" klass:objc_opt_class()];

  name2 = [resourceCopy name];
  [itemCopy setDifferentValue:name2 forKey:@"sortTitle" klass:objc_opt_class()];

  name3 = [resourceCopy name];
  [itemCopy setDifferentValue:name3 forKey:@"title" klass:objc_opt_class()];

  v31 = [resourceCopy url];
  [itemCopy setDifferentValue:v31 forKey:@"url" klass:objc_opt_class()];
}

- (BKSeriesManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

@end