@interface VNCanceller
- (BOOL)tryToPerformBlock:(id)a3 usingSignallingBlock:(id)a4;
- (BOOL)wasSignalled;
- (VNCanceller)init;
- (void)_releaseSignallingBlock;
- (void)reset;
- (void)signalCancellation;
@end

@implementation VNCanceller

- (BOOL)wasSignalled
{
  os_unfair_lock_lock(&self->_lock);
  signalled = self->_signalled;
  os_unfair_lock_unlock(&self->_lock);
  return signalled;
}

- (void)signalCancellation
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_signalled)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_signalled = 1;
    v3 = _Block_copy(self->_signallingBlock);
    os_unfair_lock_unlock(&self->_lock);
    if (v3)
    {
      v3[2](v3);
    }
  }
}

- (void)reset
{
  [(VNCanceller *)self _releaseSignallingBlock];
  os_unfair_lock_lock(&self->_lock);
  self->_signalled = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)tryToPerformBlock:(id)a3 usingSignallingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  signalled = self->_signalled;
  if (signalled)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v9 = _Block_copy(v7);
    signallingBlock = self->_signallingBlock;
    self->_signallingBlock = v9;

    os_unfair_lock_unlock(&self->_lock);
    if (v6)
    {
      v6[2](v6);
    }

    [(VNCanceller *)self _releaseSignallingBlock];
  }

  return !signalled;
}

- (void)_releaseSignallingBlock
{
  os_unfair_lock_lock(&self->_lock);
  signallingBlock = self->_signallingBlock;
  self->_signallingBlock = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (VNCanceller)init
{
  v6.receiver = self;
  v6.super_class = VNCanceller;
  v2 = [(VNCanceller *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

@end