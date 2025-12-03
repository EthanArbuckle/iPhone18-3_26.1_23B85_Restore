@interface DOMDevice
- (BOOL)compositeDeviceIsConfigured;
- (BOOL)isCompositeDevice;
- (BOOL)shouldMatchDevice;
- (id)description;
- (void)dealloc;
- (void)evaluateScore:(id)score fromDomPersonality:(id)personality withIORegEntryID:(unint64_t)d;
- (void)handleIONotification:(unsigned int)notification arg:(void *)arg;
- (void)updateDeviceProperties;
@end

@implementation DOMDevice

- (void)dealloc
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    name = [(DOMDevice *)self name];
    *buf = 138412290;
    v9 = name;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "tearing down object for %@", buf, 0xCu);
  }

  io_notification = self->_io_notification;
  if (io_notification)
  {
    IOObjectRelease(io_notification);
  }

  io_service = self->_io_service;
  if (io_service)
  {
    IOObjectRelease(io_service);
  }

  domDeviceTransaction = self->_domDeviceTransaction;
  if (domDeviceTransaction)
  {
    self->_domDeviceTransaction = 0;
  }

  v7.receiver = self;
  v7.super_class = DOMDevice;
  [(DOMDevice *)&v7 dealloc];
}

- (void)updateDeviceProperties
{
  properties = 0;
  if (IORegistryEntryCreateCFProperties([(DOMDevice *)self io_service], &properties, kCFAllocatorDefault, 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100008A34(self);
  }

  v3 = properties;
  [(DOMDevice *)self setProperties:properties];
}

- (void)handleIONotification:(unsigned int)notification arg:(void *)arg
{
  v6 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (notification == -536850432)
  {
    if (v6)
    {
      name = [(DOMDevice *)self name];
      v12 = 138413058;
      *v13 = name;
      *&v13[8] = 1024;
      *&v13[10] = [(DOMDevice *)self io_service];
      v14 = 2048;
      iORegEntryID = [(DOMDevice *)self IORegEntryID];
      v16 = 1024;
      v17 = -536850432;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ service %d (ID: %lld) received kUSBDeviceCurrentConfiguration (messageType 0x%x)", &v12, 0x22u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      properties = [(DOMDevice *)self properties];
      v11 = sub_100006574(properties);
      v12 = 138412290;
      *v13 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "properties:\n%@", &v12, 0xCu);
    }

    if ([(DOMDevice *)self compositeDeviceIsConfigured])
    {
      v8 = +[DOMAccessoryArbitrator sharedDomAccessoryArbitrator];
      [v8 matchDevice:self];
LABEL_12:
    }
  }

  else
  {
    if (notification == -536870896)
    {
      if (v6)
      {
        name2 = [(DOMDevice *)self name];
        v12 = 138413058;
        *v13 = name2;
        *&v13[8] = 1024;
        *&v13[10] = [(DOMDevice *)self io_service];
        v14 = 2048;
        iORegEntryID = [(DOMDevice *)self IORegEntryID];
        v16 = 1024;
        v17 = -536870896;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ service %d (ID: %lld) was terminated (messageType 0x%x)", &v12, 0x22u);
      }

      v8 = +[DOMAccessoryArbitrator sharedDomAccessoryArbitrator];
      [v8 unregisterOffendingDomDevice:self];
      goto LABEL_12;
    }

    if (v6)
    {
      v12 = 67109632;
      *v13 = [(DOMDevice *)self io_service];
      *&v13[4] = 2048;
      *&v13[6] = [(DOMDevice *)self IORegEntryID];
      v14 = 1024;
      LODWORD(iORegEntryID) = notification;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "service %d (ID: %lld) got messageType: 0x%0x", &v12, 0x18u);
    }
  }
}

- (id)description
{
  memset(path, 0, 512);
  IORegistryEntryGetPath([(DOMDevice *)self io_service], "IOService", path);
  memset(className, 0, sizeof(className));
  IOObjectGetClass([(DOMDevice *)self io_service], className);
  name = [(DOMDevice *)self name];
  iORegEntryID = [(DOMDevice *)self IORegEntryID];
  iORegEntryID2 = [(DOMDevice *)self IORegEntryID];
  properties = [(DOMDevice *)self properties];
  v7 = sub_100006574(properties);
  v8 = [NSString stringWithFormat:@"DOMDevice named: %@, IORegEntryID: %lld (0x%016llx), class: %s, properties: %@", name, iORegEntryID, iORegEntryID2, className, v7];

  return v8;
}

- (BOOL)isCompositeDevice
{
  properties = [(DOMDevice *)self properties];
  v4 = [properties valueForKey:@"bDeviceClass"];

  properties2 = [(DOMDevice *)self properties];
  v6 = [properties2 valueForKey:@"bDeviceSubclass"];

  v7 = 0;
  if (v4 && v6)
  {
    if ([v4 integerValue])
    {
      v7 = 0;
    }

    else
    {
      v7 = [v6 integerValue] == 0;
    }
  }

  return v7;
}

- (BOOL)compositeDeviceIsConfigured
{
  [(DOMDevice *)self updateDeviceProperties];
  properties = [(DOMDevice *)self properties];
  v4 = [properties valueForKey:@"kUSBCurrentConfiguration"];
  v5 = v4 != 0;

  return v5;
}

- (void)evaluateScore:(id)score fromDomPersonality:(id)personality withIORegEntryID:(unint64_t)d
{
  scoreCopy = score;
  personalityCopy = personality;
  if (scoreCopy)
  {
    queue = [(DOMDevice *)self queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100005D88;
    v11[3] = &unk_100010818;
    v12 = scoreCopy;
    selfCopy = self;
    v14 = personalityCopy;
    dCopy = d;
    dispatch_sync(queue, v11);
  }
}

- (BOOL)shouldMatchDevice
{
  if ([(DOMDevice *)self isHub])
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      name = [(DOMDevice *)self name];
      v8 = 138412290;
      v9 = name;
      v5 = "Ignoring a USB Hub named %@";
LABEL_4:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v5, &v8, 0xCu);

LABEL_13:
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    if ([(DOMDevice *)self isAttachedToHub]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [(DOMDevice *)self name];
      v8 = 138412290;
      v9 = name2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "FYI, %@ is attached to a USB Hub...", &v8, 0xCu);
    }

    if ([(DOMDevice *)self isCompositeDevice]&& ![(DOMDevice *)self compositeDeviceIsConfigured])
    {
      v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (!v3)
      {
        return v3;
      }

      name = [(DOMDevice *)self name];
      v8 = 138412290;
      v9 = name;
      v5 = "deferring match for composite USB device named %@";
      goto LABEL_4;
    }

    if (!+[DOMAccessoryArbitrator isInF5Mode])
    {
      LOBYTE(v3) = 1;
      return v3;
    }

    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Running in F5 mode - suppressing device matching", &v8, 2u);
      goto LABEL_13;
    }
  }

  return v3;
}

@end