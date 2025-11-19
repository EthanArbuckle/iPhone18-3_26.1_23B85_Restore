@interface FRSpotlightManager
+ (id)_spotlightFolder;
+ (void)clearIndex;
- (BOOL)_copyThumbnail:(id)a3 forHeadline:(id)a4;
- (BOOL)_removeThumbnailForArticleID:(id)a3;
- (BOOL)_shouldIndexArticleID:(id)a3;
- (BOOL)_shouldIndexArticleWithDate:(id)a3;
- (BOOL)addSkipBackupAttributeToItemAtPath:(id)a3;
- (FRSpotlightManager)initWithCloudContext:(id)a3;
- (id)_itemForTag:(id)a3;
- (id)_thumbnailURLForArticleID:(id)a3;
- (id)_thumbnailURLForHeadline:(id)a3;
- (void)_indexArticleIDs:(id)a3 searchableIndex:(id)a4 acknowledgementHandler:(id)a5;
- (void)_indexTags:(id)a3 searchableIndex:(id)a4;
- (void)_removeAllArticleThumbnailsWithCompletion:(id)a3;
- (void)addSubscriptionsWithTags:(id)a3;
- (void)createSpotlightDirectoryIfNeeded;
- (void)readingHistory:(id)a3 didChangeFeaturesForArticles:(id)a4;
- (void)readingHistory:(id)a3 didRemoveArticlesWithIDs:(id)a4;
- (void)readingHistoryDidClear:(id)a3;
- (void)readingList:(id)a3 didAddArticles:(id)a4 removeArticles:(id)a5 eventInitiationLevel:(int64_t)a6;
- (void)removeArticlesWithIDs:(id)a3;
- (void)removeSubscriptionsWithTags:(id)a3;
- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4;
- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5;
- (void)subscriptionController:(id)a3 didAddTags:(id)a4 changeTags:(id)a5 moveTags:(id)a6 removeTags:(id)a7 subscriptionType:(unint64_t)a8;
@end

@implementation FRSpotlightManager

+ (id)_spotlightFolder
{
  if (qword_1000E6360[0] != -1)
  {
    sub_100074764();
  }

  v3 = qword_1000E6358;

  return v3;
}

- (FRSpotlightManager)initWithCloudContext:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = FRSpotlightManager;
  v5 = [(FRSpotlightManager *)&v23 init];
  if (v5)
  {
    v6 = [v4 subscriptionController];
    v7 = [v4 readingHistory];
    v8 = [v4 readingList];
    [v6 addObserver:v5];
    [v7 addObserver:v5];
    [v8 addObserver:v5];
    readingList = v5->_readingList;
    v5->_readingList = v8;
    v10 = v8;

    subscriptionController = v5->_subscriptionController;
    v5->_subscriptionController = v6;
    v12 = v6;

    readingHistory = v5->_readingHistory;
    v5->_readingHistory = v7;
    v14 = v7;

    v15 = [v4 articleController];
    articleController = v5->_articleController;
    v5->_articleController = v15;

    v17 = [objc_opt_class() spotlightQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005EAF8;
    block[3] = &unk_1000C18D0;
    v18 = v5;
    v22 = v18;
    dispatch_async(v17, block);

    v19 = v18;
  }

  return v5;
}

