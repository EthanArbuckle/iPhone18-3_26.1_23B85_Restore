@interface AEHTMLBookRenderingCache
+ (void)purgeCacheForIdentifier:(id)a3;
- (AEHTMLBookRenderingCache)initWithIdentifier:(id)a3;
- (id)_fetchImageForKey:(id)a3 size:(CGSize)a4;
- (id)_keyForAsset:(id)a3 size:(CGSize)a4 pageNumber:(int64_t)a5;
- (id)findRenderingCacheOperationInQueue:(id)a3 withStorageKey:(id)a4 target:(id)a5 selector:(SEL)a6 context:(id)a7;
- (id)imageForSize:(CGSize)a3 data:(id)a4;
- (void)resetPrioritiesForPageNumber:(int64_t)a3;
@end

@implementation AEHTMLBookRenderingCache

- (AEHTMLBookRenderingCache)initWithIdentifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = AEHTMLBookRenderingCache;
  v3 = [(AEHTMLBookRenderingCache *)&v7 initWithIdentifier:a3 memorySize:0x80000];
  if (v3)
  {
    v4 = objc_alloc_init(NSOperationQueue);
    accessQueue = v3->_accessQueue;
    v3->_accessQueue = v4;

    [(NSOperationQueue *)v3->_accessQueue setName:@"com.apple.itunesmobile.immemorycache"];
    [(NSOperationQueue *)v3->_accessQueue setMaxConcurrentOperationCount:1];
  }

  return v3;
}

+ (void)purgeCacheForIdentifier:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [objc_alloc(objc_opt_class()) initWithIdentifier:v3 memorySize:0];

    [v4 clear];
  }
}

- (id)imageForSize:(CGSize)a3 data:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_D46D0;
  v28 = sub_D46E0;
  v29 = 0;
  if (v7)
  {
    if (width >= 16.0 && height >= 16.0)
    {
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_D46E8;
      v19 = &unk_1E5470;
      v22 = width;
      v23 = height;
      v20 = v7;
      v21 = &v24;
      v11 = [NSBlockOperation blockOperationWithBlock:&v16];
      accessQueue = self->_accessQueue;
      v13 = [NSArray arrayWithObject:v11, v16, v17, v18, v19];
      [(NSOperationQueue *)accessQueue addOperations:v13 waitUntilFinished:1];

      v9 = v25[5];
    }
  }

  v14 = v9;
  _Block_object_dispose(&v24, 8);

  return v14;
}

- (id)findRenderingCacheOperationInQueue:(id)a3 withStorageKey:(id)a4 target:(id)a5 selector:(SEL)a6 context:(id)a7
{
  v9 = a3;
  v10 = a4;
  [(AEHTMLBookRenderingCache *)self operationClass];
  [v9 operations];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v24 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        if (v16 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v17 = v16;
          v18 = [v17 storageKey];
          if ([v18 isEqualToString:v10])
          {
            v19 = [v17 isCancelled];

            if ((v19 & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          else
          {
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v17 = 0;
LABEL_16:

  return v17;
}

- (id)_fetchImageForKey:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  if (width < 100.0)
  {
    goto LABEL_2;
  }

  v9 = [(AEHTMLBookRenderingCache *)self memoryCache];
  v8 = [v9 objectForKey:v7];

  if (!v8)
  {
    v24 = 0;
    v10 = +[IMPersistentCacheManager sharedInstance];
    v11 = [(AEHTMLBookRenderingCache *)self persistentCachePath];
    v12 = [v10 cacheForPath:v11 maxSize:0];

    if ([(AEHTMLBookRenderingCache *)self serializeFormat]== 2)
    {
      NSLog(@"Getting Image for key %@ from persistent cache", v7);
      v13 = [v12 copyCGImageForKey:v7 resourceSize:&v24];
      if (!v13)
      {

        v8 = 0;
        goto LABEL_12;
      }

      v14 = v13;
      v15 = CGImageGetWidth(v13);
      v16 = CGImageGetHeight(v14);
      DataProvider = CGImageGetDataProvider(v14);
      v18 = CGDataProviderCopyData(DataProvider);
      [BKPictureBookViewGeometry imageSizeForSize:v15, v16];
      v8 = [(AEHTMLBookRenderingCache *)self imageForSize:v18 data:?];
      CFRelease(v18);
      CGImageRelease(v14);
    }

    else
    {
      v19 = [v12 dataForKey:v7];
      v24 = [v19 length];
      [BKPictureBookViewGeometry imageSizeForSize:width, height];
      v8 = [(AEHTMLBookRenderingCache *)self imageForSize:v19 data:?];
    }

    v20 = +[IMPersistentCacheManager sharedInstance];
    v21 = [(AEHTMLBookRenderingCache *)self persistentCachePath];
    [v20 purgeFromCache:v21];

    if (!v8)
    {

LABEL_2:
      v8 = [(AEHTMLBookRenderingCache *)self fetchImageForKey:v7];
      goto LABEL_12;
    }

    v22 = [(AEHTMLBookRenderingCache *)self memoryCache];
    [v22 setObject:v8 forKey:v7 cost:v24];
  }

LABEL_12:

  return v8;
}

- (id)_keyForAsset:(id)a3 size:(CGSize)a4 pageNumber:(int64_t)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = [(AEHTMLBookRenderingCache *)self keyPrefixForPage:a5];
  v11 = [v9 assetID];

  v12 = [(AEHTMLBookRenderingCache *)self keyForAssetID:v11 prefix:v10 size:width, height];

  return v12;
}

- (void)resetPrioritiesForPageNumber:(int64_t)a3
{
  if ((a3 - 1) <= 0x7FFFFFFFFFFFFFFDLL)
  {
    v5 = objc_autoreleasePoolPush();
    [(AEHTMLBookRenderingCache *)self primaryImageSize];
    v6 = [(AEHTMLBookRenderingCache *)self renderingCacheOperationsForSize:?];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v11 pageNumber];
          if (a3 - v12 >= 0)
          {
            v13 = a3 - v12;
          }

          else
          {
            v13 = v12 - a3;
          }

          if ((a3 - v12) >= 2)
          {
            v14 = 4;
          }

          else
          {
            v14 = 8;
          }

          if (v13 >= 4)
          {
            v15 = -4;
          }

          else
          {
            v15 = v14;
          }

          [v11 setQueuePriority:v15];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    objc_autoreleasePoolPop(v5);
  }
}

@end