@interface APCarPlayAVVCPlugin
- (APCarPlayAVVCPlugin)initWithPluginDelegate:(id)delegate;
- (int)createNewDevice;
- (int)destroyDevice:(id)device;
- (void)clientInit;
- (void)dealloc;
- (void)handleNotification:(__CFString *)notification fromObject:(const void *)object;
- (void)invalidate;
@end

@implementation APCarPlayAVVCPlugin

- (APCarPlayAVVCPlugin)initWithPluginDelegate:(id)delegate
{
  v25.receiver = self;
  v25.super_class = APCarPlayAVVCPlugin;
  v4 = [(APCarPlayAVVCPlugin *)&v25 init];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  v4->_delegate = delegate;
  v6 = [[NSMutableArray alloc] initWithCapacity:1];
  v5->_devices = v6;
  if (!v6)
  {
    v17 = 114;
LABEL_20:
    sub_347C(v17, v5);
    return 0;
  }

  v7 = dispatch_queue_create("CarPlayAVVCPluginDevicesQueue", 0);
  v5->_devicesQueue = v7;
  if (!v7)
  {
    v17 = 117;
    goto LABEL_20;
  }

  v5->_carPlayAVVCClient = 0;
  v8 = _os_feature_enabled_impl();
  v5->_isAVOutputDeviceEnabled = v8;
  if (v8)
  {
    if ([objc_msgSend(+[AVOutputContext sharedSystemRemoteDisplayContext](AVOutputContext "sharedSystemRemoteDisplayContext")] == &dword_0 + 2)
    {
      if (dword_C9B0 <= 50 && (dword_C9B0 != -1 || _LogCategory_Initialize()))
      {
        sub_341C();
      }

      devicesQueue = v5->_devicesQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_120C;
      block[3] = &unk_8388;
      block[4] = v5;
      dispatch_sync(devicesQueue, block);
    }

    objc_initWeak(&location, v5);
    objc_initWeak(&from, v5->_devicesQueue);
    v5->_sharedSystemRemoteDisplayContext = +[AVOutputContext sharedSystemRemoteDisplayContext];
    v10 = +[NSNotificationCenter defaultCenter];
    v11 = AVOutputContextOutputDeviceDidChangeNotification;
    sharedSystemRemoteDisplayContext = v5->_sharedSystemRemoteDisplayContext;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1214;
    v19[3] = &unk_83B0;
    objc_copyWeak(&v20, &location);
    objc_copyWeak(&v21, &from);
    v5->_observer = [(NSNotificationCenter *)v10 addObserverForName:v11 object:sharedSystemRemoteDisplayContext queue:0 usingBlock:v19];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, sub_13C4, kFigEndpointNotification_EndpointActivated, 0, 0);
    v14 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v14, v5, sub_13C4, kFigEndpointNotification_EndpointDeactivated, 0, 0);
    v15 = v5->_devicesQueue;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_13CC;
    v18[3] = &unk_8388;
    v18[4] = v5;
    dispatch_sync(v15, v18);
  }

  if (dword_C9B0 <= 50 && (dword_C9B0 != -1 || _LogCategory_Initialize()))
  {
    sub_344C();
  }

  return v5;
}

- (void)invalidate
{
  if (self->_isAVOutputDeviceEnabled)
  {
    if (self->_observer)
    {
      [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self->_observer];
      self->_observer = 0;
    }

    self->_sharedSystemRemoteDisplayContext = 0;
  }

  else
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kFigEndpointNotification_EndpointDeactivated, 0);
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v4, self, kFigEndpointNotification_EndpointActivated, 0);
  }

  devicesQueue = self->_devicesQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_14D4;
  block[3] = &unk_8388;
  block[4] = self;
  dispatch_sync(devicesQueue, block);
  v6 = self->_devicesQueue;
  if (v6)
  {
    dispatch_release(v6);
    self->_devicesQueue = 0;
  }

  self->_delegate = 0;
}

- (void)dealloc
{
  carPlayAVVCClient = self->_carPlayAVVCClient;
  if (carPlayAVVCClient)
  {
    CFRelease(carPlayAVVCClient);
  }

  v4.receiver = self;
  v4.super_class = APCarPlayAVVCPlugin;
  [(APCarPlayAVVCPlugin *)&v4 dealloc];
}

- (void)handleNotification:(__CFString *)notification fromObject:(const void *)object
{
  if (dword_C9B0 <= 30 && (dword_C9B0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  selfCopy = self;
  devicesQueue = self->_devicesQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3330;
  block[3] = &unk_83D8;
  block[4] = self;
  block[5] = notification;
  block[6] = object;
  dispatch_async(devicesQueue, block);
}

- (void)clientInit
{
  values = @"avvcDevice_ConnectionLost";
  keys = kFigXPCRemoteClientOption_DeathNoticeName;
  if (!self->_carPlayAVVCClient)
  {
    Default = CFAllocatorGetDefault();
    v3 = CFDictionaryCreate(Default, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (FigXPCRemoteClientCreate() && dword_C9B0 <= 90 && (dword_C9B0 != -1 || _LogCategory_Initialize()))
    {
      sub_34F0();
      if (!v3)
      {
        return;
      }
    }

    else if (!v3)
    {
      return;
    }

    CFRelease(v3);
  }
}

- (int)createNewDevice
{
  [(APCarPlayAVVCPlugin *)self clientInit];
  if (self->_carPlayAVVCClient)
  {
    v3 = [[APCarPlayAVVCDevice alloc] initWithXPCClient:self->_carPlayAVVCClient];
    if (v3)
    {
      v4 = v3;
      [(NSMutableArray *)self->_devices addObject:v3];
      if (!self->_isAVOutputDeviceEnabled)
      {
        LocalCenter = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterAddObserver(LocalCenter, self, sub_13C4, kFigEndpointNotification_EndpointDeactivated, v4, 0);
      }

      if (dword_C9B0 <= 50 && (dword_C9B0 != -1 || _LogCategory_Initialize()))
      {
        v7 = v4;
        deviceIdentifier = [(APCarPlayAVVCDevice *)v4 deviceIdentifier];
        sub_18FC();
      }

      [(AVAudioRemoteInputPluginDelegate *)self->_delegate inputPlugin:self didPublishDevice:v4, v7, deviceIdentifier];
      return 0;
    }

    else
    {
      return -6718;
    }
  }

  else
  {
    APSLogErrorAt();
    return -6728;
  }
}

- (int)destroyDevice:(id)device
{
  devices = self->_devices;
  if (devices && [(NSMutableArray *)devices containsObject:?])
  {
    if (dword_C9B0 <= 50 && (dword_C9B0 != -1 || _LogCategory_Initialize()))
    {
      deviceCopy = device;
      deviceIdentifier = [device deviceIdentifier];
      sub_18FC();
    }

    [(AVAudioRemoteInputPluginDelegate *)self->_delegate inputPlugin:self didUnpublishDevice:device, deviceCopy, deviceIdentifier];
    [(NSMutableArray *)self->_devices removeObject:device];
    if (!self->_isAVOutputDeviceEnabled)
    {
      LocalCenter = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterRemoveObserver(LocalCenter, self, kFigEndpointNotification_EndpointDeactivated, device);
    }
  }

  return 0;
}

@end