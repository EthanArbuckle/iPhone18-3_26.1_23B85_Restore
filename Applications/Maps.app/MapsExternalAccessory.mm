@interface MapsExternalAccessory
+ (BOOL)instancesRespondToSelector:(SEL)selector;
+ (id)instanceMethodSignatureForSelector:(SEL)selector;
+ (id)sharedInstance;
+ (void)setUsePrivateQueue;
- (BOOL)_isCurrentStateEqualLastPostedState;
- (BOOL)hasEngineType;
- (BOOL)isConnected;
- (BOOL)isHybridEngineType;
- (BOOL)needsFuel;
- (MapsExternalAccessory)initWithPrivateQueue:(BOOL)queue;
- (id)identifier;
- (id)methodSignatureForSelector:(SEL)selector;
- (int)primaryEngineType;
- (void)_accessoryDidConnect:(id)connect;
- (void)_accessoryDidDisconnect:(id)disconnect;
- (void)_accessoryDidUpdate:(id)update;
- (void)_accessoryDidUpdateVehicle:(id)vehicle;
- (void)_disconnectFromVehicle;
- (void)_handleFake:(id)fake;
- (void)_postNotificationIfNeeded;
- (void)_startListenForDebugTestNotifications;
- (void)_stopListenForDebugTestNotifications;
- (void)_updateFromNotificationName:(id)name userInfo:(id)info;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
- (void)sendDestinationInformation:(id)information identifier:(id)identifier;
- (void)setAccessory:(id)accessory;
- (void)setCurrentState:(id)state;
@end

@implementation MapsExternalAccessory

+ (id)sharedInstance
{
  if (qword_10195E540 != -1)
  {
    dispatch_once(&qword_10195E540, &stru_1016375D0);
  }

  v3 = qword_10195E538;

  return v3;
}

- (BOOL)hasEngineType
{
  currentState = [(MapsExternalAccessory *)self currentState];
  v3 = [currentState engineType] != 0;

  return v3;
}

- (void)_disconnectFromVehicle
{
  v3 = sub_100AD7D8C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "disconnecting from vehicle", v4, 2u);
  }

  [(MapsExternalAccessory *)self setAccessory:0];
}

- (void)_postNotificationIfNeeded
{
  if (self->_initialising)
  {
    v3 = sub_100AD7D8C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "suppressing posting notification while initialising MapsExternalAccessory", buf, 2u);
    }

    goto LABEL_17;
  }

  _isCurrentStateEqualLastPostedState = [(MapsExternalAccessory *)self _isCurrentStateEqualLastPostedState];
  v5 = sub_100AD7D8C();
  currentState3 = v5;
  if (!_isCurrentStateEqualLastPostedState)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      lastPostedState = [(MapsExternalAccessory *)self lastPostedState];
      currentState = [(MapsExternalAccessory *)self currentState];
      *buf = 138412546;
      v19 = lastPostedState;
      v20 = 2112;
      v21 = currentState;
      _os_log_impl(&_mh_execute_header, currentState3, OS_LOG_TYPE_INFO, "posting notification\n lastPostedState=%@\n currentState=%@", buf, 0x16u);
    }

    v9 = sub_100AD7D8C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      lastPostedState2 = [(MapsExternalAccessory *)self lastPostedState];
      if (lastPostedState2)
      {
        v11 = lastPostedState2;
        currentState2 = [(MapsExternalAccessory *)self currentState];

        if (!currentState2)
        {
LABEL_16:
          v3 = +[NSNotificationCenter defaultCenter];
          [v3 postNotificationName:@"MapsExternalAccessoryUpdatedNotification" object:self userInfo:0];
LABEL_17:

          currentState3 = [(MapsExternalAccessory *)self currentState];
          v16 = [currentState3 copy];
          [(MapsExternalAccessory *)self setLastPostedState:v16];

          goto LABEL_18;
        }

        currentState4 = [(MapsExternalAccessory *)self currentState];
        lastPostedState3 = [(MapsExternalAccessory *)self lastPostedState];
        v17 = 0;
        [currentState4 isEqualToState:lastPostedState3 changedKeys:&v17];
        v9 = v17;

        v15 = sub_100AD7D8C();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v19 = v9;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "changedKeys=%@", buf, 0xCu);
        }
      }
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, currentState3, OS_LOG_TYPE_DEBUG, "no need to post notification (no change)", buf, 2u);
  }

