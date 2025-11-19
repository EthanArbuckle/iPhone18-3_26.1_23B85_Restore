@interface NSURLCache
+ (NSURLCache)sharedURLCache;
@end

@implementation NSURLCache

+ (NSURLCache)sharedURLCache
{
  os_unfair_lock_lock(&_gSharedCacheLock);
  if (!sharedInstance)
  {
    if (gSharedInstance)
    {
      v2 = [NSURLCache alloc];
      if (v2)
      {
        v2 = [(NSURLCache *)v2 _initWithExistingCFURLCache:gSharedInstance];
      }
    }

    else
    {
      v2 = objc_alloc_init(NSURLCache);
    }

    sharedInstance = v2;
    v3 = objc_opt_class();
    Name = class_getName(v3);
    v5 = objc_opt_self();
    v6 = class_getName(v5);
    v7 = sharedInstance;
    if (Name == v6)
    {
      v7 = *(*(sharedInstance + 8) + 24);
    }

    CFURLCacheSetSharedURLCache(v7);
  }

  os_unfair_lock_unlock(&_gSharedCacheLock);
  v8 = sharedInstance;

  return v8;
}

@end