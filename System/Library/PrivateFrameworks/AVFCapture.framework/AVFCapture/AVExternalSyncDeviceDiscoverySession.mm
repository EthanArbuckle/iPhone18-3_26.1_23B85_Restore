@interface AVExternalSyncDeviceDiscoverySession
+ (AVExternalSyncDeviceDiscoverySession)sharedSession;
+ (BOOL)isSupported;
- (AVExternalSyncDeviceDiscoverySession)init;
- (NSArray)devices;
- (void)_handleNotification:(id)notification dict:(id)dict;
- (void)_updateDevicesEvent:(id)event;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setupNotifications;
- (void)setupSource;
- (void)teardownNotifications;
- (void)teardownSource;
@end

@implementation AVExternalSyncDeviceDiscoverySession

+ (BOOL)isSupported
{
  if (isSupported_once_0 != -1)
  {
    +[AVExternalSyncDeviceDiscoverySession isSupported];
  }

  return isSupported_sIsSupported_0;
}

uint64_t __51__AVExternalSyncDeviceDiscoverySession_isSupported__block_invoke()
{
  result = AVGestaltGetBoolAnswer(@"AVGQVYXTSFZ3R7TURIB5WPPITDPJLY");
  isSupported_sIsSupported_0 = result;
  return result;
}

+ (AVExternalSyncDeviceDiscoverySession)sharedSession
{
  if (sharedSession_onceToken_0 != -1)
  {
    +[AVExternalSyncDeviceDiscoverySession sharedSession];
  }

  return sharedSession_sAVExternalSyncDeviceDiscoverySession;
}

AVExternalSyncDeviceDiscoverySession *__53__AVExternalSyncDeviceDiscoverySession_sharedSession__block_invoke()
{
  result = objc_alloc_init(AVExternalSyncDeviceDiscoverySession);
  sharedSession_sAVExternalSyncDeviceDiscoverySession = result;
  return result;
}

- (AVExternalSyncDeviceDiscoverySession)init
{
  if (+[AVExternalSyncDeviceDiscoverySession isSupported])
  {
    v6.receiver = self;
    v6.super_class = AVExternalSyncDeviceDiscoverySession;
    v3 = [(AVExternalSyncDeviceDiscoverySession *)&v6 init];
    if (v3)
    {
      v3->_devices = objc_alloc_init(MEMORY[0x1E695DF70]);
      v3->_weakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:v3];
      os_unfair_lock_lock(&v3->_sourceLock);
      [(AVExternalSyncDeviceDiscoverySession *)v3 setupSource];
      os_unfair_lock_unlock(&v3->_sourceLock);
      [(AVExternalSyncDeviceDiscoverySession *)v3 setupNotifications];
    }
  }

  else
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v4);
    }

    NSLog(&cfstr_SuppressingExc.isa, v4);
    return 0;
  }

  return v3;
}

- (void)setupSource
{
  os_unfair_lock_assert_owner(&self->_sourceLock);
  [(AVExternalSyncDeviceDiscoverySession *)self teardownSource];
  v3 = FigCaptureSourceRemoteCopyExternalSyncDeviceDiscoverySessionSource();
  if (v3)
  {
    v3 = CFRetain(v3);
  }

  self->_fcs = v3;
  v4 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  v5 = *MEMORY[0x1E69904E0];
  weakReference = self->_weakReference;
  fcs = self->_fcs;

  [v4 addListenerWithWeakReference:weakReference callback:figCaptureSourceNotificationHandler name:v5 object:fcs flags:0];
}

- (void)teardownSource
{
  os_unfair_lock_assert_owner(&self->_sourceLock);
  if (self->_fcs)
  {
    [objc_msgSend(MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:{CMNotificationCenterGetDefaultLocalCenter()), "removeListenerWithWeakReference:callback:name:object:", self->_weakReference, figCaptureSourceNotificationHandler, *MEMORY[0x1E69904E0], self->_fcs}];
    fcs = self->_fcs;
    if (fcs)
    {
      CFRelease(fcs);
      self->_fcs = 0;
    }
  }
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_sourceLock);
  [(AVExternalSyncDeviceDiscoverySession *)self teardownSource];
  os_unfair_lock_unlock(&self->_sourceLock);
  [(AVExternalSyncDeviceDiscoverySession *)self teardownNotifications];
  v3.receiver = self;
  v3.super_class = AVExternalSyncDeviceDiscoverySession;
  [(AVExternalSyncDeviceDiscoverySession *)&v3 dealloc];
}

