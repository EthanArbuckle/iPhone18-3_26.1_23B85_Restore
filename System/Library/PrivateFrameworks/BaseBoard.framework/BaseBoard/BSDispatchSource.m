@interface BSDispatchSource
- (uint64_t)initWithType:(uintptr_t)a3 handle:(uintptr_t)a4 mask:(void *)a5 queue:(void *)a6 configureSourceBlock:;
- (void)dealloc;
- (void)invalidate;
- (void)resume;
@end

@implementation BSDispatchSource

- (void)resume
{
  if (a1)
  {
    if (!*(a1 + 16))
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:sel_resume object:a1 file:@"BSDispatchSource.m" lineNumber:46 description:@"Cannot resume invalidated source"];
    }

    if (!*(a1 + 32))
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:sel_resume object:a1 file:@"BSDispatchSource.m" lineNumber:47 description:@"Resumed source has no event handler set"];
    }

    v2 = *(a1 + 8);
    v6 = v2 == MEMORY[0x1E69E96D8] || v2 == MEMORY[0x1E69E96E0] || v2 == MEMORY[0x1E69E9730] || v2 == MEMORY[0x1E69E96F8] || v2 == MEMORY[0x1E69E9728];
    if (v6 && !*(a1 + 40))
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:sel_resume object:a1 file:@"BSDispatchSource.m" lineNumber:51 description:@"Source of file descriptor or mach port type has no cancel handler set"];
    }

    v7 = 0;
    atomic_compare_exchange_strong_explicit((a1 + 24), &v7, 1u, memory_order_relaxed, memory_order_relaxed);
    if (!v7)
    {
      dispatch_source_set_event_handler(*(a1 + 16), *(a1 + 32));
      v8 = *(a1 + 32);
      *(a1 + 32) = 0;

      v9 = *(a1 + 40);
      if (v9)
      {
        dispatch_source_set_cancel_handler(*(a1 + 16), v9);
        v10 = *(a1 + 40);
        *(a1 + 40) = 0;
      }

      v11 = *(a1 + 16);

      dispatch_activate(v11);
    }
  }
}

- (void)invalidate
{
  v2 = 0;
  atomic_compare_exchange_strong_explicit(&self->_invalidated, &v2, 1u, memory_order_relaxed, memory_order_relaxed);
  if (!v2)
  {
    source = self->_source;
    if (source)
    {
      dispatch_activate(source);
      dispatch_source_cancel(self->_source);
      v5 = self->_source;
      self->_source = 0;
    }
  }
}

- (void)dealloc
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(&self->_invalidated, &v3, v3, memory_order_relaxed, memory_order_relaxed);
  if (v3 != 1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"BSDispatchSource.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"BSAtomicGetFlag(&_invalidated)"}];
  }

  v6.receiver = self;
  v6.super_class = BSDispatchSource;
  [(BSDispatchSource *)&v6 dealloc];
}

- (uint64_t)initWithType:(uintptr_t)a3 handle:(uintptr_t)a4 mask:(void *)a5 queue:(void *)a6 configureSourceBlock:
{
  v11 = a5;
  v12 = a6;
  if (a1)
  {
    if (!v11)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:sel_initWithType_handle_mask_queue_configureSourceBlock_ object:a1 file:@"BSDispatchSource.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
    }

    v13 = [a1 init];
    v14 = v13;
    if (v13)
    {
      *(v13 + 8) = a2;
      v15 = dispatch_source_create(a2, a3, a4, v11);
      v16 = *(v14 + 16);
      *(v14 + 16) = v15;

      *(v14 + 24) = 0;
      *(v14 + 28) = 0;
      if (v12)
      {
        v12[2](v12, *(v14 + 16));
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end