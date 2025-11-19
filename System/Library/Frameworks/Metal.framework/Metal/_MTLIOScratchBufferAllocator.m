@interface _MTLIOScratchBufferAllocator
- (BOOL)updateScratchBuffersPurgeability;
- (_MTLIOScratchBufferAllocator)initWithDevice:(id)a3;
- (id)newScratchBufferWithMinimumSize:(unint64_t)a3;
- (void)dealloc;
- (void)kickCleanupQueue;
- (void)returnActiveScratchBuffersToPool;
- (void)returnPriv:(MTLIOScratchBufferPrivate *)a3;
- (void)updateScratchBuffersPurgeabilityHandler;
@end

@implementation _MTLIOScratchBufferAllocator

- (void)returnPriv:(MTLIOScratchBufferPrivate *)a3
{
  pthread_mutex_lock(&self->_pool_lock);
  v5 = a3->var3 - 1;
  a3->var3 = v5;
  if (!v5)
  {
    if ([a3->var1 allocatedSize] >= self->_currentSize)
    {
      if (!a3->var5)
      {
        var0 = a3->var0.var0;
        var1 = a3->var0.var1;
        p_tqh_last = &self->_activeq.tqh_last;
        if (a3->var0.var0)
        {
          p_tqh_last = &a3->var0.var0->var0.var1;
        }

        *p_tqh_last = var1;
        *var1 = var0;
        p_poolq = &self->_poolq;
        tqh_first = self->_poolq.tqh_first;
        a3->var0.var0 = tqh_first;
        if (tqh_first)
        {
          p_var1 = &tqh_first->var0.var1;
        }

        else
        {
          p_var1 = &self->_poolq.tqh_last;
        }

        *p_var1 = &a3->var0.var0;
        p_poolq->tqh_first = a3;
        a3->var0.var1 = &p_poolq->tqh_first;
        a3->var5 = 1;
      }

      a3->var4 = mach_absolute_time();
    }

    else
    {

      free(a3);
    }
  }

  pthread_mutex_unlock(&self->_pool_lock);
}

- (id)newScratchBufferWithMinimumSize:(unint64_t)a3
{
  pthread_mutex_lock(&self->_pool_lock);
  if (self->_currentSize < a3)
  {
    tqh_first = self->_activeq.tqh_first;
    if (tqh_first)
    {
      var0 = tqh_first->var0.var0;
      if (tqh_first->var0.var0)
      {
        do
        {
          v7 = var0;
          var1 = tqh_first->var0.var1;
          v7->var0.var1 = var1;
          *var1 = v7;
          var0 = v7->var0.var0;
          tqh_first = v7;
        }

        while (v7->var0.var0);
      }

      else
      {
        v7 = self->_activeq.tqh_first;
      }

      v9 = v7->var0.var1;
      self->_activeq.tqh_last = v9;
      *v9 = 0;
    }

    v10 = self->_poolq.tqh_first;
    if (v10)
    {
      do
      {
        v12 = v10->var0.var0;
        v11 = v10->var0.var1;
        p_var1 = &v10->var0.var0->var0.var1;
        if (!v10->var0.var0)
        {
          p_var1 = &self->_poolq.tqh_last;
        }

        *p_var1 = v11;
        *v11 = v12;
        v10->var5 = 0;
        if (!v10->var3)
        {

          free(v10);
        }

        v10 = v12;
      }

      while (v12);
    }

    v14 = self->_volatileq.tqh_first;
    if (v14)
    {
      do
      {
        v16 = v14->var0.var0;
        v15 = v14->var0.var1;
        p_tqh_last = &v14->var0.var0->var0.var1;
        if (!v14->var0.var0)
        {
          p_tqh_last = &self->_volatileq.tqh_last;
        }

        *p_tqh_last = v15;
        *v15 = v16;

        free(v14);
        v14 = v16;
      }

      while (v16);
    }

    v18 = [(MTLDevice *)self->_device maxBufferLength];
    if (v18 < a3)
    {
      goto LABEL_19;
    }

    v20 = *MEMORY[0x1E69E9AB0] + 4 * a3 - 1;
    if ((v20 & -*MEMORY[0x1E69E9AB0]) >= v18)
    {
      v21 = v18;
    }

    else
    {
      v21 = v20 & -*MEMORY[0x1E69E9AB0];
    }

    self->_currentSize = v21;
  }

  v22 = self->_poolq.tqh_first;
  if (v22)
  {
    v23 = v22->var0.var0;
    v24 = v22->var0.var1;
    v25 = &self->_poolq.tqh_last;
    if (v22->var0.var0)
    {
      v25 = &v22->var0.var0->var0.var1;
    }

    *v25 = v24;
    *v24 = v23;
  }

  else
  {
    v22 = self->_volatileq.tqh_first;
    if (v22)
    {
      v26 = v22->var0.var0;
      v27 = v22->var0.var1;
      v28 = &self->_volatileq.tqh_last;
      if (v22->var0.var0)
      {
        v28 = &v22->var0.var0->var0.var1;
      }

      *v28 = v27;
      *v27 = v26;
      [v22->var1 setPurgeableState:2];
    }

    else
    {
      v29 = [MTLDevice newBufferWithLength:"newBufferWithLength:options:" options:?];
      if (!v29)
      {
LABEL_19:
        pthread_mutex_unlock(&self->_pool_lock);
        return 0;
      }

      v30 = v29;
      v22 = malloc_type_malloc(0x38uLL, 0x10A00402C0B3040uLL);
      v22->var1 = v30;
      v22->var2 = self;
      v22->var3 = 0;
    }
  }

  p_activeq = &self->_activeq;
  v32 = self->_activeq.tqh_first;
  v22->var5 = 0;
  v22->var0.var0 = v32;
  if (v32)
  {
    v33 = &v32->var0.var1;
  }

  else
  {
    v33 = &self->_activeq.tqh_last;
  }

  *v33 = &v22->var0.var0;
  p_activeq->tqh_first = v22;
  v22->var0.var1 = &p_activeq->tqh_first;
  ++v22->var3;
  pthread_mutex_unlock(&self->_pool_lock);
  v34 = [_MTLIOScratchBuffer alloc];

  return [(_MTLIOScratchBuffer *)v34 init:v22];
}