- (void)createSpotlightDirectoryIfNeeded
{
  v3 = [objc_opt_class() _spotlightFolder];
  v4 = [v3 path];
  v5 = +[NSFileManager defaultManager];
  v13 = 0;
  if ([v5 fileExistsAtPath:v4 isDirectory:&v13])
  {
    v6 = v13;
    if ((v13 & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10007483C();
      }

      v6 = v13;
    }

    if (v6)
    {
      v7 = 0;
      goto LABEL_17;
    }

    v12 = 0;
    v8 = [v5 removeItemAtPath:v4 error:&v12];
    v9 = v12;
    if ((v8 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000748FC();
    }
  }

  v11 = 0;
  v10 = [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v11];
  v7 = v11;
  if ((v10 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000749D4();
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    else if (!v7)
    {
      goto LABEL_17;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100074A94();
    }
  }

LABEL_17:
  if (![(FRSpotlightManager *)self addSkipBackupAttributeToItemAtPath:v4]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100074B10();
  }
}

- (BOOL)addSkipBackupAttributeToItemAtPath:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = [NSURL fileURLWithPath:v3 isDirectory:0];
  v5 = +[NSFileManager defaultManager];
  v6 = [v4 path];
  v7 = [v5 fileExistsAtPath:v6];

  if (!v7)
  {

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v11 = 0;
  v8 = [v4 setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:&v11];
  v9 = v11;
  if ((v8 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100074BD0(v4);
  }

LABEL_9:
  return v8;
}

- (void)addSubscriptionsWithTags:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() spotlightQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005EF08;
  v7[3] = &unk_1000C1920;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)removeSubscriptionsWithTags:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() spotlightQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005F018;
  block[3] = &unk_1000C18D0;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

+ (void)clearIndex
{
  v2 = [a1 spotlightQueue];
  dispatch_async(v2, &stru_1000C5DC0);
}

- (void)subscriptionController:(id)a3 didAddTags:(id)a4 changeTags:(id)a5 moveTags:(id)a6 removeTags:(id)a7 subscriptionType:(unint64_t)a8
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (!a8)
  {
    v15 = [objc_opt_class() spotlightQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10005F2DC;
    v16[3] = &unk_1000C1970;
    v17 = v12;
    v18 = self;
    v19 = v14;
    v20 = v13;
    dispatch_async(v15, v16);
  }
}

- (void)readingHistory:(id)a3 didChangeFeaturesForArticles:(id)a4
{
  v21 = a3;
  v6 = a4;
  v7 = [v6 allKeys];
  v20 = +[NSMutableArray array];
  v8 = +[NSDate date];
  v9 = [v8 dateByAddingTimeInterval:-2592000.0];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [v6 objectForKeyedSubscript:v15];
        v17 = [v16 integerValue];

        if ((v17 & 4) != 0 && [(FRSpotlightManager *)self _shouldIndexArticleID:v15])
        {
          v18 = [v21 lastVisitedDateForArticleID:v15];
          if ([v18 fc_isLaterThan:v9])
          {
            [v20 addObject:v15];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }

  if ([v20 count])
  {
    v19 = [objc_opt_class() spotlightQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005F618;
    block[3] = &unk_1000C1920;
    block[4] = self;
    v23 = v20;
    dispatch_async(v19, block);
  }
}

- (void)readingHistory:(id)a3 didRemoveArticlesWithIDs:(id)a4
{
  v5 = a4;
  v6 = [objc_opt_class() spotlightQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005F734;
  v8[3] = &unk_1000C1920;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)readingHistoryDidClear:(id)a3
{
  v3 = [objc_opt_class() spotlightQueue];
  dispatch_async(v3, &stru_1000C5E00);
}

- (void)readingList:(id)a3 didAddArticles:(id)a4 removeArticles:(id)a5 eventInitiationLevel:(int64_t)a6
{
  v9 = a4;
  v10 = a5;
  v11 = [v9 count];
  if (!a6 && v11)
  {
    v12 = +[CSSearchableIndex defaultSearchableIndex];
    [(FRSpotlightManager *)self _indexArticleIDs:v9 searchableIndex:v12 acknowledgementHandler:0];
  }

  v13 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v20 + 1) + 8 * i);
        if (![(FRSpotlightManager *)self _shouldIndexArticleID:v19, v20])
        {
          [v13 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v16);
  }

  [(FRSpotlightManager *)self removeArticlesWithIDs:v13];
}

- (void)removeArticlesWithIDs:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [objc_opt_class() spotlightQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10005FAE8;
    v6[3] = &unk_1000C1920;
    v7 = v4;
    v8 = self;
    dispatch_async(v5, v6);
  }
}

- (BOOL)_shouldIndexArticleID:(id)a3
{
  v4 = a3;
  +[NSThread isMainThread];
  v5 = [(FRSpotlightManager *)self readingHistory];
  if ([v5 hasArticleBeenMarkedAsOffensive:v4])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(FRSpotlightManager *)self readingHistory];
    if ([v7 hasArticleBeenVisited:v4])
    {
      v6 = 1;
    }

    else
    {
      v8 = [(FRSpotlightManager *)self readingList];
      v6 = [v8 isArticleOnReadingList:v4];
    }
  }

  return v6;
}

- (void)_indexTags:(id)a3 searchableIndex:(id)a4
{
  v5 = a3;
  v6 = [objc_opt_class() spotlightQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005FDF8;
  v8[3] = &unk_1000C1920;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)_indexArticleIDs:(id)a3 searchableIndex:(id)a4 acknowledgementHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = [(FRSpotlightManager *)self articleController];
    v12 = [v11 headlinesFetchOperationForArticleIDs:v8];

    [v12 setCachePolicy:0];
    v13 = [objc_opt_class() spotlightQueue];
    [v12 setFetchCompletionQueue:v13];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100060088;
    v15[3] = &unk_1000C5F38;
    v15[4] = self;
    v16 = v9;
    v17 = v10;
    [v12 setFetchCompletionBlock:v15];
    v14 = +[NSOperationQueue fc_sharedConcurrentQueue];
    [v14 addOperation:v12];
  }

  else if (v10)
  {
    v10[2](v10);
  }
}

