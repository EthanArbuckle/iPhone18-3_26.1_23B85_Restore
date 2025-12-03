@interface FRArticleContentPool
- (FRArticleContentPool)initWithCloudContext:(id)context dataProviderFactory:(id)factory;
- (id)_createEntryForHeadline:(id)headline;
- (id)_entryForHeadline:(id)headline;
- (id)contentForHeadline:(id)headline;
- (id)flintDataProviderForHeadline:(id)headline;
- (void)_fetchEntryForHeadline:(id)headline completionQueue:(id)queue completionHandler:(id)handler;
- (void)_flushIfNeeded;
- (void)addInterestInArticleWithID:(id)d;
- (void)fetchContentForHeadline:(id)headline completionQueue:(id)queue completionHandler:(id)handler;
- (void)fetchFlintDataProviderForHeadline:(id)headline completionQueue:(id)queue completionHandler:(id)handler;
- (void)flushContentWithArticleID:(id)d;
- (void)removeInterestInArticleWithID:(id)d;
@end

@implementation FRArticleContentPool

- (FRArticleContentPool)initWithCloudContext:(id)context dataProviderFactory:(id)factory
{
  contextCopy = context;
  factoryCopy = factory;
  v18.receiver = self;
  v18.super_class = FRArticleContentPool;
  v9 = [(FRArticleContentPool *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_dataProviderFactory, factory);
    v11 = objc_alloc_init(NSMutableDictionary);
    pool = v10->_pool;
    v10->_pool = v11;

    v13 = objc_alloc_init(NSCountedSet);
    interests = v10->_interests;
    v10->_interests = v13;

    v15 = objc_alloc_init(NSMutableDictionary);
    accessDates = v10->_accessDates;
    v10->_accessDates = v15;
  }

  return v10;
}

- (void)addInterestInArticleWithID:(id)d
{
  dCopy = d;
  +[NSThread isMainThread];
  interests = [(FRArticleContentPool *)self interests];
  [interests addObject:dCopy];

  accessDates = [(FRArticleContentPool *)self accessDates];
  v7 = +[NSDate date];
  [accessDates setObject:v7 forKey:dCopy];

  highWaterMark = [(FRArticleContentPool *)self highWaterMark];
  interests2 = [(FRArticleContentPool *)self interests];
  v10 = [interests2 count];

  if (highWaterMark <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = highWaterMark;
  }

  [(FRArticleContentPool *)self setHighWaterMark:v11];
}

- (void)removeInterestInArticleWithID:(id)d
{
  dCopy = d;
  +[NSThread isMainThread];
  interests = [(FRArticleContentPool *)self interests];
  [interests removeObject:dCopy];

  accessDates = [(FRArticleContentPool *)self accessDates];
  v7 = +[NSDate date];
  [accessDates setObject:v7 forKey:dCopy];

  [(FRArticleContentPool *)self _flushIfNeeded];
}

- (id)contentForHeadline:(id)headline
{
  headlineCopy = headline;
  +[NSThread isMainThread];
  v5 = [(FRArticleContentPool *)self _entryForHeadline:headlineCopy];

  content = [v5 content];

  return content;
}

- (void)fetchContentForHeadline:(id)headline completionQueue:(id)queue completionHandler:(id)handler
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100031428;
  v9[3] = &unk_1000C39C0;
  handlerCopy = handler;
  v8 = handlerCopy;
  [(FRArticleContentPool *)self _fetchEntryForHeadline:headline completionQueue:queue completionHandler:v9];
}

- (id)flintDataProviderForHeadline:(id)headline
{
  headlineCopy = headline;
  +[NSThread isMainThread];
  if ([headlineCopy contentType] == 2)
  {
    v5 = [(FRArticleContentPool *)self _entryForHeadline:headlineCopy];
    flintDataProvider = [v5 flintDataProvider];
  }

  else
  {
    flintDataProvider = 0;
  }

  return flintDataProvider;
}

