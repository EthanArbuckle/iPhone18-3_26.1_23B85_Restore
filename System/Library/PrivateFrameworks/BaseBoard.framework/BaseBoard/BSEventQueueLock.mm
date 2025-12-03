@interface BSEventQueueLock
- (BSEventQueueLock)initWithEventQueue:(id)queue reason:(id)reason;
- (id)description;
- (void)dealloc;
- (void)relinquish;
@end

@implementation BSEventQueueLock

- (void)relinquish
{
  if (!self->_relinquished)
  {
    self->_relinquished = 1;
    [(BSEventQueue *)&self->_eventQueue->super.isa _removeEventQueueLock:?];
  }
}

- (void)dealloc
{
  [(BSEventQueueLock *)self relinquish];
  v3.receiver = self;
  v3.super_class = BSEventQueueLock;
  [(BSEventQueueLock *)&v3 dealloc];
}

- (BSEventQueueLock)initWithEventQueue:(id)queue reason:(id)reason
{
  if (reason)
  {
    if (queue)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSEventQueueLock.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"reason"}];

    if (queue)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"BSEventQueueLock.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"eventQueue"}];

LABEL_3:
  v15.receiver = self;
  v15.super_class = BSEventQueueLock;
  v8 = [(BSEventQueueLock *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_eventQueue, queue);
    [(BSEventQueue *)&v9->_eventQueue->super.isa _addEventQueueLock:v9];
    v10 = [reason copy];
    reason = v9->_reason;
    v9->_reason = v10;
  }

  return v9;
}

- (id)description
{
  reason = [(BSEventQueueLock *)self reason];
  v4 = [BSDescriptionBuilder descriptionForObject:self withObjectsAndNames:reason, @"reason", 0];

  return v4;
}

@end