@interface FRArticleContentPool
- (FRArticleContentPool)initWithCloudContext:(id)a3 dataProviderFactory:(id)a4;
- (id)_createEntryForHeadline:(id)a3;
- (id)_entryForHeadline:(id)a3;
- (id)contentForHeadline:(id)a3;
- (id)flintDataProviderForHeadline:(id)a3;
- (void)_fetchEntryForHeadline:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5;
- (void)_flushIfNeeded;
- (void)addInterestInArticleWithID:(id)a3;
- (void)fetchContentForHeadline:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5;
- (void)fetchFlintDataProviderForHeadline:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5;
- (void)flushContentWithArticleID:(id)a3;
- (void)removeInterestInArticleWithID:(id)a3;
@end

@implementation FRArticleContentPool

- (FRArticleContentPool)initWithCloudContext:(id)a3 dataProviderFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = FRArticleContentPool;
  v9 = [(FRArticleContentPool *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, a3);
    objc_storeStrong(&v10->_dataProviderFactory, a4);
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

- (void)addInterestInArticleWithID:(id)a3
{
  v4 = a3;
  +[NSThread isMainThread];
  v5 = [(FRArticleContentPool *)self interests];
  [v5 addObject:v4];

  v6 = [(FRArticleContentPool *)self accessDates];
  v7 = +[NSDate date];
  [v6 setObject:v7 forKey:v4];

  v8 = [(FRArticleContentPool *)self highWaterMark];
  v9 = [(FRArticleContentPool *)self interests];
  v10 = [v9 count];

  if (v8 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  [(FRArticleContentPool *)self setHighWaterMark:v11];
}

- (void)removeInterestInArticleWithID:(id)a3
{
  v4 = a3;
  +[NSThread isMainThread];
  v5 = [(FRArticleContentPool *)self interests];
  [v5 removeObject:v4];

  v6 = [(FRArticleContentPool *)self accessDates];
  v7 = +[NSDate date];
  [v6 setObject:v7 forKey:v4];

  [(FRArticleContentPool *)self _flushIfNeeded];
}

- (id)contentForHeadline:(id)a3
{
  v4 = a3;
  +[NSThread isMainThread];
  v5 = [(FRArticleContentPool *)self _entryForHeadline:v4];

  v6 = [v5 content];

  return v6;
}

- (void)fetchContentForHeadline:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100031428;
  v9[3] = &unk_1000C39C0;
  v10 = a5;
  v8 = v10;
  [(FRArticleContentPool *)self _fetchEntryForHeadline:a3 completionQueue:a4 completionHandler:v9];
}

- (id)flintDataProviderForHeadline:(id)a3
{
  v4 = a3;
  +[NSThread isMainThread];
  if ([v4 contentType] == 2)
  {
    v5 = [(FRArticleContentPool *)self _entryForHeadline:v4];
    v6 = [v5 flintDataProvider];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)fetchFlintDataProviderForHeadline:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000315D8;
  v9[3] = &unk_1000C39C0;
  v10 = a5;
  v8 = v10;
  [(FRArticleContentPool *)self _fetchEntryForHeadline:a3 completionQueue:a4 completionHandler:v9];
}

- (void)flushContentWithArticleID:(id)a3
{
  v5 = a3;
  +[NSThread isMainThread];
  if (v5)
  {
    v4 = [(FRArticleContentPool *)self pool];
    [v4 removeObjectForKey:v5];
  }
}

- (id)_entryForHeadline:(id)a3
{
  v4 = a3;
  +[NSThread isMainThread];
  v5 = [v4 articleID];

  if (v5)
  {
    v6 = [(FRArticleContentPool *)self pool];
    v7 = [v4 articleID];
    v5 = [v6 objectForKey:v7];

    if (!v5)
    {
      v5 = [(FRArticleContentPool *)self _createEntryForHeadline:v4];
      v8 = [(FRArticleContentPool *)self pool];
      v9 = [v4 articleID];
      [v8 setObject:v5 forKey:v9];

      [(FRArticleContentPool *)self _flushIfNeeded];
    }
  }

  return v5;
}

- (void)_fetchEntryForHeadline:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(FRArticleContentPool *)self _createEntryForHeadline:v8];
  v17 = v15 = v8;
  v18 = v10;
  v16 = v9;
  v11 = v17;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  FCPerformBlockOnMainThread();
}

- (id)_createEntryForHeadline:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(FRArticleContentPoolEntry);
  v6 = [(FRArticleContentPool *)self context];
  v7 = [v4 contentWithContext:v6];
  [(FRArticleContentPoolEntry *)v5 setContent:v7];

  if ([v4 contentType] == 2)
  {
    v8 = [(FRArticleContentPool *)self dataProviderFactory];
    v9 = [(FRArticleContentPoolEntry *)v5 content];
    v10 = [v9 anfContent];
    v11 = [v8 flintDataProviderForANFContent:v10 headline:v4];
    [(FRArticleContentPoolEntry *)v5 setFlintDataProvider:v11];
  }

  return v5;
}

- (void)_flushIfNeeded
{
  +[NSThread isMainThread];
  v3 = [(FRArticleContentPool *)self pool];
  v4 = [v3 count];
  v5 = [(FRArticleContentPool *)self highWaterMark];

  if (v4 > v5)
  {
    v6 = +[NSMutableArray array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = [(FRArticleContentPool *)self pool];
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * v11);
          v13 = [(FRArticleContentPool *)self interests];
          v14 = [v13 countForObject:v12];

          if (!v14)
          {
            [v6 addObject:v12];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
      v15 = [(FRArticleContentPool *)self pool];
      v16 = [v15 count];
      v17 = [(FRArticleContentPool *)self highWaterMark];

      if (v16 <= v17)
      {
        break;
      }

      v18 = [(FRArticleContentPool *)self pool];
      v19 = [v6 firstObject];
      [v18 removeObjectForKey:v19];

      [v6 fc_removeFirstObject];
    }
  }
}

@end