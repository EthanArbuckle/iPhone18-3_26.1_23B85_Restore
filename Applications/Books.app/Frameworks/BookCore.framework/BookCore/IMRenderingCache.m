@interface IMRenderingCache
- (BOOL)hasImageForKey:(id)a3;
- (CGSize)primaryImageSize;
- (CGSize)scaleAdjustedImageSize:(CGSize)result;
- (IMRenderingCache)initWithIdentifier:(id)a3 memorySize:(int64_t)a4;
- (SEL)selectorForTarget:(id)a3;
- (id)_persistentCacheFileName;
- (id)cacheDirectory;
- (id)cachePrefix;
- (id)fetchImageForAssetID:(id)a3 prefix:(id)a4 size:(CGSize)a5;
- (id)fetchImageForKey:(id)a3 canAcceptSurfaceBacked:(BOOL)a4;
- (id)findRenderingCacheOperationInQueue:(id)a3 withStorageKey:(id)a4 target:(id)a5 selector:(SEL)a6 context:(id)a7;
- (id)keyForAssetID:(id)a3 prefix:(id)a4 size:(CGSize)a5;
- (id)renderQueue;
- (id)renderingCacheOperationsForSize:(CGSize)a3;
- (void)cancelRenderingCacheOperationsInQueue:(id)a3;
- (void)cancelRenderingCacheOperationsInQueue:(id)a3 forTarget:(id)a4;
- (void)cancelRenderingCacheOperationsInQueue:(id)a3 forTarget:(id)a4 context:(id)a5;
- (void)clear;
- (void)dealloc;
- (void)enqueueRenderingCacheOperation:(id)a3;
- (void)imRenderingCacheDidReceiveMemoryWarning:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)resume;
- (void)storeImage:(id)a3 forKey:(id)a4 size:(CGSize)a5 format:(int)a6;
- (void)suspend;
@end

@implementation IMRenderingCache

- (IMRenderingCache)initWithIdentifier:(id)a3 memorySize:(int64_t)a4
{
  v6 = a3;
  v31.receiver = self;
  v31.super_class = IMRenderingCache;
  v7 = [(IMRenderingCache *)&v31 init];
  if (v7)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v7 selector:"imRenderingCacheDidReceiveMemoryWarning:" name:UIApplicationDidReceiveMemoryWarningNotification object:0];

    v7->_primaryImageSize = CGSizeZero;
    v9 = objc_alloc_init(NSOperationQueue);
    writeQueue = v7->_writeQueue;
    v7->_writeQueue = v9;

    [(NSOperationQueue *)v7->_writeQueue setMaxConcurrentOperationCount:1];
    v11 = [v6 copy];
    identifier = v7->_identifier;
    v7->_identifier = v11;

    v13 = [(IMRenderingCache *)v7 _persistentCacheFileName];
    v14 = [(IMRenderingCache *)v7 cacheDirectory];
    v15 = objc_alloc_init(NSFileManager);
    v30 = 0;
    v16 = [v15 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:0 error:&v30];
    v17 = v30;
    v18 = v17;
    if ((v16 & 1) == 0)
    {
      v19 = [v17 localizedDescription];
      [NSException raise:NSInternalInconsistencyException format:@"Could not create cacheDirectory %@ [Error: %@]", v14, v19];
    }

    v20 = [v14 stringByAppendingPathComponent:v13];
    [(IMRenderingCache *)v7 setPersistentCachePath:v20];
    v21 = +[IMPersistentCacheManager sharedInstance];
    v22 = [(IMRenderingCache *)v7 persistentCachePath];
    v23 = [v21 cacheForPath:v22 maxSize:0];

    if (a4 >= 1)
    {
      v24 = objc_alloc_init(IMMemoryCache);
      memoryCache = v7->_memoryCache;
      v7->_memoryCache = v24;

      [(IMMemoryCache *)v7->_memoryCache setTotalCostLimit:a4];
    }

    if (([UIScreen instancesRespondToSelector:"scale"]& 1) != 0)
    {
      v26 = +[UIScreen mainScreen];
      [v26 scale];
      v7->_scale = v27;

      v28 = v7->_scale != 1.0;
    }

    else
    {
      v28 = 0;
      v7->_scale = 1.0;
    }

    v7->_scaleNeeded = v28;
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(IMRenderingCache *)self cancelRenderingCacheOperations];
  [(NSOperationQueue *)self->_renderQueue cancelAllOperations];
  [(NSOperationQueue *)self->_renderQueue removeObserver:self forKeyPath:@"operations" context:&off_33ED08];
  renderQueue = self->_renderQueue;
  self->_renderQueue = 0;

  [(NSOperationQueue *)self->_writeQueue cancelAllOperations];
  writeQueue = self->_writeQueue;
  self->_writeQueue = 0;

  v6 = +[IMPersistentCacheManager sharedInstance];
  v7 = [(IMRenderingCache *)self persistentCachePath];
  [v6 purgeFromCache:v7];

  memoryCache = self->_memoryCache;
  self->_memoryCache = 0;

  identifier = self->_identifier;
  self->_identifier = 0;

  v10.receiver = self;
  v10.super_class = IMRenderingCache;
  [(IMRenderingCache *)&v10 dealloc];
}