- (void)_handleNotification:(id)notification dict:(id)dict
{
  if ([notification isEqualToString:*MEMORY[0x1E69904E0]])
  {

    [(AVExternalSyncDeviceDiscoverySession *)self _updateDevicesEvent:dict];
  }
}

- (void)setupNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  self->_serverDiedObserver = [defaultCenter addObserverForName:*MEMORY[0x1E69904D0] object:0 queue:0 usingBlock:&v4];
  MEMORY[0x1AC582C50]();
}

void __58__AVExternalSyncDeviceDiscoverySession_setupNotifications__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) referencedObject];
  if (v2)
  {
    v3 = v2;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = *(v2 + 16);
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * i) _handleSourceDiedEvent];
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
      }

      while (v6);
    }

    os_unfair_lock_lock((*(a1 + 40) + 12));
    [v3 setupSource];
    os_unfair_lock_unlock((*(a1 + 40) + 12));
  }
}

- (void)teardownNotifications
{
  if (self->_serverDiedObserver)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self->_serverDiedObserver forKeyPath:*MEMORY[0x1E69904D0]];
    self->_serverDiedObserver = 0;
  }
}

- (void)_updateDevicesEvent:(id)event
{
  v5 = [event mutableCopy];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  selfCopy = self;
  devices = self->_devices;
  v7 = [(NSMutableArray *)devices countByEnumeratingWithState:&v29 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(devices);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        if ([event valueForKey:{objc_msgSend(v11, "uniqueIdentifier")}])
        {
          [v11 _handleUSBConnectionStateChange:1];
          [v5 removeObjectForKey:{objc_msgSend(v11, "uniqueIdentifier")}];
        }

        else
        {
          [v11 _handleUSBConnectionStateChange:0];
        }
      }

      v8 = [(NSMutableArray *)devices countByEnumeratingWithState:&v29 objects:v28 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    [(AVExternalSyncDeviceDiscoverySession *)selfCopy willChangeValueForKey:@"devices"];
    os_unfair_lock_lock(&selfCopy->_deviceLock);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [v5 allKeys];
    v12 = [obj countByEnumeratingWithState:&v24 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      v15 = *MEMORY[0x1E6990440];
      v16 = *MEMORY[0x1E6990448];
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v24 + 1) + 8 * j);
          v19 = [v5 valueForKey:v18];
          v20 = -[AVExternalSyncDevice _initWithIdentifier:pid:vid:]([AVExternalSyncDevice alloc], "_initWithIdentifier:pid:vid:", v18, [objc_msgSend(objc_msgSend(v19 objectForKey:{v18), "objectForKey:", v15), "unsignedIntValue"}], objc_msgSend(objc_msgSend(objc_msgSend(v19, "objectForKey:", v18), "objectForKey:", v16), "unsignedIntValue"));
          [(NSMutableArray *)selfCopy->_devices addObject:v20];
          [v20 addObserver:selfCopy forKeyPath:@"usbConnected" options:3 context:&AVExternalSyncDeviceDiscoverySessionUsbConnectedChangedContext];
        }

        v13 = [obj countByEnumeratingWithState:&v24 objects:v23 count:16];
      }

      while (v13);
    }

    os_unfair_lock_unlock(&selfCopy->_deviceLock);
    [(AVExternalSyncDeviceDiscoverySession *)selfCopy didChangeValueForKey:@"devices"];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (AVExternalSyncDeviceDiscoverySessionUsbConnectedChangedContext == context)
  {
    v8 = [objc_msgSend(change objectForKeyedSubscript:{*MEMORY[0x1E696A500], object), "BOOLValue"}];
    if (v8 != [objc_msgSend(change objectForKeyedSubscript:{*MEMORY[0x1E696A4F0]), "BOOLValue"}])
    {
      [(AVExternalSyncDeviceDiscoverySession *)self willChangeValueForKey:@"devices"];

      [(AVExternalSyncDeviceDiscoverySession *)self didChangeValueForKey:@"devices"];
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = AVExternalSyncDeviceDiscoverySession;
    [(AVExternalSyncDeviceDiscoverySession *)&v9 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (NSArray)devices
{
  array = [MEMORY[0x1E695DF70] array];
  os_unfair_lock_lock(&self->_deviceLock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  devices = self->_devices;
  v5 = [(NSMutableArray *)devices countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isUsbConnected])
        {
          [(NSArray *)array addObject:v9];
        }
      }

      v6 = [(NSMutableArray *)devices countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_deviceLock);
  return array;
}

@end