- (void)returnActiveScratchBuffersToPool
{
  pthread_mutex_lock(&self->_pool_lock);
  tqh_first = self->_activeq.tqh_first;
  if (tqh_first)
  {
    p_poolq = &self->_poolq;
    do
    {
      var0 = tqh_first->var0.var0;
      var1 = tqh_first->var0.var1;
      p_var1 = &tqh_first->var0.var0->var0.var1;
      if (!tqh_first->var0.var0)
      {
        p_var1 = &self->_activeq.tqh_last;
      }

      *p_var1 = var1;
      *var1 = var0;
      v8 = p_poolq->tqh_first;
      tqh_first->var0.var0 = p_poolq->tqh_first;
      if (v8)
      {
        p_tqh_last = &v8->var0.var1;
      }

      else
      {
        p_tqh_last = &self->_poolq.tqh_last;
      }

      *p_tqh_last = &tqh_first->var0.var0;
      p_poolq->tqh_first = tqh_first;
      tqh_first->var0.var1 = &p_poolq->tqh_first;
      tqh_first->var5 = 1;
      tqh_first = var0;
    }

    while (var0);
  }

  pthread_mutex_unlock(&self->_pool_lock);
}

- (void)kickCleanupQueue
{
  os_unfair_lock_lock(&self->_pool_cleanup_lock);
  self->_pool_cleanup_requested = 1;
  if (!self->_pool_cleanup_scheduled)
  {
    self->_pool_cleanup_scheduled = 1;
    pool_cleanup_source = self->_pool_cleanup_source;
    v4 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(pool_cleanup_source, v4, 0x3B9ACA00uLL, 0x5F5E100uLL);
    dispatch_resume(self->_pool_cleanup_source);
  }

  os_unfair_lock_unlock(&self->_pool_cleanup_lock);
}

- (void)updateScratchBuffersPurgeabilityHandler
{
  os_unfair_lock_lock(&self->_pool_cleanup_lock);
  self->_pool_cleanup_requested = 0;
  os_unfair_lock_unlock(&self->_pool_cleanup_lock);
  v3 = [(_MTLIOScratchBufferAllocator *)self updateScratchBuffersPurgeability];
  os_unfair_lock_lock(&self->_pool_cleanup_lock);
  if (!v3 && !self->_pool_cleanup_requested)
  {
    dispatch_suspend(self->_pool_cleanup_source);
    self->_pool_cleanup_scheduled = 0;
  }

  os_unfair_lock_unlock(&self->_pool_cleanup_lock);
}

