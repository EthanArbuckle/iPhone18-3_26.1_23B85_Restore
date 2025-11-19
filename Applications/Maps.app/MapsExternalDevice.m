@interface MapsExternalDevice
+ (id)_destinationHandoffErrorWithReason:(int64_t)a3;
+ (id)_localizedReasonForHandoffError:(int64_t)a3;
+ (id)_stringRepresentationOfDictionary:(id)a3;
+ (id)sharedInstance;
+ (void)_presentActivityControllerForDestination:(id)a3 completion:(id)a4;
+ (void)_presentActivityControllerForDestination:(id)a3 searchResult:(id)a4 dictionary:(id)a5 completion:(id)a6;
+ (void)initialize;
- (BOOL)_checkScreenOwnershipIfNeeded:(id)a3;
- (BOOL)_destinationHandoffTestingEnabled;
- (BOOL)_isCarPlaySessionActive;
- (BOOL)_isCurrentStateEqualLastPostedState;
- (BOOL)destinationHandoffEnabled;
- (BOOL)externalAccessoryIsNavigating;
- (BOOL)isConnected;
- (MapsExternalDevice)init;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)_handleIOHIDEvent:(__IOHIDEvent *)a3;
- (void)_postNotificationIfNeeded;
- (void)_registerForAVNotifications;
- (void)_setupCarCluster;
- (void)_unregisterForAVNotifications;
- (void)_updateStateForRecievedNotification:(id)a3;
- (void)borrowScreenIfNeededForReason:(id)a3;
- (void)checkForActiveCarPlayConnection;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
- (void)handoffDestination:(id)a3 completion:(id)a4;
- (void)navigation:(id)a3 accessoryAttached:(id)a4;
- (void)navigation:(id)a3 accessoryDetached:(id)a4;
- (void)navigation:(id)a3 startRouteGuidance:(id)a4 componentList:(id)a5;
- (void)navigation:(id)a3 stopRouteGuidance:(id)a4 componentList:(id)a5;
- (void)navigationOwnershipChangedToOwner:(unint64_t)a3;
- (void)presentConfirmationAlertFrom:(id)a3 completion:(id)a4;
- (void)relinquishScreenIfNeeded;
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
- (void)setCarPlayIsNavigating:(BOOL)a3;
- (void)setCurrentState:(id)a3;
- (void)setExternalDevice:(id)a3;
- (void)setRouteGuidanceBeingShownInApp:(BOOL)a3;
- (void)startMonitoringIOHIDRepeatCurrentGuidance;
- (void)stopMonitoringIOHIDRepeatCurrentGuidance;
@end

@implementation MapsExternalDevice

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    [v2 registerDefaults:&off_1016EE498];
  }
}

+ (id)sharedInstance
{
  if (qword_10195DB30 != -1)
  {
    dispatch_once(&qword_10195DB30, &stru_10162CE08);
  }

  v3 = qword_10195DB28;

  return v3;
}

- (MapsExternalDevice)init
{
  v19.receiver = self;
  v19.super_class = MapsExternalDevice;
  v2 = [(MapsExternalDevice *)&v19 init];
  if (!v2)
  {
LABEL_15:
    v17 = 0;
    goto LABEL_16;
  }

  v3 = +[CarDisplayController isCarPlayAvailable];
  v4 = sub_100896688();
  v5 = v4;
  if ((v3 & 1) == 0)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v21 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%{public}p] CarPlay is not available; will not initialize", buf, 0xCu);
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v21 = v2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Initiailzing", buf, 0xCu);
  }

  v2->_initialising = 1;
  screenBorrowToken = v2->_screenBorrowToken;
  v2->_screenBorrowToken = 0;

  v7 = objc_alloc_init(CARSessionStatus);
  carSessionStatus = v2->_carSessionStatus;
  v2->_carSessionStatus = v7;

  if ((GEOConfigGetBOOL() & 1) == 0)
  {
    v9 = [CARNavigationOwnershipManager alloc];
    v10 = +[NSBundle mainBundle];
    v11 = [v10 bundleIdentifier];
    v12 = [v9 initWithIdentifier:v11 delegate:v2];
    navigationOwnershipManager = v2->_navigationOwnershipManager;
    v2->_navigationOwnershipManager = v12;
  }

  if ([(MapsExternalDevice *)v2 _isCarPlaySessionActive])
  {
    v14 = sub_100896688();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v21 = v2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}p] external accessory already connected, fetch current AVExternalDevice", buf, 0xCu);
    }

    v15 = +[MapsCarPlayExternalDeviceMonitor sharedInstance];
    v16 = [v15 carPlayExternalDevice];
    [(MapsExternalDevice *)v2 setExternalDevice:v16];
  }

  [(CARSessionStatus *)v2->_carSessionStatus addSessionObserver:v2];
  [(MapsExternalDevice *)v2 _setupCarCluster];
  v2->_initialising = 0;
  v17 = v2;
LABEL_16:

  return v17;
}

- (BOOL)_isCarPlaySessionActive
{
  v2 = [(CARSessionStatus *)self->_carSessionStatus currentSession];
  v3 = v2 != 0;

  return v3;
}

