@interface BSEventQueue
- (BOOL)hasEventWithName:(id)name;
- (BOOL)hasEventWithPrefix:(id)prefix;
- (BSEventQueue)init;
- (BSEventQueue)initWithName:(id)name onQueue:(id)queue;
- (NSArray)pendingEvents;
- (id)acquireLockForReason:(id)reason;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_addEventQueueLock:(id *)lock;
- (void)_processNextEvent;
- (void)_removeEventQueueLock:(id *)lock;
- (void)cancelEventsWithName:(id)name;
- (void)executeOrInsertEvent:(id)event atPosition:(int)position;
- (void)executeOrInsertEvents:(id)events atPosition:(int)position;
- (void)flushAllEvents;
- (void)flushEvents:(id)events;
- (void)flushPendingEvents;
- (void)relinquishLock:(id)lock;
@end

@implementation BSEventQueue

- (void)_processNextEvent
{
  if (self && (*(self + 24) & 1) == 0)
  {
    v3 = (self + 48);
    v2 = *(self + 48);
    *(self + 24) = 1;
    if (!v2)
    {
      do
      {
        if ([*(self + 8) count] || !objc_msgSend(*(self + 16), "count"))
        {
          break;
        }

        v4 = [*(self + 16) objectAtIndex:0];
        if (v4)
        {
          objc_storeStrong((self + 48), v4);
          v5 = [self acquireLockForReason:@"ExecutingEvent"];
          [*(self + 16) removeObjectAtIndex:0];
          [self _noteWillExecuteEvent:v4];
          v6 = v4[1];
          if (v6)
          {
            (*(v6 + 16))();
          }

          [self relinquishLock:v5];
          v7 = *(self + 48);
          *(self + 48) = 0;

          if (![*(self + 16) count])
          {
            [self _noteQueueDidDrain];
          }
        }
      }

      while (!*v3);
    }

    *(self + 24) = 0;
  }
}

- (BSEventQueue)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"BSEventQueue.m" lineNumber:25 description:@"wrong initializer"];

  return self;
}

- (BSEventQueue)initWithName:(id)name onQueue:(id)queue
{
  v14.receiver = self;
  v14.super_class = BSEventQueue;
  v6 = [(BSEventQueue *)&v14 init];
  if (v6)
  {
    v7 = [name copy];
    name = v6->_name;
    v6->_name = v7;

    objc_storeStrong(&v6->_queue, queue);
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    eventQueue = v6->_eventQueue;
    v6->_eventQueue = v9;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    eventQueueLocks = v6->_eventQueueLocks;
    v6->_eventQueueLocks = weakObjectsHashTable;
  }

  return v6;
}

- (void)executeOrInsertEvent:(id)event atPosition:(int)position
{
  v4 = *&position;
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = event;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [(BSEventQueue *)self executeOrInsertEvents:v6 atPosition:v4];
}

- (void)executeOrInsertEvents:(id)events atPosition:(int)position
{
  v28 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = *&position;
    if (![events count])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__executeOrPendEvents_position_ object:self file:@"BSEventQueue.m" lineNumber:50 description:@"Must have something to execute"];
    }

    array = [MEMORY[0x1E695DF70] array];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    eventsCopy = events;
    v9 = [eventsCopy countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v9)
    {
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(eventsCopy);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          if ([(BSEventQueue *)self _shouldProcessEvent:v12 enqueuedDuringExecutionOfEvent:self->_executingEvent])
          {
            [array addObject:v12];
          }
        }

        v9 = [eventsCopy countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v9);
    }

    [(BSEventQueue *)self _noteWillPendEvents:array atPosition:v4];
    if (v4 == 1)
    {
      [(NSMutableArray *)self->_eventQueue addObjectsFromArray:array];
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      reverseObjectEnumerator = [array reverseObjectEnumerator];
      v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v14)
      {
        v15 = *v19;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v19 != v15)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            [(NSMutableArray *)self->_eventQueue insertObject:*(*(&v18 + 1) + 8 * j) atIndex:0];
          }

          v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v18 objects:v26 count:16];
        }

        while (v14);
      }
    }

    [(BSEventQueue *)self _processNextEvent];
  }
}

- (id)acquireLockForReason:(id)reason
{
  v3 = [[BSEventQueueLock alloc] initWithEventQueue:self reason:reason];

  return v3;
}

- (void)relinquishLock:(id)lock
{
  if (lock)
  {
    v6 = *(lock + 3);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7 != self)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSEventQueue.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"[lock eventQueue] == self"}];
  }

  [lock relinquish];
}

- (NSArray)pendingEvents
{
  v2 = [(NSMutableArray *)self->_eventQueue copy];

  return v2;
}