LABEL_18:
}

- (BOOL)_isCurrentStateEqualLastPostedState
{
  lastPostedState = [(MapsExternalAccessory *)self lastPostedState];
  currentState = [(MapsExternalAccessory *)self currentState];
  if (lastPostedState | currentState)
  {
    v5 = [lastPostedState isEqual:currentState];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)_updateFromNotificationName:(id)name userInfo:(id)info
{
  nameCopy = name;
  infoCopy = info;
  v8 = sub_100AD7D8C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    accessory = [(MapsExternalAccessory *)self accessory];
    name = [accessory name];
    v14 = 138412802;
    v15 = name;
    v16 = 2112;
    v17 = nameCopy;
    v18 = 2112;
    v19 = infoCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "notified of update to accessory: %@ notification=%@ userInfo=%@", &v14, 0x20u);
  }

  v11 = [infoCopy objectForKeyedSubscript:EAAccessoryKey];

  if (v11)
  {
    v12 = [infoCopy objectForKeyedSubscript:EAAccessoryKey];
    if ([v12 supportsCarPlay])
    {
      [(MapsExternalAccessory *)self setAccessory:v12];
    }
  }

  else
  {
    currentState = [(MapsExternalAccessory *)self currentState];
    [currentState updateWithInfo:infoCopy];

    [(MapsExternalAccessory *)self _postNotificationIfNeeded];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v4 = objc_opt_class();

  return [v4 instanceMethodSignatureForSelector:selector];
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  if ([objc_opt_class() instancesRespondToSelector:{objc_msgSend(invocationCopy, "selector")}])
  {
    currentState = [(MapsExternalAccessory *)self currentState];
    [invocationCopy invokeWithTarget:currentState];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MapsExternalAccessory;
    [(MapsExternalAccessory *)&v6 forwardInvocation:invocationCopy];
  }
}

- (int)primaryEngineType
{
  if (([(MapsExternalAccessory *)self engineTypes]& 1) != 0)
  {
    return 1;
  }

  if (([(MapsExternalAccessory *)self engineTypes]& 0x100) != 0)
  {
    return 2;
  }

  if (([(MapsExternalAccessory *)self engineTypes]& 0x1000000) != 0)
  {
    return 8;
  }

  return ([(MapsExternalAccessory *)self engineTypes]>> 14) & 4;
}

- (BOOL)isHybridEngineType
{
  engineStates = [(MapsExternalAccessory *)self engineStates];
  v3 = [engineStates count] > 1;

  return v3;
}

- (BOOL)needsFuel
{
  if (([(MapsExternalAccessory *)self lowRangeWarning]& 1) != 0)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    currentState = [(MapsExternalAccessory *)self currentState];
    engineStates = [currentState engineStates];
    objectEnumerator = [engineStates objectEnumerator];

    v3 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          if ([*(*(&v10 + 1) + 8 * i) lowRangeWarning])
          {
            LOBYTE(v3) = 1;
            goto LABEL_13;
          }
        }

        v3 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v3;
}

- (void)setCurrentState:(id)state
{
  objc_storeStrong(&self->_currentState, state);
  v4 = sub_100AD7D8C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    accessory = [(MapsExternalAccessory *)self accessory];
    currentState = [(MapsExternalAccessory *)self currentState];
    v7 = 138412546;
    v8 = accessory;
    v9 = 2112;
    v10 = currentState;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "state updated for accessory: %@\n currentState=%@", &v7, 0x16u);
  }

  [(MapsExternalAccessory *)self _postNotificationIfNeeded];
}

