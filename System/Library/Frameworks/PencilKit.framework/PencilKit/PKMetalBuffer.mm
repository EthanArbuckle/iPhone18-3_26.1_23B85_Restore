@interface PKMetalBuffer
- (BOOL)lock;
- (void)initWithDevice:(uint64_t)device length:(uint64_t)length bytes:(uint64_t)bytes options:;
- (void)unlock;
@end

@implementation PKMetalBuffer

- (void)initWithDevice:(uint64_t)device length:(uint64_t)length bytes:(uint64_t)bytes options:
{
  v9 = a2;
  if (self)
  {
    v13.receiver = self;
    v13.super_class = PKMetalBuffer;
    self = objc_msgSendSuper2(&v13, sel_init);
    if (self)
    {
      if (length)
      {
        v10 = [v9 newBufferWithBytes:length length:device options:bytes];
      }

      else
      {
        v10 = [v9 newBufferWithLength:device options:bytes];
      }

      v11 = self[3];
      self[3] = v10;
    }
  }

  return self;
}

- (BOOL)lock
{
  if (atomic_load(&self->_isPurged))
  {
    return 0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  lockCount = selfCopy->_lockCount;
  selfCopy->_lockCount = lockCount + 1;
  if (lockCount)
  {
    v3 = 1;
  }

  else
  {
    v3 = 1;
    if ([(MTLBuffer *)selfCopy->_metalBuffer setPurgeableState:2]== 4)
    {
      atomic_store(1u, &self->_isPurged);
      v3 = 0;
    }
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (void)unlock
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj->_lockCount - 1;
  obj->_lockCount = v2;
  if (!v2)
  {
    [(MTLBuffer *)obj->_metalBuffer setPurgeableState:3];
  }

  objc_sync_exit(obj);
}

@end