- (void)_setupCarCluster
{
  if (GEOConfigGetBOOL())
  {
    v3 = objc_opt_new();
    metadataUpdater = self->_metadataUpdater;
    self->_metadataUpdater = v3;
  }

  else
  {
    v5 = [[ACCNavigationProvider alloc] initWithDelegate:self];
    [(MapsExternalDevice *)self setNavigationProvider:v5];

    v6 = +[NSMapTable strongToStrongObjectsMapTable];
    [(MapsExternalDevice *)self setNavigationAccessories:v6];

    v7 = [NSNumber numberWithBool:0];
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v8 objectForKey:@"CarInstrumentClusterDebugNavigationAccessory"];

    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    v11 = v10;

    v12 = [v11 BOOLValue];
    if (v12)
    {
      v13 = [ACCNavigationAccessory alloc];
      v14 = [(MapsExternalDevice *)self navigationProvider];
      v15 = [v13 initWithAccessoryUID:@"1124" provider:v14];

      v16 = objc_opt_new();
      [v16 setMaxCapacity_GuidanceManeuver:4];
      [v16 setIdentifier:713];
      v17 = [(MapsExternalDevice *)self navigationProvider];
      v19 = v16;
      v18 = [NSArray arrayWithObjects:&v19 count:1];
      [(MapsExternalDevice *)self navigation:v17 startRouteGuidance:v15 componentList:v18];
    }
  }
}

- (BOOL)isConnected
{
  v2 = [(MapsExternalDevice *)self externalDevice];
  v3 = v2 != 0;

  return v3;
}

- (void)_postNotificationIfNeeded
{
  if (self->_initialising)
  {
    v3 = sub_100896688();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v17 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] suppressing notification while initialising MapsExternalDevice", buf, 0xCu);
    }

    v4 = [(MapsExternalDevice *)self currentState];
    v5 = [v4 copy];
    [(MapsExternalDevice *)self setLastPostedState:v5];
  }

  else
  {
    v6 = &_dispatch_main_q;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v13 = sub_10006AF74;
    v14 = &unk_101661B18;
    v15 = self;
    v7 = &_dispatch_main_q;
    v8 = v12;
    label = dispatch_queue_get_label(&_dispatch_main_q);
    v10 = dispatch_queue_get_label(0);
    if (label == v10 || label && v10 && !strcmp(label, v10))
    {
      v11 = objc_autoreleasePoolPush();
      v13(v8);
      objc_autoreleasePoolPop(v11);
    }

    else
    {
      dispatch_sync(&_dispatch_main_q, v8);
    }
  }
}

- (BOOL)_isCurrentStateEqualLastPostedState
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v10 = sub_10006D178();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = 136316418;
        v14 = "[MapsExternalDevice _isCurrentStateEqualLastPostedState]";
        v15 = 2080;
        v16 = "MapsExternalDevice.m";
        v17 = 1024;
        v18 = 575;
        v19 = 2080;
        v20 = "dispatch_get_main_queue()";
        v21 = 2080;
        v22 = dispatch_queue_get_label(&_dispatch_main_q);
        v23 = 2080;
        v24 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v13, 0x3Au);
      }

      if (sub_100E03634())
      {
        v11 = sub_10006D178();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = +[NSThread callStackSymbols];
          v13 = 138412290;
          v14 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", &v13, 0xCu);
        }
      }
    }
  }

  v6 = [(MapsExternalDevice *)self lastPostedState];
  v7 = [(MapsExternalDevice *)self currentState];
  if (v6 | v7)
  {
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)presentConfirmationAlertFrom:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_1001126E8(v8, sub_1000D2CB0, v7);
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v6.receiver = self;
  v6.super_class = MapsExternalDevice;
  v4 = [(MapsExternalDevice *)&v6 methodSignatureForSelector:?];
  if (!v4)
  {
    v4 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
    if (!v4)
    {
      v4 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
    }
  }

  return v4;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() instancesRespondToSelector:{objc_msgSend(v4, "selector")}])
  {
    v5 = [(MapsExternalDevice *)self currentState];
  }

  else
  {
    if (![objc_opt_class() instancesRespondToSelector:{objc_msgSend(v4, "selector")}])
    {
      v7.receiver = self;
      v7.super_class = MapsExternalDevice;
      [(MapsExternalDevice *)&v7 forwardInvocation:v4];
      goto LABEL_7;
    }

    v5 = +[MapsExternalAccessory sharedInstance];
  }

  v6 = v5;
  [v4 invokeWithTarget:v5];

LABEL_7:
}

- (void)navigation:(id)a3 stopRouteGuidance:(id)a4 componentList:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_100896688();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134349570;
    v23 = self;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] StopRouteGuidance accessory=%@ components=%@", buf, 0x20u);
  }

  v10 = [(MapsExternalDevice *)self navigationAccessories];
  v11 = [v10 objectForKey:v7];

  if (v8)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [v11 removeObjectForKey:{*(*(&v17 + 1) + 8 * v16), v17}];
          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }
  }

  else
  {
    [v11 removeAllObjects];
  }
}

- (void)navigation:(id)a3 startRouteGuidance:(id)a4 componentList:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_100896688();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134349570;
    v43 = self;
    v44 = 2112;
    v45 = v7;
    v46 = 2112;
    v47 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] StartRouteGuidance accessory=%@ components=%@", buf, 0x20u);
  }

  v10 = [(MapsExternalDevice *)self navigationAccessories];
  v11 = [v10 objectForKey:v7];

  v29 = v11;
  if (!v11)
  {
    v12 = +[NSMapTable strongToStrongObjectsMapTable];
    v13 = [(MapsExternalDevice *)self navigationAccessories];
    v29 = v12;
    [v13 setObject:v12 forKey:v7];
  }

  +[MNNavigationService sharedService];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100896A94;
  v14 = v38[3] = &unk_10162CE90;
  v39 = v14;
  v15 = objc_retainBlock(v38);
  if (v8)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v8;
    v16 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v16)
    {
      v17 = v16;
      v27 = v8;
      v18 = *v31;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v30 + 1) + 8 * i);
          v21 = v7;
          v22 = [[CarClusterNavigationController alloc] initWithAccessory:v7 component:v20];
          [v29 setObject:v22 forKey:v20];
          if ([v14 isInNavigatingState])
          {
            (v15[2])(v15, v22);
          }

          v7 = v21;
        }

        v17 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v17);
      v8 = v27;
    }

