@interface MapsThermalPressureController
+ (MapsThermalPressureController)sharedController;
+ (NSDictionary)mitigations;
- (BOOL)shouldActivateMitigationNamed:(id)a3;
- (MapsThermalPressureController)init;
- (id)_observersOfMitigationNamed:(id)a3;
- (int)currentThermalPressureLevel;
- (void)_handleNotifyCallback;
- (void)_updateAllObservers;
- (void)_updateObserversOfMitigationNamed:(id)a3;
- (void)addObserver:(id)a3 forMitigationNamed:(id)a4;
- (void)addThermalPressureObserver:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeObserver:(id)a3 forMitigationNamed:(id)a4;
- (void)removeThermalPressureObserver:(id)a3;
- (void)valueChangedForGEOConfigKey:(id)a3;
@end

@implementation MapsThermalPressureController

+ (MapsThermalPressureController)sharedController
{
  if (qword_10195EF68 != -1)
  {
    dispatch_once(&qword_10195EF68, &stru_101650F10);
  }

  v3 = qword_10195EF60;

  return v3;
}

- (MapsThermalPressureController)init
{
  v27.receiver = self;
  v27.super_class = MapsThermalPressureController;
  v2 = [(MapsThermalPressureController *)&v27 init];
  if (!v2)
  {
    return v2;
  }

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.Maps.MapsThermalPressureController.isolation", v3);
  v5 = *(v2 + 5);
  *(v2 + 5) = v4;

  v6 = objc_opt_new();
  v7 = *(v2 + 1);
  *(v2 + 1) = v6;

  v8 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___ThermalPressureObserver queue:*(v2 + 5)];
  v9 = *(v2 + 2);
  *(v2 + 2) = v8;

  objc_initWeak(&location, v2);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100CFAFD4;
  v24[3] = &unk_101658C08;
  objc_copyWeak(&v25, &location);
  handler = objc_retainBlock(v24);
  if (notify_register_dispatch(kOSThermalNotificationPressureLevelName, v2 + 7, *(v2 + 5), handler))
  {
    v10 = sub_100009038();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to register for thermal pressure notifications", buf, 2u);
    }
  }

  else
  {
    if (!notify_get_state(*(v2 + 7), v2 + 4))
    {
      *(v2 + 24) = 1;
      goto LABEL_11;
    }

    v10 = sub_100009038();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to initialize thermal pressure state", buf, 2u);
    }
  }

LABEL_11:
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [objc_opt_class() mitigations];
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v12)
  {
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        if ([v15 isEqualToString:@"NavigationDisableLockScreen"])
        {
          _GEOConfigAddDelegateListenerForKey();
        }

        else
        {
          v16 = +[NSUserDefaults standardUserDefaults];
          [v16 addObserver:v2 forKeyPath:v15 options:0 context:&off_101650F50];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v19 objects:v28 count:16];
    }

    while (v12);
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
  return v2;
}

+ (NSDictionary)mitigations
{
  if (qword_10195EF78 != -1)
  {
    dispatch_once(&qword_10195EF78, &stru_101650F30);
  }

  v3 = qword_10195EF70;

  return v3;
}

- (void)valueChangedForGEOConfigKey:(id)a3
{
  if (a3.var0 == 666 && a3.var1 == &unk_101643E58)
  {
    v8 = v3;
    v9 = v4;
    v6 = sub_100009038();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Mitigation changed: NavigationDisableLockScreen", v7, 2u);
    }

    [(MapsThermalPressureController *)self _updateObserversOfMitigationNamed:@"NavigationDisableLockScreen"];
  }
}

- (void)_updateAllObservers
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_mitigationObservers;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(MapsThermalPressureController *)self _observersOfMitigationNamed:v8, v10];
        [v9 didUpdateMitigationNamed:v8];
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(GEOObserverHashTable *)self->_thermalPressureObservers didUpdateThermalPressureLevel:LODWORD(self->_currentThermalPressureLevel)];
}

- (void)_updateObserversOfMitigationNamed:(id)a3
{
  v4 = a3;
  v5 = [(MapsThermalPressureController *)self _observersOfMitigationNamed:v4];
  [v5 didUpdateMitigationNamed:v4];
}

- (void)_handleNotifyCallback
{
  state = notify_get_state(self->_token, &self->_currentThermalPressureLevel);
  v4 = sub_100009038();
  v5 = v4;
  if (state)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to retrieve thermal pressure level", &v7, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      currentThermalPressureLevel = self->_currentThermalPressureLevel;
      v7 = 134217984;
      v8 = currentThermalPressureLevel;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Updated _currentThermalPressureLevel to %llu", &v7, 0xCu);
    }

    [(MapsThermalPressureController *)self _updateAllObservers];
  }
}

