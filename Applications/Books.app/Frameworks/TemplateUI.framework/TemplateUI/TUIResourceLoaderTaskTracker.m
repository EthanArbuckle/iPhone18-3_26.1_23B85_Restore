@interface TUIResourceLoaderTaskTracker
- (BOOL)stopTrackingController:(id)a3;
- (TUIResourceLoaderTaskTracker)init;
- (void)_updateTaskWithHighestRequestedPriority;
- (void)updatePriorty:(float)a3 forController:(id)a4;
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
  v3 = [(NSMutableDictionary *)self->_controllerPriorities allValues];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        [v9 floatValue];
        if (v10 > v7)
        {
          [v9 floatValue];
          v7 = v11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)updatePriorty:(float)a3 forController:(id)a4
{
  controllerPriorities = self->_controllerPriorities;
  v7 = a4;
  *&v8 = a3;
  v9 = [NSNumber numberWithFloat:v8];
  [(NSMutableDictionary *)controllerPriorities setObject:v9 forKey:v7];

  [(TUIResourceLoaderTaskTracker *)self _updateTaskWithHighestRequestedPriority];
}

- (BOOL)stopTrackingController:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_controllerPriorities objectForKey:v4];

  if (v5)
  {
    [(NSMutableDictionary *)self->_controllerPriorities removeObjectForKey:v4];
    v6 = [(NSMutableDictionary *)self->_controllerPriorities allKeys];
    v7 = [v6 count];

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