LABEL_24:

    goto LABEL_25;
  }

  if ([v14 isInNavigatingState])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = [v29 objectEnumerator];
    v23 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v35;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(obj);
          }

          (v15[2])(v15, *(*(&v34 + 1) + 8 * j));
        }

        v24 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v24);
    }

    goto LABEL_24;
  }

LABEL_25:
}

- (void)navigation:(id)a3 accessoryDetached:(id)a4
{
  v5 = a4;
  v6 = sub_100896688();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 134349314;
    v9 = self;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] accessoryDetached=%@", &v8, 0x16u);
  }

  v7 = [(MapsExternalDevice *)self navigationAccessories];
  [v7 removeObjectForKey:v5];
}

- (void)navigation:(id)a3 accessoryAttached:(id)a4
{
  v5 = a4;
  v6 = sub_100896688();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 134349314;
    v10 = self;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] accessoryAttached=%@", &v9, 0x16u);
  }

  v7 = [(MapsExternalDevice *)self navigationAccessories];
  v8 = +[NSMapTable strongToStrongObjectsMapTable];
  [v7 setObject:v8 forKey:v5];
}

- (void)setRouteGuidanceBeingShownInApp:(BOOL)a3
{
  v3 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [(MapsExternalDevice *)self navigationAccessories];
  v5 = [v4 objectEnumerator];

  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v11 = [v10 objectEnumerator];
        v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v17;
          do
          {
            v15 = 0;
            do
            {
              if (*v17 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [*(*(&v16 + 1) + 8 * v15) setRouteGuidanceBeingShownInApp:v3];
              v15 = v15 + 1;
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v13);
        }

        v9 = v9 + 1;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }
}

- (void)stopMonitoringIOHIDRepeatCurrentGuidance
{
  if (self->_client)
  {
    CFRunLoopGetMain();
    IOHIDEventSystemClientUnscheduleWithRunLoop();
    IOHIDEventSystemClientUnregisterEventCallback();
    CFRelease(self->_client);
    self->_client = 0;
  }

  [(MapsExternalDevice *)self setMonitoringIOHID:0];
}

- (void)startMonitoringIOHIDRepeatCurrentGuidance
{
  if (![(MapsExternalDevice *)self monitoringIOHID])
  {
    if (self->_client)
    {
      v5 = sub_10006D178();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *keys = 136315906;
        *&keys[4] = "[MapsExternalDevice startMonitoringIOHIDRepeatCurrentGuidance]";
        *&keys[12] = 2080;
        *&keys[14] = "MapsExternalDevice.m";
        v13 = 1024;
        v14 = 868;
        v15 = 2080;
        v16 = "!_client";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", keys, 0x26u);
      }

      if (sub_100E03634())
      {
        v6 = sub_10006D178();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = +[NSThread callStackSymbols];
          *keys = 138412290;
          *&keys[4] = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@", keys, 0xCu);
        }
      }
    }

    v3 = IOHIDEventSystemClientCreateWithType();
    self->_client = v3;
    if (v3)
    {
      *keys = *off_10162CE78;
      v8 = 1;
      valuePtr = 12;
      values = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
      cf = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v8);
      v4 = CFDictionaryCreate(kCFAllocatorDefault, keys, &values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFRelease(values);
      CFRelease(cf);
      IOHIDEventSystemClientSetMatching();
      CFRelease(v4);
      CFRunLoopGetMain();
      IOHIDEventSystemClientScheduleWithRunLoop();
      IOHIDEventSystemClientRegisterEventCallback();
      [(MapsExternalDevice *)self setMonitoringIOHID:1];
    }
  }
}

