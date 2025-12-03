@interface PedestrianARSessionStateManager
- (BOOL)shouldCreateMonitor:(Class)monitor;
- (NSString)debugDescription;
- (PedestrianARSessionStateManager)initWithPlatformController:(id)controller;
- (PlatformController)platformController;
- (id)allMonitors;
- (void)addObserver:(id)observer;
- (void)calculateState;
- (void)createEnabledMonitors;
- (void)createMonitorIfNecessary:(Class)necessary configurationBlock:(id)block;
- (void)dealloc;
- (void)listenForGEOConfigKeyChanges;
- (void)monitor:(id)monitor didChangeState:(BOOL)state;
- (void)removeDisabledMonitors;
- (void)removeObserver:(id)observer;
- (void)setShouldShowPedestrianAR:(BOOL)r;
- (void)valueChangedForGEOConfigKey:(id)key;
@end

@implementation PedestrianARSessionStateManager

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (void)valueChangedForGEOConfigKey:(id)key
{
  v4 = sub_1005FF7D0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] One of the monitors' enablement geo config key changed; updating monitors and global state", &v5, 0xCu);
  }

  [(PedestrianARSessionStateManager *)self setDidFinishCreatingMonitors:0];
  [(PedestrianARSessionStateManager *)self removeDisabledMonitors];
  [(PedestrianARSessionStateManager *)self createEnabledMonitors];
  [(PedestrianARSessionStateManager *)self calculateState];
}

- (void)monitor:(id)monitor didChangeState:(BOOL)state
{
  monitorCopy = monitor;
  v6 = sub_1005FF7D0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = 134349314;
    selfCopy = self;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] Monitor (%@) changed state; recalculating global state", &v9, 0x16u);
  }

  [(PedestrianARSessionStateManager *)self calculateState];
}

- (id)allMonitors
{
  monitors = [(PedestrianARSessionStateManager *)self monitors];
  v3 = [monitors copy];

  return v3;
}

- (NSString)debugDescription
{
  allMonitors = [(PedestrianARSessionStateManager *)self allMonitors];
  allObjects = [allMonitors allObjects];
  v5 = [allObjects sortedArrayUsingComparator:&stru_101623C20];

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  shouldShowPedestrianAR = [(PedestrianARSessionStateManager *)self shouldShowPedestrianAR];
  v9 = @"NO";
  if (shouldShowPedestrianAR)
  {
    v9 = @"YES";
  }

  v10 = v9;
  v11 = sub_100021DB0(v5, &stru_101623C60);
  v12 = [NSString stringWithFormat:@"<%@: %p\nshould show pedestrian AR: %@\nstate monitors: %@>", v7, self, v10, v11];

  return v12;
}

- (void)setShouldShowPedestrianAR:(BOOL)r
{
  if (self->_shouldShowPedestrianAR != r)
  {
    self->_shouldShowPedestrianAR = r;
    v4 = sub_1005FF7D0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      if (self->_shouldShowPedestrianAR)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v6 = v5;
      v8 = 134349314;
      selfCopy = self;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Updating global state: %@", &v8, 0x16u);
    }

    observers = [(PedestrianARSessionStateManager *)self observers];
    [observers stateManager:self didChangeState:self->_shouldShowPedestrianAR];
  }
}

- (void)calculateState
{
  if ([(PedestrianARSessionStateManager *)self didFinishCreatingMonitors])
  {
    v3 = sub_1005FF7D0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Calculating state", buf, 0xCu);
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    monitors = [(PedestrianARSessionStateManager *)self monitors];
    v5 = [monitors countByEnumeratingWithState:&v11 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(monitors);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if (([v9 shouldShowPedestrianAR] & 1) == 0)
          {
            v10 = sub_1005FF7D0();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              *buf = 134349314;
              selfCopy2 = self;
              v17 = 2112;
              v18 = v9;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] Monitor is requesting to disable the feature: %@", buf, 0x16u);
            }

            [(PedestrianARSessionStateManager *)self setShouldShowPedestrianAR:0];
            return;
          }
        }

        v6 = [monitors countByEnumeratingWithState:&v11 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    [(PedestrianARSessionStateManager *)self setShouldShowPedestrianAR:1];
  }
}

- (void)removeDisabledMonitors
{
  v3 = sub_1005FF7D0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Removing newly disabled monitors", buf, 0xCu);
  }

  v4 = +[NSMutableSet set];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  monitors = [(PedestrianARSessionStateManager *)self monitors];
  v6 = [monitors countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(monitors);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        if (([objc_opt_class() isEnabled] & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [monitors countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v7);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * j);
        v17 = sub_1005FF7D0();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 134349314;
          selfCopy2 = self;
          v30 = 2112;
          v31 = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}p] Removing newly disabled monitor: %@", buf, 0x16u);
        }

        classMonitorMap = [(PedestrianARSessionStateManager *)self classMonitorMap];
        [classMonitorMap removeObjectForKey:objc_opt_class()];

        monitors2 = [(PedestrianARSessionStateManager *)self monitors];
        [monitors2 removeObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v13);
  }
}

