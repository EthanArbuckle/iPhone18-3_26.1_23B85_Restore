@interface MTLIOAccelResourcePool
- (BOOL)updateResourcePurgeability;
- (void)dealloc;
- (void)purge;
- (void)purgeWithLock;
- (void)setResourceArgs:(const IOAccelNewResourceArgs *)args resourceArgsSize:(unsigned int)size;
@end

@implementation MTLIOAccelResourcePool

- (void)setResourceArgs:(const IOAccelNewResourceArgs *)args resourceArgsSize:(unsigned int)size
{
  os_unfair_lock_lock(&self->_priv.lock);
  [(MTLIOAccelResourcePool *)self purgeWithLock];
  free(self->_resourceArgs);
  self->_resourceArgsSize = size;
  v7 = malloc_type_malloc(size, 0x10000407488EC78uLL);
  self->_resourceArgs = v7;
  memcpy(v7, args, self->_resourceArgsSize);
  ++self->generation;

  os_unfair_lock_unlock(&self->_priv.lock);
}

- (void)dealloc
{
  [(MTLIOAccelResourcePool *)self purgeWithLock];
  free(self->_resourceArgs);
  self->_device = 0;
  v3.receiver = self;
  v3.super_class = MTLIOAccelResourcePool;
  [(MTLIOAccelResourcePool *)&v3 dealloc];
}

- (void)purgeWithLock
{
  tqh_first = self->_priv.volatileQueue.tqh_first;
  if (tqh_first)
  {
    do
    {
      tqe_next = tqh_first->_priv.entry.tqe_next;
      tqe_prev = tqh_first->_priv.entry.tqe_prev;
      if (tqe_next)
      {
        tqe_next->_priv.entry.tqe_prev = tqe_prev;
        v6 = tqh_first->_priv.entry.tqe_next;
        tqe_prev = tqh_first->_priv.entry.tqe_prev;
      }

      else
      {
        v6 = 0;
        self->_priv.volatileQueue.tqh_last = tqe_prev;
      }

      *tqe_prev = v6;
      --self->_priv.count;

      tqh_first = tqe_next;
    }

    while (tqe_next);
  }

  v7 = self->_priv.nonvolatileQueue.tqh_first;
  if (v7)
  {
    do
    {
      v9 = v7->_priv.entry.tqe_next;
      v8 = v7->_priv.entry.tqe_prev;
      if (v9)
      {
        v9->_priv.entry.tqe_prev = v8;
        v10 = v7->_priv.entry.tqe_next;
        v8 = v7->_priv.entry.tqe_prev;
      }

      else
      {
        v10 = 0;
        self->_priv.nonvolatileQueue.tqh_last = v8;
      }

      *v8 = v10;
      --self->_priv.count;

      v7 = v9;
    }

    while (v9);
  }
}

- (void)purge
{
  os_unfair_lock_lock(&self->_priv.lock);
  [(MTLIOAccelResourcePool *)self purgeWithLock];

  os_unfair_lock_unlock(&self->_priv.lock);
}

- (BOOL)updateResourcePurgeability
{
  os_unfair_lock_lock(&self->_priv.lock);
  if (self->_priv.nonvolatileQueue.tqh_first)
  {
    v3 = mach_absolute_time();
    v4 = **(self->_priv.nonvolatileQueue.tqh_last + 1);
    if (v4)
    {
      p_priv = &self->_priv;
      v6 = v3 - self->age_to_purge;
      do
      {
        if (v4->_priv.time_added >= v6)
        {
          break;
        }

        v7 = **(v4->_priv.entry.tqe_prev + 1);
        [(MTLIOAccelResource *)v4 setPurgeableState:3];
        tqe_next = v4->_priv.entry.tqe_next;
        tqe_prev = v4->_priv.entry.tqe_prev;
        if (tqe_next)
        {
          tqe_next->_priv.entry.tqe_prev = tqe_prev;
          v10 = v4->_priv.entry.tqe_next;
          tqe_prev = v4->_priv.entry.tqe_prev;
        }

        else
        {
          v10 = 0;
          self->_priv.nonvolatileQueue.tqh_last = tqe_prev;
        }

        *tqe_prev = v10;
        tqh_first = p_priv->volatileQueue.tqh_first;
        v4->_priv.entry.tqe_next = p_priv->volatileQueue.tqh_first;
        p_tqe_next = &v4->_priv.entry.tqe_next;
        if (tqh_first)
        {
          tqh_first->_priv.entry.tqe_prev = p_tqe_next;
        }

        else
        {
          self->_priv.volatileQueue.tqh_last = p_tqe_next;
        }

        p_priv->volatileQueue.tqh_first = v4;
        v4->_priv.entry.tqe_prev = &p_priv->volatileQueue.tqh_first;
        v4 = v7;
      }

      while (v7);
    }

    os_unfair_lock_unlock(&self->_priv.lock);
    return self->_priv.nonvolatileQueue.tqh_first != 0;
  }

  else
  {
    os_unfair_lock_unlock(&self->_priv.lock);
    return 0;
  }
}

@end