- (void)_handleIOHIDEvent:(__IOHIDEvent *)a3
{
  v4 = sub_100896688();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349312;
    v8 = self;
    v9 = 1024;
    Type = IOHIDEventGetType();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] event=%d", buf, 0x12u);
  }

  objc_initWeak(buf, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100897428;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v6, buf);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (void)handoffDestination:(id)a3 completion:(id)a4
{
  v6 = a3;
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_100897B5C;
  v55[3] = &unk_1016382C0;
  v7 = a4;
  v56 = v7;
  v8 = objc_retainBlock(v55);
  if ([(MapsExternalDevice *)self destinationHandoffEnabled])
  {
    v9 = [SearchResult carSearchResultFromDestination:v6];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 _maps_externalDeviceDictionaryRepresentation];
      if ([(MapsExternalDevice *)self _destinationHandoffTestingEnabled])
      {
        v12 = sub_100896688();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 134349056;
          *&buf[4] = self;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}p] Destination hand-off testing enabled, will present activity controller instead.", buf, 0xCu);
        }

        [objc_opt_class() _presentActivityControllerForDestination:v6 searchResult:v10 dictionary:v11 completion:v7];
      }

      else
      {
        v17 = +[NSUUID UUID];
        v34 = [v17 UUIDString];

        v18 = +[NSUserDefaults standardUserDefaults];
        [v18 doubleForKey:@"__internal__CarDestinationHandoffTimeoutInterval"];
        v20 = v19;

        if (v7)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v58 = sub_100897C1C;
          *&v59 = sub_100897C2C;
          *(&v59 + 1) = 0;
          v49 = 0;
          v50 = &v49;
          v51 = 0x3032000000;
          v52 = sub_100897C1C;
          v53 = sub_100897C2C;
          v54 = 0;
          objc_initWeak(&location, self);
          v21 = +[NSNotificationCenter defaultCenter];
          v22 = +[NSOperationQueue mainQueue];
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_100897C34;
          v41[3] = &unk_10162CE30;
          objc_copyWeak(&v47, &location);
          v23 = EAAccessoryDestinationStatusNotification;
          v24 = v34;
          v45 = &v49;
          v46 = buf;
          v42 = v24;
          v43 = self;
          v44 = v7;
          v25 = [v21 addObserverForName:v23 object:0 queue:v22 usingBlock:v41];
          v26 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v25;

          v35[0] = _NSConcreteStackBlock;
          v35[1] = 3221225472;
          v35[2] = sub_100897EDC;
          v35[3] = &unk_10162CE58;
          objc_copyWeak(v40, &location);
          v27 = v24;
          v40[1] = v20;
          v36 = v27;
          v39 = buf;
          v37 = self;
          v38 = v8;
          v28 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v35 block:*&v20];
          v29 = v50[5];
          v50[5] = v28;

          objc_destroyWeak(v40);
          objc_destroyWeak(&v47);
          objc_destroyWeak(&location);
          _Block_object_dispose(&v49, 8);

          _Block_object_dispose(buf, 8);
        }

        v30 = sub_100896688();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = [NSNumber numberWithDouble:*&v20];
          v32 = [objc_opt_class() _stringRepresentationOfDictionary:v11];
          *buf = 134349826;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = v34;
          *&buf[22] = 2112;
          v58 = v31;
          LOWORD(v59) = 2112;
          *(&v59 + 2) = v32;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "[%{public}p] Sending destination to the car (identifier:%@, timeout:%@s, destination:{%@})", buf, 0x2Au);
        }

        v33 = +[MapsExternalAccessory sharedInstance];
        [v33 sendDestinationInformation:v11 identifier:v34];
      }
    }

    else
    {
      v14 = sub_100896688();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 134349314;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%{public}p] Unable to convert destination to a SearchResult (destination:%@)", buf, 0x16u);
      }

      v11 = [objc_opt_class() _destinationHandoffErrorWithReason:2];
      (v8[2])(v8, 0, v11);
    }
  }

  else
  {
    v13 = sub_100896688();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%{public}p] Desintation handoff is not enabled", buf, 0xCu);
    }

    v10 = [objc_opt_class() _destinationHandoffErrorWithReason:1];
    (v8[2])(v8, 0, v10);
  }
}

- (BOOL)_destinationHandoffTestingEnabled
{
  v2 = +[GEOPlatform sharedPlatform];
  if ([v2 isInternalInstall])
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 BOOLForKey:@"StarkDestinationSharingTestKey"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)destinationHandoffEnabled
{
  v3 = +[MapsExternalAccessory sharedInstance];
  if (([v3 isConnected] & 1) == 0)
  {
    v4 = sub_100896688();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 134349312;
      v10 = self;
      v11 = 1024;
      v12 = [v3 destinationHandoffEnabled];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%{public}p] Checking if destination handoff is enabled (%d), but accessory not connected", &v9, 0x12u);
    }
  }

  if ([v3 destinationHandoffEnabled])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[GEOPlatform sharedPlatform];
    if ([v6 isInternalInstall])
    {
      v7 = +[NSUserDefaults standardUserDefaults];
      v5 = [v7 BOOLForKey:@"StarkDestinationSharingEnableKey"];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)navigationOwnershipChangedToOwner:(unint64_t)a3
{
  v5 = sub_100896688();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"none";
    if (a3 == 2)
    {
      v6 = @"car";
    }

    if (a3 == 1)
    {
      v6 = @"iOS";
    }

    *buf = 134349314;
    v9 = self;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}p] Navigation owner changed to %{public}@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100898344;
  block[3] = &unk_1016611D0;
  block[4] = a3;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setCarPlayIsNavigating:(BOOL)a3
{
  if (self->_carPlayIsNavigating != a3)
  {
    v3 = a3;
    self->_carPlayIsNavigating = a3;
    v5 = sub_100896688();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      carPlayIsNavigating = self->_carPlayIsNavigating;
      v9 = 134349312;
      v10 = self;
      v11 = 1024;
      v12 = carPlayIsNavigating;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] iOS navigation state became %d", &v9, 0x12u);
    }

    v7 = [(MapsExternalDevice *)self navigationOwnershipManager];
    v8 = v7;
    if (v3)
    {
      [v7 requestNavigationOwnership];

      [(CarPlayMetadataUpdater *)self->_metadataUpdater requestNavigationOwnership];
    }

    else
    {
      [v7 releaseNavigationOwnership];

      [(CarPlayMetadataUpdater *)self->_metadataUpdater releaseNavigationOwnership];
    }
  }
}

- (BOOL)externalAccessoryIsNavigating
{
  if (GEOConfigGetBOOL())
  {
    metadataUpdater = self->_metadataUpdater;

    return [(CarPlayMetadataUpdater *)metadataUpdater externalAccessoryIsNavigating];
  }

  else
  {
    v5 = [(MapsExternalDevice *)self navigationOwnershipManager];
    v6 = [v5 owner] == 2;

    return v6;
  }
}

