@interface BSUIFeedTriggerBlockObserver
- (BSUIFeedTriggerBlockObserver)init;
- (void)addObserver:(id)a3 forTrigger:(id)a4 inStateManager:(id)a5;
- (void)handleTrigger:(id)a3 didChangeState:(unint64_t)a4 updateEvent:(unint64_t)a5;
- (void)removeObserver:(id)a3 forTrigger:(id)a4 inStateManager:(id)a5;
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

- (void)addObserver:(id)a3 forTrigger:(id)a4 inStateManager:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(BSUIFeedTriggerBlockObserver *)self observersByTrigger];
  v11 = [v10 objectForKeyedSubscript:v8];

  if ([v11 count])
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [v9 addObserver:self forTrigger:v8];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v11 = +[NSMutableSet set];
LABEL_3:
  v12 = objc_retainBlock(v14);
  [v11 addObject:v12];

  v13 = [(BSUIFeedTriggerBlockObserver *)self observersByTrigger];
  [v13 setObject:v11 forKeyedSubscript:v8];
}

- (void)removeObserver:(id)a3 forTrigger:(id)a4 inStateManager:(id)a5
{
  v14 = a4;
  v7 = a3;
  v8 = [(BSUIFeedTriggerBlockObserver *)self observersByTrigger];
  v9 = [v8 objectForKeyedSubscript:v14];

  v10 = objc_retainBlock(v7);
  [v9 removeObject:v10];

  v11 = [v9 count];
  v12 = [(BSUIFeedTriggerBlockObserver *)self observersByTrigger];
  v13 = v12;
  if (v11)
  {
    [v12 setObject:v9 forKeyedSubscript:v14];
  }

  else
  {
    [v12 removeObjectForKey:v14];
  }
}

- (void)handleTrigger:(id)a3 didChangeState:(unint64_t)a4 updateEvent:(unint64_t)a5
{
  v6 = a3;
  v7 = [(BSUIFeedTriggerBlockObserver *)self observersByTrigger];
  v8 = [v7 objectForKeyedSubscript:v6];

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