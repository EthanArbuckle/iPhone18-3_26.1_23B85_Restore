@interface BSEventQueue
- (BOOL)hasEventWithName:(id)a3;
- (BOOL)hasEventWithPrefix:(id)a3;
- (BSEventQueue)init;
- (BSEventQueue)initWithName:(id)a3 onQueue:(id)a4;
- (NSArray)pendingEvents;
- (id)acquireLockForReason:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_addEventQueueLock:(id *)a1;
- (void)_processNextEvent;
- (void)_removeEventQueueLock:(id *)a1;
- (void)cancelEventsWithName:(id)a3;
- (void)executeOrInsertEvent:(id)a3 atPosition:(int)a4;
- (void)executeOrInsertEvents:(id)a3 atPosition:(int)a4;
- (void)flushAllEvents;
- (void)flushEvents:(id)a3;
- (void)flushPendingEvents;
- (void)relinquishLock:(id)a3;
@end

@implementation BSEventQueue

- (void)_processNextEvent
{
  if (a1 && (*(a1 + 24) & 1) == 0)
  {
    v3 = (a1 + 48);
    v2 = *(a1 + 48);
    *(a1 + 24) = 1;
    if (!v2)
    {
      do
      {
        if ([*(a1 + 8) count] || !objc_msgSend(*(a1 + 16), "count"))
        {
          break;
        }

        v4 = [*(a1 + 16) objectAtIndex:0];
        if (v4)
        {
          objc_storeStrong((a1 + 48), v4);
          v5 = [a1 acquireLockForReason:@"ExecutingEvent"];
          [*(a1 + 16) removeObjectAtIndex:0];
          [a1 _noteWillExecuteEvent:v4];
          v6 = v4[1];
          if (v6)
          {
            (*(v6 + 16))();
          }

          [a1 relinquishLock:v5];
          v7 = *(a1 + 48);
          *(a1 + 48) = 0;

          if (![*(a1 + 16) count])
          {
            [a1 _noteQueueDidDrain];
          }
        }
      }

      while (!*v3);
    }

    *(a1 + 24) = 0;
  }
}

- (BSEventQueue)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"BSEventQueue.m" lineNumber:25 description:@"wrong initializer"];

  return self;
}

- (BSEventQueue)initWithName:(id)a3 onQueue:(id)a4
{
  v14.receiver = self;
  v14.super_class = BSEventQueue;
  v6 = [(BSEventQueue *)&v14 init];
  if (v6)
  {
    v7 = [a3 copy];
    name = v6->_name;
    v6->_name = v7;

    objc_storeStrong(&v6->_queue, a4);
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    eventQueue = v6->_eventQueue;
    v6->_eventQueue = v9;

    v11 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    eventQueueLocks = v6->_eventQueueLocks;
    v6->_eventQueueLocks = v11;
  }

  return v6;
}

- (void)executeOrInsertEvent:(id)a3 atPosition:(int)a4
{
  v4 = *&a4;
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = a3;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [(BSEventQueue *)self executeOrInsertEvents:v6 atPosition:v4];
}

- (void)executeOrInsertEvents:(id)a3 atPosition:(int)a4
{
  v28 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = *&a4;
    if (![a3 count])
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:sel__executeOrPendEvents_position_ object:self file:@"BSEventQueue.m" lineNumber:50 description:@"Must have something to execute"];
    }

    v7 = [MEMORY[0x1E695DF70] array];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = a3;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v9)
    {
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          if ([(BSEventQueue *)self _shouldProcessEvent:v12 enqueuedDuringExecutionOfEvent:self->_executingEvent])
          {
            [v7 addObject:v12];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v9);
    }

    [(BSEventQueue *)self _noteWillPendEvents:v7 atPosition:v4];
    if (v4 == 1)
    {
      [(NSMutableArray *)self->_eventQueue addObjectsFromArray:v7];
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v13 = [v7 reverseObjectEnumerator];
      v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v14)
      {
        v15 = *v19;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v19 != v15)
            {
              objc_enumerationMutation(v13);
            }

            [(NSMutableArray *)self->_eventQueue insertObject:*(*(&v18 + 1) + 8 * j) atIndex:0];
          }

          v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
        }

        while (v14);
      }
    }

    [(BSEventQueue *)self _processNextEvent];
  }
}