- (BOOL)_checkScreenOwnershipIfNeeded:(id)a3
{
  v4 = a3;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v29 = sub_10006D178();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v32 = 136316418;
        v33 = "[MapsExternalDevice _checkScreenOwnershipIfNeeded:]";
        v34 = 2080;
        v35 = "MapsExternalDevice.m";
        v36 = 1024;
        *v37 = 543;
        *&v37[4] = 2080;
        *&v37[6] = "dispatch_get_main_queue()";
        *&v37[14] = 2080;
        *&v37[16] = dispatch_queue_get_label(&_dispatch_main_q);
        v38 = 2080;
        v39 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v32, 0x3Au);
      }

      if (sub_100E03634())
      {
        v30 = sub_10006D178();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = +[NSThread callStackSymbols];
          v32 = 138412290;
          v33 = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%@", &v32, 0xCu);
        }
      }
    }
  }

  if (!self->_screenOwnershipCheckTimer)
  {
    goto LABEL_30;
  }

  v8 = sub_100896688();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v9)
    {
      maxScreenOwnershipChecks = self->_maxScreenOwnershipChecks;
      v11 = maxScreenOwnershipChecks - self->_screenOwnershipChecksRemaining + 1;
      v32 = 134349568;
      v33 = self;
      v34 = 2048;
      v35 = v11;
      v36 = 2048;
      *v37 = maxScreenOwnershipChecks;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] screen ownership check %lu/%lu...", &v32, 0x20u);
    }

    --self->_screenOwnershipChecksRemaining;
  }

  else
  {
    if (v9)
    {
      v32 = 134349056;
      v33 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] screen ownership check (not scheduled)...", &v32, 0xCu);
    }
  }

  v12 = [(MapsExternalDevice *)self externalDevice];
  if (v12)
  {
    v13 = [(MapsExternalDevice *)self externalDevice];
    v14 = [v13 ownsScreen] ^ 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = [(MapsExternalDevice *)self externalDevice];
  v16 = (v15 == 0) | v14;

  if (self->_screenOwnershipChecksRemaining)
  {
    if ((v16 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v22 = sub_100896688();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    screenOwnershipChecksRemaining = self->_screenOwnershipChecksRemaining;
    if (v14)
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    v25 = v24;
    v26 = [(MapsExternalDevice *)self externalDeviceDescription];
    v32 = 134349826;
    v33 = self;
    v34 = 2048;
    v35 = screenOwnershipChecksRemaining;
    v36 = 2112;
    *v37 = v24;
    *&v37[8] = 2112;
    *&v37[10] = v26;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[%{public}p] cancelling screen ownership checks (remaining: %lu, we own screen: %@, device: %@)", &v32, 0x2Au);
  }

  [(GCDTimer *)self->_screenOwnershipCheckTimer invalidate];
  screenOwnershipCheckTimer = self->_screenOwnershipCheckTimer;
  self->_screenOwnershipCheckTimer = 0;

  if (v16)
  {
    v17 = sub_100896688();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v32 = 134349056;
      v33 = self;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}p] screen ownership changed to us (or device disappeared), update state and schedule notification", &v32, 0xCu);
    }

    v18 = [MapsExternalDeviceState alloc];
    v19 = [(MapsExternalDevice *)self externalDevice];
    v20 = [(MapsExternalDeviceState *)v18 initWithExternalDevice:v19];
    [(MapsExternalDevice *)self setCurrentState:v20];

    v21 = 1;
  }

  else
  {
LABEL_30:
    v21 = 0;
  }

  return v21;
}

- (void)_updateStateForRecievedNotification:(id)a3
{
  v4 = a3;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = 136316418;
        v17 = "[MapsExternalDevice _updateStateForRecievedNotification:]";
        v18 = 2080;
        v19 = "MapsExternalDevice.m";
        v20 = 1024;
        v21 = 535;
        v22 = 2080;
        v23 = "dispatch_get_main_queue()";
        v24 = 2080;
        v25 = dispatch_queue_get_label(&_dispatch_main_q);
        v26 = 2080;
        v27 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v16, 0x3Au);
      }

      if (sub_100E03634())
      {
        v14 = sub_10006D178();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = +[NSThread callStackSymbols];
          v16 = 138412290;
          v17 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
        }
      }
    }
  }

  v8 = sub_100896688();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v4 name];
    v16 = 134349314;
    v17 = self;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] handling notification: %@", &v16, 0x16u);
  }

  v10 = [MapsExternalDeviceState alloc];
  v11 = [(MapsExternalDevice *)self externalDevice];
  v12 = [(MapsExternalDeviceState *)v10 initWithExternalDevice:v11];
  [(MapsExternalDevice *)self setCurrentState:v12];
}

- (void)setCurrentState:(id)a3
{
  v5 = a3;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v7 = dispatch_queue_get_label(0);
  if (label != v7)
  {
    v8 = !label || v7 == 0;
    if (v8 || strcmp(label, v7))
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 136316418;
        v15 = "[MapsExternalDevice setCurrentState:]";
        v16 = 2080;
        v17 = "MapsExternalDevice.m";
        v18 = 1024;
        *v19 = 526;
        *&v19[4] = 2080;
        *&v19[6] = "dispatch_get_main_queue()";
        v20 = 2080;
        v21 = dispatch_queue_get_label(&_dispatch_main_q);
        v22 = 2080;
        v23 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v14, 0x3Au);
      }

      if (sub_100E03634())
      {
        v12 = sub_10006D178();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = +[NSThread callStackSymbols];
          v14 = 138412290;
          v15 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", &v14, 0xCu);
        }
      }
    }
  }

  objc_storeStrong(&self->_currentState, a3);
  v9 = sub_100896688();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [(MapsExternalDevice *)self externalDeviceDescription];
    v14 = 134349570;
    v15 = self;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    *v19 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] state updated for device: %@\n currentState=%@", &v14, 0x20u);
  }

  [(MapsExternalDevice *)self _postNotificationIfNeeded];
}