- (void)setAccessory:(id)accessory
{
  accessoryCopy = accessory;
  objc_storeStrong(&self->_accessory, accessory);
  v6 = sub_100AD7D8C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = accessoryCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "updating accessory: %@", &v8, 0xCu);
  }

  if (accessoryCopy)
  {
    v7 = [[MapsExternalAccessoryState alloc] initWithAccessory:accessoryCopy];
    [(MapsExternalAccessory *)self setCurrentState:v7];
  }

  else
  {
    [(MapsExternalAccessory *)self setCurrentState:0];
  }
}

- (id)identifier
{
  if (GEOConfigGetBOOL())
  {
    serialNumber = @"CarDisplaySim";
  }

  else
  {
    serialNumber = [(EAAccessory *)self->_accessory serialNumber];
  }

  return serialNumber;
}

- (void)_accessoryDidDisconnect:(id)disconnect
{
  userInfo = [disconnect userInfo];
  v8 = [userInfo objectForKeyedSubscript:EAAccessoryKey];

  accessory = [(MapsExternalAccessory *)self accessory];
  if (accessory == v8)
  {

    goto LABEL_5;
  }

  accessory2 = [(MapsExternalAccessory *)self accessory];
  v7 = [accessory2 isEqual:v8];

  if (v7)
  {
LABEL_5:
    [(MapsExternalAccessory *)self _disconnectFromVehicle];
  }
}

- (void)_accessoryDidUpdate:(id)update
{
  updateCopy = update;
  name = [updateCopy name];
  userInfo = [updateCopy userInfo];

  [(MapsExternalAccessory *)self _updateFromNotificationName:name userInfo:userInfo];
}

- (void)_accessoryDidUpdateVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  name = [vehicleCopy name];
  userInfo = [vehicleCopy userInfo];

  [(MapsExternalAccessory *)self _updateFromNotificationName:name userInfo:userInfo];
}

- (void)_accessoryDidConnect:(id)connect
{
  connectCopy = connect;
  name = [connectCopy name];
  userInfo = [connectCopy userInfo];

  [(MapsExternalAccessory *)self _updateFromNotificationName:name userInfo:userInfo];
}

- (void)_handleFake:(id)fake
{
  fakeCopy = fake;
  +[MapsCarEngineState prepareForUse];
  if (qword_10195E560 != -1)
  {
    dispatch_once(&qword_10195E560, &stru_101637610);
  }

  v4 = [fakeCopy componentsSeparatedByString:@"."];
  lastObject = [v4 lastObject];

  if ([fakeCopy hasPrefix:@"com.apple.maps.FakeExternalAccessory.engine.type"])
  {
    v6 = EAVehicleInfoEngineTypeBitmaskKey;
    v7 = [qword_10195E568 objectForKeyedSubscript:EAVehicleInfoEngineTypeBitmaskKey];
    longLongValue = [v7 longLongValue];

    v9 = [NSNumber numberWithUnsignedInt:sub_100AD94AC(lastObject) | longLongValue];
    [qword_10195E568 setObject:v9 forKeyedSubscript:v6];
  }

  else
  {
    if ([fakeCopy hasPrefix:@"com.apple.maps.FakeExternalAccessory.engine.low"])
    {
      v10 = qword_10195E568;
      v11 = qword_10195E520;
      v12 = [NSNumber numberWithUnsignedInt:sub_100AD94AC(lastObject)];
      v13 = [v11 objectForKeyedSubscript:v12];
      [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:v13];

      v14 = qword_10195E568;
      v15 = qword_10195E518;
      v9 = [NSNumber numberWithUnsignedInt:sub_100AD94AC(lastObject)];
      v16 = [v15 objectForKeyedSubscript:v9];
      v17 = &off_1016E85B8;
    }

    else
    {
      if (![fakeCopy hasPrefix:@"com.apple.maps.FakeExternalAccessory.engine.full"])
      {
        goto LABEL_11;
      }

      v18 = qword_10195E568;
      v19 = qword_10195E520;
      v20 = [NSNumber numberWithUnsignedInt:sub_100AD94AC(lastObject)];
      v21 = [v19 objectForKeyedSubscript:v20];
      [v18 setObject:&__kCFBooleanFalse forKeyedSubscript:v21];

      v14 = qword_10195E568;
      v22 = qword_10195E518;
      v9 = [NSNumber numberWithUnsignedInt:sub_100AD94AC(lastObject)];
      v16 = [v22 objectForKeyedSubscript:v9];
      v17 = &off_1016E85D0;
    }

    [v14 setObject:v17 forKeyedSubscript:v16];
  }

LABEL_11:
  [(MapsExternalAccessory *)self _updateFromNotificationName:@"Fake Update" userInfo:qword_10195E568];
}

