@interface BEPageSnapshotCache
+ (id)restorationImageAssetID;
+ (id)restorationImageURL;
+ (unint64_t)restorationImageAppearance;
+ (void)setRestorationImageAppearance:(unint64_t)appearance;
+ (void)setRestorationImageAssetID:(id)d;
- (BEPageSnapshotCache)initWithIdentifier:(id)identifier dataSource:(id)source;
- (BEPageSnapshotCacheDataSource)dataSource;
- (id)_fetchImageForKey:(id)key size:(CGSize)size;
- (id)_scheduleRenderWithKey:(id)key size:(CGSize)size pageNumber:(int64_t)number priority:(int64_t)priority completion:(id)completion;
- (id)persistentCacheFileName;
- (id)snapshotForAsset:(id)asset page:(int64_t)page snapshotThemeIdentifier:(id)identifier size:(CGSize)size completion:(id)completion;
@end

@implementation BEPageSnapshotCache

- (id)persistentCacheFileName
{
  identifier = [(BEPageSnapshotCache *)self identifier];
  v3 = [NSString stringWithFormat:@"%@-%@", identifier, @"v20220201"];

  return v3;
}

- (BEPageSnapshotCache)initWithIdentifier:(id)identifier dataSource:(id)source
{
  sourceCopy = source;
  v10.receiver = self;
  v10.super_class = BEPageSnapshotCache;
  v7 = [(AEHTMLBookRenderingCache *)&v10 initWithIdentifier:identifier];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_dataSource, sourceCopy);
  }

  return v8;
}

+ (void)setRestorationImageAppearance:(unint64_t)appearance
{
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setInteger:appearance forKey:BERestorationAssetAppearanceKey];
}

+ (void)setRestorationImageAssetID:(id)d
{
  dCopy = d;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setObject:dCopy forKey:BERestorationAssetIDKey];
}

+ (unint64_t)restorationImageAppearance
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 integerForKey:BERestorationAssetAppearanceKey];

  return v3;
}

+ (id)restorationImageAssetID
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 stringForKey:BERestorationAssetIDKey];

  return v3;
}

+ (id)restorationImageURL
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  lastObject = [v2 lastObject];

  v4 = [lastObject stringByAppendingPathComponent:@"currentLocationContentSnapshot.png"];
  v5 = [NSURL fileURLWithPath:v4];

  return v5;
}

