@interface NSTaggedPointerStringCStringContainer
+ (id)taggedPointerStringCStringContainer;
- (void)release;
@end

@implementation NSTaggedPointerStringCStringContainer

- (void)release
{
  os_unfair_lock_lock_with_options();
  v3 = nextAvailableCacheSlot;
  if (nextAvailableCacheSlot > 63)
  {
    os_unfair_lock_unlock(&cacheLock);

    [(NSTaggedPointerStringCStringContainer *)self dealloc];
  }

  else
  {
    ++nextAvailableCacheSlot;
    cache[v3] = self;

    os_unfair_lock_unlock(&cacheLock);
  }
}

+ (id)taggedPointerStringCStringContainer
{
  os_unfair_lock_lock_with_options();
  v2 = nextAvailableCacheSlot;
  if (nextAvailableCacheSlot <= 0)
  {
    os_unfair_lock_unlock(&cacheLock);
  }

  else
  {
    --nextAvailableCacheSlot;
    v3 = cache[v2 - 1];
    os_unfair_lock_unlock(&cacheLock);
    if (v3)
    {
      goto LABEL_6;
    }
  }

  v3 = objc_alloc_init(NSTaggedPointerStringCStringContainer);
LABEL_6:

  return v3;
}

@end