- (id)_observersOfMitigationNamed:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_mitigationObservers objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___ThermalPressureObserver queue:self->_isolationQueue];
    [(NSMutableDictionary *)self->_mitigationObservers setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

- (BOOL)shouldActivateMitigationNamed:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_notifyInitialized)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    isolationQueue = self->_isolationQueue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v15 = sub_100CFA24C;
    v16 = &unk_101660778;
    v18 = self;
    v19 = &v20;
    v17 = v4;
    v7 = isolationQueue;
    v8 = v14;
    label = dispatch_queue_get_label(v7);
    v10 = dispatch_queue_get_label(0);
    if (label == v10 || label && v10 && !strcmp(label, v10))
    {
      v12 = objc_autoreleasePoolPush();
      v15(v8);
      objc_autoreleasePoolPop(v12);
    }

    else
    {
      dispatch_sync(v7, v8);
    }

    v11 = *(v21 + 24);
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 == &off_101650F50 && ([objc_opt_class() mitigations], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "allKeys"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "containsObject:", v10), v14, v13, v15))
  {
    objc_initWeak(&location, self);
    isolationQueue = self->_isolationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100CFA514;
    block[3] = &unk_101661340;
    v19 = v10;
    objc_copyWeak(&v20, &location);
    dispatch_async(isolationQueue, block);
    objc_destroyWeak(&v20);

    objc_destroyWeak(&location);
  }

  else
  {
    v17.receiver = self;
    v17.super_class = MapsThermalPressureController;
    [(MapsThermalPressureController *)&v17 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)removeThermalPressureObserver:(id)a3
{
  v4 = a3;
  isolationQueue = self->_isolationQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v14 = sub_100CFA6EC;
  v15 = &unk_101661A90;
  v6 = v4;
  v16 = v6;
  v17 = self;
  v7 = isolationQueue;
  v8 = v13;
  label = dispatch_queue_get_label(v7);
  v10 = dispatch_queue_get_label(0);
  if (label == v10 || (label ? (v11 = v10 == 0) : (v11 = 1), !v11 && !strcmp(label, v10)))
  {
    v12 = objc_autoreleasePoolPush();
    v14(v8);
    objc_autoreleasePoolPop(v12);
  }

  else
  {
    dispatch_sync(v7, v8);
  }
}

- (void)addThermalPressureObserver:(id)a3
{
  v4 = a3;
  isolationQueue = self->_isolationQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v14 = sub_100CFA8B8;
  v15 = &unk_101661A90;
  v6 = v4;
  v16 = v6;
  v17 = self;
  v7 = isolationQueue;
  v8 = v13;
  label = dispatch_queue_get_label(v7);
  v10 = dispatch_queue_get_label(0);
  if (label == v10 || (label ? (v11 = v10 == 0) : (v11 = 1), !v11 && !strcmp(label, v10)))
  {
    v12 = objc_autoreleasePoolPush();
    v14(v8);
    objc_autoreleasePoolPop(v12);
  }

  else
  {
    dispatch_sync(v7, v8);
  }
}

- (void)removeObserver:(id)a3 forMitigationNamed:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100CFAA58;
  v11[3] = &unk_101661480;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  objc_copyWeak(&v14, &location);
  dispatch_async(isolationQueue, v11);
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);
}

- (void)addObserver:(id)a3 forMitigationNamed:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100CFAC2C;
  v11[3] = &unk_101661480;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  objc_copyWeak(&v14, &location);
  dispatch_async(isolationQueue, v11);
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);
}

- (int)currentThermalPressureLevel
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  isolationQueue = self->_isolationQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v11 = sub_100CFAE4C;
  v12 = &unk_101661600;
  v13 = self;
  v14 = &v15;
  v3 = isolationQueue;
  v4 = v10;
  label = dispatch_queue_get_label(v3);
  v6 = dispatch_queue_get_label(0);
  if (label == v6 || label && v6 && !strcmp(label, v6))
  {
    v7 = objc_autoreleasePoolPush();
    v11(v4);
    objc_autoreleasePoolPop(v7);
  }

  else
  {
    dispatch_sync(v3, v4);
  }

  v8 = *(v16 + 6);
  _Block_object_dispose(&v15, 8);
  return v8;
}

- (void)dealloc
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [objc_opt_class() mitigations];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (([v8 isEqualToString:@"NavigationDisableLockScreen"] & 1) == 0)
        {
          v9 = +[NSUserDefaults standardUserDefaults];
          [v9 removeObserver:self forKeyPath:v8 context:&off_101650F50];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  GEOConfigRemoveDelegateListenerForAllKeys();
  notify_cancel(self->_token);
  v10.receiver = self;
  v10.super_class = MapsThermalPressureController;
  [(MapsThermalPressureController *)&v10 dealloc];
}

@end