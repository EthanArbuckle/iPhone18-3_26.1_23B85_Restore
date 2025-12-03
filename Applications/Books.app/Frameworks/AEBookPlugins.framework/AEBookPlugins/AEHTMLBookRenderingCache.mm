@interface AEHTMLBookRenderingCache
+ (void)purgeCacheForIdentifier:(id)identifier;
- (AEHTMLBookRenderingCache)initWithIdentifier:(id)identifier;
- (id)_fetchImageForKey:(id)key size:(CGSize)size;
- (id)_keyForAsset:(id)asset size:(CGSize)size pageNumber:(int64_t)number;
- (id)findRenderingCacheOperationInQueue:(id)queue withStorageKey:(id)key target:(id)target selector:(SEL)selector context:(id)context;
- (id)imageForSize:(CGSize)size data:(id)data;
- (void)resetPrioritiesForPageNumber:(int64_t)number;
@end

@implementation AEHTMLBookRenderingCache

- (AEHTMLBookRenderingCache)initWithIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = AEHTMLBookRenderingCache;
  v3 = [(AEHTMLBookRenderingCache *)&v7 initWithIdentifier:identifier memorySize:0x80000];
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

+ (void)purgeCacheForIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    v4 = [objc_alloc(objc_opt_class()) initWithIdentifier:identifierCopy memorySize:0];

    [v4 clear];
  }
}

- (id)imageForSize:(CGSize)size data:(id)data
{
  height = size.height;
  width = size.width;
  dataCopy = data;
  v8 = dataCopy;
  v9 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_D46D0;
  v28 = sub_D46E0;
  v29 = 0;
  if (dataCopy)
  {
    if (width >= 16.0 && height >= 16.0)
    {
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_D46E8;
      v19 = &unk_1E5470;
      v22 = width;
      v23 = height;
      v20 = dataCopy;
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

- (id)findRenderingCacheOperationInQueue:(id)queue withStorageKey:(id)key target:(id)target selector:(SEL)selector context:(id)context
{
  queueCopy = queue;
  keyCopy = key;
  [(AEHTMLBookRenderingCache *)self operationClass];
  [queueCopy operations];
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
          storageKey = [v17 storageKey];
          if ([storageKey isEqualToString:keyCopy])
          {
            isCancelled = [v17 isCancelled];

            if ((isCancelled & 1) == 0)
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

- (id)_fetchImageForKey:(id)key size:(CGSize)size
{
  height = size.height;
  width = size.width;
  keyCopy = key;
  if (width < 100.0)
  {
    goto LABEL_2;
  }

  memoryCache = [(AEHTMLBookRenderingCache *)self memoryCache];
  v8 = [memoryCache objectForKey:keyCopy];

  if (!v8)
  {
    v24 = 0;
    v10 = +[IMPersistentCacheManager sharedInstance];
    persistentCachePath = [(AEHTMLBookRenderingCache *)self persistentCachePath];
    v12 = [v10 cacheForPath:persistentCachePath maxSize:0];

    if ([(AEHTMLBookRenderingCache *)self serializeFormat]== 2)
    {
      NSLog(@"Getting Image for key %@ from persistent cache", keyCopy);
      v13 = [v12 copyCGImageForKey:keyCopy resourceSize:&v24];
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
      v19 = [v12 dataForKey:keyCopy];
      v24 = [v19 length];
      [BKPictureBookViewGeometry imageSizeForSize:width, height];
      v8 = [(AEHTMLBookRenderingCache *)self imageForSize:v19 data:?];
    }

    v20 = +[IMPersistentCacheManager sharedInstance];
    persistentCachePath2 = [(AEHTMLBookRenderingCache *)self persistentCachePath];
    [v20 purgeFromCache:persistentCachePath2];

    if (!v8)
    {

LABEL_2:
      v8 = [(AEHTMLBookRenderingCache *)self fetchImageForKey:keyCopy];
      goto LABEL_12;
    }

    memoryCache2 = [(AEHTMLBookRenderingCache *)self memoryCache];
    [memoryCache2 setObject:v8 forKey:keyCopy cost:v24];
  }

LABEL_12:

  return v8;
}

- (id)_keyForAsset:(id)asset size:(CGSize)size pageNumber:(int64_t)number
{
  height = size.height;
  width = size.width;
  assetCopy = asset;
  v10 = [(AEHTMLBookRenderingCache *)self keyPrefixForPage:number];
  assetID = [assetCopy assetID];

  height = [(AEHTMLBookRenderingCache *)self keyForAssetID:assetID prefix:v10 size:width, height];

  return height;
}

- (void)resetPrioritiesForPageNumber:(int64_t)number
{
  if ((number - 1) <= 0x7FFFFFFFFFFFFFFDLL)
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
          pageNumber = [v11 pageNumber];
          if (number - pageNumber >= 0)
          {
            v13 = number - pageNumber;
          }

          else
          {
            v13 = pageNumber - number;
          }

          if ((number - pageNumber) >= 2)
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