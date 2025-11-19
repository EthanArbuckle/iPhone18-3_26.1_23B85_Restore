@interface IMPersistentCacheManager
+ (id)sharedInstance;
- (IMPersistentCacheManager)init;
- (id)cacheForPath:(id)a3 maxSize:(unint64_t)a4;
- (void)_cleanCachesInPath:(id)a3;
- (void)addCleanupExclusionPath:(id)a3;
- (void)cleanUpCacheFilesInPath:(id)a3 withExtension:(id)a4;
- (void)purgeFromCache:(id)a3;
@end

@implementation IMPersistentCacheManager

- (IMPersistentCacheManager)init
{
  v11.receiver = self;
  v11.super_class = IMPersistentCacheManager;
  v2 = [(IMPersistentCacheManager *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    caches = v2->_caches;
    v2->_caches = v3;

    v5 = [[NSCountedSet alloc] initWithCapacity:6];
    pathRequestCount = v2->_pathRequestCount;
    v2->_pathRequestCount = v5;

    v7 = dispatch_queue_create("com.apple.itunesmobile.impersistentcachemanager", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v7;

    v9 = v2;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C62B4;
  block[3] = &unk_2C7CA8;
  block[4] = a1;
  if (qword_342860 != -1)
  {
    dispatch_once(&qword_342860, block);
  }

  v2 = qword_342858;

  return v2;
}

- (void)_cleanCachesInPath:(id)a3
{
  v4 = a3;
  v6 = [v4 stringByDeletingLastPathComponent];
  v5 = [v4 pathExtension];

  [(IMPersistentCacheManager *)self cleanUpCacheFilesInPath:v6 withExtension:v5];
}

- (id)cacheForPath:(id)a3 maxSize:(unint64_t)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_C6488;
  v19 = sub_C6498;
  v20 = 0;
  accessQueue = self->_accessQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_C64A0;
  v11[3] = &unk_2CC9F0;
  v11[4] = self;
  v12 = v6;
  v13 = &v15;
  v14 = a4;
  v8 = v6;
  dispatch_sync(accessQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (void)purgeFromCache:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_C65EC;
  v7[3] = &unk_2C7BE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, v7);
}

- (void)addCleanupExclusionPath:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_C66E4;
  v7[3] = &unk_2C7BE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, v7);
}

- (void)cleanUpCacheFilesInPath:(id)a3 withExtension:(id)a4
{
  v6 = a3;
  v7 = a4;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C680C;
  block[3] = &unk_2C89F8;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_sync(accessQueue, block);
}

@end