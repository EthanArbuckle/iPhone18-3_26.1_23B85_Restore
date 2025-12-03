@interface BSUIFeedTriggerBlockObserver
- (BSUIFeedTriggerBlockObserver)init;
- (void)addObserver:(id)observer forTrigger:(id)trigger inStateManager:(id)manager;
- (void)handleTrigger:(id)trigger didChangeState:(unint64_t)state updateEvent:(unint64_t)event;
- (void)removeObserver:(id)observer forTrigger:(id)trigger inStateManager:(id)manager;
@end

@implementation BSUIFeedTriggerBlockObserver

- (BSUIFeedTriggerBlockObserver)init
{
  v6.receiver = self;
  v6.super_class = BSUIFeedTriggerBlockObserver;
  v2 = [(BSUIFeedTriggerBlockObserver *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    observersByTrigger = v2->_observersByTrigger;
    v2->_observersByTrigger = v3;
  }

  return v2;
}

- (void)addObserver:(id)observer forTrigger:(id)trigger inStateManager:(id)manager
{
  observerCopy = observer;
  triggerCopy = trigger;
  managerCopy = manager;
  observersByTrigger = [(BSUIFeedTriggerBlockObserver *)self observersByTrigger];
  v11 = [observersByTrigger objectForKeyedSubscript:triggerCopy];

  if ([v11 count])
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [managerCopy addObserver:self forTrigger:triggerCopy];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v11 = +[NSMutableSet set];
LABEL_3:
  v12 = objc_retainBlock(observerCopy);
  [v11 addObject:v12];

  observersByTrigger2 = [(BSUIFeedTriggerBlockObserver *)self observersByTrigger];
  [observersByTrigger2 setObject:v11 forKeyedSubscript:triggerCopy];
}

- (void)removeObserver:(id)observer forTrigger:(id)trigger inStateManager:(id)manager
{
  triggerCopy = trigger;
  observerCopy = observer;
  observersByTrigger = [(BSUIFeedTriggerBlockObserver *)self observersByTrigger];
  v9 = [observersByTrigger objectForKeyedSubscript:triggerCopy];

  v10 = objc_retainBlock(observerCopy);
  [v9 removeObject:v10];

  v11 = [v9 count];
  observersByTrigger2 = [(BSUIFeedTriggerBlockObserver *)self observersByTrigger];
  v13 = observersByTrigger2;
  if (v11)
  {
    [observersByTrigger2 setObject:v9 forKeyedSubscript:triggerCopy];
  }

  else
  {
    [observersByTrigger2 removeObjectForKey:triggerCopy];
  }
}

- (void)handleTrigger:(id)trigger didChangeState:(unint64_t)state updateEvent:(unint64_t)event
{
  triggerCopy = trigger;
  observersByTrigger = [(BSUIFeedTriggerBlockObserver *)self observersByTrigger];
  v8 = [observersByTrigger objectForKeyedSubscript:triggerCopy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = objc_retainBlock(*(*(&v16 + 1) + 8 * v13));
        if (v14)
        {
          v15 = NSStringFromTUITriggerState();
          v14[2](v14, v15);
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }
}

@end