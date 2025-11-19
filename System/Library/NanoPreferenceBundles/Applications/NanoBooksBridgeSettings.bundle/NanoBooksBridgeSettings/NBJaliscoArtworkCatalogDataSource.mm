@interface NBJaliscoArtworkCatalogDataSource
+ (id)instance;
- (NBJaliscoArtworkCatalogDataSource)init;
- (id)existingRepresentationForArtworkCatalog:(id)a3;
- (id)visualIdenticalityIdentifierForCatalog:(id)a3;
- (void)cancelLoadingRepresentationForArtworkCatalog:(id)a3;
- (void)loadRepresentationForArtworkCatalog:(id)a3 completionHandler:(id)a4;
@end

@implementation NBJaliscoArtworkCatalogDataSource

+ (id)instance
{
  if (qword_27CB0 != -1)
  {
    sub_11828();
  }

  v3 = qword_27CA8;

  return v3;
}

- (NBJaliscoArtworkCatalogDataSource)init
{
  v16.receiver = self;
  v16.super_class = NBJaliscoArtworkCatalogDataSource;
  v2 = [(NBJaliscoArtworkCatalogDataSource *)&v16 init];
  if (v2)
  {
    v3 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    v4 = [[NSURLCache alloc] initWithMemoryCapacity:0 diskCapacity:0 diskPath:0];
    [v3 setURLCache:v4];
    v5 = [NSURLSession sessionWithConfiguration:v3];
    artworkURLSession = v2->_artworkURLSession;
    v2->_artworkURLSession = v5;

    v7 = +[NSMapTable strongToStrongObjectsMapTable];
    pendingTasks = v2->_pendingTasks;
    v2->_pendingTasks = v7;

    v2->_pendingTaskLock._os_unfair_lock_opaque = 0;
    v9 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    v10 = [v9 lastObject];
    v11 = [v10 stringByAppendingPathComponent:@"bridge-jalisco-artwork"];
    imageDirectoryPath = v2->_imageDirectoryPath;
    v2->_imageDirectoryPath = v11;

    v13 = +[NSFileManager defaultManager];
    v14 = [NSURL fileURLWithPath:v2->_imageDirectoryPath];
    [v13 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:0];
  }

  return v2;
}

- (id)existingRepresentationForArtworkCatalog:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 token];
  v6 = BUDynamicCast();

  [v4 scaledFittingSize];
  v8 = v7;
  v10 = v9;
  v11 = [(NBJaliscoArtworkCatalogDataSource *)self _cacheKeyForSize:v6 withBaseKey:?];
  v12 = [v4 cache];
  v13 = [v12 objectForKey:v11];

  if (v13)
  {
    v14 = v13;
  }

  else if (([v4 renderHint] & 8) != 0)
  {
    v14 = 0;
  }

  else
  {
    v15 = [(NBJaliscoArtworkCatalogDataSource *)self imageDirectoryPath];
    v16 = [v15 stringByAppendingPathComponent:v11];
    v17 = [UIImage imageWithContentsOfFile:v16];

    if (v17)
    {
      v14 = [MPArtworkRepresentation representationWithSize:v17 image:v8, v10];
      v18 = [v4 cache];
      [v18 setObject:v14 forKey:v11];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (void)loadRepresentationForArtworkCatalog:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 token];
  os_unfair_lock_lock(&self->_pendingTaskLock);
  v9 = [(NBJaliscoArtworkCatalogDataSource *)self pendingTasks];
  v10 = [v9 objectForKey:v8];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v12 = [NSMutableURLRequest alloc];
    v13 = [NSURL URLWithString:v8];
    v14 = [v12 initWithURL:v13];

    [v14 setHTTPShouldUsePipelining:1];
    v15 = [(NBJaliscoArtworkCatalogDataSource *)self artworkURLSession];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_52BC;
    v21 = &unk_20998;
    v22 = self;
    v23 = v6;
    v16 = v8;
    v24 = v16;
    v25 = v7;
    v11 = [v15 dataTaskWithRequest:v14 completionHandler:&v18];

    v17 = [(NBJaliscoArtworkCatalogDataSource *)self pendingTasks:v18];
    [v17 setObject:v11 forKey:v16];
  }

  os_unfair_lock_unlock(&self->_pendingTaskLock);
  [v11 resume];
}

- (void)cancelLoadingRepresentationForArtworkCatalog:(id)a3
{
  v7 = [a3 token];
  os_unfair_lock_lock(&self->_pendingTaskLock);
  v4 = [(NBJaliscoArtworkCatalogDataSource *)self pendingTasks];
  v5 = [v4 objectForKey:v7];

  [v5 cancel];
  v6 = [(NBJaliscoArtworkCatalogDataSource *)self pendingTasks];
  [v6 removeObjectForKey:v7];

  os_unfair_lock_unlock(&self->_pendingTaskLock);
}

- (id)visualIdenticalityIdentifierForCatalog:(id)a3
{
  v3 = [a3 token];
  v4 = [[_NBStaticArtworkVisualIdenticalityIdentifier alloc] initWithArtworkIdentifier:v3];

  return v4;
}

@end