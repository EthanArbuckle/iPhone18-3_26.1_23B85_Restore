@interface MapsPowerSourceController
+ (MapsPowerSourceController)sharedController;
- (MapsPowerSourceController)init;
- (int64_t)chargingState;
- (void)_handleNotifyCallback;
- (void)_updateChargingState;
- (void)dealloc;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation MapsPowerSourceController

- (void)_handleNotifyCallback
{
  v3 = sub_10006A450();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 134349056;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Got update notification", &v4, 0xCu);
  }

  [(MapsPowerSourceController *)self _updateChargingState];
}

- (void)_updateChargingState
{
  v3 = sub_10006A450();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Updating charging state", buf, 0xCu);
  }

  v4 = IOPSCopyPowerSourcesByType();
  v5 = v4;
  if (!v4)
  {
    v22 = sub_10006A450();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = self;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[%{public}p] Could not copy power sources by type", buf, 0xCu);
    }

    isolationQueue = self->_isolationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100E71464;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_sync(isolationQueue, block);
    [(GEOObserverHashTable *)self->_powerSourceObservers powerSourceController:self didUpdateChargingState:0];
    return;
  }

  v6 = IOPSCopyPowerSourcesList(v4);
  if (!v6)
  {
    CFRelease(v5);
    v25 = sub_10006A450();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = self;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[%{public}p] Could not copy power sources list", buf, 0xCu);
    }

    v26 = self->_isolationQueue;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100E71470;
    v33[3] = &unk_101661B18;
    v33[4] = self;
    dispatch_sync(v26, v33);
    [(GEOObserverHashTable *)self->_powerSourceObservers powerSourceController:self didUpdateChargingState:0];
    return;
  }

  v7 = 0;
  v31 = 0;
  while (v7 < CFArrayGetCount(v6))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
    v9 = IOPSGetPowerSourceDescription(v5, ValueAtIndex);
    v10 = sub_10006A450();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349314;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[%{public}p] Checking power source: %@", buf, 0x16u);
    }

    v11 = [v9 objectForKey:@"Type"];
    if (([v11 isEqualToString:@"InternalBattery"] & 1) == 0)
    {
      v13 = sub_10006A450();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        *&buf[4] = self;
        v14 = v13;
        v15 = "[%{public}p] Power source is not internal; ignoring";
        goto LABEL_14;
      }

LABEL_15:

      goto LABEL_21;
    }

    v12 = [v9 objectForKey:@"Is Charging"];
    if ([v12 BOOLValue])
    {
    }

    else
    {
      v16 = [v9 objectForKey:@"Show Charging UI"];
      v17 = [v16 BOOLValue];

      if (!v17)
      {
        v13 = sub_10006A450();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          *&buf[4] = self;
          v14 = v13;
          v15 = "[%{public}p] Power source is not charging; ignoring";
LABEL_14:
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, v15, buf, 0xCu);
        }

        goto LABEL_15;
      }
    }

    v18 = IOPSCopyExternalPowerAdapterDetails();
    v19 = sub_10006A450();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349314;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "[%{public}p] Checking adapter details: %@", buf, 0x16u);
    }

    v20 = [(__CFDictionary *)v18 objectForKey:@"IsWireless"];
    v21 = [v20 BOOLValue];

    if (v21)
    {

      v24 = 3;
      goto LABEL_34;
    }

    v31 = 1;
LABEL_21:

    ++v7;
  }

  if (v31)
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

LABEL_34:
  CFRelease(v5);
  CFRelease(v6);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v42 = 0;
  v27 = self->_isolationQueue;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10006AB8C;
  v32[3] = &unk_10165E540;
  v32[4] = self;
  v32[5] = buf;
  v32[6] = v24;
  dispatch_sync(v27, v32);
  v28 = sub_10006A450();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    if (*(*&buf[8] + 24))
    {
      v29 = @"YES";
    }

    else
    {
      v29 = @"NO";
    }

    v30 = v29;
    *v35 = 134349570;
    v36 = self;
    v37 = 2048;
    v38 = v24;
    v39 = 2112;
    v40 = v30;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[%{public}p] Calculated charging state: %ld, didChange: %@", v35, 0x20u);
  }

  if (*(*&buf[8] + 24) == 1)
  {
    [(GEOObserverHashTable *)self->_powerSourceObservers powerSourceController:self didUpdateChargingState:v24];
  }

  _Block_object_dispose(buf, 8);
}

- (int64_t)chargingState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100E71528;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  v5 = sub_10006A450();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134349314;
    v7 = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Unregistering observer: %@", &v6, 0x16u);
  }

  [(GEOObserverHashTable *)self->_powerSourceObservers unregisterObserver:v4];
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v5 = sub_10006A450();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134349314;
    v7 = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Registering observer: %@", &v6, 0x16u);
  }

  [(GEOObserverHashTable *)self->_powerSourceObservers registerObserver:v4];
}

- (void)dealloc
{
  v3 = sub_10006A450();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  notify_cancel(self->_anyPowerSourceToken);
  v4.receiver = self;
  v4.super_class = MapsPowerSourceController;
  [(MapsPowerSourceController *)&v4 dealloc];
}

- (MapsPowerSourceController)init
{
  v28.receiver = self;
  v28.super_class = MapsPowerSourceController;
  v2 = [(MapsPowerSourceController *)&v28 init];
  if (v2)
  {
    v3 = sub_10006A450();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v30 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_UTILITY, 0);
    v6 = dispatch_queue_create("com.apple.Maps.MapsPowerSourceController.callback", v5);
    v7 = *(v2 + 2);
    *(v2 + 2) = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_UTILITY, 0);
    v10 = dispatch_queue_create("com.apple.Maps.MapsPowerSourceController.isolation", v9);
    v11 = *(v2 + 3);
    *(v2 + 3) = v10;

    v12 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___MapsPowerSourceObserver queue:*(v2 + 2)];
    v13 = *(v2 + 4);
    *(v2 + 4) = v12;

    objc_initWeak(&location, v2);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10006A410;
    v25[3] = &unk_101658C08;
    objc_copyWeak(&v26, &location);
    v14 = objc_retainBlock(v25);
    v15 = notify_register_dispatch("com.apple.system.powersources", v2 + 2, *(v2 + 2), v14);
    v16 = sub_10006A450();
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        v30 = v2;
        v18 = "[%{public}p] Failed to register for power source notifications";
        v19 = v17;
        v20 = OS_LOG_TYPE_ERROR;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v19, v20, v18, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v30 = v2;
      v18 = "[%{public}p] Successfully registered for power source notification";
      v19 = v17;
      v20 = OS_LOG_TYPE_INFO;
      goto LABEL_9;
    }

    v21 = *(v2 + 2);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100E71AF4;
    block[3] = &unk_101661B98;
    objc_copyWeak(&v24, &location);
    dispatch_async(v21, block);
    objc_destroyWeak(&v24);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v2;
}

+ (MapsPowerSourceController)sharedController
{
  if (qword_10195F3E0 != -1)
  {
    dispatch_once(&qword_10195F3E0, &stru_1016568A0);
  }

  v3 = qword_10195F3D8;

  return v3;
}

@end