- (BOOL)updateScratchBuffersPurgeability
{
  pthread_mutex_lock(&self->_pool_lock);
  if (self->_poolq.tqh_first)
  {
    v3 = mach_absolute_time();
    v4 = **(self->_poolq.tqh_last + 1);
    if (v4)
    {
      v5 = v3 - self->_age_to_purge;
      p_volatileq = &self->_volatileq;
      do
      {
        v7 = **(v4->var0.var1 + 1);
        if (!v4->var3)
        {
          if (v4->var4 >= v5)
          {
            break;
          }

          [v4->var1 setPurgeableState:3];
          var0 = v4->var0.var0;
          var1 = v4->var0.var1;
          p_var1 = &v4->var0.var0->var0.var1;
          if (!v4->var0.var0)
          {
            p_var1 = &self->_poolq.tqh_last;
          }

          *p_var1 = var1;
          *var1 = var0;
          tqh_first = p_volatileq->tqh_first;
          v4->var0.var0 = p_volatileq->tqh_first;
          if (tqh_first)
          {
            p_tqh_last = &tqh_first->var0.var1;
          }

          else
          {
            p_tqh_last = &self->_volatileq.tqh_last;
          }

          *p_tqh_last = &v4->var0.var0;
          p_volatileq->tqh_first = v4;
          v4->var0.var1 = &p_volatileq->tqh_first;
        }

        v4 = v7;
      }

      while (v7);
    }

    v13 = self->_poolq.tqh_first != 0;
  }

  else
  {
    v13 = 0;
  }

  pthread_mutex_unlock(&self->_pool_lock);
  return v13;
}

- (_MTLIOScratchBufferAllocator)initWithDevice:(id)a3
{
  v12.receiver = self;
  v12.super_class = _MTLIOScratchBufferAllocator;
  v4 = [(_MTLIOScratchBufferAllocator *)&v12 init];
  if (v4)
  {
    v5 = a3;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 9) = 0;
    *(v4 + 10) = v5;
    *(v4 + 11) = 0;
    *(v4 + 12) = v4 + 88;
    *(v4 + 13) = 0;
    *(v4 + 8) = xmmword_185DE23C0;
    *(v4 + 14) = v4 + 104;
    *(v4 + 15) = 0;
    *(v4 + 16) = v4 + 120;
    mach_timebase_info(&info);
    *(v4 + 17) = 1000000000 * info.denom / info.numer;
    *(v4 + 40) = 0;
    *(v4 + 82) = 0;
    v6 = dispatch_queue_create("com.Metal.IOScratchBufferAllocatorCleanupQueue", 0);
    *(v4 + 18) = v6;
    v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v6);
    *(v4 + 19) = v7;
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3052000000;
    v10[3] = __Block_byref_object_copy__9;
    v10[4] = __Block_byref_object_dispose__9;
    v10[5] = v4;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47___MTLIOScratchBufferAllocator_initWithDevice___block_invoke;
    v9[3] = &unk_1E6EEB598;
    v9[4] = v10;
    dispatch_source_set_event_handler(v7, v9);
    _Block_object_dispose(v10, 8);
  }

  return v4;
}

- (void)dealloc
{
  pool_cleanup_queue = self->_pool_cleanup_queue;
  if (pool_cleanup_queue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39___MTLIOScratchBufferAllocator_dealloc__block_invoke;
    block[3] = &unk_1E6EEA858;
    block[4] = self;
    dispatch_sync(pool_cleanup_queue, block);
    dispatch_release(self->_pool_cleanup_queue);
  }

  pthread_mutex_destroy(&self->_pool_lock);
  tqh_first = self->_activeq.tqh_first;
  if (tqh_first)
  {
    do
    {
      var0 = tqh_first->var0.var0;
      var1 = tqh_first->var0.var1;
      p_var1 = &tqh_first->var0.var0->var0.var1;
      if (!tqh_first->var0.var0)
      {
        p_var1 = &self->_activeq.tqh_last;
      }

      *p_var1 = var1;
      *var1 = var0;

      free(tqh_first);
      tqh_first = var0;
    }

    while (var0);
  }

  v8 = self->_poolq.tqh_first;
  if (v8)
  {
    do
    {
      v10 = v8->var0.var0;
      v9 = v8->var0.var1;
      p_tqh_last = &v8->var0.var0->var0.var1;
      if (!v8->var0.var0)
      {
        p_tqh_last = &self->_poolq.tqh_last;
      }

      *p_tqh_last = v9;
      *v9 = v10;

      free(v8);
      v8 = v10;
    }

    while (v10);
  }

  v12 = self->_volatileq.tqh_first;
  if (v12)
  {
    do
    {
      v14 = v12->var0.var0;
      v13 = v12->var0.var1;
      v15 = &v12->var0.var0->var0.var1;
      if (!v12->var0.var0)
      {
        v15 = &self->_volatileq.tqh_last;
      }

      *v15 = v13;
      *v13 = v14;

      free(v12);
      v12 = v14;
    }

    while (v14);
  }

  v16.receiver = self;
  v16.super_class = _MTLIOScratchBufferAllocator;
  [(_MTLIOScratchBufferAllocator *)&v16 dealloc];
}

@end