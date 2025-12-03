@interface IMRenderingCache
- (BOOL)hasImageForKey:(id)key;
- (CGSize)primaryImageSize;
- (CGSize)scaleAdjustedImageSize:(CGSize)result;
- (IMRenderingCache)initWithIdentifier:(id)identifier memorySize:(int64_t)size;
- (SEL)selectorForTarget:(id)target;
- (id)_persistentCacheFileName;
- (id)cacheDirectory;
- (id)cachePrefix;
- (id)fetchImageForAssetID:(id)d prefix:(id)prefix size:(CGSize)size;
- (id)fetchImageForKey:(id)key canAcceptSurfaceBacked:(BOOL)backed;
- (id)findRenderingCacheOperationInQueue:(id)queue withStorageKey:(id)key target:(id)target selector:(SEL)selector context:(id)context;
- (id)keyForAssetID:(id)d prefix:(id)prefix size:(CGSize)size;
- (id)renderQueue;
- (id)renderingCacheOperationsForSize:(CGSize)size;
- (void)cancelRenderingCacheOperationsInQueue:(id)queue;
- (void)cancelRenderingCacheOperationsInQueue:(id)queue forTarget:(id)target;
- (void)cancelRenderingCacheOperationsInQueue:(id)queue forTarget:(id)target context:(id)context;
- (void)clear;
- (void)dealloc;
- (void)enqueueRenderingCacheOperation:(id)operation;
- (void)imRenderingCacheDidReceiveMemoryWarning:(id)warning;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)resume;
- (void)storeImage:(id)image forKey:(id)key size:(CGSize)size format:(int)format;
- (void)suspend;
@end

@implementation IMRenderingCache

- (IMRenderingCache)initWithIdentifier:(id)identifier memorySize:(int64_t)size
{
  identifierCopy = identifier;
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
    v11 = [identifierCopy copy];
    identifier = v7->_identifier;
    v7->_identifier = v11;

    _persistentCacheFileName = [(IMRenderingCache *)v7 _persistentCacheFileName];
    cacheDirectory = [(IMRenderingCache *)v7 cacheDirectory];
    v15 = objc_alloc_init(NSFileManager);
    v30 = 0;
    v16 = [v15 createDirectoryAtPath:cacheDirectory withIntermediateDirectories:1 attributes:0 error:&v30];
    v17 = v30;
    v18 = v17;
    if ((v16 & 1) == 0)
    {
      localizedDescription = [v17 localizedDescription];
      [NSException raise:NSInternalInconsistencyException format:@"Could not create cacheDirectory %@ [Error: %@]", cacheDirectory, localizedDescription];
    }

    v20 = [cacheDirectory stringByAppendingPathComponent:_persistentCacheFileName];
    [(IMRenderingCache *)v7 setPersistentCachePath:v20];
    v21 = +[IMPersistentCacheManager sharedInstance];
    persistentCachePath = [(IMRenderingCache *)v7 persistentCachePath];
    v23 = [v21 cacheForPath:persistentCachePath maxSize:0];

    if (size >= 1)
    {
      v24 = objc_alloc_init(IMMemoryCache);
      memoryCache = v7->_memoryCache;
      v7->_memoryCache = v24;

      [(IMMemoryCache *)v7->_memoryCache setTotalCostLimit:size];
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
  persistentCachePath = [(IMRenderingCache *)self persistentCachePath];
  [v6 purgeFromCache:persistentCachePath];

  memoryCache = self->_memoryCache;
  self->_memoryCache = 0;

  identifier = self->_identifier;
  self->_identifier = 0;

  v10.receiver = self;
  v10.super_class = IMRenderingCache;
  [(IMRenderingCache *)&v10 dealloc];
}

- (void)imRenderingCacheDidReceiveMemoryWarning:(id)warning
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == &off_33ED08)
  {
    v7 = [(NSOperationQueue *)self->_renderQueue operations:path];
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
  renderQueue = [(IMRenderingCache *)self renderQueue];
  [renderQueue setSuspended:1];
}