- (void)imRenderingCacheDidReceiveMemoryWarning:(id)a3
{
  [(NSOperationQueue *)self->_writeQueue cancelAllOperations];
  memoryCache = self->_memoryCache;

  [(IMMemoryCache *)memoryCache removeAllObjects];
}

- (CGSize)scaleAdjustedImageSize:(CGSize)result
{
  if (self->_scaleNeeded)
  {
    scale = self->_scale;
    result.width = result.width * scale;
    result.height = result.height * scale;
  }

  return result;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == &off_33ED08)
  {
    v7 = [(NSOperationQueue *)self->_renderQueue operations:a3];
    v8 = [v7 count];

    if (!v8)
    {

      [(IMRenderingCache *)self renderQueuesEmptied];
    }
  }
}

- (id)renderQueue
{
  renderQueue = self->_renderQueue;
  if (!renderQueue)
  {
    v4 = objc_alloc_init(NSOperationQueue);
    v5 = self->_renderQueue;
    self->_renderQueue = v4;

    [(NSOperationQueue *)self->_renderQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)self->_renderQueue addObserver:self forKeyPath:@"operations" options:0 context:&off_33ED08];
    renderQueue = self->_renderQueue;
  }

  return renderQueue;
}

- (void)suspend
{
  v2 = [(IMRenderingCache *)self renderQueue];
  [v2 setSuspended:1];
}

- (void)resume
{
  v2 = [(IMRenderingCache *)self renderQueue];
  [v2 setSuspended:0];
}

- (void)clear
{
  [(IMRenderingCache *)self cancelRenderingCacheOperations];
  [(IMMemoryCache *)self->_memoryCache removeAllObjects];
  v3 = +[IMPersistentCacheManager sharedInstance];
  v4 = [(IMRenderingCache *)self persistentCachePath];
  v7 = [v3 cacheForPath:v4 maxSize:0];

  [v7 clear];
  v5 = +[IMPersistentCacheManager sharedInstance];
  v6 = [(IMRenderingCache *)self persistentCachePath];
  [v5 purgeFromCache:v6];
}

- (void)cancelRenderingCacheOperationsInQueue:(id)a3
{
  v3 = [a3 operations];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 setImageCache:0];
          [v8 setTarget:0];
          [v8 setContext:0];
          [v8 cancel];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)cancelRenderingCacheOperationsInQueue:(id)a3 forTarget:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a3 operations];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v14 target];
          v16 = v15;
          if (v15 == v7)
          {
            v17 = [v14 context];

            if (v17 == v8)
            {
              [v14 setTarget:0];
              [v14 setContext:0];
              [v14 cancel];
            }
          }

          else
          {
          }
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)cancelRenderingCacheOperationsInQueue:(id)a3 forTarget:(id)a4
{
  v5 = a4;
  v6 = [a3 operations];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 target];

          if (v12 == v5)
          {
            [v11 setTarget:0];
            [v11 setContext:0];
            [v11 cancel];
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (id)findRenderingCacheOperationInQueue:(id)a3 withStorageKey:(id)a4 target:(id)a5 selector:(SEL)a6 context:(id)a7
{
  v24 = a4;
  v11 = a5;
  v25 = a7;
  [a3 operations];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = v29 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = v13;
  v15 = *v27;
  do
  {
    v16 = 0;
    do
    {
      if (*v27 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v26 + 1) + 8 * v16);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
        v19 = [v18 target];
        if (v19 == v11 && [v18 selector] == a6)
        {
          v20 = [v18 context];

          if (v20 == v25)
          {
            v19 = [v18 storageKey];
            if (![v19 isEqualToString:v24])
            {
              goto LABEL_9;
            }

            v21 = [v18 isCancelled];

            if ((v21 & 1) == 0)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
LABEL_9:
        }
      }

      v16 = v16 + 1;
    }

    while (v14 != v16);
    v22 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    v14 = v22;
  }

  while (v22);
LABEL_18:
  v18 = 0;
LABEL_19:

  return v18;
}

- (id)renderingCacheOperationsForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self->_renderQueue;
  v6 = objc_alloc_init(NSMutableArray);
  v7 = [(NSOperationQueue *)v5 operations];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v12 isCancelled] & 1) == 0)
        {
          v13 = v12;
          [v13 desiredSize];
          if (v15 == width && v14 == height)
          {
            [v6 addObject:v13];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  return v6;
}

- (void)enqueueRenderingCacheOperation:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [v4 desiredSize];
    v6 = v5;
    [(IMRenderingCache *)self primaryImageSize];
    [v4 setThreadPriority:dbl_2A4230[v6 < v7]];
    v8 = [(IMRenderingCache *)self renderQueue];
    [v8 addOperation:v4];
  }
}

