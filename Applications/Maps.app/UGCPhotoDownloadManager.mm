@interface UGCPhotoDownloadManager
+ (id)generateRandomizedDownloadTokenForClass:(Class)class;
+ (id)sharedDownloadManager;
- (BOOL)_canCancelDownloadOperation:(id)operation;
- (UGCPhotoDownloadManager)init;
- (id)_cachedImageForDownloadIdentifier:(id)identifier;
- (id)_completionOperationForPhotoInfo:(id)info downloadToken:(id)token;
- (id)_currentDownloadOperationForPhotoInfo:(id)info;
- (void)_updateCacheWithImage:(id)image forDownloadIdentifier:(id)identifier;
- (void)cancelRequestForPhotoInfo:(id)info downloadToken:(id)token;
- (void)fetchImageForPhotoInfo:(id)info callerIdentifier:(id)identifier callbackQueue:(id)queue completion:(id)completion;
@end

@implementation UGCPhotoDownloadManager

- (id)_cachedImageForDownloadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_workQueue);
  if ([identifierCopy length])
  {
    v5 = [(NSCache *)self->_imageCache objectForKey:identifierCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateCacheWithImage:(id)image forDownloadIdentifier:(id)identifier
{
  imageCopy = image;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_workQueue);
  if (!imageCopy)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_6;
    }

    LOWORD(v10) = 0;
    v9 = "Assertion failed: image != ((void *)0)";
LABEL_11:
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, v9, &v10, 2u);
    goto LABEL_6;
  }

  if (![identifierCopy length])
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_6;
    }

    LOWORD(v10) = 0;
    v9 = "Assertion failed: downloadIdentifier.length > 0";
    goto LABEL_11;
  }

  v8 = sub_100799780();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Adding image %@ to cache", &v10, 0xCu);
  }

  [(NSCache *)self->_imageCache setObject:imageCopy forKey:identifierCopy cost:1];
LABEL_6:
}

