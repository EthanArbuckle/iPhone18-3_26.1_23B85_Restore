@interface IMPersistentCacheManager
+ (id)sharedInstance;
- (IMPersistentCacheManager)init;
- (id)cacheForPath:(id)path maxSize:(unint64_t)size;
- (void)_cleanCachesInPath:(id)path;
- (void)addCleanupExclusionPath:(id)path;
- (void)cleanUpCacheFilesInPath:(id)path withExtension:(id)extension;
- (void)purgeFromCache:(id)cache;
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
  block[4] = self;
  if (qword_342860 != -1)
  {
    dispatch_once(&qword_342860, block);
  }

  v2 = qword_342858;

  return v2;
}

- (void)_cleanCachesInPath:(id)path
{
  pathCopy = path;
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  pathExtension = [pathCopy pathExtension];

  [(IMPersistentCacheManager *)self cleanUpCacheFilesInPath:stringByDeletingLastPathComponent withExtension:pathExtension];
}

- (id)cacheForPath:(id)path maxSize:(unint64_t)size
{
  pathCopy = path;
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
  v12 = pathCopy;
  v13 = &v15;
  sizeCopy = size;
  v8 = pathCopy;
  dispatch_sync(accessQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (void)purgeFromCache:(id)cache
{
  cacheCopy = cache;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_C65EC;
  v7[3] = &unk_2C7BE8;
  v7[4] = self;
  v8 = cacheCopy;
  v6 = cacheCopy;
  dispatch_sync(accessQueue, v7);
}

- (void)addCleanupExclusionPath:(id)path
{
  pathCopy = path;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_C66E4;
  v7[3] = &unk_2C7BE8;
  v7[4] = self;
  v8 = pathCopy;
  v6 = pathCopy;
  dispatch_sync(accessQueue, v7);
}

- (void)cleanUpCacheFilesInPath:(id)path withExtension:(id)extension
{
  pathCopy = path;
  extensionCopy = extension;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C680C;
  block[3] = &unk_2C89F8;
  v12 = pathCopy;
  v13 = extensionCopy;
  selfCopy = self;
  v9 = extensionCopy;
  v10 = pathCopy;
  dispatch_sync(accessQueue, block);
}

@end