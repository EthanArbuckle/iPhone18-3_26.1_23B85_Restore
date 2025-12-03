@interface TUIResourceLoader
+ (void)incrementPostLaunchCacheCount;
- (TUIResourceLoader)initWithProtocolClasses:(id)classes;
- (id)_keyForSharedOfflineCacheURL:(id)l;
- (id)resourceLoaderTaskWithURL:(id)l priority:(double)priority completion:(id)completion;
- (id)urlCache;
- (void)_addURLToOfflineCache:(id)cache response:(id)response data:(id)data;
- (void)clearCache;
- (void)loadResourceWithURL:(id)l completion:(id)completion;
@end

@implementation TUIResourceLoader

+ (void)incrementPostLaunchCacheCount
{
  v2 = +[_TUIResourceLoaderOfflineCache sharedOfflineCache];
  [v2 incrementPostLaunchCacheCount];
}

- (TUIResourceLoader)initWithProtocolClasses:(id)classes
{
  classesCopy = classes;
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
    if ([classesCopy count])
    {
      protocolClasses = [(NSURLSessionConfiguration *)v5->_sessionConfiguration protocolClasses];
      v16 = [protocolClasses mutableCopy];

      [v16 addObjectsFromArray:classesCopy];
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
    urlCache = [v2 urlCache];
  }

  else
  {
    urlCache = self->_urlCache;
  }

  return urlCache;
}

- (void)loadResourceWithURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  if (self->_runFromOfflineCache)
  {
    v8 = [NSURLRequest requestWithURL:lCopy];
    urlCache = [(TUIResourceLoader *)self urlCache];
    v10 = [urlCache cachedResponseForRequest:v8];

    if (v10)
    {
      if (!completionCopy)
      {
LABEL_15:

        goto LABEL_16;
      }

      data = [v10 data];
      completionCopy[2](completionCopy, data, 0);
LABEL_14:

      goto LABEL_15;
    }

    data = [(TUIResourceLoader *)self _keyForSharedOfflineCacheURL:lCopy];
    v15 = +[_TUIResourceLoaderOfflineCache sharedOfflineCache];
    v10 = [v15 valueForKey:data];

    if (v10)
    {
      if (!completionCopy)
      {
        goto LABEL_14;
      }

      data2 = [v10 data];
      completionCopy[2](completionCopy, data2, 0);
    }

    else
    {
      if (!completionCopy)
      {
        goto LABEL_14;
      }

      v17 = TUIInstallBundleLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_19A444(lCopy, v17);
      }

      data2 = [NSError errorWithDomain:@"TUIErrorDomain" code:401 userInfo:0];
      (completionCopy)[2](completionCopy, 0, data2);
    }

    goto LABEL_14;
  }

  session = self->_session;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_91724;
  v18[3] = &unk_260840;
  v18[4] = self;
  v19 = lCopy;
  v20 = completionCopy;
  v13 = [(NSURLSession *)session dataTaskWithURL:v19 completionHandler:v18];
  *&v14 = NSURLSessionTaskPriorityHigh;
  [v13 setPriority:v14];
  [v13 resume];

LABEL_16:
}

- (id)resourceLoaderTaskWithURL:(id)l priority:(double)priority completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v9 = [NSURLRequest requestWithURL:lCopy];
  urlCache = [(TUIResourceLoader *)self urlCache];
  v11 = [urlCache cachedResponseForRequest:v9];

  if (v11 || self->_runFromOfflineCache)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
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
    v17 = lCopy;
    v18 = completionCopy;
    v15 = [(NSURLSession *)session dataTaskWithURL:v17 completionHandler:v16];
    v12 = [[_TUIResourceLoaderTask alloc] initWithSessionDataTask:v15];
  }

  return v12;
}

- (id)_keyForSharedOfflineCacheURL:(id)l
{
  lCopy = l;
  absoluteString = [lCopy absoluteString];
  if ([lCopy isFileURL])
  {
    lastPathComponent = [lCopy lastPathComponent];

    pathComponents = [lCopy pathComponents];
    v7 = [pathComponents count];
    if (v7 >= 2)
    {
      v8 = v7;
      v9 = [pathComponents objectAtIndexedSubscript:v7 - 2];
      v10 = [pathComponents objectAtIndexedSubscript:v8 - 1];
      v11 = [NSString stringWithFormat:@"%@/%@", v9, v10];

      lastPathComponent = v11;
    }

    absoluteString = lastPathComponent;
  }

  return absoluteString;
}

- (void)_addURLToOfflineCache:(id)cache response:(id)response data:(id)data
{
  responseCopy = response;
  dataCopy = data;
  cacheCopy = cache;
  v10 = +[_TUIResourceLoaderOfflineCache sharedOfflineCache];
  v11 = [(TUIResourceLoader *)self _keyForSharedOfflineCacheURL:cacheCopy];

  v12 = [v10 valueForKey:v11];
  v13 = v12;
  if (dataCopy && !v12)
  {
    if (!responseCopy)
    {
      goto LABEL_6;
    }

    v13 = [[NSCachedURLResponse alloc] initWithResponse:responseCopy data:dataCopy];
    [v10 setObject:v13 forKey:v11];
  }

LABEL_6:
}

- (void)clearCache
{
  urlCache = [(TUIResourceLoader *)self urlCache];
  [urlCache removeAllCachedResponses];
}

@end