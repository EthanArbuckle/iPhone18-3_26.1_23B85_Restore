@interface PHImageCacheEntry
- (BOOL)hasImageRef;
- (BOOL)isCancelled;
- (CGImage)createImageRef;
- (PHImageCacheEntry)init;
- (void)_callWaiters:(id)waiters wasCancelled:(BOOL)cancelled;
- (void)addNotifyHandler:(id)handler;
- (void)cancel;
- (void)dealloc;
- (void)populateWithImageRef:(CGImage *)ref additionalInfo:(id)info error:(id)error executeBeforeNotifyingWaitersBlock:(id)block;
- (void)prepareForReuse;
@end

@implementation PHImageCacheEntry

- (PHImageCacheEntry)init
{
  v7.receiver = self;
  v7.super_class = PHImageCacheEntry;
  v2 = [(PHImageCacheEntry *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    array = [MEMORY[0x1E695DF70] array];
    handlersWaitingOnResult = v3->_handlersWaitingOnResult;
    v3->_handlersWaitingOnResult = array;
  }

  return v3;
}

- (void)prepareForReuse
{
  os_unfair_lock_lock(&self->_lock);
  additionalInfo = self->_additionalInfo;
  self->_additionalInfo = 0;

  error = self->_error;
  self->_error = 0;

  CGImageRelease(self->_imageRef);
  self->_imageRef = 0;
  self->_isCancelled = 0;
  v5 = [(NSMutableArray *)self->_handlersWaitingOnResult copy];
  [(NSMutableArray *)self->_handlersWaitingOnResult removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  [(PHImageCacheEntry *)self _callWaiters:v5 wasCancelled:1];
}

- (BOOL)isCancelled
{
  os_unfair_lock_lock(&self->_lock);
  isCancelled = self->_isCancelled;
  os_unfair_lock_unlock(&self->_lock);
  return isCancelled;
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_lock);
  self->_isCancelled = 1;
  v3 = [(NSMutableArray *)self->_handlersWaitingOnResult copy];
  [(NSMutableArray *)self->_handlersWaitingOnResult removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  [(PHImageCacheEntry *)self _callWaiters:v3 wasCancelled:1];
}

- (void)populateWithImageRef:(CGImage *)ref additionalInfo:(id)info error:(id)error executeBeforeNotifyingWaitersBlock:(id)block
{
  infoCopy = info;
  errorCopy = error;
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  isCancelled = self->_isCancelled;
  if (!isCancelled)
  {
    CGImageRetain(ref);
    CGImageRelease(self->_imageRef);
    self->_imageRef = ref;
    objc_storeStrong(&self->_additionalInfo, info);
    objc_storeStrong(&self->_error, error);
  }

  v14 = [(NSMutableArray *)self->_handlersWaitingOnResult copy];
  [(NSMutableArray *)self->_handlersWaitingOnResult removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }

  [(PHImageCacheEntry *)self _callWaiters:v14 wasCancelled:isCancelled];
}

- (void)addNotifyHandler:(id)handler
{
  aBlock = handler;
  os_unfair_lock_lock(&self->_lock);
  imageRef = self->_imageRef;
  if (imageRef || self->_isCancelled)
  {
    if (imageRef == 0 || self->_isCancelled)
    {
      v7 = 0;
    }

    else
    {
      v7 = self->_imageRef;
    }

    aBlock[2](aBlock, v7, (imageRef == 0) | self->_isCancelled, self->_error);
  }

  else
  {
    handlersWaitingOnResult = self->_handlersWaitingOnResult;
    v6 = _Block_copy(aBlock);
    [(NSMutableArray *)handlersWaitingOnResult addObject:v6];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_callWaiters:(id)waiters wasCancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  v17 = *MEMORY[0x1E69E9840];
  waitersCopy = waiters;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [waitersCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(waitersCopy);
        }

        v11 = _Block_copy(*(*(&v12 + 1) + 8 * v10));
        v11[2](v11, self->_imageRef, cancelledCopy, self->_error);

        ++v10;
      }

      while (v8 != v10);
      v8 = [waitersCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (BOOL)hasImageRef
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_imageRef)
  {
    v3 = !self->_isCancelled;
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (CGImage)createImageRef
{
  os_unfair_lock_lock(&self->_lock);
  imageRef = self->_imageRef;
  if (imageRef)
  {
    if (self->_isCancelled)
    {
      imageRef = 0;
    }

    else
    {
      CGImageRetain(self->_imageRef);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return imageRef;
}

- (void)dealloc
{
  CGImageRelease(self->_imageRef);
  v3.receiver = self;
  v3.super_class = PHImageCacheEntry;
  [(PHImageCacheEntry *)&v3 dealloc];
}

@end