- (SEL)selectorForTarget:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (objc_opt_respondsToSelector())
  {
    return "renderingCacheCallbackImage:context:pageNumber:";
  }

  return "renderingCacheCallbackImage:context:";
}

- (id)keyForAssetID:(id)a3 prefix:(id)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &stru_2D2930;
  }

  if (width == CGSizeZero.width && height == CGSizeZero.height)
  {
    [NSString stringWithFormat:@"%@;%@", v10, v8, v14, v15];
  }

  else
  {
    [NSString stringWithFormat:@"%@;%@;%06dx%06d", v10, v8, width, height];
  }
  v12 = ;

  return v12;
}

- (id)cachePrefix
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)cacheDirectory
{
  v3 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v4 = [v3 lastObject];

  v5 = [(IMRenderingCache *)self cachePrefix];
  v6 = [v4 stringByAppendingPathComponent:v5];

  return v6;
}

- (id)_persistentCacheFileName
{
  v3 = [(IMRenderingCache *)self persistentCacheFileName];
  v4 = [NSNumber numberWithInteger:[(IMRenderingCache *)self cacheVersion]];
  v5 = +[UIDevice currentDevice];
  v6 = [v5 systemVersion];
  v7 = [NSString stringWithFormat:@"%@-%@-%@.cache", v3, v4, v6];

  return v7;
}

- (void)storeImage:(id)a3 forKey:(id)a4 size:(CGSize)a5 format:(int)a6
{
  v6 = *&a6;
  v18 = a3;
  v9 = a4;
  if (v18)
  {
    if ([v9 length])
    {
      [v18 size];
      v11 = v10;
      [v18 size];
      [(IMMemoryCache *)self->_memoryCache setObject:v18 forKey:v9 cost:(v11 * v12 + v11 * v12)];
      if (v6 != -1)
      {
        v13 = [(IMRenderingCache *)self persistentCachePath];
        v14 = [v13 length];

        if (v14)
        {
          v15 = [IMRenderingCacheWriteOperation alloc];
          v16 = [(IMRenderingCache *)self persistentCachePath];
          v17 = [(IMRenderingCacheWriteOperation *)v15 initWithImage:v18 key:v9 format:v6 persistentCachePath:v16];

          if (+[NSThread isMainThread])
          {
            [(IMRenderingCacheWriteOperation *)v17 setThreadPriority:0.2];
            [(NSOperationQueue *)self->_writeQueue addOperation:v17];
          }

          else
          {
            [(IMRenderingCacheWriteOperation *)v17 start];
          }
        }
      }
    }
  }
}

- (BOOL)hasImageForKey:(id)a3
{
  v4 = a3;
  v5 = +[IMPersistentCacheManager sharedInstance];
  v6 = [(IMRenderingCache *)self persistentCachePath];
  v7 = [v5 cacheForPath:v6 maxSize:0];

  LOBYTE(v5) = [v7 hasItemForKey:v4];
  v8 = +[IMPersistentCacheManager sharedInstance];
  v9 = [(IMRenderingCache *)self persistentCachePath];
  [v8 purgeFromCache:v9];

  return v5;
}

- (id)fetchImageForAssetID:(id)a3 prefix:(id)a4 size:(CGSize)a5
{
  v6 = [(IMRenderingCache *)self keyForAssetID:a3 prefix:a4 size:a5.width, a5.height];
  v7 = [(IMRenderingCache *)self fetchImageForKey:v6];

  return v7;
}

- (id)fetchImageForKey:(id)a3 canAcceptSurfaceBacked:(BOOL)a4
{
  v6 = a3;
  v7 = [(IMMemoryCache *)self->_memoryCache objectForKey:v6];
  if (a4 || (NSClassFromString(@"SurfaceBackedUIImage"), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v16 = 0;
  v8 = +[IMPersistentCacheManager sharedInstance];
  v9 = [(IMRenderingCache *)self persistentCachePath];
  v10 = [v8 cacheForPath:v9 maxSize:0];

  v11 = [v10 copyCGImageForKey:v6 resourceSize:&v16];
  if (v11)
  {
    v12 = v11;
    v7 = [UIImage imageWithCGImage:v11];
    CGImageRelease(v12);
    if (v7)
    {
      [(IMMemoryCache *)self->_memoryCache setObject:v7 forKey:v6 cost:v16];
    }
  }

  else
  {
    v7 = 0;
  }

  v13 = +[IMPersistentCacheManager sharedInstance];
  v14 = [(IMRenderingCache *)self persistentCachePath];
  [v13 purgeFromCache:v14];

LABEL_10:

  return v7;
}

- (CGSize)primaryImageSize
{
  objc_copyStruct(v4, &self->_primaryImageSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end