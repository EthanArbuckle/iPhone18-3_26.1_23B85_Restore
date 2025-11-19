@interface BKPictureBookReadingStatisticsCollector
+ (id)readingStatisticsCollectorWithAssetViewController:(id)a3;
- (AEAssetViewController)assetViewController;
- (BKPictureBookReadingStatisticsCollector)initWithAssetViewController:(id)a3;
- (BOOL)needPiggyBackOperationForOrdinal:(unint64_t)a3;
- (id)navigationInfoHrefsForOrdinal:(unint64_t)a3;
- (void)invalidate;
- (void)renderingCacheOperationCompleted:(id)a3 textNodeCharacterCounts:(id)a4 cfisForHrefs:(id)a5;
- (void)setupWithBookInfo:(id)a3;
@end

@implementation BKPictureBookReadingStatisticsCollector

+ (id)readingStatisticsCollectorWithAssetViewController:(id)a3
{
  v3 = a3;
  v4 = [[BKPictureBookReadingStatisticsCollectorWK2 alloc] initWithAssetViewController:v3];

  return v4;
}

- (BKPictureBookReadingStatisticsCollector)initWithAssetViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BKPictureBookReadingStatisticsCollector;
  v5 = [(BKPictureBookReadingStatisticsCollector *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_assetViewController, v4);
  }

  return v6;
}

- (void)setupWithBookInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 spineIndexInPackage];
  v34 = self;
  -[BKPictureBookReadingStatisticsCollector setSpineIndexInPackage:](self, "setSpineIndexInPackage:", [v5 unsignedIntegerValue]);

  v6 = +[NSMutableDictionary dictionary];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v35 = v4;
  v7 = [v4 linearDocuments];
  v8 = [v7 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v45;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v44 + 1) + 8 * i);
        v13 = [v12 href];

        if (v13)
        {
          v14 = [v12 documentOrdinal];
          v15 = [v12 href];
          [v6 setObject:v14 forKeyedSubscript:v15];
        }

        else
        {
          v14 = BCReadingStatisticsLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_1384B8(&buf, v43, v14);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v9);
  }

  v16 = +[NSMutableDictionary dictionary];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [v35 chapters];
  v17 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v39;
    v36 = *v39;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v39 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v38 + 1) + 8 * j);
        v22 = [v21 baseHref];

        if (v22)
        {
          v23 = [v21 baseHref];
          v24 = [v6 objectForKeyedSubscript:v23];

          if (v24)
          {
            v25 = v6;
            v26 = [v16 objectForKeyedSubscript:v24];
            v27 = v26;
            if (v26)
            {
              v28 = v26;
            }

            else
            {
              v28 = +[NSMutableArray array];
            }

            v29 = v28;

            [v16 setObject:v29 forKeyedSubscript:v24];
            v48[0] = @"fullHref";
            v30 = [v21 href];
            v49[0] = v30;
            v48[1] = @"href";
            v31 = [v21 baseHref];
            v49[1] = v31;
            v48[2] = @"name";
            v32 = [v21 name];
            v49[2] = v32;
            v33 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:3];
            [v29 addObject:v33];

            v6 = v25;
            v19 = v36;
          }
        }
      }

      v18 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v18);
  }

  [(BKPictureBookReadingStatisticsCollector *)v34 setAllNavigationInfosByOrdinal:v16];
}

- (id)navigationInfoHrefsForOrdinal:(unint64_t)a3
{
  v4 = [(BKPictureBookReadingStatisticsCollector *)self allNavigationInfosByOrdinal];
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [v6 bu_arrayByInvokingBlock:&stru_1E51F0];

  return v7;
}

- (void)renderingCacheOperationCompleted:(id)a3 textNodeCharacterCounts:(id)a4 cfisForHrefs:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(BKPictureBookReadingStatisticsCollector *)self invalidated])
  {
    v11 = [v8 pageNumber] - 1;
    v12 = [(BKPictureBookReadingStatisticsCollector *)self assetViewController];
    v13 = [v12 assetViewControllerDelegate];
    if ([v13 needTOCEntriesForOrdinal:v11])
    {
      v14 = [(BKPictureBookReadingStatisticsCollector *)self allNavigationInfosByOrdinal];
      v15 = [NSNumber numberWithInteger:v11];
      v16 = [v14 objectForKeyedSubscript:v15];

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_BD780;
      v18[3] = &unk_1E4B48;
      v19 = v10;
      v17 = [v16 bu_arrayByInvokingBlock:v18];
      [v13 addTOCEntries:v17 ordinal:v11 completion:0];
    }

    if ([v13 needTextNodeCharacterCountsForOrdinal:v11])
    {
      [v13 addTextNodeCharacterCounts:v9 ordinal:v11 completion:0];
    }
  }
}

- (BOOL)needPiggyBackOperationForOrdinal:(unint64_t)a3
{
  v4 = [(BKPictureBookReadingStatisticsCollector *)self assetViewController];
  v5 = [v4 assetViewControllerDelegate];
  LOBYTE(a3) = [v5 needTextNodeCharacterCountsForOrdinal:a3];

  return a3;
}

- (void)invalidate
{
  [(BKPictureBookReadingStatisticsCollector *)self setAssetViewController:0];
  [(BKPictureBookReadingStatisticsCollector *)self setAllNavigationInfosByOrdinal:0];

  [(BKPictureBookReadingStatisticsCollector *)self setInvalidated:1];
}

- (AEAssetViewController)assetViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_assetViewController);

  return WeakRetained;
}

@end