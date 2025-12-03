@interface QLPXObservable
- (QLPXObservable)init;
- (void)_applyPendingChanges;
- (void)_didChange;
- (void)_observersQueue_copyChangeObserversForWriteIfNeeded;
- (void)_publishChanges;
- (void)_willChange;
- (void)enumerateObserversUsingBlock:(id)block;
- (void)performChanges:(id)changes;
- (void)registerChangeObserver:(id)observer context:(void *)context;
- (void)unregisterChangeObserver:(id)observer context:(void *)context;
@end

@implementation QLPXObservable

- (QLPXObservable)init
{
  v6.receiver = self;
  v6.super_class = QLPXObservable;
  v2 = [(QLPXObservable *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.photosuicore.observable.internal-queue", 0);
    observersQueue = v2->_observersQueue;
    v2->_observersQueue = v3;

    v2->_currentChange = 0;
  }

  return v2;
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  v12 = changesCopy;
  if (self->_isEnumeratingObservers)
  {
    pendingChangeBlocks = self->_pendingChangeBlocks;
    if (pendingChangeBlocks)
    {
      v6 = [changesCopy copy];
      [(NSMutableArray *)pendingChangeBlocks addObject:v6];
    }

    else
    {
      v8 = MEMORY[0x277CBEB18];
      v9 = [changesCopy copy];
      v10 = [v8 arrayWithObject:v9];
      v11 = self->_pendingChangeBlocks;
      self->_pendingChangeBlocks = v10;
    }
  }

  else
  {
    [(QLPXObservable *)self _willChange];
    mutableChangeObject = [(QLPXObservable *)self mutableChangeObject];
    v12[2](v12, mutableChangeObject);

    [(QLPXObservable *)self _didChange];
  }
}

- (void)registerChangeObserver:(id)observer context:(void *)context
{
  observerCopy = observer;
  observersQueue = self->_observersQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__QLPXObservable_registerChangeObserver_context___block_invoke;
  block[3] = &unk_278B57480;
  block[4] = self;
  v10 = observerCopy;
  contextCopy = context;
  v8 = observerCopy;
  dispatch_sync(observersQueue, block);
}

void __49__QLPXObservable_registerChangeObserver_context___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _observersQueue_copyChangeObserversForWriteIfNeeded];
  v2 = [*(*(a1 + 32) + 64) objectForKey:*(a1 + 40)];
  if (v2)
  {
    __49__QLPXObservable_registerChangeObserver_context___block_invoke_cold_1(v2, a1, &v8);
    v6 = v8;
  }

  else
  {
    if (!*(*(a1 + 32) + 64))
    {
      v3 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
      v4 = *(a1 + 32);
      v5 = *(v4 + 64);
      *(v4 + 64) = v3;
    }

    v7 = [objc_alloc(MEMORY[0x277CCAC18]) initWithOptions:256];
    [v7 addPointer:*(a1 + 48)];
    [*(*(a1 + 32) + 64) setObject:v7 forKey:*(a1 + 40)];
    v6 = v7;
  }
}

- (void)unregisterChangeObserver:(id)observer context:(void *)context
{
  observerCopy = observer;
  observersQueue = self->_observersQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__QLPXObservable_unregisterChangeObserver_context___block_invoke;
  block[3] = &unk_278B57480;
  block[4] = self;
  v10 = observerCopy;
  contextCopy = context;
  v8 = observerCopy;
  dispatch_sync(observersQueue, block);
}

