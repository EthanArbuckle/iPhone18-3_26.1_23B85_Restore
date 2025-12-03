@interface MTLResourceListPool
- (MTLResourceListPool)initWithResourceListCapacity:(int)capacity;
- (void)dealloc;
- (void)purge;
@end

@implementation MTLResourceListPool

- (MTLResourceListPool)initWithResourceListCapacity:(int)capacity
{
  v5.receiver = self;
  v5.super_class = MTLResourceListPool;
  result = [(MTLResourceListPool *)&v5 init];
  if (result)
  {
    result->_priv.queue.tqh_first = 0;
    result->_resourceListCapacity = capacity;
    result->_priv.queue.tqh_last = &result->_priv.queue.tqh_first;
    *&result->_priv.lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)dealloc
{
  tqh_first = self->_priv.queue.tqh_first;
  if (tqh_first)
  {
    do
    {
      tqe_next = tqh_first->_listPriv.entry.tqe_next;
      tqe_prev = tqh_first->_listPriv.entry.tqe_prev;
      if (tqe_next)
      {
        tqe_next->_listPriv.entry.tqe_prev = tqe_prev;
        v6 = tqh_first->_listPriv.entry.tqe_next;
        tqe_prev = tqh_first->_listPriv.entry.tqe_prev;
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

  v7.receiver = self;
  v7.super_class = MTLResourceListPool;
  [(MTLResourceListPool *)&v7 dealloc];
}

- (void)purge
{
  os_unfair_lock_lock(&self->_priv.lock);
  tqh_first = self->_priv.queue.tqh_first;
  if (tqh_first)
  {
    do
    {
      tqe_next = tqh_first->_listPriv.entry.tqe_next;
      tqe_prev = tqh_first->_listPriv.entry.tqe_prev;
      if (tqe_next)
      {
        tqe_next->_listPriv.entry.tqe_prev = tqe_prev;
        v6 = tqh_first->_listPriv.entry.tqe_next;
        tqe_prev = tqh_first->_listPriv.entry.tqe_prev;
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

@end