- (BOOL)_canCancelDownloadOperation:(id)operation
{
  operationCopy = operation;
  if (operationCopy)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    [(NSOperationQueue *)self->_completionOperationQueue operations];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v17 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dependencies = [*(*(&v14 + 1) + 8 * i) dependencies];
          v11 = [dependencies containsObject:operationCopy];

          if (v11)
          {
            v12 = 0;
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v12 = 1;
LABEL_12:
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (id)_completionOperationForPhotoInfo:(id)info downloadToken:(id)token
{
  infoCopy = info;
  tokenCopy = token;
  dispatch_assert_queue_V2(self->_workQueue);
  downloadIdentifier = [infoCopy downloadIdentifier];
  v25[0] = @"DOWNLOAD_COMPLETION";
  v25[1] = tokenCopy;
  v25[2] = downloadIdentifier;
  v9 = tokenCopy;
  v10 = [NSArray arrayWithObjects:v25 count:3];

  v11 = [v10 componentsJoinedByString:@"_"];

  [(NSOperationQueue *)self->_completionOperationQueue operations];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v23 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = *v21;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        name = [v16 name];
        v18 = [name isEqualToString:v11];

        if (v18)
        {
          v13 = v16;
          goto LABEL_11;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v13;
}

- (id)_currentDownloadOperationForPhotoInfo:(id)info
{
  infoCopy = info;
  dispatch_assert_queue_V2(self->_workQueue);
  downloadIdentifier = [infoCopy downloadIdentifier];
  v21[0] = @"DOWNLOAD_OPERATION";
  v21[1] = downloadIdentifier;
  v6 = [NSArray arrayWithObjects:v21 count:2];
  v7 = [v6 componentsJoinedByString:@"_"];

  [(NSOperationQueue *)self->_downloadOperationQueue operations];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        name = [v12 name];
        v14 = [name isEqualToString:v7];

        if (v14)
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (void)cancelRequestForPhotoInfo:(id)info downloadToken:(id)token
{
  infoCopy = info;
  tokenCopy = token;
  if ([tokenCopy length])
  {
    downloadIdentifier = [infoCopy downloadIdentifier];
    *buf = @"DOWNLOAD_COMPLETION";
    v19 = tokenCopy;
    v20 = downloadIdentifier;
    v9 = tokenCopy;
    v10 = [NSArray arrayWithObjects:buf count:3];

    v11 = [v10 componentsJoinedByString:@"_"];

    workQueue = self->_workQueue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10078C614;
    v14[3] = &unk_101656A00;
    v14[4] = self;
    v15 = infoCopy;
    v16 = v9;
    v17 = v11;
    v13 = v11;
    dispatch_async(workQueue, v14);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: downloadToken.length > 0", buf, 2u);
  }
}

- (void)fetchImageForPhotoInfo:(id)info callerIdentifier:(id)identifier callbackQueue:(id)queue completion:(id)completion
{
  infoCopy = info;
  identifierCopy = identifier;
  queueCopy = queue;
  completionCopy = completion;
  v14 = [infoCopy url];

  if (!v14)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_6;
    }

    *buf = 0;
    v16 = "Assertion failed: downloadablePhotoInfo.url != ((void *)0)";
LABEL_15:
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, v16, buf, 2u);
    goto LABEL_6;
  }

  if (![identifierCopy length])
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_6;
    }

    *buf = 0;
    v16 = "Assertion failed: callerIdentifier.length > 0";
    goto LABEL_15;
  }

  if (!queueCopy)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_6;
    }

    *buf = 0;
    v16 = "Assertion failed: callbackQueue != ((void *)0)";
    goto LABEL_15;
  }

  if (!completionCopy)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_6;
    }

    *buf = 0;
    v16 = "Assertion failed: completion != ((void *)0)";
    goto LABEL_15;
  }

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10078CA58;
  block[3] = &unk_101636B70;
  block[4] = self;
  v18 = infoCopy;
  v19 = queueCopy;
  v21 = completionCopy;
  v20 = identifierCopy;
  dispatch_async(workQueue, block);

LABEL_6:
}

- (UGCPhotoDownloadManager)init
{
  v12.receiver = self;
  v12.super_class = UGCPhotoDownloadManager;
  v2 = [(UGCPhotoDownloadManager *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSCache);
    imageCache = v2->_imageCache;
    v2->_imageCache = v3;

    [(NSCache *)v2->_imageCache setCountLimit:GEOConfigGetUInteger()];
    [(NSCache *)v2->_imageCache setTotalCostLimit:GEOConfigGetUInteger()];
    v5 = objc_alloc_init(NSOperationQueue);
    downloadOperationQueue = v2->_downloadOperationQueue;
    v2->_downloadOperationQueue = v5;

    [(NSOperationQueue *)v2->_downloadOperationQueue setMaxConcurrentOperationCount:GEOConfigGetUInteger()];
    v7 = objc_alloc_init(NSOperationQueue);
    completionOperationQueue = v2->_completionOperationQueue;
    v2->_completionOperationQueue = v7;

    v9 = dispatch_queue_create("com.apple.Maps.UGCPhotoDownloadManager", 0);
    workQueue = v2->_workQueue;
    v2->_workQueue = v9;
  }

  return v2;
}

+ (id)sharedDownloadManager
{
  if (qword_10195D268 != -1)
  {
    dispatch_once(&qword_10195D268, &stru_101628EC0);
  }

  v3 = qword_10195D260;

  return v3;
}

+ (id)generateRandomizedDownloadTokenForClass:(Class)class
{
  v3 = NSStringFromClass(class);
  v4 = +[NSUUID UUID];
  uUIDString = [v4 UUIDString];

  v9[0] = v3;
  v9[1] = uUIDString;
  v6 = [NSArray arrayWithObjects:v9 count:2];
  v7 = [v6 componentsJoinedByString:@":"];

  return v7;
}

@end