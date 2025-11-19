@interface TUIResourceLoader
+ (void)incrementPostLaunchCacheCount;
- (TUIResourceLoader)initWithProtocolClasses:(id)a3;
- (id)_keyForSharedOfflineCacheURL:(id)a3;
- (id)resourceLoaderTaskWithURL:(id)a3 priority:(double)a4 completion:(id)a5;
- (id)urlCache;
- (void)_addURLToOfflineCache:(id)a3 response:(id)a4 data:(id)a5;
- (void)clearCache;
- (void)loadResourceWithURL:(id)a3 completion:(id)a4;
@end

@implementation TUIResourceLoader

+ (void)incrementPostLaunchCacheCount
{
  v2 = +[_TUIResourceLoaderOfflineCache sharedOfflineCache];
  [v2 incrementPostLaunchCacheCount];
}

- (TUIResourceLoader)initWithProtocolClasses:(id)a3
{
  v4 = a3;
  kdebug_trace();
  v20.receiver = self;
  v20.super_class = TUIResourceLoader;
  v5 = [(TUIResourceLoader *)&v20 init];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = +[TUIOfflineCache provider];
  if (!v6)
  {
    v7 = TUIDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_19A400(v7);
    }
  }

  if ([v6 runFromCache])
  {
    v8 = 33;
LABEL_10:
    *(&v5->super.isa + v8) = 1;
    goto LABEL_11;
  }

  if ([v6 generateCache])
  {
    v8 = 32;
    goto LABEL_10;
  }

LABEL_11:
  if (!v5->_runFromOfflineCache)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [[NSURLCache alloc] initWithMemoryCapacity:512000 diskCapacity:78643201 diskPath:v10];
    urlCache = v5->_urlCache;
    v5->_urlCache = v11;

    v13 = +[NSURLSessionConfiguration defaultSessionConfiguration];
    sessionConfiguration = v5->_sessionConfiguration;
    v5->_sessionConfiguration = v13;

    [(NSURLSessionConfiguration *)v5->_sessionConfiguration setURLCache:v5->_urlCache];
    if ([v4 count])
    {
      v15 = [(NSURLSessionConfiguration *)v5->_sessionConfiguration protocolClasses];
      v16 = [v15 mutableCopy];

      [v16 addObjectsFromArray:v4];
      [(NSURLSessionConfiguration *)v5->_sessionConfiguration setProtocolClasses:v16];
    }

    v17 = [NSURLSession sessionWithConfiguration:v5->_sessionConfiguration];
    session = v5->_session;
    v5->_session = v17;
  }

LABEL_16:
  kdebug_trace();

  return v5;
}

- (id)urlCache
{
  if (self->_runFromOfflineCache)
  {
    v2 = +[_TUIResourceLoaderOfflineCache sharedOfflineCache];
    v3 = [v2 urlCache];
  }

  else
  {
    v3 = self->_urlCache;
  }

  return v3;
}

- (void)loadResourceWithURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_runFromOfflineCache)
  {
    v8 = [NSURLRequest requestWithURL:v6];
    v9 = [(TUIResourceLoader *)self urlCache];
    v10 = [v9 cachedResponseForRequest:v8];

    if (v10)
    {
      if (!v7)
      {
LABEL_15:

        goto LABEL_16;
      }

      v11 = [v10 data];
      v7[2](v7, v11, 0);
LABEL_14:

      goto LABEL_15;
    }

    v11 = [(TUIResourceLoader *)self _keyForSharedOfflineCacheURL:v6];
    v15 = +[_TUIResourceLoaderOfflineCache sharedOfflineCache];
    v10 = [v15 valueForKey:v11];

    if (v10)
    {
      if (!v7)
      {
        goto LABEL_14;
      }

      v16 = [v10 data];
      v7[2](v7, v16, 0);
    }

    else
    {
      if (!v7)
      {
        goto LABEL_14;
      }

      v17 = TUIInstallBundleLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_19A444(v6, v17);
      }

      v16 = [NSError errorWithDomain:@"TUIErrorDomain" code:401 userInfo:0];
      (v7)[2](v7, 0, v16);
    }

    goto LABEL_14;
  }

  session = self->_session;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_91724;
  v18[3] = &unk_260840;
  v18[4] = self;
  v19 = v6;
  v20 = v7;
  v13 = [(NSURLSession *)session dataTaskWithURL:v19 completionHandler:v18];
  *&v14 = NSURLSessionTaskPriorityHigh;
  [v13 setPriority:v14];
  [v13 resume];

LABEL_16:
}

- (id)resourceLoaderTaskWithURL:(id)a3 priority:(double)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [NSURLRequest requestWithURL:v7];
  v10 = [(TUIResourceLoader *)self urlCache];
  v11 = [v10 cachedResponseForRequest:v9];

  if (v11 || self->_runFromOfflineCache)
  {
    if (v8)
    {
      (*(v8 + 2))(v8, 0, 0);
    }

    v12 = 0;
  }

  else
  {
    session = self->_session;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_9194C;
    v16[3] = &unk_260840;
    v16[4] = self;
    v17 = v7;
    v18 = v8;
    v15 = [(NSURLSession *)session dataTaskWithURL:v17 completionHandler:v16];
    v12 = [[_TUIResourceLoaderTask alloc] initWithSessionDataTask:v15];
  }

  return v12;
}

- (id)_keyForSharedOfflineCacheURL:(id)a3
{
  v3 = a3;
  v4 = [v3 absoluteString];
  if ([v3 isFileURL])
  {
    v5 = [v3 lastPathComponent];

    v6 = [v3 pathComponents];
    v7 = [v6 count];
    if (v7 >= 2)
    {
      v8 = v7;
      v9 = [v6 objectAtIndexedSubscript:v7 - 2];
      v10 = [v6 objectAtIndexedSubscript:v8 - 1];
      v11 = [NSString stringWithFormat:@"%@/%@", v9, v10];

      v5 = v11;
    }

    v4 = v5;
  }

  return v4;
}

- (void)_addURLToOfflineCache:(id)a3 response:(id)a4 data:(id)a5
{
  v14 = a4;
  v8 = a5;
  v9 = a3;
  v10 = +[_TUIResourceLoaderOfflineCache sharedOfflineCache];
  v11 = [(TUIResourceLoader *)self _keyForSharedOfflineCacheURL:v9];

  v12 = [v10 valueForKey:v11];
  v13 = v12;
  if (v8 && !v12)
  {
    if (!v14)
    {
      goto LABEL_6;
    }

    v13 = [[NSCachedURLResponse alloc] initWithResponse:v14 data:v8];
    [v10 setObject:v13 forKey:v11];
  }

LABEL_6:
}

- (void)clearCache
{
  v2 = [(TUIResourceLoader *)self urlCache];
  [v2 removeAllCachedResponses];
}

@end