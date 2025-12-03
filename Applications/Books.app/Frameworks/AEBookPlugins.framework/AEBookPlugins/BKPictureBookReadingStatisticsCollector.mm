@interface BKPictureBookReadingStatisticsCollector
+ (id)readingStatisticsCollectorWithAssetViewController:(id)controller;
- (AEAssetViewController)assetViewController;
- (BKPictureBookReadingStatisticsCollector)initWithAssetViewController:(id)controller;
- (BOOL)needPiggyBackOperationForOrdinal:(unint64_t)ordinal;
- (id)navigationInfoHrefsForOrdinal:(unint64_t)ordinal;
- (void)invalidate;
- (void)renderingCacheOperationCompleted:(id)completed textNodeCharacterCounts:(id)counts cfisForHrefs:(id)hrefs;
- (void)setupWithBookInfo:(id)info;
@end

@implementation BKPictureBookReadingStatisticsCollector

+ (id)readingStatisticsCollectorWithAssetViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [[BKPictureBookReadingStatisticsCollectorWK2 alloc] initWithAssetViewController:controllerCopy];

  return v4;
}

- (BKPictureBookReadingStatisticsCollector)initWithAssetViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = BKPictureBookReadingStatisticsCollector;
  v5 = [(BKPictureBookReadingStatisticsCollector *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_assetViewController, controllerCopy);
  }

  return v6;
}

- (void)setupWithBookInfo:(id)info
{
  infoCopy = info;
  spineIndexInPackage = [infoCopy spineIndexInPackage];
  selfCopy = self;
  -[BKPictureBookReadingStatisticsCollector setSpineIndexInPackage:](self, "setSpineIndexInPackage:", [spineIndexInPackage unsignedIntegerValue]);

  v6 = +[NSMutableDictionary dictionary];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v35 = infoCopy;
  linearDocuments = [infoCopy linearDocuments];
  v8 = [linearDocuments countByEnumeratingWithState:&v44 objects:v51 count:16];
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
          objc_enumerationMutation(linearDocuments);
        }

        v12 = *(*(&v44 + 1) + 8 * i);
        href = [v12 href];

        if (href)
        {
          documentOrdinal = [v12 documentOrdinal];
          href2 = [v12 href];
          [v6 setObject:documentOrdinal forKeyedSubscript:href2];
        }

        else
        {
          documentOrdinal = BCReadingStatisticsLog();
          if (os_log_type_enabled(documentOrdinal, OS_LOG_TYPE_ERROR))
          {
            sub_1384B8(&buf, v43, documentOrdinal);
          }
        }
      }

      v9 = [linearDocuments countByEnumeratingWithState:&v44 objects:v51 count:16];
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
        baseHref = [v21 baseHref];

        if (baseHref)
        {
          baseHref2 = [v21 baseHref];
          v24 = [v6 objectForKeyedSubscript:baseHref2];

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
            href3 = [v21 href];
            v49[0] = href3;
            v48[1] = @"href";
            baseHref3 = [v21 baseHref];
            v49[1] = baseHref3;
            v48[2] = @"name";
            name = [v21 name];
            v49[2] = name;
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

  [(BKPictureBookReadingStatisticsCollector *)selfCopy setAllNavigationInfosByOrdinal:v16];
}

- (id)navigationInfoHrefsForOrdinal:(unint64_t)ordinal
{
  allNavigationInfosByOrdinal = [(BKPictureBookReadingStatisticsCollector *)self allNavigationInfosByOrdinal];
  v5 = [NSNumber numberWithUnsignedInteger:ordinal];
  v6 = [allNavigationInfosByOrdinal objectForKeyedSubscript:v5];

  v7 = [v6 bu_arrayByInvokingBlock:&stru_1E51F0];

  return v7;
}

- (void)renderingCacheOperationCompleted:(id)completed textNodeCharacterCounts:(id)counts cfisForHrefs:(id)hrefs
{
  completedCopy = completed;
  countsCopy = counts;
  hrefsCopy = hrefs;
  if (![(BKPictureBookReadingStatisticsCollector *)self invalidated])
  {
    v11 = [completedCopy pageNumber] - 1;
    assetViewController = [(BKPictureBookReadingStatisticsCollector *)self assetViewController];
    assetViewControllerDelegate = [assetViewController assetViewControllerDelegate];
    if ([assetViewControllerDelegate needTOCEntriesForOrdinal:v11])
    {
      allNavigationInfosByOrdinal = [(BKPictureBookReadingStatisticsCollector *)self allNavigationInfosByOrdinal];
      v15 = [NSNumber numberWithInteger:v11];
      v16 = [allNavigationInfosByOrdinal objectForKeyedSubscript:v15];

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_BD780;
      v18[3] = &unk_1E4B48;
      v19 = hrefsCopy;
      v17 = [v16 bu_arrayByInvokingBlock:v18];
      [assetViewControllerDelegate addTOCEntries:v17 ordinal:v11 completion:0];
    }

    if ([assetViewControllerDelegate needTextNodeCharacterCountsForOrdinal:v11])
    {
      [assetViewControllerDelegate addTextNodeCharacterCounts:countsCopy ordinal:v11 completion:0];
    }
  }
}

- (BOOL)needPiggyBackOperationForOrdinal:(unint64_t)ordinal
{
  assetViewController = [(BKPictureBookReadingStatisticsCollector *)self assetViewController];
  assetViewControllerDelegate = [assetViewController assetViewControllerDelegate];
  LOBYTE(ordinal) = [assetViewControllerDelegate needTextNodeCharacterCountsForOrdinal:ordinal];

  return ordinal;
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