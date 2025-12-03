@interface TUIResourceLoaderTaskTracker
- (BOOL)stopTrackingController:(id)controller;
- (TUIResourceLoaderTaskTracker)init;
- (void)_updateTaskWithHighestRequestedPriority;
- (void)updatePriorty:(float)priorty forController:(id)controller;
@end

@implementation TUIResourceLoaderTaskTracker

- (TUIResourceLoaderTaskTracker)init
{
  v6.receiver = self;
  v6.super_class = TUIResourceLoaderTaskTracker;
  v2 = [(TUIResourceLoaderTaskTracker *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    controllerPriorities = v2->_controllerPriorities;
    v2->_controllerPriorities = v3;
  }

  return v2;
}

- (void)_updateTaskWithHighestRequestedPriority
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allValues = [(NSMutableDictionary *)self->_controllerPriorities allValues];
  v4 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        [v9 floatValue];
        if (v10 > v7)
        {
          [v9 floatValue];
          v7 = v11;
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
    v12 = v7;
  }

  else
  {
    v12 = 0.0;
  }

  [(TUIResourceLoaderTask *)self->_resourceLoaderTask setPriority:v12];
}

- (void)updatePriorty:(float)priorty forController:(id)controller
{
  controllerPriorities = self->_controllerPriorities;
  controllerCopy = controller;
  *&v8 = priorty;
  v9 = [NSNumber numberWithFloat:v8];
  [(NSMutableDictionary *)controllerPriorities setObject:v9 forKey:controllerCopy];

  [(TUIResourceLoaderTaskTracker *)self _updateTaskWithHighestRequestedPriority];
}

- (BOOL)stopTrackingController:(id)controller
{
  controllerCopy = controller;
  v5 = [(NSMutableDictionary *)self->_controllerPriorities objectForKey:controllerCopy];

  if (v5)
  {
    [(NSMutableDictionary *)self->_controllerPriorities removeObjectForKey:controllerCopy];
    allKeys = [(NSMutableDictionary *)self->_controllerPriorities allKeys];
    v7 = [allKeys count];

    if (!v7)
    {
      [(TUIResourceLoaderTask *)self->_resourceLoaderTask cancel];
      v8 = 1;
      goto LABEL_6;
    }

    [(TUIResourceLoaderTaskTracker *)self _updateTaskWithHighestRequestedPriority];
  }

  v8 = 0;
LABEL_6:

  return v8;
}

@end