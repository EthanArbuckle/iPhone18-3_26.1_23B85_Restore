@interface AXRedirectedEventDetector
- (AXRedirectedEventDetector)init;
- (BOOL)isRedirectedEvent:(id)event;
- (double)_elapsedTimeFrom:(unint64_t)from to:(unint64_t)to;
- (void)_flushEventsIfNecessary;
- (void)addEvent:(id)event;
@end

@implementation AXRedirectedEventDetector

- (AXRedirectedEventDetector)init
{
  v10.receiver = self;
  v10.super_class = AXRedirectedEventDetector;
  v2 = [(AXRedirectedEventDetector *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("AXRedirectedEventDetector", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    recentEvents = v2->_recentEvents;
    v2->_recentEvents = v5;

    v7 = [objc_alloc(MEMORY[0x1E6988780]) initWithTargetSerialQueue:v2->_queue];
    flushEventsTimer = v2->_flushEventsTimer;
    v2->_flushEventsTimer = v7;

    [(AXDispatchTimer *)v2->_flushEventsTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  return v2;
}

- (void)_flushEventsIfNecessary
{
  if (AXNeedsEventFlush == 1)
  {
    recentEvents = [(AXRedirectedEventDetector *)self recentEvents];
    [recentEvents removeAllObjects];

    AXNeedsEventFlush = 0;
  }
}

- (void)addEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __38__AXRedirectedEventDetector_addEvent___block_invoke;
    v7[3] = &unk_1E71EA128;
    v7[4] = self;
    v8 = eventCopy;
    dispatch_sync(queue, v7);
  }
}

void __38__AXRedirectedEventDetector_addEvent___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _flushEventsIfNecessary];
  v2 = [*(a1 + 32) recentEvents];
  [v2 addObject:*(a1 + 40)];

  objc_initWeak(&location, *(a1 + 32));
  v3 = [*(a1 + 32) flushEventsTimer];
  v4 = *&AXFlushEventsTimerDelay;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__AXRedirectedEventDetector_addEvent___block_invoke_2;
  v5[3] = &unk_1E71EA778;
  objc_copyWeak(&v6, &location);
  [v3 afterDelay:v5 processBlock:0 cancelBlock:v4];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __38__AXRedirectedEventDetector_addEvent___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained recentEvents];
  [v1 removeAllObjects];
}

- (BOOL)isRedirectedEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__AXRedirectedEventDetector_isRedirectedEvent___block_invoke;
    block[3] = &unk_1E71EA7A0;
    block[4] = self;
    v10 = eventCopy;
    v11 = &v12;
    dispatch_sync(queue, block);
    v7 = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void __47__AXRedirectedEventDetector_isRedirectedEvent___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _flushEventsIfNecessary];
  v2 = [*(a1 + 40) type];
  v3 = [*(a1 + 40) clientId];
  v4 = [*(a1 + 40) HIDTime];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [*(a1 + 32) recentEvents];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        [*(a1 + 32) _elapsedTimeFrom:objc_msgSend(v10 to:{"HIDTime"), v4}];
        v12 = v11;
        if ([v10 type] == v2)
        {
          v13 = [v10 clientId];
          v14 = [v13 isEqualToString:v3];

          if ((v14 & 1) == 0 && v12 < 0.5)
          {
            *(*(*(a1 + 48) + 8) + 24) = 1;
            goto LABEL_13;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (double)_elapsedTimeFrom:(unint64_t)from to:(unint64_t)to
{
  v6 = dword_1EA9B8AB0;
  if (!dword_1EA9B8AB0)
  {
    mach_timebase_info(&_elapsedTimeFrom_to___TimebaseInfo);
    v6 = dword_1EA9B8AB0;
  }

  return ((to - from) * _elapsedTimeFrom_to___TimebaseInfo / v6) / 1000000000.0;
}

@end