- (void)_stopListenForDebugTestNotifications
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = qword_10195E550;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v8, 0);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_startListenForDebugTestNotifications
{
  if (qword_10195E558 != -1)
  {
    dispatch_once(&qword_10195E558, &stru_1016375F0);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = qword_10195E550;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_100AD987C, v8, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)sendDestinationInformation:(id)information identifier:(id)identifier
{
  identifierCopy = identifier;
  informationCopy = information;
  accessory = [(MapsExternalAccessory *)self accessory];
  [accessory sendDestinationInformation:informationCopy identifier:identifierCopy];
}

- (BOOL)isConnected
{
  accessory = [(MapsExternalAccessory *)self accessory];
  if (accessory)
  {
    currentState = [(MapsExternalAccessory *)self currentState];
    v5 = currentState != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[EAAccessoryManager sharedAccessoryManager];
  [v4 unregisterForLocalNotifications];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_notificationObservers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = +[NSNotificationCenter defaultCenter];
        [v11 removeObserver:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  notificationObservers = self->_notificationObservers;
  self->_notificationObservers = 0;

  [(MapsExternalAccessory *)self _stopListenForDebugTestNotifications];
  v13.receiver = self;
  v13.super_class = MapsExternalAccessory;
  [(MapsExternalAccessory *)&v13 dealloc];
}

- (MapsExternalAccessory)initWithPrivateQueue:(BOOL)queue
{
  queueCopy = queue;
  v50.receiver = self;
  v50.super_class = MapsExternalAccessory;
  v4 = [(MapsExternalAccessory *)&v50 init];
  v5 = v4;
  v4->_initialising = 1;
  if (queueCopy)
  {
    v6 = sub_100AD7D8C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v14 = dispatch_queue_create("com.apple.Maps.ExternalAccessory", v13);
      queue = v5->_queue;
      v5->_queue = v14;

      v16 = objc_alloc_init(NSOperationQueue);
      [v16 setUnderlyingQueue:v5->_queue];
      [v16 setMaxConcurrentOperationCount:1];
      goto LABEL_11;
    }

    v7 = v5;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(MapsExternalAccessory *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_8;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_8:

    *buf = 138543362;
    v54 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] using private dispatch queue", buf, 0xCu);

    goto LABEL_9;
  }

  objc_storeStrong(&v4->_queue, &_dispatch_main_q);
  v16 = +[NSOperationQueue mainQueue];
LABEL_11:
  objc_storeStrong(&v5->_operationQueue, v16);
  v17 = sub_100AD7D8C();
  if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    goto LABEL_18;
  }

  v18 = v5;
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  if (objc_opt_respondsToSelector())
  {
    v21 = [(MapsExternalAccessory *)v18 performSelector:"accessibilityIdentifier"];
    v22 = v21;
    if (v21 && ![v21 isEqualToString:v20])
    {
      v23 = [NSString stringWithFormat:@"%@<%p, %@>", v20, v18, v22];

      goto LABEL_17;
    }
  }

  v23 = [NSString stringWithFormat:@"%@<%p>", v20, v18];
LABEL_17:

  *buf = 138543362;
  v54 = v23;
  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}@] registering for EAAccessory notifications", buf, 0xCu);

