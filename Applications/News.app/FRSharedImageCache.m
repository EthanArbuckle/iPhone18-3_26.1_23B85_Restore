@interface FRSharedImageCache
- (FRSharedImageCache)init;
- (FRSharedImageCache)initWithPersistenceEnabled:(BOOL)a3;
- (id)_imageAtPath:(id)a3;
- (id)fetchImageForKey:(id)a3;
- (void)cache:(id)a3 forKey:(id)a4 immediately:(BOOL)a5;
- (void)pruneImagesOlderThan:(double)a3;
@end

@implementation FRSharedImageCache

- (FRSharedImageCache)init
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = -[FRSharedImageCache initWithPersistenceEnabled:](self, "initWithPersistenceEnabled:", [v3 BOOLForKey:@"enableImageCacheKey"]);

  return v4;
}

- (FRSharedImageCache)initWithPersistenceEnabled:(BOOL)a3
{
  v18.receiver = self;
  v18.super_class = FRSharedImageCache;
  v4 = [(FRSharedImageCache *)&v18 init];
  v5 = v4;
  if (v4)
  {
    v4->_persistenceEnabled = a3;
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_BACKGROUND, 0);
    v8 = dispatch_queue_create("com.apple.FRSharedImageCache.persistence", v7);
    persistenceQueue = v5->_persistenceQueue;
    v5->_persistenceQueue = v8;

    v10 = FRURLForNewsAppCachesDirectory();
    v11 = [v10 path];

    v12 = [v11 stringByAppendingPathComponent:@"CachedImages"];
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

- (id)_imageAtPath:(id)a3
{
  v4 = a3;
  if ([(FRSharedImageCache *)self persistenceEnabled])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_100009C28;
    v15 = sub_100009F68;
    v16 = 0;
    v5 = [(FRSharedImageCache *)self persistenceQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10005968C;
    v8[3] = &unk_1000C5598;
    v9 = v4;
    v10 = &v11;
    dispatch_sync(v5, v8);

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)pruneImagesOlderThan:(double)a3
{
  v5 = [(FRSharedImageCache *)self persistenceQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100059874;
  v6[3] = &unk_1000C5A18;
  v6[4] = self;
  *&v6[5] = a3;
  dispatch_async(v5, v6);
}

- (id)fetchImageForKey:(id)a3
{
  v4 = a3;
  v5 = [(FRSharedImageCache *)self rootPath];
  v6 = [v5 stringByAppendingPathComponent:v4];

  v7 = [(FRSharedImageCache *)self _imageAtPath:v6];

  return v7;
}

- (void)cache:(id)a3 forKey:(id)a4 immediately:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if ([(FRSharedImageCache *)self persistenceEnabled])
  {
    v10 = [(FRSharedImageCache *)self rootPath];
    v11 = [v10 stringByAppendingPathComponent:v9];

    v12 = [v8 CGImage];
    if (v8)
    {
      v13 = v12;
      if (v12)
      {
        CGImageRetain(v12);
        Current = CFAbsoluteTimeGetCurrent();
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100059D30;
        v20[3] = &unk_1000C5C18;
        v24 = v13;
        v21 = v11;
        v22 = v8;
        v25 = Current;
        v23 = v9;
        v15 = objc_retainBlock(v20);
        v16 = [(FRSharedImageCache *)self persistenceQueue];
        v17 = v16;
        if (v5)
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
          dispatch_async(v16, v15);
        }
      }
    }
  }
}

@end