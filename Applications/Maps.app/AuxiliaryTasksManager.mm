@interface AuxiliaryTasksManager
- (AuxiliaryTasksManager)initWithPlatformController:(id)a3;
- (NSArray)tasks;
- (PlatformController)platformController;
- (RoutePlanningSessionRouteLoadedNotifier)routePlanningSessionRouteLoadedNotifier;
- (VehicleDisambiguationTask)vehicleDisambiguationTask;
- (id)auxilaryTaskForClass:(Class)a3;
- (void)addTasks:(id)a3;
@end

@implementation AuxiliaryTasksManager

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (VehicleDisambiguationTask)vehicleDisambiguationTask
{
  v3 = objc_opt_class();

  return [(AuxiliaryTasksManager *)self auxilaryTaskForClass:v3];
}

- (RoutePlanningSessionRouteLoadedNotifier)routePlanningSessionRouteLoadedNotifier
{
  v3 = objc_opt_class();

  return [(AuxiliaryTasksManager *)self auxilaryTaskForClass:v3];
}

- (id)auxilaryTaskForClass:(Class)a3
{
  v4 = [(AuxiliaryTasksManager *)self auxiliaryTasks];
  objc_sync_enter(v4);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(AuxiliaryTasksManager *)self auxiliaryTasks];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  objc_sync_exit(v4);

  return v10;
}

- (void)addTasks:(id)a3
{
  v4 = a3;
  v5 = [(AuxiliaryTasksManager *)self auxiliaryTasks];
  objc_sync_enter(v5);
  v6 = [(AuxiliaryTasksManager *)self auxiliaryTasks];
  [v6 addObjectsFromArray:v4];

  objc_sync_exit(v5);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [(AuxiliaryTasksManager *)self platformController];
        [v12 registerObserver:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 postNotificationName:@"AuxiliaryTasksManagerDidUpdateAuxiliaryTasksNotification" object:self];
}

- (NSArray)tasks
{
  v3 = [(AuxiliaryTasksManager *)self auxiliaryTasks];
  objc_sync_enter(v3);
  v4 = [(AuxiliaryTasksManager *)self auxiliaryTasks];
  v5 = [v4 copy];

  objc_sync_exit(v3);

  return v5;
}

- (AuxiliaryTasksManager)initWithPlatformController:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AuxiliaryTasksManager;
  v5 = [(AuxiliaryTasksManager *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_platformController, v4);
    v7 = +[NSMutableArray array];
    auxiliaryTasks = v6->_auxiliaryTasks;
    v6->_auxiliaryTasks = v7;
  }

  return v6;
}

@end