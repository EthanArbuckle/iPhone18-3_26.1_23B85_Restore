@interface DADeviceObserverAccessories
- (DADeviceObserverAccessories)init;
- (id)_accessoryIdentifiersToPromote;
- (id)_fetchDevices;
- (id)beginDiscoveringDevicesWithHandler:(id)a3;
- (void)_accessoryConnected:(id)a3;
- (void)_accessoryDisconnected:(id)a3;
- (void)_beginObserving;
- (void)_endObserving;
- (void)_updateDevices;
- (void)_updateHandlers;
- (void)discoverAllDevicesWithCompletionHandler:(id)a3;
- (void)endDiscoveringDevicesWithIdentifier:(id)a3;
@end

@implementation DADeviceObserverAccessories

- (DADeviceObserverAccessories)init
{
  v12.receiver = self;
  v12.super_class = DADeviceObserverAccessories;
  v2 = [(DADeviceObserverAccessories *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.Diagnostics.accessoryObservationQueue", 0);
    accessoryObservationQueue = v2->_accessoryObservationQueue;
    v2->_accessoryObservationQueue = v3;

    v5 = dispatch_queue_create("com.apple.Diagnostics.accessoryRegistrationQueue", 0);
    accessoryRegistrationQueue = v2->_accessoryRegistrationQueue;
    v2->_accessoryRegistrationQueue = v5;

    v2->_isObserving = 0;
    v7 = +[NSMutableSet set];
    devices = v2->_devices;
    v2->_devices = v7;

    v9 = +[NSMutableDictionary dictionary];
    handlers = v2->_handlers;
    v2->_handlers = v9;
  }

  return v2;
}

- (void)discoverAllDevicesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(DADeviceObserverAccessories *)self accessoryObservationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006DE8;
  v7[3] = &unk_1001BC5A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)beginDiscoveringDevicesWithHandler:(id)a3
{
  v4 = a3;
  v5 = +[NSUUID UUID];
  v6 = [(DADeviceObserverAccessories *)self accessoryRegistrationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006F34;
  block[3] = &unk_1001BC5D0;
  block[4] = self;
  v7 = v5;
  v13 = v7;
  v14 = v4;
  v8 = v4;
  dispatch_async(v6, block);

  v9 = v14;
  v10 = v7;

  return v7;
}

- (void)endDiscoveringDevicesWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DADeviceObserverAccessories *)self accessoryRegistrationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100007060;
  v7[3] = &unk_1001BC5F8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_beginObserving
{
  if (!self->_isObserving)
  {
    self->_isObserving = 1;
    v3 = +[EAAccessoryManager sharedAccessoryManager];
    [v3 registerForLocalNotifications];

    v4 = +[NSNotificationCenter defaultCenter];
    v5 = +[EAAccessoryManager sharedAccessoryManager];
    [v4 addObserver:self selector:"_accessoryConnected:" name:EAAccessoryDidConnectNotification object:v5];

    v6 = +[NSNotificationCenter defaultCenter];
    v7 = +[EAAccessoryManager sharedAccessoryManager];
    [v6 addObserver:self selector:"_accessoryDisconnected:" name:EAAccessoryDidDisconnectNotification object:v7];
  }

  [(DADeviceObserverAccessories *)self _updateDevices];
}

- (void)_accessoryConnected:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:EAAccessoryKey];

  if (v5)
  {
    v6 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 serialNumber];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] Accessory connected", &v8, 0xCu);
    }

    [(DADeviceObserverAccessories *)self _updateDevices];
  }
}

- (void)_accessoryDisconnected:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:EAAccessoryKey];

  if (v5)
  {
    v6 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 serialNumber];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] Accessory disconnected", &v8, 0xCu);
    }

    [(DADeviceObserverAccessories *)self _updateDevices];
  }
}

- (void)_endObserving
{
  if (self->_isObserving)
  {
    self->_isObserving = 0;
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self];

    v5 = +[EAAccessoryManager sharedAccessoryManager];
    [v5 unregisterForLocalNotifications];
  }
}

- (void)_updateDevices
{
  v3 = [(DADeviceObserverAccessories *)self accessoryObservationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000751C;
  block[3] = &unk_1001BC580;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_updateHandlers
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(DADeviceObserverAccessories *)self handlers];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [(DADeviceObserverAccessories *)self handlers];
        v11 = [v10 objectForKeyedSubscript:v9];

        if (v11)
        {
          v12 = [(DADeviceObserverAccessories *)self devices];
          (v11)[2](v11, v12);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (id)_fetchDevices
{
  v3 = [(DADeviceObserverAccessories *)self devices];
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v3 count]);

  v5 = [DSIOHIDDevice deviceMatchingAccessories:&off_1001CCD20];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_13;
  }

  v7 = [v5 serialNumber];
  if (v7)
  {
    v8 = v7;
    v9 = +[NSMutableDictionary dictionary];
    [v9 setObject:v8 forKeyedSubscript:@"serialNumber"];
    v10 = [DSEADevice deviceWithSerialNumber:v8];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 information];
      [v9 addEntriesFromDictionary:v12];
    }

    v13 = [v9 copy];
    v14 = [DAAdapterAccessory accessoryWithIdentifier:@"Accessory.SmartBatteryCase" attributes:v13];

    if (!v14)
    {
      goto LABEL_12;
    }

    v15 = [v14 serialNumber];
    if (!v15)
    {
      goto LABEL_12;
    }

    v16 = v15;
    v17 = [(DADeviceObserverAccessories *)self _accessoryIdentifiersToPromote];
    v18 = [v14 identifier];
    v19 = [v17 containsObject:v18];

    if (!v19)
    {
      goto LABEL_12;
    }

    v20 = NSClassFromString(@"DADeviceAccessory");
    if (v20)
    {
      v21 = [[v20 alloc] initWithAccessory:v14];
      if (!v21)
      {
LABEL_11:

LABEL_12:
LABEL_13:

        v22 = v4;
        goto LABEL_15;
      }
    }

    else
    {
      v24 = [DADeviceRepresentation alloc];
      v25 = [v14 serialNumber];
      v21 = [(DADeviceRepresentation *)v24 initWithSerialNumber:v25 isLocal:1 attributes:&__NSDictionary0__struct];

      if (!v21)
      {
        goto LABEL_11;
      }
    }

    [v4 addObject:v21];
    goto LABEL_11;
  }

  v22 = +[NSSet set];

LABEL_15:

  return v22;
}

- (id)_accessoryIdentifiersToPromote
{
  if (qword_100202D18 != -1)
  {
    sub_100157DFC();
  }

  v3 = qword_100202D10;

  return v3;
}

@end