- (BOOL)shouldCreateMonitor:(Class)monitor
{
  if (([(objc_class *)monitor isEnabled]& 1) == 0)
  {
    v7 = sub_1005FF7D0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = NSStringFromClass(monitor);
      v14 = 134349314;
      selfCopy3 = self;
      v16 = 2112;
      v17 = v9;
      v10 = "[%{public}p] %@ is not enabled; should not create";
      goto LABEL_7;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  classMonitorMap = [(PedestrianARSessionStateManager *)self classMonitorMap];
  v6 = [classMonitorMap objectForKey:monitor];

  v7 = sub_1005FF7D0();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      v9 = NSStringFromClass(monitor);
      v14 = 134349314;
      selfCopy3 = self;
      v16 = 2112;
      v17 = v9;
      v10 = "[%{public}p] %@ already exists; should not create";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, v10, &v14, 0x16u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v8)
  {
    v13 = NSStringFromClass(monitor);
    v14 = 134349314;
    selfCopy3 = self;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] %@ should be created", &v14, 0x16u);
  }

  v11 = 1;
LABEL_9:

  return v11;
}

- (void)createMonitorIfNecessary:(Class)necessary configurationBlock:(id)block
{
  blockCopy = block;
  v7 = [(PedestrianARSessionStateManager *)self shouldCreateMonitor:necessary];
  v8 = sub_1005FF7D0();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = NSStringFromClass(necessary);
      v16 = 134349314;
      selfCopy3 = self;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}p] Creating monitor: %@", &v16, 0x16u);
    }

    v9 = blockCopy[2](blockCopy);
    monitors = [(PedestrianARSessionStateManager *)self monitors];
    [monitors addObject:v9];

    classMonitorMap = [(PedestrianARSessionStateManager *)self classMonitorMap];
    [classMonitorMap setObject:v9 forKey:necessary];

    v13 = sub_1005FF7D0();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v16 = 134349314;
    selfCopy3 = self;
    v18 = 2112;
    v19 = v9;
    v14 = "[%{public}p] Created monitor: %@";
    v15 = v13;
LABEL_8:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, v14, &v16, 0x16u);
LABEL_9:

    goto LABEL_10;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = NSStringFromClass(necessary);
    v16 = 134349314;
    selfCopy3 = self;
    v18 = 2112;
    v19 = v13;
    v14 = "[%{public}p] NOT creating monitor: %@";
    v15 = v9;
    goto LABEL_8;
  }

LABEL_10:
}