- (void)setExternalDevice:(id)a3
{
  v4 = a3;
  externalDevice = self->_externalDevice;
  v6 = [[MapsExternalDeviceState alloc] initWithExternalDevice:v4];
  v7 = v4 != 0;
  v40 = v6;
  if (!v4 || v6)
  {
    if ((v4 != 0) == (externalDevice != 0))
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  v8 = sub_100896688();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = objc_opt_class();
      v11 = [v9 ID];
      v12 = [v9 name];
      v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@<%p> (ID: %@, name: %@, transportType: %ld)", v10, v9, v11, v12, [v9 transportType]);
    }

    else
    {
      v13 = [v9 description];
    }

    *buf = 134349314;
    v44 = self;
    v45 = 2114;
    v46 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}p] no state created for device, treating as nil: %{public}@", buf, 0x16u);
  }

  v7 = 0;
  v4 = 0;
  if (externalDevice)
  {
LABEL_11:
    v14 = sub_100896688();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = @"NO";
      if (externalDevice)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      *buf = 134349570;
      v44 = self;
      if (v7)
      {
        v15 = @"YES";
      }

      v45 = 2114;
      v46 = v16;
      v47 = 2114;
      v48 = v15;
      v17 = v15;
      v18 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}p] connection state changed from: %{public}@ to: %{public}@", buf, 0x20u);
    }
  }

LABEL_19:
  v19 = sub_100896688();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    externalDeviceDescription = self->_externalDeviceDescription;
    v20 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = objc_opt_class();
      v22 = [v20 ID];
      v23 = [v20 name];
      v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@<%p> (ID: %@, name: %@, transportType: %ld)", v21, v20, v22, v23, [v20 transportType]);
    }

    else
    {
      v24 = [v20 description];
    }

    *buf = 134349570;
    v44 = self;
    v45 = 2114;
    v46 = externalDeviceDescription;
    v47 = 2114;
    v48 = v24;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[%{public}p] updating external device from %{public}@ to %{public}@", buf, 0x20u);
  }

  if (v7)
  {
    objc_storeStrong(&self->_externalDevice, v4);
    v25 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = objc_opt_class();
      v27 = [v25 ID];
      v28 = [v25 name];
      v29 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@<%p> (ID: %@, name: %@, transportType: %ld)", v26, v25, v27, v28, [v25 transportType]);
    }

    else
    {
      v29 = [v25 description];
    }

    v31 = self->_externalDeviceDescription;
    self->_externalDeviceDescription = v29;

    [(MapsExternalDevice *)self _registerForAVNotifications];
    if ([v25 ownsScreen])
    {
      UInteger = GEOConfigGetUInteger();
      self->_maxScreenOwnershipChecks = UInteger;
      self->_screenOwnershipChecksRemaining = UInteger;
      v33 = sub_100896688();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        screenOwnershipChecksRemaining = self->_screenOwnershipChecksRemaining;
        *buf = 134349568;
        v44 = self;
        v45 = 2048;
        v46 = screenOwnershipChecksRemaining;
        v47 = 2048;
        v48 = 0x3FC999999999999ALL;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "[%{public}p] scheduling %lu deferred screen ownership checks (every %#.1lfs)...", buf, 0x20u);
      }

      if (self->_maxScreenOwnershipChecks)
      {
        objc_initWeak(buf, self);
        v35 = &_dispatch_main_q;
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_100899508;
        v41[3] = &unk_1016616E8;
        objc_copyWeak(&v42, buf);
        v36 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:1 repeating:v41 block:0.2];
        screenOwnershipCheckTimer = self->_screenOwnershipCheckTimer;
        self->_screenOwnershipCheckTimer = v36;

        objc_destroyWeak(&v42);
        objc_destroyWeak(buf);
      }
    }
  }

  else
  {
    [(MapsExternalDevice *)self _unregisterForAVNotifications];
    objc_storeStrong(&self->_externalDevice, v4);
    v30 = self->_externalDeviceDescription;
    self->_externalDeviceDescription = 0;
  }

  [(MapsExternalDevice *)self setCurrentState:v40];
  if (self->_carPlayIsNavigating)
  {
    v38 = [(MapsExternalDevice *)self navigationOwnershipManager];
    [v38 requestNavigationOwnership];

    [(CarPlayMetadataUpdater *)self->_metadataUpdater requestNavigationOwnership];
  }
}

- (void)checkForActiveCarPlayConnection
{
  v3 = +[MapsCarPlayExternalDeviceMonitor sharedInstance];
  v4 = [v3 carPlayExternalDevice];

  if (![(MapsExternalDevice *)self isConnected])
  {
    goto LABEL_17;
  }

  v5 = sub_100896688();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v26 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] asked to check for active CarPlay connection, already have one (but will check it's ok)", buf, 0xCu);
  }

  v6 = [(MapsExternalDevice *)self externalDevice];
  v7 = [v6 transportType];

  if (!v4 || !v7)
  {
    v8 = sub_100896688();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_16:

LABEL_17:
      v15 = sub_100896688();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
      if (v4)
      {
        if (v16)
        {
          *buf = 134349056;
          v26 = self;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}p] asked to check for active CarPlay connection, found one", buf, 0xCu);
        }

        v17 = self;
        v18 = v4;
      }

      else
      {
        if (v16)
        {
          *buf = 134349056;
          v26 = self;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}p] asked to check for active CarPlay connection, found none", buf, 0xCu);
        }

        if ([(MapsExternalDevice *)self isConnected])
        {
          v19 = +[MapsExternalAccessory sharedInstance];
          v20 = [v19 isConnected];

          if (v20)
          {
            v21 = sub_100896688();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v22 = +[MapsExternalAccessory sharedInstance];
              *buf = 134349314;
              v26 = self;
              v27 = 2112;
              v28 = v22;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[%{public}p] no current CarPlay AV device, but we still have our reference and ExternalAccessory is apparently connected: %@", buf, 0x16u);
            }
          }
        }

        if ([(MapsExternalDevice *)self isConnected]&& [(MapsExternalDevice *)self _isCarPlaySessionActive])
        {
          v23 = sub_100896688();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = [(CARSessionStatus *)self->_carSessionStatus currentSession];
            *buf = 134349314;
            v26 = self;
            v27 = 2112;
            v28 = v24;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[%{public}p] no current CarPlay AV device, but we still have our reference and a CarPlay session is apparently active: %@", buf, 0x16u);
          }
        }

        v17 = self;
        v18 = 0;
      }

      [(MapsExternalDevice *)v17 setExternalDevice:v18];
      goto LABEL_35;
    }

    v9 = v4;
    if (!v4)
    {
      v14 = @"<nil>";
      goto LABEL_15;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [v9 performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        v14 = [NSString stringWithFormat:@"%@<%p, %@>", v11, v9, v13];

        goto LABEL_13;
      }
    }

    v14 = [NSString stringWithFormat:@"%@<%p>", v11, v9];
