@interface THiOSTraitsCache
- (BOOL)isCompactHeight;
- (BOOL)isCompactWidth;
- (THiOSTraitsCache)init;
- (void)updateTraitsWithCollection:(id)collection;
@end

@implementation THiOSTraitsCache

- (THiOSTraitsCache)init
{
  v3.receiver = self;
  v3.super_class = THiOSTraitsCache;
  result = [(THiOSTraitsCache *)&v3 init];
  if (result)
  {
    result->_accessLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)updateTraitsWithCollection:(id)collection
{
  collectionCopy = collection;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [collectionCopy horizontalSizeClass] == &dword_0 + 1;
  [collectionCopy horizontalSizeClass];
  v6 = [collectionCopy verticalSizeClass] == &dword_0 + 1;
  [collectionCopy verticalSizeClass];

  os_unfair_lock_lock(&self->_accessLock);
  self->mCompactWidth = v5;
  self->mCompactHeight = v6;

  os_unfair_lock_unlock(&self->_accessLock);
}

- (BOOL)isCompactWidth
{
  os_unfair_lock_lock(&self->_accessLock);
  mCompactWidth = self->mCompactWidth;
  os_unfair_lock_unlock(&self->_accessLock);
  return mCompactWidth;
}

- (BOOL)isCompactHeight
{
  os_unfair_lock_lock(&self->_accessLock);
  mCompactHeight = self->mCompactHeight;
  os_unfair_lock_unlock(&self->_accessLock);
  return mCompactHeight;
}

@end