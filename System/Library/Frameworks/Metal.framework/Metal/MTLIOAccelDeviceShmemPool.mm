@interface MTLIOAccelDeviceShmemPool
- (void)dealloc;
- (void)prune;
- (void)purge;
- (void)setShmemSize:(unsigned int)size;
@end

@implementation MTLIOAccelDeviceShmemPool

- (void)dealloc
{
  tqh_first = self->_priv.queue.tqh_first;
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
        self->_priv.queue.tqh_last = tqe_prev;
      }

      *tqe_prev = v6;
      --self->_priv.count;

      tqh_first = tqe_next;
    }

    while (tqe_next);
  }

  self->_priv.device = 0;
  v7.receiver = self;
  v7.super_class = MTLIOAccelDeviceShmemPool;
  [(MTLIOAccelDeviceShmemPool *)&v7 dealloc];
}

- (void)purge
{
  os_unfair_lock_lock(&self->_priv.lock);
  tqh_first = self->_priv.queue.tqh_first;
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
        self->_priv.queue.tqh_last = tqe_prev;
      }

      *tqe_prev = v6;
      --self->_priv.count;

      tqh_first = tqe_next;
    }

    while (tqe_next);
  }

  os_unfair_lock_unlock(&self->_priv.lock);
}

- (void)setShmemSize:(unsigned int)size
{
  os_unfair_lock_lock(&self->_priv.lock);
  if (self->_priv.shmemSize < size)
  {
    self->_priv.shmemSize = size;
    tqh_first = self->_priv.queue.tqh_first;
    if (tqh_first)
    {
      do
      {
        tqe_next = tqh_first->_priv.entry.tqe_next;
        if (tqh_first->_shmemSize < self->_priv.shmemSize)
        {
          tqe_prev = tqh_first->_priv.entry.tqe_prev;
          if (tqe_next)
          {
            tqe_next->_priv.entry.tqe_prev = tqe_prev;
            v8 = tqh_first->_priv.entry.tqe_next;
            tqe_prev = tqh_first->_priv.entry.tqe_prev;
          }

          else
          {
            v8 = 0;
            self->_priv.queue.tqh_last = tqe_prev;
          }

          *tqe_prev = v8;
          --self->_priv.count;
          tqh_first->_priv.entry.tqe_next = 0;
          tqh_first->_priv.entry.tqe_prev = 0;
        }

        tqh_first = tqe_next;
      }

      while (tqe_next);
    }
  }

  os_unfair_lock_unlock(&self->_priv.lock);
}

- (void)prune
{
  os_unfair_lock_lock(&self->_priv.lock);
  v3 = atomic_load(&self->_priv.device->_numCommandBuffers);
  v4 = v3 + 2;
  while (self->_priv.count > v4)
  {
    v5 = **(self->_priv.queue.tqh_last + 1);
    v7 = v5[2];
    v6 = v5[3];
    if (v7)
    {
      *(v7 + 24) = v6;
      v8 = v5[2];
      v6 = v5[3];
    }

    else
    {
      v8 = 0;
      self->_priv.queue.tqh_last = v6;
    }

    *v6 = v8;
    --self->_priv.count;
    v5[2] = 0;
    v5[3] = 0;
  }

  os_unfair_lock_unlock(&self->_priv.lock);
}

@end