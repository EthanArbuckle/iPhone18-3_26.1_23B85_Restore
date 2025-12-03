@interface AMSRatingsCache
- (AMSRatingsCache)initWithMediaType:(unint64_t)type storeFront:(id)front;
- (BOOL)_hasCachedData;
- (BOOL)addCacheData:(id)data;
- (id)cacheDirectory;
- (id)cachePath;
- (id)cacheTitle;
- (id)getCacheData;
- (void)clearCacheIfNeeded;
@end

@implementation AMSRatingsCache

- (AMSRatingsCache)initWithMediaType:(unint64_t)type storeFront:(id)front
{
  frontCopy = front;
  v11.receiver = self;
  v11.super_class = AMSRatingsCache;
  v8 = [(AMSRatingsCache *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_storeFront, front);
    v9->_mediaType = type;
  }

  return v9;
}

- (BOOL)_hasCachedData
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  cachePath = [(AMSRatingsCache *)self cachePath];
  v5 = [defaultManager fileExistsAtPath:cachePath];

  if (!v5)
  {
    return 0;
  }

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  cachePath2 = [(AMSRatingsCache *)self cachePath];
  v18 = 0;
  v8 = [defaultManager2 attributesOfItemAtPath:cachePath2 error:&v18];
  v9 = v18;

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    fileModificationDate = [v8 fileModificationDate];
    [fileModificationDate timeIntervalSinceNow];
    v13 = fabs(v12);
    v10 = v13 <= 86400.0;
    if (v13 <= 86400.0)
    {
      v9 = 0;
    }

    else
    {
      defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
      cachePath3 = [(AMSRatingsCache *)self cachePath];
      v17 = 0;
      [defaultManager3 removeItemAtPath:cachePath3 error:&v17];
      v9 = v17;
    }
  }

  return v10;
}

- (void)clearCacheIfNeeded
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  cachePath = [(AMSRatingsCache *)self cachePath];
  v5 = [defaultManager fileExistsAtPath:cachePath];

  if (v5)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    cachePath2 = [(AMSRatingsCache *)self cachePath];
    v15 = 0;
    v8 = [defaultManager2 attributesOfItemAtPath:cachePath2 error:&v15];
    v9 = v15;

    if (!v9)
    {
      fileModificationDate = [v8 fileModificationDate];
      [fileModificationDate timeIntervalSinceNow];
      if (fabs(v11) <= 86400.0)
      {
        v9 = 0;
      }

      else
      {
        defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
        cachePath3 = [(AMSRatingsCache *)self cachePath];
        v14 = 0;
        [defaultManager3 removeItemAtPath:cachePath3 error:&v14];
        v9 = v14;
      }
    }
  }
}

- (id)cacheDirectory
{
  ams_cachesDirectory = [MEMORY[0x1E695DFF8] ams_cachesDirectory];
  v3 = [ams_cachesDirectory URLByAppendingPathComponent:@"ratings" isDirectory:1];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v3 path];
  [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:0];

  return v3;
}

- (id)cachePath
{
  cacheDirectory = [(AMSRatingsCache *)self cacheDirectory];
  cacheTitle = [(AMSRatingsCache *)self cacheTitle];
  v5 = [cacheDirectory URLByAppendingPathComponent:cacheTitle];
  path = [v5 path];

  return path;
}

- (id)cacheTitle
{
  [(AMSRatingsCache *)self mediaType];
  v3 = MEMORY[0x1E696AEC0];
  storeFront = [(AMSRatingsCache *)self storeFront];
  v5 = storeFront;
  if (storeFront)
  {
    v6 = storeFront;
  }

  else
  {
    v6 = @"storefronts";
  }

  v7 = [v3 stringWithFormat:@"%@-%lu.json", v6, -[AMSRatingsCache mediaType](self, "mediaType")];

  return v7;
}

- (id)getCacheData
{
  if ([(AMSRatingsCache *)self _hasCachedData])
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    cachePath = [(AMSRatingsCache *)self cachePath];
    v5 = [defaultManager contentsAtPath:cachePath];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)addCacheData:(id)data
{
  v4 = MEMORY[0x1E696AC08];
  dataCopy = data;
  defaultManager = [v4 defaultManager];
  cachePath = [(AMSRatingsCache *)self cachePath];
  v8 = [defaultManager createFileAtPath:cachePath contents:dataCopy attributes:0];

  return v8;
}

@end