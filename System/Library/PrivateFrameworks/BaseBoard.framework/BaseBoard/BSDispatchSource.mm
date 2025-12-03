@interface BSDispatchSource
- (uint64_t)initWithType:(uintptr_t)type handle:(uintptr_t)handle mask:(void *)mask queue:(void *)queue configureSourceBlock:;
- (void)dealloc;
- (void)invalidate;
- (void)resume;
@end

@implementation BSDispatchSource

- (void)resume
{
  if (self)
  {
    if (!*(self + 16))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_resume object:self file:@"BSDispatchSource.m" lineNumber:46 description:@"Cannot resume invalidated source"];
    }

    if (!*(self + 32))
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:sel_resume object:self file:@"BSDispatchSource.m" lineNumber:47 description:@"Resumed source has no event handler set"];
    }

    v2 = *(self + 8);
    v6 = v2 == MEMORY[0x1E69E96D8] || v2 == MEMORY[0x1E69E96E0] || v2 == MEMORY[0x1E69E9730] || v2 == MEMORY[0x1E69E96F8] || v2 == MEMORY[0x1E69E9728];
    if (v6 && !*(self + 40))
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:sel_resume object:self file:@"BSDispatchSource.m" lineNumber:51 description:@"Source of file descriptor or mach port type has no cancel handler set"];
    }

    v7 = 0;
    atomic_compare_exchange_strong_explicit((self + 24), &v7, 1u, memory_order_relaxed, memory_order_relaxed);
    if (!v7)
    {
      dispatch_source_set_event_handler(*(self + 16), *(self + 32));
      v8 = *(self + 32);
      *(self + 32) = 0;

      v9 = *(self + 40);
      if (v9)
      {
        dispatch_source_set_cancel_handler(*(self + 16), v9);
        v10 = *(self + 40);
        *(self + 40) = 0;
      }

      v11 = *(self + 16);

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSDispatchSource.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"BSAtomicGetFlag(&_invalidated)"}];
  }

  v6.receiver = self;
  v6.super_class = BSDispatchSource;
  [(BSDispatchSource *)&v6 dealloc];
}

- (uint64_t)initWithType:(uintptr_t)type handle:(uintptr_t)handle mask:(void *)mask queue:(void *)queue configureSourceBlock:
{
  maskCopy = mask;
  queueCopy = queue;
  if (self)
  {
    if (!maskCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_initWithType_handle_mask_queue_configureSourceBlock_ object:self file:@"BSDispatchSource.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
    }

    v13 = [self init];
    v14 = v13;
    if (v13)
    {
      *(v13 + 8) = a2;
      v15 = dispatch_source_create(a2, type, handle, maskCopy);
      v16 = *(v14 + 16);
      *(v14 + 16) = v15;

      *(v14 + 24) = 0;
      *(v14 + 28) = 0;
      if (queueCopy)
      {
        queueCopy[2](queueCopy, *(v14 + 16));
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