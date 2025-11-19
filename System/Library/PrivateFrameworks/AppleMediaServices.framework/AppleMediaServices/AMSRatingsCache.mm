@interface AMSRatingsCache
- (AMSRatingsCache)initWithMediaType:(unint64_t)a3 storeFront:(id)a4;
- (BOOL)_hasCachedData;
- (BOOL)addCacheData:(id)a3;
- (id)cacheDirectory;
- (id)cachePath;
- (id)cacheTitle;
- (id)getCacheData;
- (void)clearCacheIfNeeded;
@end

@implementation AMSRatingsCache

- (AMSRatingsCache)initWithMediaType:(unint64_t)a3 storeFront:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AMSRatingsCache;
  v8 = [(AMSRatingsCache *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_storeFront, a4);
    v9->_mediaType = a3;
  }

  return v9;
}

- (BOOL)_hasCachedData
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(AMSRatingsCache *)self cachePath];
  v5 = [v3 fileExistsAtPath:v4];

  if (!v5)
  {
    return 0;
  }

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [(AMSRatingsCache *)self cachePath];
  v18 = 0;
  v8 = [v6 attributesOfItemAtPath:v7 error:&v18];
  v9 = v18;

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [v8 fileModificationDate];
    [v11 timeIntervalSinceNow];
    v13 = fabs(v12);
    v10 = v13 <= 86400.0;
    if (v13 <= 86400.0)
    {
      v9 = 0;
    }

    else
    {
      v14 = [MEMORY[0x1E696AC08] defaultManager];
      v15 = [(AMSRatingsCache *)self cachePath];
      v17 = 0;
      [v14 removeItemAtPath:v15 error:&v17];
      v9 = v17;
    }
  }

  return v10;
}

- (void)clearCacheIfNeeded
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(AMSRatingsCache *)self cachePath];
  v5 = [v3 fileExistsAtPath:v4];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v7 = [(AMSRatingsCache *)self cachePath];
    v15 = 0;
    v8 = [v6 attributesOfItemAtPath:v7 error:&v15];
    v9 = v15;

    if (!v9)
    {
      v10 = [v8 fileModificationDate];
      [v10 timeIntervalSinceNow];
      if (fabs(v11) <= 86400.0)
      {
        v9 = 0;
      }

      else
      {
        v12 = [MEMORY[0x1E696AC08] defaultManager];
        v13 = [(AMSRatingsCache *)self cachePath];
        v14 = 0;
        [v12 removeItemAtPath:v13 error:&v14];
        v9 = v14;
      }
    }
  }
}

- (id)cacheDirectory
{
  v2 = [MEMORY[0x1E695DFF8] ams_cachesDirectory];
  v3 = [v2 URLByAppendingPathComponent:@"ratings" isDirectory:1];

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v3 path];
  [v4 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:0];

  return v3;
}

- (id)cachePath
{
  v3 = [(AMSRatingsCache *)self cacheDirectory];
  v4 = [(AMSRatingsCache *)self cacheTitle];
  v5 = [v3 URLByAppendingPathComponent:v4];
  v6 = [v5 path];

  return v6;
}

- (id)cacheTitle
{
  [(AMSRatingsCache *)self mediaType];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AMSRatingsCache *)self storeFront];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
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
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [(AMSRatingsCache *)self cachePath];
    v5 = [v3 contentsAtPath:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)addCacheData:(id)a3
{
  v4 = MEMORY[0x1E696AC08];
  v5 = a3;
  v6 = [v4 defaultManager];
  v7 = [(AMSRatingsCache *)self cachePath];
  v8 = [v6 createFileAtPath:v7 contents:v5 attributes:0];

  return v8;
}

@end