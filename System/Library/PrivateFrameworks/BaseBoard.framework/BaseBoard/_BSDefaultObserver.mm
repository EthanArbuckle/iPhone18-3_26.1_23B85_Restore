@interface _BSDefaultObserver
- (id)initWithAbstractDefaultDomain:(void *)domain defaultsToObserve:(void *)observe onQueue:(void *)queue withBlock:;
- (void)dealloc;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation _BSDefaultObserver

- (void)invalidate
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_invalidated)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = self->_defaultsToObserve;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = *v10;
      do
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = [(BSAbstractDefaultDomain *)self->_defaults _defaultKeyFromPropertyName:?];
          _store = [(BSAbstractDefaultDomain *)self->_defaults _store];
          [_store removeObserver:self forKeyPath:v7];

          ++v6;
        }

        while (v4 != v6);
        v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }

    [(BSAbstractDefaultDomain *)self->_defaults _removeObserver:?];
    self->_invalidated = 1;
  }
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_BSDefaultObserver.m" lineNumber:56 description:@"We must be explicitly invalidated in order to be deallocated."];
  }

  v5.receiver = self;
  v5.super_class = _BSDefaultObserver;
  [(_BSDefaultObserver *)&v5 dealloc];
}

- (id)initWithAbstractDefaultDomain:(void *)domain defaultsToObserve:(void *)observe onQueue:(void *)queue withBlock:
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = a2;
  domainCopy = domain;
  observeCopy = observe;
  queueCopy = queue;
  v29 = v10;
  if (!self)
  {
    v15 = 0;
    goto LABEL_16;
  }

  if (v10)
  {
    if (observeCopy)
    {
      goto LABEL_4;
    }

LABEL_18:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_initWithAbstractDefaultDomain_defaultsToObserve_onQueue_withBlock_ object:self file:@"_BSDefaultObserver.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

    if (queueCopy)
    {
      goto LABEL_5;
    }

LABEL_19:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel_initWithAbstractDefaultDomain_defaultsToObserve_onQueue_withBlock_ object:self file:@"_BSDefaultObserver.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    goto LABEL_5;
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:sel_initWithAbstractDefaultDomain_defaultsToObserve_onQueue_withBlock_ object:self file:@"_BSDefaultObserver.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"defaultDomain", 0}];

  if (!observeCopy)
  {
    goto LABEL_18;
  }

LABEL_4:
  if (!queueCopy)
  {
    goto LABEL_19;
  }

LABEL_5:
  if (![domainCopy count])
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:sel_initWithAbstractDefaultDomain_defaultsToObserve_onQueue_withBlock_ object:self file:@"_BSDefaultObserver.m" lineNumber:36 description:@"Must have at least one default to observe."];
  }

  v34.receiver = self;
  v34.super_class = _BSDefaultObserver;
  v14 = objc_msgSendSuper2(&v34, sel_init);
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(v14 + 1, a2);
    objc_storeStrong(v15 + 2, observe);
    v16 = [queueCopy copy];
    v17 = v15[4];
    v15[4] = v16;

    objc_storeStrong(v15 + 3, domain);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = v15[3];
    v19 = [v18 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v19)
    {
      v20 = *v31;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = [(BSAbstractDefaultDomain *)v15[1] _defaultKeyFromPropertyName:?];
          _store = [v15[1] _store];
          [_store addObserver:v15 forKeyPath:v22 options:1 context:0];
        }

        v19 = [v18 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v19);
    }

    [(BSAbstractDefaultDomain *)v15[1] _addObserver:v15];
  }

LABEL_16:

  return v15;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v7 = atomic_fetch_add_explicit(&self->_debounceCounter, 1u, memory_order_relaxed) + 1;
  v8 = dispatch_time(0, 100000000);
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69___BSDefaultObserver_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v10[3] = &unk_1E72CB978;
  v11 = v7;
  v10[4] = self;
  dispatch_after(v8, queue, v10);
}

@end