- (id)acquireLockForReason:(id)a3
{
  v3 = [[BSEventQueueLock alloc] initWithEventQueue:self reason:a3];

  return v3;
}

- (void)relinquishLock:(id)a3
{
  if (a3)
  {
    v6 = *(a3 + 3);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7 != self)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"BSEventQueue.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"[lock eventQueue] == self"}];
  }

  [a3 relinquish];
}

- (NSArray)pendingEvents
{
  v2 = [(NSMutableArray *)self->_eventQueue copy];

  return v2;
}

- (void)flushEvents:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if ([a3 count])
  {
    v14 = [(BSEventQueue *)self acquireLockForReason:@"FlushEvents"];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = a3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v6)
    {
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [(NSMutableArray *)self->_eventQueue indexOfObjectIdenticalTo:v9];
          if (v10 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v11 = BSLogCommon();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v13 = [(BSEventQueue *)self succinctDescription];
              *buf = 138543618;
              v20 = v13;
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

        v6 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
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
      v3 = [(NSMutableArray *)self->_eventQueue firstObject];
      if (v3)
      {
        [(NSMutableArray *)self->_eventQueue removeObjectAtIndex:0];
        [(BSEventQueue *)self _noteWillExecuteEvent:v3];
        v4 = v3[1];
        if (v4)
        {
          (*(v4 + 16))();
        }
      }
    }

    [v5 relinquish];
  }
}

- (void)cancelEventsWithName:(id)a3
{
  if ([(NSMutableArray *)self->_eventQueue count])
  {
    eventQueue = self->_eventQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__BSEventQueue_cancelEventsWithName___block_invoke;
    v7[3] = &unk_1E72CB498;
    v7[4] = a3;
    v6 = [(NSMutableArray *)eventQueue indexesOfObjectsPassingTest:v7];
    if ([v6 count])
    {
      -[BSEventQueue _noteWillCancelEventsWithName:count:](self, "_noteWillCancelEventsWithName:count:", a3, [v6 count]);
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

- (BOOL)hasEventWithPrefix:(id)a3
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

        v8 = [*(*(&v12 + 1) + 8 * i) name];
        v9 = [v8 hasPrefix:a3];

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

- (BOOL)hasEventWithName:(id)a3
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

        v8 = [*(*(&v12 + 1) + 8 * i) name];
        v9 = [v8 isEqualToString:a3];

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

- (void)_addEventQueueLock:(id *)a1
{
  if (a1)
  {
    v4 = [a1 queue];
    BSDispatchQueueAssert(v4);

    if (a2)
    {
      if (([a1[1] containsObject:a2] & 1) == 0)
      {
        [a1[1] addObject:a2];
        if ([a1[1] count] == 1)
        {

          [a1 _noteQueueDidLock];
        }
      }
    }
  }
}

- (void)_removeEventQueueLock:(id *)a1
{
  if (a1)
  {
    v4 = [a1 queue];
    BSDispatchQueueAssert(v4);

    if (a2)
    {
      [a1[1] removeObject:a2];
      if (![a1[1] count])
      {
        [a1 _noteQueueDidUnlock];
      }

      [(BSEventQueue *)a1 _processNextEvent];
    }
  }
}

- (id)succinctDescription
{
  v2 = [(BSEventQueue *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendObject:self->_name withName:0 skipIfNil:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BSEventQueue *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v5 = [(BSEventQueue *)self succinctDescriptionBuilder];
  if ([(NSHashTable *)self->_eventQueueLocks count]|| [(NSMutableArray *)self->_eventQueue count]|| self->_executingEvent)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__BSEventQueue_descriptionBuilderWithMultilinePrefix___block_invoke;
    v9[3] = &unk_1E72CACC0;
    v10 = v5;
    v11 = self;
    [v10 appendBodySectionWithName:0 multilinePrefix:a3 block:v9];
  }

  else
  {
    v7 = [v5 appendObject:@"(none)" withName:@"locks"];
    v8 = [v5 appendObject:@"(none)" withName:@"pending events"];
  }

  return v5;
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