- (id)snapshotForAsset:(id)asset page:(int64_t)page snapshotThemeIdentifier:(id)identifier size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  assetCopy = asset;
  identifierCopy = identifier;
  completionCopy = completion;
  if ((page - 0x7FFFFFFFFFFFFFFFLL) < 0x8000000000000002 || ![assetCopy length])
  {
    goto LABEL_7;
  }

  v16 = floor(height);
  v17 = floor(width);
  if (v16 <= 1.0 || v17 <= 1.0)
  {
    goto LABEL_7;
  }

  [(BEPageSnapshotCache *)self scaleAdjustedImageSize:v17, v16];
  v23 = v22;
  v25 = v24;
  v26 = [(BEPageSnapshotCache *)self keyPrefixForPage:page];
  v27 = [v26 stringByAppendingString:identifierCopy];

  v28 = [(BEPageSnapshotCache *)self keyForAssetID:assetCopy prefix:v27 size:v23, v25];
  v29 = [(BEPageSnapshotCache *)self _fetchImageForKey:v28 size:v17, v16];
  if (v29)
  {
    v19 = v29;

    goto LABEL_8;
  }

  v20 = [(BEPageSnapshotCache *)self _scheduleRenderWithKey:v28 size:page pageNumber:4 priority:completionCopy completion:v17, v16];

  if (!v20)
  {
LABEL_7:
    v19 = 0;
LABEL_8:
    completionCopy[2](completionCopy, v19);

    v20 = 0;
  }

  return v20;
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

  memoryCache = [(BEPageSnapshotCache *)self memoryCache];
  height = [memoryCache objectForKey:keyCopy];

  if (!height)
  {
    v26 = 0;
    v10 = +[IMPersistentCacheManager sharedInstance];
    persistentCachePath = [(BEPageSnapshotCache *)self persistentCachePath];
    v12 = [v10 cacheForPath:persistentCachePath maxSize:0];

    if ([(BEPageSnapshotCache *)self serializeFormat]!= 2)
    {
      v21 = [v12 dataForKey:keyCopy];
      v26 = [v21 length];
      height = [(AEHTMLBookRenderingCache *)self imageForSize:v21 data:width, height];

      if (!height)
      {
        goto LABEL_7;
      }

LABEL_9:
      memoryCache2 = [(BEPageSnapshotCache *)self memoryCache];
      [memoryCache2 setObject:height forKey:keyCopy cost:v26];

      v23 = +[IMPersistentCacheManager sharedInstance];
      persistentCachePath2 = [(BEPageSnapshotCache *)self persistentCachePath];
      [v23 purgeFromCache:persistentCachePath2];

      goto LABEL_11;
    }

    NSLog(@"Getting Image for key %@ from persistent cache", keyCopy);
    v13 = [v12 copyCGImageForKey:keyCopy resourceSize:&v26];
    if (v13)
    {
      v14 = v13;
      v15 = CGImageGetWidth(v13);
      v16 = CGImageGetHeight(v14);
      DataProvider = CGImageGetDataProvider(v14);
      v18 = CGDataProviderCopyData(DataProvider);
      height = [(AEHTMLBookRenderingCache *)self imageForSize:v18 data:v15, v16];
      CFRelease(v18);
      CGImageRelease(v14);
      if (!height)
      {
LABEL_7:
        v19 = +[IMPersistentCacheManager sharedInstance];
        persistentCachePath3 = [(BEPageSnapshotCache *)self persistentCachePath];
        [v19 purgeFromCache:persistentCachePath3];

LABEL_2:
        height = [(BEPageSnapshotCache *)self fetchImageForKey:keyCopy];
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    height = 0;
  }

LABEL_11:

  return height;
}

- (id)_scheduleRenderWithKey:(id)key size:(CGSize)size pageNumber:(int64_t)number priority:(int64_t)priority completion:(id)completion
{
  height = size.height;
  width = size.width;
  keyCopy = key;
  completionCopy = completion;
  if (([(BEPageSnapshotCache *)self hasImageForKey:keyCopy]& 1) != 0)
  {
    v15 = 0;
    goto LABEL_15;
  }

  v16 = [(BEPageSnapshotCache *)self findRenderingCacheOperationWithStorageKey:keyCopy target:0 selector:0 context:0];
  objc_opt_class();
  v17 = BUDynamicCast();
  v18 = v17;
  if (completionCopy)
  {
    v19 = [BCRenderingCacheBlockCallback alloc];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_BEA48;
    v24[3] = &unk_1E2E50;
    v25 = completionCopy;
    v20 = [v19 initWithCompletion:v24];

    if (!v18)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v20 = 0;
    if (!v17)
    {
      goto LABEL_8;
    }
  }

  if (![(BEPageSnapshotCacheOperation *)v18 isCancelled])
  {
    if (v20)
    {
      [(BEPageSnapshotCacheOperation *)v18 addExtraCompletion:v20];
    }

    v15 = v18;
    goto LABEL_14;
  }

LABEL_8:
  v21 = [BEPageSnapshotCacheOperation alloc];
  dataSource = [(BEPageSnapshotCache *)self dataSource];
  v15 = [(BEPageSnapshotCacheOperation *)v21 initWithDataSource:dataSource];

  [(BEPageSnapshotCacheOperation *)v15 setSelector:0];
  [(BEPageSnapshotCacheOperation *)v15 setPageNumber:number];
  [(BEPageSnapshotCacheOperation *)v15 setSnapshotSize:width, height];
  if (v20)
  {
    [(BEPageSnapshotCacheOperation *)v15 addExtraCompletion:v20];
  }

  [(BEPageSnapshotCacheOperation *)v15 setImageCache:self];
  [(BEPageSnapshotCacheOperation *)v15 setDesiredSize:width, height];
  [(BEPageSnapshotCacheOperation *)v15 setStorageKey:keyCopy];
  [(BEPageSnapshotCacheOperation *)v15 setMasterImageKey:0];
  [(BEPageSnapshotCacheOperation *)v15 setSerializeFormat:[(BEPageSnapshotCache *)self serializeFormat]];
  [(BEPageSnapshotCacheOperation *)v15 setQueuePriority:priority];
  [(BEPageSnapshotCache *)self enqueueRenderingCacheOperation:v15];
LABEL_14:

LABEL_15:

  return v15;
}

- (BEPageSnapshotCacheDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end