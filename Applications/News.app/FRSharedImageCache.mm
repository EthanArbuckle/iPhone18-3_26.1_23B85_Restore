@interface FRSharedImageCache
- (FRSharedImageCache)init;
- (FRSharedImageCache)initWithPersistenceEnabled:(BOOL)enabled;
- (id)_imageAtPath:(id)path;
- (id)fetchImageForKey:(id)key;
- (void)cache:(id)cache forKey:(id)key immediately:(BOOL)immediately;
- (void)pruneImagesOlderThan:(double)than;
@end

@implementation FRSharedImageCache

- (FRSharedImageCache)init
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = -[FRSharedImageCache initWithPersistenceEnabled:](self, "initWithPersistenceEnabled:", [v3 BOOLForKey:@"enableImageCacheKey"]);

  return v4;
}

- (FRSharedImageCache)initWithPersistenceEnabled:(BOOL)enabled
{
  v18.receiver = self;
  v18.super_class = FRSharedImageCache;
  v4 = [(FRSharedImageCache *)&v18 init];
  v5 = v4;
  if (v4)
  {
    v4->_persistenceEnabled = enabled;
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_BACKGROUND, 0);
    v8 = dispatch_queue_create("com.apple.FRSharedImageCache.persistence", v7);
    persistenceQueue = v5->_persistenceQueue;
    v5->_persistenceQueue = v8;

    v10 = FRURLForNewsAppCachesDirectory();
    path = [v10 path];

    v12 = [path stringByAppendingPathComponent:@"CachedImages"];
    rootPath = v5->_rootPath;
    v5->_rootPath = v12;

    v14 = +[NSFileManager defaultManager];
    v15 = [v14 fileExistsAtPath:v5->_rootPath];

    if ((v15 & 1) == 0)
    {
      v16 = +[NSFileManager defaultManager];
      [v16 createDirectoryAtPath:v5->_rootPath withIntermediateDirectories:0 attributes:0 error:0];
    }
  }

  return v5;
}

- (id)_imageAtPath:(id)path
{
  pathCopy = path;
  if ([(FRSharedImageCache *)self persistenceEnabled])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_100009C28;
    v15 = sub_100009F68;
    v16 = 0;
    persistenceQueue = [(FRSharedImageCache *)self persistenceQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10005968C;
    v8[3] = &unk_1000C5598;
    v9 = pathCopy;
    v10 = &v11;
    dispatch_sync(persistenceQueue, v8);

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)pruneImagesOlderThan:(double)than
{
  persistenceQueue = [(FRSharedImageCache *)self persistenceQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100059874;
  v6[3] = &unk_1000C5A18;
  v6[4] = self;
  *&v6[5] = than;
  dispatch_async(persistenceQueue, v6);
}

- (id)fetchImageForKey:(id)key
{
  keyCopy = key;
  rootPath = [(FRSharedImageCache *)self rootPath];
  v6 = [rootPath stringByAppendingPathComponent:keyCopy];

  v7 = [(FRSharedImageCache *)self _imageAtPath:v6];

  return v7;
}

- (void)cache:(id)cache forKey:(id)key immediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  cacheCopy = cache;
  keyCopy = key;
  if ([(FRSharedImageCache *)self persistenceEnabled])
  {
    rootPath = [(FRSharedImageCache *)self rootPath];
    v11 = [rootPath stringByAppendingPathComponent:keyCopy];

    cGImage = [cacheCopy CGImage];
    if (cacheCopy)
    {
      v13 = cGImage;
      if (cGImage)
      {
        CGImageRetain(cGImage);
        Current = CFAbsoluteTimeGetCurrent();
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100059D30;
        v20[3] = &unk_1000C5C18;
        v24 = v13;
        v21 = v11;
        v22 = cacheCopy;
        v25 = Current;
        v23 = keyCopy;
        v15 = objc_retainBlock(v20);
        persistenceQueue = [(FRSharedImageCache *)self persistenceQueue];
        v17 = persistenceQueue;
        if (immediatelyCopy)
        {
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_100059EEC;
          v18[3] = &unk_1000C3098;
          v19 = v15;
          dispatch_sync(v17, v18);

          v17 = v19;
        }

        else
        {
          dispatch_async(persistenceQueue, v15);
        }
      }
    }
  }
}

@end