- (void)enumerateObserversUsingBlock:(id)block
{
  v31 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  isEnumeratingObservers = self->_isEnumeratingObservers;
  self->_isEnumeratingObservers = 1;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  observersQueue = self->_observersQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__QLPXObservable_enumerateObserversUsingBlock___block_invoke;
  block[3] = &unk_278B576A0;
  block[4] = self;
  block[5] = &v24;
  dispatch_sync(observersQueue, block);
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  keyEnumerator = [v25[5] keyEnumerator];
  v7 = [keyEnumerator countByEnumeratingWithState:&v18 objects:v30 count:16];
  if (v7)
  {
    v8 = *v19;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(keyEnumerator);
      }

      v10 = *(*(&v18 + 1) + 8 * v9);
      v11 = [v25[5] objectForKey:v10];
      v12 = 0;
      while (v12 < [v11 count])
      {
        blockCopy[2](blockCopy, v10, [v11 pointerAtIndex:v12++], &v22);
        if (v22 == 1)
        {

          goto LABEL_13;
        }
      }

      v13 = v22;

      if (v13)
      {
        break;
      }

      if (++v9 == v7)
      {
        v7 = [keyEnumerator countByEnumeratingWithState:&v18 objects:v30 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

LABEL_13:

  v14 = self->_observersQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __47__QLPXObservable_enumerateObserversUsingBlock___block_invoke_2;
  v17[3] = &unk_278B57190;
  v17[4] = self;
  dispatch_sync(v14, v17);
  self->_isEnumeratingObservers = isEnumeratingObservers;
  _Block_object_dispose(&v24, 8);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_willChange
{
  nestedChanges = self->_nestedChanges;
  if (!nestedChanges)
  {
    [(QLPXObservable *)self willPerformChanges];
    nestedChanges = self->_nestedChanges;
  }

  self->_nestedChanges = nestedChanges + 1;
}

- (void)_didChange
{
  nestedChanges = self->_nestedChanges;
  if (nestedChanges == 1)
  {
    [(QLPXObservable *)self didPerformChanges];
    nestedChanges = self->_nestedChanges;
  }

  v4 = nestedChanges - 1;
  self->_nestedChanges = v4;
  if (!v4)
  {
    if (self->_currentChange)
    {
      [(QLPXObservable *)self _publishChanges];
      [(QLPXObservable *)self didPublishChanges];
      self->_currentChange = 0;
    }

    [(QLPXObservable *)self _applyPendingChanges];
  }
}

- (void)_publishChanges
{
  currentChange = self->_currentChange;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __33__QLPXObservable__publishChanges__block_invoke;
  v3[3] = &unk_278B576C8;
  v3[4] = self;
  v3[5] = currentChange;
  [(QLPXObservable *)self enumerateObserversUsingBlock:v3];
}

- (void)_applyPendingChanges
{
  pendingChangeBlocks = self->_pendingChangeBlocks;
  numAppliedPendingChanges = self->_numAppliedPendingChanges;
  self->_numAppliedPendingChanges = numAppliedPendingChanges + 1;
  if (pendingChangeBlocks)
  {
    v5 = pendingChangeBlocks;
    v6 = self->_pendingChangeBlocks;
    self->_pendingChangeBlocks = 0;

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __38__QLPXObservable__applyPendingChanges__block_invoke;
    v8[3] = &unk_278B576F0;
    v9 = v5;
    v7 = v5;
    [(QLPXObservable *)self performChanges:v8];

    numAppliedPendingChanges = self->_numAppliedPendingChanges - 1;
  }

  self->_numAppliedPendingChanges = numAppliedPendingChanges;
}

void __38__QLPXObservable__applyPendingChanges__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8) + 16))(*(*(&v10 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_observersQueue_copyChangeObserversForWriteIfNeeded
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_observersQueue_shouldCopyChangeObserversOnWrite)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    keyEnumerator = [(NSMapTable *)self->_observersQueue_changeObserversWithContexts keyEnumerator];
    v5 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [(NSMapTable *)self->_observersQueue_changeObserversWithContexts objectForKey:v9];
          v11 = [v10 copy];

          [(NSMapTable *)weakToStrongObjectsMapTable setObject:v11 forKey:v9];
        }

        v6 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    observersQueue_changeObserversWithContexts = self->_observersQueue_changeObserversWithContexts;
    self->_observersQueue_changeObserversWithContexts = weakToStrongObjectsMapTable;

    self->_observersQueue_shouldCopyChangeObserversOnWrite = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __51__QLPXObservable_unregisterChangeObserver_context___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _observersQueue_copyChangeObserversForWriteIfNeeded];
  v7 = [*(*(a1 + 32) + 64) objectForKey:*(a1 + 40)];
  v2 = [v7 count];
  v3 = v7;
  if (v2)
  {
    v4 = v2;
    v5 = 0;
    while ([v3 pointerAtIndex:v5] != *(a1 + 48))
    {
      ++v5;
      v3 = v7;
      if (v4 == v5)
      {
        goto LABEL_7;
      }
    }

    [v7 removePointerAtIndex:v5];
    v3 = v7;
  }

LABEL_7:
  if (v3 && ![v3 count])
  {
    [*(*(a1 + 32) + 64) removeObjectForKey:*(a1 + 40)];
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __49__QLPXObservable_registerChangeObserver_context___block_invoke_cold_1(void *a1, uint64_t a2, void *a3)
{
  v6 = [a1 count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    while (1)
    {
      result = [a1 pointerAtIndex:v8];
      v10 = *(a2 + 48);
      if (result == v10)
      {
        break;
      }

      if (v7 == ++v8)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v10 = *(a2 + 48);
LABEL_7:
    result = [a1 addPointer:v10];
  }

  *a3 = a1;
  return result;
}

@end