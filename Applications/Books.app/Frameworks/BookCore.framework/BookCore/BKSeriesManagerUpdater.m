@interface BKSeriesManagerUpdater
+ (void)_populateItem:(id)a3 position:(unint64_t)a4 withAssetResource:(id)a5 seriesResource:(id)a6;
+ (void)_populateItem:(id)a3 withSeriesResource:(id)a4 inMoc:(id)a5;
- (BKSeriesManager)manager;
- (BKSeriesManagerUpdater)initWithManager:(id)a3 database:(id)a4 catalogService:(id)a5 onFinished:(id)a6;
- (id)_filteredAdamIDs:(id)a3 withIntervalInDays:(double)a4;
- (void)_intervalInDaysWithCompletion:(id)a3;
- (void)_seriesInfoRequestBatchSizeWithCompletion:(id)a3;
- (void)_updateAssetsFromCloudSyncWithAdamIDs:(id)a3 withAssetResources:(id)a4;
- (void)_updateSeriesChildrenWithAdamIDs:(id)a3 forSeries:(id)a4;
- (void)_updateSeriesContainersWithSeriesIDs:(id)a3 withResources:(id)a4;
- (void)_updateSeriesForAssetIDsWithTypes:(id)a3 forceCheck:(BOOL)a4;
- (void)_updateSeriesForSeriesAdamIDsWithFilteredTypes:(id)a3;
- (void)cancel;
- (void)finish;
- (void)recordAdamIDsAsChecked:(id)a3;
- (void)updateAssetsFromCloudSyncForAssetAdamIDsWithTypes:(id)a3;
- (void)updateExpiredSeriesForAssetAdamIDsWithTypes:(id)a3;
- (void)updateSeriesForSeriesAdamIDsWithTypes:(id)a3 forceCheck:(BOOL)a4;
@end

@implementation BKSeriesManagerUpdater

- (BKSeriesManagerUpdater)initWithManager:(id)a3 database:(id)a4 catalogService:(id)a5 onFinished:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = BKSeriesManagerUpdater;
  v14 = [(BKSeriesManagerUpdater *)&v23 init];
  if (v14)
  {
    v15 = dispatch_queue_create("com.apple.iBooks.BKSeriesManagerUpdater", 0);
    queue = v14->_queue;
    v14->_queue = v15;

    v17 = objc_retainBlock(v13);
    onFinished = v14->_onFinished;
    v14->_onFinished = v17;

    objc_storeStrong(&v14->_database, a4);
    objc_storeWeak(&v14->_manager, v10);
    objc_storeStrong(&v14->_catalogService, a5);
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

- (void)recordAdamIDsAsChecked:(id)a3
{
  v4 = [a3 copy];
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_92D88;
  v7[3] = &unk_2C7BE8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)cancel
{
  v3 = [(BKSeriesManagerUpdater *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_92E68;
  block[3] = &unk_2C7D40;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)finish
{
  v3 = [(BKSeriesManagerUpdater *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_92F34;
  block[3] = &unk_2C7D40;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)updateExpiredSeriesForAssetAdamIDsWithTypes:(id)a3
{
  v4 = BKSeriesManagerAssetTypeAudiobooks[0];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = [v5 objectForKeyedSubscript:BKSeriesManagerAssetTypeBooks[0]];

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

- (void)updateSeriesForSeriesAdamIDsWithTypes:(id)a3 forceCheck:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_93BE8;
  v25 = sub_93BF8;
  v26 = [v6 objectForKeyedSubscript:BKSeriesManagerSeriesTypeBookSeries[0]];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_93BE8;
  v19 = sub_93BF8;
  v20 = [v6 objectForKeyedSubscript:BKSeriesManagerSeriesTypeAudiobookSeries];
  if ([v16[5] count] || objc_msgSend(v22[5], "count"))
  {
    v7 = BCSeriesManagerUpdaterLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v4)
      {
        v8 = @"Force";
      }

      else
      {
        v8 = &stru_2D2930;
      }

      v9 = [v22[5] bu_prettyDescription];
      v10 = [v16[5] bu_prettyDescription];
      *buf = 134218754;
      v30 = self;
      v31 = 2112;
      v32 = v8;
      v33 = 2112;
      v34 = v9;
      v35 = 2112;
      v36 = v10;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "<BKSeriesManagerUpdater: %p> %@ Updating series with adamIDs: books=%@, audiobooks=%@", buf, 0x2Au);
    }

    if (v4)
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

- (void)_seriesInfoRequestBatchSizeWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[BUBag defaultBag];
  v5 = [v4 seriesInfoRequestBatchSize];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_93F40;
  v7[3] = &unk_2CBCF8;
  v8 = v3;
  v6 = v3;
  [v5 valueWithCompletion:v7];
}

- (void)_updateSeriesForSeriesAdamIDsWithFilteredTypes:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_93BE8;
  v19 = sub_93BF8;
  v20 = [v4 objectForKeyedSubscript:BKSeriesManagerSeriesTypeBookSeries[0]];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_93BE8;
  v13 = sub_93BF8;
  v14 = [v4 objectForKeyedSubscript:BKSeriesManagerSeriesTypeAudiobookSeries];
  if ([v16[5] count] || objc_msgSend(v10[5], "count"))
  {
    v5 = BCSeriesManagerUpdaterLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = v16[5];
      v7 = v10[5];
      *buf = 134218498;
      v22 = self;
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

- (void)_updateSeriesContainersWithSeriesIDs:(id)a3 withResources:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(BKSeriesManagerUpdater *)self recordAdamIDsAsChecked:v6];
  v8 = [(BKSeriesManagerUpdater *)self managedObjectContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_948D4;
  v11[3] = &unk_2C89F8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlockAndWait:v11];
}

- (void)_updateSeriesChildrenWithAdamIDs:(id)a3 forSeries:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKSeriesManagerUpdater *)self managedObjectContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_94D84;
  v11[3] = &unk_2C89F8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlockAndWait:v11];
}