- (id)_itemForTag:(id)a3
{
  v3 = a3;
  v4 = [[CSSearchableItemAttributeSet alloc] initWithItemContentType:kUTTypeContent];
  v5 = [v3 identifier];
  [v4 setRelatedUniqueIdentifier:v5];

  v6 = [v3 name];
  [v4 setTitle:v6];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"news" value:&stru_1000C67A8 table:0];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"feed" value:&stru_1000C67A8 table:0];
  v11 = [NSArray arrayWithObjects:v8, v10, 0];
  [v4 setKeywords:v11];

  v12 = [CSSearchableItem alloc];
  v13 = [v3 identifier];

  v14 = [v12 initWithUniqueIdentifier:v13 domainIdentifier:NSSSpotlightFeedDomainIdentifier attributeSet:v4];

  return v14;
}

- (BOOL)_shouldIndexArticleWithDate:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v4 = +[NSCalendar currentCalendar];
  v5 = +[NSDate date];
  v6 = [v4 components:24 fromDate:v3 toDate:v5 options:0];

  v7 = [v6 month] < 2;
  return v7;
}

- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000608CC;
  v7[3] = &unk_1000C4808;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(FRSpotlightManager *)v8 _removeAllArticleThumbnailsWithCompletion:v7];
}

- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5
{
  v8 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100060E2C;
  v12[3] = &unk_1000C3D18;
  v13 = a4;
  v14 = self;
  v15 = v8;
  v16 = a5;
  v9 = v16;
  v10 = v8;
  v11 = v13;
  [(FRSpotlightManager *)self _removeAllArticleThumbnailsWithCompletion:v12];
}

- (void)_removeAllArticleThumbnailsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() spotlightQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100061148;
  v7[3] = &unk_1000C1BD8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)_thumbnailURLForHeadline:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100074E80();
  }

  v5 = [v4 articleID];
  if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100074F44();
  }

  v6 = [(FRSpotlightManager *)self _thumbnailURLForArticleID:v5];

  return v6;
}

- (id)_thumbnailURLForArticleID:(id)a3
{
  v3 = a3;
  if (!v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100075008();
  }

  v4 = [objc_opt_class() _spotlightFolder];
  v5 = [v4 URLByAppendingPathComponent:v3];

  return v5;
}

- (BOOL)_copyThumbnail:(id)a3 forHeadline:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[NSThread isMainThread]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000750CC();
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else if (v6)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10007518C();
  }

LABEL_6:
  v8 = [v6 thumbnailAssetHandle];
  v9 = [v8 filePath];

  if (![v9 length] && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100075250();
    if (v7)
    {
      goto LABEL_11;
    }
  }

  else if (v7)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100075310();
  }

LABEL_11:
  v10 = [v7 articleID];
  if (!v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100075470();
    }

    [v9 length];
    goto LABEL_18;
  }

  if (![v9 length])
  {
LABEL_18:
    v16 = 0;
    goto LABEL_25;
  }

  v11 = [NSURL fileURLWithPath:v9 isDirectory:0];
  v12 = +[NSFileManager defaultManager];
  v13 = [(FRSpotlightManager *)self _thumbnailURLForHeadline:v7];
  v14 = [v13 path];
  v15 = [v12 fileExistsAtPath:v14];

  if (v15)
  {
    v16 = 1;
  }

  else
  {
    v20 = 0;
    v16 = [v12 copyItemAtURL:v11 toURL:v13 error:&v20];
    v17 = v20;
    v18 = v17;
    if ((v16 & 1) == 0 && v17 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000753D4(v18);
    }
  }

LABEL_25:
  return v16;
}

- (BOOL)_removeThumbnailForArticleID:(id)a3
{
  v4 = a3;
  if (+[NSThread isMainThread]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100075534();
  }

  v5 = [(FRSpotlightManager *)self _thumbnailURLForArticleID:v4];
  v6 = +[NSFileManager defaultManager];
  v7 = [v5 path];
  if ([v6 fileExistsAtPath:v7])
  {
    v12 = 0;
    v8 = [v6 removeItemAtURL:v5 error:&v12];
    v9 = v12;
    v10 = v9;
    if ((v8 & 1) == 0 && v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000755F4(v7, v10);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end