- (void)fetchFlintDataProviderForHeadline:(id)headline completionQueue:(id)queue completionHandler:(id)handler
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000315D8;
  v9[3] = &unk_1000C39C0;
  handlerCopy = handler;
  v8 = handlerCopy;
  [(FRArticleContentPool *)self _fetchEntryForHeadline:headline completionQueue:queue completionHandler:v9];
}

- (void)flushContentWithArticleID:(id)d
{
  dCopy = d;
  +[NSThread isMainThread];
  if (dCopy)
  {
    pool = [(FRArticleContentPool *)self pool];
    [pool removeObjectForKey:dCopy];
  }
}

- (id)_entryForHeadline:(id)headline
{
  headlineCopy = headline;
  +[NSThread isMainThread];
  articleID = [headlineCopy articleID];

  if (articleID)
  {
    pool = [(FRArticleContentPool *)self pool];
    articleID2 = [headlineCopy articleID];
    articleID = [pool objectForKey:articleID2];

    if (!articleID)
    {
      articleID = [(FRArticleContentPool *)self _createEntryForHeadline:headlineCopy];
      pool2 = [(FRArticleContentPool *)self pool];
      articleID3 = [headlineCopy articleID];
      [pool2 setObject:articleID forKey:articleID3];

      [(FRArticleContentPool *)self _flushIfNeeded];
    }
  }

  return articleID;
}

- (void)_fetchEntryForHeadline:(id)headline completionQueue:(id)queue completionHandler:(id)handler
{
  headlineCopy = headline;
  queueCopy = queue;
  handlerCopy = handler;
  [(FRArticleContentPool *)self _createEntryForHeadline:headlineCopy];
  v17 = v15 = headlineCopy;
  v18 = handlerCopy;
  v16 = queueCopy;
  v11 = v17;
  v12 = queueCopy;
  v13 = handlerCopy;
  v14 = headlineCopy;
  FCPerformBlockOnMainThread();
}

- (id)_createEntryForHeadline:(id)headline
{
  headlineCopy = headline;
  v5 = objc_alloc_init(FRArticleContentPoolEntry);
  context = [(FRArticleContentPool *)self context];
  v7 = [headlineCopy contentWithContext:context];
  [(FRArticleContentPoolEntry *)v5 setContent:v7];

  if ([headlineCopy contentType] == 2)
  {
    dataProviderFactory = [(FRArticleContentPool *)self dataProviderFactory];
    content = [(FRArticleContentPoolEntry *)v5 content];
    anfContent = [content anfContent];
    v11 = [dataProviderFactory flintDataProviderForANFContent:anfContent headline:headlineCopy];
    [(FRArticleContentPoolEntry *)v5 setFlintDataProvider:v11];
  }

  return v5;
}

- (void)_flushIfNeeded
{
  +[NSThread isMainThread];
  pool = [(FRArticleContentPool *)self pool];
  v4 = [pool count];
  highWaterMark = [(FRArticleContentPool *)self highWaterMark];

  if (v4 > highWaterMark)
  {
    v6 = +[NSMutableArray array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    pool2 = [(FRArticleContentPool *)self pool];
    v8 = [pool2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(pool2);
          }

          v12 = *(*(&v21 + 1) + 8 * v11);
          interests = [(FRArticleContentPool *)self interests];
          v14 = [interests countForObject:v12];

          if (!v14)
          {
            [v6 addObject:v12];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [pool2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100031E10;
    v20[3] = &unk_1000C1D58;
    v20[4] = self;
    [v6 sortUsingComparator:v20];
    while ([v6 count])
    {
      pool3 = [(FRArticleContentPool *)self pool];
      v16 = [pool3 count];
      highWaterMark2 = [(FRArticleContentPool *)self highWaterMark];

      if (v16 <= highWaterMark2)
      {
        break;
      }

      pool4 = [(FRArticleContentPool *)self pool];
      firstObject = [v6 firstObject];
      [pool4 removeObjectForKey:firstObject];

      [v6 fc_removeFirstObject];
    }
  }
}

@end