LABEL_13:

LABEL_15:
    *buf = 134349570;
    v26 = self;
    v27 = 2112;
    v28 = v14;
    v29 = 2048;
    v30 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}p] something has gone wrong with our externalDevice reference! treating as nil... (device: %@, transportType: %ld)", buf, 0x20u);

    goto LABEL_16;
  }

LABEL_35:
}

- (void)relinquishScreenIfNeeded
{
  v3 = [(MapsExternalDevice *)self screenBorrowToken];

  if (v3)
  {

    [(MapsExternalDevice *)self setScreenBorrowToken:0];
  }
}

- (void)borrowScreenIfNeededForReason:(id)a3
{
  v8 = a3;
  if ([(MapsExternalDevice *)self ownsScreen]&& !self->_screenBorrowToken)
  {
    v4 = [(MapsExternalDevice *)self externalDevice];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 bundleIdentifier];
    v7 = [v4 borrowScreenForClient:v6 reason:v8];
    [(MapsExternalDevice *)self setScreenBorrowToken:v7];
  }
}

- (void)_unregisterForAVNotifications
{
  if (self->_notificationObservers)
  {
    v3 = sub_100896688();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v18 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] stop observing AV device notifications", buf, 0xCu);
    }

    v4 = self->_notificationObservers;
    notificationObservers = self->_notificationObservers;
    self->_notificationObservers = 0;

    v6 = +[NSNotificationCenter defaultCenter];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v4;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v6 removeObserver:{*(*(&v12 + 1) + 8 * v11), v12}];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)_registerForAVNotifications
{
  if (!self->_notificationObservers)
  {
    objc_initWeak(&location, self);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100069B68;
    v23[3] = &unk_10165FBE8;
    objc_copyWeak(&v24, &location);
    v3 = objc_retainBlock(v23);
    v4 = +[NSNotificationCenter defaultCenter];
    v20 = +[NSOperationQueue mainQueue];
    v19 = [v4 addObserverForName:AVExternalDeviceNightModeChangedNotification object:0 queue:v20 usingBlock:v3];
    v26[0] = v19;
    v18 = +[NSOperationQueue mainQueue];
    v17 = [v4 addObserverForName:AVExternalDeviceScreenBecameAvailableNotification object:0 queue:v18 usingBlock:v3];
    v26[1] = v17;
    v16 = +[NSOperationQueue mainQueue];
    v15 = [v4 addObserverForName:AVExternalDeviceScreenBecameUnavailableNotification object:0 queue:v16 usingBlock:v3];
    v26[2] = v15;
    v14 = +[NSOperationQueue mainQueue];
    v5 = [v4 addObserverForName:AVExternalDeviceLimitedUIChangedNotification object:0 queue:v14 usingBlock:v3];
    v26[3] = v5;
    v6 = +[NSOperationQueue mainQueue];
    v7 = [v4 addObserverForName:AVExternalDeviceNavigationAidedDrivingStateChangedNotification object:0 queue:v6 usingBlock:v3];
    v26[4] = v7;
    v8 = +[NSOperationQueue mainQueue];
    v9 = [v4 addObserverForName:AVExternalDevicePerformanceReportPostedNotification object:0 queue:v8 usingBlock:v3];
    v26[5] = v9;
    v10 = +[NSOperationQueue mainQueue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100899FE8;
    v21[3] = &unk_10165FBE8;
    objc_copyWeak(&v22, &location);
    v11 = [v4 addObserverForName:UISceneWillEnterForegroundNotification object:0 queue:v10 usingBlock:v21];
    v26[6] = v11;
    v12 = [NSArray arrayWithObjects:v26 count:7];
    notificationObservers = self->_notificationObservers;
    self->_notificationObservers = v12;

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }
}

- (void)sessionDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = &_dispatch_main_q;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v13 = sub_10089A200;
  v14 = &unk_101661B18;
  v15 = self;
  v6 = &_dispatch_main_q;
  v7 = v12;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v9 = dispatch_queue_get_label(0);
  if (label == v9 || (label ? (v10 = v9 == 0) : (v10 = 1), !v10 && !strcmp(label, v9)))
  {
    v11 = objc_autoreleasePoolPush();
    v13(v7);
    objc_autoreleasePoolPop(v11);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v7);
  }
}

- (void)sessionDidConnect:(id)a3
{
  v4 = a3;
  v5 = &_dispatch_main_q;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v13 = sub_10089A3E0;
  v14 = &unk_101661B18;
  v15 = self;
  v6 = &_dispatch_main_q;
  v7 = v12;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v9 = dispatch_queue_get_label(0);
  if (label == v9 || (label ? (v10 = v9 == 0) : (v10 = 1), !v10 && !strcmp(label, v9)))
  {
    v11 = objc_autoreleasePoolPush();
    v13(v7);
    objc_autoreleasePoolPop(v11);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v7);
  }
}