LABEL_18:
  objc_initWeak(buf, v5);
  v24 = +[NSNotificationCenter defaultCenter];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100ADA420;
  v48[3] = &unk_10165FBE8;
  objc_copyWeak(&v49, buf);
  v25 = [v24 addObserverForName:EAAccessoryDidConnectNotification object:0 queue:v16 usingBlock:v48];
  v52[0] = v25;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100ADA47C;
  v46[3] = &unk_10165FBE8;
  objc_copyWeak(&v47, buf);
  v26 = [v24 addObserverForName:EAAccessoryVehicleDataUpdateNotification object:0 queue:v16 usingBlock:v46];
  v52[1] = v26;
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100ADA4D8;
  v44[3] = &unk_10165FBE8;
  objc_copyWeak(&v45, buf);
  v27 = [v24 addObserverForName:EAAccessoryUpdateNotification object:0 queue:v16 usingBlock:v44];
  v52[2] = v27;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100ADA534;
  v42[3] = &unk_10165FBE8;
  objc_copyWeak(&v43, buf);
  v28 = [v24 addObserverForName:EAAccessoryDidDisconnectNotification object:0 queue:v16 usingBlock:v42];
  v52[3] = v28;
  v29 = [NSArray arrayWithObjects:v52 count:4];
  notificationObservers = v5->_notificationObservers;
  v5->_notificationObservers = v29;

  v31 = +[EAAccessoryManager sharedAccessoryManager];
  [v31 registerForLocalNotifications];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  connectedAccessories = [v31 connectedAccessories];
  v33 = [connectedAccessories countByEnumeratingWithState:&v38 objects:v51 count:16];
  if (v33)
  {
    v34 = *v39;
    while (2)
    {
      for (i = 0; i != v33; i = i + 1)
      {
        if (*v39 != v34)
        {
          objc_enumerationMutation(connectedAccessories);
        }

        v36 = *(*(&v38 + 1) + 8 * i);
        if ([v36 supportsCarPlay])
        {
          [(MapsExternalAccessory *)v5 setAccessory:v36];
          goto LABEL_28;
        }
      }

      v33 = [connectedAccessories countByEnumeratingWithState:&v38 objects:v51 count:16];
      if (v33)
      {
        continue;
      }

      break;
    }
  }

LABEL_28:

  [(MapsExternalAccessory *)v5 _startListenForDebugTestNotifications];
  v5->_initialising = 0;

  objc_destroyWeak(&v43);
  objc_destroyWeak(&v45);
  objc_destroyWeak(&v47);
  objc_destroyWeak(&v49);

  objc_destroyWeak(buf);
  return v5;
}

+ (BOOL)instancesRespondToSelector:(SEL)selector
{
  v3 = [self instanceMethodSignatureForSelector:selector];
  v4 = v3 != 0;

  return v4;
}

+ (id)instanceMethodSignatureForSelector:(SEL)selector
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___MapsExternalAccessory;
  v4 = objc_msgSendSuper2(&v6, "instanceMethodSignatureForSelector:");
  if (!v4)
  {
    v4 = [objc_opt_class() instanceMethodSignatureForSelector:selector];
  }

  return v4;
}

+ (void)setUsePrivateQueue
{
  v2 = qword_10195E538;
  v3 = sub_100AD7D8C();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "setUsePrivateQueue: called too late, shared instance already exists!", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Will use private queue when shared instance is created", v5, 2u);
    }

    byte_10195E548 = 1;
  }
}

@end