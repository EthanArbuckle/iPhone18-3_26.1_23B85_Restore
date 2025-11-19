@interface USBDeviceMode
+ (id)sharedInstance;
- (BOOL)isDeviceMode;
- (BOOL)readBootArgOverride;
- (BOOL)start;
- (BOOL)startMatchingNotifications;
- (USBDeviceMode)init;
- (void)_handleNotificationForService:(unsigned int)a3 messageType:(unsigned int)a4 messageArgument:(void *)a5;
- (void)_handleServiceAdded:(unsigned int)a3;
- (void)acquirePowerAssertion;
- (void)dealloc;
- (void)evaluatePowerAssertion;
- (void)registerForPowerSourceUpdates;
- (void)releasePowerAssertion;
- (void)stopMatchingNotifications;
@end

@implementation USBDeviceMode

- (void)evaluatePowerAssertion
{
  if ([(USBDeviceMode *)self isDeviceMode]&& [(USBDeviceMode *)self isACPowered])
  {

    [(USBDeviceMode *)self acquirePowerAssertion];
  }

  else
  {

    [(USBDeviceMode *)self releasePowerAssertion];
  }
}

- (BOOL)isDeviceMode
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(USBDeviceMode *)self dataRole];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(USBDeviceMode *)self dataRole];
        v11 = [v10 objectForKeyedSubscript:v9];
        v12 = [v11 intValue] == 1;

        v6 |= v12;
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (void)acquirePowerAssertion
{
  v3 = sub_100002A58();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A9DC;
  block[3] = &unk_100099210;
  block[4] = self;
  dispatch_async(v3, block);

  v4 = qword_1000AC970;
  if (os_log_type_enabled(qword_1000AC970, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Creating USBDeviceMode resource hint", v8, 2u);
  }

  usbDeviceModeResourceHint = self->_usbDeviceModeResourceHint;
  if (usbDeviceModeResourceHint)
  {
    [usbDeviceModeResourceHint updateState:1];
  }

  else
  {
    v6 = [[ResourceHint alloc] initWithResourceType:8 andState:1];
    v7 = self->_usbDeviceModeResourceHint;
    self->_usbDeviceModeResourceHint = v6;
  }
}

+ (id)sharedInstance
{
  if (qword_1000AD2C8 != -1)
  {
    sub_10006CF30();
  }

  v3 = qword_1000AD2C0;

  return v3;
}

- (USBDeviceMode)init
{
  v13.receiver = self;
  v13.super_class = USBDeviceMode;
  v2 = [(USBDeviceMode *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.powerd.usbdevicemode", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v2->_ioNotificationPort = 0;
    v2->_ioServiceAddedIterator = 0;
    v6 = +[NSMutableDictionary dictionary];
    transportNotifiers = v2->_transportNotifiers;
    v2->_transportNotifiers = v6;

    v8 = os_log_create("com.apple.powerd", "usbdevicemode");
    v9 = qword_1000AC970;
    qword_1000AC970 = v8;

    v2->_powerassertionID = 0;
    v2->_powerassertion = 0;
    v10 = +[NSMutableDictionary dictionary];
    dataRole = v2->_dataRole;
    v2->_dataRole = v10;

    v2->_isACPowered = IOPSDrawingUnlimitedPower();
  }

  return v2;
}

- (void)dealloc
{
  v3 = qword_1000AC970;
  if (os_log_type_enabled(qword_1000AC970, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Deallocating %@...", buf, 0xCu);
  }

  [(USBDeviceMode *)self stopMatchingNotifications];
  v7.receiver = self;
  v7.super_class = USBDeviceMode;
  [(USBDeviceMode *)&v7 dealloc];
}

- (BOOL)start
{
  v3 = [(USBDeviceMode *)self readBootArgOverride];
  if (v3)
  {
    v4 = qword_1000AC970;
    if (os_log_type_enabled(qword_1000AC970, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Boot arg enable-acsleep is set. Not preventing idle sleep for usb device mode", v6, 2u);
    }
  }

  else
  {
    [(USBDeviceMode *)self startMatchingNotifications];
    [(USBDeviceMode *)self registerForPowerSourceUpdates];
  }

  return v3 ^ 1;
}

- (void)registerForPowerSourceUpdates
{
  v2 = self;
  out_token = 0;
  v3 = [(USBDeviceMode *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100054DF0;
  v5[3] = &unk_1000991E8;
  v5[4] = v2;
  LODWORD(v2) = notify_register_dispatch("com.apple.system.powersources.source", &out_token, v3, v5);

  if (v2)
  {
    v4 = qword_1000AC970;
    if (os_log_type_enabled(qword_1000AC970, OS_LOG_TYPE_ERROR))
    {
      sub_10006CF44(v4);
    }
  }
}

- (BOOL)readBootArgOverride
{
  if (os_parse_boot_arg_int())
  {
    v2 = qword_1000AC970;
    if (os_log_type_enabled(qword_1000AC970, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v5 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "enable-acsleep bootarg override %lld", buf, 0xCu);
    }
  }

  return 0;
}

- (BOOL)startMatchingNotifications
{
  v3 = qword_1000AC970;
  if (os_log_type_enabled(qword_1000AC970, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Adding transport matching notifications", v12, 2u);
  }

  [(USBDeviceMode *)self setIoNotificationPort:IONotificationPortCreate(kIOMainPortDefault)];
  v4 = [(USBDeviceMode *)self ioNotificationPort];
  v5 = [(USBDeviceMode *)self queue];
  IONotificationPortSetDispatchQueue(v4, v5);

  v6 = IOServiceMatching("IOPortTransportStateUSB");
  [(__CFDictionary *)v6 setObject:&off_1000A30C0 forKey:@"IOPropertyMatch"];
  v7 = [(USBDeviceMode *)self ioNotificationPort];
  v8 = v6;
  v9 = IOServiceAddMatchingNotification(v7, "IOServiceMatched", v8, sub_100018B70, self, &self->_ioServiceAddedIterator);
  v10 = v9;
  if (v9)
  {
    sub_10006CF88(v9);
  }

  else
  {
    sub_100018B70(self, [(USBDeviceMode *)self ioServiceAddedIterator]);
  }

  return v10 == 0;
}

- (void)stopMatchingNotifications
{
  v3 = qword_1000AC970;
  if (os_log_type_enabled(qword_1000AC970, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing transport matching notifications...", v4, 2u);
  }

  if ([(USBDeviceMode *)self ioServiceAddedIterator])
  {
    IOObjectRelease([(USBDeviceMode *)self ioServiceAddedIterator]);
  }

  if ([(USBDeviceMode *)self ioNotificationPort])
  {
    IONotificationPortDestroy([(USBDeviceMode *)self ioNotificationPort]);
  }
}

- (void)_handleServiceAdded:(unsigned int)a3
{
  v5 = qword_1000AC970;
  if (os_log_type_enabled(qword_1000AC970, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Service matching notification callback fired!", buf, 2u);
  }

  entryID = 0;
  RegistryEntryID = IORegistryEntryGetRegistryEntryID(a3, &entryID);
  if (RegistryEntryID)
  {
    sub_10006D02C(RegistryEntryID, buf);
LABEL_16:
    CFProperty = *buf;
    goto LABEL_12;
  }

  v7 = [(USBDeviceMode *)self transportNotifiers];
  v8 = [NSNumber numberWithUnsignedLongLong:entryID];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    sub_10006D0D8(&entryID, buf);
    goto LABEL_16;
  }

  CFProperty = IORegistryEntryCreateCFProperty(a3, @"TransportDescription", kCFAllocatorDefault, 0);
  v11 = qword_1000AC970;
  if (os_log_type_enabled(qword_1000AC970, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = CFProperty;
    v24 = 2048;
    v25 = entryID;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Adding transport interest notifications for %@ (registryEntryID: %llu)", buf, 0x16u);
  }

  notification = 0;
  v12 = IOServiceAddInterestNotification([(USBDeviceMode *)self ioNotificationPort], a3, "IOGeneralInterest", sub_1000182B4, self, &notification);
  if (v12)
  {
    sub_10006D188(v12, CFProperty, buf);
    goto LABEL_16;
  }

  v13 = [(USBDeviceMode *)self transportNotifiers];
  v14 = [NSNumber numberWithUnsignedInt:notification];
  v15 = [NSNumber numberWithUnsignedLongLong:entryID];
  [v13 setObject:v14 forKey:v15];

  v16 = IORegistryEntryCreateCFProperty(a3, @"DataRole", kCFAllocatorDefault, 0);
  if (v16)
  {
    v17 = v16;
    v18 = [(USBDeviceMode *)self dataRole];
    v19 = [NSNumber numberWithUnsignedLongLong:entryID];
    [v18 setObject:v17 forKey:v19];

    v20 = qword_1000AC970;
    if (os_log_type_enabled(qword_1000AC970, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v17;
      v24 = 2048;
      v25 = entryID;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Initial datarole %@ for registryID %llu", buf, 0x16u);
    }

    [(USBDeviceMode *)self evaluatePowerAssertion];
  }

LABEL_12:
}

- (void)_handleNotificationForService:(unsigned int)a3 messageType:(unsigned int)a4 messageArgument:(void *)a5
{
  entryID = 0;
  RegistryEntryID = IORegistryEntryGetRegistryEntryID(a3, &entryID);
  if (RegistryEntryID)
  {
    sub_10006D02C(RegistryEntryID, buf);
    CFProperty = *buf;
  }

  else
  {
    CFProperty = IORegistryEntryCreateCFProperty(a3, @"TransportDescription", kCFAllocatorDefault, 0);
    v10 = qword_1000AC970;
    if (os_log_type_enabled(qword_1000AC970, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109634;
      *&buf[4] = a4;
      *&buf[8] = 2112;
      *&buf[10] = CFProperty;
      *&buf[18] = 2048;
      *&buf[20] = entryID;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Transport message arrived! (messageType: 0x%08x, transportDescription: %@, registryEntryID: %llu)", buf, 0x1Cu);
    }

    if (a4 == -536870896)
    {
      v19 = qword_1000AC970;
      if (os_log_type_enabled(qword_1000AC970, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        *&buf[4] = -536870896;
        *&buf[8] = 2112;
        *&buf[10] = CFProperty;
        *&buf[18] = 2048;
        *&buf[20] = entryID;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Transport terminated! (messageType: 0x%08x, transportDescription: %@, registryEntryID: %llu)", buf, 0x1Cu);
      }

      v20 = [(USBDeviceMode *)self transportNotifiers];
      v21 = [NSNumber numberWithUnsignedLongLong:entryID];
      v22 = [v20 objectForKeyedSubscript:v21];

      if (v22)
      {
        sub_10006D240(self, &entryID, v22);
      }
    }

    else if (a4 == -536870608)
    {
      v11 = IORegistryEntryCreateCFProperty(a3, @"DataRole", kCFAllocatorDefault, 0);
      if (v11)
      {
        v12 = [(USBDeviceMode *)self dataRole];
        v13 = [NSNumber numberWithUnsignedLongLong:entryID];
        [v12 setObject:v11 forKey:v13];

        v14 = qword_1000AC970;
        if (os_log_type_enabled(qword_1000AC970, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          v16 = [(USBDeviceMode *)self dataRole];
          *buf = 138412290;
          *&buf[4] = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Current date roles %@", buf, 0xCu);
        }

        v17 = IORegistryEntryCreateCFProperty(a3, @"DataRoleDescription", kCFAllocatorDefault, 0);
        v18 = qword_1000AC970;
        if (os_log_type_enabled(qword_1000AC970, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          *&buf[4] = v11;
          *&buf[12] = 2112;
          *&buf[14] = v17;
          *&buf[22] = 2048;
          *&buf[24] = entryID;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "messageType: kIOMessageServicePropertyChange dataRole: %@ [%@] for registryID: %llu", buf, 0x20u);
        }

        [(USBDeviceMode *)self evaluatePowerAssertion];
      }
    }
  }
}

- (void)releasePowerAssertion
{
  v3 = sub_100002A58();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000558E4;
  block[3] = &unk_100099210;
  block[4] = self;
  dispatch_async(v3, block);

  v4 = qword_1000AC970;
  if (os_log_type_enabled(qword_1000AC970, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Releasing USBDeviceMode resource hint", v6, 2u);
  }

  usbDeviceModeResourceHint = self->_usbDeviceModeResourceHint;
  if (usbDeviceModeResourceHint)
  {
    [usbDeviceModeResourceHint updateState:0];
  }
}

@end