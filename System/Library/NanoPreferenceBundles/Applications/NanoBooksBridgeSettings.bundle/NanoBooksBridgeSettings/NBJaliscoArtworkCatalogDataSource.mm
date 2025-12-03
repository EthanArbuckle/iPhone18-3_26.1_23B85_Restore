@interface NBJaliscoArtworkCatalogDataSource
+ (id)instance;
- (NBJaliscoArtworkCatalogDataSource)init;
- (id)existingRepresentationForArtworkCatalog:(id)catalog;
- (id)visualIdenticalityIdentifierForCatalog:(id)catalog;
- (void)cancelLoadingRepresentationForArtworkCatalog:(id)catalog;
- (void)loadRepresentationForArtworkCatalog:(id)catalog completionHandler:(id)handler;
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
    lastObject = [v9 lastObject];
    v11 = [lastObject stringByAppendingPathComponent:@"bridge-jalisco-artwork"];
    imageDirectoryPath = v2->_imageDirectoryPath;
    v2->_imageDirectoryPath = v11;

    v13 = +[NSFileManager defaultManager];
    v14 = [NSURL fileURLWithPath:v2->_imageDirectoryPath];
    [v13 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:0];
  }

  return v2;
}

- (id)existingRepresentationForArtworkCatalog:(id)catalog
{
  catalogCopy = catalog;
  objc_opt_class();
  token = [catalogCopy token];
  v6 = BUDynamicCast();

  [catalogCopy scaledFittingSize];
  v8 = v7;
  v10 = v9;
  v11 = [(NBJaliscoArtworkCatalogDataSource *)self _cacheKeyForSize:v6 withBaseKey:?];
  cache = [catalogCopy cache];
  v13 = [cache objectForKey:v11];

  if (v13)
  {
    v14 = v13;
  }

  else if (([catalogCopy renderHint] & 8) != 0)
  {
    v14 = 0;
  }

  else
  {
    imageDirectoryPath = [(NBJaliscoArtworkCatalogDataSource *)self imageDirectoryPath];
    v16 = [imageDirectoryPath stringByAppendingPathComponent:v11];
    v17 = [UIImage imageWithContentsOfFile:v16];

    if (v17)
    {
      v14 = [MPArtworkRepresentation representationWithSize:v17 image:v8, v10];
      cache2 = [catalogCopy cache];
      [cache2 setObject:v14 forKey:v11];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (void)loadRepresentationForArtworkCatalog:(id)catalog completionHandler:(id)handler
{
  catalogCopy = catalog;
  handlerCopy = handler;
  token = [catalogCopy token];
  os_unfair_lock_lock(&self->_pendingTaskLock);
  pendingTasks = [(NBJaliscoArtworkCatalogDataSource *)self pendingTasks];
  v10 = [pendingTasks objectForKey:token];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v12 = [NSMutableURLRequest alloc];
    v13 = [NSURL URLWithString:token];
    v14 = [v12 initWithURL:v13];

    [v14 setHTTPShouldUsePipelining:1];
    artworkURLSession = [(NBJaliscoArtworkCatalogDataSource *)self artworkURLSession];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_52BC;
    v21 = &unk_20998;
    selfCopy = self;
    v23 = catalogCopy;
    v16 = token;
    v24 = v16;
    v25 = handlerCopy;
    v11 = [artworkURLSession dataTaskWithRequest:v14 completionHandler:&v18];

    v17 = [(NBJaliscoArtworkCatalogDataSource *)self pendingTasks:v18];
    [v17 setObject:v11 forKey:v16];
  }

  os_unfair_lock_unlock(&self->_pendingTaskLock);
  [v11 resume];
}

- (void)cancelLoadingRepresentationForArtworkCatalog:(id)catalog
{
  token = [catalog token];
  os_unfair_lock_lock(&self->_pendingTaskLock);
  pendingTasks = [(NBJaliscoArtworkCatalogDataSource *)self pendingTasks];
  v5 = [pendingTasks objectForKey:token];

  [v5 cancel];
  pendingTasks2 = [(NBJaliscoArtworkCatalogDataSource *)self pendingTasks];
  [pendingTasks2 removeObjectForKey:token];

  os_unfair_lock_unlock(&self->_pendingTaskLock);
}

- (id)visualIdenticalityIdentifierForCatalog:(id)catalog
{
  token = [catalog token];
  v4 = [[_NBStaticArtworkVisualIdenticalityIdentifier alloc] initWithArtworkIdentifier:token];

  return v4;
}

@end