- (void)dealloc
{
  v3 = sub_100896688();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = MapsExternalDevice;
  [(MapsExternalDevice *)&v5 dealloc];
}

+ (id)_stringRepresentationOfDictionary:(id)a3
{
  v3 = a3;
  +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10089A690;
  v8 = v7[3] = &unk_1016555A0;
  v4 = v8;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];

  v5 = [v4 componentsJoinedByString:{@", "}];

  return v5;
}

+ (id)_localizedReasonForHandoffError:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_10162CF18[a3 - 1];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:@"localized string not found" table:0];
  }

  return v5;
}

+ (id)_destinationHandoffErrorWithReason:(int64_t)a3
{
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Destination handoff failure alert title [CarPlay]" value:@"localized string not found" table:0];

  v7 = [NSMutableDictionary dictionaryWithObject:v6 forKey:NSLocalizedDescriptionKey];
  v8 = [a1 _localizedReasonForHandoffError:a3];
  v9 = [NSNumber numberWithInteger:a3];
  [v7 setObject:v9 forKeyedSubscript:@"__handoff_error_key"];

  if (v8)
  {
    [v7 setObject:v8 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];
  }

  v10 = [a1 _errorWithCode:1 userInfo:v7];

  return v10;
}

+ (void)_presentActivityControllerForDestination:(id)a3 searchResult:(id)a4 dictionary:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (+[NSThread isMainThread])
  {
    v14 = +[NSMutableDictionary dictionary];
    v15 = +[NSDate date];
    v16 = [v15 description];
    [v14 setObject:v16 forKeyedSubscript:@"timestamp"];

    if (v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = @"n/a";
    }

    [v14 setObject:v17 forKeyedSubscript:@"serialized"];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = @"n/a";
    }

    [v14 setObject:v21 forKeyedSubscript:@"type"];

    v22 = [v11 name];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = @"n/a";
    }

    [v14 setObject:v24 forKeyedSubscript:@"name"];

    v49 = 0;
    v25 = [NSJSONSerialization dataWithJSONObject:v14 options:1 error:&v49];
    v26 = v49;
    if (v25)
    {
      v27 = [[NSString alloc] initWithData:v25 encoding:4];
      v28 = [UIActivityViewController alloc];
      v57 = v27;
      v41 = v25;
      [NSArray arrayWithObjects:&v57 count:1];
      v29 = v42 = v26;
      v30 = [v28 initWithActivityItems:v29 applicationActivities:0];

      v56[0] = UIActivityTypePostToVimeo;
      v56[1] = UIActivityTypePostToWeibo;
      v56[2] = UIActivityTypePostToFacebook;
      v56[3] = UIActivityTypePostToVimeo;
      v56[4] = UIActivityTypePostToTencentWeibo;
      v56[5] = UIActivityTypeAddToReadingList;
      v56[6] = UIActivityTypePostToFlickr;
      v31 = [NSArray arrayWithObjects:v56 count:7];
      [v30 setExcludedActivityTypes:v31];

      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_10089AE98;
      v44[3] = &unk_1016566B8;
      v45 = v13;
      [v30 setCompletionWithItemsHandler:v44];
      v32 = +[UIApplication sharedMapsDelegate];
      v33 = [v32 chromeViewController];
      v34 = [v33 topMostPresentedViewController];

      v26 = v42;
      [v34 presentViewController:v30 animated:1 completion:0];

      v25 = v41;
    }

    else
    {
      v35 = sub_100896688();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [v26 localizedDescription];
        v36 = v43 = v26;
        v37 = [v43 localizedFailureReason];
        *buf = 134349570;
        v59 = a1;
        v60 = 2112;
        v61 = v36;
        v62 = 2112;
        v63 = v37;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "[%{public}p] Error serializing debug JSON (%@, %@)", buf, 0x20u);

        v26 = v43;
      }

      v27 = [UIAlertController alertControllerWithTitle:@"Error serializing destination" message:@"There was an error serializing the destination." preferredStyle:1];
      v38 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
      [v27 addAction:v38];

      v39 = +[UIApplication sharedMapsDelegate];
      v40 = [v39 chromeViewController];
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_10089AE74;
      v46[3] = &unk_101661090;
      v48 = v13;
      v47 = v26;
      [v40 _maps_topMostPresentViewController:v27 animated:1 completion:v46];

      v30 = v48;
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10089AE60;
    block[3] = &unk_10164E610;
    v55 = a1;
    v51 = v10;
    v52 = v11;
    v53 = v12;
    v54 = v13;
    dispatch_async(&_dispatch_main_q, block);

    v14 = v51;
  }
}

+ (void)_presentActivityControllerForDestination:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[NSThread isMainThread])
  {
    v8 = [SearchResult carSearchResultFromDestination:v6];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 _maps_externalDeviceDictionaryRepresentation];
      [a1 _presentActivityControllerForDestination:v6 searchResult:v9 dictionary:v10 completion:v7];
    }

    else
    {
      v11 = sub_100896688();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 134349314;
        v20 = a1;
        v21 = 2112;
        v22 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%{public}p] Unable to convert destination to a SearchResult (destination:%@)", buf, 0x16u);
      }

      if (v7)
      {
        v14 = [objc_opt_class() _destinationHandoffErrorWithReason:2];
        v7[2](v7, 0, v14);
      }

      v9 = 0;
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10089B0BC;
    block[3] = &unk_1016589F8;
    v18 = a1;
    v16 = v6;
    v17 = v7;
    dispatch_async(&_dispatch_main_q, block);

    v9 = v16;
  }
}

@end