- (void)_updateSeriesForAssetIDsWithTypes:(id)a3 forceCheck:(BOOL)a4
{
  v6 = BKSeriesManagerAssetTypeAudiobooks[0];
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:v6];
  v9 = [v7 objectForKeyedSubscript:BKSeriesManagerAssetTypeBooks[0]];

  if ([v9 count] || objc_msgSend(v8, "count"))
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_95654;
    v10[3] = &unk_2CBEB0;
    v10[4] = self;
    v13 = a4;
    v11 = v9;
    v12 = v8;
    [(BKSeriesManagerUpdater *)self _seriesInfoRequestBatchSizeWithCompletion:v10];
  }

  else
  {
    [(BKSeriesManagerUpdater *)self finish];
  }
}

- (void)updateAssetsFromCloudSyncForAssetAdamIDsWithTypes:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:BKSeriesManagerAssetTypeUnknown[0]];
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

  v15 = [(BKSeriesManagerUpdater *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_965A0;
  block[3] = &unk_2C7BE8;
  v19 = v3;
  v20 = self;
  v16 = v3;
  dispatch_async(v15, block);
}

- (void)_updateAssetsFromCloudSyncWithAdamIDs:(id)a3 withAssetResources:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKSeriesManagerUpdater *)self managedObjectContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_96DA8;
  v11[3] = &unk_2C89F8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlockAndWait:v11];
}

- (void)_intervalInDaysWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[BUBag defaultBag];
  v5 = [v4 seriesInfoUpdateIntervalInDays];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_97508;
  v7[3] = &unk_2CBCF8;
  v8 = v3;
  v6 = v3;
  [v5 valueWithCompletion:v7];
}