- (void)resume
{
  renderQueue = [(IMRenderingCache *)self renderQueue];
  [renderQueue setSuspended:0];
}

- (void)clear
{
  [(IMRenderingCache *)self cancelRenderingCacheOperations];
  [(IMMemoryCache *)self->_memoryCache removeAllObjects];
  v3 = +[IMPersistentCacheManager sharedInstance];
  persistentCachePath = [(IMRenderingCache *)self persistentCachePath];
  v7 = [v3 cacheForPath:persistentCachePath maxSize:0];

  [v7 clear];
  v5 = +[IMPersistentCacheManager sharedInstance];
  persistentCachePath2 = [(IMRenderingCache *)self persistentCachePath];
  [v5 purgeFromCache:persistentCachePath2];
}

- (void)cancelRenderingCacheOperationsInQueue:(id)queue
{
  operations = [queue operations];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [operations countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(operations);
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
      v5 = [operations countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)cancelRenderingCacheOperationsInQueue:(id)queue forTarget:(id)target context:(id)context
{
  targetCopy = target;
  contextCopy = context;
  operations = [queue operations];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [operations countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(operations);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          target = [v14 target];
          v16 = target;
          if (target == targetCopy)
          {
            context = [v14 context];

            if (context == contextCopy)
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
      v11 = [operations countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)cancelRenderingCacheOperationsInQueue:(id)queue forTarget:(id)target
{
  targetCopy = target;
  operations = [queue operations];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [operations countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(operations);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          target = [v11 target];

          if (target == targetCopy)
          {
            [v11 setTarget:0];
            [v11 setContext:0];
            [v11 cancel];
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [operations countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (id)findRenderingCacheOperationInQueue:(id)queue withStorageKey:(id)key target:(id)target selector:(SEL)selector context:(id)context
{
  keyCopy = key;
  targetCopy = target;
  contextCopy = context;
  [queue operations];
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
        target = [v18 target];
        if (target == targetCopy && [v18 selector] == selector)
        {
          context = [v18 context];

          if (context == contextCopy)
          {
            target = [v18 storageKey];
            if (![target isEqualToString:keyCopy])
            {
              goto LABEL_9;
            }

            isCancelled = [v18 isCancelled];

            if ((isCancelled & 1) == 0)
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

- (id)renderingCacheOperationsForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = self->_renderQueue;
  v6 = objc_alloc_init(NSMutableArray);
  operations = [(NSOperationQueue *)v5 operations];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [operations countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(operations);
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

      v9 = [operations countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  return v6;
}

- (void)enqueueRenderingCacheOperation:(id)operation
{
  if (operation)
  {
    operationCopy = operation;
    [operationCopy desiredSize];
    v6 = v5;
    [(IMRenderingCache *)self primaryImageSize];
    [operationCopy setThreadPriority:dbl_2A4230[v6 < v7]];
    renderQueue = [(IMRenderingCache *)self renderQueue];
    [renderQueue addOperation:operationCopy];
  }
}

- (SEL)selectorForTarget:(id)target
{
  if (!target)
  {
    return 0;
  }

  if (objc_opt_respondsToSelector())
  {
    return "renderingCacheCallbackImage:context:pageNumber:";
  }

  return "renderingCacheCallbackImage:context:";
}

- (id)keyForAssetID:(id)d prefix:(id)prefix size:(CGSize)size
{
  height = size.height;
  width = size.width;
  dCopy = d;
  prefixCopy = prefix;
  if (prefixCopy)
  {
    v10 = prefixCopy;
  }

  else
  {
    v10 = &stru_2D2930;
  }

  if (width == CGSizeZero.width && height == CGSizeZero.height)
  {
    [NSString stringWithFormat:@"%@;%@", v10, dCopy, v14, v15];
  }

  else
  {
    [NSString stringWithFormat:@"%@;%@;%06dx%06d", v10, dCopy, width, height];
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
  lastObject = [v3 lastObject];

  cachePrefix = [(IMRenderingCache *)self cachePrefix];
  v6 = [lastObject stringByAppendingPathComponent:cachePrefix];

  return v6;
}

- (id)_persistentCacheFileName
{
  persistentCacheFileName = [(IMRenderingCache *)self persistentCacheFileName];
  v4 = [NSNumber numberWithInteger:[(IMRenderingCache *)self cacheVersion]];
  v5 = +[UIDevice currentDevice];
  systemVersion = [v5 systemVersion];
  v7 = [NSString stringWithFormat:@"%@-%@-%@.cache", persistentCacheFileName, v4, systemVersion];

  return v7;
}

- (void)storeImage:(id)image forKey:(id)key size:(CGSize)size format:(int)format
{
  v6 = *&format;
  imageCopy = image;
  keyCopy = key;
  if (imageCopy)
  {
    if ([keyCopy length])
    {
      [imageCopy size];
      v11 = v10;
      [imageCopy size];
      [(IMMemoryCache *)self->_memoryCache setObject:imageCopy forKey:keyCopy cost:(v11 * v12 + v11 * v12)];
      if (v6 != -1)
      {
        persistentCachePath = [(IMRenderingCache *)self persistentCachePath];
        v14 = [persistentCachePath length];

        if (v14)
        {
          v15 = [IMRenderingCacheWriteOperation alloc];
          persistentCachePath2 = [(IMRenderingCache *)self persistentCachePath];
          v17 = [(IMRenderingCacheWriteOperation *)v15 initWithImage:imageCopy key:keyCopy format:v6 persistentCachePath:persistentCachePath2];

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

- (BOOL)hasImageForKey:(id)key
{
  keyCopy = key;
  v5 = +[IMPersistentCacheManager sharedInstance];
  persistentCachePath = [(IMRenderingCache *)self persistentCachePath];
  v7 = [v5 cacheForPath:persistentCachePath maxSize:0];

  LOBYTE(v5) = [v7 hasItemForKey:keyCopy];
  v8 = +[IMPersistentCacheManager sharedInstance];
  persistentCachePath2 = [(IMRenderingCache *)self persistentCachePath];
  [v8 purgeFromCache:persistentCachePath2];

  return v5;
}

- (id)fetchImageForAssetID:(id)d prefix:(id)prefix size:(CGSize)size
{
  v6 = [(IMRenderingCache *)self keyForAssetID:d prefix:prefix size:size.width, size.height];
  v7 = [(IMRenderingCache *)self fetchImageForKey:v6];

  return v7;
}

- (id)fetchImageForKey:(id)key canAcceptSurfaceBacked:(BOOL)backed
{
  keyCopy = key;
  v7 = [(IMMemoryCache *)self->_memoryCache objectForKey:keyCopy];
  if (backed || (NSClassFromString(@"SurfaceBackedUIImage"), (objc_opt_isKindOfClass() & 1) == 0))
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
  persistentCachePath = [(IMRenderingCache *)self persistentCachePath];
  v10 = [v8 cacheForPath:persistentCachePath maxSize:0];

  v11 = [v10 copyCGImageForKey:keyCopy resourceSize:&v16];
  if (v11)
  {
    v12 = v11;
    v7 = [UIImage imageWithCGImage:v11];
    CGImageRelease(v12);
    if (v7)
    {
      [(IMMemoryCache *)self->_memoryCache setObject:v7 forKey:keyCopy cost:v16];
    }
  }

  else
  {
    v7 = 0;
  }

  v13 = +[IMPersistentCacheManager sharedInstance];
  persistentCachePath2 = [(IMRenderingCache *)self persistentCachePath];
  [v13 purgeFromCache:persistentCachePath2];

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