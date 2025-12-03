@interface FRSpotlightManager
+ (id)_spotlightFolder;
+ (void)clearIndex;
- (BOOL)_copyThumbnail:(id)thumbnail forHeadline:(id)headline;
- (BOOL)_removeThumbnailForArticleID:(id)d;
- (BOOL)_shouldIndexArticleID:(id)d;
- (BOOL)_shouldIndexArticleWithDate:(id)date;
- (BOOL)addSkipBackupAttributeToItemAtPath:(id)path;
- (FRSpotlightManager)initWithCloudContext:(id)context;
- (id)_itemForTag:(id)tag;
- (id)_thumbnailURLForArticleID:(id)d;
- (id)_thumbnailURLForHeadline:(id)headline;
- (void)_indexArticleIDs:(id)ds searchableIndex:(id)index acknowledgementHandler:(id)handler;
- (void)_indexTags:(id)tags searchableIndex:(id)index;
- (void)_removeAllArticleThumbnailsWithCompletion:(id)completion;
- (void)addSubscriptionsWithTags:(id)tags;
- (void)createSpotlightDirectoryIfNeeded;
- (void)readingHistory:(id)history didChangeFeaturesForArticles:(id)articles;
- (void)readingHistory:(id)history didRemoveArticlesWithIDs:(id)ds;
- (void)readingHistoryDidClear:(id)clear;
- (void)readingList:(id)list didAddArticles:(id)articles removeArticles:(id)removeArticles eventInitiationLevel:(int64_t)level;
- (void)removeArticlesWithIDs:(id)ds;
- (void)removeSubscriptionsWithTags:(id)tags;
- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler;
- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler;
- (void)subscriptionController:(id)controller didAddTags:(id)tags changeTags:(id)changeTags moveTags:(id)moveTags removeTags:(id)removeTags subscriptionType:(unint64_t)type;
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

- (FRSpotlightManager)initWithCloudContext:(id)context
{
  contextCopy = context;
  v23.receiver = self;
  v23.super_class = FRSpotlightManager;
  v5 = [(FRSpotlightManager *)&v23 init];
  if (v5)
  {
    subscriptionController = [contextCopy subscriptionController];
    readingHistory = [contextCopy readingHistory];
    readingList = [contextCopy readingList];
    [subscriptionController addObserver:v5];
    [readingHistory addObserver:v5];
    [readingList addObserver:v5];
    readingList = v5->_readingList;
    v5->_readingList = readingList;
    v10 = readingList;

    subscriptionController = v5->_subscriptionController;
    v5->_subscriptionController = subscriptionController;
    v12 = subscriptionController;

    readingHistory = v5->_readingHistory;
    v5->_readingHistory = readingHistory;
    v14 = readingHistory;

    articleController = [contextCopy articleController];
    articleController = v5->_articleController;
    v5->_articleController = articleController;

    spotlightQueue = [objc_opt_class() spotlightQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005EAF8;
    block[3] = &unk_1000C18D0;
    v18 = v5;
    v22 = v18;
    dispatch_async(spotlightQueue, block);

    v19 = v18;
  }

  return v5;
}

- (void)createSpotlightDirectoryIfNeeded
{
  _spotlightFolder = [objc_opt_class() _spotlightFolder];
  path = [_spotlightFolder path];
  v5 = +[NSFileManager defaultManager];
  v13 = 0;
  if ([v5 fileExistsAtPath:path isDirectory:&v13])
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
    v8 = [v5 removeItemAtPath:path error:&v12];
    v9 = v12;
    if ((v8 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000748FC();
    }
  }

  v11 = 0;
  v10 = [v5 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v11];
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
  if (![(FRSpotlightManager *)self addSkipBackupAttributeToItemAtPath:path]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100074B10();
  }
}

- (BOOL)addSkipBackupAttributeToItemAtPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    goto LABEL_8;
  }

  v4 = [NSURL fileURLWithPath:pathCopy isDirectory:0];
  v5 = +[NSFileManager defaultManager];
  path = [v4 path];
  v7 = [v5 fileExistsAtPath:path];

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