- (void)flushEvents:(id)events
{
  v24 = *MEMORY[0x1E69E9840];
  if ([events count])
  {
    v14 = [(BSEventQueue *)self acquireLockForReason:@"FlushEvents"];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    eventsCopy = events;
    v6 = [eventsCopy countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v6)
    {
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(eventsCopy);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [(NSMutableArray *)self->_eventQueue indexOfObjectIdenticalTo:v9];
          if (v10 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v11 = BSLogCommon();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              succinctDescription = [(BSEventQueue *)self succinctDescription];
              *buf = 138543618;
              v20 = succinctDescription;
              v21 = 2114;
              v22 = v9;
              _os_log_error_impl(&dword_18FEF6000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Provided event is not a member. Ignoring: %{public}@", buf, 0x16u);
            }
          }

          else
          {
            [(NSMutableArray *)self->_eventQueue removeObjectAtIndex:v10];
            [(BSEventQueue *)self _noteWillExecuteEvent:v9];
            if (v9)
            {
              v12 = *(v9 + 8);
              if (v12)
              {
                (*(v12 + 16))();
              }
            }
          }
        }

        v6 = [eventsCopy countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v6);
    }

    [v14 relinquish];
  }
}

- (void)flushPendingEvents
{
  v3 = [(NSMutableArray *)self->_eventQueue copy];
  [(BSEventQueue *)self flushEvents:?];
}

- (void)flushAllEvents
{
  if ([(NSMutableArray *)self->_eventQueue count])
  {
    v5 = [(BSEventQueue *)self acquireLockForReason:@"FlushAllEvents"];
    while ([(NSMutableArray *)self->_eventQueue count])
    {
      firstObject = [(NSMutableArray *)self->_eventQueue firstObject];
      if (firstObject)
      {
        [(NSMutableArray *)self->_eventQueue removeObjectAtIndex:0];
        [(BSEventQueue *)self _noteWillExecuteEvent:firstObject];
        v4 = firstObject[1];
        if (v4)
        {
          (*(v4 + 16))();
        }
      }
    }

    [v5 relinquish];
  }
}

- (void)cancelEventsWithName:(id)name
{
  if ([(NSMutableArray *)self->_eventQueue count])
  {
    eventQueue = self->_eventQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__BSEventQueue_cancelEventsWithName___block_invoke;
    v7[3] = &unk_1E72CB498;
    v7[4] = name;
    v6 = [(NSMutableArray *)eventQueue indexesOfObjectsPassingTest:v7];
    if ([v6 count])
    {
      -[BSEventQueue _noteWillCancelEventsWithName:count:](self, "_noteWillCancelEventsWithName:count:", name, [v6 count]);
      [(NSMutableArray *)self->_eventQueue removeObjectsAtIndexes:v6];
    }
  }
}

uint64_t __37__BSEventQueue_cancelEventsWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (BOOL)hasEventWithPrefix:(id)prefix
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_eventQueue;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        name = [*(*(&v12 + 1) + 8 * i) name];
        v9 = [name hasPrefix:prefix];

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)hasEventWithName:(id)name
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_eventQueue;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        name = [*(*(&v12 + 1) + 8 * i) name];
        v9 = [name isEqualToString:name];

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)_addEventQueueLock:(id *)lock
{
  if (lock)
  {
    queue = [lock queue];
    BSDispatchQueueAssert(queue);

    if (a2)
    {
      if (([lock[1] containsObject:a2] & 1) == 0)
      {
        [lock[1] addObject:a2];
        if ([lock[1] count] == 1)
        {

          [lock _noteQueueDidLock];
        }
      }
    }
  }
}

- (void)_removeEventQueueLock:(id *)lock
{
  if (lock)
  {
    queue = [lock queue];
    BSDispatchQueueAssert(queue);

    if (a2)
    {
      [lock[1] removeObject:a2];
      if (![lock[1] count])
      {
        [lock _noteQueueDidUnlock];
      }

      [(BSEventQueue *)lock _processNextEvent];
    }
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BSEventQueue *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendObject:self->_name withName:0 skipIfNil:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BSEventQueue *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(BSEventQueue *)self succinctDescriptionBuilder];
  if ([(NSHashTable *)self->_eventQueueLocks count]|| [(NSMutableArray *)self->_eventQueue count]|| self->_executingEvent)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__BSEventQueue_descriptionBuilderWithMultilinePrefix___block_invoke;
    v9[3] = &unk_1E72CACC0;
    v10 = succinctDescriptionBuilder;
    selfCopy = self;
    [v10 appendBodySectionWithName:0 multilinePrefix:prefix block:v9];
  }

  else
  {
    v7 = [succinctDescriptionBuilder appendObject:@"(none)" withName:@"locks"];
    v8 = [succinctDescriptionBuilder appendObject:@"(none)" withName:@"pending events"];
  }

  return succinctDescriptionBuilder;
}

void __54__BSEventQueue_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 48) withName:@"executingEvent"];
  [*(a1 + 32) appendArraySection:*(*(a1 + 40) + 16) withName:@"queued events" skipIfEmpty:1];
  v3 = *(a1 + 32);
  v4 = [*(*(a1 + 40) + 8) allObjects];
  [v3 appendArraySection:? withName:? skipIfEmpty:?];
}

@end