- (void)createEnabledMonitors
{
  v3 = sub_1005FF7D0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Creating newly enabled monitors", buf, 0xCu);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100600A78;
  v17[3] = &unk_101623C00;
  v17[4] = self;
  [(PedestrianARSessionStateManager *)self createMonitorIfNecessary:objc_opt_class() configurationBlock:v17];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100600B30;
  v16[3] = &unk_101623C00;
  v16[4] = self;
  [(PedestrianARSessionStateManager *)self createMonitorIfNecessary:objc_opt_class() configurationBlock:v16];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100600B74;
  v15[3] = &unk_101623C00;
  v15[4] = self;
  [(PedestrianARSessionStateManager *)self createMonitorIfNecessary:objc_opt_class() configurationBlock:v15];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100600BEC;
  v14[3] = &unk_101623C00;
  v14[4] = self;
  [(PedestrianARSessionStateManager *)self createMonitorIfNecessary:objc_opt_class() configurationBlock:v14];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100600C30;
  v13[3] = &unk_101623C00;
  v13[4] = self;
  [(PedestrianARSessionStateManager *)self createMonitorIfNecessary:objc_opt_class() configurationBlock:v13];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100600C74;
  v12[3] = &unk_101623C00;
  v12[4] = self;
  [(PedestrianARSessionStateManager *)self createMonitorIfNecessary:objc_opt_class() configurationBlock:v12];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100600CB8;
  v11[3] = &unk_101623C00;
  v11[4] = self;
  [(PedestrianARSessionStateManager *)self createMonitorIfNecessary:objc_opt_class() configurationBlock:v11];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100600D70;
  v10[3] = &unk_101623C00;
  v10[4] = self;
  [(PedestrianARSessionStateManager *)self createMonitorIfNecessary:objc_opt_class() configurationBlock:v10];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100600DE8;
  v9[3] = &unk_101623C00;
  v9[4] = self;
  [(PedestrianARSessionStateManager *)self createMonitorIfNecessary:objc_opt_class() configurationBlock:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100600E64;
  v8[3] = &unk_101623C00;
  v8[4] = self;
  [(PedestrianARSessionStateManager *)self createMonitorIfNecessary:objc_opt_class() configurationBlock:v8];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100600F3C;
  v7[3] = &unk_101623C00;
  v7[4] = self;
  [(PedestrianARSessionStateManager *)self createMonitorIfNecessary:objc_opt_class() configurationBlock:v7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100600FB4;
  v6[3] = &unk_101623C00;
  v6[4] = self;
  [(PedestrianARSessionStateManager *)self createMonitorIfNecessary:objc_opt_class() configurationBlock:v6];
  [(PedestrianARSessionStateManager *)self setDidFinishCreatingMonitors:1];
  v4 = sub_1005FF7D0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    monitors = [(PedestrianARSessionStateManager *)self monitors];
    *buf = 134349314;
    selfCopy2 = self;
    v20 = 2112;
    v21 = monitors;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Finished creating monitors: %@", buf, 0x16u);
  }
}

- (void)listenForGEOConfigKeyChanges
{
  +[PedestrianARSessionCarPlayConnectionMonitor enablementGEOConfigKey];
  _GEOConfigAddDelegateListenerForKey();
  +[PedestrianARSessionCoarseLocationMonitor enablementGEOConfigKey];
  _GEOConfigAddDelegateListenerForKey();

  +[PedestrianARSessionNetworkReachabilityMonitor enablementGEOConfigKey];
  _GEOConfigAddDelegateListenerForKey();

  +[PedestrianARSessionOfflineMonitor enablementGEOConfigKey];
  _GEOConfigAddDelegateListenerForKey();

  +[PedestrianARSessionThermalStateMonitor enablementGEOConfigKey];
  _GEOConfigAddDelegateListenerForKey();

  +[PedestrianARSessionTileAvailabilityMonitor enablementGEOConfigKey];
  _GEOConfigAddDelegateListenerForKey();

  +[PedestrianARSessionTransportTypeMonitor enablementGEOConfigKey];
  _GEOConfigAddDelegateListenerForKey();

  +[PedestrianARSessionSunsetSunriseMonitor enablementGEOConfigKey];
  _GEOConfigAddDelegateListenerForKey();
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v5 = sub_1005FF7D0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134349314;
      selfCopy = self;
      v9 = 2112;
      v10 = observerCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Removing observer: %@", &v7, 0x16u);
    }

    observers = [(PedestrianARSessionStateManager *)self observers];
    [observers unregisterObserver:observerCopy];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v5 = sub_1005FF7D0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134349314;
      selfCopy = self;
      v9 = 2112;
      v10 = observerCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Adding observer: %@", &v7, 0x16u);
    }

    observers = [(PedestrianARSessionStateManager *)self observers];
    [observers registerObserver:observerCopy];
  }
}

- (void)dealloc
{
  v3 = sub_1005FF7D0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Deallocing", buf, 0xCu);
  }

  GEOConfigRemoveDelegateListenerForAllKeys();
  v4.receiver = self;
  v4.super_class = PedestrianARSessionStateManager;
  [(PedestrianARSessionStateManager *)&v4 dealloc];
}

- (PedestrianARSessionStateManager)initWithPlatformController:(id)controller
{
  controllerCopy = controller;
  if (!controllerCopy)
  {
    v14 = sub_10006D178();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v19 = "[PedestrianARSessionStateManager initWithPlatformController:]";
      v20 = 2080;
      v21 = "PedestrianARSessionStateManager.m";
      v22 = 1024;
      v23 = 60;
      v24 = 2080;
      v25 = "platformController != nil";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v19 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v17.receiver = self;
  v17.super_class = PedestrianARSessionStateManager;
  v5 = [(PedestrianARSessionStateManager *)&v17 init];
  if (v5)
  {
    v6 = sub_1005FF7D0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing", buf, 0xCu);
    }

    objc_storeWeak(&v5->_platformController, controllerCopy);
    v7 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___PedestrianARSessionStateManagerDelegate queue:0];
    observers = v5->_observers;
    v5->_observers = v7;

    v9 = +[NSMutableSet set];
    monitors = v5->_monitors;
    v5->_monitors = v9;

    v11 = +[NSMapTable strongToWeakObjectsMapTable];
    classMonitorMap = v5->_classMonitorMap;
    v5->_classMonitorMap = v11;

    [(PedestrianARSessionStateManager *)v5 listenForGEOConfigKeyChanges];
    [(PedestrianARSessionStateManager *)v5 createEnabledMonitors];
    [(PedestrianARSessionStateManager *)v5 calculateState];
  }

  return v5;
}

@end