- (void)addSubscriptionsWithTags:(id)tags
{
  tagsCopy = tags;
  spotlightQueue = [objc_opt_class() spotlightQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005EF08;
  v7[3] = &unk_1000C1920;
  v7[4] = self;
  v8 = tagsCopy;
  v6 = tagsCopy;
  dispatch_async(spotlightQueue, v7);
}

- (void)removeSubscriptionsWithTags:(id)tags
{
  tagsCopy = tags;
  spotlightQueue = [objc_opt_class() spotlightQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005F018;
  block[3] = &unk_1000C18D0;
  v7 = tagsCopy;
  v5 = tagsCopy;
  dispatch_async(spotlightQueue, block);
}

+ (void)clearIndex
{
  spotlightQueue = [self spotlightQueue];
  dispatch_async(spotlightQueue, &stru_1000C5DC0);
}

- (void)subscriptionController:(id)controller didAddTags:(id)tags changeTags:(id)changeTags moveTags:(id)moveTags removeTags:(id)removeTags subscriptionType:(unint64_t)type
{
  tagsCopy = tags;
  changeTagsCopy = changeTags;
  removeTagsCopy = removeTags;
  if (!type)
  {
    spotlightQueue = [objc_opt_class() spotlightQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10005F2DC;
    v16[3] = &unk_1000C1970;
    v17 = tagsCopy;
    selfCopy = self;
    v19 = removeTagsCopy;
    v20 = changeTagsCopy;
    dispatch_async(spotlightQueue, v16);
  }
}

- (void)readingHistory:(id)history didChangeFeaturesForArticles:(id)articles
{
  historyCopy = history;
  articlesCopy = articles;
  allKeys = [articlesCopy allKeys];
  v20 = +[NSMutableArray array];
  v8 = +[NSDate date];
  v9 = [v8 dateByAddingTimeInterval:-2592000.0];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = allKeys;
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
        v16 = [articlesCopy objectForKeyedSubscript:v15];
        integerValue = [v16 integerValue];

        if ((integerValue & 4) != 0 && [(FRSpotlightManager *)self _shouldIndexArticleID:v15])
        {
          v18 = [historyCopy lastVisitedDateForArticleID:v15];
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
    spotlightQueue = [objc_opt_class() spotlightQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005F618;
    block[3] = &unk_1000C1920;
    block[4] = self;
    v23 = v20;
    dispatch_async(spotlightQueue, block);
  }
}

- (void)readingHistory:(id)history didRemoveArticlesWithIDs:(id)ds
{
  dsCopy = ds;
  spotlightQueue = [objc_opt_class() spotlightQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005F734;
  v8[3] = &unk_1000C1920;
  v8[4] = self;
  v9 = dsCopy;
  v7 = dsCopy;
  dispatch_async(spotlightQueue, v8);
}

- (void)readingHistoryDidClear:(id)clear
{
  spotlightQueue = [objc_opt_class() spotlightQueue];
  dispatch_async(spotlightQueue, &stru_1000C5E00);
}

- (void)readingList:(id)list didAddArticles:(id)articles removeArticles:(id)removeArticles eventInitiationLevel:(int64_t)level
{
  articlesCopy = articles;
  removeArticlesCopy = removeArticles;
  v11 = [articlesCopy count];
  if (!level && v11)
  {
    v12 = +[CSSearchableIndex defaultSearchableIndex];
    [(FRSpotlightManager *)self _indexArticleIDs:articlesCopy searchableIndex:v12 acknowledgementHandler:0];
  }

  v13 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = removeArticlesCopy;
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

- (void)removeArticlesWithIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    spotlightQueue = [objc_opt_class() spotlightQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10005FAE8;
    v6[3] = &unk_1000C1920;
    v7 = dsCopy;
    selfCopy = self;
    dispatch_async(spotlightQueue, v6);
  }
}

- (BOOL)_shouldIndexArticleID:(id)d
{
  dCopy = d;
  +[NSThread isMainThread];
  readingHistory = [(FRSpotlightManager *)self readingHistory];
  if ([readingHistory hasArticleBeenMarkedAsOffensive:dCopy])
  {
    v6 = 0;
  }

  else
  {
    readingHistory2 = [(FRSpotlightManager *)self readingHistory];
    if ([readingHistory2 hasArticleBeenVisited:dCopy])
    {
      v6 = 1;
    }

    else
    {
      readingList = [(FRSpotlightManager *)self readingList];
      v6 = [readingList isArticleOnReadingList:dCopy];
    }
  }

  return v6;
}

- (void)_indexTags:(id)tags searchableIndex:(id)index
{
  tagsCopy = tags;
  spotlightQueue = [objc_opt_class() spotlightQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005FDF8;
  v8[3] = &unk_1000C1920;
  v9 = tagsCopy;
  selfCopy = self;
  v7 = tagsCopy;
  dispatch_async(spotlightQueue, v8);
}

- (void)_indexArticleIDs:(id)ds searchableIndex:(id)index acknowledgementHandler:(id)handler
{
  dsCopy = ds;
  indexCopy = index;
  handlerCopy = handler;
  if ([dsCopy count])
  {
    articleController = [(FRSpotlightManager *)self articleController];
    v12 = [articleController headlinesFetchOperationForArticleIDs:dsCopy];

    [v12 setCachePolicy:0];
    spotlightQueue = [objc_opt_class() spotlightQueue];
    [v12 setFetchCompletionQueue:spotlightQueue];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100060088;
    v15[3] = &unk_1000C5F38;
    v15[4] = self;
    v16 = indexCopy;
    v17 = handlerCopy;
    [v12 setFetchCompletionBlock:v15];
    v14 = +[NSOperationQueue fc_sharedConcurrentQueue];
    [v14 addOperation:v12];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

- (id)_itemForTag:(id)tag
{
  tagCopy = tag;
  v4 = [[CSSearchableItemAttributeSet alloc] initWithItemContentType:kUTTypeContent];
  identifier = [tagCopy identifier];
  [v4 setRelatedUniqueIdentifier:identifier];

  name = [tagCopy name];
  [v4 setTitle:name];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"news" value:&stru_1000C67A8 table:0];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"feed" value:&stru_1000C67A8 table:0];
  v11 = [NSArray arrayWithObjects:v8, v10, 0];
  [v4 setKeywords:v11];

  v12 = [CSSearchableItem alloc];
  identifier2 = [tagCopy identifier];

  v14 = [v12 initWithUniqueIdentifier:identifier2 domainIdentifier:NSSSpotlightFeedDomainIdentifier attributeSet:v4];

  return v14;
}

- (BOOL)_shouldIndexArticleWithDate:(id)date
{
  if (!date)
  {
    return 0;
  }

  dateCopy = date;
  v4 = +[NSCalendar currentCalendar];
  v5 = +[NSDate date];
  v6 = [v4 components:24 fromDate:dateCopy toDate:v5 options:0];

  v7 = [v6 month] < 2;
  return v7;
}

- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000608CC;
  v7[3] = &unk_1000C4808;
  selfCopy = self;
  indexCopy = index;
  handlerCopy = handler;
  v5 = handlerCopy;
  v6 = indexCopy;
  [(FRSpotlightManager *)selfCopy _removeAllArticleThumbnailsWithCompletion:v7];
}

- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler
{
  indexCopy = index;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100060E2C;
  v12[3] = &unk_1000C3D18;
  identifiersCopy = identifiers;
  selfCopy = self;
  v15 = indexCopy;
  handlerCopy = handler;
  v9 = handlerCopy;
  v10 = indexCopy;
  v11 = identifiersCopy;
  [(FRSpotlightManager *)self _removeAllArticleThumbnailsWithCompletion:v12];
}

- (void)_removeAllArticleThumbnailsWithCompletion:(id)completion
{
  completionCopy = completion;
  spotlightQueue = [objc_opt_class() spotlightQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100061148;
  v7[3] = &unk_1000C1BD8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(spotlightQueue, v7);
}

- (id)_thumbnailURLForHeadline:(id)headline
{
  headlineCopy = headline;
  if (!headlineCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100074E80();
  }

  articleID = [headlineCopy articleID];
  if (!articleID && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100074F44();
  }

  v6 = [(FRSpotlightManager *)self _thumbnailURLForArticleID:articleID];

  return v6;
}

- (id)_thumbnailURLForArticleID:(id)d
{
  dCopy = d;
  if (!dCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100075008();
  }

  _spotlightFolder = [objc_opt_class() _spotlightFolder];
  v5 = [_spotlightFolder URLByAppendingPathComponent:dCopy];

  return v5;
}

- (BOOL)_copyThumbnail:(id)thumbnail forHeadline:(id)headline
{
  thumbnailCopy = thumbnail;
  headlineCopy = headline;
  if (+[NSThread isMainThread]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000750CC();
    if (thumbnailCopy)
    {
      goto LABEL_6;
    }
  }

  else if (thumbnailCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10007518C();
  }

LABEL_6:
  thumbnailAssetHandle = [thumbnailCopy thumbnailAssetHandle];
  filePath = [thumbnailAssetHandle filePath];

  if (![filePath length] && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100075250();
    if (headlineCopy)
    {
      goto LABEL_11;
    }
  }

  else if (headlineCopy)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100075310();
  }

LABEL_11:
  articleID = [headlineCopy articleID];
  if (!articleID)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100075470();
    }

    [filePath length];
    goto LABEL_18;
  }

  if (![filePath length])
  {
LABEL_18:
    v16 = 0;
    goto LABEL_25;
  }

  v11 = [NSURL fileURLWithPath:filePath isDirectory:0];
  v12 = +[NSFileManager defaultManager];
  v13 = [(FRSpotlightManager *)self _thumbnailURLForHeadline:headlineCopy];
  path = [v13 path];
  v15 = [v12 fileExistsAtPath:path];

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

- (BOOL)_removeThumbnailForArticleID:(id)d
{
  dCopy = d;
  if (+[NSThread isMainThread]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100075534();
  }

  v5 = [(FRSpotlightManager *)self _thumbnailURLForArticleID:dCopy];
  v6 = +[NSFileManager defaultManager];
  path = [v5 path];
  if ([v6 fileExistsAtPath:path])
  {
    v12 = 0;
    v8 = [v6 removeItemAtURL:v5 error:&v12];
    v9 = v12;
    v10 = v9;
    if ((v8 & 1) == 0 && v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000755F4(path, v10);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end