- (id)_filteredAdamIDs:(id)a3 withIntervalInDays:(double)a4
{
  v6 = a3;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
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
        v14 = [(BKSeriesManagerUpdater *)self managedObjectContext];
        v15 = [BKSeriesCheck shouldRecheckAdamID:v13 withIntervalInDays:v14 inManagedObjectContext:a4];

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

+ (void)_populateItem:(id)a3 withSeriesResource:(id)a4 inMoc:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  [v9 setDifferentValue:&__kCFBooleanTrue forKey:@"isContainer" klass:objc_opt_class()];
  v10 = [v8 name];
  [v9 setDifferentValue:v10 forKey:@"sortTitle" klass:objc_opt_class()];

  v11 = [v8 name];
  [v9 setDifferentValue:v11 forKey:@"seriesTitle" klass:objc_opt_class()];

  v12 = [v8 name];
  [v9 setDifferentValue:v12 forKey:@"title" klass:objc_opt_class()];

  v13 = [v8 id];
  [v9 setDifferentValue:v13 forKey:@"seriesAdamId" klass:objc_opt_class()];

  v14 = [v8 url];
  [v9 setDifferentValue:v14 forKey:@"url" klass:objc_opt_class()];

  v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 isExplicit]);
  [v9 setDifferentValue:v15 forKey:@"isExplicit" klass:objc_opt_class()];

  v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 isOrdered]);
  [v9 setDifferentValue:v16 forKey:@"seriesIsOrdered" klass:objc_opt_class()];

  v17 = [v8 genres];
  v21 = [v17 valueForKey:@"name"];

  [v9 setDifferentValue:v21 forKey:@"genres" klass:objc_opt_class()];
  v18 = [v8 authorCount];
  [v9 setDifferentValue:v18 forKey:@"authorCount" klass:objc_opt_class()];

  v19 = [v8 authorNames];
  [v9 setDifferentValue:v19 forKey:@"authorNames" klass:objc_opt_class()];

  v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 hasUniqueAuthors]);
  [v9 setDifferentValue:v20 forKey:@"hasTooManyAuthors" klass:objc_opt_class()];

  [BKSeriesManagerUpdaterHelper updateSeries:v9 withResource:v8 inMoc:v7];
}

+ (void)_populateItem:(id)a3 position:(unint64_t)a4 withAssetResource:(id)a5 seriesResource:(id)a6
{
  v32 = a3;
  v9 = a5;
  v10 = a6;
  v11 = [v9 id];
  [v32 setDifferentValue:v11 forKey:@"adamId" klass:objc_opt_class()];

  v12 = [v9 artistName];
  [v32 setDifferentValue:v12 forKey:@"author" klass:objc_opt_class()];

  v13 = [v9 width];
  if (![v13 longValue])
  {
    v18 = 0;
    goto LABEL_5;
  }

  v14 = [v9 height];
  v15 = [v14 longValue];

  if (v15)
  {
    v13 = [v9 width];
    v16 = [v13 longValue];
    v17 = [v9 height];
    v18 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v16 / [v17 longValue]);

LABEL_5:
    goto LABEL_7;
  }

  v18 = 0;
LABEL_7:
  [v32 setDifferentValue:v18 forKey:@"coverAspectRatio" klass:objc_opt_class()];
  v19 = [v9 genreName];
  [v32 setDifferentValue:v19 forKey:@"genre" klass:objc_opt_class()];

  v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isSG]);
  [v32 setDifferentValue:v20 forKey:@"hasRACSupport" klass:objc_opt_class()];

  v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isAudiobook]);
  [v32 setDifferentValue:v21 forKey:@"isAudiobook" klass:objc_opt_class()];

  v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isExplicit]);
  [v32 setDifferentValue:v22 forKey:@"isExplicit" klass:objc_opt_class()];

  if (a4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = [NSNumber numberWithUnsignedInteger:a4];
    [v32 setDifferentValue:v23 forKey:@"position" klass:objc_opt_class()];
  }

  v24 = [v9 releaseDate];
  [v32 setDifferentValue:v24 forKey:@"releaseDate" klass:objc_opt_class()];

  v25 = [v10 name];

  [v32 setDifferentValue:v25 forKey:@"seriesTitle" klass:objc_opt_class()];
  v26 = [v9 sequenceDisplayLabel];
  [v32 setDifferentValue:v26 forKey:@"sequenceDisplayName" klass:objc_opt_class()];

  v27 = [v9 sequenceNumber];
  [v32 setDifferentValue:v27 forKey:@"sequenceNumber" klass:objc_opt_class()];

  v28 = [v9 artistName];
  [v32 setDifferentValue:v28 forKey:@"sortAuthor" klass:objc_opt_class()];

  v29 = [v9 name];
  [v32 setDifferentValue:v29 forKey:@"sortTitle" klass:objc_opt_class()];

  v30 = [v9 name];
  [v32 setDifferentValue:v30 forKey:@"title" klass:objc_opt_class()];

  v31 = [v9 url];
  [v32 setDifferentValue:v31 forKey:@"url" klass:objc_opt_class()];
}

- (BKSeriesManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

@end